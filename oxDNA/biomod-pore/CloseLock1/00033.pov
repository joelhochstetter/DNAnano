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
	<24.189703, 35.174335, 35.079460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532549, 35.118088, 34.881237>,  <24.738256, 35.084339, 34.762302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532549, 35.118088, 34.881237>,  <24.189703, 35.174335, 35.079460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532549, 35.118088, 34.881237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479081, 0.571131, 0.666551,
		0.189296, -0.808724, 0.556895,
		0.857116, -0.140623, -0.495558,
		24.789684, 35.075901, 34.732571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740479, 34.921097, 35.490841>,  <24.189703, 35.174335, 35.079460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740479, 34.921097, 35.490841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916334, 35.133339, 35.200966>,  <25.021849, 35.260685, 35.027042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916334, 35.133339, 35.200966>,  <24.740479, 34.921097, 35.490841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916334, 35.133339, 35.200966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437760, 0.577937, 0.688734,
		0.784272, -0.620034, 0.021805,
		0.439640, 0.530610, -0.724686,
		25.048225, 35.292522, 34.983559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.407505, 34.940990, 35.646255>,  <24.740479, 34.921097, 35.490841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.407505, 34.940990, 35.646255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326126, 35.259624, 35.418549>,  <25.277300, 35.450806, 35.281925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326126, 35.259624, 35.418549>,  <25.407505, 34.940990, 35.646255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326126, 35.259624, 35.418549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506756, 0.583157, 0.634922,
		0.837740, -0.159305, -0.522316,
		-0.203446, 0.796586, -0.569263,
		25.265093, 35.498600, 35.247768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967554, 35.376141, 35.569489>,  <25.407505, 34.940990, 35.646255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967554, 35.376141, 35.569489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683653, 35.635223, 35.458687>,  <25.513311, 35.790672, 35.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683653, 35.635223, 35.458687>,  <25.967554, 35.376141, 35.569489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683653, 35.635223, 35.458687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406465, 0.697696, 0.589920,
		0.575356, 0.306107, -0.758461,
		-0.709755, 0.647702, -0.277002,
		25.470726, 35.829533, 35.375587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235474, 36.046360, 35.310574>,  <25.967554, 35.376141, 35.569489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235474, 36.046360, 35.310574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882570, 36.123516, 35.482349>,  <25.670828, 36.169807, 35.585415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882570, 36.123516, 35.482349>,  <26.235474, 36.046360, 35.310574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882570, 36.123516, 35.482349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309378, 0.925125, 0.220066,
		-0.354835, 0.327013, -0.875874,
		-0.882257, 0.192888, 0.429437,
		25.617893, 36.181381, 35.611179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619234, 36.184277, 34.633354>,  <26.235474, 36.046360, 35.310574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619234, 36.184277, 34.633354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839869, 36.052868, 34.326675>,  <26.972248, 35.974022, 34.142666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839869, 36.052868, 34.326675>,  <26.619234, 36.184277, 34.633354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839869, 36.052868, 34.326675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123107, 0.877046, -0.464366,
		0.824985, 0.350523, 0.443322,
		0.551584, -0.328519, -0.766701,
		27.005344, 35.954311, 34.096664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080690, 36.728764, 34.465012>,  <26.619234, 36.184277, 34.633354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080690, 36.728764, 34.465012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009417, 36.491791, 34.150745>,  <26.966652, 36.349609, 33.962185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009417, 36.491791, 34.150745>,  <27.080690, 36.728764, 34.465012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009417, 36.491791, 34.150745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186808, 0.804294, -0.564105,
		0.966102, 0.046254, -0.253983,
		-0.178185, -0.592429, -0.785671,
		26.955961, 36.314060, 33.915043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540131, 36.935444, 34.051456>,  <27.080690, 36.728764, 34.465012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540131, 36.935444, 34.051456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268997, 36.753529, 33.820389>,  <27.106318, 36.644379, 33.681747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268997, 36.753529, 33.820389>,  <27.540131, 36.935444, 34.051456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268997, 36.753529, 33.820389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075945, 0.824828, -0.560259,
		0.731282, -0.335891, -0.593635,
		-0.677834, -0.454791, -0.577673,
		27.065647, 36.617092, 33.647087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662827, 37.185951, 33.392086>,  <27.540131, 36.935444, 34.051456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662827, 37.185951, 33.392086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308786, 37.016411, 33.315197>,  <27.096363, 36.914688, 33.269062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308786, 37.016411, 33.315197>,  <27.662827, 37.185951, 33.392086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308786, 37.016411, 33.315197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255189, 0.787396, -0.561148,
		0.389200, -0.447618, -0.805085,
		-0.885100, -0.423847, -0.192227,
		27.043257, 36.889256, 33.257530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660906, 37.217674, 32.666290>,  <27.662827, 37.185951, 33.392086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660906, 37.217674, 32.666290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283644, 37.210300, 32.799026>,  <27.057285, 37.205875, 32.878666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283644, 37.210300, 32.799026>,  <27.660906, 37.217674, 32.666290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283644, 37.210300, 32.799026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237141, 0.736885, -0.633060,
		-0.232854, -0.675767, -0.699370,
		-0.943156, -0.018439, 0.331838,
		27.000696, 37.204769, 32.898579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234407, 37.234718, 32.043037>,  <27.660906, 37.217674, 32.666290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234407, 37.234718, 32.043037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009855, 37.354015, 32.351818>,  <26.875124, 37.425594, 32.537086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009855, 37.354015, 32.351818>,  <27.234407, 37.234718, 32.043037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009855, 37.354015, 32.351818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375670, 0.739311, -0.558830,
		-0.737376, -0.603714, -0.302994,
		-0.561381, 0.298242, 0.771948,
		26.841440, 37.443489, 32.583401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543404, 37.354012, 31.777395>,  <27.234407, 37.234718, 32.043037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543404, 37.354012, 31.777395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563082, 37.567520, 32.115074>,  <26.574888, 37.695625, 32.317680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563082, 37.567520, 32.115074>,  <26.543404, 37.354012, 31.777395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563082, 37.567520, 32.115074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382952, 0.790704, -0.477635,
		-0.922457, -0.299788, 0.243309,
		0.049197, 0.533773, 0.844195,
		26.577841, 37.727654, 32.368332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907757, 37.948711, 31.652838>,  <26.543404, 37.354012, 31.777395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907757, 37.948711, 31.652838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133207, 38.061703, 31.963329>,  <26.268478, 38.129498, 32.149624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133207, 38.061703, 31.963329>,  <25.907757, 37.948711, 31.652838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133207, 38.061703, 31.963329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177397, 0.959178, -0.220243,
		-0.806756, -0.013566, 0.590729,
		0.563627, 0.282476, 0.776229,
		26.302296, 38.146446, 32.196198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491611, 38.397057, 31.973297>,  <25.907757, 37.948711, 31.652838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491611, 38.397057, 31.973297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862797, 38.476856, 32.099209>,  <26.085508, 38.524734, 32.174755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862797, 38.476856, 32.099209>,  <25.491611, 38.397057, 31.973297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862797, 38.476856, 32.099209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111610, 0.954654, -0.276005,
		-0.355569, 0.220990, 0.908149,
		0.927962, 0.199498, 0.314780,
		26.141186, 38.536705, 32.193642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393778, 38.891567, 32.515251>,  <25.491611, 38.397057, 31.973297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393778, 38.891567, 32.515251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756466, 38.911198, 32.347702>,  <25.974079, 38.922977, 32.247173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756466, 38.911198, 32.347702>,  <25.393778, 38.891567, 32.515251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756466, 38.911198, 32.347702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147339, 0.967484, -0.205585,
		0.395158, 0.248124, 0.884468,
		0.906720, 0.049078, -0.418868,
		26.028482, 38.925922, 32.222042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617655, 39.557117, 32.683411>,  <25.393778, 38.891567, 32.515251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617655, 39.557117, 32.683411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865627, 39.444695, 32.390373>,  <26.014410, 39.377239, 32.214550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865627, 39.444695, 32.390373>,  <25.617655, 39.557117, 32.683411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865627, 39.444695, 32.390373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073512, 0.908737, -0.410843,
		0.781205, 0.308549, 0.542694,
		0.619931, -0.281058, -0.732592,
		26.051607, 39.360378, 32.170597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103247, 40.108513, 32.752327>,  <25.617655, 39.557117, 32.683411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103247, 40.108513, 32.752327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103340, 39.922550, 32.398182>,  <26.103397, 39.810974, 32.185696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103340, 39.922550, 32.398182>,  <26.103247, 40.108513, 32.752327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103340, 39.922550, 32.398182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135165, 0.877251, -0.460610,
		0.990823, -0.119562, 0.063045,
		0.000235, -0.464904, -0.885361,
		26.103411, 39.783077, 32.132572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681261, 40.514412, 32.329849>,  <26.103247, 40.108513, 32.752327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681261, 40.514412, 32.329849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428047, 40.333504, 32.078541>,  <26.276119, 40.224960, 31.927757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428047, 40.333504, 32.078541>,  <26.681261, 40.514412, 32.329849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428047, 40.333504, 32.078541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015014, 0.818605, -0.574160,
		0.773976, -0.354032, -0.524998,
		-0.633037, -0.452269, -0.628265,
		26.238136, 40.197823, 31.890060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008629, 40.610275, 31.669132>,  <26.681261, 40.514412, 32.329849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008629, 40.610275, 31.669132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614803, 40.542992, 31.649801>,  <26.378508, 40.502621, 31.638203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614803, 40.542992, 31.649801>,  <27.008629, 40.610275, 31.669132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614803, 40.542992, 31.649801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091241, 0.728966, -0.678442,
		0.149351, -0.663562, -0.733062,
		-0.984565, -0.168211, -0.048328,
		26.319433, 40.492527, 31.635303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851879, 40.656563, 30.891172>,  <27.008629, 40.610275, 31.669132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851879, 40.656563, 30.891172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508261, 40.714050, 31.087696>,  <26.302090, 40.748543, 31.205610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508261, 40.714050, 31.087696>,  <26.851879, 40.656563, 30.891172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508261, 40.714050, 31.087696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234601, 0.742514, -0.627404,
		-0.454976, -0.654230, -0.604135,
		-0.859045, 0.143723, 0.491309,
		26.250547, 40.757168, 31.235088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384340, 40.836842, 30.395012>,  <26.851879, 40.656563, 30.891172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384340, 40.836842, 30.395012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205578, 40.967663, 30.728071>,  <26.098320, 41.046158, 30.927908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205578, 40.967663, 30.728071>,  <26.384340, 40.836842, 30.395012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205578, 40.967663, 30.728071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450952, 0.721497, -0.525437,
		-0.772603, -0.610308, -0.174955,
		-0.446908, 0.327058, 0.832650,
		26.071505, 41.065781, 30.977867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692154, 40.971714, 30.186216>,  <26.384340, 40.836842, 30.395012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692154, 40.971714, 30.186216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749062, 41.147320, 30.541075>,  <25.783207, 41.252682, 30.753990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749062, 41.147320, 30.541075>,  <25.692154, 40.971714, 30.186216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749062, 41.147320, 30.541075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303155, 0.872518, -0.383156,
		-0.942261, -0.214431, 0.257222,
		0.142270, 0.439012, 0.887146,
		25.791742, 41.279022, 30.807219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150368, 41.347000, 30.180954>,  <25.692154, 40.971714, 30.186216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150368, 41.347000, 30.180954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358341, 41.537437, 30.464643>,  <25.483126, 41.651699, 30.634857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358341, 41.537437, 30.464643>,  <25.150368, 41.347000, 30.180954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358341, 41.537437, 30.464643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294288, 0.879282, -0.374510,
		-0.801912, -0.013996, 0.597279,
		0.519935, 0.476096, 0.709225,
		25.514322, 41.680267, 30.677412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707834, 41.969479, 30.357895>,  <25.150368, 41.347000, 30.180954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707834, 41.969479, 30.357895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081554, 42.050659, 30.475124>,  <25.305786, 42.099369, 30.545462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081554, 42.050659, 30.475124>,  <24.707834, 41.969479, 30.357895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081554, 42.050659, 30.475124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066183, 0.906578, -0.416816,
		-0.350288, 0.370035, 0.860449,
		0.934301, 0.202953, 0.293073,
		25.361845, 42.111546, 30.563046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675222, 42.627163, 30.696358>,  <24.707834, 41.969479, 30.357895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675222, 42.627163, 30.696358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064171, 42.593353, 30.609318>,  <25.297541, 42.573067, 30.557095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064171, 42.593353, 30.609318>,  <24.675222, 42.627163, 30.696358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064171, 42.593353, 30.609318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048467, 0.838734, -0.542380,
		0.228351, 0.537941, 0.811465,
		0.972372, -0.084524, -0.217598,
		25.355883, 42.567997, 30.544039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072186, 43.273544, 30.938587>,  <24.675222, 42.627163, 30.696358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072186, 43.273544, 30.938587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269279, 43.103516, 30.634869>,  <25.387535, 43.001499, 30.452639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269279, 43.103516, 30.634869>,  <25.072186, 43.273544, 30.938587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269279, 43.103516, 30.634869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044485, 0.859127, -0.509826,
		0.869041, 0.284987, 0.404413,
		0.492736, -0.425070, -0.759294,
		25.417101, 42.975994, 30.407080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707361, 43.651657, 30.703363>,  <25.072186, 43.273544, 30.938587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707361, 43.651657, 30.703363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537058, 43.438240, 30.411045>,  <25.434875, 43.310192, 30.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537058, 43.438240, 30.411045>,  <25.707361, 43.651657, 30.703363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537058, 43.438240, 30.411045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065273, 0.823663, -0.563310,
		0.902479, -0.192133, -0.385509,
		-0.425760, -0.533538, -0.730797,
		25.409330, 43.278179, 30.191807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201860, 43.994781, 30.331612>,  <25.707361, 43.651657, 30.703363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201860, 43.994781, 30.331612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173792, 44.393723, 30.339201>,  <25.156952, 44.633087, 30.343754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173792, 44.393723, 30.339201>,  <25.201860, 43.994781, 30.331612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173792, 44.393723, 30.339201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987111, -0.066682, -0.145481,
		-0.143831, -0.028937, 0.989179,
		-0.070170, 0.997355, 0.018973,
		25.152740, 44.692928, 30.344893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147490, 43.762642, 29.631786>,  <25.201860, 43.994781, 30.331612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147490, 43.762642, 29.631786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531572, 43.650993, 29.627924>,  <25.762022, 43.584003, 29.625607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531572, 43.650993, 29.627924>,  <25.147490, 43.762642, 29.631786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531572, 43.650993, 29.627924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035057, 0.154758, -0.987330,
		0.277080, 0.947703, 0.158385,
		0.960207, -0.279121, -0.009657,
		25.819635, 43.567257, 29.625027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867510, 43.106609, 29.477373>,  <25.147490, 43.762642, 29.631786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867510, 43.106609, 29.477373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233732, 43.258972, 29.529011>,  <25.453466, 43.350391, 29.559994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233732, 43.258972, 29.529011>,  <24.867510, 43.106609, 29.477373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233732, 43.258972, 29.529011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277145, -0.830123, 0.483825,
		0.291458, -0.407191, -0.865591,
		0.915556, 0.380909, 0.129095,
		25.508400, 43.373245, 29.567739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463779, 42.614288, 29.216743>,  <24.867510, 43.106609, 29.477373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463779, 42.614288, 29.216743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592981, 42.848358, 29.514265>,  <25.670502, 42.988800, 29.692778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592981, 42.848358, 29.514265>,  <25.463779, 42.614288, 29.216743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592981, 42.848358, 29.514265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166088, -0.808782, 0.564169,
		0.931710, -0.058692, -0.358429,
		0.323003, 0.585173, 0.743802,
		25.689882, 43.023911, 29.737406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217449, 42.456181, 29.517975>,  <25.463779, 42.614288, 29.216743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217449, 42.456181, 29.517975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976482, 42.622349, 29.790596>,  <25.831902, 42.722050, 29.954168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976482, 42.622349, 29.790596>,  <26.217449, 42.456181, 29.517975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976482, 42.622349, 29.790596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113015, -0.800888, 0.588053,
		0.790140, 0.431279, 0.435519,
		-0.602417, 0.415424, 0.681554,
		25.795757, 42.746975, 29.995062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583876, 41.817863, 29.487116>,  <26.217449, 42.456181, 29.517975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583876, 41.817863, 29.487116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929512, 41.799797, 29.286594>,  <27.136894, 41.788956, 29.166281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929512, 41.799797, 29.286594>,  <26.583876, 41.817863, 29.487116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929512, 41.799797, 29.286594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171719, -0.909759, 0.377956,
		-0.473138, -0.412672, -0.778359,
		0.864091, -0.045167, -0.501305,
		27.188740, 41.786247, 29.136204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602388, 41.202877, 29.110741>,  <26.583876, 41.817863, 29.487116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602388, 41.202877, 29.110741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984230, 41.297295, 29.183422>,  <27.213335, 41.353943, 29.227032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984230, 41.297295, 29.183422>,  <26.602388, 41.202877, 29.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984230, 41.297295, 29.183422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210975, -0.966377, 0.146984,
		0.210291, -0.101976, -0.972306,
		0.954603, 0.236042, 0.181706,
		27.270611, 41.368107, 29.237934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107355, 40.843090, 28.790091>,  <26.602388, 41.202877, 29.110741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107355, 40.843090, 28.790091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210159, 40.960358, 29.158438>,  <27.271843, 41.030720, 29.379446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210159, 40.960358, 29.158438>,  <27.107355, 40.843090, 28.790091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210159, 40.960358, 29.158438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094624, -0.955931, 0.277923,
		0.961764, 0.015707, -0.273428,
		0.257013, 0.293170, 0.920867,
		27.287264, 41.048309, 29.434698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912783, 40.259838, 28.369381>,  <27.107355, 40.843090, 28.790091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912783, 40.259838, 28.369381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618807, 40.326767, 28.632248>,  <26.442421, 40.366924, 28.789968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618807, 40.326767, 28.632248>,  <26.912783, 40.259838, 28.369381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618807, 40.326767, 28.632248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035912, -0.977326, 0.208671,
		0.677181, 0.129760, 0.724285,
		-0.734940, 0.167318, 0.657167,
		26.398325, 40.376961, 28.829397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122536, 40.058559, 28.977795>,  <26.912783, 40.259838, 28.369381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122536, 40.058559, 28.977795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725763, 40.034657, 28.933071>,  <26.487700, 40.020317, 28.906237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725763, 40.034657, 28.933071>,  <27.122536, 40.058559, 28.977795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725763, 40.034657, 28.933071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028164, -0.963782, 0.265201,
		-0.123608, 0.259912, 0.957688,
		-0.991931, -0.059753, -0.111811,
		26.428185, 40.016731, 28.899529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698740, 40.014446, 29.502588>,  <27.122536, 40.058559, 28.977795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698740, 40.014446, 29.502588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549891, 39.775436, 29.218477>,  <26.460581, 39.632030, 29.048010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549891, 39.775436, 29.218477>,  <26.698740, 40.014446, 29.502588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549891, 39.775436, 29.218477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289202, -0.801781, 0.522982,
		-0.881979, -0.010800, 0.471165,
		-0.372122, -0.597521, -0.710277,
		26.438253, 39.596180, 29.005394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253849, 39.445160, 29.798861>,  <26.698740, 40.014446, 29.502588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253849, 39.445160, 29.798861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350035, 39.301811, 29.438028>,  <26.407745, 39.215801, 29.221529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350035, 39.301811, 29.438028>,  <26.253849, 39.445160, 29.798861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350035, 39.301811, 29.438028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349744, -0.834936, 0.424925,
		-0.905460, -0.417675, -0.075432,
		0.240462, -0.358371, -0.902080,
		26.422173, 39.194302, 29.167404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221588, 38.693558, 29.969341>,  <26.253849, 39.445160, 29.798861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221588, 38.693558, 29.969341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398342, 38.691383, 29.610519>,  <26.504395, 38.690079, 29.395226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398342, 38.691383, 29.610519>,  <26.221588, 38.693558, 29.969341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398342, 38.691383, 29.610519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533530, -0.802305, 0.267681,
		-0.721167, -0.596890, -0.351625,
		0.441887, -0.005440, -0.897055,
		26.530909, 38.689751, 29.341404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118095, 37.950802, 29.647854>,  <26.221588, 38.693558, 29.969341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118095, 37.950802, 29.647854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436382, 38.149128, 29.508709>,  <26.627354, 38.268124, 29.425222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436382, 38.149128, 29.508709>,  <26.118095, 37.950802, 29.647854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436382, 38.149128, 29.508709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564832, -0.814790, 0.130694,
		-0.218633, -0.300478, -0.928392,
		0.795716, 0.495812, -0.347860,
		26.675097, 38.297871, 29.404350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346800, 37.516361, 29.206011>,  <26.118095, 37.950802, 29.647854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346800, 37.516361, 29.206011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667780, 37.749371, 29.257757>,  <26.860369, 37.889175, 29.288805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667780, 37.749371, 29.257757>,  <26.346800, 37.516361, 29.206011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667780, 37.749371, 29.257757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513278, -0.784395, 0.348237,
		0.304330, -0.213044, -0.928437,
		0.802452, 0.582526, 0.129364,
		26.908516, 37.924129, 29.296566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860540, 37.121510, 29.017385>,  <26.346800, 37.516361, 29.206011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860540, 37.121510, 29.017385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058718, 37.397488, 29.228483>,  <27.177624, 37.563072, 29.355143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058718, 37.397488, 29.228483>,  <26.860540, 37.121510, 29.017385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058718, 37.397488, 29.228483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557568, -0.718468, 0.415837,
		0.666072, 0.088230, -0.740651,
		0.495445, 0.689941, 0.527746,
		27.207352, 37.604469, 29.386806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559565, 36.874931, 28.990530>,  <26.860540, 37.121510, 29.017385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559565, 36.874931, 28.990530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542267, 37.141663, 29.288113>,  <27.531889, 37.301701, 29.466661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542267, 37.141663, 29.288113>,  <27.559565, 36.874931, 28.990530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542267, 37.141663, 29.288113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656042, -0.542656, 0.524532,
		0.753484, 0.510750, -0.414000,
		-0.043245, 0.666828, 0.743956,
		27.529293, 37.341709, 29.511299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219515, 36.949200, 29.233429>,  <27.559565, 36.874931, 28.990530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219515, 36.949200, 29.233429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986757, 37.080078, 29.531246>,  <27.847103, 37.158604, 29.709936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986757, 37.080078, 29.531246>,  <28.219515, 36.949200, 29.233429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986757, 37.080078, 29.531246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652289, -0.359003, 0.667560,
		0.485716, 0.874105, -0.004526,
		-0.581892, 0.327197, 0.744542,
		27.812189, 37.178238, 29.754608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650507, 37.225143, 29.650520>,  <28.219515, 36.949200, 29.233429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650507, 37.225143, 29.650520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324099, 37.160580, 29.872532>,  <28.128254, 37.121841, 30.005739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324099, 37.160580, 29.872532>,  <28.650507, 37.225143, 29.650520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324099, 37.160580, 29.872532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565659, -0.420521, 0.709361,
		0.118905, 0.892810, 0.434455,
		-0.816022, -0.161406, 0.555028,
		28.079292, 37.112156, 30.039040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838284, 37.263008, 30.291567>,  <28.650507, 37.225143, 29.650520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838284, 37.263008, 30.291567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479658, 37.120262, 30.396500>,  <28.264482, 37.034615, 30.459459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479658, 37.120262, 30.396500>,  <28.838284, 37.263008, 30.291567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479658, 37.120262, 30.396500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377836, -0.307190, 0.873426,
		-0.231110, 0.882202, 0.410253,
		-0.896565, -0.356866, 0.262333,
		28.210690, 37.013203, 30.475199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623274, 37.479225, 31.043751>,  <28.838284, 37.263008, 30.291567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623274, 37.479225, 31.043751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461428, 37.130405, 30.933613>,  <28.364319, 36.921112, 30.867531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461428, 37.130405, 30.933613>,  <28.623274, 37.479225, 31.043751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461428, 37.130405, 30.933613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219327, -0.384844, 0.896544,
		-0.887795, 0.302367, 0.346978,
		-0.404617, -0.872049, -0.275345,
		28.340042, 36.868790, 30.851009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207495, 37.293827, 31.564875>,  <28.623274, 37.479225, 31.043751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207495, 37.293827, 31.564875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311281, 36.952991, 31.383051>,  <28.373552, 36.748489, 31.273956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311281, 36.952991, 31.383051>,  <28.207495, 37.293827, 31.564875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311281, 36.952991, 31.383051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297787, -0.377156, 0.876970,
		-0.918695, -0.362907, 0.155881,
		0.259467, -0.852087, -0.454560,
		28.389122, 36.697365, 31.246683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096712, 36.904308, 32.037472>,  <28.207495, 37.293827, 31.564875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096712, 36.904308, 32.037472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256357, 36.628098, 31.796181>,  <28.352144, 36.462372, 31.651405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256357, 36.628098, 31.796181>,  <28.096712, 36.904308, 32.037472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256357, 36.628098, 31.796181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214536, -0.569309, 0.793638,
		-0.891450, -0.446165, -0.079076,
		0.399112, -0.690524, -0.603230,
		28.376091, 36.420940, 31.615211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825436, 36.343296, 32.338211>,  <28.096712, 36.904308, 32.037472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825436, 36.343296, 32.338211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117592, 36.210495, 32.099445>,  <28.292885, 36.130814, 31.956186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117592, 36.210495, 32.099445>,  <27.825436, 36.343296, 32.338211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117592, 36.210495, 32.099445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293995, -0.636008, 0.713484,
		-0.616517, -0.696613, -0.366930,
		0.730393, -0.331999, -0.596911,
		28.336708, 36.110893, 31.920372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873785, 35.519054, 32.298054>,  <27.825436, 36.343296, 32.338211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873785, 35.519054, 32.298054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238943, 35.670437, 32.236881>,  <28.458038, 35.761269, 32.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238943, 35.670437, 32.236881>,  <27.873785, 35.519054, 32.298054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238943, 35.670437, 32.236881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363405, -0.582928, 0.726727,
		0.185892, -0.719001, -0.669688,
		0.912897, 0.378461, -0.152927,
		28.512812, 35.783974, 32.191002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286951, 34.909637, 32.389957>,  <27.873785, 35.519054, 32.298054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286951, 34.909637, 32.389957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537233, 35.219978, 32.422310>,  <28.687403, 35.406185, 32.441723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537233, 35.219978, 32.422310>,  <28.286951, 34.909637, 32.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537233, 35.219978, 32.422310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556264, -0.516479, 0.651014,
		0.546865, -0.362353, -0.754744,
		0.625707, 0.775854, 0.080880,
		28.724945, 35.452736, 32.446575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968584, 34.667225, 32.279423>,  <28.286951, 34.909637, 32.389957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968584, 34.667225, 32.279423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002539, 34.994755, 32.506519>,  <29.022911, 35.191273, 32.642776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002539, 34.994755, 32.506519>,  <28.968584, 34.667225, 32.279423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002539, 34.994755, 32.506519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722981, -0.442700, 0.530391,
		0.685633, 0.365441, -0.629571,
		0.084885, 0.818822, 0.567737,
		29.028004, 35.240402, 32.676842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596809, 34.674706, 32.512859>,  <28.968584, 34.667225, 32.279423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596809, 34.674706, 32.512859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459499, 34.958862, 32.758625>,  <29.377113, 35.129356, 32.906082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459499, 34.958862, 32.758625>,  <29.596809, 34.674706, 32.512859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459499, 34.958862, 32.758625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724708, -0.215786, 0.654396,
		0.597461, 0.669907, -0.440755,
		-0.343276, 0.710395, 0.614411,
		29.356516, 35.171982, 32.942947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207037, 35.071899, 32.705090>,  <29.596809, 34.674706, 32.512859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207037, 35.071899, 32.705090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923473, 35.128681, 32.981438>,  <29.753336, 35.162750, 33.147247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923473, 35.128681, 32.981438>,  <30.207037, 35.071899, 32.705090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923473, 35.128681, 32.981438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687513, -0.079519, 0.721805,
		0.157404, 0.986673, -0.041227,
		-0.708907, 0.141959, 0.690868,
		29.710802, 35.171268, 33.188698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392525, 35.509155, 33.248337>,  <30.207037, 35.071899, 32.705090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392525, 35.509155, 33.248337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101078, 35.279324, 33.397453>,  <29.926210, 35.141426, 33.486923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101078, 35.279324, 33.397453>,  <30.392525, 35.509155, 33.248337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101078, 35.279324, 33.397453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552233, -0.170854, 0.815995,
		-0.405159, 0.800418, 0.441788,
		-0.728618, -0.574578, 0.372794,
		29.882492, 35.106949, 33.509293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050070, 35.760662, 33.883514>,  <30.392525, 35.509155, 33.248337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050070, 35.760662, 33.883514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134808, 35.370747, 33.855484>,  <30.185650, 35.136799, 33.838665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134808, 35.370747, 33.855484>,  <30.050070, 35.760662, 33.883514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134808, 35.370747, 33.855484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648949, 0.086695, 0.755876,
		-0.730744, -0.205602, 0.650954,
		0.211844, -0.974788, -0.070073,
		30.198360, 35.078312, 33.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863846, 35.354214, 34.537533>,  <30.050070, 35.760662, 33.883514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863846, 35.354214, 34.537533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160376, 35.181110, 34.332336>,  <30.338293, 35.077248, 34.209217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160376, 35.181110, 34.332336>,  <29.863846, 35.354214, 34.537533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160376, 35.181110, 34.332336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527088, -0.097759, 0.844169,
		-0.415469, -0.896195, 0.155630,
		0.741325, -0.432757, -0.512990,
		30.382772, 35.051285, 34.178440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364082, 34.907124, 34.994514>,  <29.863846, 35.354214, 34.537533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364082, 34.907124, 34.994514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426249, 34.714905, 35.339748>,  <29.463549, 34.599575, 35.546890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426249, 34.714905, 35.339748>,  <29.364082, 34.907124, 34.994514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426249, 34.714905, 35.339748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444796, 0.814167, 0.373214,
		-0.882045, 0.325896, 0.340278,
		0.155414, -0.480546, 0.863088,
		29.472874, 34.570740, 35.598675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076542, 35.343452, 35.648525>,  <29.364082, 34.907124, 34.994514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076542, 35.343452, 35.648525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373882, 35.093296, 35.743454>,  <29.552286, 34.943203, 35.800411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373882, 35.093296, 35.743454>,  <29.076542, 35.343452, 35.648525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373882, 35.093296, 35.743454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444896, 0.727184, 0.522752,
		-0.499497, -0.283006, 0.818786,
		0.743350, -0.625388, 0.237318,
		29.596888, 34.905682, 35.814648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031260, 35.309906, 36.322002>,  <29.076542, 35.343452, 35.648525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031260, 35.309906, 36.322002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393431, 35.243160, 36.165874>,  <29.610733, 35.203114, 36.072197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393431, 35.243160, 36.165874>,  <29.031260, 35.309906, 36.322002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393431, 35.243160, 36.165874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370520, 0.759373, 0.534853,
		0.207149, -0.628894, 0.749387,
		0.905430, -0.166869, -0.390322,
		29.665060, 35.193100, 36.048779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506319, 35.734600, 36.699532>,  <29.031260, 35.309906, 36.322002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506319, 35.734600, 36.699532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761887, 35.596653, 36.424477>,  <29.915226, 35.513885, 36.259441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761887, 35.596653, 36.424477>,  <29.506319, 35.734600, 36.699532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761887, 35.596653, 36.424477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626194, 0.752373, 0.204490,
		0.446838, -0.561248, 0.696661,
		0.638918, -0.344871, -0.687639,
		29.953562, 35.493191, 36.218185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256895, 35.647747, 36.979141>,  <29.506319, 35.734600, 36.699532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256895, 35.647747, 36.979141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226461, 35.729618, 36.588795>,  <30.208200, 35.778740, 36.354588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226461, 35.729618, 36.588795>,  <30.256895, 35.647747, 36.979141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226461, 35.729618, 36.588795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586218, 0.800874, 0.122265,
		0.806573, -0.562769, -0.180919,
		-0.076086, 0.204674, -0.975869,
		30.203636, 35.791019, 36.296036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891396, 35.702648, 36.639183>,  <30.256895, 35.647747, 36.979141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891396, 35.702648, 36.639183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632217, 35.923992, 36.429817>,  <30.476711, 36.056797, 36.304199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632217, 35.923992, 36.429817>,  <30.891396, 35.702648, 36.639183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632217, 35.923992, 36.429817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618278, 0.783440, 0.062881,
		0.444860, -0.282873, -0.849754,
		-0.647945, 0.553357, -0.523415,
		30.437834, 36.090000, 36.272793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180557, 36.040859, 35.949635>,  <30.891396, 35.702648, 36.639183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180557, 36.040859, 35.949635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887264, 36.258202, 36.113159>,  <30.711288, 36.388607, 36.211273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887264, 36.258202, 36.113159>,  <31.180557, 36.040859, 35.949635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887264, 36.258202, 36.113159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588791, 0.808085, -0.017997,
		-0.340137, 0.227511, -0.912439,
		-0.733234, 0.543357, 0.408816,
		30.667294, 36.421207, 36.235806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843168, 35.948315, 36.384502>,  <31.180557, 36.040859, 35.949635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843168, 35.948315, 36.384502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194653, 36.119892, 36.300716>,  <32.405544, 36.222839, 36.250443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194653, 36.119892, 36.300716>,  <31.843168, 35.948315, 36.384502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194653, 36.119892, 36.300716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477344, -0.786203, 0.392464,
		0.003660, -0.444850, -0.895598,
		0.878709, 0.428944, -0.209469,
		32.458263, 36.248577, 36.237877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203003, 35.416397, 36.096672>,  <31.843168, 35.948315, 36.384502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203003, 35.416397, 36.096672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459816, 35.696903, 36.220623>,  <32.613903, 35.865208, 36.294994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459816, 35.696903, 36.220623>,  <32.203003, 35.416397, 36.096672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459816, 35.696903, 36.220623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569033, -0.706729, 0.420399,
		0.513811, -0.093578, -0.852785,
		0.642028, 0.701268, 0.309876,
		32.652424, 35.907284, 36.313587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925770, 35.227203, 35.943371>,  <32.203003, 35.416397, 36.096672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925770, 35.227203, 35.943371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980827, 35.515759, 36.214859>,  <33.013863, 35.688892, 36.377750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980827, 35.515759, 36.214859>,  <32.925770, 35.227203, 35.943371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980827, 35.515759, 36.214859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622799, -0.595862, 0.507020,
		0.770179, 0.352915, -0.531296,
		0.137644, 0.721387, 0.678716,
		33.022121, 35.732174, 36.418472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696098, 35.353222, 36.084335>,  <32.925770, 35.227203, 35.943371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696098, 35.353222, 36.084335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474682, 35.469456, 36.396526>,  <33.341831, 35.539196, 36.583843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474682, 35.469456, 36.396526>,  <33.696098, 35.353222, 36.084335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474682, 35.469456, 36.396526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569119, -0.552209, 0.609236,
		0.608022, 0.781426, 0.140297,
		-0.553546, 0.290583, 0.780480,
		33.308617, 35.556629, 36.630669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065506, 35.064304, 36.601627>,  <33.696098, 35.353222, 36.084335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065506, 35.064304, 36.601627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760319, 35.217148, 36.810192>,  <33.577206, 35.308853, 36.935329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760319, 35.217148, 36.810192>,  <34.065506, 35.064304, 36.601627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760319, 35.217148, 36.810192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314133, -0.485800, 0.815671,
		0.564975, 0.786126, 0.250619,
		-0.762970, 0.382106, 0.521413,
		33.531429, 35.331779, 36.966618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265850, 35.543579, 37.245609>,  <34.065506, 35.064304, 36.601627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265850, 35.543579, 37.245609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921486, 35.353016, 37.317017>,  <33.714867, 35.238678, 37.359859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921486, 35.353016, 37.317017>,  <34.265850, 35.543579, 37.245609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921486, 35.353016, 37.317017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387197, -0.385936, 0.837336,
		-0.330022, 0.789990, 0.516721,
		-0.860909, -0.476412, 0.178515,
		33.663212, 35.210091, 37.370571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321903, 35.291401, 38.020679>,  <34.265850, 35.543579, 37.245609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321903, 35.291401, 38.020679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979290, 35.101967, 37.938641>,  <33.773724, 34.988304, 37.889416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979290, 35.101967, 37.938641>,  <34.321903, 35.291401, 38.020679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979290, 35.101967, 37.938641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091836, -0.530924, 0.842429,
		-0.507856, 0.702733, 0.498246,
		-0.856533, -0.473589, -0.205096,
		33.722332, 34.959888, 37.877113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719681, 35.377991, 38.494965>,  <34.321903, 35.291401, 38.020679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719681, 35.377991, 38.494965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652580, 35.023048, 38.323170>,  <33.612320, 34.810081, 38.220093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652580, 35.023048, 38.323170>,  <33.719681, 35.377991, 38.494965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652580, 35.023048, 38.323170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010499, -0.437245, 0.899281,
		-0.985773, 0.146348, 0.082665,
		-0.167753, -0.887355, -0.429488,
		33.602253, 34.756844, 38.194324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161316, 35.078800, 38.867378>,  <33.719681, 35.377991, 38.494965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161316, 35.078800, 38.867378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300407, 34.746471, 38.693565>,  <33.383862, 34.547073, 38.589279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300407, 34.746471, 38.693565>,  <33.161316, 35.078800, 38.867378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300407, 34.746471, 38.693565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028827, -0.472709, 0.880747,
		-0.937151, -0.293737, -0.188325,
		0.347731, -0.830822, -0.434533,
		33.404728, 34.497227, 38.563206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729774, 34.560810, 39.133755>,  <33.161316, 35.078800, 38.867378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729774, 34.560810, 39.133755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058048, 34.378296, 38.996189>,  <33.255013, 34.268787, 38.913651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058048, 34.378296, 38.996189>,  <32.729774, 34.560810, 39.133755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058048, 34.378296, 38.996189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041759, -0.552390, 0.832539,
		-0.569859, -0.697610, -0.434281,
		0.820681, -0.456295, -0.343916,
		33.304253, 34.241409, 38.893017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604561, 33.841042, 38.952351>,  <32.729774, 34.560810, 39.133755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604561, 33.841042, 38.952351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979584, 33.911274, 39.072456>,  <33.204597, 33.953415, 39.144520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979584, 33.911274, 39.072456>,  <32.604561, 33.841042, 38.952351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979584, 33.911274, 39.072456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154832, -0.562341, 0.812280,
		0.311478, -0.808048, -0.500040,
		0.937555, 0.175585, 0.300268,
		33.260849, 33.963951, 39.162537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733730, 33.116028, 39.142124>,  <32.604561, 33.841042, 38.952351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733730, 33.116028, 39.142124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040649, 33.330093, 39.283463>,  <33.224800, 33.458530, 39.368263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040649, 33.330093, 39.283463>,  <32.733730, 33.116028, 39.142124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040649, 33.330093, 39.283463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019841, -0.530914, 0.847193,
		0.640979, -0.657063, -0.396753,
		0.767301, 0.535162, 0.353341,
		33.270840, 33.490643, 39.389465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181126, 32.612068, 39.410576>,  <32.733730, 33.116028, 39.142124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181126, 32.612068, 39.410576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306877, 32.949417, 39.584881>,  <33.382328, 33.151825, 39.689465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306877, 32.949417, 39.584881>,  <33.181126, 32.612068, 39.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306877, 32.949417, 39.584881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034733, -0.468948, 0.882542,
		0.948662, -0.262318, -0.176720,
		0.314380, 0.843372, 0.435762,
		33.401192, 33.202427, 39.715611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785587, 32.514225, 39.572433>,  <33.181126, 32.612068, 39.410576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785587, 32.514225, 39.572433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640324, 32.795456, 39.816990>,  <33.553165, 32.964195, 39.963726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640324, 32.795456, 39.816990>,  <33.785587, 32.514225, 39.572433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640324, 32.795456, 39.816990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108391, -0.619860, 0.777190,
		0.925401, 0.348512, 0.148900,
		-0.363157, 0.703073, 0.611395,
		33.531376, 33.006378, 40.000408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111454, 32.343220, 40.203831>,  <33.785587, 32.514225, 39.572433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111454, 32.343220, 40.203831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837833, 32.605324, 40.332031>,  <33.673660, 32.762585, 40.408951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837833, 32.605324, 40.332031>,  <34.111454, 32.343220, 40.203831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837833, 32.605324, 40.332031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036654, -0.407943, 0.912271,
		0.728516, 0.635784, 0.255035,
		-0.684047, 0.655256, 0.320497,
		33.632618, 32.801899, 40.428181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339699, 32.649776, 40.906555>,  <34.111454, 32.343220, 40.203831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339699, 32.649776, 40.906555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948059, 32.730164, 40.894085>,  <33.713074, 32.778397, 40.886604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948059, 32.730164, 40.894085>,  <34.339699, 32.649776, 40.906555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948059, 32.730164, 40.894085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091627, -0.299058, 0.949826,
		0.181565, 0.932832, 0.311222,
		-0.979101, 0.200971, -0.031174,
		33.654327, 32.790455, 40.884731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143856, 32.912960, 41.631046>,  <34.339699, 32.649776, 40.906555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143856, 32.912960, 41.631046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788898, 32.824245, 41.469383>,  <33.575924, 32.771015, 41.372387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788898, 32.824245, 41.469383>,  <34.143856, 32.912960, 41.631046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788898, 32.824245, 41.469383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294395, -0.402023, 0.867012,
		-0.354776, 0.888362, 0.291458,
		-0.887393, -0.221791, -0.404157,
		33.522682, 32.757710, 41.348137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636822, 33.157814, 42.086449>,  <34.143856, 32.912960, 41.631046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636822, 33.157814, 42.086449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466938, 32.874027, 41.861496>,  <33.365005, 32.703754, 41.726524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466938, 32.874027, 41.861496>,  <33.636822, 33.157814, 42.086449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466938, 32.874027, 41.861496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313259, -0.467652, 0.826541,
		-0.849405, 0.527213, -0.023631,
		-0.424712, -0.709470, -0.562380,
		33.339523, 32.661186, 41.692783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964100, 32.992638, 42.386124>,  <33.636822, 33.157814, 42.086449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964100, 32.992638, 42.386124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047623, 32.668190, 42.167591>,  <33.097736, 32.473522, 42.036472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047623, 32.668190, 42.167591>,  <32.964100, 32.992638, 42.386124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047623, 32.668190, 42.167591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390398, -0.581339, 0.713887,
		-0.896654, 0.064223, -0.438048,
		0.208807, -0.811123, -0.546332,
		33.110264, 32.424854, 42.003693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448238, 32.523529, 42.669205>,  <32.964100, 32.992638, 42.386124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448238, 32.523529, 42.669205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705185, 32.283642, 42.478333>,  <32.859352, 32.139709, 42.363808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705185, 32.283642, 42.478333>,  <32.448238, 32.523529, 42.669205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705185, 32.283642, 42.478333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325441, -0.777155, 0.538627,
		-0.693870, -0.190700, -0.694390,
		0.642365, -0.599720, -0.477183,
		32.897896, 32.103725, 42.335178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106182, 31.951385, 42.438801>,  <32.448238, 32.523529, 42.669205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106182, 31.951385, 42.438801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487003, 31.832512, 42.467865>,  <32.715496, 31.761189, 42.485302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487003, 31.832512, 42.467865>,  <32.106182, 31.951385, 42.438801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487003, 31.832512, 42.467865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270132, -0.705090, 0.655650,
		-0.143618, -0.643839, -0.751561,
		0.952052, -0.297184, 0.072658,
		32.772617, 31.743357, 42.489662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123116, 31.144075, 42.327595>,  <32.106182, 31.951385, 42.438801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123116, 31.144075, 42.327595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466820, 31.246870, 42.504513>,  <32.673042, 31.308546, 42.610664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466820, 31.246870, 42.504513>,  <32.123116, 31.144075, 42.327595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466820, 31.246870, 42.504513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091245, -0.773780, 0.626848,
		0.503333, -0.578984, -0.641431,
		0.859261, 0.256985, 0.442298,
		32.724598, 31.323965, 42.637203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455265, 30.526932, 42.322514>,  <32.123116, 31.144075, 42.327595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455265, 30.526932, 42.322514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608025, 30.761944, 42.607880>,  <32.699680, 30.902952, 42.779099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608025, 30.761944, 42.607880>,  <32.455265, 30.526932, 42.322514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608025, 30.761944, 42.607880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033816, -0.762523, 0.646076,
		0.923587, -0.270859, -0.271336,
		0.381895, 0.587532, 0.713416,
		32.722591, 30.938204, 42.821903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820732, 30.023304, 42.717457>,  <32.455265, 30.526932, 42.322514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820732, 30.023304, 42.717457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761395, 30.342346, 42.951317>,  <32.725792, 30.533772, 43.091633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761395, 30.342346, 42.951317>,  <32.820732, 30.023304, 42.717457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761395, 30.342346, 42.951317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065850, -0.597848, 0.798900,
		0.986742, 0.080009, 0.141207,
		-0.148340, 0.797606, 0.584653,
		32.716892, 30.581629, 43.126713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233486, 29.981842, 43.277336>,  <32.820732, 30.023304, 42.717457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233486, 29.981842, 43.277336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972488, 30.253082, 43.412647>,  <32.815891, 30.415827, 43.493832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972488, 30.253082, 43.412647>,  <33.233486, 29.981842, 43.277336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972488, 30.253082, 43.412647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155115, -0.556457, 0.816269,
		0.741748, 0.480140, 0.468269,
		-0.652495, 0.678101, 0.338274,
		32.776741, 30.456512, 43.514130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384884, 30.164927, 44.010208>,  <33.233486, 29.981842, 43.277336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384884, 30.164927, 44.010208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995396, 30.237421, 43.955044>,  <32.761703, 30.280918, 43.921944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995396, 30.237421, 43.955044>,  <33.384884, 30.164927, 44.010208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995396, 30.237421, 43.955044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203053, -0.416640, 0.886104,
		0.103136, 0.890822, 0.442492,
		-0.973721, 0.181239, -0.137914,
		32.703278, 30.291792, 43.913670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174545, 30.584990, 44.591202>,  <33.384884, 30.164927, 44.010208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174545, 30.584990, 44.591202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846657, 30.403963, 44.450783>,  <32.649921, 30.295347, 44.366531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846657, 30.403963, 44.450783>,  <33.174545, 30.584990, 44.591202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846657, 30.403963, 44.450783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131539, -0.447778, 0.884417,
		-0.557449, 0.771155, 0.307524,
		-0.819724, -0.452566, -0.351050,
		32.600739, 30.268194, 44.345467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780483, 30.651731, 45.187359>,  <33.174545, 30.584990, 44.591202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780483, 30.651731, 45.187359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604752, 30.372362, 44.961369>,  <32.499313, 30.204741, 44.825775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604752, 30.372362, 44.961369>,  <32.780483, 30.651731, 45.187359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604752, 30.372362, 44.961369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257056, -0.504886, 0.824022,
		-0.860765, 0.507244, 0.042275,
		-0.439324, -0.698422, -0.564978,
		32.472954, 30.162836, 44.791874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094158, 30.658924, 45.456047>,  <32.780483, 30.651731, 45.187359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094158, 30.658924, 45.456047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134350, 30.301809, 45.280396>,  <32.158466, 30.087540, 45.175007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134350, 30.301809, 45.280396>,  <32.094158, 30.658924, 45.456047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134350, 30.301809, 45.280396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086976, -0.431788, 0.897772,
		-0.991130, -0.128401, 0.034265,
		0.100479, -0.892789, -0.439126,
		32.164494, 30.033972, 45.148659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485357, 30.228281, 45.702389>,  <32.094158, 30.658924, 45.456047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485357, 30.228281, 45.702389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761709, 29.980757, 45.552853>,  <31.927521, 29.832241, 45.463131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761709, 29.980757, 45.552853>,  <31.485357, 30.228281, 45.702389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761709, 29.980757, 45.552853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051554, -0.557943, 0.828276,
		-0.721130, -0.552965, -0.417373,
		0.690879, -0.618813, -0.373842,
		31.968973, 29.795113, 45.440701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244936, 29.623592, 45.875011>,  <31.485357, 30.228281, 45.702389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244936, 29.623592, 45.875011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634903, 29.565479, 45.807568>,  <31.868883, 29.530611, 45.767101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634903, 29.565479, 45.807568>,  <31.244936, 29.623592, 45.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634903, 29.565479, 45.807568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015240, -0.712206, 0.701805,
		-0.222041, -0.686772, -0.692129,
		0.974918, -0.145281, -0.168606,
		31.927378, 29.521894, 45.756985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238804, 28.914110, 45.912239>,  <31.244936, 29.623592, 45.875011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238804, 28.914110, 45.912239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622339, 29.021263, 45.949913>,  <31.852461, 29.085556, 45.972519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622339, 29.021263, 45.949913>,  <31.238804, 28.914110, 45.912239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622339, 29.021263, 45.949913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120453, -0.684076, 0.719397,
		0.257147, -0.678438, -0.688184,
		0.958836, 0.267884, 0.094188,
		31.909990, 29.101629, 45.978168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652378, 28.265278, 45.716057>,  <31.238804, 28.914110, 45.912239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652378, 28.265278, 45.716057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860477, 28.519503, 45.944233>,  <31.985338, 28.672037, 46.081139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860477, 28.519503, 45.944233>,  <31.652378, 28.265278, 45.716057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860477, 28.519503, 45.944233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129570, -0.718957, 0.682871,
		0.844127, -0.281353, -0.456388,
		0.520251, 0.635564, 0.570436,
		32.016552, 28.710173, 46.115364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212814, 27.969559, 45.952507>,  <31.652378, 28.265278, 45.716057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212814, 27.969559, 45.952507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203037, 28.271584, 46.214584>,  <32.197170, 28.452799, 46.371830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203037, 28.271584, 46.214584>,  <32.212814, 27.969559, 45.952507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203037, 28.271584, 46.214584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053527, -0.653464, 0.755063,
		0.998267, 0.053525, -0.024446,
		-0.024440, 0.755063, 0.655197,
		32.195705, 28.498102, 46.411144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769806, 27.871338, 46.424580>,  <32.212814, 27.969559, 45.952507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769806, 27.871338, 46.424580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537533, 28.135595, 46.614891>,  <32.398170, 28.294149, 46.729076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537533, 28.135595, 46.614891>,  <32.769806, 27.871338, 46.424580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537533, 28.135595, 46.614891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099959, -0.522123, 0.846992,
		0.807973, 0.539389, 0.237149,
		-0.580679, 0.660642, 0.475778,
		32.363331, 28.333788, 46.757626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125648, 27.897919, 47.115051>,  <32.769806, 27.871338, 46.424580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125648, 27.897919, 47.115051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753429, 28.038164, 47.157288>,  <32.530098, 28.122313, 47.182629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753429, 28.038164, 47.157288>,  <33.125648, 27.897919, 47.115051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753429, 28.038164, 47.157288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015184, -0.325058, 0.945572,
		0.365855, 0.878297, 0.307806,
		-0.930548, 0.350616, 0.105588,
		32.474266, 28.143349, 47.188965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071842, 28.249002, 47.781216>,  <33.125648, 27.897919, 47.115051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071842, 28.249002, 47.781216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705063, 28.142050, 47.662754>,  <32.484993, 28.077879, 47.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705063, 28.142050, 47.662754>,  <33.071842, 28.249002, 47.781216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705063, 28.142050, 47.662754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144270, -0.469834, 0.870886,
		-0.372001, 0.841287, 0.392240,
		-0.916952, -0.267382, -0.296151,
		32.429977, 28.061834, 47.573910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717690, 28.397190, 48.251873>,  <33.071842, 28.249002, 47.781216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717690, 28.397190, 48.251873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462067, 28.144041, 48.077023>,  <32.308693, 27.992151, 47.972111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462067, 28.144041, 48.077023>,  <32.717690, 28.397190, 48.251873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462067, 28.144041, 48.077023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091057, -0.502070, 0.860020,
		-0.763752, 0.589404, 0.263223,
		-0.639056, -0.632873, -0.437126,
		32.270351, 27.954180, 47.945885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170990, 28.402351, 48.688057>,  <32.717690, 28.397190, 48.251873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170990, 28.402351, 48.688057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140102, 28.042028, 48.517136>,  <32.121571, 27.825834, 48.414585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140102, 28.042028, 48.517136>,  <32.170990, 28.402351, 48.688057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140102, 28.042028, 48.517136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093669, -0.420128, 0.902618,
		-0.992605, 0.109722, -0.051936,
		-0.077217, -0.900807, -0.427299,
		32.116936, 27.771786, 48.388947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915743, 28.063063, 49.207043>,  <32.170990, 28.402351, 48.688057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915743, 28.063063, 49.207043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978985, 27.765789, 48.946987>,  <32.016930, 27.587425, 48.790955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978985, 27.765789, 48.946987>,  <31.915743, 28.063063, 49.207043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978985, 27.765789, 48.946987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355372, -0.657126, 0.664752,
		-0.921257, 0.125941, -0.368001,
		0.158104, -0.743185, -0.650138,
		32.026417, 27.542833, 48.751945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290880, 27.557095, 49.114323>,  <31.915743, 28.063063, 49.207043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290880, 27.557095, 49.114323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642023, 27.377542, 49.047539>,  <31.852709, 27.269812, 49.007469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642023, 27.377542, 49.047539>,  <31.290880, 27.557095, 49.114323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642023, 27.377542, 49.047539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259598, -0.738942, 0.621750,
		-0.402466, -0.502464, -0.765213,
		0.877855, -0.448881, -0.166960,
		31.905380, 27.242878, 48.997452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150446, 26.861120, 49.018898>,  <31.290880, 27.557095, 49.114323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150446, 26.861120, 49.018898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531450, 26.908121, 49.131268>,  <31.760054, 26.936321, 49.198689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531450, 26.908121, 49.131268>,  <31.150446, 26.861120, 49.018898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531450, 26.908121, 49.131268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085408, -0.782425, 0.616861,
		0.292281, -0.611559, -0.735232,
		0.952511, 0.117502, 0.280920,
		31.817204, 26.943371, 49.215542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331656, 26.139425, 49.160583>,  <31.150446, 26.861120, 49.018898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331656, 26.139425, 49.160583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586437, 26.400028, 49.325424>,  <31.739307, 26.556389, 49.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586437, 26.400028, 49.325424>,  <31.331656, 26.139425, 49.160583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586437, 26.400028, 49.325424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135182, -0.620685, 0.772319,
		0.758956, -0.436224, -0.483420,
		0.636955, 0.651505, 0.412103,
		31.777523, 26.595480, 49.449055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856680, 25.664661, 49.362076>,  <31.331656, 26.139425, 49.160583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856680, 25.664661, 49.362076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849533, 26.000984, 49.578491>,  <31.845245, 26.202778, 49.708340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849533, 26.000984, 49.578491>,  <31.856680, 25.664661, 49.362076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849533, 26.000984, 49.578491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225667, -0.523775, 0.821422,
		0.974041, 0.136772, -0.180383,
		-0.017868, 0.840805, 0.541043,
		31.844173, 26.253225, 49.740803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223732, 25.218344, 48.969234>,  <31.856680, 25.664661, 49.362076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223732, 25.218344, 48.969234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457779, 25.338808, 49.270416>,  <32.598206, 25.411087, 49.451126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457779, 25.338808, 49.270416>,  <32.223732, 25.218344, 48.969234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457779, 25.338808, 49.270416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800586, -0.066544, -0.595512,
		-0.129240, 0.951249, -0.280041,
		0.585115, 0.301161, 0.752956,
		32.633312, 25.429157, 49.496304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750038, 25.675404, 48.664326>,  <32.223732, 25.218344, 48.969234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750038, 25.675404, 48.664326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904190, 25.548756, 49.011021>,  <32.996681, 25.472767, 49.219036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904190, 25.548756, 49.011021>,  <32.750038, 25.675404, 48.664326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904190, 25.548756, 49.011021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904824, -0.054615, -0.422268,
		0.181035, 0.946979, 0.265438,
		0.385381, -0.316621, 0.866737,
		33.019806, 25.453770, 49.271042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869049, 25.272371, 48.156002>,  <32.750038, 25.675404, 48.664326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869049, 25.272371, 48.156002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558941, 25.111727, 47.960995>,  <32.372875, 25.015341, 47.843990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558941, 25.111727, 47.960995>,  <32.869049, 25.272371, 48.156002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558941, 25.111727, 47.960995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302848, 0.440982, -0.844878,
		0.554298, -0.802648, -0.220251,
		-0.775266, -0.401611, -0.487515,
		32.326363, 24.991243, 47.814739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990250, 24.647505, 47.835743>,  <32.869049, 25.272371, 48.156002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990250, 24.647505, 47.835743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717705, 24.854824, 47.629009>,  <32.554180, 24.979216, 47.504971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717705, 24.854824, 47.629009>,  <32.990250, 24.647505, 47.835743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717705, 24.854824, 47.629009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681955, 0.193037, -0.705460,
		-0.265868, -0.833130, -0.484983,
		-0.681359, 0.518296, -0.516835,
		32.513298, 25.010313, 47.473957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305679, 24.776310, 47.222443>,  <32.990250, 24.647505, 47.835743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305679, 24.776310, 47.222443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011143, 25.040779, 47.164963>,  <32.834419, 25.199461, 47.130474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011143, 25.040779, 47.164963>,  <33.305679, 24.776310, 47.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011143, 25.040779, 47.164963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390514, 0.241862, -0.888258,
		-0.552536, -0.710179, -0.436291,
		-0.736344, 0.661172, -0.143697,
		32.790241, 25.239130, 47.121853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079727, 24.739738, 46.534328>,  <33.305679, 24.776310, 47.222443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079727, 24.739738, 46.534328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957832, 25.097071, 46.666451>,  <32.884697, 25.311470, 46.745724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957832, 25.097071, 46.666451>,  <33.079727, 24.739738, 46.534328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957832, 25.097071, 46.666451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152045, 0.387978, -0.909041,
		-0.940223, -0.226794, -0.254056,
		-0.304733, 0.893329, 0.330303,
		32.866413, 25.365070, 46.765541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558327, 24.998430, 46.075825>,  <33.079727, 24.739738, 46.534328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558327, 24.998430, 46.075825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722706, 25.317289, 46.252766>,  <32.821335, 25.508604, 46.358932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722706, 25.317289, 46.252766>,  <32.558327, 24.998430, 46.075825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722706, 25.317289, 46.252766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233923, 0.376775, -0.896282,
		-0.881135, 0.471805, -0.031635,
		0.410951, 0.797145, 0.442356,
		32.845989, 25.556433, 46.385471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127605, 25.597349, 45.839298>,  <32.558327, 24.998430, 46.075825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127605, 25.597349, 45.839298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475304, 25.758631, 45.953732>,  <32.683922, 25.855400, 46.022392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475304, 25.758631, 45.953732>,  <32.127605, 25.597349, 45.839298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475304, 25.758631, 45.953732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067013, 0.477221, -0.876224,
		-0.489822, 0.780823, 0.387801,
		0.869243, 0.403206, 0.286079,
		32.736076, 25.879593, 46.039555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079525, 26.315609, 45.629498>,  <32.127605, 25.597349, 45.839298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079525, 26.315609, 45.629498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471172, 26.251480, 45.679508>,  <32.706161, 26.213003, 45.709515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471172, 26.251480, 45.679508>,  <32.079525, 26.315609, 45.629498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471172, 26.251480, 45.679508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186514, 0.463575, -0.866205,
		0.080913, 0.871433, 0.483795,
		0.979115, -0.160322, 0.125025,
		32.764908, 26.203384, 45.717014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463871, 27.008728, 45.572624>,  <32.079525, 26.315609, 45.629498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463871, 27.008728, 45.572624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741783, 26.725784, 45.520588>,  <32.908531, 26.556019, 45.489365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741783, 26.725784, 45.520588>,  <32.463871, 27.008728, 45.572624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741783, 26.725784, 45.520588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389963, 0.522483, -0.758249,
		0.604324, 0.476086, 0.638854,
		0.694782, -0.707357, -0.130093,
		32.950218, 26.513577, 45.481560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055416, 27.398340, 45.581158>,  <32.463871, 27.008728, 45.572624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055416, 27.398340, 45.581158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149082, 27.050005, 45.408272>,  <33.205280, 26.841003, 45.304539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149082, 27.050005, 45.408272>,  <33.055416, 27.398340, 45.581158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149082, 27.050005, 45.408272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473266, 0.490448, -0.731765,
		0.849227, -0.033199, 0.526983,
		0.234164, -0.870838, -0.432213,
		33.219330, 26.788754, 45.278606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805958, 27.391146, 45.431976>,  <33.055416, 27.398340, 45.581158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805958, 27.391146, 45.431976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640808, 27.124750, 45.183464>,  <33.541718, 26.964912, 45.034355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640808, 27.124750, 45.183464>,  <33.805958, 27.391146, 45.431976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640808, 27.124750, 45.183464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452539, 0.441972, -0.774512,
		0.790406, -0.600933, 0.118905,
		-0.412877, -0.665988, -0.621283,
		33.516945, 26.924953, 44.997078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346966, 27.230568, 44.869648>,  <33.805958, 27.391146, 45.431976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346966, 27.230568, 44.869648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992622, 27.133183, 44.711670>,  <33.780018, 27.074751, 44.616882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992622, 27.133183, 44.711670>,  <34.346966, 27.230568, 44.869648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992622, 27.133183, 44.711670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228500, 0.511918, -0.828087,
		0.403791, -0.823812, -0.397853,
		-0.885856, -0.243465, -0.394949,
		33.726864, 27.060143, 44.593185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491867, 26.890276, 44.269691>,  <34.346966, 27.230568, 44.869648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491867, 26.890276, 44.269691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115715, 27.023129, 44.240383>,  <33.890022, 27.102840, 44.222797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115715, 27.023129, 44.240383>,  <34.491867, 26.890276, 44.269691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115715, 27.023129, 44.240383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184120, 0.315983, -0.930728,
		-0.285970, -0.888732, -0.358297,
		-0.940383, 0.332130, -0.073272,
		33.833599, 27.122768, 44.218403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366188, 26.762257, 43.591301>,  <34.491867, 26.890276, 44.269691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366188, 26.762257, 43.591301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091572, 27.024582, 43.716885>,  <33.926804, 27.181976, 43.792236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091572, 27.024582, 43.716885>,  <34.366188, 26.762257, 43.591301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091572, 27.024582, 43.716885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038249, 0.463778, -0.885125,
		-0.726084, -0.595666, -0.343487,
		-0.686541, 0.655813, 0.313958,
		33.885609, 27.221327, 43.811073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882122, 26.718687, 43.141869>,  <34.366188, 26.762257, 43.591301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882122, 26.718687, 43.141869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811115, 27.080080, 43.297924>,  <33.768513, 27.296915, 43.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811115, 27.080080, 43.297924>,  <33.882122, 26.718687, 43.141869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811115, 27.080080, 43.297924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092891, 0.410048, -0.907321,
		-0.979725, -0.124820, -0.156714,
		-0.177513, 0.903482, 0.390140,
		33.757862, 27.351124, 43.414967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425602, 27.081537, 42.665390>,  <33.882122, 26.718687, 43.141869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425602, 27.081537, 42.665390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542000, 27.380255, 42.904594>,  <33.611839, 27.559484, 43.048119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542000, 27.380255, 42.904594>,  <33.425602, 27.081537, 42.665390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542000, 27.380255, 42.904594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141639, 0.584549, -0.798900,
		-0.946181, 0.317180, 0.064327,
		0.290997, 0.746793, 0.598014,
		33.629299, 27.604292, 43.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134041, 27.717373, 42.366467>,  <33.425602, 27.081537, 42.665390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134041, 27.717373, 42.366467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435944, 27.837843, 42.599579>,  <33.617085, 27.910124, 42.739445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435944, 27.837843, 42.599579>,  <33.134041, 27.717373, 42.366467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435944, 27.837843, 42.599579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316626, 0.610799, -0.725722,
		-0.574528, 0.732269, 0.365648,
		0.754761, 0.301174, 0.582777,
		33.662373, 27.928196, 42.774410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042751, 28.391024, 42.468117>,  <33.134041, 27.717373, 42.366467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042751, 28.391024, 42.468117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433006, 28.331139, 42.532265>,  <33.667160, 28.295208, 42.570755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433006, 28.331139, 42.532265>,  <33.042751, 28.391024, 42.468117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433006, 28.331139, 42.532265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219370, 0.655322, -0.722793,
		0.003118, 0.740364, 0.672199,
		0.975637, -0.149714, 0.160370,
		33.725697, 28.286224, 42.580376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353783, 29.049877, 42.521767>,  <33.042751, 28.391024, 42.468117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353783, 29.049877, 42.521767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645535, 28.800802, 42.408436>,  <33.820583, 28.651358, 42.340439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645535, 28.800802, 42.408436>,  <33.353783, 29.049877, 42.521767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645535, 28.800802, 42.408436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205478, 0.594430, -0.777452,
		0.652526, 0.508837, 0.561511,
		0.729375, -0.622686, -0.283327,
		33.864346, 28.613997, 42.323437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994930, 29.483932, 42.518204>,  <33.353783, 29.049877, 42.521767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994930, 29.483932, 42.518204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028385, 29.166441, 42.277206>,  <34.048458, 28.975946, 42.132607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028385, 29.166441, 42.277206>,  <33.994930, 29.483932, 42.518204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028385, 29.166441, 42.277206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250789, 0.601916, -0.758157,
		0.964422, -0.087686, 0.249403,
		0.083640, -0.793731, -0.602492,
		34.053478, 28.928322, 42.096458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583305, 29.641777, 41.997349>,  <33.994930, 29.483932, 42.518204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583305, 29.641777, 41.997349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417500, 29.308739, 41.850403>,  <34.318016, 29.108915, 41.762234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417500, 29.308739, 41.850403>,  <34.583305, 29.641777, 41.997349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417500, 29.308739, 41.850403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177098, 0.322163, -0.929972,
		0.892644, -0.450548, 0.013910,
		-0.414515, -0.832597, -0.367368,
		34.293144, 29.058960, 41.740192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027603, 29.283485, 41.598278>,  <34.583305, 29.641777, 41.997349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027603, 29.283485, 41.598278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663471, 29.205288, 41.452362>,  <34.444992, 29.158369, 41.364811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663471, 29.205288, 41.452362>,  <35.027603, 29.283485, 41.598278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663471, 29.205288, 41.452362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292717, 0.318992, -0.901422,
		0.292589, -0.927376, -0.233164,
		-0.910334, -0.195495, -0.364792,
		34.390369, 29.146639, 41.342926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169617, 29.170607, 40.965637>,  <35.027603, 29.283485, 41.598278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169617, 29.170607, 40.965637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770084, 29.182087, 40.950108>,  <34.530365, 29.188974, 40.940792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770084, 29.182087, 40.950108>,  <35.169617, 29.170607, 40.965637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770084, 29.182087, 40.950108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047514, 0.441780, -0.895864,
		-0.008560, -0.896664, -0.442628,
		-0.998834, 0.028699, -0.038822,
		34.470436, 29.190697, 40.938461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990646, 28.886648, 40.347305>,  <35.169617, 29.170607, 40.965637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990646, 28.886648, 40.347305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672016, 29.106951, 40.447006>,  <34.480839, 29.239132, 40.506828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672016, 29.106951, 40.447006>,  <34.990646, 28.886648, 40.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672016, 29.106951, 40.447006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090359, 0.299201, -0.949902,
		-0.597743, -0.779195, -0.188571,
		-0.796579, 0.550758, 0.249252,
		34.433041, 29.272179, 40.521782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490971, 28.758072, 39.794903>,  <34.990646, 28.886648, 40.347305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490971, 28.758072, 39.794903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402309, 29.102085, 39.978733>,  <34.349113, 29.308493, 40.089031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402309, 29.102085, 39.978733>,  <34.490971, 28.758072, 39.794903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402309, 29.102085, 39.978733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290106, 0.391802, -0.873115,
		-0.930971, -0.326857, 0.162656,
		-0.221655, 0.860032, 0.459580,
		34.335812, 29.360094, 40.116608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797638, 28.902689, 39.507778>,  <34.490971, 28.758072, 39.794903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797638, 28.902689, 39.507778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979046, 29.225807, 39.658398>,  <34.087891, 29.419678, 39.748768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979046, 29.225807, 39.658398>,  <33.797638, 28.902689, 39.507778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979046, 29.225807, 39.658398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125187, 0.476047, -0.870464,
		-0.882411, 0.347632, 0.317022,
		0.453518, 0.807794, 0.376550,
		34.115101, 29.468145, 39.771362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499866, 29.320145, 39.164410>,  <33.797638, 28.902689, 39.507778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499866, 29.320145, 39.164410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784145, 29.558325, 39.314262>,  <33.954712, 29.701233, 39.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784145, 29.558325, 39.314262>,  <33.499866, 29.320145, 39.164410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784145, 29.558325, 39.314262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006004, 0.537639, -0.843154,
		-0.703473, 0.596977, 0.385673,
		0.710697, 0.595452, 0.374630,
		33.997353, 29.736959, 39.426651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312546, 30.036789, 38.971256>,  <33.499866, 29.320145, 39.164410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312546, 30.036789, 38.971256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697952, 30.084854, 39.066914>,  <33.929195, 30.113693, 39.124310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697952, 30.084854, 39.066914>,  <33.312546, 30.036789, 38.971256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697952, 30.084854, 39.066914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111866, 0.630942, -0.767723,
		-0.243139, 0.766468, 0.594483,
		0.963519, 0.120161, 0.239148,
		33.987007, 30.120903, 39.138657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461079, 30.772074, 38.966522>,  <33.312546, 30.036789, 38.971256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461079, 30.772074, 38.966522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795322, 30.558598, 38.914474>,  <33.995869, 30.430511, 38.883247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795322, 30.558598, 38.914474>,  <33.461079, 30.772074, 38.966522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795322, 30.558598, 38.914474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271101, 0.606668, -0.747301,
		0.477766, 0.589176, 0.651622,
		0.835610, -0.533690, -0.130119,
		34.046005, 30.398491, 38.875439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010628, 31.282690, 38.862419>,  <33.461079, 30.772074, 38.966522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010628, 31.282690, 38.862419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183773, 30.944981, 38.736038>,  <34.287663, 30.742355, 38.660210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183773, 30.944981, 38.736038>,  <34.010628, 31.282690, 38.862419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183773, 30.944981, 38.736038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382710, 0.489449, -0.783564,
		0.816185, 0.218262, 0.534979,
		0.432868, -0.844275, -0.315950,
		34.313633, 30.691698, 38.641254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747585, 31.499481, 38.720943>,  <34.010628, 31.282690, 38.862419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747585, 31.499481, 38.720943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678001, 31.162682, 38.516678>,  <34.636253, 30.960602, 38.394119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678001, 31.162682, 38.516678>,  <34.747585, 31.499481, 38.720943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678001, 31.162682, 38.516678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313190, 0.444340, -0.839329,
		0.933623, -0.305942, 0.186410,
		-0.173956, -0.841999, -0.510664,
		34.625813, 30.910082, 38.363480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398952, 31.189869, 38.368137>,  <34.747585, 31.499481, 38.720943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398952, 31.189869, 38.368137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071587, 31.074804, 38.169159>,  <34.875168, 31.005766, 38.049774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071587, 31.074804, 38.169159>,  <35.398952, 31.189869, 38.368137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071587, 31.074804, 38.169159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274029, 0.565526, -0.777874,
		0.505080, -0.772937, -0.384008,
		-0.818415, -0.287659, -0.497443,
		34.826061, 30.988506, 38.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621803, 31.358309, 37.695244>,  <35.398952, 31.189869, 38.368137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621803, 31.358309, 37.695244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236809, 31.259102, 37.651222>,  <35.005814, 31.199577, 37.624809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236809, 31.259102, 37.651222>,  <35.621803, 31.358309, 37.695244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236809, 31.259102, 37.651222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050409, 0.561965, -0.825624,
		0.266613, -0.789102, -0.553385,
		-0.962485, -0.248018, -0.110049,
		34.948063, 31.184696, 37.618206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634869, 31.058908, 37.039417>,  <35.621803, 31.358309, 37.695244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634869, 31.058908, 37.039417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249252, 31.145912, 37.100498>,  <35.017883, 31.198114, 37.137146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249252, 31.145912, 37.100498>,  <35.634869, 31.058908, 37.039417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249252, 31.145912, 37.100498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020964, 0.510550, -0.859592,
		-0.264930, -0.831882, -0.487631,
		-0.964040, 0.217509, 0.152700,
		34.960041, 31.211164, 37.146309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371666, 31.030537, 36.392559>,  <35.634869, 31.058908, 37.039417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371666, 31.030537, 36.392559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107250, 31.233820, 36.613377>,  <34.948601, 31.355789, 36.745869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107250, 31.233820, 36.613377>,  <35.371666, 31.030537, 36.392559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107250, 31.233820, 36.613377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213841, 0.577611, -0.787805,
		-0.719236, -0.638819, -0.273147,
		-0.661038, 0.508208, 0.552045,
		34.908939, 31.386282, 36.778992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799900, 31.138676, 35.991344>,  <35.371666, 31.030537, 36.392559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799900, 31.138676, 35.991344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823601, 31.434673, 36.259346>,  <34.837822, 31.612272, 36.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823601, 31.434673, 36.259346>,  <34.799900, 31.138676, 35.991344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823601, 31.434673, 36.259346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226022, 0.663695, -0.713038,
		-0.972318, -0.109182, 0.206583,
		0.059257, 0.739992, 0.670000,
		34.841377, 31.656672, 36.460346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167301, 31.696087, 35.850960>,  <34.799900, 31.138676, 35.991344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167301, 31.696087, 35.850960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435692, 31.874208, 36.088108>,  <34.596725, 31.981081, 36.230396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435692, 31.874208, 36.088108>,  <34.167301, 31.696087, 35.850960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435692, 31.874208, 36.088108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274263, 0.891920, -0.359526,
		-0.688891, 0.078631, 0.720587,
		0.670976, 0.445305, 0.592870,
		34.636986, 32.007801, 36.265968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833939, 32.190147, 36.105541>,  <34.167301, 31.696087, 35.850960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833939, 32.190147, 36.105541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208160, 32.322945, 36.153736>,  <34.432693, 32.402622, 36.182652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208160, 32.322945, 36.153736>,  <33.833939, 32.190147, 36.105541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208160, 32.322945, 36.153736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225933, 0.824794, -0.518332,
		-0.271455, 0.457708, 0.846650,
		0.935557, 0.331990, 0.120483,
		34.488827, 32.422543, 36.189880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818451, 32.935875, 36.280735>,  <33.833939, 32.190147, 36.105541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818451, 32.935875, 36.280735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193584, 32.866627, 36.160404>,  <34.418663, 32.825077, 36.088207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193584, 32.866627, 36.160404>,  <33.818451, 32.935875, 36.280735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193584, 32.866627, 36.160404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084320, 0.727110, -0.681323,
		0.336685, 0.664333, 0.667311,
		0.937834, -0.173123, -0.300824,
		34.474934, 32.814690, 36.070156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170197, 33.585114, 36.304089>,  <33.818451, 32.935875, 36.280735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170197, 33.585114, 36.304089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405895, 33.378288, 36.055756>,  <34.547314, 33.254192, 35.906757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405895, 33.378288, 36.055756>,  <34.170197, 33.585114, 36.304089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405895, 33.378288, 36.055756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208944, 0.839785, -0.501102,
		0.780466, 0.165556, 0.602880,
		0.589250, -0.517061, -0.620832,
		34.582668, 33.223171, 35.869507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621628, 34.052242, 36.153057>,  <34.170197, 33.585114, 36.304089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621628, 34.052242, 36.153057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706699, 33.781864, 35.870819>,  <34.757740, 33.619637, 35.701477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706699, 33.781864, 35.870819>,  <34.621628, 34.052242, 36.153057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706699, 33.781864, 35.870819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239097, 0.736167, -0.633159,
		0.947419, -0.034050, 0.318180,
		0.212674, -0.675943, -0.705600,
		34.770500, 33.579082, 35.659138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332275, 34.227455, 35.852505>,  <34.621628, 34.052242, 36.153057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332275, 34.227455, 35.852505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132515, 34.034401, 35.564713>,  <35.012657, 33.918568, 35.392036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132515, 34.034401, 35.564713>,  <35.332275, 34.227455, 35.852505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132515, 34.034401, 35.564713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220856, 0.732098, -0.644403,
		0.837745, -0.480720, -0.259020,
		-0.499405, -0.482640, -0.719481,
		34.982693, 33.889610, 35.348869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807369, 34.246155, 35.312160>,  <35.332275, 34.227455, 35.852505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807369, 34.246155, 35.312160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441555, 34.172375, 35.168159>,  <35.222065, 34.128109, 35.081760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441555, 34.172375, 35.168159>,  <35.807369, 34.246155, 35.312160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441555, 34.172375, 35.168159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181160, 0.608976, -0.772224,
		0.361664, -0.771446, -0.523518,
		-0.914538, -0.184445, -0.359999,
		35.167194, 34.117043, 35.060158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944267, 33.997032, 34.660103>,  <35.807369, 34.246155, 35.312160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944267, 33.997032, 34.660103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572762, 34.145100, 34.652420>,  <35.349857, 34.233940, 34.647812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572762, 34.145100, 34.652420>,  <35.944267, 33.997032, 34.660103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572762, 34.145100, 34.652420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239994, 0.561047, -0.792230,
		-0.282489, -0.740404, -0.609920,
		-0.928764, 0.370173, -0.019203,
		35.294132, 34.256153, 34.646660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238483, 33.312782, 34.738274>,  <35.944267, 33.997032, 34.660103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238483, 33.312782, 34.738274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625923, 33.282513, 34.643547>,  <36.858387, 33.264351, 34.586712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625923, 33.282513, 34.643547>,  <36.238483, 33.312782, 34.738274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625923, 33.282513, 34.643547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129853, -0.658300, 0.741471,
		-0.212007, -0.748942, -0.627804,
		0.968603, -0.075674, -0.236817,
		36.916504, 33.259811, 34.572502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474850, 32.601913, 34.588661>,  <36.238483, 33.312782, 34.738274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474850, 32.601913, 34.588661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776859, 32.820953, 34.732922>,  <36.958065, 32.952377, 34.819477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776859, 32.820953, 34.732922>,  <36.474850, 32.601913, 34.588661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776859, 32.820953, 34.732922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098069, -0.638156, 0.763635,
		0.648317, -0.541197, -0.535528,
		0.755028, 0.547596, 0.360652,
		37.003368, 32.985233, 34.841118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999493, 32.110237, 34.795403>,  <36.474850, 32.601913, 34.588661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999493, 32.110237, 34.795403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110916, 32.436848, 34.997669>,  <37.177769, 32.632812, 35.119030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110916, 32.436848, 34.997669>,  <36.999493, 32.110237, 34.795403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110916, 32.436848, 34.997669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278895, -0.572588, 0.770948,
		0.919034, -0.073725, -0.387222,
		0.278557, 0.816522, 0.505666,
		37.194485, 32.681805, 35.149368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566925, 31.900133, 35.074318>,  <36.999493, 32.110237, 34.795403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566925, 31.900133, 35.074318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461845, 32.193378, 35.325249>,  <37.398796, 32.369324, 35.475807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461845, 32.193378, 35.325249>,  <37.566925, 31.900133, 35.074318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461845, 32.193378, 35.325249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272288, -0.567408, 0.777115,
		0.925661, 0.374961, -0.050559,
		-0.262700, 0.733111, 0.627325,
		37.383034, 32.413311, 35.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119251, 31.886589, 35.565067>,  <37.566925, 31.900133, 35.074318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119251, 31.886589, 35.565067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823795, 32.098942, 35.731236>,  <37.646523, 32.226353, 35.830936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823795, 32.098942, 35.731236>,  <38.119251, 31.886589, 35.565067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823795, 32.098942, 35.731236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295512, -0.298881, 0.907382,
		0.605876, 0.792990, 0.063883,
		-0.738639, 0.530883, 0.415423,
		37.602203, 32.258205, 35.855862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401257, 32.127708, 36.083969>,  <38.119251, 31.886589, 35.565067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401257, 32.127708, 36.083969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024189, 32.187496, 36.203323>,  <37.797947, 32.223370, 36.274937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024189, 32.187496, 36.203323>,  <38.401257, 32.127708, 36.083969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024189, 32.187496, 36.203323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250221, -0.275070, 0.928292,
		0.220824, 0.949735, 0.221901,
		-0.942670, 0.149465, 0.298386,
		37.741386, 32.232334, 36.292839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325245, 32.610157, 36.735661>,  <38.401257, 32.127708, 36.083969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325245, 32.610157, 36.735661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016827, 32.355488, 36.730942>,  <37.831776, 32.202686, 36.728111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016827, 32.355488, 36.730942>,  <38.325245, 32.610157, 36.735661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016827, 32.355488, 36.730942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216269, -0.279254, 0.935545,
		-0.598927, 0.718798, 0.353010,
		-0.771047, -0.636669, -0.011799,
		37.785511, 32.164486, 36.727402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028809, 32.616474, 37.474411>,  <38.325245, 32.610157, 36.735661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028809, 32.616474, 37.474411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865757, 32.289352, 37.311916>,  <37.767925, 32.093079, 37.214420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865757, 32.289352, 37.311916>,  <38.028809, 32.616474, 37.474411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865757, 32.289352, 37.311916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079875, -0.475100, 0.876299,
		-0.909647, 0.324758, 0.258988,
		-0.407631, -0.817809, -0.406233,
		37.743469, 32.044010, 37.190048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480915, 32.331234, 37.859463>,  <38.028809, 32.616474, 37.474411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480915, 32.331234, 37.859463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574440, 32.001587, 37.653099>,  <37.630554, 31.803799, 37.529282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574440, 32.001587, 37.653099>,  <37.480915, 32.331234, 37.859463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574440, 32.001587, 37.653099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002632, -0.530075, 0.847947,
		-0.972277, -0.199622, -0.121771,
		0.233816, -0.824119, -0.515905,
		37.644585, 31.754351, 37.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348835, 31.926001, 38.430744>,  <37.480915, 32.331234, 37.859463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348835, 31.926001, 38.430744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499374, 31.698648, 38.138084>,  <37.589699, 31.562237, 37.962490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499374, 31.698648, 38.138084>,  <37.348835, 31.926001, 38.430744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499374, 31.698648, 38.138084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058744, -0.773480, 0.631093,
		-0.924616, -0.280489, -0.257706,
		0.376345, -0.568380, -0.731648,
		37.612278, 31.528135, 37.918591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880867, 31.275305, 38.436733>,  <37.348835, 31.926001, 38.430744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880867, 31.275305, 38.436733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227779, 31.189299, 38.257137>,  <37.435928, 31.137695, 38.149380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227779, 31.189299, 38.257137>,  <36.880867, 31.275305, 38.436733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227779, 31.189299, 38.257137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039996, -0.868903, 0.493364,
		-0.496206, -0.445844, -0.744985,
		0.867283, -0.215014, -0.448987,
		37.487965, 31.124794, 38.122440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843510, 30.633162, 38.118065>,  <36.880867, 31.275305, 38.436733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843510, 30.633162, 38.118065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235611, 30.699543, 38.161064>,  <37.470871, 30.739372, 38.186863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235611, 30.699543, 38.161064>,  <36.843510, 30.633162, 38.118065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235611, 30.699543, 38.161064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103084, -0.892857, 0.438384,
		0.168728, -0.418648, -0.892336,
		0.980257, 0.165954, 0.107494,
		37.529690, 30.749329, 38.193314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212231, 30.016991, 38.026131>,  <36.843510, 30.633162, 38.118065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212231, 30.016991, 38.026131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503448, 30.237463, 38.189175>,  <37.678181, 30.369747, 38.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503448, 30.237463, 38.189175>,  <37.212231, 30.016991, 38.026131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503448, 30.237463, 38.189175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343565, -0.807901, 0.478810,
		0.593220, -0.208555, -0.777557,
		0.728048, 0.551181, 0.407611,
		37.721863, 30.402817, 38.311459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739185, 29.591154, 38.015327>,  <37.212231, 30.016991, 38.026131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739185, 29.591154, 38.015327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841175, 29.857874, 38.295433>,  <37.902370, 30.017906, 38.463497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841175, 29.857874, 38.295433>,  <37.739185, 29.591154, 38.015327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841175, 29.857874, 38.295433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117986, -0.740241, 0.661908,
		0.959722, -0.086150, -0.267417,
		0.254976, 0.666799, 0.700262,
		37.917667, 30.057913, 38.505512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221527, 29.295282, 38.501354>,  <37.739185, 29.591154, 38.015327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221527, 29.295282, 38.501354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031925, 29.574469, 38.716076>,  <37.918163, 29.741982, 38.844910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031925, 29.574469, 38.716076>,  <38.221527, 29.295282, 38.501354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031925, 29.574469, 38.716076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147286, -0.663904, 0.733170,
		0.868114, 0.268466, 0.417497,
		-0.474009, 0.697967, 0.536803,
		37.889721, 29.783859, 38.877117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540268, 29.328096, 39.199787>,  <38.221527, 29.295282, 38.501354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540268, 29.328096, 39.199787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163048, 29.454746, 39.240582>,  <37.936714, 29.530737, 39.265057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163048, 29.454746, 39.240582>,  <38.540268, 29.328096, 39.199787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163048, 29.454746, 39.240582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138424, -0.652322, 0.745195,
		0.302475, 0.688640, 0.659002,
		-0.943052, 0.316625, 0.101987,
		37.880131, 29.549734, 39.271179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434628, 29.214806, 39.879318>,  <38.540268, 29.328096, 39.199787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434628, 29.214806, 39.879318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069298, 29.232407, 39.717377>,  <37.850101, 29.242968, 39.620213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069298, 29.232407, 39.717377>,  <38.434628, 29.214806, 39.879318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069298, 29.232407, 39.717377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295135, -0.756525, 0.583580,
		-0.280604, 0.652483, 0.703937,
		-0.913322, 0.044002, -0.404855,
		37.795300, 29.245607, 39.595921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987293, 29.493431, 40.417358>,  <38.434628, 29.214806, 39.879318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987293, 29.493431, 40.417358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760620, 29.289778, 40.158234>,  <37.624619, 29.167585, 40.002758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760620, 29.289778, 40.158234>,  <37.987293, 29.493431, 40.417358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760620, 29.289778, 40.158234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342903, -0.569178, 0.747298,
		-0.749193, 0.645614, 0.147957,
		-0.566680, -0.509136, -0.647807,
		37.590614, 29.137037, 39.963890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358845, 29.499338, 40.745789>,  <37.987293, 29.493431, 40.417358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358845, 29.499338, 40.745789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350410, 29.211199, 40.468472>,  <37.345352, 29.038315, 40.302082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350410, 29.211199, 40.468472>,  <37.358845, 29.499338, 40.745789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350410, 29.211199, 40.468472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418472, -0.623419, 0.660478,
		-0.907985, 0.304047, -0.288303,
		-0.021083, -0.720351, -0.693290,
		37.344086, 28.995094, 40.260483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746071, 29.289761, 40.643166>,  <37.358845, 29.499338, 40.745789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746071, 29.289761, 40.643166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894104, 28.955288, 40.481258>,  <36.982925, 28.754604, 40.384113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894104, 28.955288, 40.481258>,  <36.746071, 29.289761, 40.643166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894104, 28.955288, 40.481258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414481, -0.538557, 0.733595,
		-0.831410, -0.103723, -0.545893,
		0.370085, -0.836180, -0.404770,
		37.005131, 28.704433, 40.359829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212578, 28.799711, 40.666431>,  <36.746071, 29.289761, 40.643166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212578, 28.799711, 40.666431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523312, 28.559570, 40.590420>,  <36.709751, 28.415485, 40.544811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523312, 28.559570, 40.590420>,  <36.212578, 28.799711, 40.666431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523312, 28.559570, 40.590420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343704, -0.657093, 0.670893,
		-0.527639, -0.455856, -0.716793,
		0.776830, -0.600353, -0.190028,
		36.756359, 28.379465, 40.533413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842312, 28.103294, 40.631500>,  <36.212578, 28.799711, 40.666431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842312, 28.103294, 40.631500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234295, 28.075806, 40.706284>,  <36.469486, 28.059313, 40.751152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234295, 28.075806, 40.706284>,  <35.842312, 28.103294, 40.631500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234295, 28.075806, 40.706284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193681, -0.547879, 0.813829,
		0.046502, -0.833731, -0.550210,
		0.979962, -0.068720, 0.186956,
		36.528282, 28.055189, 40.762371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953800, 27.418850, 40.982712>,  <35.842312, 28.103294, 40.631500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953800, 27.418850, 40.982712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244507, 27.671314, 41.091114>,  <36.418930, 27.822794, 41.156155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244507, 27.671314, 41.091114>,  <35.953800, 27.418850, 40.982712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244507, 27.671314, 41.091114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159807, -0.228353, 0.960373,
		0.668037, -0.741276, -0.065095,
		0.726766, 0.631162, 0.271009,
		36.462536, 27.860662, 41.172417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435276, 27.049587, 41.401783>,  <35.953800, 27.418850, 40.982712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435276, 27.049587, 41.401783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479893, 27.433752, 41.503891>,  <36.506664, 27.664251, 41.565155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479893, 27.433752, 41.503891>,  <36.435276, 27.049587, 41.401783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479893, 27.433752, 41.503891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227174, -0.274716, 0.934304,
		0.967445, -0.046224, -0.248824,
		0.111543, 0.960414, 0.255271,
		36.513355, 27.721876, 41.580471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071499, 27.045359, 41.789082>,  <36.435276, 27.049587, 41.401783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071499, 27.045359, 41.789082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835800, 27.351583, 41.892387>,  <36.694382, 27.535318, 41.954369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835800, 27.351583, 41.892387>,  <37.071499, 27.045359, 41.789082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835800, 27.351583, 41.892387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202349, -0.169631, 0.964510,
		0.782202, 0.620596, -0.054956,
		-0.589249, 0.765562, 0.258262,
		36.659027, 27.581253, 41.969868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296993, 27.221539, 42.414444>,  <37.071499, 27.045359, 41.789082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296993, 27.221539, 42.414444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983376, 27.469307, 42.398499>,  <36.795204, 27.617968, 42.388931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983376, 27.469307, 42.398499>,  <37.296993, 27.221539, 42.414444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983376, 27.469307, 42.398499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046945, 0.004870, 0.998886,
		0.618926, 0.785043, 0.025261,
		-0.784045, 0.619422, -0.039868,
		36.748161, 27.655134, 42.386539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371235, 27.818661, 42.860275>,  <37.296993, 27.221539, 42.414444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371235, 27.818661, 42.860275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983860, 27.735626, 42.805096>,  <36.751434, 27.685806, 42.771988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983860, 27.735626, 42.805096>,  <37.371235, 27.818661, 42.860275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983860, 27.735626, 42.805096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126105, -0.069306, 0.989593,
		-0.214984, 0.975759, 0.040942,
		-0.968442, -0.207584, -0.137948,
		36.693329, 27.673351, 42.763710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072582, 28.224726, 43.402729>,  <37.371235, 27.818661, 42.860275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072582, 28.224726, 43.402729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792370, 27.965429, 43.283375>,  <36.624241, 27.809851, 43.211761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792370, 27.965429, 43.283375>,  <37.072582, 28.224726, 43.402729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792370, 27.965429, 43.283375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201299, -0.221646, 0.954123,
		-0.684640, 0.728460, 0.024780,
		-0.700533, -0.648243, -0.298387,
		36.582211, 27.770956, 43.193859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664772, 28.314682, 43.926727>,  <37.072582, 28.224726, 43.402729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664772, 28.314682, 43.926727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544231, 27.963043, 43.779011>,  <36.471909, 27.752060, 43.690380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544231, 27.963043, 43.779011>,  <36.664772, 28.314682, 43.926727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544231, 27.963043, 43.779011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239484, -0.305103, 0.921715,
		-0.922949, 0.366199, -0.118587,
		-0.301350, -0.879097, -0.369294,
		36.453827, 27.699314, 43.668224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048058, 28.180601, 44.354992>,  <36.664772, 28.314682, 43.926727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048058, 28.180601, 44.354992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164631, 27.834690, 44.191418>,  <36.234573, 27.627144, 44.093273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164631, 27.834690, 44.191418>,  <36.048058, 28.180601, 44.354992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164631, 27.834690, 44.191418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136388, -0.460689, 0.877020,
		-0.946819, -0.199816, -0.252204,
		0.291431, -0.864777, -0.408936,
		36.252060, 27.575256, 44.068737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446724, 27.675945, 44.451298>,  <36.048058, 28.180601, 44.354992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446724, 27.675945, 44.451298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811012, 27.514240, 44.417461>,  <36.029587, 27.417217, 44.397160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811012, 27.514240, 44.417461>,  <35.446724, 27.675945, 44.451298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811012, 27.514240, 44.417461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105327, -0.425368, 0.898871,
		-0.399358, -0.809714, -0.429972,
		0.910724, -0.404259, -0.084589,
		36.084229, 27.392962, 44.392086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368404, 27.106600, 44.828712>,  <35.446724, 27.675945, 44.451298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368404, 27.106600, 44.828712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767288, 27.133514, 44.815746>,  <36.006618, 27.149662, 44.807964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767288, 27.133514, 44.815746>,  <35.368404, 27.106600, 44.828712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767288, 27.133514, 44.815746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063395, -0.533028, 0.843719,
		0.039490, -0.843418, -0.535805,
		0.997207, 0.067286, -0.032419,
		36.066452, 27.153700, 44.806019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802959, 26.391090, 44.888771>,  <35.368404, 27.106600, 44.828712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802959, 26.391090, 44.888771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040722, 26.676750, 45.036648>,  <36.183380, 26.848146, 45.125374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040722, 26.676750, 45.036648>,  <35.802959, 26.391090, 44.888771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040722, 26.676750, 45.036648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195226, -0.574116, 0.795159,
		0.780107, -0.400476, -0.480679,
		0.594408, 0.714150, 0.369689,
		36.219044, 26.890995, 45.147552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392029, 26.091597, 45.172855>,  <35.802959, 26.391090, 44.888771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392029, 26.091597, 45.172855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368088, 26.451006, 45.346786>,  <36.353725, 26.666651, 45.451145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368088, 26.451006, 45.346786>,  <36.392029, 26.091597, 45.172855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368088, 26.451006, 45.346786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103654, -0.427661, 0.897976,
		0.992811, 0.098816, -0.067540,
		-0.059851, 0.898522, 0.434829,
		36.350132, 26.720562, 45.477234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969818, 26.118866, 45.661522>,  <36.392029, 26.091597, 45.172855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969818, 26.118866, 45.661522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736118, 26.419149, 45.784870>,  <36.595898, 26.599319, 45.858879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736118, 26.419149, 45.784870>,  <36.969818, 26.118866, 45.661522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736118, 26.419149, 45.784870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142123, -0.279453, 0.949583,
		0.799035, 0.598616, 0.056576,
		-0.584246, 0.750710, 0.308370,
		36.560844, 26.644361, 45.877380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329136, 26.199532, 46.216122>,  <36.969818, 26.118866, 45.661522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329136, 26.199532, 46.216122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008495, 26.433664, 46.264820>,  <36.816113, 26.574144, 46.294041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008495, 26.433664, 46.264820>,  <37.329136, 26.199532, 46.216122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008495, 26.433664, 46.264820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196177, 0.065159, 0.978401,
		0.564756, 0.808171, -0.167061,
		-0.801601, 0.585332, 0.121746,
		36.768017, 26.609264, 46.301342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545746, 26.585058, 46.788063>,  <37.329136, 26.199532, 46.216122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545746, 26.585058, 46.788063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146023, 26.599890, 46.786407>,  <36.906189, 26.608789, 46.785416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146023, 26.599890, 46.786407>,  <37.545746, 26.585058, 46.788063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146023, 26.599890, 46.786407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004010, 0.003497, 0.999986,
		0.037095, 0.999306, -0.003346,
		-0.999304, 0.037081, -0.004137,
		36.846233, 26.611013, 46.785168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172256, 27.223310, 47.242767>,  <37.545746, 26.585058, 46.788063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172256, 27.223310, 47.242767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926495, 26.909977, 47.205032>,  <36.779037, 26.721977, 47.182392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926495, 26.909977, 47.205032>,  <37.172256, 27.223310, 47.242767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926495, 26.909977, 47.205032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154527, 0.002219, 0.987986,
		-0.773714, 0.621597, -0.122410,
		-0.614401, -0.783334, -0.094337,
		36.742176, 26.674976, 47.176731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977386, 27.229935, 47.374969>,  <37.172256, 27.223310, 47.242767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977386, 27.229935, 47.374969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279751, 27.334978, 47.614849>,  <38.461170, 27.398005, 47.758778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279751, 27.334978, 47.614849>,  <37.977386, 27.229935, 47.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279751, 27.334978, 47.614849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099368, 0.859390, -0.501573,
		-0.647094, 0.438733, 0.623524,
		0.755907, 0.262607, 0.599702,
		38.506523, 27.413761, 47.794758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838154, 27.879623, 47.714798>,  <37.977386, 27.229935, 47.374969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838154, 27.879623, 47.714798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232693, 27.824451, 47.678818>,  <38.469418, 27.791348, 47.657230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232693, 27.824451, 47.678818>,  <37.838154, 27.879623, 47.714798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232693, 27.824451, 47.678818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079594, 0.877540, -0.472852,
		0.144154, 0.459237, 0.876539,
		0.986349, -0.137931, -0.089948,
		38.528599, 27.783072, 47.651833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029037, 28.532907, 47.815540>,  <37.838154, 27.879623, 47.714798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029037, 28.532907, 47.815540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375568, 28.375126, 47.692974>,  <38.583485, 28.280457, 47.619434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375568, 28.375126, 47.692974>,  <38.029037, 28.532907, 47.815540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375568, 28.375126, 47.692974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220895, 0.852777, -0.473263,
		0.447982, 0.342314, 0.825914,
		0.866324, -0.394453, -0.306413,
		38.635468, 28.256790, 47.601051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538776, 29.075413, 47.813267>,  <38.029037, 28.532907, 47.815540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538776, 29.075413, 47.813267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736141, 28.802284, 47.597752>,  <38.854561, 28.638407, 47.468441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736141, 28.802284, 47.597752>,  <38.538776, 29.075413, 47.813267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736141, 28.802284, 47.597752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337002, 0.721141, -0.605298,
		0.801856, 0.117088, 0.585933,
		0.493413, -0.682822, -0.538792,
		38.884167, 28.597437, 47.436115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250637, 29.294983, 47.633938>,  <38.538776, 29.075413, 47.813267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250637, 29.294983, 47.633938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172688, 29.029146, 47.345398>,  <39.125919, 28.869644, 47.172276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172688, 29.029146, 47.345398>,  <39.250637, 29.294983, 47.633938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172688, 29.029146, 47.345398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200969, 0.692786, -0.692574,
		0.960018, -0.279934, -0.001444,
		-0.194875, -0.664594, -0.721345,
		39.114223, 28.829767, 47.128994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814121, 29.335783, 47.154121>,  <39.250637, 29.294983, 47.633938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814121, 29.335783, 47.154121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524757, 29.147537, 46.952053>,  <39.351139, 29.034590, 46.830811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524757, 29.147537, 46.952053>,  <39.814121, 29.335783, 47.154121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524757, 29.147537, 46.952053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200183, 0.557288, -0.805827,
		0.660759, -0.684072, -0.308940,
		-0.723412, -0.470612, -0.505173,
		39.307735, 29.006353, 46.800503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195389, 29.158388, 46.614498>,  <39.814121, 29.335783, 47.154121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195389, 29.158388, 46.614498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814831, 29.118116, 46.498081>,  <39.586494, 29.093952, 46.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814831, 29.118116, 46.498081>,  <40.195389, 29.158388, 46.614498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814831, 29.118116, 46.498081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196927, 0.527709, -0.826283,
		0.236778, -0.843437, -0.482234,
		-0.951397, -0.100681, -0.291045,
		39.529411, 29.087912, 46.410767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131866, 28.942781, 45.952812>,  <40.195389, 29.158388, 46.614498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131866, 28.942781, 45.952812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766155, 29.097061, 46.002335>,  <39.546726, 29.189629, 46.032047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766155, 29.097061, 46.002335>,  <40.131866, 28.942781, 45.952812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766155, 29.097061, 46.002335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038634, 0.387267, -0.921158,
		-0.403237, -0.837413, -0.368971,
		-0.914280, 0.385700, 0.123808,
		39.491871, 29.212770, 46.039478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803646, 28.858086, 45.330021>,  <40.131866, 28.942781, 45.952812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803646, 28.858086, 45.330021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569134, 29.130503, 45.505505>,  <39.428429, 29.293953, 45.610794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569134, 29.130503, 45.505505>,  <39.803646, 28.858086, 45.330021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569134, 29.130503, 45.505505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061568, 0.502515, -0.862373,
		-0.807768, -0.532599, -0.252682,
		-0.586276, 0.681041, 0.438707,
		39.393250, 29.334814, 45.637115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138592, 28.808393, 45.037891>,  <39.803646, 28.858086, 45.330021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138592, 28.808393, 45.037891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175404, 29.172255, 45.199913>,  <39.197491, 29.390572, 45.297127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175404, 29.172255, 45.199913>,  <39.138592, 28.808393, 45.037891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175404, 29.172255, 45.199913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031841, 0.403882, -0.914257,
		-0.995247, 0.097032, 0.008203,
		0.092025, 0.909651, 0.405052,
		39.203011, 29.445150, 45.321430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585663, 29.241590, 44.653744>,  <39.138592, 28.808393, 45.037891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585663, 29.241590, 44.653744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876228, 29.471745, 44.804081>,  <39.050568, 29.609837, 44.894283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876228, 29.471745, 44.804081>,  <38.585663, 29.241590, 44.653744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876228, 29.471745, 44.804081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007817, 0.539922, -0.841679,
		-0.687218, 0.614341, 0.387706,
		0.726409, 0.575386, 0.375846,
		39.094151, 29.644360, 44.916836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176922, 29.946682, 44.548378>,  <38.585663, 29.241590, 44.653744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176922, 29.946682, 44.548378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569729, 29.993061, 44.607983>,  <38.805412, 30.020887, 44.643745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569729, 29.993061, 44.607983>,  <38.176922, 29.946682, 44.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569729, 29.993061, 44.607983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056901, 0.570798, -0.819117,
		-0.180030, 0.812863, 0.553934,
		0.982014, 0.115946, 0.149013,
		38.864334, 30.027845, 44.652687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195019, 30.635040, 44.556145>,  <38.176922, 29.946682, 44.548378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195019, 30.635040, 44.556145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565804, 30.509169, 44.474449>,  <38.788277, 30.433645, 44.425430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565804, 30.509169, 44.474449>,  <38.195019, 30.635040, 44.556145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565804, 30.509169, 44.474449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029008, 0.482664, -0.875325,
		0.374027, 0.817320, 0.438284,
		0.926964, -0.314681, -0.204238,
		38.843891, 30.414764, 44.413177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286251, 31.038664, 44.080189>,  <38.195019, 30.635040, 44.556145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286251, 31.038664, 44.080189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600155, 30.793056, 44.046402>,  <38.788498, 30.645693, 44.026131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600155, 30.793056, 44.046402>,  <38.286251, 31.038664, 44.080189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600155, 30.793056, 44.046402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162573, 0.335425, -0.927933,
		0.598100, 0.714472, 0.363050,
		0.784759, -0.614019, -0.084464,
		38.835583, 30.608850, 44.021061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890781, 31.496511, 43.978176>,  <38.286251, 31.038664, 44.080189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890781, 31.496511, 43.978176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899315, 31.142067, 43.792980>,  <38.904434, 30.929401, 43.681862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899315, 31.142067, 43.792980>,  <38.890781, 31.496511, 43.978176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899315, 31.142067, 43.792980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137605, 0.461286, -0.876516,
		0.990257, -0.045006, 0.131776,
		0.021338, -0.886109, -0.462985,
		38.905716, 30.876234, 43.654083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452877, 31.519741, 43.450363>,  <38.890781, 31.496511, 43.978176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452877, 31.519741, 43.450363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237595, 31.198339, 43.348610>,  <39.108425, 31.005499, 43.287560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237595, 31.198339, 43.348610>,  <39.452877, 31.519741, 43.450363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237595, 31.198339, 43.348610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030799, 0.282873, -0.958663,
		0.842248, -0.523797, -0.127498,
		-0.538210, -0.803505, -0.254381,
		39.076130, 30.957289, 43.272297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767483, 31.338621, 43.002384>,  <39.452877, 31.519741, 43.450363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767483, 31.338621, 43.002384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414928, 31.161381, 42.936871>,  <39.203396, 31.055037, 42.897560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414928, 31.161381, 42.936871>,  <39.767483, 31.338621, 43.002384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414928, 31.161381, 42.936871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058641, 0.241406, -0.968651,
		0.468751, -0.863356, -0.186787,
		-0.881381, -0.443103, -0.163787,
		39.150513, 31.028450, 42.887733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835186, 30.899876, 42.521351>,  <39.767483, 31.338621, 43.002384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835186, 30.899876, 42.521351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439457, 30.956909, 42.509258>,  <39.202019, 30.991129, 42.502003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439457, 30.956909, 42.509258>,  <39.835186, 30.899876, 42.521351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439457, 30.956909, 42.509258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065677, 0.250936, -0.965773,
		-0.130116, -0.957445, -0.257621,
		-0.989321, 0.142582, -0.030231,
		39.142662, 30.999683, 42.500191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557453, 30.493925, 41.993973>,  <39.835186, 30.899876, 42.521351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557453, 30.493925, 41.993973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286774, 30.784027, 42.044712>,  <39.124367, 30.958088, 42.075157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286774, 30.784027, 42.044712>,  <39.557453, 30.493925, 41.993973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286774, 30.784027, 42.044712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081021, 0.097891, -0.991894,
		-0.731791, -0.681488, -0.007481,
		-0.676696, 0.725253, 0.126851,
		39.083763, 31.001602, 42.082767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958832, 30.390371, 41.544636>,  <39.557453, 30.493925, 41.993973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958832, 30.390371, 41.544636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947548, 30.780272, 41.633236>,  <38.940777, 31.014212, 41.686398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947548, 30.780272, 41.633236>,  <38.958832, 30.390371, 41.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947548, 30.780272, 41.633236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295727, 0.203532, -0.933338,
		-0.954856, -0.091832, 0.282519,
		-0.028209, 0.974752, 0.221501,
		38.939087, 31.072697, 41.699688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396057, 30.694490, 41.143387>,  <38.958832, 30.390371, 41.544636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396057, 30.694490, 41.143387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625481, 31.011423, 41.226566>,  <38.763134, 31.201582, 41.276474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625481, 31.011423, 41.226566>,  <38.396057, 30.694490, 41.143387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625481, 31.011423, 41.226566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093653, 0.188765, -0.977546,
		-0.813794, 0.580154, 0.034064,
		0.573558, 0.792331, 0.207949,
		38.797546, 31.249123, 41.288952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246624, 31.169865, 40.650558>,  <38.396057, 30.694490, 41.143387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246624, 31.169865, 40.650558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580105, 31.335114, 40.797127>,  <38.780193, 31.434263, 40.885067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580105, 31.335114, 40.797127>,  <38.246624, 31.169865, 40.650558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580105, 31.335114, 40.797127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202565, 0.388507, -0.898905,
		-0.513717, 0.823645, 0.240215,
		0.833704, 0.413124, 0.366424,
		38.830215, 31.459051, 40.907055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262211, 31.946882, 40.538307>,  <38.246624, 31.169865, 40.650558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262211, 31.946882, 40.538307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635876, 31.811512, 40.583580>,  <38.860073, 31.730289, 40.610744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635876, 31.811512, 40.583580>,  <38.262211, 31.946882, 40.538307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635876, 31.811512, 40.583580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232117, 0.335345, -0.913053,
		0.271045, 0.879211, 0.391821,
		0.934161, -0.338426, 0.113186,
		38.916122, 31.709984, 40.617535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716354, 32.526966, 40.274918>,  <38.262211, 31.946882, 40.538307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716354, 32.526966, 40.274918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958511, 32.208611, 40.271988>,  <39.103806, 32.017597, 40.270229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958511, 32.208611, 40.271988>,  <38.716354, 32.526966, 40.274918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958511, 32.208611, 40.271988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396054, 0.309212, -0.864597,
		0.690391, 0.520521, 0.502412,
		0.605393, -0.795893, -0.007322,
		39.140129, 31.969843, 40.269791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356400, 32.777420, 40.091125>,  <38.716354, 32.526966, 40.274918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356400, 32.777420, 40.091125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386303, 32.389431, 39.998550>,  <39.404243, 32.156639, 39.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386303, 32.389431, 39.998550>,  <39.356400, 32.777420, 40.091125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386303, 32.389431, 39.998550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570885, 0.231922, -0.787593,
		0.817619, -0.073247, 0.571081,
		0.074758, -0.969973, -0.231440,
		39.408730, 32.098438, 39.929119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973034, 32.764771, 39.836273>,  <39.356400, 32.777420, 40.091125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973034, 32.764771, 39.836273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850868, 32.415634, 39.684029>,  <39.777569, 32.206150, 39.592682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850868, 32.415634, 39.684029>,  <39.973034, 32.764771, 39.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850868, 32.415634, 39.684029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584848, 0.143487, -0.798351,
		0.751450, -0.466425, 0.466659,
		-0.305411, -0.872846, -0.380611,
		39.759243, 32.153782, 39.569847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605778, 32.337105, 39.578083>,  <39.973034, 32.764771, 39.836273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605778, 32.337105, 39.578083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302563, 32.178150, 39.371212>,  <40.120636, 32.082779, 39.247089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302563, 32.178150, 39.371212>,  <40.605778, 32.337105, 39.578083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302563, 32.178150, 39.371212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587338, -0.071143, -0.806209,
		0.283579, -0.914891, 0.287327,
		-0.758035, -0.397382, -0.517175,
		40.075153, 32.058937, 39.216061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891247, 31.730364, 39.158604>,  <40.605778, 32.337105, 39.578083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891247, 31.730364, 39.158604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570381, 31.864447, 38.960949>,  <40.377861, 31.944897, 38.842358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570381, 31.864447, 38.960949>,  <40.891247, 31.730364, 39.158604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570381, 31.864447, 38.960949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563177, 0.149753, -0.812654,
		-0.198407, -0.930168, -0.308906,
		-0.802164, 0.335205, -0.494137,
		40.329731, 31.965008, 38.812710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892487, 31.431320, 38.529114>,  <40.891247, 31.730364, 39.158604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892487, 31.431320, 38.529114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654823, 31.743380, 38.450783>,  <40.512226, 31.930614, 38.403786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654823, 31.743380, 38.450783>,  <40.892487, 31.431320, 38.529114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654823, 31.743380, 38.450783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493916, 0.161720, -0.854338,
		-0.634840, -0.604333, -0.481414,
		-0.594159, 0.780146, -0.195824,
		40.476574, 31.977423, 38.392036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789661, 31.361588, 37.789959>,  <40.892487, 31.431320, 38.529114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789661, 31.361588, 37.789959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711246, 31.746954, 37.863060>,  <40.664196, 31.978174, 37.906921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711246, 31.746954, 37.863060>,  <40.789661, 31.361588, 37.789959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711246, 31.746954, 37.863060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325003, 0.239668, -0.914840,
		-0.925171, -0.119950, -0.360097,
		-0.196039, 0.963417, 0.182750,
		40.652435, 32.035980, 37.917885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631657, 31.661755, 37.113045>,  <40.789661, 31.361588, 37.789959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631657, 31.661755, 37.113045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679672, 31.978701, 37.352291>,  <40.708481, 32.168869, 37.495838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679672, 31.978701, 37.352291>,  <40.631657, 31.661755, 37.113045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679672, 31.978701, 37.352291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253226, 0.558107, -0.790185,
		-0.959930, 0.246315, -0.133650,
		0.120043, 0.792367, 0.598118,
		40.715687, 32.216412, 37.531727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233868, 32.155540, 36.888428>,  <40.631657, 31.661755, 37.113045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233868, 32.155540, 36.888428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552830, 32.314579, 37.070007>,  <40.744205, 32.410004, 37.178955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552830, 32.314579, 37.070007>,  <40.233868, 32.155540, 36.888428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552830, 32.314579, 37.070007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217006, 0.512996, -0.830508,
		-0.563080, 0.760757, 0.322783,
		0.797401, 0.397597, 0.453947,
		40.792049, 32.433857, 37.206192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225323, 32.894226, 36.691483>,  <40.233868, 32.155540, 36.888428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225323, 32.894226, 36.691483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605946, 32.854588, 36.807907>,  <40.834320, 32.830803, 36.877762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605946, 32.854588, 36.807907>,  <40.225323, 32.894226, 36.691483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605946, 32.854588, 36.807907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300684, 0.497705, -0.813559,
		-0.064243, 0.861667, 0.503392,
		0.951558, -0.099096, 0.291064,
		40.891415, 32.824860, 36.895226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554356, 33.513596, 36.586567>,  <40.225323, 32.894226, 36.691483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554356, 33.513596, 36.586567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892155, 33.308933, 36.649857>,  <41.094833, 33.186134, 36.687828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892155, 33.308933, 36.649857>,  <40.554356, 33.513596, 36.586567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892155, 33.308933, 36.649857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483903, 0.602392, -0.634792,
		0.229483, 0.612644, 0.756310,
		0.844497, -0.511654, 0.158222,
		41.145504, 33.155437, 36.697323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096985, 34.061321, 36.475945>,  <40.554356, 33.513596, 36.586567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096985, 34.061321, 36.475945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275246, 33.703533, 36.490448>,  <41.382202, 33.488861, 36.499149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275246, 33.703533, 36.490448>,  <41.096985, 34.061321, 36.475945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275246, 33.703533, 36.490448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664349, 0.303305, -0.683115,
		0.600032, 0.328517, 0.729410,
		0.445649, -0.894473, 0.036257,
		41.408939, 33.435192, 36.501324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679352, 34.262379, 36.590481>,  <41.096985, 34.061321, 36.475945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679352, 34.262379, 36.590481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725925, 33.905998, 36.414917>,  <41.753872, 33.692169, 36.309578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725925, 33.905998, 36.414917>,  <41.679352, 34.262379, 36.590481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725925, 33.905998, 36.414917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592532, 0.416973, -0.689232,
		0.797088, -0.179815, 0.576470,
		0.116438, -0.890955, -0.438910,
		41.760857, 33.638710, 36.283245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359509, 34.247063, 36.435898>,  <41.679352, 34.262379, 36.590481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359509, 34.247063, 36.435898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153854, 34.004181, 36.193588>,  <42.030460, 33.858452, 36.048203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153854, 34.004181, 36.193588>,  <42.359509, 34.247063, 36.435898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153854, 34.004181, 36.193588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440013, 0.419526, -0.793969,
		0.736242, -0.674757, 0.051485,
		-0.514137, -0.607207, -0.605774,
		41.999615, 33.822018, 36.011856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784897, 33.948109, 35.903358>,  <42.359509, 34.247063, 36.435898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784897, 33.948109, 35.903358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415161, 33.942165, 35.750847>,  <42.193321, 33.938599, 35.659340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415161, 33.942165, 35.750847>,  <42.784897, 33.948109, 35.903358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415161, 33.942165, 35.750847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363494, 0.269599, -0.891733,
		0.116043, -0.962858, -0.243800,
		-0.924341, -0.014859, -0.381278,
		42.137859, 33.937706, 35.636463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928513, 33.843571, 35.193195>,  <42.784897, 33.948109, 35.903358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928513, 33.843571, 35.193195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537422, 33.927330, 35.187405>,  <42.302769, 33.977585, 35.183929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537422, 33.927330, 35.187405>,  <42.928513, 33.843571, 35.193195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537422, 33.927330, 35.187405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133742, 0.568358, -0.811839,
		-0.161772, -0.795689, -0.583702,
		-0.977723, 0.209398, -0.014473,
		42.244106, 33.990150, 35.183064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558434, 33.615314, 34.489536>,  <42.928513, 33.843571, 35.193195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558434, 33.615314, 34.489536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348522, 33.913460, 34.653996>,  <42.222576, 34.092346, 34.752670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348522, 33.913460, 34.653996>,  <42.558434, 33.615314, 34.489536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348522, 33.913460, 34.653996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168779, 0.564517, -0.807982,
		-0.834339, -0.354619, -0.422048,
		-0.524779, 0.745363, 0.411146,
		42.191090, 34.137070, 34.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969017, 33.689106, 34.083721>,  <42.558434, 33.615314, 34.489536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969017, 33.689106, 34.083721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074215, 34.034142, 34.256592>,  <42.137333, 34.241161, 34.360313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074215, 34.034142, 34.256592>,  <41.969017, 33.689106, 34.083721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074215, 34.034142, 34.256592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108001, 0.418808, -0.901630,
		-0.958733, 0.283802, 0.016985,
		0.262998, 0.862587, 0.432176,
		42.153114, 34.292919, 34.386246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546036, 34.271053, 33.901760>,  <41.969017, 33.689106, 34.083721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546036, 34.271053, 33.901760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891281, 34.461582, 33.968868>,  <42.098427, 34.575901, 34.009132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891281, 34.461582, 33.968868>,  <41.546036, 34.271053, 33.901760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891281, 34.461582, 33.968868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025439, 0.290791, -0.956448,
		-0.504367, 0.829792, 0.238869,
		0.863114, 0.476325, 0.167774,
		42.150215, 34.604481, 34.019199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512451, 34.893845, 33.516193>,  <41.546036, 34.271053, 33.901760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512451, 34.893845, 33.516193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900169, 34.819542, 33.580631>,  <42.132801, 34.774960, 33.619293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900169, 34.819542, 33.580631>,  <41.512451, 34.893845, 33.516193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900169, 34.819542, 33.580631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208604, 0.274455, -0.938700,
		0.130159, 0.943487, 0.304779,
		0.969300, -0.185759, 0.161093,
		42.190960, 34.763813, 33.628960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889744, 35.504932, 33.397797>,  <41.512451, 34.893845, 33.516193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889744, 35.504932, 33.397797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098301, 35.170200, 33.331017>,  <42.223434, 34.969360, 33.290951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098301, 35.170200, 33.331017>,  <41.889744, 35.504932, 33.397797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098301, 35.170200, 33.331017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138865, 0.276247, -0.951002,
		0.841943, 0.472660, 0.260238,
		0.521391, -0.836827, -0.166948,
		42.254719, 34.919151, 33.280933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677597, 35.573555, 33.083832>,  <41.889744, 35.504932, 33.397797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677597, 35.573555, 33.083832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514355, 35.245483, 32.923454>,  <42.416409, 35.048641, 32.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514355, 35.245483, 32.923454>,  <42.677597, 35.573555, 33.083832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514355, 35.245483, 32.923454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059026, 0.414555, -0.908108,
		0.911025, -0.394268, -0.120769,
		-0.408104, -0.820181, -0.400942,
		42.391922, 34.999428, 32.803173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154755, 35.316368, 32.537281>,  <42.677597, 35.573555, 33.083832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154755, 35.316368, 32.537281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777805, 35.188244, 32.498634>,  <42.551636, 35.111370, 32.475445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777805, 35.188244, 32.498634>,  <43.154755, 35.316368, 32.537281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777805, 35.188244, 32.498634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026280, 0.358767, -0.933057,
		0.333529, -0.876749, -0.346510,
		-0.942374, -0.320308, -0.096618,
		42.495094, 35.092152, 32.469650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220093, 36.059505, 32.703941>,  <43.154755, 35.316368, 32.537281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220093, 36.059505, 32.703941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984814, 36.087284, 32.381649>,  <42.843647, 36.103951, 32.188274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984814, 36.087284, 32.381649>,  <43.220093, 36.059505, 32.703941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984814, 36.087284, 32.381649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523481, 0.726726, 0.444789,
		0.616431, 0.683408, -0.391109,
		-0.588202, 0.069443, -0.805727,
		42.808353, 36.108116, 32.139931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933697, 35.858082, 32.937912>,  <43.220093, 36.059505, 32.703941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933697, 35.858082, 32.937912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308929, 35.883461, 33.074139>,  <44.534069, 35.898689, 33.155876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308929, 35.883461, 33.074139>,  <43.933697, 35.858082, 32.937912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308929, 35.883461, 33.074139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155651, 0.955458, 0.250745,
		-0.309489, -0.288227, 0.906169,
		0.938077, 0.063444, 0.340566,
		44.590351, 35.902493, 33.176308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839081, 36.283012, 33.584621>,  <43.933697, 35.858082, 32.937912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839081, 36.283012, 33.584621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231308, 36.280567, 33.506195>,  <44.466644, 36.279099, 33.459137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231308, 36.280567, 33.506195>,  <43.839081, 36.283012, 33.584621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231308, 36.280567, 33.506195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070630, 0.943480, 0.323817,
		0.183007, -0.331373, 0.925581,
		0.980571, -0.006113, -0.196068,
		44.525478, 36.278732, 33.447376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171219, 36.434292, 34.201305>,  <43.839081, 36.283012, 33.584621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171219, 36.434292, 34.201305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438591, 36.511459, 33.913979>,  <44.599014, 36.557762, 33.741581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438591, 36.511459, 33.913979>,  <44.171219, 36.434292, 34.201305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438591, 36.511459, 33.913979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052722, 0.951056, 0.304489,
		0.741902, -0.241401, 0.625546,
		0.668433, 0.192921, -0.718317,
		44.639122, 36.569336, 33.698483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652733, 36.880653, 34.578766>,  <44.171219, 36.434292, 34.201305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652733, 36.880653, 34.578766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703094, 36.963280, 34.190647>,  <44.733311, 37.012856, 33.957775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703094, 36.963280, 34.190647>,  <44.652733, 36.880653, 34.578766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703094, 36.963280, 34.190647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088553, 0.976516, 0.196404,
		0.988083, 0.061195, 0.141237,
		0.125901, 0.206571, -0.970298,
		44.740864, 37.025249, 33.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057091, 37.486347, 34.558544>,  <44.652733, 36.880653, 34.578766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057091, 37.486347, 34.558544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865623, 37.535728, 34.210835>,  <44.750744, 37.565357, 34.002209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865623, 37.535728, 34.210835>,  <45.057091, 37.486347, 34.558544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865623, 37.535728, 34.210835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015544, 0.988718, 0.148981,
		0.877856, 0.084825, -0.471353,
		-0.478672, 0.123457, -0.869271,
		44.722023, 37.572765, 33.950054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283134, 38.057327, 34.272671>,  <45.057091, 37.486347, 34.558544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283134, 38.057327, 34.272671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955936, 38.017849, 34.045994>,  <44.759617, 37.994164, 33.909988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955936, 38.017849, 34.045994>,  <45.283134, 38.057327, 34.272671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955936, 38.017849, 34.045994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158977, 0.985587, 0.057826,
		0.552816, 0.137392, -0.821899,
		-0.817998, -0.098696, -0.566690,
		44.710537, 37.988239, 33.875988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372784, 38.619041, 33.773350>,  <45.283134, 38.057327, 34.272671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372784, 38.619041, 33.773350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987282, 38.513245, 33.759331>,  <44.755981, 38.449768, 33.750919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987282, 38.513245, 33.759331>,  <45.372784, 38.619041, 33.773350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987282, 38.513245, 33.759331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254754, 0.951289, -0.173637,
		0.079269, -0.158414, -0.984186,
		-0.963751, -0.264489, -0.035051,
		44.698154, 38.433899, 33.748814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093388, 39.073257, 33.240707>,  <45.372784, 38.619041, 33.773350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093388, 39.073257, 33.240707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770687, 38.948059, 33.441177>,  <44.577065, 38.872940, 33.561459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770687, 38.948059, 33.441177>,  <45.093388, 39.073257, 33.240707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770687, 38.948059, 33.441177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349900, 0.936537, 0.021650,
		-0.476148, -0.157896, -0.865073,
		-0.806754, -0.312998, 0.501178,
		44.528660, 38.854160, 33.591530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552898, 39.540661, 33.105160>,  <45.093388, 39.073257, 33.240707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552898, 39.540661, 33.105160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369461, 39.377731, 33.421078>,  <44.259399, 39.279972, 33.610630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369461, 39.377731, 33.421078>,  <44.552898, 39.540661, 33.105160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369461, 39.377731, 33.421078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561999, 0.821395, 0.097297,
		-0.688368, -0.399247, -0.605600,
		-0.458592, -0.407323, 0.789798,
		44.231884, 39.255535, 33.658016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842781, 39.775715, 33.093266>,  <44.552898, 39.540661, 33.105160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842781, 39.775715, 33.093266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923470, 39.660404, 33.467690>,  <43.971882, 39.591217, 33.692345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923470, 39.660404, 33.467690>,  <43.842781, 39.775715, 33.093266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923470, 39.660404, 33.467690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401648, 0.847302, 0.347503,
		-0.893301, -0.446065, 0.055134,
		0.201724, -0.288280, 0.936057,
		43.983986, 39.573921, 33.748505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191887, 40.062145, 33.424473>,  <43.842781, 39.775715, 33.093266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191887, 40.062145, 33.424473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453018, 39.975002, 33.714672>,  <43.609699, 39.922714, 33.888790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453018, 39.975002, 33.714672>,  <43.191887, 40.062145, 33.424473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453018, 39.975002, 33.714672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388201, 0.726201, 0.567391,
		-0.650470, -0.652050, 0.389513,
		0.652831, -0.217861, 0.725498,
		43.648869, 39.909645, 33.932320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775124, 40.036949, 34.011147>,  <43.191887, 40.062145, 33.424473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775124, 40.036949, 34.011147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153797, 40.088806, 34.129112>,  <43.381001, 40.119919, 34.199894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153797, 40.088806, 34.129112>,  <42.775124, 40.036949, 34.011147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153797, 40.088806, 34.129112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278127, 0.790869, 0.545134,
		-0.162570, -0.598096, 0.784763,
		0.946687, 0.129641, 0.294918,
		43.437805, 40.127697, 34.217587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740078, 40.141651, 34.673088>,  <42.775124, 40.036949, 34.011147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740078, 40.141651, 34.673088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096813, 40.298801, 34.583397>,  <43.310856, 40.393089, 34.529583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096813, 40.298801, 34.583397>,  <42.740078, 40.141651, 34.673088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096813, 40.298801, 34.583397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223571, 0.813731, 0.536524,
		0.393244, -0.428362, 0.813551,
		0.891838, 0.392871, -0.224226,
		43.364365, 40.416664, 34.516129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010124, 40.458996, 35.318550>,  <42.740078, 40.141651, 34.673088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010124, 40.458996, 35.318550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229004, 40.625450, 35.028057>,  <43.360332, 40.725323, 34.853760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229004, 40.625450, 35.028057>,  <43.010124, 40.458996, 35.318550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229004, 40.625450, 35.028057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175815, 0.905441, 0.386349,
		0.818332, -0.083726, 0.568615,
		0.547195, 0.416133, -0.726231,
		43.393162, 40.750290, 34.810188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532703, 40.768547, 35.675907>,  <43.010124, 40.458996, 35.318550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532703, 40.768547, 35.675907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452774, 40.946014, 35.326454>,  <43.404816, 41.052494, 35.116783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452774, 40.946014, 35.326454>,  <43.532703, 40.768547, 35.675907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452774, 40.946014, 35.326454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035611, 0.894312, 0.446023,
		0.979184, 0.058015, -0.194505,
		-0.199824, 0.443666, -0.873631,
		43.392826, 41.079113, 35.064365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063087, 41.315117, 35.730427>,  <43.532703, 40.768547, 35.675907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063087, 41.315117, 35.730427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786381, 41.425213, 35.463383>,  <43.620358, 41.491268, 35.303158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786381, 41.425213, 35.463383>,  <44.063087, 41.315117, 35.730427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786381, 41.425213, 35.463383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019343, 0.931244, 0.363883,
		0.721863, 0.238808, -0.649527,
		-0.691766, 0.275237, -0.667611,
		43.578850, 41.507786, 35.263100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294231, 41.965218, 35.422855>,  <44.063087, 41.315117, 35.730427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294231, 41.965218, 35.422855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899048, 41.967094, 35.360996>,  <43.661938, 41.968220, 35.323883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899048, 41.967094, 35.360996>,  <44.294231, 41.965218, 35.422855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899048, 41.967094, 35.360996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055070, 0.923418, 0.379824,
		0.144582, 0.383767, -0.912041,
		-0.987959, 0.004690, -0.154644,
		43.602661, 41.968502, 35.314602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106560, 42.701057, 35.241524>,  <44.294231, 41.965218, 35.422855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106560, 42.701057, 35.241524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738354, 42.555363, 35.298077>,  <43.517429, 42.467945, 35.332008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738354, 42.555363, 35.298077>,  <44.106560, 42.701057, 35.241524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738354, 42.555363, 35.298077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344091, 0.927157, 0.148264,
		-0.185088, 0.087830, -0.978789,
		-0.920513, -0.364234, 0.141384,
		43.462200, 42.446091, 35.340492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627197, 43.051910, 34.804100>,  <44.106560, 42.701057, 35.241524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627197, 43.051910, 34.804100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393841, 42.910358, 35.096519>,  <43.253826, 42.825428, 35.271969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393841, 42.910358, 35.096519>,  <43.627197, 43.051910, 34.804100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393841, 42.910358, 35.096519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504348, 0.863362, 0.015457,
		-0.636626, -0.359684, -0.682154,
		-0.583387, -0.353883, 0.731045,
		43.218826, 42.804192, 35.315834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083046, 43.292324, 34.620953>,  <43.627197, 43.051910, 34.804100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083046, 43.292324, 34.620953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991993, 43.162643, 34.988232>,  <42.937363, 43.084835, 35.208599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991993, 43.162643, 34.988232>,  <43.083046, 43.292324, 34.620953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991993, 43.162643, 34.988232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553085, 0.819123, 0.152100,
		-0.801423, -0.473216, -0.365769,
		-0.227634, -0.324198, 0.918193,
		42.923702, 43.065384, 35.263691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346809, 43.142223, 34.741619>,  <43.083046, 43.292324, 34.620953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346809, 43.142223, 34.741619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516792, 43.272285, 35.079540>,  <42.618782, 43.350323, 35.282291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516792, 43.272285, 35.079540>,  <42.346809, 43.142223, 34.741619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516792, 43.272285, 35.079540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579716, 0.814525, -0.021886,
		-0.695227, -0.480444, 0.534633,
		0.424957, 0.325151, 0.844801,
		42.644279, 43.369831, 35.332981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831108, 43.368076, 35.185394>,  <42.346809, 43.142223, 34.741619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831108, 43.368076, 35.185394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136173, 43.575230, 35.340389>,  <42.319214, 43.699520, 35.433384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136173, 43.575230, 35.340389>,  <41.831108, 43.368076, 35.185394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136173, 43.575230, 35.340389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581873, 0.810958, 0.061404,
		-0.282434, -0.272298, 0.919829,
		0.762663, 0.517881, 0.387485,
		42.364971, 43.730595, 35.456635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502182, 43.735664, 35.777737>,  <41.831108, 43.368076, 35.185394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502182, 43.735664, 35.777737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836353, 43.927494, 35.670353>,  <42.036858, 44.042591, 35.605923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836353, 43.927494, 35.670353>,  <41.502182, 43.735664, 35.777737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836353, 43.927494, 35.670353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332300, 0.829828, 0.448289,
		0.437764, -0.285303, 0.852623,
		0.835428, 0.479571, -0.268462,
		42.086983, 44.071365, 35.589813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888683, 44.018265, 36.411415>,  <41.502182, 43.735664, 35.777737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888683, 44.018265, 36.411415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976067, 44.237034, 36.088142>,  <42.028496, 44.368294, 35.894180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976067, 44.237034, 36.088142>,  <41.888683, 44.018265, 36.411415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976067, 44.237034, 36.088142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229421, 0.833754, 0.502215,
		0.948494, 0.075699, 0.307617,
		0.218460, 0.546922, -0.808178,
		42.041603, 44.401112, 35.845688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308556, 44.645283, 36.634876>,  <41.888683, 44.018265, 36.411415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308556, 44.645283, 36.634876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131310, 44.726173, 36.285534>,  <42.024960, 44.774708, 36.075928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131310, 44.726173, 36.285534>,  <42.308556, 44.645283, 36.634876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131310, 44.726173, 36.285534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411766, 0.819461, 0.398664,
		0.796300, 0.536274, -0.279850,
		-0.443119, 0.202223, -0.873356,
		41.998375, 44.786839, 36.023525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832352, 44.329239, 37.146908>,  <42.308556, 44.645283, 36.634876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832352, 44.329239, 37.146908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021923, 44.634346, 37.322895>,  <42.135666, 44.817410, 37.428486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021923, 44.634346, 37.322895>,  <41.832352, 44.329239, 37.146908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021923, 44.634346, 37.322895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076503, -0.462087, 0.883529,
		0.877235, -0.452387, -0.160641,
		0.473926, 0.762773, 0.439968,
		42.164101, 44.863178, 37.454884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460102, 44.197540, 37.383755>,  <41.832352, 44.329239, 37.146908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460102, 44.197540, 37.383755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322609, 44.465549, 37.646938>,  <42.240112, 44.626354, 37.804848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322609, 44.465549, 37.646938>,  <42.460102, 44.197540, 37.383755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322609, 44.465549, 37.646938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006460, -0.702326, 0.711826,
		0.939046, 0.240426, 0.245739,
		-0.343730, 0.670025, 0.657964,
		42.219490, 44.666557, 37.844326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930470, 44.186813, 37.962200>,  <42.460102, 44.197540, 37.383755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930470, 44.186813, 37.962200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561836, 44.292946, 38.075542>,  <42.340656, 44.356625, 38.143547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561836, 44.292946, 38.075542>,  <42.930470, 44.186813, 37.962200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561836, 44.292946, 38.075542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073116, -0.598225, 0.797985,
		0.381243, 0.756124, 0.531911,
		-0.921579, 0.265335, 0.283354,
		42.285362, 44.372547, 38.160549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901508, 43.907658, 38.626717>,  <42.930470, 44.186813, 37.962200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901508, 43.907658, 38.626717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528011, 44.050201, 38.613258>,  <42.303913, 44.135727, 38.605183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528011, 44.050201, 38.613258>,  <42.901508, 43.907658, 38.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528011, 44.050201, 38.613258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219074, -0.494616, 0.841048,
		0.283078, 0.792692, 0.539914,
		-0.933742, 0.356363, -0.033643,
		42.247890, 44.157112, 38.603165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591248, 43.561634, 38.570801>,  <42.901508, 43.907658, 38.626717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591248, 43.561634, 38.570801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518909, 43.334705, 38.892159>,  <43.475506, 43.198547, 39.084972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518909, 43.334705, 38.892159>,  <43.591248, 43.561634, 38.570801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518909, 43.334705, 38.892159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398781, -0.788999, -0.467390,
		0.899037, 0.235851, 0.368926,
		-0.180848, -0.567322, 0.803393,
		43.464657, 43.164509, 39.133175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294357, 43.325851, 38.847069>,  <43.591248, 43.561634, 38.570801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294357, 43.325851, 38.847069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961136, 43.104881, 38.858730>,  <43.761204, 42.972298, 38.865726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961136, 43.104881, 38.858730>,  <44.294357, 43.325851, 38.847069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961136, 43.104881, 38.858730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478106, -0.745481, -0.464406,
		0.278285, -0.372934, 0.885143,
		-0.833050, -0.552429, 0.029155,
		43.711220, 42.939152, 38.867477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284363, 42.650703, 39.255985>,  <44.294357, 43.325851, 38.847069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284363, 42.650703, 39.255985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031590, 42.605667, 38.949265>,  <43.879925, 42.578648, 38.765232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031590, 42.605667, 38.949265>,  <44.284363, 42.650703, 39.255985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031590, 42.605667, 38.949265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475334, -0.837760, -0.268729,
		-0.612138, -0.534305, 0.582928,
		-0.631937, -0.112587, -0.766798,
		43.842007, 42.571892, 38.719227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229031, 41.980701, 39.133305>,  <44.284363, 42.650703, 39.255985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229031, 41.980701, 39.133305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072651, 42.120010, 38.792515>,  <43.978825, 42.203594, 38.588039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072651, 42.120010, 38.792515>,  <44.229031, 41.980701, 39.133305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072651, 42.120010, 38.792515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250228, -0.850567, -0.462517,
		-0.885745, -0.394009, 0.245381,
		-0.390949, 0.348271, -0.851978,
		43.955364, 42.224491, 38.536922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829102, 41.468594, 38.922859>,  <44.229031, 41.980701, 39.133305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829102, 41.468594, 38.922859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924282, 41.691570, 38.604706>,  <43.981388, 41.825356, 38.413815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924282, 41.691570, 38.604706>,  <43.829102, 41.468594, 38.922859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924282, 41.691570, 38.604706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260840, -0.825496, -0.500518,
		-0.935598, -0.088370, -0.341829,
		0.237948, 0.557446, -0.795383,
		43.995667, 41.858803, 38.366093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540062, 41.041737, 38.335152>,  <43.829102, 41.468594, 38.922859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540062, 41.041737, 38.335152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816452, 41.291176, 38.188904>,  <43.982288, 41.440838, 38.101154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816452, 41.291176, 38.188904>,  <43.540062, 41.041737, 38.335152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816452, 41.291176, 38.188904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419790, -0.757915, -0.499341,
		-0.588495, 0.191550, -0.785482,
		0.690977, 0.623597, -0.365618,
		44.023746, 41.478256, 38.079220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617249, 40.838257, 37.638397>,  <43.540062, 41.041737, 38.335152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617249, 40.838257, 37.638397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949474, 41.033279, 37.746063>,  <44.148808, 41.150295, 37.810661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949474, 41.033279, 37.746063>,  <43.617249, 40.838257, 37.638397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949474, 41.033279, 37.746063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554851, -0.766084, -0.324430,
		0.048025, 0.418806, -0.906805,
		0.830562, 0.487561, 0.269166,
		44.198643, 41.179546, 37.826813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985298, 40.913551, 37.075413>,  <43.617249, 40.838257, 37.638397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985298, 40.913551, 37.075413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253418, 40.911011, 37.372238>,  <44.414288, 40.909485, 37.550335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253418, 40.911011, 37.372238>,  <43.985298, 40.913551, 37.075413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253418, 40.911011, 37.372238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476058, -0.763409, -0.436548,
		0.569274, 0.645884, -0.508686,
		0.670295, -0.006351, 0.742068,
		44.454506, 40.909107, 37.594860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517609, 40.842693, 36.727962>,  <43.985298, 40.913551, 37.075413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517609, 40.842693, 36.727962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630909, 40.705288, 37.086128>,  <44.698891, 40.622845, 37.301029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630909, 40.705288, 37.086128>,  <44.517609, 40.842693, 36.727962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630909, 40.705288, 37.086128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524981, -0.725809, -0.444519,
		0.802598, 0.595985, -0.025246,
		0.283251, -0.343516, 0.895414,
		44.715885, 40.602234, 37.354752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347092, 40.785690, 36.719044>,  <44.517609, 40.842693, 36.727962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347092, 40.785690, 36.719044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213375, 40.562733, 37.023033>,  <45.133144, 40.428959, 37.205425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213375, 40.562733, 37.023033>,  <45.347092, 40.785690, 36.719044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213375, 40.562733, 37.023033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532609, -0.776984, -0.335596,
		0.777548, 0.292584, 0.556610,
		-0.334287, -0.557397, 0.759974,
		45.113091, 40.395515, 37.251026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953182, 40.420258, 36.867935>,  <45.347092, 40.785690, 36.719044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953182, 40.420258, 36.867935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653690, 40.221027, 37.042900>,  <45.473995, 40.101490, 37.147881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653690, 40.221027, 37.042900>,  <45.953182, 40.420258, 36.867935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653690, 40.221027, 37.042900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402449, -0.865891, -0.297100,
		0.526731, -0.046409, 0.848764,
		-0.748725, -0.498076, 0.437414,
		45.429073, 40.071606, 37.174126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262608, 39.872475, 37.217136>,  <45.953182, 40.420258, 36.867935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262608, 39.872475, 37.217136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881184, 39.753498, 37.198185>,  <45.652328, 39.682110, 37.186813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881184, 39.753498, 37.198185>,  <46.262608, 39.872475, 37.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881184, 39.753498, 37.198185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300269, -0.926456, -0.226977,
		0.023616, -0.230664, 0.972747,
		-0.953562, -0.297446, -0.047382,
		45.595116, 39.664265, 37.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316360, 39.240540, 37.515091>,  <46.262608, 39.872475, 37.217136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316360, 39.240540, 37.515091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968361, 39.222656, 37.318684>,  <45.759560, 39.211926, 37.200840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968361, 39.222656, 37.318684>,  <46.316360, 39.240540, 37.515091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968361, 39.222656, 37.318684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200695, -0.941757, -0.269842,
		-0.450355, -0.333308, 0.828304,
		-0.870001, -0.044711, -0.491018,
		45.707359, 39.209244, 37.171379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943577, 38.665321, 37.731937>,  <46.316360, 39.240540, 37.515091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943577, 38.665321, 37.731937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783924, 38.736237, 37.372101>,  <45.688133, 38.778786, 37.156200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783924, 38.736237, 37.372101>,  <45.943577, 38.665321, 37.731937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783924, 38.736237, 37.372101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003714, -0.980809, -0.194938,
		-0.916887, -0.081147, 0.390813,
		-0.399131, 0.177284, -0.899592,
		45.664185, 38.789421, 37.102222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592651, 38.049118, 37.627796>,  <45.943577, 38.665321, 37.731937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592651, 38.049118, 37.627796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610359, 38.223164, 37.268082>,  <45.620983, 38.327591, 37.052254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610359, 38.223164, 37.268082>,  <45.592651, 38.049118, 37.627796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610359, 38.223164, 37.268082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235503, -0.879347, -0.413868,
		-0.970865, -0.193462, -0.141402,
		0.044274, 0.435110, -0.899288,
		45.623642, 38.353695, 36.998295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430958, 37.531212, 37.193130>,  <45.592651, 38.049118, 37.627796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430958, 37.531212, 37.193130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560482, 37.787895, 36.915035>,  <45.638199, 37.941906, 36.748177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560482, 37.787895, 36.915035>,  <45.430958, 37.531212, 37.193130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560482, 37.787895, 36.915035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242110, -0.766565, -0.594779,
		-0.914619, 0.024273, -0.403588,
		0.323813, 0.641708, -0.695238,
		45.657627, 37.980408, 36.706463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174465, 37.336166, 36.502136>,  <45.430958, 37.531212, 37.193130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174465, 37.336166, 36.502136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510994, 37.536903, 36.421814>,  <45.712914, 37.657345, 36.373619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510994, 37.536903, 36.421814>,  <45.174465, 37.336166, 36.502136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510994, 37.536903, 36.421814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264137, -0.705828, -0.657296,
		-0.471596, 0.499959, -0.726387,
		0.841326, 0.501844, -0.200808,
		45.763393, 37.687458, 36.361572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211456, 37.451141, 35.742977>,  <45.174465, 37.336166, 36.502136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211456, 37.451141, 35.742977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576214, 37.457409, 35.907032>,  <45.795067, 37.461170, 36.005466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576214, 37.457409, 35.907032>,  <45.211456, 37.451141, 35.742977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576214, 37.457409, 35.907032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375785, -0.433727, -0.818942,
		0.165055, 0.900908, -0.401399,
		0.911889, 0.015670, 0.410137,
		45.849781, 37.462109, 36.030071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546310, 37.630924, 35.102905>,  <45.211456, 37.451141, 35.742977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546310, 37.630924, 35.102905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836601, 37.506111, 35.348167>,  <46.010777, 37.431225, 35.495323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836601, 37.506111, 35.348167>,  <45.546310, 37.630924, 35.102905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836601, 37.506111, 35.348167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480612, -0.407765, -0.776363,
		0.492271, 0.858117, -0.145961,
		0.725728, -0.312031, 0.613152,
		46.054321, 37.412502, 35.532112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186222, 37.832226, 34.772266>,  <45.546310, 37.630924, 35.102905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186222, 37.832226, 34.772266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257004, 37.537151, 35.032883>,  <46.299473, 37.360107, 35.189251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257004, 37.537151, 35.032883>,  <46.186222, 37.832226, 34.772266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257004, 37.537151, 35.032883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529006, -0.486947, -0.695008,
		0.829964, 0.467652, 0.304074,
		0.176954, -0.737688, 0.651539,
		46.310089, 37.315845, 35.228344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902470, 37.732647, 34.761284>,  <46.186222, 37.832226, 34.772266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902470, 37.732647, 34.761284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742546, 37.398857, 34.912968>,  <46.646591, 37.198582, 35.003979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742546, 37.398857, 34.912968>,  <46.902470, 37.732647, 34.761284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742546, 37.398857, 34.912968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558788, -0.549847, -0.620826,
		0.726572, -0.036315, 0.686131,
		-0.399812, -0.834476, 0.379211,
		46.622604, 37.148514, 35.026730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474922, 37.310524, 35.032761>,  <46.902470, 37.732647, 34.761284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474922, 37.310524, 35.032761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176750, 37.050972, 34.971722>,  <46.997845, 36.895241, 34.935097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176750, 37.050972, 34.971722>,  <47.474922, 37.310524, 35.032761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.176750, 37.050972, 34.971722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659031, -0.683062, -0.314808,
		0.100038, -0.335235, 0.936809,
		-0.745433, -0.648879, -0.152598,
		46.953121, 36.856308, 34.925941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.712891, 36.587147, 35.237034>,  <47.474922, 37.310524, 35.032761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.712891, 36.587147, 35.237034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400562, 36.540031, 34.991611>,  <47.213165, 36.511761, 34.844357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400562, 36.540031, 34.991611>,  <47.712891, 36.587147, 35.237034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400562, 36.540031, 34.991611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493731, -0.718101, -0.490470,
		-0.382823, -0.685898, 0.618862,
		-0.780818, -0.117788, -0.613555,
		47.166317, 36.504696, 34.807545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.129047, 36.521152, 35.812183>,  <47.712891, 36.587147, 35.237034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.129047, 36.521152, 35.812183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.023861, 36.139854, 35.871746>,  <46.960751, 35.911076, 35.907486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.023861, 36.139854, 35.871746>,  <47.129047, 36.521152, 35.812183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.023861, 36.139854, 35.871746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713598, -0.296040, -0.634932,
		0.649328, -0.060702, 0.758082,
		-0.262964, -0.953245, 0.148910,
		46.944973, 35.853882, 35.916420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.725601, 36.213390, 35.840164>,  <47.129047, 36.521152, 35.812183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.725601, 36.213390, 35.840164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460552, 35.934101, 35.731781>,  <47.301525, 35.766529, 35.666752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460552, 35.934101, 35.731781>,  <47.725601, 36.213390, 35.840164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.460552, 35.934101, 35.731781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545120, -0.201524, -0.813776,
		0.513594, -0.686928, 0.514150,
		-0.662620, -0.698224, -0.270957,
		47.261765, 35.724632, 35.650494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.969025, 35.520042, 35.728798>,  <47.725601, 36.213390, 35.840164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.969025, 35.520042, 35.728798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660942, 35.559814, 35.476799>,  <47.476093, 35.583679, 35.325600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660942, 35.559814, 35.476799>,  <47.969025, 35.520042, 35.728798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660942, 35.559814, 35.476799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626497, -0.067147, -0.776526,
		-0.119513, -0.992776, -0.010576,
		-0.770207, 0.099431, -0.629996,
		47.429878, 35.589645, 35.287800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.868835, 34.848770, 35.332134>,  <47.969025, 35.520042, 35.728798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.868835, 34.848770, 35.332134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759819, 35.183228, 35.141727>,  <47.694408, 35.383900, 35.027485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759819, 35.183228, 35.141727>,  <47.868835, 34.848770, 35.332134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.759819, 35.183228, 35.141727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697167, -0.169343, -0.696621,
		-0.663083, -0.521719, -0.536778,
		-0.272541, 0.836141, -0.476014,
		47.678055, 35.434071, 34.998924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.713654, 33.835400, 44.106087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332287, 33.735794, 44.037991>,  <35.103466, 33.676033, 43.997131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332287, 33.735794, 44.037991>,  <35.713654, 33.835400, 44.106087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332287, 33.735794, 44.037991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026231, 0.493799, -0.869180,
		0.300500, -0.833160, -0.464267,
		-0.953421, -0.249011, -0.170241,
		35.046261, 33.661091, 43.986919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749928, 33.658382, 43.426643>,  <35.713654, 33.835400, 44.106087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749928, 33.658382, 43.426643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353123, 33.678196, 43.473038>,  <35.115040, 33.690086, 43.500874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353123, 33.678196, 43.473038>,  <35.749928, 33.658382, 43.426643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353123, 33.678196, 43.473038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096174, 0.297805, -0.949770,
		-0.081589, -0.953341, -0.290663,
		-0.992015, 0.049537, 0.115984,
		35.055519, 33.693058, 43.507832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504303, 33.289825, 42.930069>,  <35.749928, 33.658382, 43.426643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504303, 33.289825, 42.930069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204010, 33.534843, 43.029007>,  <35.023834, 33.681854, 43.088371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204010, 33.534843, 43.029007>,  <35.504303, 33.289825, 42.930069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204010, 33.534843, 43.029007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077932, 0.453937, -0.887619,
		-0.655989, -0.647092, -0.388524,
		-0.750736, 0.612547, 0.247348,
		34.978790, 33.718609, 43.103210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073765, 33.272255, 42.469898>,  <35.504303, 33.289825, 42.930069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073765, 33.272255, 42.469898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955776, 33.627514, 42.610855>,  <34.884983, 33.840672, 42.695431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.955776, 33.627514, 42.610855>,  <35.073765, 33.272255, 42.469898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955776, 33.627514, 42.610855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047676, 0.382021, -0.922923,
		-0.954316, -0.255434, -0.155028,
		-0.294970, 0.888152, 0.352391,
		34.867287, 33.893959, 42.716572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459747, 33.505547, 42.099094>,  <35.073765, 33.272255, 42.469898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459747, 33.505547, 42.099094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618164, 33.843594, 42.242718>,  <34.713215, 34.046421, 42.328892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618164, 33.843594, 42.242718>,  <34.459747, 33.505547, 42.099094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618164, 33.843594, 42.242718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048092, 0.409584, -0.911004,
		-0.916973, 0.343527, 0.202855,
		0.396041, 0.845121, 0.359057,
		34.736977, 34.097130, 42.350433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189308, 33.847855, 41.638218>,  <34.459747, 33.505547, 42.099094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189308, 33.847855, 41.638218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437977, 34.111755, 41.807098>,  <34.587177, 34.270096, 41.908424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437977, 34.111755, 41.807098>,  <34.189308, 33.847855, 41.638218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437977, 34.111755, 41.807098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138369, 0.438037, -0.888244,
		-0.770956, 0.610619, 0.181028,
		0.621676, 0.659748, 0.422198,
		34.624481, 34.309681, 41.933758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001354, 34.544846, 41.415722>,  <34.189308, 33.847855, 41.638218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001354, 34.544846, 41.415722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.371861, 34.598179, 41.556717>,  <34.594166, 34.630180, 41.641315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.371861, 34.598179, 41.556717>,  <34.001354, 34.544846, 41.415722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371861, 34.598179, 41.556717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210738, 0.592171, -0.777768,
		-0.312439, 0.794705, 0.520410,
		0.926268, 0.133335, 0.352491,
		34.649742, 34.638180, 41.662464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167412, 35.333717, 41.397816>,  <34.001354, 34.544846, 41.415722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167412, 35.333717, 41.397816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476585, 35.087200, 41.337475>,  <34.662090, 34.939289, 41.301270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476585, 35.087200, 41.337475>,  <34.167412, 35.333717, 41.397816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476585, 35.087200, 41.337475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228891, 0.492585, -0.839624,
		0.591758, 0.614448, 0.521800,
		0.772937, -0.616290, -0.150849,
		34.708466, 34.902313, 41.292221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697636, 35.796677, 41.116779>,  <34.167412, 35.333717, 41.397816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697636, 35.796677, 41.116779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854877, 35.434132, 41.054836>,  <34.949223, 35.216606, 41.017670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854877, 35.434132, 41.054836>,  <34.697636, 35.796677, 41.116779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854877, 35.434132, 41.054836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632303, 0.388735, -0.670133,
		0.667579, 0.165517, 0.725908,
		0.393104, -0.906361, -0.154855,
		34.972809, 35.162224, 41.008381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250278, 35.926426, 40.898438>,  <34.697636, 35.796677, 41.116779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250278, 35.926426, 40.898438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245075, 35.538784, 40.799911>,  <35.241955, 35.306198, 40.740795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245075, 35.538784, 40.799911>,  <35.250278, 35.926426, 40.898438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245075, 35.538784, 40.799911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645891, 0.179903, -0.741930,
		0.763319, -0.168741, 0.623595,
		-0.013008, -0.969103, -0.246312,
		35.241173, 35.248055, 40.726017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901020, 35.626305, 40.919811>,  <35.250278, 35.926426, 40.898438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901020, 35.626305, 40.919811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702229, 35.365524, 40.690739>,  <35.582954, 35.209057, 40.553295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702229, 35.365524, 40.690739>,  <35.901020, 35.626305, 40.919811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702229, 35.365524, 40.690739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702252, 0.085517, -0.706773,
		0.509756, -0.753423, 0.415333,
		-0.496982, -0.651951, -0.572686,
		35.553135, 35.169941, 40.518932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381306, 35.060062, 40.789608>,  <35.901020, 35.626305, 40.919811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381306, 35.060062, 40.789608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108879, 35.072094, 40.496967>,  <35.945423, 35.079315, 40.321384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108879, 35.072094, 40.496967>,  <36.381306, 35.060062, 40.789608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108879, 35.072094, 40.496967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727126, -0.089857, -0.680598,
		-0.086215, -0.995500, 0.039324,
		-0.681069, 0.030084, -0.731601,
		35.904556, 35.081120, 40.277489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589916, 34.569199, 40.346424>,  <36.381306, 35.060062, 40.789608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589916, 34.569199, 40.346424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324596, 34.793083, 40.147724>,  <36.165405, 34.927414, 40.028503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324596, 34.793083, 40.147724>,  <36.589916, 34.569199, 40.346424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324596, 34.793083, 40.147724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576136, -0.041701, -0.816289,
		-0.477601, -0.827638, -0.294809,
		-0.663298, 0.559711, -0.496748,
		36.125607, 34.960995, 39.998699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657799, 34.330681, 39.663513>,  <36.589916, 34.569199, 40.346424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657799, 34.330681, 39.663513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466228, 34.678173, 39.613026>,  <36.351288, 34.886669, 39.582733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466228, 34.678173, 39.613026>,  <36.657799, 34.330681, 39.663513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466228, 34.678173, 39.613026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477516, 0.137163, -0.867850,
		-0.736620, -0.475906, -0.480526,
		-0.478925, 0.868735, -0.126216,
		36.322552, 34.938793, 39.575161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340378, 34.274975, 38.977863>,  <36.657799, 34.330681, 39.663513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340378, 34.274975, 38.977863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378128, 34.653149, 39.102600>,  <36.400780, 34.880054, 39.177441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378128, 34.653149, 39.102600>,  <36.340378, 34.274975, 38.977863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378128, 34.653149, 39.102600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659539, 0.175257, -0.730954,
		-0.745722, 0.274659, -0.607011,
		0.094380, 0.945435, 0.311841,
		36.406441, 34.936779, 39.196152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032440, 34.784821, 38.497955>,  <36.340378, 34.274975, 38.977863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032440, 34.784821, 38.497955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325001, 35.011658, 38.649456>,  <36.500538, 35.147758, 38.740356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325001, 35.011658, 38.649456>,  <36.032440, 34.784821, 38.497955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325001, 35.011658, 38.649456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313836, 0.213189, -0.925234,
		-0.605440, 0.795586, -0.022047,
		0.731403, 0.567093, 0.378756,
		36.544422, 35.181786, 38.763084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148113, 35.172962, 37.938740>,  <36.032440, 34.784821, 38.497955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148113, 35.172962, 37.938740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439709, 35.262768, 38.197403>,  <36.614666, 35.316650, 38.352600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439709, 35.262768, 38.197403>,  <36.148113, 35.172962, 37.938740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439709, 35.262768, 38.197403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589133, 0.275265, -0.759704,
		-0.348568, 0.934784, 0.068396,
		0.728987, 0.224515, 0.646662,
		36.658405, 35.330124, 38.391403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410858, 35.759033, 37.719009>,  <36.148113, 35.172962, 37.938740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410858, 35.759033, 37.719009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718128, 35.668091, 37.958416>,  <36.902489, 35.613525, 38.102058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718128, 35.668091, 37.958416>,  <36.410858, 35.759033, 37.719009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718128, 35.668091, 37.958416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606651, 0.557294, -0.566920,
		-0.204656, 0.798582, 0.566024,
		0.768173, -0.227356, 0.598514,
		36.948582, 35.599884, 38.137970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720264, 36.333717, 37.987541>,  <36.410858, 35.759033, 37.719009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720264, 36.333717, 37.987541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012909, 36.061245, 37.998413>,  <37.188496, 35.897762, 38.004936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012909, 36.061245, 37.998413>,  <36.720264, 36.333717, 37.987541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012909, 36.061245, 37.998413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631568, 0.662241, -0.403186,
		0.256645, 0.312139, 0.914715,
		0.731611, -0.681180, 0.027176,
		37.232391, 35.856892, 38.006565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354523, 36.672256, 38.170124>,  <36.720264, 36.333717, 37.987541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354523, 36.672256, 38.170124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492905, 36.327496, 38.021832>,  <37.575935, 36.120640, 37.932858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492905, 36.327496, 38.021832>,  <37.354523, 36.672256, 38.170124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492905, 36.327496, 38.021832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748599, 0.491761, -0.444714,
		0.565610, -0.123678, 0.815346,
		0.345954, -0.861902, -0.370730,
		37.596691, 36.068924, 37.910614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110352, 36.635204, 38.245979>,  <37.354523, 36.672256, 38.170124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110352, 36.635204, 38.245979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007465, 36.384823, 37.951488>,  <37.945732, 36.234596, 37.774796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007465, 36.384823, 37.951488>,  <38.110352, 36.635204, 38.245979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007465, 36.384823, 37.951488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768174, 0.329790, -0.548769,
		0.586301, -0.706700, 0.396012,
		-0.257214, -0.625950, -0.736225,
		37.930302, 36.197037, 37.730621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696686, 36.195827, 38.051384>,  <38.110352, 36.635204, 38.245979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696686, 36.195827, 38.051384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467449, 36.208256, 37.723824>,  <38.329906, 36.215714, 37.527287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467449, 36.208256, 37.723824>,  <38.696686, 36.195827, 38.051384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467449, 36.208256, 37.723824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780568, 0.325008, -0.533932,
		0.249560, -0.945201, -0.210511,
		-0.573090, 0.031070, -0.818903,
		38.295521, 36.217575, 37.478153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191040, 36.378853, 37.470188>,  <38.696686, 36.195827, 38.051384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191040, 36.378853, 37.470188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451393, 36.121941, 37.308289>,  <39.607605, 35.967793, 37.211147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451393, 36.121941, 37.308289>,  <39.191040, 36.378853, 37.470188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451393, 36.121941, 37.308289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225389, -0.672594, 0.704853,
		-0.724950, -0.367548, -0.582542,
		0.650882, -0.642282, -0.404755,
		39.646660, 35.929256, 37.186863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860744, 35.644806, 37.287384>,  <39.191040, 36.378853, 37.470188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860744, 35.644806, 37.287384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251099, 35.602932, 37.364002>,  <39.485310, 35.577808, 37.409973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251099, 35.602932, 37.364002>,  <38.860744, 35.644806, 37.287384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251099, 35.602932, 37.364002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210801, -0.679759, 0.702489,
		0.056663, -0.725926, -0.685435,
		0.975886, -0.104685, 0.191543,
		39.543865, 35.571526, 37.421467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845318, 34.961666, 37.508083>,  <38.860744, 35.644806, 37.287384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845318, 34.961666, 37.508083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197334, 35.111248, 37.625172>,  <39.408546, 35.200996, 37.695423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197334, 35.111248, 37.625172>,  <38.845318, 34.961666, 37.508083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197334, 35.111248, 37.625172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079775, -0.491217, 0.867376,
		0.468144, -0.786681, -0.402461,
		0.880044, 0.373950, 0.292718,
		39.461346, 35.223434, 37.712986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250374, 34.377693, 37.863163>,  <38.845318, 34.961666, 37.508083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250374, 34.377693, 37.863163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456345, 34.707520, 37.956917>,  <39.579926, 34.905415, 38.013168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456345, 34.707520, 37.956917>,  <39.250374, 34.377693, 37.863163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456345, 34.707520, 37.956917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135394, -0.348221, 0.927583,
		0.846475, -0.445903, -0.290949,
		0.514927, 0.824569, 0.234388,
		39.610821, 34.954891, 38.027233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804546, 34.125652, 38.262306>,  <39.250374, 34.377693, 37.863163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804546, 34.125652, 38.262306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775013, 34.511494, 38.363575>,  <39.757294, 34.742996, 38.424335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775013, 34.511494, 38.363575>,  <39.804546, 34.125652, 38.262306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775013, 34.511494, 38.363575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050625, -0.249910, 0.966945,
		0.995985, 0.084210, -0.030381,
		-0.073834, 0.964600, 0.253170,
		39.752861, 34.800873, 38.439526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296555, 34.187992, 38.841820>,  <39.804546, 34.125652, 38.262306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296555, 34.187992, 38.841820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051765, 34.504333, 38.844364>,  <39.904892, 34.694138, 38.845890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051765, 34.504333, 38.844364>,  <40.296555, 34.187992, 38.841820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051765, 34.504333, 38.844364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026086, 0.012143, 0.999586,
		0.790448, 0.611887, -0.028061,
		-0.611974, 0.790852, 0.006363,
		39.868172, 34.741589, 38.846272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603653, 34.704254, 39.257954>,  <40.296555, 34.187992, 38.841820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603653, 34.704254, 39.257954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.207413, 34.758968, 39.257812>,  <39.969669, 34.791798, 39.257729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.207413, 34.758968, 39.257812>,  <40.603653, 34.704254, 39.257954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207413, 34.758968, 39.257812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007251, -0.049916, 0.998727,
		0.136590, 0.989343, 0.050439,
		-0.990601, 0.136782, -0.000356,
		39.910233, 34.800003, 39.257706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479481, 35.122738, 39.867805>,  <40.603653, 34.704254, 39.257954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479481, 35.122738, 39.867805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124046, 34.966236, 39.772030>,  <39.910786, 34.872337, 39.714565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124046, 34.966236, 39.772030>,  <40.479481, 35.122738, 39.867805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124046, 34.966236, 39.772030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194495, -0.151383, 0.969152,
		-0.415430, 0.907747, 0.058420,
		-0.888588, -0.391253, -0.239441,
		39.857471, 34.848862, 39.700199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983475, 35.479515, 40.335163>,  <40.479481, 35.122738, 39.867805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983475, 35.479515, 40.335163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784161, 35.150387, 40.225853>,  <39.664574, 34.952911, 40.160267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784161, 35.150387, 40.225853>,  <39.983475, 35.479515, 40.335163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784161, 35.150387, 40.225853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309484, -0.125632, 0.942569,
		-0.809896, 0.554244, -0.192049,
		-0.498285, -0.822819, -0.273279,
		39.634674, 34.903542, 40.143867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295010, 35.565376, 40.651962>,  <39.983475, 35.479515, 40.335163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295010, 35.565376, 40.651962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368397, 35.183498, 40.558247>,  <39.412430, 34.954372, 40.502018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368397, 35.183498, 40.558247>,  <39.295010, 35.565376, 40.651962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368397, 35.183498, 40.558247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279895, -0.279206, 0.918533,
		-0.942337, -0.102940, -0.318439,
		0.183464, -0.954697, -0.234294,
		39.423435, 34.897091, 40.487957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699947, 35.092258, 40.767738>,  <39.295010, 35.565376, 40.651962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699947, 35.092258, 40.767738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989777, 34.819530, 40.807953>,  <39.163673, 34.655891, 40.832081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989777, 34.819530, 40.807953>,  <38.699947, 35.092258, 40.767738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989777, 34.819530, 40.807953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345516, -0.233143, 0.908990,
		-0.596332, -0.693368, -0.404511,
		0.724573, -0.681825, 0.100539,
		39.207150, 34.614983, 40.838116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389645, 34.533176, 41.175797>,  <38.699947, 35.092258, 40.767738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389645, 34.533176, 41.175797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779804, 34.453419, 41.213387>,  <39.013901, 34.405563, 41.235943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779804, 34.453419, 41.213387>,  <38.389645, 34.533176, 41.175797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779804, 34.453419, 41.213387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156168, -0.324200, 0.933009,
		-0.155571, -0.924736, -0.347364,
		0.975402, -0.199396, 0.093978,
		39.072426, 34.393600, 41.241581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407490, 33.878716, 41.439724>,  <38.389645, 34.533176, 41.175797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407490, 33.878716, 41.439724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756550, 34.051701, 41.530460>,  <38.965988, 34.155491, 41.584900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756550, 34.051701, 41.530460>,  <38.407490, 33.878716, 41.439724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756550, 34.051701, 41.530460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119266, -0.261700, 0.957752,
		0.473554, -0.862839, -0.176795,
		0.872652, 0.432461, 0.226837,
		39.018345, 34.181438, 41.598511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889915, 33.326397, 41.737514>,  <38.407490, 33.878716, 41.439724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889915, 33.326397, 41.737514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966072, 33.686760, 41.893524>,  <39.011765, 33.902977, 41.987129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966072, 33.686760, 41.893524>,  <38.889915, 33.326397, 41.737514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966072, 33.686760, 41.893524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297815, -0.325569, 0.897391,
		0.935445, -0.287012, 0.206318,
		0.190391, 0.900904, 0.390029,
		39.023190, 33.957031, 42.010532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242889, 33.178303, 42.319080>,  <38.889915, 33.326397, 41.737514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242889, 33.178303, 42.319080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096626, 33.548904, 42.354607>,  <39.008869, 33.771263, 42.375923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096626, 33.548904, 42.354607>,  <39.242889, 33.178303, 42.319080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096626, 33.548904, 42.354607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355653, -0.227265, 0.906565,
		0.860118, 0.299909, 0.412615,
		-0.365661, 0.926501, 0.088811,
		38.986927, 33.826855, 42.381248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387779, 33.386391, 43.050648>,  <39.242889, 33.178303, 42.319080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387779, 33.386391, 43.050648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110546, 33.643112, 42.919361>,  <38.944206, 33.797146, 42.840591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110546, 33.643112, 42.919361>,  <39.387779, 33.386391, 43.050648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110546, 33.643112, 42.919361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619455, -0.297420, 0.726510,
		0.368659, 0.706846, 0.603705,
		-0.693084, 0.641802, -0.328213,
		38.902622, 33.835651, 42.820896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141670, 33.877914, 43.576660>,  <39.387779, 33.386391, 43.050648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141670, 33.877914, 43.576660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834061, 33.880714, 43.320988>,  <38.649494, 33.882393, 43.167583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834061, 33.880714, 43.320988>,  <39.141670, 33.877914, 43.576660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834061, 33.880714, 43.320988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634395, -0.130964, 0.761835,
		-0.078377, 0.991362, 0.105155,
		-0.769026, 0.007000, -0.639179,
		38.603352, 33.882812, 43.129234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617859, 34.302498, 43.924099>,  <39.141670, 33.877914, 43.576660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617859, 34.302498, 43.924099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402374, 34.119816, 43.640915>,  <38.273083, 34.010208, 43.471004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402374, 34.119816, 43.640915>,  <38.617859, 34.302498, 43.924099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402374, 34.119816, 43.640915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681653, -0.257563, 0.684843,
		-0.495117, 0.851517, -0.172564,
		-0.538710, -0.456706, -0.707963,
		38.240761, 33.982803, 43.428528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.950848, 34.547733, 44.034962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957615, 34.189793, 43.856541>,  <37.961674, 33.975029, 43.749489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957615, 34.189793, 43.856541>,  <37.950848, 34.547733, 44.034962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957615, 34.189793, 43.856541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649203, -0.349114, 0.675762,
		-0.760427, 0.278146, -0.586844,
		0.016915, -0.894849, -0.446049,
		37.962688, 33.921337, 43.722725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249283, 34.374310, 43.865749>,  <37.950848, 34.547733, 44.034962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249283, 34.374310, 43.865749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432484, 34.018730, 43.864784>,  <37.542404, 33.805382, 43.864204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432484, 34.018730, 43.864784>,  <37.249283, 34.374310, 43.865749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432484, 34.018730, 43.864784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629127, -0.326050, 0.705614,
		-0.628042, -0.321653, -0.708592,
		0.457999, -0.888950, -0.002412,
		37.569885, 33.752045, 43.864059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817711, 33.915833, 44.065762>,  <37.249283, 34.374310, 43.865749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817711, 33.915833, 44.065762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147697, 33.699177, 44.130341>,  <37.345688, 33.569183, 44.169090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147697, 33.699177, 44.130341>,  <36.817711, 33.915833, 44.065762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147697, 33.699177, 44.130341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417322, -0.391113, 0.820288,
		-0.381137, -0.744094, -0.548687,
		0.824971, -0.541621, 0.161459,
		37.395187, 33.536686, 44.178776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609219, 33.215866, 43.979458>,  <36.817711, 33.915833, 44.065762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609219, 33.215866, 43.979458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953785, 33.194130, 44.181454>,  <37.160526, 33.181087, 44.302650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953785, 33.194130, 44.181454>,  <36.609219, 33.215866, 43.979458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953785, 33.194130, 44.181454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456694, -0.517935, 0.723307,
		0.222248, -0.853693, -0.470972,
		0.861415, -0.054336, 0.504987,
		37.212208, 33.177830, 44.332951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694321, 32.476273, 44.234562>,  <36.609219, 33.215866, 43.979458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694321, 32.476273, 44.234562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923737, 32.678349, 44.492504>,  <37.061386, 32.799595, 44.647270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923737, 32.678349, 44.492504>,  <36.694321, 32.476273, 44.234562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923737, 32.678349, 44.492504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342740, -0.566995, 0.749030,
		0.744030, -0.650616, -0.152046,
		0.573541, 0.505188, 0.644854,
		37.095798, 32.829906, 44.685959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122997, 31.972795, 44.416901>,  <36.694321, 32.476273, 44.234562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122997, 31.972795, 44.416901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120811, 32.237793, 44.716518>,  <37.119499, 32.396793, 44.896290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120811, 32.237793, 44.716518>,  <37.122997, 31.972795, 44.416901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120811, 32.237793, 44.716518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285778, -0.718853, 0.633705,
		0.958280, -0.210596, 0.193256,
		-0.005467, 0.662495, 0.749046,
		37.119171, 32.436543, 44.941231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520256, 31.657530, 44.961239>,  <37.122997, 31.972795, 44.416901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520256, 31.657530, 44.961239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333397, 31.961861, 45.141426>,  <37.221283, 32.144459, 45.249538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333397, 31.961861, 45.141426>,  <37.520256, 31.657530, 44.961239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333397, 31.961861, 45.141426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138643, -0.566199, 0.812525,
		0.873242, 0.317115, 0.369981,
		-0.467147, 0.760826, 0.450464,
		37.193253, 32.190109, 45.276566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804882, 31.789259, 45.509640>,  <37.520256, 31.657530, 44.961239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804882, 31.789259, 45.509640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434258, 31.921446, 45.581493>,  <37.211884, 32.000759, 45.624607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434258, 31.921446, 45.581493>,  <37.804882, 31.789259, 45.509640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434258, 31.921446, 45.581493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079905, -0.639614, 0.764532,
		0.367550, 0.694034, 0.619050,
		-0.926565, 0.330469, 0.179633,
		37.156288, 32.020588, 45.635384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712509, 31.973667, 46.296280>,  <37.804882, 31.789259, 45.509640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712509, 31.973667, 46.296280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349670, 31.924562, 46.135231>,  <37.131966, 31.895100, 46.038601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349670, 31.924562, 46.135231>,  <37.712509, 31.973667, 46.296280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349670, 31.924562, 46.135231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263260, -0.580894, 0.770231,
		-0.328437, 0.804669, 0.494608,
		-0.907096, -0.122762, -0.402624,
		37.077541, 31.887733, 46.014442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229393, 32.107113, 46.856804>,  <37.712509, 31.973667, 46.296280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229393, 32.107113, 46.856804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031284, 31.880718, 46.593182>,  <36.912418, 31.744881, 46.435009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031284, 31.880718, 46.593182>,  <37.229393, 32.107113, 46.856804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031284, 31.880718, 46.593182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347724, -0.566060, 0.747439,
		-0.796109, 0.599358, 0.083547,
		-0.495276, -0.565991, -0.659056,
		36.882702, 31.710920, 46.395466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550728, 32.017696, 47.140675>,  <37.229393, 32.107113, 46.856804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550728, 32.017696, 47.140675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596039, 31.733547, 46.862816>,  <36.623226, 31.563057, 46.696098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596039, 31.733547, 46.862816>,  <36.550728, 32.017696, 47.140675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596039, 31.733547, 46.862816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340231, -0.684615, 0.644628,
		-0.933494, 0.163320, -0.319243,
		0.113278, -0.710373, -0.694650,
		36.630024, 31.520435, 46.654423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850567, 31.702087, 47.106491>,  <36.550728, 32.017696, 47.140675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850567, 31.702087, 47.106491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110394, 31.442348, 46.948296>,  <36.266289, 31.286505, 46.853378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110394, 31.442348, 46.948296>,  <35.850567, 31.702087, 47.106491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110394, 31.442348, 46.948296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337906, -0.712536, 0.614908,
		-0.681090, -0.265785, -0.682257,
		0.649566, -0.649347, -0.395490,
		36.305264, 31.247545, 46.829647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478199, 31.093487, 47.087502>,  <35.850567, 31.702087, 47.106491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478199, 31.093487, 47.087502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860497, 30.976358, 47.076134>,  <36.089874, 30.906082, 47.069313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860497, 30.976358, 47.076134>,  <35.478199, 31.093487, 47.087502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860497, 30.976358, 47.076134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227845, -0.797840, 0.558155,
		-0.186115, -0.526978, -0.829250,
		0.955745, -0.292821, -0.028421,
		36.147221, 30.888512, 47.067608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370365, 30.383215, 47.235703>,  <35.478199, 31.093487, 47.087502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370365, 30.383215, 47.235703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769867, 30.398876, 47.248077>,  <36.009567, 30.408272, 47.255501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769867, 30.398876, 47.248077>,  <35.370365, 30.383215, 47.235703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769867, 30.398876, 47.248077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016463, -0.843802, 0.536402,
		0.047102, -0.535225, -0.843395,
		0.998754, 0.039151, 0.030934,
		36.069492, 30.410622, 47.257359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591721, 29.702925, 47.090446>,  <35.370365, 30.383215, 47.235703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591721, 29.702925, 47.090446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871708, 29.893551, 47.303211>,  <36.039700, 30.007927, 47.430870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871708, 29.893551, 47.303211>,  <35.591721, 29.702925, 47.090446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871708, 29.893551, 47.303211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120238, -0.812798, 0.570002,
		0.703976, -0.335029, -0.626237,
		0.699972, 0.476565, 0.531907,
		36.081699, 30.036520, 47.462784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178150, 29.316818, 47.081909>,  <35.591721, 29.702925, 47.090446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178150, 29.316818, 47.081909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233074, 29.548775, 47.403126>,  <36.266029, 29.687948, 47.595856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233074, 29.548775, 47.403126>,  <36.178150, 29.316818, 47.081909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233074, 29.548775, 47.403126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247888, -0.805038, 0.538949,
		0.959008, 0.125059, -0.254290,
		0.137313, 0.579892, 0.803038,
		36.274269, 29.722742, 47.644039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736935, 29.026308, 47.432461>,  <36.178150, 29.316818, 47.081909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736935, 29.026308, 47.432461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598965, 29.256119, 47.729362>,  <36.516182, 29.394005, 47.907505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598965, 29.256119, 47.729362>,  <36.736935, 29.026308, 47.432461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598965, 29.256119, 47.729362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391204, -0.630838, 0.670076,
		0.853222, 0.521499, -0.007168,
		-0.344922, 0.574528, 0.742258,
		36.495487, 29.428476, 47.952042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266697, 29.218948, 47.927044>,  <36.736935, 29.026308, 47.432461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266697, 29.218948, 47.927044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925480, 29.231493, 48.135403>,  <36.720749, 29.239019, 48.260418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925480, 29.231493, 48.135403>,  <37.266697, 29.218948, 47.927044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925480, 29.231493, 48.135403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439646, -0.494534, 0.749765,
		0.281112, 0.868592, 0.408073,
		-0.853046, 0.031360, 0.520892,
		36.669567, 29.240902, 48.291672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524288, 29.406435, 48.588024>,  <37.266697, 29.218948, 47.927044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524288, 29.406435, 48.588024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151707, 29.269709, 48.637924>,  <36.928158, 29.187674, 48.667866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151707, 29.269709, 48.637924>,  <37.524288, 29.406435, 48.588024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151707, 29.269709, 48.637924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303754, -0.541667, 0.783792,
		-0.200336, 0.767958, 0.608364,
		-0.931450, -0.341815, 0.124754,
		36.872272, 29.167164, 48.675350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296326, 29.438482, 49.270416>,  <37.524288, 29.406435, 48.588024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296326, 29.438482, 49.270416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033924, 29.166304, 49.139790>,  <36.876484, 29.002996, 49.061413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033924, 29.166304, 49.139790>,  <37.296326, 29.438482, 49.270416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033924, 29.166304, 49.139790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243123, -0.600129, 0.762060,
		-0.714525, 0.420521, 0.559122,
		-0.656007, -0.680446, -0.326569,
		36.837120, 28.962170, 49.041821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003662, 29.193371, 49.884640>,  <37.296326, 29.438482, 49.270416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003662, 29.193371, 49.884640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918682, 28.917519, 49.607723>,  <36.867695, 28.752007, 49.441574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918682, 28.917519, 49.607723>,  <37.003662, 29.193371, 49.884640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918682, 28.917519, 49.607723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358947, -0.714015, 0.601115,
		-0.908857, -0.120788, 0.399237,
		-0.212454, -0.689632, -0.692294,
		36.854946, 28.710629, 49.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408310, 28.777945, 50.089375>,  <37.003662, 29.193371, 49.884640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408310, 28.777945, 50.089375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611702, 28.525831, 49.854706>,  <36.733738, 28.374563, 49.713905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611702, 28.525831, 49.854706>,  <36.408310, 28.777945, 50.089375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611702, 28.525831, 49.854706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030215, -0.667852, 0.743681,
		-0.860544, -0.395873, -0.320545,
		0.508480, -0.630284, -0.586677,
		36.764248, 28.336746, 49.678703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835564, 28.442657, 50.447548>,  <36.408310, 28.777945, 50.089375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835564, 28.442657, 50.447548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751934, 28.827078, 50.519844>,  <35.701756, 29.057730, 50.563221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751934, 28.827078, 50.519844>,  <35.835564, 28.442657, 50.447548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751934, 28.827078, 50.519844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478358, 0.261713, -0.838260,
		-0.852913, -0.088802, -0.514445,
		-0.209076, 0.961052, 0.180739,
		35.689213, 29.115393, 50.574066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399284, 28.859629, 49.891811>,  <35.835564, 28.442657, 50.447548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399284, 28.859629, 49.891811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668674, 29.041708, 50.124786>,  <35.830307, 29.150955, 50.264572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668674, 29.041708, 50.124786>,  <35.399284, 28.859629, 49.891811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668674, 29.041708, 50.124786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497740, 0.303288, -0.812571,
		-0.546525, 0.837146, -0.022313,
		0.673473, 0.455196, 0.582435,
		35.870716, 29.178267, 50.299519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627468, 28.977448, 50.011536>,  <35.399284, 28.859629, 49.891811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627468, 28.977448, 50.011536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252178, 28.879271, 50.109100>,  <34.027004, 28.820364, 50.167641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252178, 28.879271, 50.109100>,  <34.627468, 28.977448, 50.011536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252178, 28.879271, 50.109100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318392, 0.336281, -0.886308,
		0.135513, -0.909216, -0.393654,
		-0.938223, -0.245442, 0.243917,
		33.970711, 28.805637, 50.182274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390938, 28.587044, 49.466217>,  <34.627468, 28.977448, 50.011536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390938, 28.587044, 49.466217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067669, 28.742350, 49.643353>,  <33.873707, 28.835533, 49.749634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067669, 28.742350, 49.643353>,  <34.390938, 28.587044, 49.466217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067669, 28.742350, 49.643353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271893, 0.421033, -0.865335,
		-0.522430, -0.819745, -0.234700,
		-0.808171, 0.388264, 0.442844,
		33.825218, 28.858829, 49.776207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894463, 28.456209, 49.069584>,  <34.390938, 28.587044, 49.466217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894463, 28.456209, 49.069584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761070, 28.772715, 49.274597>,  <33.681034, 28.962618, 49.397606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761070, 28.772715, 49.274597>,  <33.894463, 28.456209, 49.069584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761070, 28.772715, 49.274597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223855, 0.461649, -0.858353,
		-0.915795, -0.400976, 0.023178,
		-0.333479, 0.791264, 0.512537,
		33.661026, 29.010094, 49.428360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411812, 28.719606, 48.584610>,  <33.894463, 28.456209, 49.069584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411812, 28.719606, 48.584610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.448738, 29.008358, 48.858944>,  <33.470894, 29.181608, 49.023544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.448738, 29.008358, 48.858944>,  <33.411812, 28.719606, 48.584610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448738, 29.008358, 48.858944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201309, 0.688084, -0.697148,
		-0.975168, -0.073705, 0.208843,
		0.092318, 0.721878, 0.685835,
		33.476433, 29.224922, 49.064693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878521, 29.108641, 48.469109>,  <33.411812, 28.719606, 48.584610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878521, 29.108641, 48.469109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139351, 29.350464, 48.652111>,  <33.295849, 29.495558, 48.761913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139351, 29.350464, 48.652111>,  <32.878521, 29.108641, 48.469109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139351, 29.350464, 48.652111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175761, 0.707548, -0.684459,
		-0.737499, 0.365907, 0.567632,
		0.652076, 0.604556, 0.457504,
		33.334972, 29.531830, 48.789364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453182, 29.728378, 48.508266>,  <32.878521, 29.108641, 48.469109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453182, 29.728378, 48.508266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841026, 29.812634, 48.558037>,  <33.073734, 29.863186, 48.587898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841026, 29.812634, 48.558037>,  <32.453182, 29.728378, 48.508266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841026, 29.812634, 48.558037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066020, 0.715026, -0.695973,
		-0.235564, 0.666611, 0.707206,
		0.969614, 0.210636, 0.124424,
		33.131912, 29.875824, 48.595364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451363, 30.420071, 48.403404>,  <32.453182, 29.728378, 48.508266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451363, 30.420071, 48.403404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837044, 30.323156, 48.360302>,  <33.068451, 30.265009, 48.334438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837044, 30.323156, 48.360302>,  <32.451363, 30.420071, 48.403404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837044, 30.323156, 48.360302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043440, 0.545212, -0.837172,
		0.261585, 0.802522, 0.536220,
		0.964202, -0.242285, -0.107758,
		33.126305, 30.250471, 48.327976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801842, 31.070824, 48.267292>,  <32.451363, 30.420071, 48.403404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801842, 31.070824, 48.267292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060188, 30.791580, 48.143681>,  <33.215199, 30.624035, 48.069515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060188, 30.791580, 48.143681>,  <32.801842, 31.070824, 48.267292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060188, 30.791580, 48.143681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308462, 0.608892, -0.730823,
		0.698357, 0.376693, 0.608605,
		0.645870, -0.698107, -0.309029,
		33.253948, 30.582148, 48.050972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579487, 31.342739, 48.294804>,  <32.801842, 31.070824, 48.267292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579487, 31.342739, 48.294804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543694, 31.043543, 48.031746>,  <33.522217, 30.864025, 47.873909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543694, 31.043543, 48.031746>,  <33.579487, 31.342739, 48.294804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543694, 31.043543, 48.031746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271475, 0.616979, -0.738673,
		0.958276, -0.244636, 0.147850,
		-0.089486, -0.747991, -0.657649,
		33.516850, 30.819145, 47.834450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193649, 31.311230, 47.902966>,  <33.579487, 31.342739, 48.294804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193649, 31.311230, 47.902966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991787, 31.070810, 47.655075>,  <33.870670, 30.926558, 47.506340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991787, 31.070810, 47.655075>,  <34.193649, 31.311230, 47.902966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991787, 31.070810, 47.655075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344961, 0.517661, -0.782962,
		0.791409, -0.608906, -0.053900,
		-0.504652, -0.601050, -0.619730,
		33.840393, 30.890495, 47.469154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659195, 31.035738, 47.472336>,  <34.193649, 31.311230, 47.902966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659195, 31.035738, 47.472336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314739, 31.012421, 47.270329>,  <34.108067, 30.998430, 47.149124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314739, 31.012421, 47.270329>,  <34.659195, 31.035738, 47.472336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314739, 31.012421, 47.270329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403088, 0.527027, -0.748173,
		0.309767, -0.847847, -0.430348,
		-0.861141, -0.058291, -0.505013,
		34.056396, 30.994932, 47.118824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839340, 30.782536, 46.692783>,  <34.659195, 31.035738, 47.472336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839340, 30.782536, 46.692783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476753, 30.950251, 46.672733>,  <34.259201, 31.050880, 46.660702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476753, 30.950251, 46.672733>,  <34.839340, 30.782536, 46.692783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476753, 30.950251, 46.672733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334121, 0.639570, -0.692325,
		-0.258225, -0.644319, -0.719843,
		-0.906467, 0.419290, -0.050128,
		34.204811, 31.076038, 46.657696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740765, 30.814402, 45.996235>,  <34.839340, 30.782536, 46.692783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740765, 30.814402, 45.996235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475224, 31.076969, 46.139572>,  <34.315899, 31.234510, 46.225574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475224, 31.076969, 46.139572>,  <34.740765, 30.814402, 45.996235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475224, 31.076969, 46.139572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243175, 0.642583, -0.726604,
		-0.707222, -0.395220, -0.586207,
		-0.663855, 0.656421, 0.358341,
		34.276066, 31.273895, 46.247074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391636, 31.039291, 45.408722>,  <34.740765, 30.814402, 45.996235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391636, 31.039291, 45.408722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360043, 31.312843, 45.698845>,  <34.341087, 31.476974, 45.872917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360043, 31.312843, 45.698845>,  <34.391636, 31.039291, 45.408722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360043, 31.312843, 45.698845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092245, 0.729470, -0.677764,
		-0.992599, 0.013371, -0.120704,
		-0.078987, 0.683882, 0.725304,
		34.336346, 31.518007, 45.916435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903446, 31.527987, 45.072113>,  <34.391636, 31.039291, 45.408722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903446, 31.527987, 45.072113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121788, 31.737246, 45.333908>,  <34.252792, 31.862801, 45.490986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121788, 31.737246, 45.333908>,  <33.903446, 31.527987, 45.072113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121788, 31.737246, 45.333908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026395, 0.770003, -0.637494,
		-0.837463, 0.365256, 0.406502,
		0.545856, 0.523148, 0.654490,
		34.285545, 31.894190, 45.530254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682644, 32.237404, 44.892223>,  <33.903446, 31.527987, 45.072113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682644, 32.237404, 44.892223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993134, 32.288486, 45.139179>,  <34.179428, 32.319134, 45.287354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993134, 32.288486, 45.139179>,  <33.682644, 32.237404, 44.892223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993134, 32.288486, 45.139179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260270, 0.827020, -0.498294,
		-0.574227, 0.547475, 0.608715,
		0.776223, 0.127703, 0.617389,
		34.226002, 32.326797, 45.324394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645767, 32.926052, 45.150867>,  <33.682644, 32.237404, 44.892223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645767, 32.926052, 45.150867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019516, 32.784103, 45.138115>,  <34.243767, 32.698933, 45.130463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019516, 32.784103, 45.138115>,  <33.645767, 32.926052, 45.150867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019516, 32.784103, 45.138115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267082, 0.756809, -0.596581,
		0.235837, 0.548913, 0.801920,
		0.934371, -0.354874, -0.031879,
		34.299828, 32.677643, 45.128551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102360, 33.553486, 45.220676>,  <33.645767, 32.926052, 45.150867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102360, 33.553486, 45.220676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350368, 33.274693, 45.076569>,  <34.499172, 33.107418, 44.990105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350368, 33.274693, 45.076569>,  <34.102360, 33.553486, 45.220676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350368, 33.274693, 45.076569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343325, 0.653906, -0.674192,
		0.705481, 0.294322, 0.644725,
		0.620019, -0.696980, -0.360271,
		34.536373, 33.065598, 44.968487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747334, 33.875507, 45.170418>,  <34.102360, 33.553486, 45.220676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747334, 33.875507, 45.170418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749638, 33.552151, 44.934971>,  <34.751019, 33.358135, 44.793705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749638, 33.552151, 44.934971>,  <34.747334, 33.875507, 45.170418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749638, 33.552151, 44.934971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327112, 0.557764, -0.762822,
		0.944968, -0.188148, 0.267648,
		0.005761, -0.808393, -0.588615,
		34.751366, 33.309631, 44.758385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370178, 33.965839, 44.725140>,  <34.747334, 33.875507, 45.170418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370178, 33.965839, 44.725140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128586, 33.710358, 44.534447>,  <34.983631, 33.557068, 44.420033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128586, 33.710358, 44.534447>,  <35.370178, 33.965839, 44.725140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128586, 33.710358, 44.534447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050832, 0.566070, -0.822789,
		0.795379, -0.521179, -0.309427,
		-0.603977, -0.638701, -0.476732,
		34.947392, 33.518749, 44.391426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.960804, 43.543221, 36.522926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.864452, 43.477074, 36.140381>,  <42.806641, 43.437386, 35.910854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.864452, 43.477074, 36.140381>,  <42.960804, 43.543221, 36.522926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864452, 43.477074, 36.140381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366883, -0.927778, 0.068015,
		-0.898539, -0.334489, 0.284155,
		-0.240882, -0.165365, -0.956363,
		42.792187, 43.427464, 35.853474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878265, 42.873493, 36.525558>,  <42.960804, 43.543221, 36.522926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878265, 42.873493, 36.525558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.864475, 42.948074, 36.132816>,  <42.856201, 42.992821, 35.897171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.864475, 42.948074, 36.132816>,  <42.878265, 42.873493, 36.525558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864475, 42.948074, 36.132816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277049, -0.942157, -0.188638,
		-0.960237, -0.278526, -0.019173,
		-0.034476, 0.186449, -0.981859,
		42.854134, 43.004009, 35.838257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441219, 42.303993, 36.237556>,  <42.878265, 42.873493, 36.525558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441219, 42.303993, 36.237556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.694736, 42.467583, 35.974937>,  <42.846848, 42.565735, 35.817368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.694736, 42.467583, 35.974937>,  <42.441219, 42.303993, 36.237556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694736, 42.467583, 35.974937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390311, -0.901899, -0.185028,
		-0.667809, -0.138987, -0.731241,
		0.633789, 0.408975, -0.656545,
		42.884872, 42.590275, 35.777973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250992, 42.019356, 35.536194>,  <42.441219, 42.303993, 36.237556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250992, 42.019356, 35.536194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624203, 42.153168, 35.483208>,  <42.848129, 42.233456, 35.451416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624203, 42.153168, 35.483208>,  <42.250992, 42.019356, 35.536194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624203, 42.153168, 35.483208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221416, -0.824037, -0.521477,
		-0.283605, 0.457224, -0.842920,
		0.933029, 0.334530, -0.132465,
		42.904110, 42.253525, 35.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345451, 41.671085, 34.939823>,  <42.250992, 42.019356, 35.536194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345451, 41.671085, 34.939823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705059, 41.803856, 35.054077>,  <42.920822, 41.883518, 35.122631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705059, 41.803856, 35.054077>,  <42.345451, 41.671085, 34.939823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705059, 41.803856, 35.054077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435481, -0.746235, -0.503477,
		0.046036, 0.577026, -0.815427,
		0.899020, 0.331925, 0.285637,
		42.974766, 41.903435, 35.139767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713539, 41.851944, 34.390186>,  <42.345451, 41.671085, 34.939823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713539, 41.851944, 34.390186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994358, 41.731956, 34.648533>,  <43.162849, 41.659962, 34.803539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994358, 41.731956, 34.648533>,  <42.713539, 41.851944, 34.390186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994358, 41.731956, 34.648533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146844, -0.826480, -0.543478,
		0.696822, 0.476390, -0.536182,
		0.702051, -0.299972, 0.645864,
		43.204975, 41.641964, 34.842293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354706, 41.630943, 33.938881>,  <42.713539, 41.851944, 34.390186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354706, 41.630943, 33.938881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371880, 41.463612, 34.301792>,  <43.382183, 41.363213, 34.519539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371880, 41.463612, 34.301792>,  <43.354706, 41.630943, 33.938881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371880, 41.463612, 34.301792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344908, -0.846079, -0.406435,
		0.937654, 0.330379, 0.107957,
		0.042937, -0.418330, 0.907280,
		43.384762, 41.338112, 34.573975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086784, 41.420219, 33.930336>,  <43.354706, 41.630943, 33.938881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086784, 41.420219, 33.930336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859100, 41.217564, 34.189358>,  <43.722492, 41.095970, 34.344769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859100, 41.217564, 34.189358>,  <44.086784, 41.420219, 33.930336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859100, 41.217564, 34.189358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433935, -0.854081, -0.286786,
		0.698359, 0.117755, 0.705995,
		-0.569206, -0.506636, 0.647553,
		43.688339, 41.065575, 34.383625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510391, 40.917900, 34.125507>,  <44.086784, 41.420219, 33.930336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510391, 40.917900, 34.125507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.160805, 40.755867, 34.232906>,  <43.951054, 40.658649, 34.297348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.160805, 40.755867, 34.232906>,  <44.510391, 40.917900, 34.125507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160805, 40.755867, 34.232906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382809, -0.914180, -0.133159,
		0.299398, -0.013592, 0.954031,
		-0.873967, -0.405080, 0.268501,
		43.898613, 40.634342, 34.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660770, 40.466881, 34.562157>,  <44.510391, 40.917900, 34.125507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660770, 40.466881, 34.562157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294067, 40.346905, 34.456638>,  <44.074043, 40.274921, 34.393326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294067, 40.346905, 34.456638>,  <44.660770, 40.466881, 34.562157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294067, 40.346905, 34.456638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338081, -0.934363, -0.112545,
		-0.212728, -0.192362, 0.957989,
		-0.916759, -0.299937, -0.263800,
		44.019039, 40.256924, 34.377499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531116, 39.851387, 34.859974>,  <44.660770, 40.466881, 34.562157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531116, 39.851387, 34.859974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263569, 39.861073, 34.562778>,  <44.103039, 39.866882, 34.384460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263569, 39.861073, 34.562778>,  <44.531116, 39.851387, 34.859974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263569, 39.861073, 34.562778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182132, -0.963669, -0.195371,
		-0.720724, -0.265999, 0.640158,
		-0.668869, 0.024215, -0.742986,
		44.062908, 39.868336, 34.339882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148071, 39.266029, 34.991550>,  <44.531116, 39.851387, 34.859974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148071, 39.266029, 34.991550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100334, 39.346184, 34.602581>,  <44.071693, 39.394276, 34.369202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100334, 39.346184, 34.602581>,  <44.148071, 39.266029, 34.991550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100334, 39.346184, 34.602581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092263, -0.972945, -0.211815,
		-0.988557, -0.114997, 0.097626,
		-0.119343, 0.200384, -0.972421,
		44.064533, 39.406300, 34.310856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696552, 38.730942, 34.689480>,  <44.148071, 39.266029, 34.991550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696552, 38.730942, 34.689480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870155, 38.890427, 34.366329>,  <43.974319, 38.986118, 34.172440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870155, 38.890427, 34.366329>,  <43.696552, 38.730942, 34.689480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870155, 38.890427, 34.366329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092469, -0.911716, -0.400279,
		-0.896150, 0.099022, -0.432562,
		0.434010, 0.398709, -0.807878,
		44.000359, 39.010040, 34.123966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394005, 38.478333, 34.112698>,  <43.696552, 38.730942, 34.689480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394005, 38.478333, 34.112698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749794, 38.593914, 33.971077>,  <43.963268, 38.663265, 33.886105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749794, 38.593914, 33.971077>,  <43.394005, 38.478333, 34.112698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749794, 38.593914, 33.971077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127205, -0.900655, -0.415500,
		-0.438936, 0.324538, -0.837861,
		0.889468, 0.288958, -0.354047,
		44.016636, 38.680603, 33.864864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447548, 38.097553, 33.669205>,  <43.394005, 38.478333, 34.112698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447548, 38.097553, 33.669205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832195, 38.204006, 33.695957>,  <44.062984, 38.267879, 33.712009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832195, 38.204006, 33.695957>,  <43.447548, 38.097553, 33.669205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832195, 38.204006, 33.695957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271486, -0.887238, -0.372967,
		-0.039923, 0.376806, -0.925431,
		0.961614, 0.266131, 0.066877,
		44.120678, 38.283844, 33.716019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670887, 37.728561, 33.151783>,  <43.447548, 38.097553, 33.669205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670887, 37.728561, 33.151783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000835, 37.826157, 33.355770>,  <44.198803, 37.884712, 33.478161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000835, 37.826157, 33.355770>,  <43.670887, 37.728561, 33.151783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000835, 37.826157, 33.355770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373153, -0.912627, -0.166939,
		0.424677, 0.327997, -0.843841,
		0.824868, 0.243987, 0.509965,
		44.248295, 37.899353, 33.508759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159618, 37.409641, 32.783916>,  <43.670887, 37.728561, 33.151783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159618, 37.409641, 32.783916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.347366, 37.465866, 33.132614>,  <44.460014, 37.499603, 33.341831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.347366, 37.465866, 33.132614>,  <44.159618, 37.409641, 32.783916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347366, 37.465866, 33.132614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432585, -0.897265, -0.088233,
		0.769783, 0.418517, -0.481951,
		0.469365, 0.140565, 0.871744,
		44.488174, 37.508034, 33.394138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891087, 37.363327, 32.673908>,  <44.159618, 37.409641, 32.783916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891087, 37.363327, 32.673908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817745, 37.253399, 33.051449>,  <44.773743, 37.187443, 33.277973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817745, 37.253399, 33.051449>,  <44.891087, 37.363327, 32.673908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817745, 37.253399, 33.051449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402756, -0.896849, -0.182893,
		0.896756, 0.346609, 0.275120,
		-0.183349, -0.274817, 0.943853,
		44.762741, 37.170956, 33.334606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495571, 36.944290, 32.761143>,  <44.891087, 37.363327, 32.673908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495571, 36.944290, 32.761143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.249538, 36.832653, 33.056110>,  <45.101917, 36.765671, 33.233089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.249538, 36.832653, 33.056110>,  <45.495571, 36.944290, 32.761143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249538, 36.832653, 33.056110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340480, -0.937579, -0.070847,
		0.711158, 0.207498, 0.671713,
		-0.615084, -0.279088, 0.737416,
		45.065014, 36.748928, 33.277336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796661, 36.418213, 33.223843>,  <45.495571, 36.944290, 32.761143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796661, 36.418213, 33.223843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404678, 36.355160, 33.272564>,  <45.169487, 36.317329, 33.301796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404678, 36.355160, 33.272564>,  <45.796661, 36.418213, 33.223843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404678, 36.355160, 33.272564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149512, -0.986048, -0.073183,
		0.131643, -0.053505, 0.989852,
		-0.979957, -0.157629, 0.121807,
		45.110691, 36.307873, 33.309105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764843, 35.885208, 33.702835>,  <45.796661, 36.418213, 33.223843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764843, 35.885208, 33.702835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400028, 35.896240, 33.539162>,  <45.181141, 35.902859, 33.440960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400028, 35.896240, 33.539162>,  <45.764843, 35.885208, 33.702835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400028, 35.896240, 33.539162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055076, -0.980459, -0.188856,
		-0.406394, -0.194779, 0.892695,
		-0.912036, 0.027584, -0.409180,
		45.126419, 35.904514, 33.416409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124458, 36.251328, 34.264553>,  <45.764843, 35.885208, 33.702835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124458, 36.251328, 34.264553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.454315, 36.267441, 34.490238>,  <46.652229, 36.277107, 34.625648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.454315, 36.267441, 34.490238>,  <46.124458, 36.251328, 34.264553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454315, 36.267441, 34.490238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502622, 0.509756, 0.698227,
		-0.259488, -0.859376, 0.440612,
		0.824644, 0.040280, 0.564217,
		46.701710, 36.279526, 34.659504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879295, 36.148705, 35.014450>,  <46.124458, 36.251328, 34.264553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879295, 36.148705, 35.014450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.238316, 36.323284, 34.989384>,  <46.453728, 36.428032, 34.974346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.238316, 36.323284, 34.989384>,  <45.879295, 36.148705, 35.014450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238316, 36.323284, 34.989384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292288, 0.695353, 0.656545,
		0.330119, -0.570964, 0.751680,
		0.897546, 0.436445, -0.062663,
		46.507580, 36.454216, 34.970585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139946, 36.121510, 35.696182>,  <45.879295, 36.148705, 35.014450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139946, 36.121510, 35.696182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.309582, 36.418251, 35.488415>,  <46.411362, 36.596298, 35.363754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.309582, 36.418251, 35.488415>,  <46.139946, 36.121510, 35.696182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309582, 36.418251, 35.488415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287976, 0.654252, 0.699302,
		0.858615, -0.146985, 0.491097,
		0.424088, 0.741855, -0.519423,
		46.436810, 36.640808, 35.332588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493481, 36.483036, 36.200588>,  <46.139946, 36.121510, 35.696182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493481, 36.483036, 36.200588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.457058, 36.726894, 35.885620>,  <46.435204, 36.873211, 35.696640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.457058, 36.726894, 35.885620>,  <46.493481, 36.483036, 36.200588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457058, 36.726894, 35.885620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296786, 0.738165, 0.605830,
		0.950593, 0.288861, 0.113721,
		-0.091056, 0.609649, -0.787424,
		46.429741, 36.909790, 35.649391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893059, 37.049202, 36.448833>,  <46.493481, 36.483036, 36.200588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893059, 37.049202, 36.448833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.640190, 37.161583, 36.159996>,  <46.488468, 37.229012, 35.986694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.640190, 37.161583, 36.159996>,  <46.893059, 37.049202, 36.448833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640190, 37.161583, 36.159996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236113, 0.817769, 0.524884,
		0.737977, 0.502314, -0.450634,
		-0.632171, 0.280952, -0.722098,
		46.450539, 37.245869, 35.943367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075020, 37.732563, 36.259426>,  <46.893059, 37.049202, 36.448833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075020, 37.732563, 36.259426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.690250, 37.675999, 36.165867>,  <46.459389, 37.642059, 36.109734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.690250, 37.675999, 36.165867>,  <47.075020, 37.732563, 36.259426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.690250, 37.675999, 36.165867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253478, 0.781647, 0.569892,
		0.102236, 0.607480, -0.787728,
		-0.961923, -0.141408, -0.233895,
		46.401672, 37.633575, 36.095699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.821808, 38.389412, 36.263588>,  <47.075020, 37.732563, 36.259426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.821808, 38.389412, 36.263588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.488964, 38.168049, 36.278236>,  <46.289257, 38.035233, 36.287025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.488964, 38.168049, 36.278236>,  <46.821808, 38.389412, 36.263588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488964, 38.168049, 36.278236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471626, 0.740791, 0.478328,
		-0.291839, 0.380748, -0.877417,
		-0.832106, -0.553407, 0.036621,
		46.239334, 38.002026, 36.289223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369957, 38.689293, 35.902985>,  <46.821808, 38.389412, 36.263588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369957, 38.689293, 35.902985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167366, 38.485641, 36.181343>,  <46.045811, 38.363449, 36.348358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167366, 38.485641, 36.181343>,  <46.369957, 38.689293, 35.902985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167366, 38.485641, 36.181343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564495, 0.805854, 0.178733,
		-0.651788, -0.302305, -0.695546,
		-0.506477, -0.509128, 0.695895,
		46.015423, 38.332905, 36.390110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753296, 38.925079, 35.817905>,  <46.369957, 38.689293, 35.902985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753296, 38.925079, 35.817905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.705482, 38.744709, 36.171715>,  <45.676792, 38.636486, 36.383999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.705482, 38.744709, 36.171715>,  <45.753296, 38.925079, 35.817905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705482, 38.744709, 36.171715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530444, 0.782101, 0.327028,
		-0.839250, -0.430097, -0.332680,
		-0.119536, -0.450926, 0.884520,
		45.669621, 38.609432, 36.437073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168129, 39.120670, 35.990417>,  <45.753296, 38.925079, 35.817905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168129, 39.120670, 35.990417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313133, 39.004017, 36.344486>,  <45.400135, 38.934025, 36.556927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313133, 39.004017, 36.344486>,  <45.168129, 39.120670, 35.990417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313133, 39.004017, 36.344486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394773, 0.812315, 0.429301,
		-0.844238, -0.505071, 0.179347,
		0.362513, -0.291631, 0.885175,
		45.421886, 38.916527, 36.610039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664139, 39.399609, 36.409904>,  <45.168129, 39.120670, 35.990417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664139, 39.399609, 36.409904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978348, 39.324493, 36.645767>,  <45.166874, 39.279427, 36.787285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978348, 39.324493, 36.645767>,  <44.664139, 39.399609, 36.409904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978348, 39.324493, 36.645767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293010, 0.726405, 0.621676,
		-0.545068, -0.661115, 0.515584,
		0.785522, -0.187785, 0.589653,
		45.214005, 39.268158, 36.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417923, 39.162243, 37.072899>,  <44.664139, 39.399609, 36.409904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417923, 39.162243, 37.072899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.774277, 39.341896, 37.100018>,  <44.988091, 39.449688, 37.116287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.774277, 39.341896, 37.100018>,  <44.417923, 39.162243, 37.072899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774277, 39.341896, 37.100018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422374, 0.764244, 0.487371,
		0.167085, -0.462827, 0.870559,
		0.890889, 0.449134, 0.067793,
		45.041542, 39.476635, 37.120354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433689, 39.419701, 37.746803>,  <44.417923, 39.162243, 37.072899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433689, 39.419701, 37.746803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727600, 39.623909, 37.568153>,  <44.903946, 39.746433, 37.460964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727600, 39.623909, 37.568153>,  <44.433689, 39.419701, 37.746803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727600, 39.623909, 37.568153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178964, 0.781014, 0.598322,
		0.654272, -0.359705, 0.665237,
		0.734779, 0.510519, -0.446621,
		44.948032, 39.777065, 37.434166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781620, 39.687344, 38.342289>,  <44.433689, 39.419701, 37.746803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781620, 39.687344, 38.342289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865845, 39.895611, 38.011333>,  <44.916378, 40.020573, 37.812759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865845, 39.895611, 38.011333>,  <44.781620, 39.687344, 38.342289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865845, 39.895611, 38.011333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191487, 0.851932, 0.487386,
		0.958643, 0.055810, 0.279085,
		0.210561, 0.520670, -0.827385,
		44.929012, 40.051811, 37.763119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201580, 40.309628, 38.602253>,  <44.781620, 39.687344, 38.342289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201580, 40.309628, 38.602253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049580, 40.389847, 38.241058>,  <44.958378, 40.437977, 38.024342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049580, 40.389847, 38.241058>,  <45.201580, 40.309628, 38.602253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049580, 40.389847, 38.241058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288936, 0.901629, 0.321841,
		0.878699, 0.383205, -0.284677,
		-0.380004, 0.200548, -0.902982,
		44.935577, 40.450012, 37.970165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469700, 41.013401, 38.287743>,  <45.201580, 40.309628, 38.602253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469700, 41.013401, 38.287743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.118076, 40.944733, 38.109852>,  <44.907101, 40.903534, 38.003117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.118076, 40.944733, 38.109852>,  <45.469700, 41.013401, 38.287743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118076, 40.944733, 38.109852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231195, 0.969377, 0.082802,
		0.416891, 0.175606, -0.891832,
		-0.879062, -0.171667, -0.444724,
		44.854359, 40.893234, 37.976433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293995, 41.738041, 38.150280>,  <45.469700, 41.013401, 38.287743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293995, 41.738041, 38.150280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947510, 41.578484, 38.029911>,  <44.739616, 41.482750, 37.957691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947510, 41.578484, 38.029911>,  <45.293995, 41.738041, 38.150280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947510, 41.578484, 38.029911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451250, 0.883129, 0.128282,
		0.214579, 0.246909, -0.944982,
		-0.866216, -0.398896, -0.300919,
		44.687645, 41.458817, 37.939636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968910, 42.276127, 37.680283>,  <45.293995, 41.738041, 38.150280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968910, 42.276127, 37.680283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.672279, 42.030533, 37.788425>,  <44.494301, 41.883175, 37.853310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.672279, 42.030533, 37.788425>,  <44.968910, 42.276127, 37.680283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672279, 42.030533, 37.788425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578800, 0.789305, 0.204910,
		-0.339203, -0.004525, -0.940702,
		-0.741574, -0.613985, 0.270353,
		44.449806, 41.846336, 37.869530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307968, 42.578125, 37.343407>,  <44.968910, 42.276127, 37.680283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307968, 42.578125, 37.343407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216602, 42.344635, 37.655071>,  <44.161785, 42.204540, 37.842068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216602, 42.344635, 37.655071>,  <44.307968, 42.578125, 37.343407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216602, 42.344635, 37.655071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697658, 0.656345, 0.287201,
		-0.679045, -0.477986, -0.557160,
		-0.228411, -0.583729, 0.779159,
		44.148079, 42.169518, 37.888821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544571, 42.617252, 37.379318>,  <44.307968, 42.578125, 37.343407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544571, 42.617252, 37.379318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643494, 42.502407, 37.749489>,  <43.702850, 42.433502, 37.971592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643494, 42.502407, 37.749489>,  <43.544571, 42.617252, 37.379318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643494, 42.502407, 37.749489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535262, 0.755647, 0.377481,
		-0.807671, -0.588698, 0.033202,
		0.247311, -0.287109, 0.925422,
		43.717686, 42.416275, 38.027115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990898, 42.706970, 37.734047>,  <43.544571, 42.617252, 37.379318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990898, 42.706970, 37.734047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242393, 42.639637, 38.037716>,  <43.393291, 42.599236, 38.219917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242393, 42.639637, 38.037716>,  <42.990898, 42.706970, 37.734047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242393, 42.639637, 38.037716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498327, 0.662247, 0.559553,
		-0.596953, -0.730132, 0.332497,
		0.628742, -0.168335, 0.759175,
		43.431015, 42.589138, 38.265469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.329193, 34.187229, 41.533073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944561, 34.258953, 41.449928>,  <39.713783, 34.301987, 41.400040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944561, 34.258953, 41.449928>,  <40.329193, 34.187229, 41.533073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944561, 34.258953, 41.449928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229542, 0.109879, -0.967077,
		-0.150570, -0.977636, -0.146818,
		-0.961581, 0.179314, -0.207864,
		39.656086, 34.312748, 41.387569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173180, 33.714878, 40.870800>,  <40.329193, 34.187229, 41.533073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173180, 33.714878, 40.870800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856297, 33.958183, 40.890499>,  <39.666168, 34.104168, 40.902321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856297, 33.958183, 40.890499>,  <40.173180, 33.714878, 40.870800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856297, 33.958183, 40.890499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063738, -0.002206, -0.997964,
		-0.606917, -0.793732, 0.040517,
		-0.792205, 0.608264, 0.049252,
		39.618633, 34.140663, 40.905273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739235, 33.633911, 40.317089>,  <40.173180, 33.714878, 40.870800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739235, 33.633911, 40.317089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606983, 34.008572, 40.363350>,  <39.527634, 34.233368, 40.391106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606983, 34.008572, 40.363350>,  <39.739235, 33.633911, 40.317089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606983, 34.008572, 40.363350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001208, 0.122966, -0.992410,
		-0.943761, -0.327977, -0.041787,
		-0.330626, 0.936649, 0.115654,
		39.507797, 34.289566, 40.398045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192211, 33.728764, 39.786175>,  <39.739235, 33.633911, 40.317089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192211, 33.728764, 39.786175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303753, 34.101170, 39.880375>,  <39.370678, 34.324612, 39.936893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303753, 34.101170, 39.880375>,  <39.192211, 33.728764, 39.786175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303753, 34.101170, 39.880375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017080, 0.249996, -0.968096,
		-0.960182, 0.265934, 0.085613,
		0.278853, 0.931011, 0.235500,
		39.387409, 34.380474, 39.951023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756691, 34.276714, 39.413376>,  <39.192211, 33.728764, 39.786175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756691, 34.276714, 39.413376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083302, 34.482029, 39.519066>,  <39.279266, 34.605217, 39.582481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083302, 34.482029, 39.519066>,  <38.756691, 34.276714, 39.413376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083302, 34.482029, 39.519066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003453, 0.453340, -0.891331,
		-0.577297, 0.728708, 0.368392,
		0.816527, 0.513290, 0.264228,
		39.328259, 34.636017, 39.598335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636837, 35.004955, 39.170261>,  <38.756691, 34.276714, 39.413376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636837, 35.004955, 39.170261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031807, 34.966599, 39.220547>,  <39.268787, 34.943584, 39.250717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031807, 34.966599, 39.220547>,  <38.636837, 35.004955, 39.170261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031807, 34.966599, 39.220547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154300, 0.410898, -0.898529,
		0.034504, 0.906625, 0.420525,
		0.987421, -0.095890, 0.125715,
		39.328033, 34.937832, 39.258263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997009, 35.695663, 39.049904>,  <38.636837, 35.004955, 39.170261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997009, 35.695663, 39.049904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260632, 35.403187, 38.979473>,  <39.418804, 35.227699, 38.937214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260632, 35.403187, 38.979473>,  <38.997009, 35.695663, 39.049904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260632, 35.403187, 38.979473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207223, 0.401591, -0.892067,
		0.722987, 0.551431, 0.416190,
		0.659052, -0.731196, -0.176076,
		39.458347, 35.183826, 38.926651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584492, 36.035770, 38.752148>,  <38.997009, 35.695663, 39.049904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584492, 36.035770, 38.752148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639980, 35.652687, 38.651310>,  <39.673275, 35.422836, 38.590805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639980, 35.652687, 38.651310>,  <39.584492, 36.035770, 38.752148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639980, 35.652687, 38.651310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130925, 0.270059, -0.953901,
		0.981639, 0.099321, 0.162851,
		0.138722, -0.957707, -0.252097,
		39.681599, 35.365376, 38.575680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206848, 36.048847, 38.418190>,  <39.584492, 36.035770, 38.752148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206848, 36.048847, 38.418190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049702, 35.701244, 38.297871>,  <39.955414, 35.492683, 38.225681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049702, 35.701244, 38.297871>,  <40.206848, 36.048847, 38.418190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049702, 35.701244, 38.297871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169571, 0.253029, -0.952482,
		0.903827, -0.425203, 0.047953,
		-0.392865, -0.869010, -0.300796,
		39.931843, 35.440540, 38.207630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668034, 35.691395, 38.116573>,  <40.206848, 36.048847, 38.418190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668034, 35.691395, 38.116573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318584, 35.553486, 37.979218>,  <40.108917, 35.470741, 37.896805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318584, 35.553486, 37.979218>,  <40.668034, 35.691395, 38.116573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318584, 35.553486, 37.979218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276202, 0.229649, -0.933260,
		0.400623, -0.910161, -0.105399,
		-0.873621, -0.344774, -0.343391,
		40.056499, 35.450054, 37.876202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776630, 35.364452, 37.512745>,  <40.668034, 35.691395, 38.116573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776630, 35.364452, 37.512745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381439, 35.410130, 37.471058>,  <40.144325, 35.437534, 37.446045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381439, 35.410130, 37.471058>,  <40.776630, 35.364452, 37.512745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381439, 35.410130, 37.471058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147492, 0.494199, -0.856746,
		-0.046330, -0.861817, -0.505100,
		-0.987978, 0.114191, -0.104214,
		40.085045, 35.444386, 37.439793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543682, 35.096706, 36.760395>,  <40.776630, 35.364452, 37.512745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543682, 35.096706, 36.760395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300106, 35.375507, 36.911854>,  <40.153961, 35.542789, 37.002728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300106, 35.375507, 36.911854>,  <40.543682, 35.096706, 36.760395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300106, 35.375507, 36.911854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104114, 0.543456, -0.832956,
		-0.786352, -0.467800, -0.403502,
		-0.608942, 0.697007, 0.378643,
		40.117424, 35.584610, 37.025448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092972, 35.254345, 36.289951>,  <40.543682, 35.096706, 36.760395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092972, 35.254345, 36.289951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369759, 34.976765, 36.210339>,  <41.535831, 34.810215, 36.162571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369759, 34.976765, 36.210339>,  <41.092972, 35.254345, 36.289951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369759, 34.976765, 36.210339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227377, 0.052173, -0.972408,
		0.685191, 0.718126, -0.121688,
		0.691963, -0.693954, -0.199034,
		41.577347, 34.768578, 36.150627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473938, 35.504860, 35.739830>,  <41.092972, 35.254345, 36.289951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473938, 35.504860, 35.739830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510944, 35.106579, 35.738167>,  <41.533150, 34.867611, 35.737167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510944, 35.106579, 35.738167>,  <41.473938, 35.504860, 35.739830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510944, 35.106579, 35.738167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095383, -0.004703, -0.995430,
		0.991132, 0.092494, -0.095409,
		0.092520, -0.995702, -0.004161,
		41.538700, 34.807869, 35.736919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300922, 34.970394, 35.254738>,  <41.473938, 35.504860, 35.739830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300922, 34.970394, 35.254738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564289, 34.715912, 35.093872>,  <41.722309, 34.563225, 34.997353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564289, 34.715912, 35.093872>,  <41.300922, 34.970394, 35.254738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564289, 34.715912, 35.093872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207426, -0.667015, 0.715588,
		-0.723512, -0.387731, -0.571135,
		0.658411, -0.636204, -0.402168,
		41.761814, 34.525051, 34.973221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997730, 34.298416, 35.222286>,  <41.300922, 34.970394, 35.254738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997730, 34.298416, 35.222286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387253, 34.208027, 35.212227>,  <41.620968, 34.153793, 35.206192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387253, 34.208027, 35.212227>,  <40.997730, 34.298416, 35.222286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387253, 34.208027, 35.212227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152645, -0.731732, 0.664280,
		-0.168513, -0.643043, -0.747061,
		0.973808, -0.225975, -0.025149,
		41.679394, 34.140236, 35.204681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000202, 33.588737, 35.032898>,  <40.997730, 34.298416, 35.222286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000202, 33.588737, 35.032898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326820, 33.693916, 35.238468>,  <41.522789, 33.757023, 35.361809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326820, 33.693916, 35.238468>,  <41.000202, 33.588737, 35.032898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326820, 33.693916, 35.238468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171187, -0.739908, 0.650563,
		0.551322, -0.619189, -0.559151,
		0.816541, 0.262950, 0.513924,
		41.571781, 33.772800, 35.392647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371986, 32.955849, 35.231873>,  <41.000202, 33.588737, 35.032898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371986, 32.955849, 35.231873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535172, 33.227734, 35.475693>,  <41.633083, 33.390865, 35.621986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535172, 33.227734, 35.475693>,  <41.371986, 32.955849, 35.231873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535172, 33.227734, 35.475693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209003, -0.580377, 0.787071,
		0.888753, -0.448495, -0.094711,
		0.407966, 0.679716, 0.609549,
		41.657562, 33.431648, 35.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683720, 32.458237, 35.667610>,  <41.371986, 32.955849, 35.231873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683720, 32.458237, 35.667610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722233, 32.804325, 35.864437>,  <41.745342, 33.011978, 35.982533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722233, 32.804325, 35.864437>,  <41.683720, 32.458237, 35.667610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722233, 32.804325, 35.864437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303959, -0.445187, 0.842269,
		0.947807, -0.230666, 0.220125,
		0.096286, 0.865218, 0.492065,
		41.751118, 33.063889, 36.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803219, 32.200085, 36.277969>,  <41.683720, 32.458237, 35.667610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803219, 32.200085, 36.277969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705624, 32.585365, 36.323055>,  <41.647064, 32.816536, 36.350109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705624, 32.585365, 36.323055>,  <41.803219, 32.200085, 36.277969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705624, 32.585365, 36.323055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240483, -0.172693, 0.955168,
		0.939487, 0.205946, 0.273770,
		-0.243992, 0.963205, 0.112716,
		41.632427, 32.874329, 36.356869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221306, 32.488441, 36.822960>,  <41.803219, 32.200085, 36.277969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221306, 32.488441, 36.822960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880516, 32.694294, 36.784416>,  <41.676041, 32.817806, 36.761292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880516, 32.694294, 36.784416>,  <42.221306, 32.488441, 36.822960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880516, 32.694294, 36.784416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278933, -0.290394, 0.915351,
		0.443089, 0.806736, 0.390958,
		-0.851979, 0.514633, -0.096355,
		41.624924, 32.848682, 36.755508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033710, 32.689362, 37.431355>,  <42.221306, 32.488441, 36.822960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033710, 32.689362, 37.431355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681458, 32.735275, 37.247475>,  <41.470108, 32.762821, 37.137146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681458, 32.735275, 37.247475>,  <42.033710, 32.689362, 37.431355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681458, 32.735275, 37.247475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473763, -0.199957, 0.857651,
		0.006522, 0.973058, 0.230467,
		-0.880628, 0.114781, -0.459695,
		41.417271, 32.769711, 37.109566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686638, 33.039452, 37.941376>,  <42.033710, 32.689362, 37.431355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686638, 33.039452, 37.941376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373367, 32.900761, 37.734913>,  <41.185406, 32.817547, 37.611034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373367, 32.900761, 37.734913>,  <41.686638, 33.039452, 37.941376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373367, 32.900761, 37.734913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415707, -0.325350, 0.849315,
		-0.462414, 0.879730, 0.110668,
		-0.783174, -0.346730, -0.516156,
		41.138416, 32.796741, 37.580067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003563, 33.280285, 38.201103>,  <41.686638, 33.039452, 37.941376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003563, 33.280285, 38.201103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909264, 32.950214, 37.995773>,  <40.852684, 32.752171, 37.872574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909264, 32.950214, 37.995773>,  <41.003563, 33.280285, 38.201103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909264, 32.950214, 37.995773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678797, -0.238180, 0.694625,
		-0.695453, 0.512202, -0.503978,
		-0.235751, -0.825179, -0.513324,
		40.838539, 32.702660, 37.841778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305286, 33.272274, 38.140251>,  <41.003563, 33.280285, 38.201103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305286, 33.272274, 38.140251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415024, 32.892666, 38.078159>,  <40.480865, 32.664902, 38.040905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415024, 32.892666, 38.078159>,  <40.305286, 33.272274, 38.140251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415024, 32.892666, 38.078159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645702, -0.301414, 0.701583,
		-0.712605, -0.092241, -0.695475,
		0.274341, -0.949021, -0.155229,
		40.497326, 32.607960, 38.031590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630520, 32.958275, 38.139141>,  <40.305286, 33.272274, 38.140251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630520, 32.958275, 38.139141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878296, 32.650055, 38.199200>,  <40.026962, 32.465122, 38.235233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878296, 32.650055, 38.199200>,  <39.630520, 32.958275, 38.139141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878296, 32.650055, 38.199200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649773, -0.395910, 0.648884,
		-0.440556, -0.499503, -0.745927,
		0.619440, -0.770553, 0.150143,
		40.064129, 32.418888, 38.244244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248585, 32.430290, 38.279572>,  <39.630520, 32.958275, 38.139141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248585, 32.430290, 38.279572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592373, 32.285172, 38.423626>,  <39.798645, 32.198101, 38.510059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592373, 32.285172, 38.423626>,  <39.248585, 32.430290, 38.279572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592373, 32.285172, 38.423626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496492, -0.424711, 0.757044,
		-0.121699, -0.829458, -0.545150,
		0.859468, -0.362794, 0.360133,
		39.850212, 32.176334, 38.531666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019882, 31.828917, 38.553562>,  <39.248585, 32.430290, 38.279572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019882, 31.828917, 38.553562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364513, 31.870266, 38.752357>,  <39.571293, 31.895077, 38.871635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364513, 31.870266, 38.752357>,  <39.019882, 31.828917, 38.553562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364513, 31.870266, 38.752357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406012, -0.447324, 0.796904,
		0.304695, -0.888378, -0.343432,
		0.861577, 0.103375, 0.496990,
		39.622986, 31.901278, 38.901455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743969, 31.160727, 38.389076>,  <39.019882, 31.828917, 38.553562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743969, 31.160727, 38.389076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372963, 31.021389, 38.334862>,  <38.150360, 30.937786, 38.302334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372963, 31.021389, 38.334862>,  <38.743969, 31.160727, 38.389076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372963, 31.021389, 38.334862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077346, 0.533622, -0.842179,
		0.365691, -0.770652, -0.521886,
		-0.927517, -0.348343, -0.135534,
		38.094707, 30.916885, 38.294201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704247, 30.805696, 37.748787>,  <38.743969, 31.160727, 38.389076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704247, 30.805696, 37.748787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328445, 30.906445, 37.841644>,  <38.102962, 30.966894, 37.897358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328445, 30.906445, 37.841644>,  <38.704247, 30.805696, 37.748787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328445, 30.906445, 37.841644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060799, 0.544348, -0.836653,
		-0.337097, -0.800154, -0.496105,
		-0.939505, 0.251870, 0.232146,
		38.046593, 30.982006, 37.911289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313683, 30.741522, 37.135193>,  <38.704247, 30.805696, 37.748787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313683, 30.741522, 37.135193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080112, 30.964397, 37.371353>,  <37.939968, 31.098124, 37.513050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080112, 30.964397, 37.371353>,  <38.313683, 30.741522, 37.135193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080112, 30.964397, 37.371353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371718, 0.463028, -0.804631,
		-0.721703, -0.689306, -0.063257,
		-0.583927, 0.557191, 0.590396,
		37.904934, 31.131556, 37.548473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775154, 30.715361, 36.755974>,  <38.313683, 30.741522, 37.135193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775154, 30.715361, 36.755974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754486, 31.041430, 36.986740>,  <37.742085, 31.237070, 37.125198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754486, 31.041430, 36.986740>,  <37.775154, 30.715361, 36.755974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754486, 31.041430, 36.986740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235995, 0.551356, -0.800196,
		-0.970380, -0.177491, 0.163890,
		-0.051666, 0.815171, 0.576912,
		37.738987, 31.285980, 37.159813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089775, 30.988052, 36.781048>,  <37.775154, 30.715361, 36.755974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089775, 30.988052, 36.781048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290123, 31.313494, 36.899151>,  <37.410332, 31.508759, 36.970013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290123, 31.313494, 36.899151>,  <37.089775, 30.988052, 36.781048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290123, 31.313494, 36.899151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291608, 0.479819, -0.827489,
		-0.814920, 0.328363, 0.477580,
		0.500869, 0.813604, 0.295261,
		37.440384, 31.557575, 36.987728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727520, 31.483416, 36.597157>,  <37.089775, 30.988052, 36.781048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727520, 31.483416, 36.597157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061218, 31.697338, 36.650837>,  <37.261436, 31.825691, 36.683044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061218, 31.697338, 36.650837>,  <36.727520, 31.483416, 36.597157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061218, 31.697338, 36.650837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319796, 0.667575, -0.672365,
		-0.449175, 0.518002, 0.727953,
		0.834250, 0.534805, 0.134203,
		37.311493, 31.857780, 36.691097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510895, 32.139496, 36.495358>,  <36.727520, 31.483416, 36.597157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510895, 32.139496, 36.495358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902367, 32.212872, 36.458393>,  <37.137249, 32.256897, 36.436214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902367, 32.212872, 36.458393>,  <36.510895, 32.139496, 36.495358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902367, 32.212872, 36.458393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189969, 0.637208, -0.746912,
		-0.078128, 0.748541, 0.658469,
		0.978677, 0.183444, -0.092416,
		37.195969, 32.267906, 36.430668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649715, 32.863308, 36.426109>,  <36.510895, 32.139496, 36.495358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649715, 32.863308, 36.426109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982632, 32.722523, 36.254807>,  <37.182381, 32.638050, 36.152023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982632, 32.722523, 36.254807>,  <36.649715, 32.863308, 36.426109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982632, 32.722523, 36.254807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067680, 0.702271, -0.708686,
		0.550186, 0.618820, 0.560676,
		0.832295, -0.351962, -0.428261,
		37.232319, 32.616936, 36.126328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105045, 33.418125, 36.307823>,  <36.649715, 32.863308, 36.426109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105045, 33.418125, 36.307823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226048, 33.132389, 36.055408>,  <37.298649, 32.960945, 35.903961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226048, 33.132389, 36.055408>,  <37.105045, 33.418125, 36.307823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226048, 33.132389, 36.055408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073100, 0.642716, -0.762609,
		0.950342, 0.276819, 0.142203,
		0.302501, -0.714344, -0.631035,
		37.316799, 32.918087, 35.866096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439442, 33.707634, 35.865471>,  <37.105045, 33.418125, 36.307823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439442, 33.707634, 35.865471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364410, 33.384056, 35.642609>,  <37.319393, 33.189911, 35.508892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364410, 33.384056, 35.642609>,  <37.439442, 33.707634, 35.865471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364410, 33.384056, 35.642609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049504, 0.558719, -0.827878,
		0.981002, -0.182871, -0.064756,
		-0.187575, -0.808945, -0.557157,
		37.308136, 33.141373, 35.475460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880272, 33.735416, 35.362549>,  <37.439442, 33.707634, 35.865471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880272, 33.735416, 35.362549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584743, 33.508190, 35.217529>,  <37.407425, 33.371853, 35.130516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584743, 33.508190, 35.217529>,  <37.880272, 33.735416, 35.362549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584743, 33.508190, 35.217529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059944, 0.591255, -0.804254,
		0.671232, -0.572466, -0.470883,
		-0.738820, -0.568067, -0.362553,
		37.363098, 33.337772, 35.108765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051540, 33.435181, 34.649639>,  <37.880272, 33.735416, 35.362549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051540, 33.435181, 34.649639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670776, 33.525993, 34.731926>,  <37.442318, 33.580482, 34.781296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670776, 33.525993, 34.731926>,  <38.051540, 33.435181, 34.649639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670776, 33.525993, 34.731926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077603, 0.470876, -0.878780,
		-0.296380, -0.852485, -0.430614,
		-0.951912, 0.227036, 0.205714,
		37.385204, 33.594105, 34.793640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.680134, 27.495354, 40.435158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411446, 27.791420, 40.447491>,  <37.250233, 27.969059, 40.454891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411446, 27.791420, 40.447491>,  <37.680134, 27.495354, 40.435158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411446, 27.791420, 40.447491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428787, 0.422400, -0.798573,
		-0.604099, -0.523196, -0.601107,
		-0.671719, 0.740164, 0.030832,
		37.209930, 28.013470, 40.456741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616264, 27.741962, 39.786003>,  <37.680134, 27.495354, 40.435158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616264, 27.741962, 39.786003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416252, 28.035206, 39.970402>,  <37.296246, 28.211151, 40.081043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416252, 28.035206, 39.970402>,  <37.616264, 27.741962, 39.786003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416252, 28.035206, 39.970402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355315, 0.659133, -0.662793,
		-0.789760, -0.167617, -0.590071,
		-0.500031, 0.733109, 0.461000,
		37.266243, 28.255138, 40.108700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160397, 28.070980, 39.336407>,  <37.616264, 27.741962, 39.786003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160397, 28.070980, 39.336407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224201, 28.353861, 39.611919>,  <37.262486, 28.523588, 39.777229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224201, 28.353861, 39.611919>,  <37.160397, 28.070980, 39.336407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224201, 28.353861, 39.611919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247351, 0.646831, -0.721406,
		-0.955706, 0.285444, -0.071750,
		0.159511, 0.707200, 0.688785,
		37.272053, 28.566021, 39.818554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789711, 28.663107, 39.121723>,  <37.160397, 28.070980, 39.336407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789711, 28.663107, 39.121723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065655, 28.786436, 39.383728>,  <37.231220, 28.860434, 39.540932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065655, 28.786436, 39.383728>,  <36.789711, 28.663107, 39.121723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065655, 28.786436, 39.383728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174351, 0.807384, -0.563677,
		-0.702639, 0.503057, 0.503221,
		0.689855, 0.308325, 0.655009,
		37.272610, 28.878933, 39.580231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592396, 29.443047, 39.256779>,  <36.789711, 28.663107, 39.121723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592396, 29.443047, 39.256779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.968166, 29.359329, 39.365353>,  <37.193626, 29.309099, 39.430496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.968166, 29.359329, 39.365353>,  <36.592396, 29.443047, 39.256779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968166, 29.359329, 39.365353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325134, 0.794793, -0.512437,
		-0.108488, 0.569649, 0.814696,
		0.939424, -0.209292, 0.271438,
		37.249992, 29.296541, 39.446785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720509, 30.051422, 39.388443>,  <36.592396, 29.443047, 39.256779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720509, 30.051422, 39.388443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083092, 29.884916, 39.359985>,  <37.300640, 29.785013, 39.342911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083092, 29.884916, 39.359985>,  <36.720509, 30.051422, 39.388443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083092, 29.884916, 39.359985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328530, 0.800953, -0.500542,
		0.265338, 0.430347, 0.862784,
		0.906457, -0.416263, -0.071141,
		37.355030, 29.760036, 39.338642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243492, 30.547468, 39.624615>,  <36.720509, 30.051422, 39.388443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243492, 30.547468, 39.624615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421192, 30.301737, 39.363773>,  <37.527813, 30.154299, 39.207268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421192, 30.301737, 39.363773>,  <37.243492, 30.547468, 39.624615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421192, 30.301737, 39.363773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422819, 0.785482, -0.451931,
		0.789849, -0.074950, 0.608704,
		0.444254, -0.614329, -0.652103,
		37.554470, 30.117437, 39.168144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841629, 30.986044, 39.431602>,  <37.243492, 30.547468, 39.624615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841629, 30.986044, 39.431602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890831, 30.691704, 39.165253>,  <37.920353, 30.515099, 39.005444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890831, 30.691704, 39.165253>,  <37.841629, 30.986044, 39.431602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890831, 30.691704, 39.165253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070017, 0.675736, -0.733811,
		0.989933, 0.043639, 0.134640,
		0.123004, -0.735851, -0.665878,
		37.927731, 30.470949, 38.965488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489868, 31.012260, 39.199753>,  <37.841629, 30.986044, 39.431602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489868, 31.012260, 39.199753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.247311, 30.857927, 38.921638>,  <38.101776, 30.765327, 38.754772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.247311, 30.857927, 38.921638>,  <38.489868, 31.012260, 39.199753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247311, 30.857927, 38.921638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242558, 0.742961, -0.623839,
		0.757273, -0.546934, -0.356933,
		-0.606385, -0.385840, -0.695287,
		38.065392, 30.742178, 38.713055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267708, 31.014894, 39.079700>,  <38.489868, 31.012260, 39.199753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267708, 31.014894, 39.079700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.420559, 31.359118, 39.214413>,  <39.512268, 31.565651, 39.295242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.420559, 31.359118, 39.214413>,  <39.267708, 31.014894, 39.079700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420559, 31.359118, 39.214413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071044, -0.390718, 0.917765,
		0.921375, -0.326776, -0.210441,
		0.382126, 0.860556, 0.336783,
		39.535198, 31.617285, 39.315449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472233, 30.809635, 39.735920>,  <39.267708, 31.014894, 39.079700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472233, 30.809635, 39.735920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470699, 31.207823, 39.773922>,  <39.469780, 31.446735, 39.796722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470699, 31.207823, 39.773922>,  <39.472233, 30.809635, 39.735920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470699, 31.207823, 39.773922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049949, -0.095080, 0.994216,
		0.998744, -0.000930, 0.050088,
		-0.003838, 0.995469, 0.095007,
		39.469547, 31.506464, 39.802425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855972, 30.953476, 40.290985>,  <39.472233, 30.809635, 39.735920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855972, 30.953476, 40.290985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659710, 31.301878, 40.300873>,  <39.541954, 31.510920, 40.306805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659710, 31.301878, 40.300873>,  <39.855972, 30.953476, 40.290985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659710, 31.301878, 40.300873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213424, -0.147636, 0.965740,
		0.844813, 0.468568, 0.258332,
		-0.490653, 0.871004, 0.024721,
		39.512512, 31.563179, 40.308289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135315, 31.438808, 40.814331>,  <39.855972, 30.953476, 40.290985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135315, 31.438808, 40.814331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750259, 31.526491, 40.750740>,  <39.519226, 31.579102, 40.712585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750259, 31.526491, 40.750740>,  <40.135315, 31.438808, 40.814331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750259, 31.526491, 40.750740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130789, 0.137677, 0.981804,
		0.237107, 0.965916, -0.103864,
		-0.962639, 0.219209, -0.158975,
		39.461468, 31.592255, 40.703049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944164, 31.928101, 41.375919>,  <40.135315, 31.438808, 40.814331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944164, 31.928101, 41.375919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594791, 31.799635, 41.229511>,  <39.385166, 31.722555, 41.141666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594791, 31.799635, 41.229511>,  <39.944164, 31.928101, 41.375919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594791, 31.799635, 41.229511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352626, -0.101207, 0.930275,
		-0.335816, 0.941600, -0.024854,
		-0.873431, -0.321166, -0.366020,
		39.332764, 31.703285, 41.119705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375912, 32.294300, 41.733822>,  <39.944164, 31.928101, 41.375919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375912, 32.294300, 41.733822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206875, 31.963478, 41.585552>,  <39.105453, 31.764986, 41.496590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206875, 31.963478, 41.585552>,  <39.375912, 32.294300, 41.733822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206875, 31.963478, 41.585552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314921, -0.249506, 0.915735,
		-0.849845, 0.503720, -0.155015,
		-0.422597, -0.827051, -0.370674,
		39.080097, 31.715363, 41.474350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652523, 32.289280, 42.002102>,  <39.375912, 32.294300, 41.733822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652523, 32.289280, 42.002102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777878, 31.922407, 41.903656>,  <38.853088, 31.702284, 41.844589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777878, 31.922407, 41.903656>,  <38.652523, 32.289280, 42.002102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777878, 31.922407, 41.903656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184627, -0.313070, 0.931611,
		-0.931507, -0.246511, -0.267447,
		0.313382, -0.917180, -0.246114,
		38.871891, 31.647253, 41.829823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130810, 31.888161, 42.375889>,  <38.652523, 32.289280, 42.002102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130810, 31.888161, 42.375889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.409626, 31.622379, 42.268085>,  <38.576916, 31.462910, 42.203403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.409626, 31.622379, 42.268085>,  <38.130810, 31.888161, 42.375889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409626, 31.622379, 42.268085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155056, -0.506653, 0.848092,
		-0.700067, -0.549364, -0.456185,
		0.697039, -0.664456, -0.269509,
		38.618736, 31.423042, 42.187233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827488, 31.216562, 42.470181>,  <38.130810, 31.888161, 42.375889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827488, 31.216562, 42.470181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221657, 31.149094, 42.479134>,  <38.458157, 31.108612, 42.484505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221657, 31.149094, 42.479134>,  <37.827488, 31.216562, 42.470181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221657, 31.149094, 42.479134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087618, -0.390249, 0.916531,
		-0.145859, -0.905127, -0.399337,
		0.985418, -0.168673, 0.022384,
		38.517281, 31.098492, 42.485847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019394, 30.435030, 42.592728>,  <37.827488, 31.216562, 42.470181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019394, 30.435030, 42.592728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349842, 30.635527, 42.695713>,  <38.548111, 30.755825, 42.757504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349842, 30.635527, 42.695713>,  <38.019394, 30.435030, 42.592728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349842, 30.635527, 42.695713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149738, -0.635745, 0.757237,
		0.543239, -0.587015, -0.600255,
		0.826118, 0.501241, 0.257463,
		38.597679, 30.785898, 42.772953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329544, 29.937357, 42.964905>,  <38.019394, 30.435030, 42.592728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329544, 29.937357, 42.964905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558350, 30.247856, 43.070915>,  <38.695633, 30.434156, 43.134521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558350, 30.247856, 43.070915>,  <38.329544, 29.937357, 42.964905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558350, 30.247856, 43.070915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452350, -0.568066, 0.687517,
		0.684238, -0.273383, -0.676077,
		0.572012, 0.776249, 0.265027,
		38.729954, 30.480730, 43.150425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933613, 29.524124, 43.344959>,  <38.329544, 29.937357, 42.964905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933613, 29.524124, 43.344959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.999081, 29.913538, 43.408760>,  <39.038361, 30.147186, 43.447041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.999081, 29.913538, 43.408760>,  <38.933613, 29.524124, 43.344959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999081, 29.913538, 43.408760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374006, -0.210850, 0.903140,
		0.912870, -0.088162, -0.398618,
		0.163672, 0.973535, 0.159505,
		39.048183, 30.205599, 43.456612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560390, 29.685066, 43.628368>,  <38.933613, 29.524124, 43.344959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560390, 29.685066, 43.628368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362637, 30.003082, 43.768936>,  <39.243984, 30.193892, 43.853275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362637, 30.003082, 43.768936>,  <39.560390, 29.685066, 43.628368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362637, 30.003082, 43.768936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316460, -0.211913, 0.924633,
		0.809588, 0.568338, -0.146830,
		-0.494388, 0.795038, 0.351419,
		39.214321, 30.241594, 43.874363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059032, 30.048296, 44.036579>,  <39.560390, 29.685066, 43.628368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059032, 30.048296, 44.036579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.694408, 30.158478, 44.158688>,  <39.475636, 30.224586, 44.231953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.694408, 30.158478, 44.158688>,  <40.059032, 30.048296, 44.036579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694408, 30.158478, 44.158688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130160, -0.510951, 0.849698,
		0.390032, 0.814282, 0.429907,
		-0.911555, 0.275453, 0.305275,
		39.420940, 30.241114, 44.250271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.846041, 31.362242, 43.874840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106659, 31.083227, 43.755554>,  <32.263031, 30.915819, 43.683983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106659, 31.083227, 43.755554>,  <31.846041, 31.362242, 43.874840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106659, 31.083227, 43.755554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403758, 0.651657, -0.642123,
		0.642236, 0.297967, 0.706221,
		0.651546, -0.697537, -0.298211,
		32.302124, 30.873966, 43.666092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599815, 31.593962, 43.915661>,  <31.846041, 31.362242, 43.874840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599815, 31.593962, 43.915661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610538, 31.296255, 43.648724>,  <32.616970, 31.117632, 43.488560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610538, 31.296255, 43.648724>,  <32.599815, 31.593962, 43.915661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610538, 31.296255, 43.648724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499155, 0.588367, -0.636136,
		0.866098, -0.316057, 0.387275,
		0.026805, -0.744266, -0.667345,
		32.618580, 31.072975, 43.448521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296204, 31.676897, 43.734966>,  <32.599815, 31.593962, 43.915661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296204, 31.676897, 43.734966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116421, 31.452343, 43.457020>,  <33.008553, 31.317612, 43.290253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116421, 31.452343, 43.457020>,  <33.296204, 31.676897, 43.734966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116421, 31.452343, 43.457020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395284, 0.572579, -0.718265,
		0.801088, -0.597497, -0.035442,
		-0.449454, -0.561383, -0.694867,
		32.981583, 31.283928, 43.248558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798626, 31.767111, 43.282448>,  <33.296204, 31.676897, 43.734966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798626, 31.767111, 43.282448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481441, 31.625742, 43.083935>,  <33.291130, 31.540920, 42.964825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481441, 31.625742, 43.083935>,  <33.798626, 31.767111, 43.282448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481441, 31.625742, 43.083935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280919, 0.510722, -0.812557,
		0.540642, -0.783743, -0.305700,
		-0.792963, -0.353426, -0.496285,
		33.243553, 31.519714, 42.935051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042564, 31.593979, 42.652718>,  <33.798626, 31.767111, 43.282448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042564, 31.593979, 42.652718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649513, 31.609360, 42.580101>,  <33.413681, 31.618589, 42.536533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649513, 31.609360, 42.580101>,  <34.042564, 31.593979, 42.652718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649513, 31.609360, 42.580101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171596, 0.560690, -0.810051,
		0.070637, -0.827133, -0.557550,
		-0.982632, 0.038454, -0.181538,
		33.354725, 31.620895, 42.525639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858418, 31.334814, 41.896908>,  <34.042564, 31.593979, 42.652718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858418, 31.334814, 41.896908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.549572, 31.562122, 42.010681>,  <33.364265, 31.698507, 42.078945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.549572, 31.562122, 42.010681>,  <33.858418, 31.334814, 41.896908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549572, 31.562122, 42.010681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070502, 0.521426, -0.850379,
		-0.631556, -0.636540, -0.442667,
		-0.772118, 0.568271, 0.284433,
		33.317936, 31.732603, 42.096012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415417, 31.371845, 41.369549>,  <33.858418, 31.334814, 41.896908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415417, 31.371845, 41.369549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324062, 31.704292, 41.572361>,  <33.269249, 31.903761, 41.694050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324062, 31.704292, 41.572361>,  <33.415417, 31.371845, 41.369549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324062, 31.704292, 41.572361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059204, 0.531687, -0.844869,
		-0.971768, -0.162942, -0.170638,
		-0.228390, 0.831119, 0.507030,
		33.255547, 31.953629, 41.724468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905571, 31.655552, 40.920734>,  <33.415417, 31.371845, 41.369549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905571, 31.655552, 40.920734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025082, 31.953102, 41.159859>,  <33.096786, 32.131634, 41.303333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025082, 31.953102, 41.159859>,  <32.905571, 31.655552, 40.920734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025082, 31.953102, 41.159859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014756, 0.629952, -0.776494,
		-0.954208, 0.223178, 0.199193,
		0.298778, 0.743876, 0.597812,
		33.114716, 32.176266, 41.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473347, 32.158791, 40.825954>,  <32.905571, 31.655552, 40.920734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473347, 32.158791, 40.825954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799324, 32.336483, 40.974827>,  <32.994911, 32.443100, 41.064148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799324, 32.336483, 40.974827>,  <32.473347, 32.158791, 40.825954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799324, 32.336483, 40.974827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093923, 0.734952, -0.671583,
		-0.571873, 0.512349, 0.640671,
		0.814947, 0.444234, 0.372178,
		33.043808, 32.469753, 41.086479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353043, 32.964233, 40.801216>,  <32.473347, 32.158791, 40.825954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353043, 32.964233, 40.801216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747570, 32.906723, 40.833469>,  <32.984287, 32.872219, 40.852821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747570, 32.906723, 40.833469>,  <32.353043, 32.964233, 40.801216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747570, 32.906723, 40.833469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157932, 0.684133, -0.712053,
		0.047213, 0.715046, 0.697481,
		0.986321, -0.143773, 0.080629,
		33.043465, 32.863590, 40.857658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671577, 33.580070, 40.829254>,  <32.353043, 32.964233, 40.801216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671577, 33.580070, 40.829254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977001, 33.353825, 40.704639>,  <33.160255, 33.218075, 40.629871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977001, 33.353825, 40.704639>,  <32.671577, 33.580070, 40.829254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977001, 33.353825, 40.704639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224906, 0.685184, -0.692777,
		0.605304, 0.458911, 0.650390,
		0.763560, -0.565617, -0.311533,
		33.206070, 33.184139, 40.611179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172649, 34.051815, 40.718670>,  <32.671577, 33.580070, 40.829254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172649, 34.051815, 40.718670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.265415, 33.726116, 40.505798>,  <33.321075, 33.530697, 40.378075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.265415, 33.726116, 40.505798>,  <33.172649, 34.051815, 40.718670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265415, 33.726116, 40.505798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299206, 0.580287, -0.757458,
		0.925576, 0.016435, 0.378205,
		0.231916, -0.814246, -0.532182,
		33.334991, 33.481842, 40.346142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791939, 34.200760, 40.403545>,  <33.172649, 34.051815, 40.718670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791939, 34.200760, 40.403545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657425, 33.893200, 40.186031>,  <33.576717, 33.708664, 40.055523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657425, 33.893200, 40.186031>,  <33.791939, 34.200760, 40.403545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657425, 33.893200, 40.186031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270337, 0.474302, -0.837828,
		0.902125, -0.428757, 0.048360,
		-0.336288, -0.768898, -0.543788,
		33.556538, 33.662529, 40.022896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226109, 34.198441, 39.859402>,  <33.791939, 34.200760, 40.403545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226109, 34.198441, 39.859402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941650, 33.955418, 39.717903>,  <33.770973, 33.809605, 39.633003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941650, 33.955418, 39.717903>,  <34.226109, 34.198441, 39.859402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941650, 33.955418, 39.717903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165617, 0.344233, -0.924162,
		0.683256, -0.715803, -0.144178,
		-0.711149, -0.607560, -0.353749,
		33.728306, 33.773151, 39.611778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853970, 34.029446, 40.289230>,  <34.226109, 34.198441, 39.859402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853970, 34.029446, 40.289230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037964, 34.362465, 40.412704>,  <35.148361, 34.562275, 40.486790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037964, 34.362465, 40.412704>,  <34.853970, 34.029446, 40.289230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037964, 34.362465, 40.412704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173108, -0.256889, 0.950811,
		0.870890, -0.490791, 0.025956,
		0.459982, 0.832546, 0.308682,
		35.175957, 34.612228, 40.505310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372547, 33.912373, 40.870625>,  <34.853970, 34.029446, 40.289230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372547, 33.912373, 40.870625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256702, 34.294239, 40.898170>,  <35.187195, 34.523357, 40.914696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256702, 34.294239, 40.898170>,  <35.372547, 33.912373, 40.870625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256702, 34.294239, 40.898170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017140, -0.066762, 0.997622,
		0.956992, 0.290100, 0.002971,
		-0.289609, 0.954665, 0.068863,
		35.169819, 34.580639, 40.918831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832684, 34.221405, 41.333771>,  <35.372547, 33.912373, 40.870625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832684, 34.221405, 41.333771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496735, 34.438419, 41.327148>,  <35.295166, 34.568626, 41.323174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496735, 34.438419, 41.327148>,  <35.832684, 34.221405, 41.333771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496735, 34.438419, 41.327148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122998, -0.160514, 0.979340,
		0.528666, 0.824556, 0.201542,
		-0.839871, 0.542533, -0.016560,
		35.244774, 34.601181, 41.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912716, 34.673885, 41.834381>,  <35.832684, 34.221405, 41.333771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912716, 34.673885, 41.834381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515728, 34.653446, 41.789860>,  <35.277534, 34.641182, 41.763145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515728, 34.653446, 41.789860>,  <35.912716, 34.673885, 41.834381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515728, 34.653446, 41.789860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096323, -0.235645, 0.967054,
		-0.075647, 0.970495, 0.228949,
		-0.992471, -0.051102, -0.111307,
		35.217987, 34.638115, 41.756466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641735, 35.119202, 42.416321>,  <35.912716, 34.673885, 41.834381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641735, 35.119202, 42.416321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.329540, 34.902046, 42.292316>,  <35.142223, 34.771751, 42.217915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.329540, 34.902046, 42.292316>,  <35.641735, 35.119202, 42.416321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329540, 34.902046, 42.292316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309713, -0.094984, 0.946074,
		-0.543059, 0.834416, -0.094005,
		-0.780490, -0.542888, -0.310012,
		35.095394, 34.739182, 42.199314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024677, 35.295910, 42.777515>,  <35.641735, 35.119202, 42.416321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024677, 35.295910, 42.777515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.960537, 34.914871, 42.674099>,  <34.922050, 34.686249, 42.612049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.960537, 34.914871, 42.674099>,  <35.024677, 35.295910, 42.777515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960537, 34.914871, 42.674099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436621, -0.166454, 0.884113,
		-0.885239, 0.254655, -0.389233,
		-0.160354, -0.952598, -0.258539,
		34.912430, 34.629093, 42.596539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619877, 35.031567, 43.307953>,  <35.024677, 35.295910, 42.777515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619877, 35.031567, 43.307953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677292, 34.677204, 43.131512>,  <34.711739, 34.464588, 43.025646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677292, 34.677204, 43.131512>,  <34.619877, 35.031567, 43.307953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677292, 34.677204, 43.131512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294198, -0.463764, 0.835686,
		-0.944905, 0.009823, -0.327197,
		0.143533, -0.885904, -0.441102,
		34.720352, 34.411434, 42.999180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134068, 34.593254, 43.599785>,  <34.619877, 35.031567, 43.307953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134068, 34.593254, 43.599785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397160, 34.342705, 43.432426>,  <34.555016, 34.192375, 43.332012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397160, 34.342705, 43.432426>,  <34.134068, 34.593254, 43.599785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397160, 34.342705, 43.432426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154483, -0.655807, 0.738954,
		-0.737244, -0.421397, -0.528106,
		0.657728, -0.626372, -0.418391,
		34.594479, 34.154793, 43.306908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800316, 33.988811, 43.671146>,  <34.134068, 34.593254, 43.599785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800316, 33.988811, 43.671146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180935, 33.884640, 43.605747>,  <34.409306, 33.822136, 43.566509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180935, 33.884640, 43.605747>,  <33.800316, 33.988811, 43.671146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180935, 33.884640, 43.605747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100552, -0.765995, 0.634934,
		-0.290591, -0.587731, -0.755069,
		0.951549, -0.260430, -0.163494,
		34.466400, 33.806511, 43.556698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842987, 33.215515, 43.668716>,  <33.800316, 33.988811, 43.671146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842987, 33.215515, 43.668716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206272, 33.351902, 43.765789>,  <34.424244, 33.433735, 43.824032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206272, 33.351902, 43.765789>,  <33.842987, 33.215515, 43.668716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206272, 33.351902, 43.765789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106004, -0.748369, 0.654757,
		0.404870, -0.568931, -0.715820,
		0.908209, 0.340971, 0.242683,
		34.478733, 33.454193, 43.838593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097580, 32.659687, 43.905178>,  <33.842987, 33.215515, 43.668716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097580, 32.659687, 43.905178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359264, 32.927608, 44.045681>,  <34.516273, 33.088360, 44.129982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359264, 32.927608, 44.045681>,  <34.097580, 32.659687, 43.905178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359264, 32.927608, 44.045681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245480, -0.627335, 0.739047,
		0.715368, -0.397264, -0.574830,
		0.654208, 0.669800, 0.351255,
		34.555527, 33.128548, 44.151058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815617, 32.279564, 44.046970>,  <34.097580, 32.659687, 43.905178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815617, 32.279564, 44.046970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794353, 32.608307, 44.273853>,  <34.781597, 32.805553, 44.409981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794353, 32.608307, 44.273853>,  <34.815617, 32.279564, 44.046970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794353, 32.608307, 44.273853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187383, -0.549709, 0.814069,
		0.980847, 0.149559, -0.124780,
		-0.053159, 0.821859, 0.567206,
		34.778404, 32.854866, 44.444016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281250, 32.058632, 44.513107>,  <34.815617, 32.279564, 44.046970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281250, 32.058632, 44.513107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047623, 32.351902, 44.652435>,  <34.907448, 32.527863, 44.736031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047623, 32.351902, 44.652435>,  <35.281250, 32.058632, 44.513107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047623, 32.351902, 44.652435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028936, -0.447653, 0.893739,
		0.811191, 0.511923, 0.282674,
		-0.584065, 0.733172, 0.348319,
		34.872402, 32.571854, 44.756931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556320, 32.338627, 45.084476>,  <35.281250, 32.058632, 44.513107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556320, 32.338627, 45.084476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163418, 32.408199, 45.112553>,  <34.927677, 32.449944, 45.129398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163418, 32.408199, 45.112553>,  <35.556320, 32.338627, 45.084476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163418, 32.408199, 45.112553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029558, -0.513091, 0.857825,
		0.185216, 0.840527, 0.509126,
		-0.982253, 0.173932, 0.070188,
		34.868740, 32.460381, 45.133610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981659, 32.525574, 45.734886>,  <35.556320, 32.338627, 45.084476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981659, 32.525574, 45.734886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342270, 32.355705, 45.701641>,  <36.558636, 32.253784, 45.681694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342270, 32.355705, 45.701641>,  <35.981659, 32.525574, 45.734886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342270, 32.355705, 45.701641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304194, 0.758542, -0.576263,
		0.307766, 0.494234, 0.813027,
		0.901524, -0.424672, -0.083111,
		36.612728, 32.228302, 45.676708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482620, 33.072357, 45.838470>,  <35.981659, 32.525574, 45.734886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482620, 33.072357, 45.838470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698299, 32.799789, 45.640507>,  <36.827705, 32.636250, 45.521729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698299, 32.799789, 45.640507>,  <36.482620, 33.072357, 45.838470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698299, 32.799789, 45.640507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337718, 0.713279, -0.614150,
		0.771501, 0.164008, 0.614726,
		0.539196, -0.681421, -0.494907,
		36.860058, 32.595364, 45.492035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147648, 33.425575, 45.765759>,  <36.482620, 33.072357, 45.838470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147648, 33.425575, 45.765759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.106323, 33.106373, 45.528271>,  <37.081528, 32.914852, 45.385777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.106323, 33.106373, 45.528271>,  <37.147648, 33.425575, 45.765759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106323, 33.106373, 45.528271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299960, 0.544130, -0.783548,
		0.948341, -0.259043, 0.183156,
		-0.103312, -0.798010, -0.593723,
		37.075329, 32.866970, 45.350155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849518, 33.488640, 45.459732>,  <37.147648, 33.425575, 45.765759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849518, 33.488640, 45.459732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581673, 33.309475, 45.222755>,  <37.420963, 33.201977, 45.080570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581673, 33.309475, 45.222755>,  <37.849518, 33.488640, 45.459732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581673, 33.309475, 45.222755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409706, 0.442563, -0.797671,
		0.619479, -0.776862, -0.112836,
		-0.669617, -0.447911, -0.592443,
		37.380787, 33.175102, 45.045021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334393, 33.148399, 44.942734>,  <37.849518, 33.488640, 45.459732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334393, 33.148399, 44.942734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.963688, 33.163208, 44.793201>,  <37.741264, 33.172092, 44.703484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.963688, 33.163208, 44.793201>,  <38.334393, 33.148399, 44.942734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963688, 33.163208, 44.793201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367663, 0.293630, -0.882386,
		0.077098, -0.955202, -0.285737,
		-0.926757, 0.037025, -0.373831,
		37.685661, 33.174316, 44.681053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390892, 32.790394, 44.396969>,  <38.334393, 33.148399, 44.942734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390892, 32.790394, 44.396969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062973, 33.007599, 44.324219>,  <37.866222, 33.137920, 44.280567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062973, 33.007599, 44.324219>,  <38.390892, 32.790394, 44.396969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062973, 33.007599, 44.324219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379013, 0.276402, -0.883148,
		-0.429288, -0.792933, -0.432400,
		-0.819794, 0.543010, -0.181875,
		37.817036, 33.170502, 44.269657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255901, 32.605202, 43.790962>,  <38.390892, 32.790394, 44.396969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255901, 32.605202, 43.790962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046062, 32.945560, 43.802074>,  <37.920158, 33.149776, 43.808743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046062, 32.945560, 43.802074>,  <38.255901, 32.605202, 43.790962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046062, 32.945560, 43.802074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168384, 0.135691, -0.976337,
		-0.834531, -0.507508, -0.214460,
		-0.524599, 0.850896, 0.027782,
		37.888683, 33.200829, 43.810410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855812, 32.722210, 43.115417>,  <38.255901, 32.605202, 43.790962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855812, 32.722210, 43.115417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895687, 33.080555, 43.288620>,  <37.919613, 33.295563, 43.392540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895687, 33.080555, 43.288620>,  <37.855812, 32.722210, 43.115417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895687, 33.080555, 43.288620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148907, 0.416843, -0.896699,
		-0.983814, 0.153867, -0.091846,
		0.099687, 0.895861, 0.433008,
		37.925594, 33.349312, 43.418522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568668, 33.188114, 42.593288>,  <37.855812, 32.722210, 43.115417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568668, 33.188114, 42.593288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772854, 33.426418, 42.841320>,  <37.895367, 33.569401, 42.990139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772854, 33.426418, 42.841320>,  <37.568668, 33.188114, 42.593288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772854, 33.426418, 42.841320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322838, 0.535577, -0.780342,
		-0.796996, 0.598521, 0.081058,
		0.510463, 0.595760, 0.620078,
		37.925991, 33.605148, 43.027344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583412, 34.006844, 42.390247>,  <37.568668, 33.188114, 42.593288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583412, 34.006844, 42.390247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.915379, 33.965645, 42.609570>,  <38.114559, 33.940926, 42.741161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.915379, 33.965645, 42.609570>,  <37.583412, 34.006844, 42.390247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915379, 33.965645, 42.609570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499176, 0.575971, -0.647365,
		-0.249131, 0.810956, 0.529419,
		0.829914, -0.102995, 0.548302,
		38.164352, 33.934746, 42.774059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994972, 34.605309, 42.311062>,  <37.583412, 34.006844, 42.390247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994972, 34.605309, 42.311062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272335, 34.375298, 42.484741>,  <38.438751, 34.237289, 42.588951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.272335, 34.375298, 42.484741>,  <37.994972, 34.605309, 42.311062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272335, 34.375298, 42.484741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702338, 0.404754, -0.585573,
		0.160977, 0.710995, 0.684523,
		0.693403, -0.575030, 0.434203,
		38.480354, 34.202789, 42.615002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570309, 35.071468, 42.687469>,  <37.994972, 34.605309, 42.311062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570309, 35.071468, 42.687469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.685860, 34.705849, 42.573582>,  <38.755188, 34.486477, 42.505249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.685860, 34.705849, 42.573582>,  <38.570309, 35.071468, 42.687469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685860, 34.705849, 42.573582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697215, 0.404664, -0.591724,
		0.656082, -0.027578, 0.754186,
		0.288873, -0.914050, -0.284721,
		38.772522, 34.431633, 42.488167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244961, 35.175301, 42.426819>,  <38.570309, 35.071468, 42.687469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244961, 35.175301, 42.426819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.165958, 34.804935, 42.298027>,  <39.118557, 34.582714, 42.220753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.165958, 34.804935, 42.298027>,  <39.244961, 35.175301, 42.426819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165958, 34.804935, 42.298027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631416, 0.131088, -0.764284,
		0.749870, -0.354256, 0.558746,
		-0.197508, -0.925915, -0.321982,
		39.106705, 34.527161, 42.201431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906342, 34.929604, 42.065727>,  <39.244961, 35.175301, 42.426819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906342, 34.929604, 42.065727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635136, 34.672962, 41.922256>,  <39.472412, 34.518978, 41.836174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635136, 34.672962, 41.922256>,  <39.906342, 34.929604, 42.065727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635136, 34.672962, 41.922256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506125, -0.053644, -0.860790,
		0.533043, -0.765161, 0.361102,
		-0.678014, -0.641601, -0.358672,
		39.431732, 34.480480, 41.814655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.622869, 42.480194, 30.161219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.242512, 42.516430, 30.279602>,  <26.014297, 42.538170, 30.350632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.242512, 42.516430, 30.279602>,  <26.622869, 42.480194, 30.161219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242512, 42.516430, 30.279602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119955, -0.773616, 0.622198,
		0.285323, 0.627147, 0.724761,
		-0.950895, 0.090588, 0.295960,
		25.957243, 42.543606, 30.368389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616268, 42.417019, 30.864080>,  <26.622869, 42.480194, 30.161219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616268, 42.417019, 30.864080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235767, 42.323227, 30.783945>,  <26.007467, 42.266953, 30.735863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235767, 42.323227, 30.783945>,  <26.616268, 42.417019, 30.864080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235767, 42.323227, 30.783945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042652, -0.743360, 0.667531,
		-0.305450, 0.626445, 0.717124,
		-0.951252, -0.234484, -0.200340,
		25.950392, 42.252880, 30.723843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240826, 42.381191, 31.423206>,  <26.616268, 42.417019, 30.864080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240826, 42.381191, 31.423206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.026262, 42.143978, 31.183016>,  <25.897524, 42.001648, 31.038900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.026262, 42.143978, 31.183016>,  <26.240826, 42.381191, 31.423206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026262, 42.143978, 31.183016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123662, -0.759052, 0.639178,
		-0.834850, 0.268604, 0.480497,
		-0.536408, -0.593037, -0.600478,
		25.865339, 41.966068, 31.002872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945194, 42.003639, 31.968195>,  <26.240826, 42.381191, 31.423206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945194, 42.003639, 31.968195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.884478, 41.834492, 31.610840>,  <25.848047, 41.733002, 31.396427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.884478, 41.834492, 31.610840>,  <25.945194, 42.003639, 31.968195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884478, 41.834492, 31.610840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025674, -0.905243, 0.424117,
		-0.988079, 0.041440, 0.148263,
		-0.151789, -0.422867, -0.893389,
		25.838942, 41.707630, 31.342823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643810, 41.374935, 32.159264>,  <25.945194, 42.003639, 31.968195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643810, 41.374935, 32.159264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730003, 41.289913, 31.778025>,  <25.781719, 41.238899, 31.549282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730003, 41.289913, 31.778025>,  <25.643810, 41.374935, 32.159264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730003, 41.289913, 31.778025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151995, -0.956826, 0.247752,
		-0.964606, -0.198252, -0.173872,
		0.215483, -0.212556, -0.953093,
		25.794647, 41.226147, 31.492096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193235, 40.901386, 31.976305>,  <25.643810, 41.374935, 32.159264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193235, 40.901386, 31.976305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.506889, 40.866508, 31.730532>,  <25.695082, 40.845581, 31.583069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.506889, 40.866508, 31.730532>,  <25.193235, 40.901386, 31.976305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506889, 40.866508, 31.730532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070955, -0.970989, 0.228353,
		-0.616519, -0.222657, -0.755201,
		0.784137, -0.087199, -0.614432,
		25.742130, 40.840347, 31.546202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034096, 40.428959, 31.466534>,  <25.193235, 40.901386, 31.976305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034096, 40.428959, 31.466534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.433544, 40.423794, 31.486885>,  <25.673214, 40.420692, 31.499096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.433544, 40.423794, 31.486885>,  <25.034096, 40.428959, 31.466534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433544, 40.423794, 31.486885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023957, -0.974577, 0.222768,
		0.046710, -0.223679, -0.973543,
		0.998621, -0.012917, 0.050881,
		25.733131, 40.419918, 31.502150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364693, 39.807274, 31.034115>,  <25.034096, 40.428959, 31.466534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364693, 39.807274, 31.034115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.653641, 39.935669, 31.279114>,  <25.827009, 40.012707, 31.426113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.653641, 39.935669, 31.279114>,  <25.364693, 39.807274, 31.034115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653641, 39.935669, 31.279114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138602, -0.934974, 0.326517,
		0.677476, -0.150972, -0.719884,
		0.722368, 0.320985, 0.612498,
		25.870352, 40.031963, 31.462864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089489, 39.367691, 30.949364>,  <25.364693, 39.807274, 31.034115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089489, 39.367691, 30.949364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048315, 39.533478, 31.311052>,  <26.023611, 39.632950, 31.528067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048315, 39.533478, 31.311052>,  <26.089489, 39.367691, 30.949364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048315, 39.533478, 31.311052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119824, -0.897265, 0.424920,
		0.987444, 0.152086, 0.042696,
		-0.102934, 0.414469, 0.904223,
		26.017435, 39.657818, 31.582319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740566, 39.019741, 31.145540>,  <26.089489, 39.367691, 30.949364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740566, 39.019741, 31.145540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559729, 39.159348, 31.473881>,  <26.451225, 39.243111, 31.670885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559729, 39.159348, 31.473881>,  <26.740566, 39.019741, 31.145540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559729, 39.159348, 31.473881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324539, -0.792828, 0.515847,
		0.830833, 0.499611, 0.245164,
		-0.452096, 0.349018, 0.820851,
		26.424099, 39.264053, 31.720137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222717, 39.005966, 31.737915>,  <26.740566, 39.019741, 31.145540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222717, 39.005966, 31.737915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855904, 38.989712, 31.896608>,  <26.635815, 38.979961, 31.991823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855904, 38.989712, 31.896608>,  <27.222717, 39.005966, 31.737915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855904, 38.989712, 31.896608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288315, -0.754860, 0.589119,
		0.275539, 0.654627, 0.703947,
		-0.917035, -0.040633, 0.396732,
		26.580793, 38.977524, 32.015629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400364, 38.822433, 32.456184>,  <27.222717, 39.005966, 31.737915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400364, 38.822433, 32.456184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013010, 38.739063, 32.401356>,  <26.780598, 38.689041, 32.368458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013010, 38.739063, 32.401356>,  <27.400364, 38.822433, 32.456184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013010, 38.739063, 32.401356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090236, -0.804938, 0.586456,
		-0.232568, 0.555547, 0.798298,
		-0.968385, -0.208426, -0.137072,
		26.722494, 38.676537, 32.360233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058750, 38.687904, 33.078056>,  <27.400364, 38.822433, 32.456184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058750, 38.687904, 33.078056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819452, 38.501797, 32.817097>,  <26.675873, 38.390133, 32.660522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819452, 38.501797, 32.817097>,  <27.058750, 38.687904, 33.078056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819452, 38.501797, 32.817097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018403, -0.821926, 0.569296,
		-0.801101, 0.328572, 0.500276,
		-0.598245, -0.465271, -0.652400,
		26.639978, 38.362217, 32.621376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624264, 38.288845, 33.505611>,  <27.058750, 38.687904, 33.078056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624264, 38.288845, 33.505611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597784, 38.128635, 33.140053>,  <26.581896, 38.032509, 32.920719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597784, 38.128635, 33.140053>,  <26.624264, 38.288845, 33.505611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597784, 38.128635, 33.140053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073210, -0.911484, 0.404767,
		-0.995117, 0.093702, 0.031017,
		-0.066199, -0.400520, -0.913893,
		26.577925, 38.008480, 32.865883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119886, 37.697735, 33.588467>,  <26.624264, 38.288845, 33.505611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119886, 37.697735, 33.588467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.322109, 37.613968, 33.253670>,  <26.443443, 37.563705, 33.052792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.322109, 37.613968, 33.253670>,  <26.119886, 37.697735, 33.588467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322109, 37.613968, 33.253670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011805, -0.971684, 0.235991,
		-0.862714, -0.109425, -0.493712,
		0.505555, -0.209421, -0.836993,
		26.473776, 37.551140, 33.002571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819462, 37.158623, 33.387146>,  <26.119886, 37.697735, 33.588467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819462, 37.158623, 33.387146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175379, 37.150539, 33.204777>,  <26.388929, 37.145687, 33.095356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175379, 37.150539, 33.204777>,  <25.819462, 37.158623, 33.387146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175379, 37.150539, 33.204777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098536, -0.966946, 0.235172,
		-0.445604, -0.254178, -0.858388,
		0.889791, -0.020211, -0.455921,
		26.442316, 37.144478, 33.068001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849983, 36.579769, 32.937435>,  <25.819462, 37.158623, 33.387146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849983, 36.579769, 32.937435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.223646, 36.680710, 33.038361>,  <26.447845, 36.741276, 33.098915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.223646, 36.680710, 33.038361>,  <25.849983, 36.579769, 32.937435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223646, 36.680710, 33.038361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174147, -0.939518, 0.294922,
		0.311478, -0.231565, -0.921607,
		0.934160, 0.252356, 0.252313,
		26.503895, 36.756416, 33.114056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248648, 35.984886, 32.812805>,  <25.849983, 36.579769, 32.937435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248648, 35.984886, 32.812805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513159, 36.168385, 33.050213>,  <26.671865, 36.278484, 33.192657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513159, 36.168385, 33.050213>,  <26.248648, 35.984886, 32.812805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513159, 36.168385, 33.050213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275929, -0.884489, 0.376222,
		0.697551, -0.085018, -0.711473,
		0.661276, 0.458750, 0.593517,
		26.711542, 36.306011, 33.228268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819658, 35.557575, 32.870266>,  <26.248648, 35.984886, 32.812805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819658, 35.557575, 32.870266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.884762, 35.797359, 33.183739>,  <26.923824, 35.941231, 33.371822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.884762, 35.797359, 33.183739>,  <26.819658, 35.557575, 32.870266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884762, 35.797359, 33.183739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395753, -0.767246, 0.504690,
		0.903819, 0.228002, -0.362114,
		0.162761, 0.599457, 0.783684,
		26.933590, 35.977196, 33.418842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521852, 35.637581, 32.975311>,  <26.819658, 35.557575, 32.870266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521852, 35.637581, 32.975311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.313536, 35.679443, 33.314209>,  <27.188545, 35.704559, 33.517548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.313536, 35.679443, 33.314209>,  <27.521852, 35.637581, 32.975311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313536, 35.679443, 33.314209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422366, -0.830889, 0.362257,
		0.741876, 0.546508, 0.388521,
		-0.520794, 0.104652, 0.847244,
		27.157297, 35.710838, 33.568382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074865, 35.409000, 33.507210>,  <27.521852, 35.637581, 32.975311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074865, 35.409000, 33.507210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706932, 35.414738, 33.664028>,  <27.486172, 35.418179, 33.758118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706932, 35.414738, 33.664028>,  <28.074865, 35.409000, 33.507210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706932, 35.414738, 33.664028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184227, -0.866497, 0.463942,
		0.346358, 0.498975, 0.794393,
		-0.919835, 0.014342, 0.392043,
		27.430981, 35.419041, 33.781639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637127, 35.463737, 33.924191>,  <28.074865, 35.409000, 33.507210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637127, 35.463737, 33.924191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.983353, 35.427246, 33.727222>,  <29.191088, 35.405354, 33.609043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.983353, 35.427246, 33.727222>,  <28.637127, 35.463737, 33.924191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983353, 35.427246, 33.727222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340287, 0.614268, -0.711955,
		0.367424, 0.783807, 0.500646,
		0.865566, -0.091226, -0.492416,
		29.243023, 35.399879, 33.579498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012266, 36.157925, 33.699879>,  <28.637127, 35.463737, 33.924191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012266, 36.157925, 33.699879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106157, 35.858852, 33.451405>,  <29.162491, 35.679409, 33.302319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106157, 35.858852, 33.451405>,  <29.012266, 36.157925, 33.699879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106157, 35.858852, 33.451405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363328, 0.525245, -0.769487,
		0.901608, 0.406314, -0.148364,
		0.234726, -0.747681, -0.621190,
		29.176575, 35.634548, 33.265049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132023, 36.454872, 33.097076>,  <29.012266, 36.157925, 33.699879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132023, 36.454872, 33.097076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129763, 36.078609, 32.961346>,  <29.128407, 35.852852, 32.879910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129763, 36.078609, 32.961346>,  <29.132023, 36.454872, 33.097076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129763, 36.078609, 32.961346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394924, 0.313845, -0.863445,
		0.918696, 0.129128, -0.373260,
		-0.005651, -0.940652, -0.339324,
		29.128067, 35.796413, 32.859547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507706, 36.506279, 32.471416>,  <29.132023, 36.454872, 33.097076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507706, 36.506279, 32.471416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265444, 36.187992, 32.469624>,  <29.120087, 35.997021, 32.468548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265444, 36.187992, 32.469624>,  <29.507706, 36.506279, 32.471416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265444, 36.187992, 32.469624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376675, 0.291653, -0.879236,
		0.700927, -0.530826, -0.476366,
		-0.605655, -0.795715, -0.004478,
		29.083748, 35.949276, 32.468281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648560, 36.180534, 31.844225>,  <29.507706, 36.506279, 32.471416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648560, 36.180534, 31.844225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288374, 36.043087, 31.950876>,  <29.072264, 35.960617, 32.014866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288374, 36.043087, 31.950876>,  <29.648560, 36.180534, 31.844225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288374, 36.043087, 31.950876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353200, 0.219993, -0.909314,
		0.253800, -0.912979, -0.319461,
		-0.900464, -0.343618, 0.266630,
		29.018234, 35.940002, 32.030865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473000, 35.701992, 31.287544>,  <29.648560, 36.180534, 31.844225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473000, 35.701992, 31.287544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139572, 35.816921, 31.476271>,  <28.939516, 35.885880, 31.589508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139572, 35.816921, 31.476271>,  <29.473000, 35.701992, 31.287544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139572, 35.816921, 31.476271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389176, 0.300726, -0.870693,
		-0.392057, -0.909401, -0.138857,
		-0.833567, 0.287321, 0.471818,
		28.889502, 35.903118, 31.617817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096352, 35.716129, 30.809977>,  <29.473000, 35.701992, 31.287544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096352, 35.716129, 30.809977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855537, 35.911873, 31.062351>,  <28.711050, 36.029320, 31.213776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855537, 35.911873, 31.062351>,  <29.096352, 35.716129, 30.809977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855537, 35.911873, 31.062351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520720, 0.358409, -0.774851,
		-0.605314, -0.795028, 0.039045,
		-0.602035, 0.489360, 0.630937,
		28.674927, 36.058681, 31.251633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472746, 35.556229, 30.492516>,  <29.096352, 35.716129, 30.809977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472746, 35.556229, 30.492516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453440, 35.887463, 30.715925>,  <28.441856, 36.086205, 30.849970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453440, 35.887463, 30.715925>,  <28.472746, 35.556229, 30.492516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453440, 35.887463, 30.715925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496828, 0.465190, -0.732639,
		-0.866506, -0.312850, 0.388963,
		-0.048265, 0.828084, 0.558523,
		28.438961, 36.135887, 30.883482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790804, 35.774055, 30.449030>,  <28.472746, 35.556229, 30.492516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790804, 35.774055, 30.449030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.958523, 36.111538, 30.583109>,  <28.059155, 36.314026, 30.663557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.958523, 36.111538, 30.583109>,  <27.790804, 35.774055, 30.449030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958523, 36.111538, 30.583109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519352, 0.525756, -0.673687,
		-0.744623, 0.108389, 0.658626,
		0.419297, 0.843702, 0.335198,
		28.084312, 36.364647, 30.683668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277243, 36.179829, 30.661251>,  <27.790804, 35.774055, 30.449030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277243, 36.179829, 30.661251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.570442, 36.436241, 30.570219>,  <27.746363, 36.590088, 30.515600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.570442, 36.436241, 30.570219>,  <27.277243, 36.179829, 30.661251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570442, 36.436241, 30.570219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623895, 0.500236, -0.600433,
		-0.271051, 0.582104, 0.766607,
		0.732999, 0.641030, -0.227582,
		27.790342, 36.628551, 30.501944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954247, 36.710728, 30.533623>,  <27.277243, 36.179829, 30.661251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954247, 36.710728, 30.533623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.306129, 36.860016, 30.415758>,  <27.517260, 36.949589, 30.345039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.306129, 36.860016, 30.415758>,  <26.954247, 36.710728, 30.533623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306129, 36.860016, 30.415758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475493, 0.684232, -0.552931,
		-0.004745, 0.626527, 0.779385,
		0.879707, 0.373216, -0.294662,
		27.570042, 36.971981, 30.327360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005157, 37.491943, 30.700628>,  <26.954247, 36.710728, 30.533623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005157, 37.491943, 30.700628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270721, 37.402355, 30.415236>,  <27.430059, 37.348602, 30.243999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270721, 37.402355, 30.415236>,  <27.005157, 37.491943, 30.700628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270721, 37.402355, 30.415236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375635, 0.725113, -0.577157,
		0.646621, 0.651191, 0.397281,
		0.663912, -0.223969, -0.713483,
		27.469894, 37.335163, 30.201191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280130, 38.137295, 30.508572>,  <27.005157, 37.491943, 30.700628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280130, 38.137295, 30.508572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386349, 37.899696, 30.204823>,  <27.450079, 37.757137, 30.022573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386349, 37.899696, 30.204823>,  <27.280130, 38.137295, 30.508572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386349, 37.899696, 30.204823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264783, 0.712431, -0.649871,
		0.927025, 0.373639, 0.031902,
		0.265545, -0.594000, -0.759375,
		27.466013, 37.721497, 29.977011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685528, 38.497807, 30.167738>,  <27.280130, 38.137295, 30.508572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685528, 38.497807, 30.167738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541920, 38.224079, 29.913868>,  <27.455755, 38.059841, 29.761545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541920, 38.224079, 29.913868>,  <27.685528, 38.497807, 30.167738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541920, 38.224079, 29.913868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272872, 0.727260, -0.629789,
		0.892550, -0.052923, -0.447833,
		-0.359021, -0.684319, -0.634675,
		27.434214, 38.018784, 29.723465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842140, 38.790257, 29.614433>,  <27.685528, 38.497807, 30.167738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842140, 38.790257, 29.614433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554247, 38.528656, 29.521250>,  <27.381510, 38.371696, 29.465340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554247, 38.528656, 29.521250>,  <27.842140, 38.790257, 29.614433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554247, 38.528656, 29.521250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358741, 0.637629, -0.681715,
		0.594376, -0.407086, -0.693541,
		-0.719738, -0.653996, -0.232953,
		27.338326, 38.332458, 29.451363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765432, 38.782677, 28.861887>,  <27.842140, 38.790257, 29.614433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765432, 38.782677, 28.861887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417564, 38.643837, 29.002281>,  <27.208843, 38.560532, 29.086517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417564, 38.643837, 29.002281>,  <27.765432, 38.782677, 28.861887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417564, 38.643837, 29.002281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492705, 0.653890, -0.574169,
		-0.030209, -0.672270, -0.739689,
		-0.869672, -0.347103, 0.350984,
		27.156662, 38.539707, 29.107576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353439, 38.723553, 28.324310>,  <27.765432, 38.782677, 28.861887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353439, 38.723553, 28.324310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070303, 38.722599, 28.606857>,  <26.900421, 38.722027, 28.776384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070303, 38.722599, 28.606857>,  <27.353439, 38.723553, 28.324310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070303, 38.722599, 28.606857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565571, 0.601011, -0.564726,
		-0.423188, -0.799237, -0.426768,
		-0.707843, -0.002382, 0.706366,
		26.857950, 38.721886, 28.818768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635248, 38.775238, 28.001503>,  <27.353439, 38.723553, 28.324310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635248, 38.775238, 28.001503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596455, 38.898468, 28.380066>,  <26.573177, 38.972404, 28.607203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596455, 38.898468, 28.380066>,  <26.635248, 38.775238, 28.001503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596455, 38.898468, 28.380066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401996, 0.857750, -0.320413,
		-0.910491, -0.411526, 0.040657,
		-0.096985, 0.308077, 0.946405,
		26.567360, 38.990891, 28.663988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936195, 38.887184, 28.079744>,  <26.635248, 38.775238, 28.001503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936195, 38.887184, 28.079744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140850, 39.108006, 28.343098>,  <26.263643, 39.240498, 28.501110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140850, 39.108006, 28.343098>,  <25.936195, 38.887184, 28.079744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140850, 39.108006, 28.343098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409289, 0.830341, -0.378175,
		-0.755453, -0.075979, 0.650783,
		0.511638, 0.552052, 0.658381,
		26.294342, 39.273621, 28.540611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450651, 39.264606, 28.313267>,  <25.936195, 38.887184, 28.079744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450651, 39.264606, 28.313267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795818, 39.448441, 28.397312>,  <26.002918, 39.558743, 28.447739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795818, 39.448441, 28.397312>,  <25.450651, 39.264606, 28.313267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795818, 39.448441, 28.397312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415595, 0.881958, -0.222329,
		-0.287491, 0.104530, 0.952062,
		0.862919, 0.459590, 0.210113,
		26.054693, 39.586319, 28.460346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300106, 39.741657, 28.968105>,  <25.450651, 39.264606, 28.313267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300106, 39.741657, 28.968105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.569662, 39.821281, 28.683500>,  <25.731396, 39.869057, 28.512737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.569662, 39.821281, 28.683500>,  <25.300106, 39.741657, 28.968105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569662, 39.821281, 28.683500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597661, 0.713043, -0.366567,
		0.434367, 0.672268, 0.599484,
		0.673889, 0.199064, -0.711511,
		25.771830, 39.881001, 28.470047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.116760, 30.359657, 44.739967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.733070, 30.248672, 44.718430>,  <39.502857, 30.182081, 44.705505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.733070, 30.248672, 44.718430>,  <40.116760, 30.359657, 44.739967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733070, 30.248672, 44.718430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043553, -0.333339, 0.941801,
		-0.279265, 0.901054, 0.331832,
		-0.959226, -0.277464, -0.053846,
		39.445301, 30.165434, 44.702274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846317, 30.584360, 45.360840>,  <40.116760, 30.359657, 44.739967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846317, 30.584360, 45.360840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600300, 30.301594, 45.221134>,  <39.452690, 30.131933, 45.137310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600300, 30.301594, 45.221134>,  <39.846317, 30.584360, 45.360840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600300, 30.301594, 45.221134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050649, -0.406619, 0.912193,
		-0.786862, 0.578732, 0.214285,
		-0.615047, -0.706916, -0.349265,
		39.415787, 30.089520, 45.116356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182701, 30.577847, 45.870983>,  <39.846317, 30.584360, 45.360840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182701, 30.577847, 45.870983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186127, 30.220091, 45.692101>,  <39.188183, 30.005438, 45.584770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186127, 30.220091, 45.692101>,  <39.182701, 30.577847, 45.870983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186127, 30.220091, 45.692101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127421, -0.444551, 0.886645,
		-0.991812, 0.049394, -0.117769,
		0.008560, -0.894391, -0.447205,
		39.188694, 29.951775, 45.557938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621452, 30.227287, 46.208241>,  <39.182701, 30.577847, 45.870983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621452, 30.227287, 46.208241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839497, 29.945265, 46.026798>,  <38.970322, 29.776051, 45.917934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839497, 29.945265, 46.026798>,  <38.621452, 30.227287, 46.208241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839497, 29.945265, 46.026798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249367, -0.652922, 0.715198,
		-0.800422, -0.276746, -0.531730,
		0.545106, -0.705056, -0.453602,
		39.003029, 29.733747, 45.890717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286774, 29.651182, 46.240906>,  <38.621452, 30.227287, 46.208241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286774, 29.651182, 46.240906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656265, 29.514826, 46.171040>,  <38.877960, 29.433012, 46.129120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656265, 29.514826, 46.171040>,  <38.286774, 29.651182, 46.240906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656265, 29.514826, 46.171040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149376, -0.740506, 0.655238,
		-0.352708, -0.579174, -0.734952,
		0.923733, -0.340892, -0.174668,
		38.933384, 29.412558, 46.118641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255348, 29.006426, 46.148258>,  <38.286774, 29.651182, 46.240906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255348, 29.006426, 46.148258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650253, 29.015751, 46.211216>,  <38.887196, 29.021345, 46.248993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650253, 29.015751, 46.211216>,  <38.255348, 29.006426, 46.148258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650253, 29.015751, 46.211216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093007, -0.718075, 0.689723,
		0.129101, -0.695575, -0.706759,
		0.987260, 0.023310, 0.157398,
		38.946430, 29.022743, 46.258434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435829, 28.366409, 46.160759>,  <38.255348, 29.006426, 46.148258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435829, 28.366409, 46.160759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722725, 28.566858, 46.354435>,  <38.894863, 28.687128, 46.470642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722725, 28.566858, 46.354435>,  <38.435829, 28.366409, 46.160759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722725, 28.566858, 46.354435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008720, -0.701255, 0.712857,
		0.696772, -0.507068, -0.507338,
		0.717240, 0.501123, 0.484193,
		38.937897, 28.717196, 46.499691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919144, 27.891918, 46.258202>,  <38.435829, 28.366409, 46.160759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919144, 27.891918, 46.258202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972443, 28.188684, 46.521049>,  <39.004421, 28.366745, 46.678757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972443, 28.188684, 46.521049>,  <38.919144, 27.891918, 46.258202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972443, 28.188684, 46.521049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136301, -0.670449, 0.729329,
		0.981666, -0.007613, -0.190458,
		0.133244, 0.741917, 0.657119,
		39.012417, 28.411259, 46.718185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316116, 27.624296, 46.684372>,  <38.919144, 27.891918, 46.258202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316116, 27.624296, 46.684372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.193623, 27.931538, 46.909313>,  <39.120125, 28.115883, 47.044277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.193623, 27.931538, 46.909313>,  <39.316116, 27.624296, 46.684372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193623, 27.931538, 46.909313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127882, -0.552184, 0.823856,
		0.943328, 0.324206, 0.070871,
		-0.306233, 0.768103, 0.562351,
		39.101753, 28.161968, 47.078018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716644, 27.562206, 47.299294>,  <39.316116, 27.624296, 46.684372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716644, 27.562206, 47.299294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399479, 27.791731, 47.381298>,  <39.209179, 27.929445, 47.430500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399479, 27.791731, 47.381298>,  <39.716644, 27.562206, 47.299294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399479, 27.791731, 47.381298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085783, -0.438215, 0.894767,
		0.603264, 0.691888, 0.396690,
		-0.792915, 0.573810, 0.205007,
		39.161606, 27.963875, 47.442799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769245, 27.749044, 47.966030>,  <39.716644, 27.562206, 47.299294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769245, 27.749044, 47.966030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.386467, 27.747759, 47.849922>,  <39.156799, 27.746988, 47.780258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.386467, 27.747759, 47.849922>,  <39.769245, 27.749044, 47.966030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386467, 27.747759, 47.849922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251920, -0.487614, 0.835924,
		-0.144225, 0.873053, 0.465808,
		-0.956941, -0.003215, -0.290265,
		39.099384, 27.746794, 47.762844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348267, 27.988184, 48.586914>,  <39.769245, 27.749044, 47.966030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348267, 27.988184, 48.586914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103951, 27.787756, 48.341682>,  <38.957359, 27.667500, 48.194546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103951, 27.787756, 48.341682>,  <39.348267, 27.988184, 48.586914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103951, 27.787756, 48.341682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307640, -0.563275, 0.766863,
		-0.729584, 0.656999, 0.189893,
		-0.610791, -0.501072, -0.613075,
		38.920712, 27.637434, 48.157761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680996, 27.863119, 48.894646>,  <39.348267, 27.988184, 48.586914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680996, 27.863119, 48.894646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.698223, 27.585266, 48.607418>,  <38.708561, 27.418554, 48.435081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.698223, 27.585266, 48.607418>,  <38.680996, 27.863119, 48.894646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698223, 27.585266, 48.607418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481777, -0.644091, 0.594170,
		-0.875235, 0.320362, -0.362398,
		0.043068, -0.694633, -0.718074,
		38.711143, 27.376877, 48.391994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024590, 27.473001, 48.862717>,  <38.680996, 27.863119, 48.894646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024590, 27.473001, 48.862717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318096, 27.248516, 48.709549>,  <38.494202, 27.113825, 48.617649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318096, 27.248516, 48.709549>,  <38.024590, 27.473001, 48.862717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318096, 27.248516, 48.709549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428723, -0.819707, 0.379838,
		-0.527051, -0.114547, -0.842079,
		0.733767, -0.561212, -0.382918,
		38.538227, 27.080153, 48.594673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293236, 27.590755, 48.799702>,  <38.024590, 27.473001, 48.862717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293236, 27.590755, 48.799702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.156296, 27.825674, 49.093063>,  <37.074131, 27.966625, 49.269081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.156296, 27.825674, 49.093063>,  <37.293236, 27.590755, 48.799702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156296, 27.825674, 49.093063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453439, 0.580381, -0.676425,
		-0.822913, -0.564130, 0.067606,
		-0.342354, 0.587294, 0.733402,
		37.053589, 28.001862, 49.313084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591999, 27.800510, 48.512550>,  <37.293236, 27.590755, 48.799702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591999, 27.800510, 48.512550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660244, 28.076294, 48.794128>,  <36.701191, 28.241764, 48.963074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660244, 28.076294, 48.794128>,  <36.591999, 27.800510, 48.512550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660244, 28.076294, 48.794128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334037, 0.712585, -0.616962,
		-0.926991, -0.129885, 0.351878,
		0.170609, 0.689459, 0.703946,
		36.711426, 28.283131, 49.005314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025211, 28.153439, 48.516323>,  <36.591999, 27.800510, 48.512550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025211, 28.153439, 48.516323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272667, 28.409729, 48.698204>,  <36.421139, 28.563503, 48.807335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272667, 28.409729, 48.698204>,  <36.025211, 28.153439, 48.516323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272667, 28.409729, 48.698204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338651, 0.739681, -0.581539,
		-0.708944, 0.205775, 0.674577,
		0.618639, 0.640725, 0.454706,
		36.458260, 28.601946, 48.834618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626579, 28.750944, 48.827534>,  <36.025211, 28.153439, 48.516323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626579, 28.750944, 48.827534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997131, 28.895395, 48.784821>,  <36.219463, 28.982065, 48.759193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997131, 28.895395, 48.784821>,  <35.626579, 28.750944, 48.827534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997131, 28.895395, 48.784821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361857, 0.775110, -0.517942,
		-0.104276, 0.518452, 0.848725,
		0.926383, 0.361126, -0.106780,
		36.275047, 29.003733, 48.752789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608486, 29.471418, 48.951359>,  <35.626579, 28.750944, 48.827534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608486, 29.471418, 48.951359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933769, 29.401112, 48.729439>,  <36.128941, 29.358927, 48.596287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933769, 29.401112, 48.729439>,  <35.608486, 29.471418, 48.951359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933769, 29.401112, 48.729439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175592, 0.834772, -0.521846,
		0.554852, 0.521787, 0.647979,
		0.813208, -0.175768, -0.554797,
		36.177731, 29.348381, 48.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877758, 30.160818, 48.824295>,  <35.608486, 29.471418, 48.951359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877758, 30.160818, 48.824295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083191, 29.927961, 48.572155>,  <36.206451, 29.788246, 48.420872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083191, 29.927961, 48.572155>,  <35.877758, 30.160818, 48.824295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083191, 29.927961, 48.572155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011139, 0.739102, -0.673501,
		0.857969, 0.338876, 0.386072,
		0.513580, -0.582144, -0.630352,
		36.237267, 29.753319, 48.383049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535980, 30.372972, 48.707851>,  <35.877758, 30.160818, 48.824295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535980, 30.372972, 48.707851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448532, 30.172060, 48.373207>,  <36.396061, 30.051514, 48.172421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448532, 30.172060, 48.373207>,  <36.535980, 30.372972, 48.707851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448532, 30.172060, 48.373207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154768, 0.828652, -0.537944,
		0.963458, -0.247088, -0.103425,
		-0.218623, -0.502279, -0.836612,
		36.382946, 30.021376, 48.122223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979515, 30.666397, 48.182663>,  <36.535980, 30.372972, 48.707851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979515, 30.666397, 48.182663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702854, 30.465847, 47.974724>,  <36.536858, 30.345518, 47.849960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702854, 30.465847, 47.974724>,  <36.979515, 30.666397, 48.182663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702854, 30.465847, 47.974724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030874, 0.739649, -0.672285,
		0.721562, -0.448944, -0.527065,
		-0.691661, -0.501368, -0.519842,
		36.495358, 30.315435, 47.818771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310764, 30.395782, 47.622635>,  <36.979515, 30.666397, 48.182663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310764, 30.395782, 47.622635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924568, 30.406626, 47.519028>,  <36.692852, 30.413132, 47.456863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924568, 30.406626, 47.519028>,  <37.310764, 30.395782, 47.622635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924568, 30.406626, 47.519028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221888, 0.606337, -0.763623,
		0.136351, -0.794745, -0.591429,
		-0.965492, 0.027110, -0.259019,
		36.634922, 30.414759, 47.441322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334721, 30.380356, 47.013161>,  <37.310764, 30.395782, 47.622635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334721, 30.380356, 47.013161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967487, 30.538034, 47.029850>,  <36.747147, 30.632641, 47.039864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967487, 30.538034, 47.029850>,  <37.334721, 30.380356, 47.013161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967487, 30.538034, 47.029850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236116, 0.628360, -0.741224,
		-0.318401, -0.670652, -0.669960,
		-0.918079, 0.394195, 0.041719,
		36.692062, 30.656294, 47.042366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062046, 30.407490, 46.366749>,  <37.334721, 30.380356, 47.013161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062046, 30.407490, 46.366749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846195, 30.699976, 46.533661>,  <36.716686, 30.875467, 46.633808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846195, 30.699976, 46.533661>,  <37.062046, 30.407490, 46.366749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846195, 30.699976, 46.533661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145750, 0.569296, -0.809110,
		-0.829192, -0.375799, -0.413782,
		-0.539627, 0.731216, 0.417284,
		36.684307, 30.919340, 46.658848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668427, 30.590948, 45.654968>,  <37.062046, 30.407490, 46.366749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668427, 30.590948, 45.654968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627819, 30.864082, 45.944363>,  <36.603455, 31.027964, 46.118000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627819, 30.864082, 45.944363>,  <36.668427, 30.590948, 45.654968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627819, 30.864082, 45.944363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043317, 0.729585, -0.682518,
		-0.993891, -0.037946, -0.103642,
		-0.101514, 0.682837, 0.723484,
		36.597366, 31.068933, 46.161407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153297, 31.169531, 45.410126>,  <36.668427, 30.590948, 45.654968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153297, 31.169531, 45.410126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379005, 31.322674, 45.702705>,  <36.514431, 31.414560, 45.878254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379005, 31.322674, 45.702705>,  <36.153297, 31.169531, 45.410126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379005, 31.322674, 45.702705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100844, 0.847374, -0.521333,
		-0.819405, 0.367937, 0.439542,
		0.564274, 0.382857, 0.731447,
		36.548286, 31.437531, 45.922138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830360, 31.787827, 45.670086>,  <36.153297, 31.169531, 45.410126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830360, 31.787827, 45.670086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221577, 31.810501, 45.750309>,  <36.456306, 31.824106, 45.798443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221577, 31.810501, 45.750309>,  <35.830360, 31.787827, 45.670086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221577, 31.810501, 45.750309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088184, 0.759361, -0.644666,
		-0.188843, 0.648195, 0.737686,
		0.978040, 0.056689, 0.200560,
		36.514988, 31.827507, 45.810478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309330, 32.361965, 45.979389>,  <35.830360, 31.787827, 45.670086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309330, 32.361965, 45.979389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966270, 32.373810, 45.774036>,  <34.760437, 32.380917, 45.650826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966270, 32.373810, 45.774036>,  <35.309330, 32.361965, 45.979389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966270, 32.373810, 45.774036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392988, -0.681634, 0.617200,
		-0.331667, 0.731094, 0.596237,
		-0.857646, 0.029609, -0.513387,
		34.708977, 32.382694, 45.620022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824860, 32.552460, 46.492176>,  <35.309330, 32.361965, 45.979389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824860, 32.552460, 46.492176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643009, 32.350082, 46.198959>,  <34.533901, 32.228657, 46.023029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643009, 32.350082, 46.198959>,  <34.824860, 32.552460, 46.492176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643009, 32.350082, 46.198959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326396, -0.671119, 0.665631,
		-0.828724, 0.541872, 0.139970,
		-0.454623, -0.505939, -0.733037,
		34.506622, 32.198299, 45.979050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105560, 32.456665, 46.713089>,  <34.824860, 32.552460, 46.492176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105560, 32.456665, 46.713089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189102, 32.162064, 46.455738>,  <34.239227, 31.985302, 46.301327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189102, 32.162064, 46.455738>,  <34.105560, 32.456665, 46.713089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189102, 32.162064, 46.455738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494758, -0.647060, 0.580111,
		-0.843560, 0.197157, -0.499535,
		0.208856, -0.736507, -0.643378,
		34.251759, 31.941111, 46.262726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521851, 32.160789, 46.717793>,  <34.105560, 32.456665, 46.713089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521851, 32.160789, 46.717793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747833, 31.872822, 46.556526>,  <33.883423, 31.700041, 46.459766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747833, 31.872822, 46.556526>,  <33.521851, 32.160789, 46.717793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747833, 31.872822, 46.556526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561329, -0.693459, 0.451690,
		-0.604760, -0.028874, -0.795884,
		0.564955, -0.719917, -0.403168,
		33.917320, 31.656847, 46.435574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048981, 31.597252, 46.492889>,  <33.521851, 32.160789, 46.717793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048981, 31.597252, 46.492889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406666, 31.428808, 46.553612>,  <33.621277, 31.327742, 46.590046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406666, 31.428808, 46.553612>,  <33.048981, 31.597252, 46.492889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406666, 31.428808, 46.553612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437119, -0.748378, 0.498857,
		-0.096468, -0.512442, -0.853286,
		0.894215, -0.421111, 0.151804,
		33.674931, 31.302475, 46.599152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985012, 30.804857, 46.465218>,  <33.048981, 31.597252, 46.492889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985012, 30.804857, 46.465218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332981, 30.846012, 46.658154>,  <33.541763, 30.870705, 46.773914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332981, 30.846012, 46.658154>,  <32.985012, 30.804857, 46.465218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332981, 30.846012, 46.658154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262992, -0.730573, 0.630157,
		0.417220, -0.675039, -0.608482,
		0.869921, 0.102888, 0.482339,
		33.593956, 30.876879, 46.802856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286957, 30.177389, 46.549088>,  <32.985012, 30.804857, 46.465218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286957, 30.177389, 46.549088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447426, 30.399904, 46.840183>,  <33.543705, 30.533413, 47.014839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447426, 30.399904, 46.840183>,  <33.286957, 30.177389, 46.549088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447426, 30.399904, 46.840183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233741, -0.706004, 0.668523,
		0.885680, -0.438294, -0.153200,
		0.401169, 0.556288, 0.727740,
		33.567776, 30.566792, 47.058506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119320, 29.525562, 46.208916>,  <33.286957, 30.177389, 46.549088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119320, 29.525562, 46.208916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754837, 29.378994, 46.133617>,  <32.536148, 29.291054, 46.088440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754837, 29.378994, 46.133617>,  <33.119320, 29.525562, 46.208916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754837, 29.378994, 46.133617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027309, 0.402231, -0.915131,
		0.411064, -0.839006, -0.356505,
		-0.911198, -0.366442, -0.188255,
		32.481476, 29.269068, 46.077145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161587, 29.124105, 45.572670>,  <33.119320, 29.525562, 46.208916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161587, 29.124105, 45.572670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785892, 29.257708, 45.604343>,  <32.560474, 29.337870, 45.623348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785892, 29.257708, 45.604343>,  <33.161587, 29.124105, 45.572670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785892, 29.257708, 45.604343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011658, 0.261592, -0.965108,
		-0.343067, -0.905543, -0.249591,
		-0.939238, 0.334007, 0.079187,
		32.504120, 29.357910, 45.628098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788067, 28.948185, 44.933811>,  <33.161587, 29.124105, 45.572670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788067, 28.948185, 44.933811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527462, 29.211031, 45.085461>,  <32.371101, 29.368738, 45.176449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527462, 29.211031, 45.085461>,  <32.788067, 28.948185, 44.933811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527462, 29.211031, 45.085461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059029, 0.454317, -0.888882,
		-0.756342, -0.601493, -0.257202,
		-0.651508, 0.657116, 0.379125,
		32.332008, 29.408165, 45.199200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199631, 28.894762, 44.525642>,  <32.788067, 28.948185, 44.933811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199631, 28.894762, 44.525642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207417, 29.247227, 44.714607>,  <32.212090, 29.458706, 44.827988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207417, 29.247227, 44.714607>,  <32.199631, 28.894762, 44.525642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207417, 29.247227, 44.714607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029427, 0.472806, -0.880675,
		-0.999377, 0.003240, 0.035133,
		0.019465, 0.881160, 0.472417,
		32.213257, 29.511576, 44.856331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698524, 29.241846, 44.178379>,  <32.199631, 28.894762, 44.525642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698524, 29.241846, 44.178379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948807, 29.503836, 44.347851>,  <32.098976, 29.661030, 44.449532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948807, 29.503836, 44.347851>,  <31.698524, 29.241846, 44.178379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948807, 29.503836, 44.347851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083163, 0.596049, -0.798630,
		-0.775612, 0.464474, 0.427422,
		0.625707, 0.654973, 0.423676,
		32.136520, 29.700327, 44.474953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440495, 29.926464, 43.969067>,  <31.698524, 29.241846, 44.178379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440495, 29.926464, 43.969067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808575, 30.020546, 44.094231>,  <32.029423, 30.076994, 44.169331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808575, 30.020546, 44.094231>,  <31.440495, 29.926464, 43.969067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808575, 30.020546, 44.094231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105263, 0.621238, -0.776520,
		-0.377031, 0.747491, 0.546905,
		0.920200, 0.235203, 0.312909,
		32.084633, 30.091106, 44.188103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429464, 30.609888, 43.851166>,  <31.440495, 29.926464, 43.969067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429464, 30.609888, 43.851166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821823, 30.534897, 43.871937>,  <32.057240, 30.489902, 43.884399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821823, 30.534897, 43.871937>,  <31.429464, 30.609888, 43.851166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821823, 30.534897, 43.871937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175681, 0.739065, -0.650323,
		0.083543, 0.647021, 0.757882,
		0.980896, -0.187476, 0.051925,
		32.116093, 30.478655, 43.887516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.836803, 25.805922, 47.019997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.143997, 26.056604, 47.072823>,  <36.328312, 26.207014, 47.104519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.143997, 26.056604, 47.072823>,  <35.836803, 25.805922, 47.019997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143997, 26.056604, 47.072823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157020, 0.384144, -0.909823,
		-0.620924, 0.677992, 0.393422,
		0.767983, 0.626706, 0.132066,
		36.374393, 26.244616, 47.112442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559067, 26.560247, 46.844006>,  <35.836803, 25.805922, 47.019997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559067, 26.560247, 46.844006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958000, 26.570246, 46.816578>,  <36.197361, 26.576244, 46.800121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958000, 26.570246, 46.816578>,  <35.559067, 26.560247, 46.844006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958000, 26.570246, 46.816578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072217, 0.473425, -0.877869,
		0.010517, 0.880480, 0.473968,
		0.997334, 0.024996, -0.068565,
		36.257202, 26.577745, 46.796009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563980, 27.138214, 46.429737>,  <35.559067, 26.560247, 46.844006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563980, 27.138214, 46.429737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.937473, 26.997019, 46.405945>,  <36.161572, 26.912302, 46.391670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.937473, 26.997019, 46.405945>,  <35.563980, 27.138214, 46.429737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937473, 26.997019, 46.405945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086648, 0.384093, -0.919219,
		0.347320, 0.853154, 0.389227,
		0.933735, -0.352989, -0.059480,
		36.217594, 26.891123, 46.388100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932343, 27.722309, 46.161148>,  <35.563980, 27.138214, 46.429737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932343, 27.722309, 46.161148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.116169, 27.375729, 46.083103>,  <36.226463, 27.167780, 46.036278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.116169, 27.375729, 46.083103>,  <35.932343, 27.722309, 46.161148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116169, 27.375729, 46.083103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128250, 0.282121, -0.950768,
		0.878837, 0.411915, 0.240775,
		0.459563, -0.866449, -0.195110,
		36.254036, 27.115793, 46.024570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619949, 27.926430, 45.788712>,  <35.932343, 27.722309, 46.161148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619949, 27.926430, 45.788712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.520306, 27.548361, 45.704243>,  <36.460518, 27.321520, 45.653561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.520306, 27.548361, 45.704243>,  <36.619949, 27.926430, 45.788712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520306, 27.548361, 45.704243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054939, 0.203899, -0.977449,
		0.966915, -0.255096, 0.001133,
		-0.249113, -0.945173, -0.211168,
		36.445572, 27.264809, 45.640892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135475, 27.723978, 45.244789>,  <36.619949, 27.926430, 45.788712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135475, 27.723978, 45.244789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.853298, 27.443075, 45.206436>,  <36.683994, 27.274534, 45.183426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.853298, 27.443075, 45.206436>,  <37.135475, 27.723978, 45.244789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853298, 27.443075, 45.206436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107414, 0.027784, -0.993826,
		0.700584, -0.711382, 0.055832,
		-0.705439, -0.702256, -0.095878,
		36.641666, 27.232399, 45.177673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307152, 27.055271, 44.861168>,  <37.135475, 27.723978, 45.244789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307152, 27.055271, 44.861168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.908802, 27.053915, 44.824890>,  <36.669792, 27.053101, 44.803123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.908802, 27.053915, 44.824890>,  <37.307152, 27.055271, 44.861168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908802, 27.053915, 44.824890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090136, 0.080157, -0.992698,
		0.010633, -0.996776, -0.079521,
		-0.995873, -0.003388, -0.090698,
		36.610039, 27.052898, 44.797680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090385, 26.592674, 44.219193>,  <37.307152, 27.055271, 44.861168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090385, 26.592674, 44.219193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.791031, 26.850109, 44.283337>,  <36.611420, 27.004570, 44.321823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.791031, 26.850109, 44.283337>,  <37.090385, 26.592674, 44.219193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791031, 26.850109, 44.283337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009308, 0.231556, -0.972777,
		-0.663196, -0.729507, -0.167303,
		-0.748388, 0.643585, 0.160357,
		36.566513, 27.043184, 44.331444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623905, 26.406157, 43.762405>,  <37.090385, 26.592674, 44.219193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623905, 26.406157, 43.762405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535866, 26.784468, 43.857956>,  <36.483044, 27.011454, 43.915287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535866, 26.784468, 43.857956>,  <36.623905, 26.406157, 43.762405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535866, 26.784468, 43.857956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113071, 0.218499, -0.969264,
		-0.968902, -0.240345, 0.058848,
		-0.220100, 0.945776, 0.238880,
		36.469837, 27.068201, 43.929619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107929, 26.532814, 43.277042>,  <36.623905, 26.406157, 43.762405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107929, 26.532814, 43.277042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218273, 26.896231, 43.402550>,  <36.284481, 27.114281, 43.477856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218273, 26.896231, 43.402550>,  <36.107929, 26.532814, 43.277042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218273, 26.896231, 43.402550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200753, 0.373696, -0.905566,
		-0.940000, 0.186818, 0.285480,
		0.275859, 0.908543, 0.313770,
		36.301029, 27.168793, 43.496681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588921, 26.916882, 42.965382>,  <36.107929, 26.532814, 43.277042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588921, 26.916882, 42.965382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.887527, 27.172977, 43.037838>,  <36.066692, 27.326635, 43.081310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.887527, 27.172977, 43.037838>,  <35.588921, 26.916882, 42.965382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887527, 27.172977, 43.037838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162045, 0.438978, -0.883765,
		-0.645337, 0.630389, 0.431450,
		0.746513, 0.640241, 0.181137,
		36.111481, 27.365049, 43.092178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389660, 27.526022, 42.601315>,  <35.588921, 26.916882, 42.965382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389660, 27.526022, 42.601315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784458, 27.559071, 42.656460>,  <36.021339, 27.578899, 42.689545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784458, 27.559071, 42.656460>,  <35.389660, 27.526022, 42.601315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784458, 27.559071, 42.656460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094158, 0.397903, -0.912583,
		-0.130254, 0.913699, 0.384951,
		0.987000, 0.082621, 0.137860,
		36.080559, 27.583857, 42.697819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961014, 28.099367, 42.887249>,  <35.389660, 27.526022, 42.601315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961014, 28.099367, 42.887249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.581352, 28.156225, 42.774887>,  <34.353558, 28.190340, 42.707470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.581352, 28.156225, 42.774887>,  <34.961014, 28.099367, 42.887249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581352, 28.156225, 42.774887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311430, -0.293279, 0.903880,
		0.046096, 0.945401, 0.322633,
		-0.949150, 0.142143, -0.280907,
		34.296608, 28.198868, 42.690617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647560, 28.353310, 43.463943>,  <34.961014, 28.099367, 42.887249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647560, 28.353310, 43.463943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.331451, 28.218954, 43.258945>,  <34.141788, 28.138340, 43.135948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.331451, 28.218954, 43.258945>,  <34.647560, 28.353310, 43.463943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331451, 28.218954, 43.258945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398950, -0.352782, 0.846394,
		-0.465094, 0.873340, 0.144790,
		-0.790270, -0.335889, -0.512496,
		34.094372, 28.118187, 43.105198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077110, 28.577120, 43.823273>,  <34.647560, 28.353310, 43.463943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077110, 28.577120, 43.823273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.941139, 28.280695, 43.591660>,  <33.859558, 28.102840, 43.452690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.941139, 28.280695, 43.591660>,  <34.077110, 28.577120, 43.823273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941139, 28.280695, 43.591660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589667, -0.311690, 0.745079,
		-0.732628, 0.594707, -0.331029,
		-0.339925, -0.741062, -0.579032,
		33.839161, 28.058376, 43.417950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415550, 28.463188, 43.945717>,  <34.077110, 28.577120, 43.823273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415550, 28.463188, 43.945717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.513195, 28.110361, 43.784538>,  <33.571781, 27.898664, 43.687832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.513195, 28.110361, 43.784538>,  <33.415550, 28.463188, 43.945717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513195, 28.110361, 43.784538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431851, -0.470925, 0.769242,
		-0.868282, -0.013769, -0.495881,
		0.244114, -0.882066, -0.402950,
		33.586430, 27.845741, 43.663654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850231, 27.993330, 44.055504>,  <33.415550, 28.463188, 43.945717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850231, 27.993330, 44.055504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.173367, 27.764872, 43.997284>,  <33.367249, 27.627796, 43.962353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.173367, 27.764872, 43.997284>,  <32.850231, 27.993330, 44.055504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173367, 27.764872, 43.997284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293939, -0.604451, 0.740432,
		-0.510874, -0.555367, -0.656182,
		0.807841, -0.571145, -0.145554,
		33.415718, 27.593529, 43.953617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549183, 27.397255, 44.108120>,  <32.850231, 27.993330, 44.055504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549183, 27.397255, 44.108120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.942730, 27.334597, 44.142677>,  <33.178860, 27.297003, 44.163410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.942730, 27.334597, 44.142677>,  <32.549183, 27.397255, 44.108120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942730, 27.334597, 44.142677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172448, -0.702068, 0.690914,
		-0.047573, -0.694668, -0.717756,
		0.983870, -0.156645, 0.086394,
		33.237892, 27.287603, 44.168594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647583, 26.615519, 44.029316>,  <32.549183, 27.397255, 44.108120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647583, 26.615519, 44.029316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.989468, 26.739527, 44.195862>,  <33.194599, 26.813932, 44.295788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.989468, 26.739527, 44.195862>,  <32.647583, 26.615519, 44.029316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989468, 26.739527, 44.195862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165619, -0.597300, 0.784731,
		0.491978, -0.739675, -0.459173,
		0.854710, 0.310023, 0.416362,
		33.245880, 26.832533, 44.320770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102303, 25.968178, 44.262398>,  <32.647583, 26.615519, 44.029316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102303, 25.968178, 44.262398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.204746, 26.277058, 44.494987>,  <33.266212, 26.462385, 44.634541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.204746, 26.277058, 44.494987>,  <33.102303, 25.968178, 44.262398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204746, 26.277058, 44.494987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177910, -0.553607, 0.813552,
		0.950135, -0.311807, -0.004400,
		0.256107, 0.772201, 0.581475,
		33.281578, 26.508718, 44.669430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589466, 25.671772, 44.657875>,  <33.102303, 25.968178, 44.262398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589466, 25.671772, 44.657875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.471939, 26.003786, 44.847488>,  <33.401421, 26.202995, 44.961258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.471939, 26.003786, 44.847488>,  <33.589466, 25.671772, 44.657875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471939, 26.003786, 44.847488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108490, -0.463762, 0.879292,
		0.949684, 0.309782, 0.046212,
		-0.293821, 0.830036, 0.474036,
		33.383793, 26.252796, 44.989700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868713, 25.632448, 45.410397>,  <33.589466, 25.671772, 44.657875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868713, 25.632448, 45.410397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579670, 25.908743, 45.421150>,  <33.406246, 26.074520, 45.427601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579670, 25.908743, 45.421150>,  <33.868713, 25.632448, 45.410397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579670, 25.908743, 45.421150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179558, -0.225115, 0.957644,
		0.667532, 0.687173, 0.286697,
		-0.722607, 0.690737, 0.026884,
		33.362888, 26.115963, 45.429214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066288, 26.129055, 45.944977>,  <33.868713, 25.632448, 45.410397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066288, 26.129055, 45.944977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672508, 26.126394, 45.874767>,  <33.436241, 26.124798, 45.832642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672508, 26.126394, 45.874767>,  <34.066288, 26.129055, 45.944977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672508, 26.126394, 45.874767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160679, -0.369563, 0.915208,
		-0.070956, 0.929182, 0.362748,
		-0.984453, -0.006654, -0.175523,
		33.377171, 26.124397, 45.822109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843002, 26.401615, 46.497463>,  <34.066288, 26.129055, 45.944977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843002, 26.401615, 46.497463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524773, 26.224951, 46.331573>,  <33.333836, 26.118952, 46.232040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524773, 26.224951, 46.331573>,  <33.843002, 26.401615, 46.497463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524773, 26.224951, 46.331573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409784, -0.111932, 0.905289,
		-0.446250, 0.890173, -0.091934,
		-0.795574, -0.441659, -0.414728,
		33.286102, 26.092453, 46.207153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275917, 26.597498, 46.909042>,  <33.843002, 26.401615, 46.497463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275917, 26.597498, 46.909042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.104317, 26.279123, 46.738194>,  <33.001354, 26.088099, 46.635685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.104317, 26.279123, 46.738194>,  <33.275917, 26.597498, 46.909042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104317, 26.279123, 46.738194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325743, -0.304718, 0.895007,
		-0.842524, 0.523095, -0.128547,
		-0.429004, -0.795939, -0.427127,
		32.975616, 26.040342, 46.610054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808861, 26.485077, 47.443069>,  <33.275917, 26.597498, 46.909042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808861, 26.485077, 47.443069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806187, 26.165251, 47.202854>,  <32.804585, 25.973354, 47.058723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806187, 26.165251, 47.202854>,  <32.808861, 26.485077, 47.443069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806187, 26.165251, 47.202854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498908, -0.517804, 0.694960,
		-0.866629, 0.304259, -0.395450,
		-0.006682, -0.799566, -0.600541,
		32.804184, 25.925381, 47.022694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221985, 26.876833, 47.518803>,  <32.808861, 26.485077, 47.443069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221985, 26.876833, 47.518803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126869, 27.157757, 47.787197>,  <32.069801, 27.326311, 47.948235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126869, 27.157757, 47.787197>,  <32.221985, 26.876833, 47.518803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126869, 27.157757, 47.787197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216570, 0.635076, -0.741469,
		-0.946866, -0.321625, 0.001087,
		-0.237785, 0.702308, 0.670986,
		32.055534, 27.368448, 47.988491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509930, 27.065983, 47.313972>,  <32.221985, 26.876833, 47.518803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509930, 27.065983, 47.313972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.743359, 27.341986, 47.485245>,  <31.883415, 27.507587, 47.588009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.743359, 27.341986, 47.485245>,  <31.509930, 27.065983, 47.313972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743359, 27.341986, 47.485245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225155, 0.644083, -0.731069,
		-0.780223, 0.330226, 0.531228,
		0.583573, 0.690005, 0.428177,
		31.918430, 27.548986, 47.613697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145777, 27.751204, 47.441833>,  <31.509930, 27.065983, 47.313972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145777, 27.751204, 47.441833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533421, 27.849390, 47.451405>,  <31.766006, 27.908302, 47.457146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533421, 27.849390, 47.451405>,  <31.145777, 27.751204, 47.441833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533421, 27.849390, 47.451405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192515, 0.813551, -0.548701,
		-0.154155, 0.527145, 0.835676,
		0.969110, 0.245465, 0.023929,
		31.824154, 27.923029, 47.458584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227699, 28.500429, 47.425358>,  <31.145777, 27.751204, 47.441833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227699, 28.500429, 47.425358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.608862, 28.409533, 47.345028>,  <31.837559, 28.354996, 47.296829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.608862, 28.409533, 47.345028>,  <31.227699, 28.500429, 47.425358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608862, 28.409533, 47.345028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053008, 0.776828, -0.627477,
		0.298596, 0.587282, 0.752290,
		0.952906, -0.227240, -0.200827,
		31.894733, 28.341360, 47.284779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469017, 29.107008, 47.294315>,  <31.227699, 28.500429, 47.425358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469017, 29.107008, 47.294315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.785397, 28.898758, 47.165722>,  <31.975224, 28.773808, 47.088566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.785397, 28.898758, 47.165722>,  <31.469017, 29.107008, 47.294315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785397, 28.898758, 47.165722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192997, 0.710846, -0.676350,
		0.580647, 0.472914, 0.662722,
		0.790949, -0.520625, -0.321480,
		32.022682, 28.742571, 47.069279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038189, 29.507940, 47.240387>,  <31.469017, 29.107008, 47.294315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038189, 29.507940, 47.240387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096100, 29.205713, 46.984837>,  <32.130848, 29.024378, 46.831509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096100, 29.205713, 46.984837>,  <32.038189, 29.507940, 47.240387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096100, 29.205713, 46.984837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194015, 0.654820, -0.730458,
		0.970256, -0.018195, 0.241396,
		0.144781, -0.755566, -0.638873,
		32.139534, 28.979044, 46.793175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757626, 29.622740, 46.854160>,  <32.038189, 29.507940, 47.240387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757626, 29.622740, 46.854160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.527508, 29.367065, 46.650009>,  <32.389439, 29.213661, 46.527519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.527508, 29.367065, 46.650009>,  <32.757626, 29.622740, 46.854160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527508, 29.367065, 46.650009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292967, 0.421552, -0.858175,
		0.763682, -0.643224, -0.055256,
		-0.575292, -0.639184, -0.510376,
		32.354919, 29.175310, 46.496895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537460, 29.741631, 47.075428>,  <32.757626, 29.622740, 46.854160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537460, 29.741631, 47.075428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519218, 30.080324, 47.287449>,  <33.508274, 30.283541, 47.414661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.519218, 30.080324, 47.287449>,  <33.537460, 29.741631, 47.075428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519218, 30.080324, 47.287449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043422, -0.531785, 0.845765,
		0.998015, 0.015559, 0.061021,
		-0.045610, 0.846736, 0.530054,
		33.505535, 30.334345, 47.446465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925716, 29.571787, 47.598179>,  <33.537460, 29.741631, 47.075428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925716, 29.571787, 47.598179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.744450, 29.893328, 47.752300>,  <33.635689, 30.086252, 47.844772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.744450, 29.893328, 47.752300>,  <33.925716, 29.571787, 47.598179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744450, 29.893328, 47.752300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106489, -0.380323, 0.918703,
		0.885042, 0.457357, 0.086749,
		-0.453168, 0.803853, 0.385305,
		33.608498, 30.134483, 47.867893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350349, 29.858744, 48.097649>,  <33.925716, 29.571787, 47.598179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350349, 29.858744, 48.097649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974850, 29.971502, 48.176933>,  <33.749550, 30.039158, 48.224503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974850, 29.971502, 48.176933>,  <34.350349, 29.858744, 48.097649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974850, 29.971502, 48.176933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079371, -0.382851, 0.920394,
		0.335342, 0.879749, 0.337026,
		-0.938747, 0.281897, 0.198213,
		33.693226, 30.056072, 48.236397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382126, 30.084560, 48.700966>,  <34.350349, 29.858744, 48.097649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382126, 30.084560, 48.700966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986412, 30.034012, 48.671726>,  <33.748985, 30.003683, 48.654182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986412, 30.034012, 48.671726>,  <34.382126, 30.084560, 48.700966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986412, 30.034012, 48.671726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029695, -0.316074, 0.948270,
		-0.142940, 0.940281, 0.308935,
		-0.989286, -0.126372, -0.073101,
		33.689625, 29.996099, 48.649796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169983, 30.358080, 49.312695>,  <34.382126, 30.084560, 48.700966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169983, 30.358080, 49.312695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900787, 30.096498, 49.174458>,  <33.739269, 29.939550, 49.091515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900787, 30.096498, 49.174458>,  <34.169983, 30.358080, 49.312695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900787, 30.096498, 49.174458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037380, -0.436569, 0.898894,
		-0.738708, 0.617864, 0.269361,
		-0.672989, -0.653951, -0.345592,
		33.698891, 29.900312, 49.070782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730026, 30.240269, 49.850876>,  <34.169983, 30.358080, 49.312695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730026, 30.240269, 49.850876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639740, 29.923653, 49.623714>,  <33.585567, 29.733683, 49.487419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639740, 29.923653, 49.623714>,  <33.730026, 30.240269, 49.850876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639740, 29.923653, 49.623714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029017, -0.588150, 0.808231,
		-0.973760, 0.165955, 0.155726,
		-0.225720, -0.791542, -0.567902,
		33.572025, 29.686190, 49.453342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272129, 29.908129, 50.288380>,  <33.730026, 30.240269, 49.850876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272129, 29.908129, 50.288380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393784, 29.641918, 50.015739>,  <33.466778, 29.482193, 49.852154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393784, 29.641918, 50.015739>,  <33.272129, 29.908129, 50.288380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393784, 29.641918, 50.015739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053984, -0.726385, 0.685165,
		-0.951098, -0.171588, -0.256847,
		0.304136, -0.665525, -0.681600,
		33.485023, 29.442261, 49.811260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784248, 29.399183, 50.408268>,  <33.272129, 29.908129, 50.288380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784248, 29.399183, 50.408268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.093830, 29.232275, 50.217739>,  <33.279579, 29.132130, 50.103420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.093830, 29.232275, 50.217739>,  <32.784248, 29.399183, 50.408268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093830, 29.232275, 50.217739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021154, -0.734737, 0.678022,
		-0.632891, -0.534833, -0.559824,
		0.773952, -0.417271, -0.476322,
		33.326015, 29.107094, 50.074841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704723, 28.641161, 50.501965>,  <32.784248, 29.399183, 50.408268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704723, 28.641161, 50.501965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088074, 28.713917, 50.413937>,  <33.318085, 28.757570, 50.361122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088074, 28.713917, 50.413937>,  <32.704723, 28.641161, 50.501965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088074, 28.713917, 50.413937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284147, -0.682747, 0.673140,
		-0.027813, -0.707653, -0.706012,
		0.958377, 0.181889, -0.220066,
		33.375587, 28.768484, 50.347916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.623440, 36.011360, 36.531933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903515, 36.015251, 36.817490>,  <38.071560, 36.017586, 36.988823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903515, 36.015251, 36.817490>,  <37.623440, 36.011360, 36.531933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903515, 36.015251, 36.817490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651742, -0.399531, 0.644676,
		0.291494, -0.916668, -0.273406,
		0.700188, 0.009729, 0.713893,
		38.113571, 36.018169, 37.031658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723148, 35.351498, 36.818604>,  <37.623440, 36.011360, 36.531933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723148, 35.351498, 36.818604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793026, 35.638916, 37.087875>,  <37.834953, 35.811367, 37.249439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793026, 35.638916, 37.087875>,  <37.723148, 35.351498, 36.818604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793026, 35.638916, 37.087875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510851, -0.518335, 0.685828,
		0.841733, -0.463705, 0.276521,
		0.174691, 0.718545, 0.673183,
		37.845432, 35.854481, 37.289829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060501, 34.984509, 37.384048>,  <37.723148, 35.351498, 36.818604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060501, 34.984509, 37.384048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916714, 35.326962, 37.532547>,  <37.830441, 35.532433, 37.621647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916714, 35.326962, 37.532547>,  <38.060501, 34.984509, 37.384048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916714, 35.326962, 37.532547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501135, -0.512715, 0.697128,
		0.787176, 0.064549, 0.613341,
		-0.359468, 0.856129, 0.371249,
		37.808872, 35.583801, 37.643921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956722, 34.820854, 38.172878>,  <38.060501, 34.984509, 37.384048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956722, 34.820854, 38.172878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762478, 35.168335, 38.133808>,  <37.645931, 35.376823, 38.110367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762478, 35.168335, 38.133808>,  <37.956722, 34.820854, 38.172878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762478, 35.168335, 38.133808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666537, -0.295653, 0.684338,
		0.565610, 0.397421, 0.722594,
		-0.485607, 0.868703, -0.097672,
		37.616795, 35.428947, 38.104507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850704, 35.069473, 38.893684>,  <37.956722, 34.820854, 38.172878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850704, 35.069473, 38.893684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571590, 35.238266, 38.662159>,  <37.404121, 35.339542, 38.523243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571590, 35.238266, 38.662159>,  <37.850704, 35.069473, 38.893684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571590, 35.238266, 38.662159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711379, -0.313620, 0.628953,
		0.083880, 0.850631, 0.519030,
		-0.697785, 0.421984, -0.578815,
		37.362255, 35.364861, 38.488514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543633, 35.462559, 39.341270>,  <37.850704, 35.069473, 38.893684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543633, 35.462559, 39.341270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269405, 35.429291, 39.051971>,  <37.104870, 35.409332, 38.878391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269405, 35.429291, 39.051971>,  <37.543633, 35.462559, 39.341270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269405, 35.429291, 39.051971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725327, -0.007177, 0.688367,
		-0.062440, 0.996510, -0.055403,
		-0.685567, -0.083167, -0.723243,
		37.063736, 35.404339, 38.834999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124409, 36.081497, 39.449795>,  <37.543633, 35.462559, 39.341270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124409, 36.081497, 39.449795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950279, 35.775394, 39.260113>,  <36.845802, 35.591732, 39.146305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950279, 35.775394, 39.260113>,  <37.124409, 36.081497, 39.449795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950279, 35.775394, 39.260113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732203, -0.005507, 0.681064,
		-0.523803, 0.643698, -0.557929,
		-0.435327, -0.765260, -0.474202,
		36.819683, 35.545815, 39.117851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522858, 36.193298, 39.438240>,  <37.124409, 36.081497, 39.449795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522858, 36.193298, 39.438240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478333, 35.801937, 39.368580>,  <36.451618, 35.567120, 39.326782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478333, 35.801937, 39.368580>,  <36.522858, 36.193298, 39.438240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478333, 35.801937, 39.368580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777957, -0.023251, 0.627888,
		-0.618379, 0.205376, -0.758570,
		-0.111315, -0.978407, -0.174152,
		36.444939, 35.508415, 39.316334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844448, 36.099972, 39.365967>,  <36.522858, 36.193298, 39.438240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844448, 36.099972, 39.365967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004833, 35.742603, 39.446987>,  <36.101063, 35.528183, 39.495598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004833, 35.742603, 39.446987>,  <35.844448, 36.099972, 39.365967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004833, 35.742603, 39.446987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809655, -0.242166, 0.534616,
		-0.428589, -0.378353, -0.820464,
		0.400962, -0.893423, 0.202546,
		36.125122, 35.474575, 39.507751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327328, 35.731033, 39.404385>,  <35.844448, 36.099972, 39.365967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327328, 35.731033, 39.404385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588909, 35.469563, 39.556728>,  <35.745857, 35.312679, 39.648132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588909, 35.469563, 39.556728>,  <35.327328, 35.731033, 39.404385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588909, 35.469563, 39.556728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724503, -0.396183, 0.564033,
		-0.217807, -0.644783, -0.732677,
		0.653953, -0.653677, 0.380856,
		35.785095, 35.273460, 39.670986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902374, 35.223446, 39.455322>,  <35.327328, 35.731033, 39.404385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902374, 35.223446, 39.455322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217743, 35.122799, 39.679852>,  <35.406963, 35.062412, 39.814568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217743, 35.122799, 39.679852>,  <34.902374, 35.223446, 39.455322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217743, 35.122799, 39.679852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611805, -0.415569, 0.673050,
		0.063916, -0.874066, -0.481584,
		0.788422, -0.251617, 0.561320,
		35.454269, 35.047314, 39.848248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857155, 34.507023, 39.613998>,  <34.902374, 35.223446, 39.455322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857155, 34.507023, 39.613998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088760, 34.676258, 39.892776>,  <35.227726, 34.777802, 40.060043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088760, 34.676258, 39.892776>,  <34.857155, 34.507023, 39.613998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088760, 34.676258, 39.892776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565869, -0.406868, 0.717113,
		0.586969, -0.809601, 0.003830,
		0.579016, 0.423090, 0.696947,
		35.262466, 34.803185, 40.101860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556671, 33.917717, 39.196430>,  <34.857155, 34.507023, 39.613998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556671, 33.917717, 39.196430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158222, 33.900921, 39.165493>,  <33.919155, 33.890842, 39.146931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158222, 33.900921, 39.165493>,  <34.556671, 33.917717, 39.196430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158222, 33.900921, 39.165493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060206, 0.315816, -0.946908,
		0.064182, -0.947891, -0.312063,
		-0.996120, -0.041986, -0.077338,
		33.859386, 33.888325, 39.142292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387833, 33.673912, 38.513882>,  <34.556671, 33.917717, 39.196430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387833, 33.673912, 38.513882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042843, 33.840092, 38.629498>,  <33.835850, 33.939800, 38.698868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042843, 33.840092, 38.629498>,  <34.387833, 33.673912, 38.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042843, 33.840092, 38.629498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110470, 0.402793, -0.908600,
		-0.493904, -0.815571, -0.301502,
		-0.862471, 0.415454, 0.289037,
		33.784103, 33.964729, 38.716209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985538, 33.591660, 37.941467>,  <34.387833, 33.673912, 38.513882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985538, 33.591660, 37.941467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808582, 33.890156, 38.140427>,  <33.702408, 34.069256, 38.259804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808582, 33.890156, 38.140427>,  <33.985538, 33.591660, 37.941467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808582, 33.890156, 38.140427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251839, 0.428938, -0.867519,
		-0.860735, -0.509050, -0.001826,
		-0.442394, 0.746244, 0.497401,
		33.675865, 34.114029, 38.289646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337444, 33.645828, 37.650276>,  <33.985538, 33.591660, 37.941467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337444, 33.645828, 37.650276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441971, 33.993599, 37.817997>,  <33.504688, 34.202259, 37.918629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441971, 33.993599, 37.817997>,  <33.337444, 33.645828, 37.650276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441971, 33.993599, 37.817997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213751, 0.475737, -0.853220,
		-0.941289, 0.133333, 0.310158,
		0.261316, 0.869423, 0.419306,
		33.520367, 34.254425, 37.943790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877651, 34.136742, 37.381428>,  <33.337444, 33.645828, 37.650276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877651, 34.136742, 37.381428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112743, 34.423763, 37.530930>,  <33.253799, 34.595978, 37.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112743, 34.423763, 37.530930>,  <32.877651, 34.136742, 37.381428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112743, 34.423763, 37.530930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378965, 0.652309, -0.656413,
		-0.714817, 0.244150, 0.655307,
		0.587726, 0.717554, 0.373757,
		33.289062, 34.639030, 37.643055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475208, 34.739735, 37.513397>,  <32.877651, 34.136742, 37.381428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475208, 34.739735, 37.513397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843422, 34.894917, 37.495022>,  <33.064350, 34.988026, 37.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843422, 34.894917, 37.495022>,  <32.475208, 34.739735, 37.513397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843422, 34.894917, 37.495022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343181, 0.746850, -0.569598,
		-0.186671, 0.540098, 0.820639,
		0.920533, 0.387955, -0.045936,
		33.119583, 35.011303, 37.481239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450802, 35.514286, 37.778484>,  <32.475208, 34.739735, 37.513397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450802, 35.514286, 37.778484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 35.441780, 37.525211>,  <32.932388, 35.398277, 37.373249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 35.441780, 37.525211>,  <32.450802, 35.514286, 37.778484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751793, 35.441780, 37.525211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308975, 0.751869, -0.582432,
		0.581646, 0.633905, 0.509758,
		0.752478, -0.181267, -0.633182,
		32.977535, 35.387402, 37.335258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557091, 36.128162, 37.566746>,  <32.450802, 35.514286, 37.778484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557091, 36.128162, 37.566746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771809, 35.935143, 37.289906>,  <32.900639, 35.819328, 37.123802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771809, 35.935143, 37.289906>,  <32.557091, 36.128162, 37.566746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771809, 35.935143, 37.289906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032397, 0.807903, -0.588425,
		0.843093, 0.338283, 0.418042,
		0.536792, -0.482553, -0.692096,
		32.932846, 35.790375, 37.082275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102905, 36.633488, 37.373577>,  <32.557091, 36.128162, 37.566746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102905, 36.633488, 37.373577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087147, 36.361423, 37.080776>,  <33.077690, 36.198185, 36.905094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087147, 36.361423, 37.080776>,  <33.102905, 36.633488, 37.373577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087147, 36.361423, 37.080776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101728, 0.731499, -0.674211,
		0.994032, 0.047904, -0.098010,
		-0.039396, -0.680158, -0.732007,
		33.075329, 36.157375, 36.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504143, 36.838123, 36.717659>,  <33.102905, 36.633488, 37.373577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504143, 36.838123, 36.717659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256878, 36.555313, 36.580257>,  <33.108517, 36.385628, 36.497818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256878, 36.555313, 36.580257>,  <33.504143, 36.838123, 36.717659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256878, 36.555313, 36.580257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087617, 0.496250, -0.863747,
		0.781150, -0.503842, -0.368711,
		-0.618165, -0.707021, -0.343500,
		33.071426, 36.343208, 36.477207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680012, 36.716831, 35.957344>,  <33.504143, 36.838123, 36.717659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680012, 36.716831, 35.957344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311470, 36.595844, 36.055008>,  <33.090343, 36.523251, 36.113605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311470, 36.595844, 36.055008>,  <33.680012, 36.716831, 35.957344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311470, 36.595844, 36.055008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362764, 0.443406, -0.819630,
		0.139652, -0.843744, -0.518260,
		-0.921357, -0.302469, 0.244157,
		33.035065, 36.505104, 36.128254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060806, 36.675545, 35.522633>,  <33.680012, 36.716831, 35.957344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060806, 36.675545, 35.522633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382481, 36.631596, 35.288982>,  <33.575485, 36.605228, 35.148792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382481, 36.631596, 35.288982>,  <33.060806, 36.675545, 35.522633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382481, 36.631596, 35.288982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192232, -0.978026, -0.080692,
		-0.562428, 0.177180, -0.807640,
		0.804190, -0.109871, -0.584129,
		33.623737, 36.598633, 35.113743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924557, 36.230282, 34.949112>,  <33.060806, 36.675545, 35.522633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924557, 36.230282, 34.949112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323166, 36.210861, 34.976219>,  <33.562332, 36.199211, 34.992485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323166, 36.210861, 34.976219>,  <32.924557, 36.230282, 34.949112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323166, 36.210861, 34.976219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040430, -0.992377, -0.116419,
		0.072908, 0.113274, -0.990885,
		0.996519, -0.048550, 0.067773,
		33.622120, 36.196297, 34.996552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113804, 35.729721, 34.336155>,  <32.924557, 36.230282, 34.949112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113804, 35.729721, 34.336155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371830, 35.769379, 34.639225>,  <33.526646, 35.793175, 34.821068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371830, 35.769379, 34.639225>,  <33.113804, 35.729721, 34.336155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371830, 35.769379, 34.639225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098024, -0.994091, 0.046625,
		0.757817, 0.044194, -0.650969,
		0.645062, 0.099144, 0.757671,
		33.565350, 35.799122, 34.866528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781715, 35.335640, 34.233448>,  <33.113804, 35.729721, 34.336155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781715, 35.335640, 34.233448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689159, 35.381172, 34.619919>,  <33.633625, 35.408489, 34.851803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689159, 35.381172, 34.619919>,  <33.781715, 35.335640, 34.233448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689159, 35.381172, 34.619919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092720, -0.986031, 0.138370,
		0.968433, 0.121602, 0.217603,
		-0.231389, 0.113826, 0.966180,
		33.619743, 35.415321, 34.909771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331894, 34.945374, 34.774815>,  <33.781715, 35.335640, 34.233448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331894, 34.945374, 34.774815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954372, 34.983551, 34.901390>,  <33.727859, 35.006458, 34.977333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954372, 34.983551, 34.901390>,  <34.331894, 34.945374, 34.774815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954372, 34.983551, 34.901390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017122, -0.941991, 0.335200,
		0.330072, 0.321780, 0.887418,
		-0.943800, 0.095446, 0.316435,
		33.671234, 35.012184, 34.996319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079193, 34.487362, 34.315910>,  <34.331894, 34.945374, 34.774815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079193, 34.487362, 34.315910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453098, 34.407661, 34.433563>,  <34.677441, 34.359840, 34.504154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453098, 34.407661, 34.433563>,  <34.079193, 34.487362, 34.315910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453098, 34.407661, 34.433563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321022, -0.828370, 0.459073,
		0.152176, -0.523548, -0.838296,
		0.934766, -0.199251, 0.294128,
		34.733528, 34.347885, 34.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184265, 33.764118, 34.262978>,  <34.079193, 34.487362, 34.315910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184265, 33.764118, 34.262978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471840, 33.869522, 34.520252>,  <34.644386, 33.932766, 34.674618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471840, 33.869522, 34.520252>,  <34.184265, 33.764118, 34.262978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471840, 33.869522, 34.520252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129791, -0.858181, 0.496669,
		0.682846, -0.440555, -0.582780,
		0.718941, 0.263508, 0.643185,
		34.687523, 33.948574, 34.713207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391575, 33.173515, 34.485958>,  <34.184265, 33.764118, 34.262978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391575, 33.173515, 34.485958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583221, 33.405670, 34.749352>,  <34.698208, 33.544964, 34.907387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583221, 33.405670, 34.749352>,  <34.391575, 33.173515, 34.485958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583221, 33.405670, 34.749352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030076, -0.738897, 0.673147,
		0.877237, -0.342319, -0.336560,
		0.479114, 0.580387, 0.658484,
		34.726955, 33.579784, 34.946896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823795, 32.715267, 34.659386>,  <34.391575, 33.173515, 34.485958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823795, 32.715267, 34.659386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814392, 32.972107, 34.965893>,  <34.808750, 33.126209, 35.149796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814392, 32.972107, 34.965893>,  <34.823795, 32.715267, 34.659386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814392, 32.972107, 34.965893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033764, -0.765528, 0.642516,
		0.999153, 0.040975, -0.003685,
		-0.023506, 0.642097, 0.766263,
		34.807339, 33.164738, 35.195770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337513, 32.484444, 35.054775>,  <34.823795, 32.715267, 34.659386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337513, 32.484444, 35.054775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099613, 32.694866, 35.297932>,  <34.956871, 32.821117, 35.443825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099613, 32.694866, 35.297932>,  <35.337513, 32.484444, 35.054775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099613, 32.694866, 35.297932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065884, -0.721734, 0.689028,
		0.801205, 0.449851, 0.394595,
		-0.594753, 0.526054, 0.607895,
		34.921188, 32.852684, 35.480301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666088, 32.677250, 35.572952>,  <35.337513, 32.484444, 35.054775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666088, 32.677250, 35.572952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295616, 32.695408, 35.722691>,  <35.073334, 32.706303, 35.812534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295616, 32.695408, 35.722691>,  <35.666088, 32.677250, 35.572952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295616, 32.695408, 35.722691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236239, -0.703920, 0.669842,
		0.293922, 0.708827, 0.641228,
		-0.926176, 0.045398, 0.374350,
		35.017765, 32.709026, 35.834995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718658, 32.740952, 36.288937>,  <35.666088, 32.677250, 35.572952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718658, 32.740952, 36.288937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340664, 32.622204, 36.233997>,  <35.113865, 32.550953, 36.201035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340664, 32.622204, 36.233997>,  <35.718658, 32.740952, 36.288937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340664, 32.622204, 36.233997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117285, -0.699480, 0.704963,
		-0.305354, 0.650073, 0.695819,
		-0.944989, -0.296872, -0.137345,
		35.057167, 32.533142, 36.192795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495270, 32.635647, 36.976875>,  <35.718658, 32.740952, 36.288937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495270, 32.635647, 36.976875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218452, 32.437717, 36.766647>,  <35.052361, 32.318962, 36.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218452, 32.437717, 36.766647>,  <35.495270, 32.635647, 36.976875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218452, 32.437717, 36.766647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115849, -0.642513, 0.757467,
		-0.712494, 0.585090, 0.387325,
		-0.692048, -0.494820, -0.525569,
		35.010838, 32.289272, 36.608978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909058, 32.521904, 37.400826>,  <35.495270, 32.635647, 36.976875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909058, 32.521904, 37.400826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900867, 32.248001, 37.109432>,  <34.895954, 32.083660, 36.934597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900867, 32.248001, 37.109432>,  <34.909058, 32.521904, 37.400826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900867, 32.248001, 37.109432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041407, -0.727430, 0.684932,
		-0.998933, 0.044191, -0.013458,
		-0.020478, -0.684758, -0.728483,
		34.894726, 32.042572, 36.890888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365410, 32.112942, 37.671467>,  <34.909058, 32.521904, 37.400826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365410, 32.112942, 37.671467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515350, 31.892473, 37.373287>,  <34.605316, 31.760193, 37.194378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515350, 31.892473, 37.373287>,  <34.365410, 32.112942, 37.671467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515350, 31.892473, 37.373287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296174, -0.833141, 0.467072,
		-0.878503, 0.045701, -0.475546,
		0.374851, -0.551169, -0.745453,
		34.627804, 31.727123, 37.149651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843166, 31.722496, 37.364956>,  <34.365410, 32.112942, 37.671467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843166, 31.722496, 37.364956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191521, 31.532122, 37.315895>,  <34.400532, 31.417898, 37.286457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191521, 31.532122, 37.315895>,  <33.843166, 31.722496, 37.364956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191521, 31.532122, 37.315895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312292, -0.728559, 0.609652,
		-0.379513, -0.492635, -0.783123,
		0.870887, -0.475933, -0.122652,
		34.452785, 31.389341, 37.279099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686989, 31.015724, 37.349571>,  <33.843166, 31.722496, 37.364956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686989, 31.015724, 37.349571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072906, 31.049900, 37.449074>,  <34.304455, 31.070406, 37.508774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072906, 31.049900, 37.449074>,  <33.686989, 31.015724, 37.349571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072906, 31.049900, 37.449074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110300, -0.727152, 0.677558,
		0.238771, -0.681139, -0.692126,
		0.964792, 0.085440, 0.248752,
		34.362343, 31.075533, 37.523701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840706, 30.328659, 37.458893>,  <33.686989, 31.015724, 37.349571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840706, 30.328659, 37.458893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143188, 30.538679, 37.615086>,  <34.324677, 30.664690, 37.708801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143188, 30.538679, 37.615086>,  <33.840706, 30.328659, 37.458893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143188, 30.538679, 37.615086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069491, -0.657831, 0.749953,
		0.650633, -0.539984, -0.533942,
		0.756206, 0.525049, 0.390482,
		34.370049, 30.696194, 37.732231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211308, 29.804575, 37.791637>,  <33.840706, 30.328659, 37.458893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211308, 29.804575, 37.791637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373905, 30.132708, 37.952545>,  <34.471466, 30.329586, 38.049088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373905, 30.132708, 37.952545>,  <34.211308, 29.804575, 37.791637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373905, 30.132708, 37.952545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007339, -0.437337, 0.899268,
		0.913622, -0.368503, -0.171756,
		0.406498, 0.820330, 0.402265,
		34.495853, 30.378807, 38.073223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794094, 29.618446, 38.109215>,  <34.211308, 29.804575, 37.791637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794094, 29.618446, 38.109215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654743, 29.948551, 38.287010>,  <34.571133, 30.146614, 38.393688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654743, 29.948551, 38.287010>,  <34.794094, 29.618446, 38.109215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654743, 29.948551, 38.287010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017897, -0.468255, 0.883412,
		0.937184, 0.315714, 0.148359,
		-0.348376, 0.825264, 0.444492,
		34.550232, 30.196131, 38.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152184, 29.756138, 38.674519>,  <34.794094, 29.618446, 38.109215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152184, 29.756138, 38.674519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829185, 29.974123, 38.764816>,  <34.635384, 30.104914, 38.818996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829185, 29.974123, 38.764816>,  <35.152184, 29.756138, 38.674519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829185, 29.974123, 38.764816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048991, -0.443339, 0.895014,
		0.587830, 0.711665, 0.384694,
		-0.807500, 0.544963, 0.225743,
		34.586937, 30.137611, 38.832539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255695, 30.076990, 39.313648>,  <35.152184, 29.756138, 38.674519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255695, 30.076990, 39.313648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857391, 30.102667, 39.287270>,  <34.618408, 30.118073, 39.271442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857391, 30.102667, 39.287270>,  <35.255695, 30.076990, 39.313648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857391, 30.102667, 39.287270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085439, -0.378433, 0.921677,
		0.034209, 0.923400, 0.382312,
		-0.995756, 0.064194, -0.065949,
		34.558666, 30.121925, 39.267487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142815, 30.263189, 39.905014>,  <35.255695, 30.076990, 39.313648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142815, 30.263189, 39.905014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786591, 30.139170, 39.771885>,  <34.572857, 30.064758, 39.692005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786591, 30.139170, 39.771885>,  <35.142815, 30.263189, 39.905014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786591, 30.139170, 39.771885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143153, -0.503482, 0.852064,
		-0.431753, 0.806459, 0.403997,
		-0.890559, -0.310048, -0.332827,
		34.519424, 30.046156, 39.672035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665585, 30.535307, 40.380619>,  <35.142815, 30.263189, 39.905014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665585, 30.535307, 40.380619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490898, 30.237291, 40.178947>,  <34.386086, 30.058481, 40.057945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490898, 30.237291, 40.178947>,  <34.665585, 30.535307, 40.380619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490898, 30.237291, 40.178947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168022, -0.483030, 0.859332,
		-0.883767, 0.460000, 0.085766,
		-0.436720, -0.745039, -0.504176,
		34.359882, 30.013781, 40.027695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929623, 30.417885, 40.682213>,  <34.665585, 30.535307, 40.380619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929623, 30.417885, 40.682213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074997, 30.089663, 40.505756>,  <34.162220, 29.892729, 40.399883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074997, 30.089663, 40.505756>,  <33.929623, 30.417885, 40.682213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074997, 30.089663, 40.505756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087535, -0.501502, 0.860717,
		-0.927499, -0.274197, -0.254089,
		0.363432, -0.820556, -0.441141,
		34.184025, 29.843496, 40.373413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374962, 29.955193, 40.827633>,  <33.929623, 30.417885, 40.682213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374962, 29.955193, 40.827633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701176, 29.751438, 40.717773>,  <33.896904, 29.629185, 40.651859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701176, 29.751438, 40.717773>,  <33.374962, 29.955193, 40.827633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701176, 29.751438, 40.717773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161466, -0.656027, 0.737264,
		-0.555730, -0.556915, -0.617260,
		0.815532, -0.509386, -0.274651,
		33.945835, 29.598623, 40.635380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194401, 29.185822, 40.852859>,  <33.374962, 29.955193, 40.827633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194401, 29.185822, 40.852859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593311, 29.175930, 40.880665>,  <33.832657, 29.169996, 40.897346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593311, 29.175930, 40.880665>,  <33.194401, 29.185822, 40.852859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593311, 29.175930, 40.880665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068180, -0.668943, 0.740180,
		0.028198, -0.742902, -0.668806,
		0.997275, -0.024727, 0.069514,
		33.892494, 29.168512, 40.901520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282730, 28.567545, 41.021996>,  <33.194401, 29.185822, 40.852859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282730, 28.567545, 41.021996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620655, 28.758402, 41.118843>,  <33.823410, 28.872915, 41.176952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620655, 28.758402, 41.118843>,  <33.282730, 28.567545, 41.021996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620655, 28.758402, 41.118843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119101, -0.608858, 0.784288,
		0.521635, -0.633741, -0.571200,
		0.844815, 0.477143, 0.242123,
		33.874100, 28.901545, 41.191479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721115, 28.011671, 41.180367>,  <33.282730, 28.567545, 41.021996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721115, 28.011671, 41.180367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873825, 28.339024, 41.352180>,  <33.965450, 28.535435, 41.455269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873825, 28.339024, 41.352180>,  <33.721115, 28.011671, 41.180367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873825, 28.339024, 41.352180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036838, -0.477844, 0.877672,
		0.923521, -0.319250, -0.212577,
		0.381775, 0.818379, 0.429538,
		33.988358, 28.584538, 41.481041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328629, 27.782021, 41.493351>,  <33.721115, 28.011671, 41.180367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328629, 27.782021, 41.493351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253647, 28.134272, 41.667412>,  <34.208660, 28.345623, 41.771847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253647, 28.134272, 41.667412>,  <34.328629, 27.782021, 41.493351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253647, 28.134272, 41.667412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176341, -0.405634, 0.896864,
		0.966316, 0.244852, -0.079255,
		-0.187450, 0.880630, 0.435148,
		34.197411, 28.398460, 41.797955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916245, 27.981209, 41.907265>,  <34.328629, 27.782021, 41.493351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916245, 27.981209, 41.907265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577919, 28.152300, 42.034790>,  <34.374924, 28.254953, 42.111305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577919, 28.152300, 42.034790>,  <34.916245, 27.981209, 41.907265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577919, 28.152300, 42.034790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099727, -0.460314, 0.882137,
		0.524068, 0.777922, 0.346686,
		-0.845818, 0.427726, 0.318815,
		34.324173, 28.280617, 42.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570881, 28.220358, 42.273811>,  <34.916245, 27.981209, 41.907265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570881, 28.220358, 42.273811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933289, 28.057657, 42.320599>,  <36.150734, 27.960037, 42.348671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933289, 28.057657, 42.320599>,  <35.570881, 28.220358, 42.273811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933289, 28.057657, 42.320599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220134, 0.216849, -0.951061,
		0.361481, 0.887429, 0.286010,
		0.906020, -0.406751, 0.116966,
		36.205093, 27.935633, 42.355690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043289, 28.777582, 42.113697>,  <35.570881, 28.220358, 42.273811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043289, 28.777582, 42.113697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210732, 28.417362, 42.066734>,  <36.311195, 28.201231, 42.038559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210732, 28.417362, 42.066734>,  <36.043289, 28.777582, 42.113697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210732, 28.417362, 42.066734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349931, 0.279233, -0.894191,
		0.838046, 0.333226, 0.432018,
		0.418601, -0.900549, -0.117403,
		36.336311, 28.147198, 42.031513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694027, 28.919073, 41.987122>,  <36.043289, 28.777582, 42.113697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694027, 28.919073, 41.987122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608906, 28.551607, 41.853996>,  <36.557835, 28.331127, 41.774120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608906, 28.551607, 41.853996>,  <36.694027, 28.919073, 41.987122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608906, 28.551607, 41.853996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375268, 0.237653, -0.895932,
		0.902158, -0.315552, 0.294173,
		-0.212802, -0.918666, -0.332817,
		36.545067, 28.276007, 41.754150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307232, 28.800043, 41.487957>,  <36.694027, 28.919073, 41.987122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307232, 28.800043, 41.487957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060852, 28.502184, 41.385109>,  <36.913025, 28.323469, 41.323399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060852, 28.502184, 41.385109>,  <37.307232, 28.800043, 41.487957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060852, 28.502184, 41.385109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340539, 0.042637, -0.939263,
		0.710384, -0.666093, 0.227320,
		-0.615945, -0.744649, -0.257119,
		36.876068, 28.278790, 41.307972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707966, 28.261093, 41.156063>,  <37.307232, 28.800043, 41.487957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707966, 28.261093, 41.156063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327549, 28.198555, 41.049431>,  <37.099297, 28.161032, 40.985451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327549, 28.198555, 41.049431>,  <37.707966, 28.261093, 41.156063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327549, 28.198555, 41.049431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273894, -0.026853, -0.961385,
		0.143151, -0.987337, 0.068361,
		-0.951046, -0.156346, -0.266582,
		37.042236, 28.151651, 40.969456>
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
