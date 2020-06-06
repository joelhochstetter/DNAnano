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
	<24.099150, 34.945290, 35.559082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115227, 35.218678, 35.267532>,  <24.124872, 35.382710, 35.092602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115227, 35.218678, 35.267532>,  <24.099150, 34.945290, 35.559082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115227, 35.218678, 35.267532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976398, -0.181786, -0.116620,
		-0.212205, -0.706986, -0.674641,
		0.040192, 0.683466, -0.728875,
		24.127285, 35.423717, 35.048870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.385180, 34.807541, 34.869919>,  <24.099150, 34.945290, 35.559082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.385180, 34.807541, 34.869919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452572, 35.193699, 34.949547>,  <24.493008, 35.425392, 34.997322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452572, 35.193699, 34.949547>,  <24.385180, 34.807541, 34.869919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452572, 35.193699, 34.949547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985658, -0.163048, -0.043507,
		-0.009544, 0.203544, -0.979019,
		0.168483, 0.965394, 0.199069,
		24.503117, 35.483318, 35.009266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053877, 34.405888, 34.715450>,  <24.385180, 34.807541, 34.869919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053877, 34.405888, 34.715450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999210, 34.518574, 35.095337>,  <24.966410, 34.586185, 35.323269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999210, 34.518574, 35.095337>,  <25.053877, 34.405888, 34.715450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999210, 34.518574, 35.095337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445159, -0.838991, 0.312933,
		0.884961, 0.465541, -0.010747,
		-0.136667, 0.281717, 0.949714,
		24.958210, 34.603088, 35.380253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623682, 34.067455, 35.179905>,  <25.053877, 34.405888, 34.715450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623682, 34.067455, 35.179905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371256, 34.193203, 35.463573>,  <25.219801, 34.268650, 35.633774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371256, 34.193203, 35.463573>,  <25.623682, 34.067455, 35.179905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371256, 34.193203, 35.463573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261392, -0.774563, 0.575957,
		0.730364, 0.548839, 0.406626,
		-0.631065, 0.314369, 0.709175,
		25.181936, 34.287514, 35.676327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946682, 33.899376, 35.846752>,  <25.623682, 34.067455, 35.179905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946682, 33.899376, 35.846752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551184, 33.923798, 35.901379>,  <25.313885, 33.938450, 35.934155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551184, 33.923798, 35.901379>,  <25.946682, 33.899376, 35.846752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551184, 33.923798, 35.901379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016942, -0.861336, 0.507753,
		0.148629, 0.504353, 0.850610,
		-0.988748, 0.061055, 0.136564,
		25.254559, 33.942116, 35.942348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591337, 33.742138, 36.194706>,  <25.946682, 33.899376, 35.846752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591337, 33.742138, 36.194706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949894, 33.909302, 36.135597>,  <27.165028, 34.009602, 36.100132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949894, 33.909302, 36.135597>,  <26.591337, 33.742138, 36.194706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949894, 33.909302, 36.135597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200972, 0.086027, -0.975812,
		-0.395090, 0.904406, 0.161102,
		0.896389, 0.417911, -0.147771,
		27.218811, 34.034676, 36.091267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531023, 34.401505, 35.796219>,  <26.591337, 33.742138, 36.194706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531023, 34.401505, 35.796219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891224, 34.247589, 35.715191>,  <27.107344, 34.155239, 35.666573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891224, 34.247589, 35.715191>,  <26.531023, 34.401505, 35.796219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891224, 34.247589, 35.715191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090360, 0.290099, -0.952721,
		0.425361, 0.876231, 0.226465,
		0.900501, -0.384787, -0.202573,
		27.161375, 34.132153, 35.654419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990984, 34.895229, 35.477364>,  <26.531023, 34.401505, 35.796219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990984, 34.895229, 35.477364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112099, 34.526997, 35.378696>,  <27.184769, 34.306057, 35.319496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112099, 34.526997, 35.378696>,  <26.990984, 34.895229, 35.477364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112099, 34.526997, 35.378696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045973, 0.244404, -0.968583,
		0.951948, 0.304616, 0.031681,
		0.302789, -0.920584, -0.246664,
		27.202936, 34.250820, 35.304699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024431, 34.928818, 34.862835>,  <26.990984, 34.895229, 35.477364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024431, 34.928818, 34.862835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115940, 34.539936, 34.842922>,  <27.170845, 34.306606, 34.830975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115940, 34.539936, 34.842922>,  <27.024431, 34.928818, 34.862835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115940, 34.539936, 34.842922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161457, 0.012540, -0.986800,
		0.959997, 0.233790, -0.154101,
		0.228772, -0.972206, -0.049785,
		27.184572, 34.248276, 34.827988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487606, 34.826019, 34.310780>,  <27.024431, 34.928818, 34.862835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487606, 34.826019, 34.310780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299440, 34.477924, 34.369293>,  <27.186541, 34.269066, 34.404404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299440, 34.477924, 34.369293>,  <27.487606, 34.826019, 34.310780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299440, 34.477924, 34.369293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061805, -0.132878, -0.989203,
		0.880279, -0.474376, 0.008723,
		-0.470414, -0.870236, 0.146289,
		27.158316, 34.216854, 34.413181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809584, 34.320499, 33.869499>,  <27.487606, 34.826019, 34.310780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809584, 34.320499, 33.869499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446650, 34.176826, 33.956886>,  <27.228889, 34.090622, 34.009319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446650, 34.176826, 33.956886>,  <27.809584, 34.320499, 33.869499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446650, 34.176826, 33.956886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200892, -0.086044, -0.975827,
		0.369303, -0.929290, 0.005913,
		-0.907336, -0.359188, 0.218463,
		27.174448, 34.069069, 34.022427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717184, 33.763840, 33.336201>,  <27.809584, 34.320499, 33.869499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717184, 33.763840, 33.336201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356607, 33.830738, 33.495918>,  <27.140263, 33.870876, 33.591747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356607, 33.830738, 33.495918>,  <27.717184, 33.763840, 33.336201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356607, 33.830738, 33.495918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430004, -0.239363, -0.870518,
		-0.050010, -0.956418, 0.287686,
		-0.901441, 0.167241, 0.399293,
		27.086176, 33.880913, 33.615707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304811, 33.105495, 33.393238>,  <27.717184, 33.763840, 33.336201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304811, 33.105495, 33.393238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039986, 33.402241, 33.350681>,  <26.881090, 33.580288, 33.325150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039986, 33.402241, 33.350681>,  <27.304811, 33.105495, 33.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039986, 33.402241, 33.350681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216631, -0.325331, -0.920451,
		-0.717457, -0.586349, 0.376099,
		-0.662062, 0.741859, -0.106390,
		26.841368, 33.624798, 33.318764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743652, 32.842262, 33.201015>,  <27.304811, 33.105495, 33.393238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743652, 32.842262, 33.201015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674004, 33.215557, 33.075314>,  <26.632215, 33.439533, 32.999893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674004, 33.215557, 33.075314>,  <26.743652, 32.842262, 33.201015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674004, 33.215557, 33.075314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186110, -0.344562, -0.920130,
		-0.966977, -0.101728, 0.233680,
		-0.174120, 0.933235, -0.314251,
		26.621767, 33.495529, 32.981037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219728, 32.767155, 32.690788>,  <26.743652, 32.842262, 33.201015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219728, 32.767155, 32.690788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333490, 33.134693, 32.581367>,  <26.401747, 33.355217, 32.515713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333490, 33.134693, 32.581367>,  <26.219728, 32.767155, 32.690788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333490, 33.134693, 32.581367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045841, -0.298046, -0.953450,
		-0.957608, 0.258625, -0.126886,
		0.284404, 0.918848, -0.273555,
		26.418812, 33.410347, 32.499302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855808, 32.899570, 32.096550>,  <26.219728, 32.767155, 32.690788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855808, 32.899570, 32.096550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150826, 33.169308, 32.082184>,  <26.327835, 33.331150, 32.073563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150826, 33.169308, 32.082184>,  <25.855808, 32.899570, 32.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150826, 33.169308, 32.082184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101059, -0.162802, -0.981470,
		-0.667696, 0.720246, -0.188222,
		0.737542, 0.674345, -0.035915,
		26.372087, 33.371613, 32.071407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676558, 33.370872, 31.669498>,  <25.855808, 32.899570, 32.096550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676558, 33.370872, 31.669498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076471, 33.365520, 31.663132>,  <26.316420, 33.362309, 31.659311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076471, 33.365520, 31.663132>,  <25.676558, 33.370872, 31.669498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076471, 33.365520, 31.663132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017570, -0.134233, -0.990794,
		0.011121, 0.990860, -0.134439,
		0.999784, -0.013381, -0.015917,
		26.376406, 33.361507, 31.658356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819679, 33.768887, 31.106277>,  <25.676558, 33.370872, 31.669498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819679, 33.768887, 31.106277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172087, 33.584808, 31.150135>,  <26.383532, 33.474361, 31.176449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172087, 33.584808, 31.150135>,  <25.819679, 33.768887, 31.106277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172087, 33.584808, 31.150135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068464, -0.105294, -0.992081,
		0.468101, 0.881549, -0.061259,
		0.881019, -0.460200, 0.109643,
		26.436392, 33.446747, 31.183027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252531, 34.102283, 30.620678>,  <25.819679, 33.768887, 31.106277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252531, 34.102283, 30.620678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363567, 33.727829, 30.707010>,  <26.430189, 33.503155, 30.758810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363567, 33.727829, 30.707010>,  <26.252531, 34.102283, 30.620678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363567, 33.727829, 30.707010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005022, -0.223245, -0.974749,
		0.960686, 0.271668, -0.057270,
		0.277593, -0.936140, 0.215833,
		26.446846, 33.446987, 30.771761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764938, 33.917362, 30.151159>,  <26.252531, 34.102283, 30.620678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764938, 33.917362, 30.151159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672421, 33.549828, 30.279064>,  <26.616909, 33.329308, 30.355806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672421, 33.549828, 30.279064>,  <26.764938, 33.917362, 30.151159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672421, 33.549828, 30.279064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136447, -0.356064, -0.924446,
		0.963267, -0.170191, 0.207728,
		-0.231297, -0.918833, 0.319762,
		26.603031, 33.274178, 30.374992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255449, 33.453838, 29.962412>,  <26.764938, 33.917362, 30.151159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255449, 33.453838, 29.962412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925505, 33.236221, 30.023897>,  <26.727539, 33.105652, 30.060789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925505, 33.236221, 30.023897>,  <27.255449, 33.453838, 29.962412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925505, 33.236221, 30.023897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071188, -0.369686, -0.926426,
		0.560837, -0.753229, 0.343668,
		-0.824860, -0.544039, 0.153713,
		26.678047, 33.073009, 30.070011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421566, 32.827847, 29.550966>,  <27.255449, 33.453838, 29.962412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421566, 32.827847, 29.550966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033442, 32.831451, 29.647646>,  <26.800568, 32.833614, 29.705654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033442, 32.831451, 29.647646>,  <27.421566, 32.827847, 29.550966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033442, 32.831451, 29.647646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225635, -0.393648, -0.891140,
		0.087110, -0.919217, 0.383995,
		-0.970310, 0.009016, 0.241698,
		26.742348, 32.834156, 29.720156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211218, 32.132362, 29.481396>,  <27.421566, 32.827847, 29.550966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211218, 32.132362, 29.481396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924345, 32.402477, 29.412539>,  <26.752222, 32.564548, 29.371223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924345, 32.402477, 29.412539>,  <27.211218, 32.132362, 29.481396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924345, 32.402477, 29.412539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180637, -0.418713, -0.889972,
		-0.673069, -0.607175, 0.422275,
		-0.717181, 0.675291, -0.172144,
		26.709190, 32.605064, 29.360895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478073, 31.872898, 29.334757>,  <27.211218, 32.132362, 29.481396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478073, 31.872898, 29.334757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521854, 32.227295, 29.154518>,  <26.548122, 32.439934, 29.046375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521854, 32.227295, 29.154518>,  <26.478073, 31.872898, 29.334757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521854, 32.227295, 29.154518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117486, -0.438610, -0.890965,
		-0.987024, 0.150458, 0.056084,
		0.109454, 0.885993, -0.450596,
		26.554691, 32.493092, 29.019339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965807, 31.880207, 28.804497>,  <26.478073, 31.872898, 29.334757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965807, 31.880207, 28.804497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242697, 32.155647, 28.718098>,  <26.408831, 32.320911, 28.666258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242697, 32.155647, 28.718098>,  <25.965807, 31.880207, 28.804497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242697, 32.155647, 28.718098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032506, -0.328743, -0.943860,
		-0.720949, 0.646342, -0.249948,
		0.692225, 0.688600, -0.215997,
		26.450365, 32.362228, 28.653299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525362, 31.607254, 28.423433>,  <25.965807, 31.880207, 28.804497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525362, 31.607254, 28.423433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814728, 31.474628, 28.181198>,  <26.988348, 31.395054, 28.035858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814728, 31.474628, 28.181198>,  <26.525362, 31.607254, 28.423433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814728, 31.474628, 28.181198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657298, 0.599141, 0.457153,
		0.211256, -0.728763, 0.651365,
		0.723416, -0.331564, -0.605586,
		27.031752, 31.375160, 27.999521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108252, 31.346134, 28.804024>,  <26.525362, 31.607254, 28.423433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108252, 31.346134, 28.804024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223211, 31.496805, 28.451771>,  <27.292187, 31.587208, 28.240419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223211, 31.496805, 28.451771>,  <27.108252, 31.346134, 28.804024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223211, 31.496805, 28.451771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665317, 0.582899, 0.466457,
		0.689024, -0.719961, -0.083084,
		0.287401, 0.376677, -0.880633,
		27.309431, 31.609808, 28.187580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832779, 31.271416, 28.622757>,  <27.108252, 31.346134, 28.804024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832779, 31.271416, 28.622757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700821, 31.599897, 28.436514>,  <27.621647, 31.796988, 28.324768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700821, 31.599897, 28.436514>,  <27.832779, 31.271416, 28.622757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700821, 31.599897, 28.436514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696923, 0.544550, 0.466652,
		0.636765, -0.170547, -0.751961,
		-0.329894, 0.821206, -0.465608,
		27.601852, 31.846260, 28.296831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142153, 31.531122, 28.017967>,  <27.832779, 31.271416, 28.622757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142153, 31.531122, 28.017967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248894, 31.575350, 27.635017>,  <28.312939, 31.601887, 27.405249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248894, 31.575350, 27.635017>,  <28.142153, 31.531122, 28.017967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248894, 31.575350, 27.635017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391003, -0.920385, 0.002690,
		-0.880855, -0.375054, -0.288841,
		0.266854, 0.110569, -0.957373,
		28.328949, 31.608521, 27.347805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372292, 32.049648, 28.532654>,  <28.142153, 31.531122, 28.017967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372292, 32.049648, 28.532654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463234, 32.436195, 28.484583>,  <28.517799, 32.668125, 28.455740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463234, 32.436195, 28.484583>,  <28.372292, 32.049648, 28.532654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463234, 32.436195, 28.484583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207717, -0.168692, -0.963534,
		-0.951401, 0.194102, -0.239084,
		0.227356, 0.966368, -0.120175,
		28.531441, 32.726105, 28.448530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089832, 32.455837, 27.844021>,  <28.372292, 32.049648, 28.532654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089832, 32.455837, 27.844021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437141, 32.615105, 27.962389>,  <28.645527, 32.710663, 28.033409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437141, 32.615105, 27.962389>,  <28.089832, 32.455837, 27.844021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437141, 32.615105, 27.962389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368401, -0.118016, -0.922146,
		-0.332242, 0.909691, -0.249154,
		0.868272, 0.398164, 0.295921,
		28.697622, 32.734554, 28.051165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180525, 32.974724, 27.359261>,  <28.089832, 32.455837, 27.844021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180525, 32.974724, 27.359261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519424, 32.859528, 27.537802>,  <28.722765, 32.790409, 27.644926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519424, 32.859528, 27.537802>,  <28.180525, 32.974724, 27.359261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519424, 32.859528, 27.537802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431943, -0.115576, -0.894465,
		0.309181, 0.950635, 0.026472,
		0.847250, -0.287986, 0.446354,
		28.773600, 32.773132, 27.671707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887337, 33.229382, 27.532846>,  <28.180525, 32.974724, 27.359261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887337, 33.229382, 27.532846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993422, 33.237602, 27.918434>,  <29.057072, 33.242535, 28.149788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993422, 33.237602, 27.918434>,  <28.887337, 33.229382, 27.532846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993422, 33.237602, 27.918434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947457, -0.191007, -0.256598,
		0.178852, 0.981374, -0.070127,
		0.265213, 0.020549, 0.963971,
		29.072985, 33.243767, 28.207626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382053, 33.783058, 27.323202>,  <28.887337, 33.229382, 27.532846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382053, 33.783058, 27.323202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431623, 34.068825, 27.047737>,  <29.461367, 34.240284, 26.882458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431623, 34.068825, 27.047737>,  <29.382053, 33.783058, 27.323202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431623, 34.068825, 27.047737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498074, 0.555468, 0.665866,
		0.858233, -0.425523, -0.286993,
		0.123926, 0.714412, -0.688663,
		29.468801, 34.283150, 26.841139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069811, 34.029606, 27.131063>,  <29.382053, 33.783058, 27.323202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069811, 34.029606, 27.131063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770847, 34.294201, 27.155773>,  <29.591469, 34.452957, 27.170599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770847, 34.294201, 27.155773>,  <30.069811, 34.029606, 27.131063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770847, 34.294201, 27.155773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426398, 0.406313, 0.808143,
		0.509476, 0.630353, -0.585738,
		-0.747409, 0.661486, 0.061774,
		29.546625, 34.492645, 27.174305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288988, 34.709179, 27.106928>,  <30.069811, 34.029606, 27.131063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288988, 34.709179, 27.106928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927158, 34.755123, 27.271151>,  <29.710060, 34.782688, 27.369684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927158, 34.755123, 27.271151>,  <30.288988, 34.709179, 27.106928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927158, 34.755123, 27.271151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410428, 0.495102, 0.765782,
		-0.115313, 0.861209, -0.494996,
		-0.904573, 0.114856, 0.410556,
		29.655787, 34.789581, 27.394318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204906, 35.456818, 27.394314>,  <30.288988, 34.709179, 27.106928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204906, 35.456818, 27.394314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928152, 35.232449, 27.576155>,  <29.762100, 35.097828, 27.685259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928152, 35.232449, 27.576155>,  <30.204906, 35.456818, 27.394314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928152, 35.232449, 27.576155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179824, 0.475922, 0.860907,
		-0.699257, 0.677396, -0.228416,
		-0.691884, -0.560921, 0.454604,
		29.720587, 35.064171, 27.712536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757755, 35.936394, 27.714905>,  <30.204906, 35.456818, 27.394314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757755, 35.936394, 27.714905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733747, 35.592869, 27.918411>,  <29.719343, 35.386753, 28.040516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733747, 35.592869, 27.918411>,  <29.757755, 35.936394, 27.714905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733747, 35.592869, 27.918411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073831, 0.504471, 0.860266,
		-0.995463, 0.089194, 0.033129,
		-0.060017, -0.858809, 0.508768,
		29.715742, 35.335224, 28.071041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519033, 36.151436, 28.376720>,  <29.757755, 35.936394, 27.714905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519033, 36.151436, 28.376720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640730, 35.782822, 28.473227>,  <29.713749, 35.561653, 28.531130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640730, 35.782822, 28.473227>,  <29.519033, 36.151436, 28.376720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640730, 35.782822, 28.473227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433357, 0.359440, 0.826441,
		-0.848315, -0.146885, 0.508711,
		0.304243, -0.921535, 0.241265,
		29.732002, 35.506363, 28.545607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311581, 36.033001, 29.064440>,  <29.519033, 36.151436, 28.376720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311581, 36.033001, 29.064440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599470, 35.760502, 29.010929>,  <29.772203, 35.597000, 28.978823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599470, 35.760502, 29.010929>,  <29.311581, 36.033001, 29.064440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599470, 35.760502, 29.010929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265810, 0.092386, 0.959588,
		-0.641363, -0.726195, 0.247576,
		0.719721, -0.681253, -0.133777,
		29.815386, 35.556126, 28.970797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381708, 35.765324, 29.723309>,  <29.311581, 36.033001, 29.064440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381708, 35.765324, 29.723309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707369, 35.625832, 29.537603>,  <29.902765, 35.542137, 29.426180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707369, 35.625832, 29.537603>,  <29.381708, 35.765324, 29.723309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707369, 35.625832, 29.537603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398714, -0.245492, 0.883607,
		-0.422114, -0.904500, -0.060824,
		0.814154, -0.348732, -0.464262,
		29.951614, 35.521214, 29.398325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425201, 35.003555, 29.907583>,  <29.381708, 35.765324, 29.723309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425201, 35.003555, 29.907583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770782, 35.189198, 29.829409>,  <29.978130, 35.300583, 29.782503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770782, 35.189198, 29.829409>,  <29.425201, 35.003555, 29.907583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770782, 35.189198, 29.829409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387392, -0.364570, 0.846768,
		0.321739, -0.807277, -0.494761,
		0.863951, 0.464105, -0.195436,
		30.029968, 35.328430, 29.770779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898151, 34.524712, 30.177668>,  <29.425201, 35.003555, 29.907583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898151, 34.524712, 30.177668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082949, 34.876698, 30.133457>,  <30.193827, 35.087891, 30.106932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082949, 34.876698, 30.133457>,  <29.898151, 34.524712, 30.177668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082949, 34.876698, 30.133457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369600, -0.077747, 0.925933,
		0.806199, -0.468626, -0.361155,
		0.461995, 0.879968, -0.110524,
		30.221548, 35.140690, 30.100300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498991, 34.431866, 30.560677>,  <29.898151, 34.524712, 30.177668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498991, 34.431866, 30.560677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487116, 34.830746, 30.533218>,  <30.479990, 35.070072, 30.516745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487116, 34.830746, 30.533218>,  <30.498991, 34.431866, 30.560677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487116, 34.830746, 30.533218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468210, 0.074548, 0.880467,
		0.883118, -0.006001, -0.469112,
		-0.029688, 0.997199, -0.068645,
		30.478209, 35.129906, 30.512625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174425, 34.644203, 30.808300>,  <30.498991, 34.431866, 30.560677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174425, 34.644203, 30.808300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900503, 34.934921, 30.829531>,  <30.736151, 35.109352, 30.842270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900503, 34.934921, 30.829531>,  <31.174425, 34.644203, 30.808300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900503, 34.934921, 30.829531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056034, -0.020104, 0.998227,
		0.726569, 0.686564, -0.026957,
		-0.684805, 0.726791, 0.053078,
		30.695063, 35.152958, 30.845453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328005, 34.921883, 31.457249>,  <31.174425, 34.644203, 30.808300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328005, 34.921883, 31.457249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973722, 35.083626, 31.366018>,  <30.761152, 35.180672, 31.311279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973722, 35.083626, 31.366018>,  <31.328005, 34.921883, 31.457249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973722, 35.083626, 31.366018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231676, 0.040753, 0.971939,
		0.402307, 0.913692, 0.057584,
		-0.885706, 0.404358, -0.228075,
		30.708010, 35.204933, 31.297596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270893, 35.383381, 31.996569>,  <31.328005, 34.921883, 31.457249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270893, 35.383381, 31.996569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902098, 35.354362, 31.844423>,  <30.680820, 35.336952, 31.753136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902098, 35.354362, 31.844423>,  <31.270893, 35.383381, 31.996569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902098, 35.354362, 31.844423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368388, -0.138247, 0.919335,
		-0.119281, 0.987737, 0.100736,
		-0.921988, -0.072549, -0.380361,
		30.625502, 35.332596, 31.730314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848175, 35.872143, 32.298820>,  <31.270893, 35.383381, 31.996569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848175, 35.872143, 32.298820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612432, 35.572086, 32.178848>,  <30.470987, 35.392052, 32.106865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612432, 35.572086, 32.178848>,  <30.848175, 35.872143, 32.298820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612432, 35.572086, 32.178848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314322, -0.129088, 0.940499,
		-0.744220, 0.648561, -0.159706,
		-0.589354, -0.750137, -0.299927,
		30.435627, 35.347046, 32.088871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150761, 35.878963, 32.530998>,  <30.848175, 35.872143, 32.298820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150761, 35.878963, 32.530998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115414, 35.492756, 32.433048>,  <30.094206, 35.261032, 32.374279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115414, 35.492756, 32.433048>,  <30.150761, 35.878963, 32.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115414, 35.492756, 32.433048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199831, -0.223656, 0.953963,
		-0.975837, 0.133235, -0.173176,
		-0.088369, -0.965519, -0.244876,
		30.088903, 35.203102, 32.359585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606047, 35.580391, 32.959156>,  <30.150761, 35.878963, 32.530998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606047, 35.580391, 32.959156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800205, 35.258129, 32.823322>,  <29.916700, 35.064774, 32.741821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800205, 35.258129, 32.823322>,  <29.606047, 35.580391, 32.959156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800205, 35.258129, 32.823322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054099, -0.415344, 0.908054,
		-0.872619, -0.422394, -0.245191,
		0.485396, -0.805650, -0.339586,
		29.945824, 35.016434, 32.721447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094414, 34.910522, 33.042847>,  <29.606047, 35.580391, 32.959156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094414, 34.910522, 33.042847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462269, 34.755775, 33.015717>,  <29.682981, 34.662926, 32.999439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462269, 34.755775, 33.015717>,  <29.094414, 34.910522, 33.042847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462269, 34.755775, 33.015717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134042, -0.471441, 0.871651,
		-0.369189, -0.792512, -0.485412,
		0.919637, -0.386870, -0.067821,
		29.738159, 34.639713, 32.995369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951130, 34.329777, 33.339989>,  <29.094414, 34.910522, 33.042847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951130, 34.329777, 33.339989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349751, 34.361656, 33.330780>,  <29.588923, 34.380783, 33.325253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349751, 34.361656, 33.330780>,  <28.951130, 34.329777, 33.339989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349751, 34.361656, 33.330780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053678, -0.407858, 0.911466,
		0.063256, -0.909560, -0.410730,
		0.996553, 0.079703, -0.023024,
		29.648716, 34.385567, 33.323872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153784, 33.747307, 33.531998>,  <28.951130, 34.329777, 33.339989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153784, 33.747307, 33.531998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469542, 33.973949, 33.626499>,  <29.658997, 34.109936, 33.683201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469542, 33.973949, 33.626499>,  <29.153784, 33.747307, 33.531998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469542, 33.973949, 33.626499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051281, -0.322635, 0.945133,
		0.611743, -0.758196, -0.225629,
		0.789393, 0.566608, 0.236251,
		29.706360, 34.143932, 33.697376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594812, 33.359837, 34.001469>,  <29.153784, 33.747307, 33.531998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594812, 33.359837, 34.001469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740175, 33.727253, 34.063717>,  <29.827393, 33.947704, 34.101067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740175, 33.727253, 34.063717>,  <29.594812, 33.359837, 34.001469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740175, 33.727253, 34.063717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159167, -0.225798, 0.961083,
		0.917933, -0.324496, -0.228259,
		0.363408, 0.918541, 0.155618,
		29.849197, 34.002815, 34.110401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213934, 33.280422, 34.403179>,  <29.594812, 33.359837, 34.001469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213934, 33.280422, 34.403179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077921, 33.649326, 34.476742>,  <29.996313, 33.870667, 34.520878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077921, 33.649326, 34.476742>,  <30.213934, 33.280422, 34.403179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077921, 33.649326, 34.476742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026763, -0.185986, 0.982188,
		0.940033, 0.338897, 0.038559,
		-0.340032, 0.922257, 0.183903,
		29.975912, 33.926003, 34.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631346, 33.543392, 35.063961>,  <30.213934, 33.280422, 34.403179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631346, 33.543392, 35.063961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315048, 33.785503, 35.027378>,  <30.125271, 33.930771, 35.005428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315048, 33.785503, 35.027378>,  <30.631346, 33.543392, 35.063961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315048, 33.785503, 35.027378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144857, -0.039857, 0.988650,
		0.594763, 0.795016, 0.119195,
		-0.790743, 0.605278, -0.091458,
		30.077826, 33.967087, 34.999939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811117, 34.051193, 35.585197>,  <30.631346, 33.543392, 35.063961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811117, 34.051193, 35.585197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419348, 34.040462, 35.505192>,  <30.184286, 34.034023, 35.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419348, 34.040462, 35.505192>,  <30.811117, 34.051193, 35.585197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419348, 34.040462, 35.505192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198489, -0.050991, 0.978776,
		-0.036455, 0.998339, 0.044618,
		-0.979425, -0.026825, -0.200019,
		30.125521, 34.032413, 35.445187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392380, 34.605824, 35.929283>,  <30.811117, 34.051193, 35.585197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392380, 34.605824, 35.929283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144930, 34.295860, 35.877407>,  <29.996460, 34.109882, 35.846283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144930, 34.295860, 35.877407>,  <30.392380, 34.605824, 35.929283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144930, 34.295860, 35.877407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284161, 0.066782, 0.956448,
		-0.732499, 0.628535, -0.261512,
		-0.618626, -0.774908, -0.129687,
		29.959343, 34.063389, 35.838501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856554, 34.464233, 36.368198>,  <30.392380, 34.605824, 35.929283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856554, 34.464233, 36.368198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073540, 34.764301, 36.216949>,  <31.203732, 34.944344, 36.126202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073540, 34.764301, 36.216949>,  <30.856554, 34.464233, 36.368198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073540, 34.764301, 36.216949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521222, 0.052445, 0.851808,
		0.658832, -0.659161, -0.362556,
		0.542464, 0.750171, -0.378121,
		31.236279, 34.989353, 36.103512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568762, 34.452297, 36.502964>,  <30.856554, 34.464233, 36.368198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568762, 34.452297, 36.502964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546953, 34.843338, 36.421654>,  <31.533867, 35.077961, 36.372868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546953, 34.843338, 36.421654>,  <31.568762, 34.452297, 36.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546953, 34.843338, 36.421654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560585, 0.198438, 0.803970,
		0.826300, -0.070119, -0.558848,
		-0.054523, 0.977602, -0.203277,
		31.530596, 35.136620, 36.360672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141926, 34.647381, 36.738064>,  <31.568762, 34.452297, 36.502964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141926, 34.647381, 36.738064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003220, 35.020741, 36.701153>,  <31.919996, 35.244759, 36.679008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003220, 35.020741, 36.701153>,  <32.141926, 34.647381, 36.738064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003220, 35.020741, 36.701153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644229, 0.308518, 0.699847,
		0.681708, 0.183234, -0.708308,
		-0.346761, 0.933403, -0.092275,
		31.899191, 35.300762, 36.673470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691875, 35.107212, 36.705013>,  <32.141926, 34.647381, 36.738064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691875, 35.107212, 36.705013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389668, 35.338837, 36.827572>,  <32.208344, 35.477810, 36.901108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389668, 35.338837, 36.827572>,  <32.691875, 35.107212, 36.705013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389668, 35.338837, 36.827572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589309, 0.396402, 0.703975,
		0.286188, 0.712430, -0.640734,
		-0.755521, 0.579059, 0.306396,
		32.163010, 35.512554, 36.919491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770954, 35.849575, 36.681477>,  <32.691875, 35.107212, 36.705013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770954, 35.849575, 36.681477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523235, 35.752949, 36.980305>,  <32.374603, 35.694973, 37.159603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523235, 35.752949, 36.980305>,  <32.770954, 35.849575, 36.681477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523235, 35.752949, 36.980305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668625, 0.336529, 0.663090,
		-0.411593, 0.910161, -0.046892,
		-0.619299, -0.241570, 0.747069,
		32.337444, 35.680477, 37.204426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577679, 36.456524, 37.154274>,  <32.770954, 35.849575, 36.681477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577679, 36.456524, 37.154274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561539, 36.115738, 37.363091>,  <32.551853, 35.911266, 37.488380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561539, 36.115738, 37.363091>,  <32.577679, 36.456524, 37.154274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561539, 36.115738, 37.363091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656160, 0.371426, 0.656884,
		-0.753542, 0.369047, 0.544039,
		-0.040351, -0.851967, 0.522039,
		32.549435, 35.860149, 37.519703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386227, 36.613220, 37.898613>,  <32.577679, 36.456524, 37.154274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386227, 36.613220, 37.898613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613857, 36.284958, 37.877934>,  <32.750435, 36.088001, 37.865524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613857, 36.284958, 37.877934>,  <32.386227, 36.613220, 37.898613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613857, 36.284958, 37.877934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635609, 0.399127, 0.660832,
		-0.521680, -0.408928, 0.748751,
		0.569080, -0.820655, -0.051702,
		32.784580, 36.038761, 37.862423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538738, 36.558075, 38.620892>,  <32.386227, 36.613220, 37.898613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538738, 36.558075, 38.620892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804134, 36.330933, 38.426025>,  <32.963371, 36.194649, 38.309105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804134, 36.330933, 38.426025>,  <32.538738, 36.558075, 38.620892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804134, 36.330933, 38.426025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711188, 0.276437, 0.646370,
		-0.232373, -0.775323, 0.587263,
		0.663487, -0.567853, -0.487164,
		33.003181, 36.160576, 38.279877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886276, 36.176491, 39.142860>,  <32.538738, 36.558075, 38.620892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886276, 36.176491, 39.142860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148251, 36.177391, 38.840588>,  <33.305435, 36.177933, 38.659225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148251, 36.177391, 38.840588>,  <32.886276, 36.176491, 39.142860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148251, 36.177391, 38.840588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724493, 0.282450, 0.628754,
		0.214857, -0.959279, 0.183355,
		0.654939, 0.002253, -0.755678,
		33.344734, 36.178066, 38.613884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416958, 35.823681, 39.339573>,  <32.886276, 36.176491, 39.142860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416958, 35.823681, 39.339573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589783, 36.011280, 39.031452>,  <33.693478, 36.123840, 38.846581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589783, 36.011280, 39.031452>,  <33.416958, 35.823681, 39.339573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589783, 36.011280, 39.031452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733027, 0.314927, 0.602904,
		0.525350, -0.825142, -0.207722,
		0.432064, 0.469001, -0.770298,
		33.719402, 36.151981, 38.800362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057255, 35.612419, 39.317123>,  <33.416958, 35.823681, 39.339573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057255, 35.612419, 39.317123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072956, 35.960026, 39.119831>,  <34.082378, 36.168591, 39.001457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072956, 35.960026, 39.119831>,  <34.057255, 35.612419, 39.317123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072956, 35.960026, 39.119831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809541, 0.261694, 0.525509,
		0.585750, -0.419916, -0.693230,
		0.039256, 0.869015, -0.493226,
		34.084732, 36.220730, 38.971863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813541, 35.789444, 39.314751>,  <34.057255, 35.612419, 39.317123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813541, 35.789444, 39.314751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622238, 36.134159, 39.247128>,  <34.507454, 36.340988, 39.206554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622238, 36.134159, 39.247128>,  <34.813541, 35.789444, 39.314751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622238, 36.134159, 39.247128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716057, 0.494111, 0.493069,
		0.508458, 0.114758, -0.853405,
		-0.478261, 0.861792, -0.169062,
		34.478760, 36.392696, 39.196407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336517, 36.382629, 39.047741>,  <34.813541, 35.789444, 39.314751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336517, 36.382629, 39.047741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013844, 36.579556, 39.178516>,  <34.820240, 36.697712, 39.256981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013844, 36.579556, 39.178516>,  <35.336517, 36.382629, 39.047741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013844, 36.579556, 39.178516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575133, 0.526693, 0.625952,
		0.135970, 0.692978, -0.708021,
		-0.806681, 0.492317, 0.326940,
		34.771839, 36.727249, 39.276600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667149, 37.023037, 39.461098>,  <35.336517, 36.382629, 39.047741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667149, 37.023037, 39.461098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299267, 36.945412, 39.597614>,  <35.078537, 36.898838, 39.679523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299267, 36.945412, 39.597614>,  <35.667149, 37.023037, 39.461098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299267, 36.945412, 39.597614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256377, 0.361494, 0.896433,
		-0.297337, 0.911955, -0.282716,
		-0.919707, -0.194061, 0.341290,
		35.023354, 36.887192, 39.700001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496784, 37.697155, 39.706635>,  <35.667149, 37.023037, 39.461098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496784, 37.697155, 39.706635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300240, 37.405682, 39.897457>,  <35.182312, 37.230797, 40.011951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300240, 37.405682, 39.897457>,  <35.496784, 37.697155, 39.706635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300240, 37.405682, 39.897457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331273, 0.350210, 0.876135,
		-0.805498, 0.588531, 0.069316,
		-0.491357, -0.728687, 0.477057,
		35.152832, 37.187077, 40.040573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400730, 37.916191, 40.456123>,  <35.496784, 37.697155, 39.706635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400730, 37.916191, 40.456123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266731, 37.546520, 40.529533>,  <35.186333, 37.324718, 40.573578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266731, 37.546520, 40.529533>,  <35.400730, 37.916191, 40.456123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266731, 37.546520, 40.529533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086945, 0.163627, 0.982683,
		-0.938198, 0.345154, 0.025538,
		-0.334999, -0.924172, 0.183524,
		35.166233, 37.269268, 40.584591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794605, 37.920105, 41.013420>,  <35.400730, 37.916191, 40.456123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794605, 37.920105, 41.013420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990379, 37.571323, 41.008621>,  <35.107845, 37.362053, 41.005741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990379, 37.571323, 41.008621>,  <34.794605, 37.920105, 41.013420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990379, 37.571323, 41.008621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241707, 0.122431, 0.962595,
		-0.837871, -0.474030, 0.270680,
		0.489439, -0.871955, -0.011995,
		35.137211, 37.309738, 41.005024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449203, 37.621426, 41.563240>,  <34.794605, 37.920105, 41.013420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449203, 37.621426, 41.563240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779804, 37.401882, 41.513199>,  <34.978165, 37.270157, 41.483173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779804, 37.401882, 41.513199>,  <34.449203, 37.621426, 41.563240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779804, 37.401882, 41.513199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060244, -0.134715, 0.989051,
		-0.559705, -0.824987, -0.078276,
		0.826499, -0.548862, -0.125101,
		35.027756, 37.237225, 41.475670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258354, 37.133907, 42.043259>,  <34.449203, 37.621426, 41.563240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258354, 37.133907, 42.043259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647617, 37.079876, 41.968735>,  <34.881176, 37.047459, 41.924019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647617, 37.079876, 41.968735>,  <34.258354, 37.133907, 42.043259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647617, 37.079876, 41.968735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193685, 0.043547, 0.980097,
		-0.124275, -0.989878, 0.068541,
		0.973161, -0.135077, -0.186312,
		34.939564, 37.039352, 41.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478451, 36.564426, 42.342602>,  <34.258354, 37.133907, 42.043259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478451, 36.564426, 42.342602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796162, 36.805317, 42.310482>,  <34.986790, 36.949852, 42.291210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796162, 36.805317, 42.310482>,  <34.478451, 36.564426, 42.342602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796162, 36.805317, 42.310482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040726, 0.184642, 0.981961,
		0.606185, -0.776682, 0.171184,
		0.794280, 0.602222, -0.080296,
		35.034447, 36.985985, 42.286392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086159, 36.439312, 42.878040>,  <34.478451, 36.564426, 42.342602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086159, 36.439312, 42.878040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144150, 36.823502, 42.782990>,  <35.178944, 37.054016, 42.725960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144150, 36.823502, 42.782990>,  <35.086159, 36.439312, 42.878040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144150, 36.823502, 42.782990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045424, 0.233447, 0.971308,
		0.988391, -0.151615, -0.009784,
		0.144980, 0.960477, -0.237624,
		35.187645, 37.111645, 42.711704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545628, 36.694286, 43.377682>,  <35.086159, 36.439312, 42.878040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545628, 36.694286, 43.377682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376152, 37.019897, 43.218761>,  <35.274467, 37.215263, 43.123409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376152, 37.019897, 43.218761>,  <35.545628, 36.694286, 43.377682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376152, 37.019897, 43.218761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082232, 0.402234, 0.911836,
		0.902067, 0.419007, -0.103484,
		-0.423691, 0.814027, -0.397298,
		35.249046, 37.264107, 43.099571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614616, 37.182148, 43.857635>,  <35.545628, 36.694286, 43.377682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614616, 37.182148, 43.857635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349815, 37.376202, 43.629108>,  <35.190937, 37.492634, 43.491993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349815, 37.376202, 43.629108>,  <35.614616, 37.182148, 43.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349815, 37.376202, 43.629108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342878, 0.481797, 0.806416,
		0.666476, 0.729740, -0.152609,
		-0.662000, 0.485130, -0.571318,
		35.151215, 37.521740, 43.457714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623493, 37.870804, 44.133873>,  <35.614616, 37.182148, 43.857635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623493, 37.870804, 44.133873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287651, 37.890972, 43.917530>,  <35.086147, 37.903072, 43.787724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287651, 37.890972, 43.917530>,  <35.623493, 37.870804, 44.133873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287651, 37.890972, 43.917530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455502, 0.477120, 0.751581,
		0.295953, 0.877390, -0.377622,
		-0.839601, 0.050425, -0.540858,
		35.035770, 37.906101, 43.755272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284214, 38.462177, 44.199211>,  <35.623493, 37.870804, 44.133873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284214, 38.462177, 44.199211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975758, 38.242867, 44.069756>,  <34.790684, 38.111279, 43.992085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975758, 38.242867, 44.069756>,  <35.284214, 38.462177, 44.199211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975758, 38.242867, 44.069756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599436, 0.453952, 0.659245,
		-0.214534, 0.702367, -0.678716,
		-0.771137, -0.548277, -0.323635,
		34.744415, 38.078384, 43.972664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833141, 38.903774, 44.143982>,  <35.284214, 38.462177, 44.199211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833141, 38.903774, 44.143982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607677, 38.573444, 44.137001>,  <34.472401, 38.375248, 44.132812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607677, 38.573444, 44.137001>,  <34.833141, 38.903774, 44.143982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607677, 38.573444, 44.137001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700754, 0.466897, 0.539399,
		-0.437299, 0.316267, -0.841870,
		-0.563661, -0.825822, -0.017452,
		34.438580, 38.325699, 44.131763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091351, 39.073532, 44.156471>,  <34.833141, 38.903774, 44.143982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091351, 39.073532, 44.156471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140404, 38.708313, 44.312061>,  <34.169838, 38.489182, 44.405415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140404, 38.708313, 44.312061>,  <34.091351, 39.073532, 44.156471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140404, 38.708313, 44.312061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532965, 0.270038, 0.801890,
		-0.837203, -0.305653, -0.453506,
		0.122637, -0.913047, 0.388979,
		34.177197, 38.434399, 44.428757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396278, 38.914368, 44.413994>,  <34.091351, 39.073532, 44.156471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396278, 38.914368, 44.413994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632507, 38.650219, 44.599525>,  <33.774242, 38.491730, 44.710846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632507, 38.650219, 44.599525>,  <33.396278, 38.914368, 44.413994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632507, 38.650219, 44.599525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387284, 0.272322, 0.880824,
		-0.707983, -0.699820, -0.094927,
		0.590568, -0.660373, 0.463829,
		33.809677, 38.452106, 44.738674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912155, 38.616154, 44.727276>,  <33.396278, 38.914368, 44.413994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912155, 38.616154, 44.727276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258484, 38.525291, 44.905605>,  <33.466282, 38.470776, 45.012604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258484, 38.525291, 44.905605>,  <32.912155, 38.616154, 44.727276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258484, 38.525291, 44.905605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373696, 0.298932, 0.878061,
		-0.332725, -0.926844, 0.173934,
		0.865821, -0.227155, 0.445820,
		33.518230, 38.457146, 45.039352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732258, 38.196434, 45.328495>,  <32.912155, 38.616154, 44.727276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732258, 38.196434, 45.328495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101994, 38.333466, 45.395714>,  <33.323833, 38.415684, 45.436043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101994, 38.333466, 45.395714>,  <32.732258, 38.196434, 45.328495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101994, 38.333466, 45.395714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306098, 0.402785, 0.862594,
		0.227817, -0.848768, 0.477171,
		0.924340, 0.342575, 0.168045,
		33.379295, 38.436237, 45.446129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752384, 38.127621, 46.093571>,  <32.732258, 38.196434, 45.328495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752384, 38.127621, 46.093571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037941, 38.383038, 45.978600>,  <33.209274, 38.536289, 45.909615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037941, 38.383038, 45.978600>,  <32.752384, 38.127621, 46.093571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037941, 38.383038, 45.978600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158771, 0.547380, 0.821685,
		0.682015, -0.540962, 0.492154,
		0.713896, 0.638541, -0.287432,
		33.252110, 38.574600, 45.892368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226673, 38.165997, 46.728256>,  <32.752384, 38.127621, 46.093571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226673, 38.165997, 46.728256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267879, 38.497875, 46.508804>,  <33.292603, 38.697002, 46.377132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267879, 38.497875, 46.508804>,  <33.226673, 38.165997, 46.728256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267879, 38.497875, 46.508804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074835, 0.556461, 0.827496,
		0.991860, -0.044188, 0.119415,
		0.103015, 0.829698, -0.548625,
		33.298782, 38.746784, 46.344215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623230, 38.528423, 47.180573>,  <33.226673, 38.165997, 46.728256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623230, 38.528423, 47.180573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493401, 38.799305, 46.916435>,  <33.415504, 38.961834, 46.757954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493401, 38.799305, 46.916435>,  <33.623230, 38.528423, 47.180573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493401, 38.799305, 46.916435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074617, 0.714292, 0.695859,
		0.942914, 0.176582, -0.282368,
		-0.324569, 0.677204, -0.660340,
		33.396030, 39.002468, 46.718334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057304, 39.051815, 47.342354>,  <33.623230, 38.528423, 47.180573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057304, 39.051815, 47.342354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735348, 39.196301, 47.154030>,  <33.542171, 39.282993, 47.041035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735348, 39.196301, 47.154030>,  <34.057304, 39.051815, 47.342354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735348, 39.196301, 47.154030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056955, 0.742706, 0.667192,
		0.590676, 0.563835, -0.577228,
		-0.804896, 0.361218, -0.470812,
		33.493877, 39.304665, 47.012787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151459, 39.807365, 47.295666>,  <34.057304, 39.051815, 47.342354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151459, 39.807365, 47.295666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758171, 39.737568, 47.274380>,  <33.522198, 39.695690, 47.261608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758171, 39.737568, 47.274380>,  <34.151459, 39.807365, 47.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758171, 39.737568, 47.274380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150367, 0.609993, 0.778009,
		-0.103296, 0.772956, -0.625995,
		-0.983219, -0.174494, -0.053217,
		33.463203, 39.685219, 47.258415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729816, 40.533382, 47.333641>,  <34.151459, 39.807365, 47.295666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729816, 40.533382, 47.333641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465412, 40.244972, 47.416767>,  <33.306770, 40.071926, 47.466644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465412, 40.244972, 47.416767>,  <33.729816, 40.533382, 47.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465412, 40.244972, 47.416767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236777, 0.463217, 0.854030,
		-0.712042, 0.515315, -0.476913,
		-0.661009, -0.721027, 0.207816,
		33.267109, 40.028664, 47.479111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136471, 40.881744, 47.573486>,  <33.729816, 40.533382, 47.333641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136471, 40.881744, 47.573486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064381, 40.516506, 47.719788>,  <33.021126, 40.297363, 47.807568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064381, 40.516506, 47.719788>,  <33.136471, 40.881744, 47.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064381, 40.516506, 47.719788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192058, 0.397352, 0.897343,
		-0.964693, 0.091480, -0.246981,
		-0.180228, -0.913095, 0.365753,
		33.010311, 40.242577, 47.829514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372086, 40.838696, 47.900188>,  <33.136471, 40.881744, 47.573486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372086, 40.838696, 47.900188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600021, 40.565845, 48.083485>,  <32.736786, 40.402134, 48.193462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600021, 40.565845, 48.083485>,  <32.372086, 40.838696, 47.900188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600021, 40.565845, 48.083485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244804, 0.391403, 0.887059,
		-0.784442, -0.617665, 0.056052,
		0.569844, -0.682125, 0.458240,
		32.770973, 40.361210, 48.220955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958923, 40.727947, 48.334721>,  <32.372086, 40.838696, 47.900188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958923, 40.727947, 48.334721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309834, 40.569111, 48.442581>,  <32.520378, 40.473808, 48.507298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309834, 40.569111, 48.442581>,  <31.958923, 40.727947, 48.334721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309834, 40.569111, 48.442581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111276, 0.378225, 0.919001,
		-0.466911, -0.836222, 0.287622,
		0.877275, -0.397087, 0.269649,
		32.573017, 40.449986, 48.523476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756704, 40.288486, 48.931534>,  <31.958923, 40.727947, 48.334721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756704, 40.288486, 48.931534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149384, 40.355396, 48.967945>,  <32.384991, 40.395542, 48.989792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149384, 40.355396, 48.967945>,  <31.756704, 40.288486, 48.931534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149384, 40.355396, 48.967945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131587, 0.250297, 0.959185,
		0.137662, -0.953610, 0.267728,
		0.981700, 0.167273, 0.091026,
		32.443893, 40.405579, 48.995255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902494, 40.008930, 49.567024>,  <31.756704, 40.288486, 48.931534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902494, 40.008930, 49.567024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223953, 40.237621, 49.500961>,  <32.416828, 40.374836, 49.461323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223953, 40.237621, 49.500961>,  <31.902494, 40.008930, 49.567024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223953, 40.237621, 49.500961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097717, 0.400530, 0.911058,
		0.587033, -0.716028, 0.377752,
		0.803644, 0.571734, -0.165157,
		32.465046, 40.409142, 49.451416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582691, 39.836884, 50.024967>,  <31.902494, 40.008930, 49.567024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582691, 39.836884, 50.024967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566402, 40.224178, 49.926289>,  <32.556629, 40.456554, 49.867081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566402, 40.224178, 49.926289>,  <32.582691, 39.836884, 50.024967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566402, 40.224178, 49.926289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198865, 0.249818, 0.947652,
		0.979181, -0.010474, -0.202720,
		-0.040717, 0.968236, -0.246700,
		32.554188, 40.514648, 49.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955559, 40.142181, 50.646542>,  <32.582691, 39.836884, 50.024967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955559, 40.142181, 50.646542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792957, 40.453915, 50.455795>,  <32.695396, 40.640953, 50.341347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792957, 40.453915, 50.455795>,  <32.955559, 40.142181, 50.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792957, 40.453915, 50.455795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130068, 0.565980, 0.814094,
		0.904345, 0.268904, -0.331437,
		-0.406500, 0.779332, -0.476865,
		32.671009, 40.687714, 50.312737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379383, 40.727104, 50.876011>,  <32.955559, 40.142181, 50.646542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379383, 40.727104, 50.876011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033012, 40.872086, 50.738140>,  <32.825191, 40.959076, 50.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033012, 40.872086, 50.738140>,  <33.379383, 40.727104, 50.876011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033012, 40.872086, 50.738140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017090, 0.710150, 0.703843,
		0.499880, 0.603585, -0.621132,
		-0.865926, 0.362452, -0.344674,
		32.773235, 40.980820, 50.634739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423077, 41.455254, 51.047890>,  <33.379383, 40.727104, 50.876011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423077, 41.455254, 51.047890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029396, 41.424114, 50.984287>,  <32.793186, 41.405430, 50.946125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029396, 41.424114, 50.984287>,  <33.423077, 41.455254, 51.047890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029396, 41.424114, 50.984287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159017, 0.783556, 0.600628,
		0.077835, 0.616425, -0.783557,
		-0.984203, -0.077849, -0.159010,
		32.734135, 41.400761, 50.936584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106556, 42.122616, 50.851189>,  <33.423077, 41.455254, 51.047890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106556, 42.122616, 50.851189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817547, 41.899963, 51.015198>,  <32.644142, 41.766373, 51.113605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817547, 41.899963, 51.015198>,  <33.106556, 42.122616, 50.851189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817547, 41.899963, 51.015198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173102, 0.719848, 0.672201,
		-0.669323, 0.414706, -0.616462,
		-0.722525, -0.556631, 0.410025,
		32.600788, 41.732975, 51.138206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451557, 42.654861, 51.003422>,  <33.106556, 42.122616, 50.851189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451557, 42.654861, 51.003422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429173, 42.333134, 51.240044>,  <32.415741, 42.140095, 51.382015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429173, 42.333134, 51.240044>,  <32.451557, 42.654861, 51.003422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429173, 42.333134, 51.240044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103973, 0.593954, 0.797752,
		-0.993005, -0.016866, -0.116864,
		-0.055957, -0.804323, 0.591552,
		32.412384, 42.091839, 51.417511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983749, 42.786674, 51.496212>,  <32.451557, 42.654861, 51.003422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983749, 42.786674, 51.496212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178650, 42.479828, 51.663120>,  <32.295589, 42.295719, 51.763264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178650, 42.479828, 51.663120>,  <31.983749, 42.786674, 51.496212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178650, 42.479828, 51.663120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169449, 0.385690, 0.906934,
		-0.856665, -0.512610, 0.057939,
		0.487250, -0.767121, 0.417268,
		32.324825, 42.249691, 51.788300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641918, 42.491516, 52.136269>,  <31.983749, 42.786674, 51.496212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641918, 42.491516, 52.136269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038368, 42.456947, 52.176678>,  <32.276237, 42.436207, 52.200924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038368, 42.456947, 52.176678>,  <31.641918, 42.491516, 52.136269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038368, 42.456947, 52.176678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063218, 0.362058, 0.930009,
		-0.116951, -0.928140, 0.353381,
		0.991123, -0.086425, 0.101018,
		32.335705, 42.431019, 52.206982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654934, 42.469555, 52.758537>,  <31.641918, 42.491516, 52.136269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654934, 42.469555, 52.758537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044250, 42.507313, 52.674831>,  <32.277840, 42.529968, 52.624607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044250, 42.507313, 52.674831>,  <31.654934, 42.469555, 52.758537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044250, 42.507313, 52.674831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142768, 0.464952, 0.873749,
		0.179769, -0.880290, 0.439059,
		0.973294, 0.094390, -0.209261,
		32.336239, 42.535629, 52.612053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197235, 42.065247, 53.181396>,  <31.654934, 42.469555, 52.758537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197235, 42.065247, 53.181396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348232, 42.409885, 53.045662>,  <32.438831, 42.616669, 52.964222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348232, 42.409885, 53.045662>,  <32.197235, 42.065247, 53.181396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348232, 42.409885, 53.045662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145987, 0.417235, 0.896997,
		0.914434, -0.289068, 0.283284,
		0.377488, 0.861600, -0.339334,
		32.461479, 42.668365, 52.943863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607437, 42.385983, 53.767365>,  <32.197235, 42.065247, 53.181396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607437, 42.385983, 53.767365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502369, 42.667290, 53.503117>,  <32.439327, 42.836075, 53.344570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502369, 42.667290, 53.503117>,  <32.607437, 42.385983, 53.767365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502369, 42.667290, 53.503117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238069, 0.616254, 0.750702,
		0.935055, 0.354459, 0.005556,
		-0.262670, 0.703270, -0.660617,
		32.423569, 42.878269, 53.304932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112453, 41.759941, 53.830776>,  <32.607437, 42.385983, 53.767365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112453, 41.759941, 53.830776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894989, 41.602436, 54.127258>,  <31.764511, 41.507931, 54.305145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894989, 41.602436, 54.127258>,  <32.112453, 41.759941, 53.830776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894989, 41.602436, 54.127258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455263, -0.603553, -0.654568,
		0.705102, -0.693305, 0.148861,
		-0.543661, -0.393766, 0.741203,
		31.731892, 41.484306, 54.349621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236828, 41.046589, 53.754398>,  <32.112453, 41.759941, 53.830776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236828, 41.046589, 53.754398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887724, 41.086021, 53.945633>,  <31.678261, 41.109680, 54.060375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887724, 41.086021, 53.945633>,  <32.236828, 41.046589, 53.754398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887724, 41.086021, 53.945633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435066, -0.601244, -0.670241,
		0.221376, -0.792961, 0.567631,
		-0.872760, 0.098582, 0.478092,
		31.625896, 41.115597, 54.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013206, 40.358200, 54.020107>,  <32.236828, 41.046589, 53.754398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013206, 40.358200, 54.020107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711685, 40.611397, 53.949570>,  <31.530771, 40.763317, 53.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711685, 40.611397, 53.949570>,  <32.013206, 40.358200, 54.020107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711685, 40.611397, 53.949570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386062, -0.643800, -0.660665,
		-0.531727, -0.429933, 0.729674,
		-0.753805, 0.632993, -0.176345,
		31.485544, 40.801296, 53.896667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376774, 40.001106, 54.070301>,  <32.013206, 40.358200, 54.020107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376774, 40.001106, 54.070301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309589, 40.311222, 53.826759>,  <31.269279, 40.497292, 53.680634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309589, 40.311222, 53.826759>,  <31.376774, 40.001106, 54.070301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309589, 40.311222, 53.826759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315407, -0.627431, -0.711933,
		-0.933974, 0.072461, 0.349917,
		-0.167961, 0.775293, -0.608859,
		31.259201, 40.543812, 53.644100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701454, 39.897766, 53.673214>,  <31.376774, 40.001106, 54.070301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701454, 39.897766, 53.673214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896778, 40.184120, 53.473587>,  <31.013971, 40.355930, 53.353809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896778, 40.184120, 53.473587>,  <30.701454, 39.897766, 53.673214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896778, 40.184120, 53.473587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181086, -0.476316, -0.860425,
		-0.853676, 0.510527, -0.102953,
		0.488308, 0.715881, -0.499068,
		31.043270, 40.398884, 53.323868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334879, 39.897163, 53.034504>,  <30.701454, 39.897766, 53.673214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334879, 39.897163, 53.034504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678463, 40.090336, 52.966431>,  <30.884613, 40.206238, 52.925587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678463, 40.090336, 52.966431>,  <30.334879, 39.897163, 53.034504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678463, 40.090336, 52.966431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093044, -0.474042, -0.875572,
		-0.503516, 0.736248, -0.452118,
		0.858961, 0.482931, -0.170184,
		30.936152, 40.235214, 52.915375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193047, 40.169182, 52.371891>,  <30.334879, 39.897163, 53.034504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193047, 40.169182, 52.371891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588203, 40.161724, 52.433498>,  <30.825298, 40.157249, 52.470463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588203, 40.161724, 52.433498>,  <30.193047, 40.169182, 52.371891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588203, 40.161724, 52.433498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120532, -0.532818, -0.837602,
		0.097684, 0.846024, -0.524119,
		0.987892, -0.018647, 0.154021,
		30.884571, 40.156132, 52.479706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507824, 40.495926, 51.783283>,  <30.193047, 40.169182, 52.371891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507824, 40.495926, 51.783283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800337, 40.282570, 51.953331>,  <30.975843, 40.154556, 52.055359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800337, 40.282570, 51.953331>,  <30.507824, 40.495926, 51.783283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800337, 40.282570, 51.953331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204018, -0.423689, -0.882533,
		0.650850, 0.732111, -0.201015,
		0.731280, -0.533386, 0.425122,
		31.019720, 40.122555, 52.080868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078325, 40.537079, 51.252884>,  <30.507824, 40.495926, 51.783283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078325, 40.537079, 51.252884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162188, 40.217804, 51.478783>,  <31.212505, 40.026237, 51.614323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162188, 40.217804, 51.478783>,  <31.078325, 40.537079, 51.252884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162188, 40.217804, 51.478783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183154, -0.535304, -0.824564,
		0.960468, 0.276311, 0.033961,
		0.209657, -0.798187, 0.564749,
		31.225084, 39.978348, 51.648209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609970, 40.229778, 50.748989>,  <31.078325, 40.537079, 51.252884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609970, 40.229778, 50.748989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516186, 39.954033, 51.023159>,  <31.459915, 39.788586, 51.187660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516186, 39.954033, 51.023159>,  <31.609970, 40.229778, 50.748989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516186, 39.954033, 51.023159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206902, -0.724314, -0.657694,
		0.949852, -0.012387, 0.312454,
		-0.234461, -0.689359, 0.685428,
		31.445847, 39.747227, 51.228786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045418, 39.583851, 50.670090>,  <31.609970, 40.229778, 50.748989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045418, 39.583851, 50.670090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731901, 39.440273, 50.872807>,  <31.543793, 39.354126, 50.994434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731901, 39.440273, 50.872807>,  <32.045418, 39.583851, 50.670090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731901, 39.440273, 50.872807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035293, -0.840475, -0.540699,
		0.620024, -0.405908, 0.671423,
		-0.783789, -0.358943, 0.506789,
		31.496765, 39.332592, 51.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198605, 39.035820, 51.007107>,  <32.045418, 39.583851, 50.670090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198605, 39.035820, 51.007107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807018, 39.000076, 50.933746>,  <31.572065, 38.978630, 50.889732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807018, 39.000076, 50.933746>,  <32.198605, 39.035820, 51.007107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807018, 39.000076, 50.933746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186112, -0.759377, -0.623465,
		-0.083558, -0.644486, 0.760036,
		-0.978969, -0.089357, -0.183399,
		31.513327, 38.973270, 50.878727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090717, 38.321693, 50.984722>,  <32.198605, 39.035820, 51.007107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090717, 38.321693, 50.984722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771839, 38.481823, 50.803963>,  <31.580511, 38.577900, 50.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771839, 38.481823, 50.803963>,  <32.090717, 38.321693, 50.984722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771839, 38.481823, 50.803963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023284, -0.727587, -0.685620,
		-0.603268, -0.557098, 0.570710,
		-0.797199, 0.400324, -0.451901,
		31.532681, 38.601921, 50.668392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738041, 37.735237, 50.941814>,  <32.090717, 38.321693, 50.984722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738041, 37.735237, 50.941814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565474, 37.998985, 50.695530>,  <31.461933, 38.157234, 50.547760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565474, 37.998985, 50.695530>,  <31.738041, 37.735237, 50.941814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565474, 37.998985, 50.695530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060068, -0.701975, -0.709664,
		-0.900150, -0.269177, 0.342452,
		-0.431418, 0.659375, -0.615714,
		31.436049, 38.196796, 50.510815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064346, 37.474911, 50.784622>,  <31.738041, 37.735237, 50.941814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064346, 37.474911, 50.784622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183552, 37.715977, 50.488518>,  <31.255075, 37.860615, 50.310856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183552, 37.715977, 50.488518>,  <31.064346, 37.474911, 50.784622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183552, 37.715977, 50.488518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027840, -0.769680, -0.637822,
		-0.954156, 0.210687, -0.212596,
		0.298012, 0.602663, -0.740261,
		31.272955, 37.896774, 50.266441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625862, 37.279453, 50.114750>,  <31.064346, 37.474911, 50.784622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625862, 37.279453, 50.114750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912971, 37.502007, 49.947304>,  <31.085238, 37.635540, 49.846836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912971, 37.502007, 49.947304>,  <30.625862, 37.279453, 50.114750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912971, 37.502007, 49.947304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080612, -0.530767, -0.843675,
		-0.691592, 0.639315, -0.336120,
		0.717776, 0.556384, -0.418611,
		31.128304, 37.668922, 49.821720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511316, 37.300388, 49.442432>,  <30.625862, 37.279453, 50.114750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511316, 37.300388, 49.442432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892048, 37.423042, 49.442303>,  <31.120487, 37.496635, 49.442226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892048, 37.423042, 49.442303>,  <30.511316, 37.300388, 49.442432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892048, 37.423042, 49.442303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084278, -0.262618, -0.961212,
		-0.294827, 0.914881, -0.275810,
		0.951827, 0.306636, -0.000323,
		31.177595, 37.515034, 49.442207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632868, 37.610199, 48.704723>,  <30.511316, 37.300388, 49.442432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632868, 37.610199, 48.704723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995489, 37.532822, 48.854782>,  <31.213062, 37.486393, 48.944817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995489, 37.532822, 48.854782>,  <30.632868, 37.610199, 48.704723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995489, 37.532822, 48.854782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329543, -0.230971, -0.915453,
		0.263740, 0.953536, -0.145639,
		0.906555, -0.193448, 0.375147,
		31.267456, 37.474789, 48.967327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098022, 38.049728, 48.438690>,  <30.632868, 37.610199, 48.704723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098022, 38.049728, 48.438690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312181, 37.726482, 48.536907>,  <31.440678, 37.532536, 48.595837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312181, 37.726482, 48.536907>,  <31.098022, 38.049728, 48.438690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312181, 37.726482, 48.536907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259640, -0.119166, -0.958325,
		0.803701, 0.576840, 0.146019,
		0.535399, -0.808119, 0.245544,
		31.472801, 37.484047, 48.610569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587540, 38.029507, 47.939617>,  <31.098022, 38.049728, 48.438690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587540, 38.029507, 47.939617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600784, 37.658321, 48.088100>,  <31.608730, 37.435612, 48.177189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600784, 37.658321, 48.088100>,  <31.587540, 38.029507, 47.939617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600784, 37.658321, 48.088100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398282, -0.328393, -0.856464,
		0.916665, 0.176202, 0.358717,
		0.033110, -0.927961, 0.371204,
		31.610718, 37.379932, 48.199463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286751, 37.743912, 47.866131>,  <31.587540, 38.029507, 47.939617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286751, 37.743912, 47.866131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032990, 37.436760, 47.901672>,  <31.880732, 37.252468, 47.922997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032990, 37.436760, 47.901672>,  <32.286751, 37.743912, 47.866131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032990, 37.436760, 47.901672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422780, -0.440914, -0.791740,
		0.647136, -0.464718, 0.604361,
		-0.634407, -0.767875, 0.088858,
		31.842667, 37.206398, 47.928329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744198, 37.316597, 47.696945>,  <32.286751, 37.743912, 47.866131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744198, 37.316597, 47.696945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395947, 37.121872, 47.668610>,  <32.186996, 37.005035, 47.651608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395947, 37.121872, 47.668610>,  <32.744198, 37.316597, 47.696945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395947, 37.121872, 47.668610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330180, -0.471499, -0.817722,
		0.364679, -0.735322, 0.571237,
		-0.870626, -0.486817, -0.070843,
		32.134758, 36.975826, 47.647358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890198, 36.579243, 47.571098>,  <32.744198, 37.316597, 47.696945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890198, 36.579243, 47.571098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517582, 36.623222, 47.432453>,  <32.294010, 36.649609, 47.349266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517582, 36.623222, 47.432453>,  <32.890198, 36.579243, 47.571098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517582, 36.623222, 47.432453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234724, -0.546198, -0.804097,
		-0.277725, -0.830409, 0.483001,
		-0.931544, 0.109946, -0.346610,
		32.238117, 36.656208, 47.328468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642689, 35.890999, 47.364487>,  <32.890198, 36.579243, 47.571098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642689, 35.890999, 47.364487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416855, 36.155861, 47.167389>,  <32.281353, 36.314777, 47.049129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416855, 36.155861, 47.167389>,  <32.642689, 35.890999, 47.364487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416855, 36.155861, 47.167389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000430, -0.597227, -0.802072,
		-0.825373, -0.452628, 0.337472,
		-0.564588, 0.662153, -0.492740,
		32.247478, 36.354507, 47.019566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242901, 35.409237, 46.975998>,  <32.642689, 35.890999, 47.364487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242901, 35.409237, 46.975998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213303, 35.769489, 46.804699>,  <32.195545, 35.985641, 46.701920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213303, 35.769489, 46.804699>,  <32.242901, 35.409237, 46.975998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213303, 35.769489, 46.804699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161253, -0.434578, -0.886081,
		-0.984136, 0.003494, 0.177384,
		-0.073991, 0.900627, -0.428247,
		32.191105, 36.039677, 46.676224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734282, 35.316536, 46.452827>,  <32.242901, 35.409237, 46.975998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734282, 35.316536, 46.452827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931520, 35.645714, 46.339962>,  <32.049866, 35.843220, 46.272243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931520, 35.645714, 46.339962>,  <31.734282, 35.316536, 46.452827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931520, 35.645714, 46.339962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040503, -0.302273, -0.952361,
		-0.869030, 0.481036, -0.115718,
		0.493098, 0.822943, -0.282168,
		32.079449, 35.892597, 46.255310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298264, 35.569271, 45.906994>,  <31.734282, 35.316536, 46.452827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298264, 35.569271, 45.906994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656954, 35.741665, 45.866726>,  <31.872168, 35.845100, 45.842564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656954, 35.741665, 45.866726>,  <31.298264, 35.569271, 45.906994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656954, 35.741665, 45.866726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042679, -0.142200, -0.988917,
		-0.440525, 0.891084, -0.109120,
		0.896725, 0.430986, -0.100673,
		31.925972, 35.870960, 45.836525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197134, 36.059658, 45.354462>,  <31.298264, 35.569271, 45.906994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197134, 36.059658, 45.354462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587248, 35.971962, 45.365429>,  <31.821316, 35.919346, 45.372009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587248, 35.971962, 45.365429>,  <31.197134, 36.059658, 45.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587248, 35.971962, 45.365429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002863, -0.111529, -0.993757,
		0.220930, 0.969275, -0.108145,
		0.975285, -0.219241, 0.027415,
		31.879833, 35.906189, 45.373653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488279, 36.412498, 44.781204>,  <31.197134, 36.059658, 45.354462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488279, 36.412498, 44.781204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756714, 36.133858, 44.882702>,  <31.917774, 35.966671, 44.943600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756714, 36.133858, 44.882702>,  <31.488279, 36.412498, 44.781204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756714, 36.133858, 44.882702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152936, -0.204821, -0.966777,
		0.725432, 0.687599, -0.030917,
		0.671087, -0.696603, 0.253743,
		31.958040, 35.924877, 44.958824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912050, 36.518066, 44.283401>,  <31.488279, 36.412498, 44.781204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912050, 36.518066, 44.283401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987553, 36.140369, 44.391308>,  <32.032852, 35.913750, 44.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987553, 36.140369, 44.391308>,  <31.912050, 36.518066, 44.283401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987553, 36.140369, 44.391308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109189, -0.293177, -0.949803,
		0.975935, 0.149824, -0.158440,
		0.188754, -0.944246, 0.269762,
		32.044178, 35.857094, 44.472237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364346, 36.246780, 43.805706>,  <31.912050, 36.518066, 44.283401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364346, 36.246780, 43.805706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254715, 35.899075, 43.970272>,  <32.188934, 35.690453, 44.069012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254715, 35.899075, 43.970272>,  <32.364346, 36.246780, 43.805706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254715, 35.899075, 43.970272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202096, -0.470306, -0.859051,
		0.940233, -0.152303, 0.304576,
		-0.274080, -0.869261, 0.411418,
		32.172489, 35.638294, 44.093697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860394, 35.817719, 43.642696>,  <32.364346, 36.246780, 43.805706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860394, 35.817719, 43.642696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535927, 35.602039, 43.733269>,  <32.341248, 35.472630, 43.787613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535927, 35.602039, 43.733269>,  <32.860394, 35.817719, 43.642696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535927, 35.602039, 43.733269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108956, -0.519740, -0.847348,
		0.574574, -0.662671, 0.480345,
		-0.811168, -0.539201, 0.226427,
		32.292576, 35.440281, 43.801197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052616, 35.159576, 43.428474>,  <32.860394, 35.817719, 43.642696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052616, 35.159576, 43.428474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652771, 35.168957, 43.422577>,  <32.412865, 35.174587, 43.419041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652771, 35.168957, 43.422577>,  <33.052616, 35.159576, 43.428474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652771, 35.168957, 43.422577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001665, -0.582050, -0.813151,
		-0.027652, -0.812815, 0.581866,
		-0.999616, 0.023454, -0.014741,
		32.352886, 35.175995, 43.418156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835449, 34.463112, 43.215157>,  <33.052616, 35.159576, 43.428474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835449, 34.463112, 43.215157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507896, 34.686584, 43.162525>,  <32.311367, 34.820667, 43.130947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507896, 34.686584, 43.162525>,  <32.835449, 34.463112, 43.215157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507896, 34.686584, 43.162525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220429, -0.517774, -0.826633,
		-0.529963, -0.647901, 0.547142,
		-0.818872, 0.558690, -0.131585,
		32.262234, 34.854191, 43.123051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360935, 34.010311, 42.931000>,  <32.835449, 34.463112, 43.215157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360935, 34.010311, 42.931000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190636, 34.364273, 42.855446>,  <32.088455, 34.576653, 42.810116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190636, 34.364273, 42.855446>,  <32.360935, 34.010311, 42.931000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190636, 34.364273, 42.855446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325370, -0.344504, -0.880597,
		-0.844318, -0.313457, 0.434594,
		-0.425749, 0.884908, -0.188882,
		32.062912, 34.629745, 42.798782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641581, 33.891750, 42.591541>,  <32.360935, 34.010311, 42.931000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641581, 33.891750, 42.591541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778976, 34.251869, 42.484600>,  <31.861414, 34.467941, 42.420437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778976, 34.251869, 42.484600>,  <31.641581, 33.891750, 42.591541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778976, 34.251869, 42.484600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140790, -0.232093, -0.962451,
		-0.928543, 0.368233, 0.047032,
		0.343491, 0.900299, -0.267352,
		31.882023, 34.521957, 42.404396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306786, 33.940189, 42.016655>,  <31.641581, 33.891750, 42.591541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306786, 33.940189, 42.016655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565054, 34.244240, 41.987492>,  <31.720015, 34.426670, 41.969994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565054, 34.244240, 41.987492>,  <31.306786, 33.940189, 42.016655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565054, 34.244240, 41.987492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122538, 0.008896, -0.992424,
		-0.753721, 0.649712, 0.098888,
		0.645670, 0.760128, -0.072910,
		31.758755, 34.472279, 41.965618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983160, 34.509720, 41.557125>,  <31.306786, 33.940189, 42.016655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983160, 34.509720, 41.557125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382389, 34.533829, 41.551224>,  <31.621927, 34.548294, 41.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382389, 34.533829, 41.551224>,  <30.983160, 34.509720, 41.557125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382389, 34.533829, 41.551224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018072, 0.054901, -0.998328,
		-0.059358, 0.996671, 0.055885,
		0.998073, 0.060269, -0.014753,
		31.681810, 34.551910, 41.546799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123184, 34.944286, 41.011749>,  <30.983160, 34.509720, 41.557125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123184, 34.944286, 41.011749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486948, 34.782707, 41.051353>,  <31.705206, 34.685760, 41.075115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486948, 34.782707, 41.051353>,  <31.123184, 34.944286, 41.011749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486948, 34.782707, 41.051353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114996, 0.015449, -0.993246,
		0.399691, 0.914651, 0.060502,
		0.909408, -0.403949, 0.099007,
		31.759769, 34.661522, 41.081055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579023, 35.381409, 40.592751>,  <31.123184, 34.944286, 41.011749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579023, 35.381409, 40.592751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746521, 35.021374, 40.640911>,  <31.847019, 34.805351, 40.669807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746521, 35.021374, 40.640911>,  <31.579023, 35.381409, 40.592751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746521, 35.021374, 40.640911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025931, -0.120678, -0.992353,
		0.907733, 0.418666, -0.027193,
		0.418746, -0.900087, 0.120399,
		31.872145, 34.751347, 40.677032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119881, 35.311680, 40.077515>,  <31.579023, 35.381409, 40.592751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119881, 35.311680, 40.077515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039406, 34.932938, 40.177906>,  <31.991119, 34.705692, 40.238140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039406, 34.932938, 40.177906>,  <32.119881, 35.311680, 40.077515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039406, 34.932938, 40.177906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016044, -0.252999, -0.967334,
		0.979421, -0.198645, 0.035710,
		-0.201191, -0.946854, 0.250979,
		31.979048, 34.648880, 40.253201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422295, 34.852791, 39.621510>,  <32.119881, 35.311680, 40.077515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422295, 34.852791, 39.621510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171082, 34.591743, 39.791061>,  <32.020355, 34.435116, 39.892792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171082, 34.591743, 39.791061>,  <32.422295, 34.852791, 39.621510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171082, 34.591743, 39.791061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224653, -0.369455, -0.901684,
		0.745057, -0.661509, 0.085417,
		-0.628030, -0.652617, 0.423875,
		31.982672, 34.395958, 39.918224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546089, 34.331619, 39.222351>,  <32.422295, 34.852791, 39.621510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546089, 34.331619, 39.222351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214111, 34.204704, 39.405884>,  <32.014923, 34.128555, 39.516003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214111, 34.204704, 39.405884>,  <32.546089, 34.331619, 39.222351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214111, 34.204704, 39.405884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292235, -0.453321, -0.842080,
		0.475177, -0.832965, 0.283508,
		-0.829943, -0.317286, 0.458829,
		31.965128, 34.109520, 39.543533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546028, 33.595406, 39.204803>,  <32.546089, 34.331619, 39.222351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546028, 33.595406, 39.204803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173767, 33.727661, 39.267506>,  <31.950411, 33.807014, 39.305126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173767, 33.727661, 39.267506>,  <32.546028, 33.595406, 39.204803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173767, 33.727661, 39.267506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234503, -0.210072, -0.949146,
		-0.280893, -0.920081, 0.273039,
		-0.930649, 0.330637, 0.156754,
		31.894573, 33.826851, 39.314533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870432, 33.189335, 39.168015>,  <32.546028, 33.595406, 39.204803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870432, 33.189335, 39.168015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793676, 33.560814, 39.041088>,  <31.747623, 33.783703, 38.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793676, 33.560814, 39.041088>,  <31.870432, 33.189335, 39.168015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793676, 33.560814, 39.041088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270226, -0.360827, -0.892626,
		-0.943481, -0.085536, 0.320198,
		-0.191888, 0.928702, -0.317319,
		31.736111, 33.839424, 38.945892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342133, 32.819786, 39.786198>,  <31.870432, 33.189335, 39.168015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342133, 32.819786, 39.786198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602310, 32.516369, 39.770538>,  <32.758419, 32.334320, 39.761143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602310, 32.516369, 39.770538>,  <32.342133, 32.819786, 39.786198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602310, 32.516369, 39.770538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124045, 0.055242, 0.990738,
		-0.749355, -0.649277, 0.130025,
		0.650446, -0.758543, -0.039144,
		32.797443, 32.288807, 39.758797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155521, 32.351933, 40.368305>,  <32.342133, 32.819786, 39.786198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155521, 32.351933, 40.368305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525856, 32.251358, 40.255451>,  <32.748058, 32.191013, 40.187740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525856, 32.251358, 40.255451>,  <32.155521, 32.351933, 40.368305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525856, 32.251358, 40.255451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215097, -0.263229, 0.940449,
		-0.310731, -0.931391, -0.189624,
		0.925840, -0.251439, -0.282133,
		32.803608, 32.175926, 40.170811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219307, 31.671448, 40.658638>,  <32.155521, 32.351933, 40.368305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219307, 31.671448, 40.658638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576145, 31.847410, 40.617352>,  <32.790249, 31.952988, 40.592579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576145, 31.847410, 40.617352>,  <32.219307, 31.671448, 40.658638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576145, 31.847410, 40.617352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226515, -0.237741, 0.944548,
		0.390973, -0.866004, -0.311732,
		0.892094, 0.439905, -0.103213,
		32.843773, 31.979382, 40.586388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593460, 31.288446, 41.111912>,  <32.219307, 31.671448, 40.658638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593460, 31.288446, 41.111912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822395, 31.610603, 41.050243>,  <32.959759, 31.803898, 41.013241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822395, 31.610603, 41.050243>,  <32.593460, 31.288446, 41.111912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822395, 31.610603, 41.050243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313687, -0.041324, 0.948627,
		0.757645, -0.591301, -0.276292,
		0.572341, 0.805392, -0.154174,
		32.994099, 31.852221, 41.003990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219048, 31.158672, 41.353413>,  <32.593460, 31.288446, 41.111912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219048, 31.158672, 41.353413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194569, 31.557709, 41.340343>,  <33.179882, 31.797131, 41.332500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194569, 31.557709, 41.340343>,  <33.219048, 31.158672, 41.353413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194569, 31.557709, 41.340343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356168, 0.052404, 0.932951,
		0.932416, 0.045458, -0.358517,
		-0.061198, 0.997591, -0.032672,
		33.176208, 31.856985, 41.330544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821545, 31.413364, 41.734310>,  <33.219048, 31.158672, 41.353413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821545, 31.413364, 41.734310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611946, 31.753445, 41.754681>,  <33.486187, 31.957493, 41.766903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611946, 31.753445, 41.754681>,  <33.821545, 31.413364, 41.734310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611946, 31.753445, 41.754681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339395, 0.153590, 0.928020,
		0.781180, 0.503559, -0.369033,
		-0.523993, 0.850199, 0.050924,
		33.454750, 32.008503, 41.769958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155109, 31.841625, 42.129803>,  <33.821545, 31.413364, 41.734310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155109, 31.841625, 42.129803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816200, 32.053234, 42.148800>,  <33.612854, 32.180199, 42.160198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816200, 32.053234, 42.148800>,  <34.155109, 31.841625, 42.129803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816200, 32.053234, 42.148800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270283, 0.352454, 0.895948,
		0.457241, 0.771951, -0.441613,
		-0.847277, 0.529025, 0.047489,
		33.562016, 32.211941, 42.163048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287121, 32.469193, 42.496796>,  <34.155109, 31.841625, 42.129803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287121, 32.469193, 42.496796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896255, 32.414997, 42.562263>,  <33.661736, 32.382481, 42.601543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896255, 32.414997, 42.562263>,  <34.287121, 32.469193, 42.496796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896255, 32.414997, 42.562263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080876, 0.475146, 0.876182,
		-0.196486, 0.869412, -0.453338,
		-0.977166, -0.135493, 0.163674,
		33.603107, 32.374348, 42.611366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136337, 33.149364, 42.787495>,  <34.287121, 32.469193, 42.496796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136337, 33.149364, 42.787495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830860, 32.913258, 42.892078>,  <33.647575, 32.771595, 42.954826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830860, 32.913258, 42.892078>,  <34.136337, 33.149364, 42.787495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830860, 32.913258, 42.892078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004662, 0.410024, 0.912063,
		-0.645563, 0.695317, -0.315884,
		-0.763692, -0.590267, 0.261455,
		33.601753, 32.736179, 42.970516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612663, 33.512665, 43.097790>,  <34.136337, 33.149364, 42.787495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612663, 33.512665, 43.097790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578850, 33.147766, 43.258121>,  <33.558563, 32.928829, 43.354321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578850, 33.147766, 43.258121>,  <33.612663, 33.512665, 43.097790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578850, 33.147766, 43.258121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063994, 0.406410, 0.911447,
		-0.994364, 0.051396, -0.092733,
		-0.084533, -0.912244, 0.400831,
		33.553490, 32.874092, 43.378372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036102, 33.525085, 43.562397>,  <33.612663, 33.512665, 43.097790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036102, 33.525085, 43.562397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262249, 33.215767, 43.677197>,  <33.397938, 33.030174, 43.746078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262249, 33.215767, 43.677197>,  <33.036102, 33.525085, 43.562397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262249, 33.215767, 43.677197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033748, 0.369346, 0.928679,
		-0.824146, -0.515362, 0.234914,
		0.565370, -0.773295, 0.287003,
		33.431862, 32.983780, 43.763298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621151, 33.307804, 44.237835>,  <33.036102, 33.525085, 43.562397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621151, 33.307804, 44.237835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997849, 33.173378, 44.232365>,  <33.223866, 33.092724, 44.229084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997849, 33.173378, 44.232365>,  <32.621151, 33.307804, 44.237835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997849, 33.173378, 44.232365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059338, 0.125989, 0.990255,
		-0.331066, -0.933375, 0.138590,
		0.941740, -0.336064, -0.013674,
		33.280369, 33.072559, 44.228264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656376, 32.719578, 44.742695>,  <32.621151, 33.307804, 44.237835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656376, 32.719578, 44.742695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011181, 32.901978, 44.713654>,  <33.224064, 33.011417, 44.696228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011181, 32.901978, 44.713654>,  <32.656376, 32.719578, 44.742695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011181, 32.901978, 44.713654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086085, -0.008842, 0.996249,
		0.453649, -0.889935, -0.047098,
		0.887013, 0.456001, -0.072599,
		33.277287, 33.038776, 44.691875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093803, 32.353054, 45.284996>,  <32.656376, 32.719578, 44.742695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093803, 32.353054, 45.284996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296646, 32.693768, 45.232376>,  <33.418350, 32.898197, 45.200802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296646, 32.693768, 45.232376>,  <33.093803, 32.353054, 45.284996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296646, 32.693768, 45.232376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042922, 0.127487, 0.990911,
		0.860815, -0.508142, 0.028089,
		0.507105, 0.851786, -0.131554,
		33.448776, 32.949303, 45.192909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572021, 32.347645, 45.905388>,  <33.093803, 32.353054, 45.284996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572021, 32.347645, 45.905388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566776, 32.720821, 45.761471>,  <33.563629, 32.944725, 45.675121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566776, 32.720821, 45.761471>,  <33.572021, 32.347645, 45.905388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566776, 32.720821, 45.761471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219895, 0.353707, 0.909141,
		0.975435, -0.067194, -0.209787,
		-0.013115, 0.932940, -0.359794,
		33.562843, 33.000702, 45.653534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166061, 32.708809, 46.251591>,  <33.572021, 32.347645, 45.905388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166061, 32.708809, 46.251591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894970, 32.976128, 46.128910>,  <33.732315, 33.136517, 46.055302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894970, 32.976128, 46.128910>,  <34.166061, 32.708809, 46.251591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894970, 32.976128, 46.128910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119165, 0.511411, 0.851034,
		0.725588, 0.540226, -0.426237,
		-0.677733, 0.668292, -0.306697,
		33.691650, 33.176617, 46.036900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512356, 33.370476, 46.430824>,  <34.166061, 32.708809, 46.251591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512356, 33.370476, 46.430824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120621, 33.433804, 46.380497>,  <33.885578, 33.471798, 46.350300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120621, 33.433804, 46.380497>,  <34.512356, 33.370476, 46.430824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120621, 33.433804, 46.380497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008574, 0.589104, 0.808012,
		0.202040, 0.792397, -0.575576,
		-0.979340, 0.158316, -0.125817,
		33.826820, 33.481297, 46.342751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503620, 33.963135, 46.764210>,  <34.512356, 33.370476, 46.430824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503620, 33.963135, 46.764210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112656, 33.886002, 46.729603>,  <33.878078, 33.839722, 46.708839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112656, 33.886002, 46.729603>,  <34.503620, 33.963135, 46.764210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112656, 33.886002, 46.729603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174794, 0.507367, 0.843816,
		-0.118818, 0.839877, -0.529612,
		-0.977409, -0.192834, -0.086521,
		33.819431, 33.828152, 46.703648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120529, 34.636616, 46.865005>,  <34.503620, 33.963135, 46.764210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120529, 34.636616, 46.865005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857571, 34.347927, 46.951672>,  <33.699795, 34.174713, 47.003670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857571, 34.347927, 46.951672>,  <34.120529, 34.636616, 46.865005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857571, 34.347927, 46.951672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243031, 0.475228, 0.845632,
		-0.713276, 0.503263, -0.487816,
		-0.657399, -0.721723, 0.216661,
		33.660351, 34.131409, 47.016670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493713, 34.868931, 46.898216>,  <34.120529, 34.636616, 46.865005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493713, 34.868931, 46.898216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508896, 34.551620, 47.141289>,  <33.518005, 34.361233, 47.287132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508896, 34.551620, 47.141289>,  <33.493713, 34.868931, 46.898216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508896, 34.551620, 47.141289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246177, 0.581951, 0.775067,
		-0.968481, -0.179014, -0.173198,
		0.037955, -0.793276, 0.607678,
		33.520283, 34.313637, 47.323593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842892, 34.815788, 47.212307>,  <33.493713, 34.868931, 46.898216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842892, 34.815788, 47.212307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065052, 34.582653, 47.449566>,  <33.198349, 34.442772, 47.591923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065052, 34.582653, 47.449566>,  <32.842892, 34.815788, 47.212307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065052, 34.582653, 47.449566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344113, 0.488258, 0.801992,
		-0.757043, -0.649538, 0.070616,
		0.555403, -0.582842, 0.593146,
		33.231674, 34.407799, 47.627510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407360, 34.484070, 47.713642>,  <32.842892, 34.815788, 47.212307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407360, 34.484070, 47.713642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770897, 34.481846, 47.880482>,  <32.989017, 34.480511, 47.980587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770897, 34.481846, 47.880482>,  <32.407360, 34.484070, 47.713642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770897, 34.481846, 47.880482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373488, 0.434467, 0.819600,
		-0.185778, -0.900670, 0.392784,
		0.908842, -0.005564, 0.417104,
		33.043549, 34.480179, 48.005611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334965, 34.347202, 48.524693>,  <32.407360, 34.484070, 47.713642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334965, 34.347202, 48.524693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694668, 34.514854, 48.474644>,  <32.910492, 34.615448, 48.444614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694668, 34.514854, 48.474644>,  <32.334965, 34.347202, 48.524693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694668, 34.514854, 48.474644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117884, 0.507700, 0.853431,
		0.421225, -0.752708, 0.505964,
		0.899263, 0.419131, -0.125124,
		32.964447, 34.640594, 48.437107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756184, 34.048927, 49.037773>,  <32.334965, 34.347202, 48.524693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756184, 34.048927, 49.037773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894787, 34.405827, 48.921963>,  <32.977951, 34.619965, 48.852478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894787, 34.405827, 48.921963>,  <32.756184, 34.048927, 49.037773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894787, 34.405827, 48.921963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106529, 0.269218, 0.957169,
		0.931978, -0.362511, -0.001764,
		0.346510, 0.892248, -0.289523,
		32.998741, 34.673500, 48.835106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147457, 34.402882, 49.668095>,  <32.756184, 34.048927, 49.037773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147457, 34.402882, 49.668095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135220, 34.712097, 49.414646>,  <33.127876, 34.897629, 49.262577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135220, 34.712097, 49.414646>,  <33.147457, 34.402882, 49.668095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135220, 34.712097, 49.414646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072755, 0.630510, 0.772764,
		0.996880, 0.069743, 0.036951,
		-0.030597, 0.773042, -0.633617,
		33.126041, 34.944008, 49.224560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407310, 34.831001, 50.064667>,  <33.147457, 34.402882, 49.668095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407310, 34.831001, 50.064667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281857, 35.087807, 49.784821>,  <33.206585, 35.241890, 49.616913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281857, 35.087807, 49.784821>,  <33.407310, 34.831001, 50.064667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281857, 35.087807, 49.784821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148430, 0.760878, 0.631691,
		0.937872, 0.094274, -0.333929,
		-0.313632, 0.642010, -0.699613,
		33.187767, 35.280411, 49.574936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020760, 35.282185, 49.877754>,  <33.407310, 34.831001, 50.064667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020760, 35.282185, 49.877754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667202, 35.458855, 49.816238>,  <33.455067, 35.564857, 49.779327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667202, 35.458855, 49.816238>,  <34.020760, 35.282185, 49.877754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667202, 35.458855, 49.816238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316253, 0.806719, 0.499187,
		0.344545, 0.392592, -0.852737,
		-0.883896, 0.441673, -0.153792,
		33.402035, 35.591358, 49.770100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208885, 35.927818, 49.683659>,  <34.020760, 35.282185, 49.877754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208885, 35.927818, 49.683659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834557, 35.934681, 49.824478>,  <33.609959, 35.938797, 49.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834557, 35.934681, 49.824478>,  <34.208885, 35.927818, 49.683659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834557, 35.934681, 49.824478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205325, 0.838371, 0.504950,
		-0.286482, 0.544829, -0.788092,
		-0.935826, 0.017156, 0.352045,
		33.553810, 35.939827, 49.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971626, 36.662262, 49.641052>,  <34.208885, 35.927818, 49.683659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971626, 36.662262, 49.641052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737568, 36.485485, 49.913021>,  <33.597134, 36.379417, 50.076202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737568, 36.485485, 49.913021>,  <33.971626, 36.662262, 49.641052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737568, 36.485485, 49.913021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050967, 0.856832, 0.513071,
		-0.809327, 0.265567, -0.523893,
		-0.585143, -0.441943, 0.679922,
		33.562023, 36.352901, 50.116997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379707, 37.058395, 49.536930>,  <33.971626, 36.662262, 49.641052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379707, 37.058395, 49.536930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365322, 36.866749, 49.887737>,  <33.356689, 36.751762, 50.098221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365322, 36.866749, 49.887737>,  <33.379707, 37.058395, 49.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365322, 36.866749, 49.887737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103903, 0.874620, 0.473544,
		-0.993937, -0.074092, -0.081239,
		-0.035967, -0.479114, 0.877015,
		33.354530, 36.723015, 50.150841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853966, 37.390190, 49.916351>,  <33.379707, 37.058395, 49.536930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853966, 37.390190, 49.916351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066105, 37.190674, 50.190559>,  <33.193386, 37.070965, 50.355083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066105, 37.190674, 50.190559>,  <32.853966, 37.390190, 49.916351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066105, 37.190674, 50.190559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100842, 0.839980, 0.533165,
		-0.841763, -0.213632, 0.495779,
		0.530346, -0.498794, 0.685521,
		33.225208, 37.041035, 50.396217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568638, 37.583984, 50.545254>,  <32.853966, 37.390190, 49.916351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568638, 37.583984, 50.545254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938732, 37.451962, 50.620094>,  <33.160789, 37.372749, 50.664997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938732, 37.451962, 50.620094>,  <32.568638, 37.583984, 50.545254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938732, 37.451962, 50.620094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108765, 0.703199, 0.702625,
		-0.363475, -0.629742, 0.686521,
		0.925233, -0.330057, 0.187101,
		33.216301, 37.352943, 50.676224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602402, 37.571918, 51.223804>,  <32.568638, 37.583984, 50.545254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602402, 37.571918, 51.223804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978798, 37.603039, 51.092052>,  <33.204636, 37.621712, 51.013000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978798, 37.603039, 51.092052>,  <32.602402, 37.571918, 51.223804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978798, 37.603039, 51.092052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263213, 0.443573, 0.856716,
		0.212755, -0.892855, 0.396919,
		0.940986, 0.077796, -0.329384,
		33.261093, 37.626377, 50.993237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010109, 37.454769, 51.835155>,  <32.602402, 37.571918, 51.223804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010109, 37.454769, 51.835155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258087, 37.629341, 51.574326>,  <33.406872, 37.734085, 51.417828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258087, 37.629341, 51.574326>,  <33.010109, 37.454769, 51.835155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258087, 37.629341, 51.574326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286960, 0.647367, 0.706094,
		0.730292, -0.624858, 0.276093,
		0.619942, 0.436427, -0.652076,
		33.444069, 37.760269, 51.378704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530056, 37.655590, 52.221310>,  <33.010109, 37.454769, 51.835155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530056, 37.655590, 52.221310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601936, 37.872761, 51.893177>,  <33.645065, 38.003063, 51.696297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601936, 37.872761, 51.893177>,  <33.530056, 37.655590, 52.221310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601936, 37.872761, 51.893177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345093, 0.746117, 0.569404,
		0.921204, -0.385415, -0.053278,
		0.179705, 0.542922, -0.820330,
		33.655849, 38.035637, 51.647079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245750, 37.834484, 52.216068>,  <33.530056, 37.655590, 52.221310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245750, 37.834484, 52.216068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040585, 38.106224, 52.006153>,  <33.917484, 38.269268, 51.880203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040585, 38.106224, 52.006153>,  <34.245750, 37.834484, 52.216068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040585, 38.106224, 52.006153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357528, 0.724841, 0.588879,
		0.780444, 0.114418, -0.614668,
		-0.512915, 0.679348, -0.524790,
		33.886711, 38.310028, 51.848717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777142, 38.397243, 52.198719>,  <34.245750, 37.834484, 52.216068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777142, 38.397243, 52.198719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424320, 38.564754, 52.112362>,  <34.212627, 38.665260, 52.060547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424320, 38.564754, 52.112362>,  <34.777142, 38.397243, 52.198719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424320, 38.564754, 52.112362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292072, 0.845564, 0.446896,
		0.369699, 0.331130, -0.868145,
		-0.882052, 0.418778, -0.215891,
		34.159706, 38.690388, 52.047596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936348, 39.047176, 51.974739>,  <34.777142, 38.397243, 52.198719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936348, 39.047176, 51.974739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560284, 39.110321, 52.095520>,  <34.334644, 39.148209, 52.167988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560284, 39.110321, 52.095520>,  <34.936348, 39.047176, 51.974739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560284, 39.110321, 52.095520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266772, 0.892339, 0.364093,
		-0.211966, 0.422858, -0.881057,
		-0.940161, 0.157866, 0.301952,
		34.278236, 39.157681, 52.186104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681934, 39.599018, 52.407463>,  <34.936348, 39.047176, 51.974739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681934, 39.599018, 52.407463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929737, 39.901062, 52.321655>,  <35.078419, 40.082291, 52.270172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929737, 39.901062, 52.321655>,  <34.681934, 39.599018, 52.407463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929737, 39.901062, 52.321655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334308, -0.501042, -0.798245,
		-0.710248, 0.422801, -0.562838,
		0.619505, 0.755113, -0.214519,
		35.115589, 40.127594, 52.257301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499016, 39.889858, 51.724457>,  <34.681934, 39.599018, 52.407463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499016, 39.889858, 51.724457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884331, 39.958679, 51.806896>,  <35.115520, 39.999973, 51.856358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884331, 39.958679, 51.806896>,  <34.499016, 39.889858, 51.724457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884331, 39.958679, 51.806896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260336, -0.411063, -0.873643,
		-0.065596, 0.895223, -0.440764,
		0.963287, 0.172055, 0.206095,
		35.173317, 40.010296, 51.868725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748074, 40.145260, 51.054745>,  <34.499016, 39.889858, 51.724457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748074, 40.145260, 51.054745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076252, 40.042759, 51.259174>,  <35.273159, 39.981258, 51.381832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076252, 40.042759, 51.259174>,  <34.748074, 40.145260, 51.054745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076252, 40.042759, 51.259174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400890, -0.379471, -0.833840,
		0.407614, 0.889008, -0.208606,
		0.820450, -0.256257, 0.511071,
		35.322388, 39.965881, 51.412495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352028, 40.369823, 50.714748>,  <34.748074, 40.145260, 51.054745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352028, 40.369823, 50.714748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498280, 40.082882, 50.951973>,  <35.586029, 39.910717, 51.094307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498280, 40.082882, 50.951973>,  <35.352028, 40.369823, 50.714748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498280, 40.082882, 50.951973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425310, -0.438000, -0.792002,
		0.827905, 0.541815, 0.144950,
		0.365631, -0.717351, 0.593062,
		35.607967, 39.867676, 51.129890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012421, 40.216503, 50.386929>,  <35.352028, 40.369823, 50.714748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012421, 40.216503, 50.386929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914612, 39.904480, 50.617310>,  <35.855927, 39.717266, 50.755539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914612, 39.904480, 50.617310>,  <36.012421, 40.216503, 50.386929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914612, 39.904480, 50.617310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224707, -0.623399, -0.748920,
		0.943247, -0.053707, 0.327719,
		-0.244522, -0.780057, 0.575951,
		35.841255, 39.670464, 50.790096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556213, 39.746429, 50.333801>,  <36.012421, 40.216503, 50.386929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556213, 39.746429, 50.333801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244629, 39.526638, 50.454659>,  <36.057678, 39.394764, 50.527172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244629, 39.526638, 50.454659>,  <36.556213, 39.746429, 50.333801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244629, 39.526638, 50.454659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283526, -0.738387, -0.611880,
		0.559312, -0.390968, 0.730968,
		-0.778963, -0.549481, 0.302139,
		36.010941, 39.361794, 50.545300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891769, 39.089733, 50.458206>,  <36.556213, 39.746429, 50.333801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891769, 39.089733, 50.458206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498547, 39.028229, 50.418304>,  <36.262611, 38.991325, 50.394363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498547, 39.028229, 50.418304>,  <36.891769, 39.089733, 50.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498547, 39.028229, 50.418304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182256, -0.762657, -0.620594,
		0.019346, -0.628262, 0.777762,
		-0.983061, -0.153757, -0.099750,
		36.203629, 38.982101, 50.388378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784107, 38.398750, 50.553379>,  <36.891769, 39.089733, 50.458206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784107, 38.398750, 50.553379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467953, 38.518341, 50.339500>,  <36.278259, 38.590096, 50.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467953, 38.518341, 50.339500>,  <36.784107, 38.398750, 50.553379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467953, 38.518341, 50.339500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012348, -0.864867, -0.501849,
		-0.612487, -0.403256, 0.679885,
		-0.790384, 0.298981, -0.534699,
		36.230839, 38.608036, 50.179089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365215, 37.740681, 50.458858>,  <36.784107, 38.398750, 50.553379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365215, 37.740681, 50.458858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223007, 37.989101, 50.179459>,  <36.137680, 38.138153, 50.011818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223007, 37.989101, 50.179459>,  <36.365215, 37.740681, 50.458858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223007, 37.989101, 50.179459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068808, -0.762686, -0.643099,
		-0.932131, -0.180575, 0.313886,
		-0.355524, 0.621050, -0.698498,
		36.116348, 38.175415, 49.969910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813232, 37.420151, 50.111279>,  <36.365215, 37.740681, 50.458858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813232, 37.420151, 50.111279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920807, 37.703239, 49.849960>,  <35.985352, 37.873093, 49.693169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920807, 37.703239, 49.849960>,  <35.813232, 37.420151, 50.111279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920807, 37.703239, 49.849960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013430, -0.675464, -0.737271,
		-0.963063, 0.207056, -0.172154,
		0.268940, 0.707726, -0.653295,
		36.001488, 37.915558, 49.653973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476883, 37.298939, 49.521343>,  <35.813232, 37.420151, 50.111279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476883, 37.298939, 49.521343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756351, 37.534138, 49.358315>,  <35.924034, 37.675259, 49.260498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756351, 37.534138, 49.358315>,  <35.476883, 37.298939, 49.521343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756351, 37.534138, 49.358315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075467, -0.505930, -0.859267,
		-0.711449, 0.631106, -0.309106,
		0.698674, 0.587997, -0.407571,
		35.965954, 37.710537, 49.236042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239773, 37.474461, 48.860798>,  <35.476883, 37.298939, 49.521343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239773, 37.474461, 48.860798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635662, 37.522007, 48.828983>,  <35.873196, 37.550537, 48.809895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635662, 37.522007, 48.828983>,  <35.239773, 37.474461, 48.860798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635662, 37.522007, 48.828983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012186, -0.624179, -0.781187,
		-0.142506, 0.772186, -0.619210,
		0.989719, 0.118870, -0.079540,
		35.932579, 37.557667, 48.805122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437729, 37.655697, 48.094490>,  <35.239773, 37.474461, 48.860798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437729, 37.655697, 48.094490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716965, 37.453167, 48.296993>,  <35.884506, 37.331650, 48.418495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716965, 37.453167, 48.296993>,  <35.437729, 37.655697, 48.094490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716965, 37.453167, 48.296993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136885, -0.599639, -0.788477,
		0.702802, 0.619729, -0.349295,
		0.698092, -0.506329, 0.506259,
		35.926392, 37.301270, 48.448872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934387, 37.570740, 47.702305>,  <35.437729, 37.655697, 48.094490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934387, 37.570740, 47.702305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956982, 37.259968, 47.953121>,  <35.970539, 37.073505, 48.103611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956982, 37.259968, 47.953121>,  <35.934387, 37.570740, 47.702305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956982, 37.259968, 47.953121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074267, -0.623038, -0.778658,
		0.995637, 0.090556, 0.022505,
		0.056491, -0.776932, 0.627045,
		35.973930, 37.026890, 48.141235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313610, 37.113182, 47.267670>,  <35.934387, 37.570740, 47.702305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313610, 37.113182, 47.267670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151722, 36.900860, 47.565514>,  <36.054588, 36.773464, 47.744221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151722, 36.900860, 47.565514>,  <36.313610, 37.113182, 47.267670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151722, 36.900860, 47.565514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246647, -0.847467, -0.470069,
		0.880550, -0.006588, 0.473907,
		-0.404717, -0.530807, 0.744612,
		36.030308, 36.741619, 47.788898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797901, 36.598034, 47.419373>,  <36.313610, 37.113182, 47.267670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797901, 36.598034, 47.419373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459774, 36.436710, 47.559528>,  <36.256897, 36.339916, 47.643623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459774, 36.436710, 47.559528>,  <36.797901, 36.598034, 47.419373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459774, 36.436710, 47.559528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221111, -0.861140, -0.457765,
		0.486359, -0.309481, 0.817115,
		-0.845319, -0.403311, 0.350393,
		36.206177, 36.315716, 47.664646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926258, 35.885384, 47.542973>,  <36.797901, 36.598034, 47.419373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926258, 35.885384, 47.542973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526501, 35.885754, 47.556904>,  <36.286648, 35.885975, 47.565262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526501, 35.885754, 47.556904>,  <36.926258, 35.885384, 47.542973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526501, 35.885754, 47.556904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022242, -0.786507, -0.617181,
		0.026822, -0.617581, 0.786050,
		-0.999393, 0.000929, 0.034832,
		36.226685, 35.886032, 47.567352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703701, 35.133114, 47.571758>,  <36.926258, 35.885384, 47.542973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703701, 35.133114, 47.571758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380268, 35.333401, 47.448158>,  <36.186211, 35.453571, 47.374001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380268, 35.333401, 47.448158>,  <36.703701, 35.133114, 47.571758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380268, 35.333401, 47.448158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064726, -0.597671, -0.799125,
		-0.584812, -0.626158, 0.515676,
		-0.808582, 0.500715, -0.308996,
		36.137695, 35.483616, 47.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330719, 34.604652, 47.363842>,  <36.703701, 35.133114, 47.571758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330719, 34.604652, 47.363842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180603, 34.927788, 47.182045>,  <36.090534, 35.121670, 47.072968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180603, 34.927788, 47.182045>,  <36.330719, 34.604652, 47.363842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180603, 34.927788, 47.182045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120160, -0.528594, -0.840327,
		-0.919086, -0.260755, 0.295445,
		-0.375290, 0.807834, -0.454491,
		36.068016, 35.170139, 47.045696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789780, 34.209801, 47.058544>,  <36.330719, 34.604652, 47.363842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789780, 34.209801, 47.058544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827633, 34.562717, 46.874107>,  <35.850346, 34.774467, 46.763447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827633, 34.562717, 46.874107>,  <35.789780, 34.209801, 47.058544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827633, 34.562717, 46.874107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258341, -0.425540, -0.867281,
		-0.961408, 0.201193, 0.187662,
		0.094633, 0.882291, -0.461093,
		35.856022, 34.827404, 46.735779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186836, 34.311527, 46.731331>,  <35.789780, 34.209801, 47.058544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186836, 34.311527, 46.731331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448219, 34.541718, 46.534634>,  <35.605049, 34.679832, 46.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448219, 34.541718, 46.534634>,  <35.186836, 34.311527, 46.731331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448219, 34.541718, 46.534634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384629, -0.307085, -0.870494,
		-0.651957, 0.757974, 0.020677,
		0.653462, 0.575478, -0.491745,
		35.644257, 34.714359, 46.387112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857578, 34.526928, 46.096519>,  <35.186836, 34.311527, 46.731331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857578, 34.526928, 46.096519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244640, 34.604023, 46.031418>,  <35.476879, 34.650280, 45.992355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244640, 34.604023, 46.031418>,  <34.857578, 34.526928, 46.096519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244640, 34.604023, 46.031418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143125, -0.111837, -0.983366,
		-0.207733, 0.974856, -0.080635,
		0.967658, 0.192737, -0.162758,
		35.534939, 34.661842, 45.982590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908333, 34.914623, 45.490841>,  <34.857578, 34.526928, 46.096519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908333, 34.914623, 45.490841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269020, 34.744118, 45.519714>,  <35.485432, 34.641815, 45.537037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269020, 34.744118, 45.519714>,  <34.908333, 34.914623, 45.490841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269020, 34.744118, 45.519714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104813, -0.377518, -0.920051,
		0.419435, 0.822058, -0.385092,
		0.901714, -0.426264, 0.072182,
		35.539536, 34.616238, 45.541370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359570, 35.081886, 44.850014>,  <34.908333, 34.914623, 45.490841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359570, 35.081886, 44.850014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542057, 34.760910, 45.003872>,  <35.651550, 34.568325, 45.096188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542057, 34.760910, 45.003872>,  <35.359570, 35.081886, 44.850014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542057, 34.760910, 45.003872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011037, -0.437322, -0.899238,
		0.889799, 0.406004, -0.208371,
		0.456219, -0.802441, 0.384647,
		35.678925, 34.520180, 45.119267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859665, 34.972473, 44.465561>,  <35.359570, 35.081886, 44.850014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859665, 34.972473, 44.465561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809116, 34.612759, 44.633041>,  <35.778786, 34.396931, 44.733528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809116, 34.612759, 44.633041>,  <35.859665, 34.972473, 44.465561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809116, 34.612759, 44.633041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276594, -0.437290, -0.855729,
		0.952641, 0.007668, 0.304000,
		-0.126375, -0.899287, 0.418702,
		35.771202, 34.342972, 44.758652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372261, 34.588081, 44.230343>,  <35.859665, 34.972473, 44.465561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372261, 34.588081, 44.230343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116302, 34.304844, 44.349766>,  <35.962727, 34.134899, 44.421417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116302, 34.304844, 44.349766>,  <36.372261, 34.588081, 44.230343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116302, 34.304844, 44.349766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221639, -0.542057, -0.810586,
		0.735809, -0.452517, 0.503800,
		-0.639892, -0.708098, 0.298555,
		35.924335, 34.092415, 44.439331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763714, 33.968964, 44.290989>,  <36.372261, 34.588081, 44.230343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763714, 33.968964, 44.290989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380428, 33.867374, 44.238338>,  <36.150455, 33.806423, 44.206749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380428, 33.867374, 44.238338>,  <36.763714, 33.968964, 44.290989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380428, 33.867374, 44.238338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260484, -0.584567, -0.768394,
		0.118208, -0.770572, 0.626295,
		-0.958214, -0.253970, -0.131622,
		36.092964, 33.791183, 44.198853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816742, 33.390850, 44.045547>,  <36.763714, 33.968964, 44.290989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816742, 33.390850, 44.045547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443977, 33.447430, 43.911961>,  <36.220318, 33.481377, 43.831810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443977, 33.447430, 43.911961>,  <36.816742, 33.390850, 44.045547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443977, 33.447430, 43.911961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188456, -0.597893, -0.779107,
		-0.309881, -0.788996, 0.530526,
		-0.931911, 0.141450, -0.333967,
		36.164406, 33.489864, 43.811771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742630, 32.788685, 43.795982>,  <36.816742, 33.390850, 44.045547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742630, 32.788685, 43.795982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435520, 32.992466, 43.640556>,  <36.251255, 33.114735, 43.547302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435520, 32.992466, 43.640556>,  <36.742630, 32.788685, 43.795982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435520, 32.992466, 43.640556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073468, -0.532444, -0.843271,
		-0.636496, -0.675988, 0.371367,
		-0.767773, 0.509455, -0.388562,
		36.205189, 33.145302, 43.523987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334835, 32.381729, 43.478817>,  <36.742630, 32.788685, 43.795982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334835, 32.381729, 43.478817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244698, 32.703861, 43.259483>,  <36.190613, 32.897141, 43.127884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244698, 32.703861, 43.259483>,  <36.334835, 32.381729, 43.478817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244698, 32.703861, 43.259483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200011, -0.512581, -0.835018,
		-0.953527, -0.297842, -0.045565,
		-0.225348, 0.805326, -0.548332,
		36.177094, 32.945457, 43.094982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889565, 32.074287, 42.928810>,  <36.334835, 32.381729, 43.478817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889565, 32.074287, 42.928810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028965, 32.425205, 42.796810>,  <36.112606, 32.635757, 42.717609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028965, 32.425205, 42.796810>,  <35.889565, 32.074287, 42.928810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028965, 32.425205, 42.796810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181753, -0.408642, -0.894415,
		-0.919519, 0.251722, -0.301862,
		0.348497, 0.877296, -0.330002,
		36.133514, 32.688393, 42.697811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718723, 32.026283, 42.122753>,  <35.889565, 32.074287, 42.928810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718723, 32.026283, 42.122753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994419, 32.310661, 42.178616>,  <36.159836, 32.481289, 42.212132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994419, 32.310661, 42.178616>,  <35.718723, 32.026283, 42.122753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994419, 32.310661, 42.178616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477234, -0.300446, -0.825821,
		-0.545152, 0.635840, -0.546367,
		0.689244, 0.710942, 0.139656,
		36.201191, 32.523945, 42.220512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736683, 32.426483, 41.469608>,  <35.718723, 32.026283, 42.122753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736683, 32.426483, 41.469608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082603, 32.490143, 41.660099>,  <36.290154, 32.528339, 41.774395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082603, 32.490143, 41.660099>,  <35.736683, 32.426483, 41.469608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082603, 32.490143, 41.660099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501889, -0.302824, -0.810188,
		0.015270, 0.939664, -0.341759,
		0.864797, 0.159154, 0.476231,
		36.342041, 32.537888, 41.802967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341099, 32.508156, 40.925358>,  <35.736683, 32.426483, 41.469608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341099, 32.508156, 40.925358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515678, 32.438473, 41.278439>,  <36.620426, 32.396664, 41.490288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515678, 32.438473, 41.278439>,  <36.341099, 32.508156, 40.925358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515678, 32.438473, 41.278439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726512, -0.510494, -0.459974,
		0.530745, 0.842049, -0.096241,
		0.436452, -0.174208, 0.882701,
		36.646614, 32.386211, 41.543247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059124, 32.631344, 40.856899>,  <36.341099, 32.508156, 40.925358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059124, 32.631344, 40.856899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038486, 32.381989, 41.168983>,  <37.026104, 32.232376, 41.356232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038486, 32.381989, 41.168983>,  <37.059124, 32.631344, 40.856899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038486, 32.381989, 41.168983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791031, -0.502391, -0.349105,
		0.609597, 0.599155, 0.519042,
		-0.051594, -0.623391, 0.780206,
		37.023006, 32.194973, 41.403046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752838, 32.557098, 41.037701>,  <37.059124, 32.631344, 40.856899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752838, 32.557098, 41.037701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565063, 32.258018, 41.225563>,  <37.452400, 32.078571, 41.338280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565063, 32.258018, 41.225563>,  <37.752838, 32.557098, 41.037701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565063, 32.258018, 41.225563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794499, -0.589754, -0.144782,
		0.385234, 0.305174, 0.870898,
		-0.469432, -0.747702, 0.469654,
		37.424232, 32.033707, 41.366459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092499, 32.349174, 41.641209>,  <37.752838, 32.557098, 41.037701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092499, 32.349174, 41.641209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893459, 32.022144, 41.525307>,  <37.774036, 31.825926, 41.455765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893459, 32.022144, 41.525307>,  <38.092499, 32.349174, 41.641209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893459, 32.022144, 41.525307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863531, -0.498460, -0.076499,
		-0.081887, -0.288278, 0.954039,
		-0.497603, -0.817578, -0.289754,
		37.744179, 31.776871, 41.438381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327053, 31.868290, 42.086327>,  <38.092499, 32.349174, 41.641209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327053, 31.868290, 42.086327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174294, 31.654596, 41.784664>,  <38.082638, 31.526381, 41.603668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174294, 31.654596, 41.784664>,  <38.327053, 31.868290, 42.086327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174294, 31.654596, 41.784664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877885, -0.464781, -0.115311,
		-0.288913, -0.706095, 0.646497,
		-0.381900, -0.534236, -0.754151,
		38.059723, 31.494326, 41.558418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613216, 31.166851, 41.953190>,  <38.327053, 31.868290, 42.086327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613216, 31.166851, 41.953190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453907, 31.232220, 41.592152>,  <38.358322, 31.271441, 41.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453907, 31.232220, 41.592152>,  <38.613216, 31.166851, 41.953190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453907, 31.232220, 41.592152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858576, -0.279913, -0.429530,
		-0.322841, -0.946014, -0.028827,
		-0.398273, 0.163420, -0.902592,
		38.334427, 31.281246, 41.321373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718864, 30.508118, 41.569595>,  <38.613216, 31.166851, 41.953190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718864, 30.508118, 41.569595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665817, 30.813356, 41.316586>,  <38.633987, 30.996500, 41.164780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665817, 30.813356, 41.316586>,  <38.718864, 30.508118, 41.569595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665817, 30.813356, 41.316586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902009, -0.171601, -0.396147,
		-0.410842, -0.623084, -0.665564,
		-0.132621, 0.763099, -0.632528,
		38.626030, 31.042286, 41.126827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836605, 30.350319, 40.862415>,  <38.718864, 30.508118, 41.569595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836605, 30.350319, 40.862415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916653, 30.737324, 40.924217>,  <38.964684, 30.969526, 40.961300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916653, 30.737324, 40.924217>,  <38.836605, 30.350319, 40.862415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916653, 30.737324, 40.924217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952809, -0.155439, -0.260756,
		-0.228269, 0.199396, -0.952961,
		0.200121, 0.967512, 0.154505,
		38.976688, 31.027578, 40.970570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225136, 29.812260, 40.387943>,  <38.836605, 30.350319, 40.862415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225136, 29.812260, 40.387943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027245, 29.882296, 40.047451>,  <38.908512, 29.924316, 39.843155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027245, 29.882296, 40.047451>,  <39.225136, 29.812260, 40.387943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027245, 29.882296, 40.047451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865739, -0.013880, 0.500303,
		0.075783, 0.984455, 0.158449,
		-0.494725, 0.175090, -0.851229,
		38.878826, 29.934822, 39.792084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911404, 29.715187, 40.267750>,  <39.225136, 29.812260, 40.387943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911404, 29.715187, 40.267750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190655, 29.515385, 40.062576>,  <40.358208, 29.395502, 39.939472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190655, 29.515385, 40.062576>,  <39.911404, 29.715187, 40.267750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190655, 29.515385, 40.062576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351451, 0.385084, -0.853342,
		0.623774, 0.776018, 0.093287,
		0.698131, -0.499507, -0.512938,
		40.400093, 29.365532, 39.908695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278290, 30.177071, 39.761536>,  <39.911404, 29.715187, 40.267750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278290, 30.177071, 39.761536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325359, 29.805801, 39.620312>,  <40.353600, 29.583040, 39.535580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325359, 29.805801, 39.620312>,  <40.278290, 30.177071, 39.761536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325359, 29.805801, 39.620312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199631, 0.326159, -0.923995,
		0.972780, 0.179211, -0.146911,
		0.117673, -0.928172, -0.353057,
		40.360661, 29.527349, 39.514393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784313, 30.154200, 39.236599>,  <40.278290, 30.177071, 39.761536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784313, 30.154200, 39.236599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526836, 29.861696, 39.146332>,  <40.372353, 29.686193, 39.092171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526836, 29.861696, 39.146332>,  <40.784313, 30.154200, 39.236599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526836, 29.861696, 39.146332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061815, 0.343592, -0.937082,
		0.762787, -0.589239, -0.266369,
		-0.643688, -0.731260, -0.225664,
		40.333729, 29.642319, 39.078632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208038, 29.702091, 38.993668>,  <40.784313, 30.154200, 39.236599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208038, 29.702091, 38.993668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506252, 29.733746, 38.728966>,  <41.685181, 29.752739, 38.570145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506252, 29.733746, 38.728966>,  <41.208038, 29.702091, 38.993668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506252, 29.733746, 38.728966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647776, 0.319555, -0.691571,
		0.156739, 0.944257, 0.289501,
		0.745532, 0.079136, -0.661754,
		41.729912, 29.757486, 38.530441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283901, 30.280039, 38.612812>,  <41.208038, 29.702091, 38.993668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283901, 30.280039, 38.612812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421803, 29.979616, 38.387581>,  <41.504543, 29.799362, 38.252441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421803, 29.979616, 38.387581>,  <41.283901, 30.280039, 38.612812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421803, 29.979616, 38.387581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867721, -0.026174, -0.496361,
		0.358058, 0.659716, -0.660733,
		0.344752, -0.751059, -0.563078,
		41.525227, 29.754299, 38.218658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608109, 30.950804, 38.559727>,  <41.283901, 30.280039, 38.612812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608109, 30.950804, 38.559727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969151, 31.110876, 38.496288>,  <42.185776, 31.206919, 38.458225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969151, 31.110876, 38.496288>,  <41.608109, 30.950804, 38.559727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969151, 31.110876, 38.496288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403588, 0.914868, 0.011539,
		0.149708, 0.053590, 0.987277,
		0.902610, 0.400181, -0.158591,
		42.239933, 31.230930, 38.448711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544064, 31.483683, 38.974094>,  <41.608109, 30.950804, 38.559727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544064, 31.483683, 38.974094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816944, 31.575457, 38.696400>,  <41.980671, 31.630522, 38.529785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816944, 31.575457, 38.696400>,  <41.544064, 31.483683, 38.974094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816944, 31.575457, 38.696400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384967, 0.919938, -0.074264,
		0.621613, 0.317920, 0.715908,
		0.682201, 0.229437, -0.694233,
		42.021603, 31.644287, 38.488129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692421, 32.199631, 39.101185>,  <41.544064, 31.483683, 38.974094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692421, 32.199631, 39.101185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840904, 32.129478, 38.736450>,  <41.929996, 32.087387, 38.517609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840904, 32.129478, 38.736450>,  <41.692421, 32.199631, 39.101185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840904, 32.129478, 38.736450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357570, 0.879270, -0.314686,
		0.856940, 0.442860, 0.263683,
		0.371211, -0.175382, -0.911835,
		41.952267, 32.076862, 38.462898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070644, 32.805012, 38.916599>,  <41.692421, 32.199631, 39.101185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070644, 32.805012, 38.916599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969929, 32.606453, 38.584286>,  <41.909500, 32.487320, 38.384899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969929, 32.606453, 38.584286>,  <42.070644, 32.805012, 38.916599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969929, 32.606453, 38.584286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221998, 0.865171, -0.449662,
		0.941977, 0.071212, -0.328038,
		-0.251787, -0.496395, -0.830780,
		41.894394, 32.457535, 38.335052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231949, 33.275398, 38.322060>,  <42.070644, 32.805012, 38.916599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231949, 33.275398, 38.322060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954960, 33.026207, 38.176521>,  <41.788769, 32.876690, 38.089199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954960, 33.026207, 38.176521>,  <42.231949, 33.275398, 38.322060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954960, 33.026207, 38.176521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452170, 0.767748, -0.453988,
		0.562165, -0.149854, -0.813335,
		-0.692469, -0.622982, -0.363842,
		41.747219, 32.839314, 38.067368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193810, 33.495251, 37.616508>,  <42.231949, 33.275398, 38.322060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193810, 33.495251, 37.616508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860649, 33.278358, 37.660812>,  <41.660751, 33.148224, 37.687393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860649, 33.278358, 37.660812>,  <42.193810, 33.495251, 37.616508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860649, 33.278358, 37.660812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492827, 0.635639, -0.594209,
		0.251792, -0.549503, -0.796647,
		-0.832900, -0.542227, 0.110761,
		41.610779, 33.115692, 37.694042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900299, 33.516701, 37.008377>,  <42.193810, 33.495251, 37.616508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900299, 33.516701, 37.008377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594841, 33.438457, 37.254498>,  <41.411568, 33.391510, 37.402168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594841, 33.438457, 37.254498>,  <41.900299, 33.516701, 37.008377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594841, 33.438457, 37.254498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553131, 0.689757, -0.467206,
		-0.333016, -0.697117, -0.634923,
		-0.763640, -0.195608, 0.615297,
		41.365749, 33.379776, 37.439087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342201, 33.474895, 36.633839>,  <41.900299, 33.516701, 37.008377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342201, 33.474895, 36.633839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169777, 33.544704, 36.987953>,  <41.066322, 33.586590, 37.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169777, 33.544704, 36.987953>,  <41.342201, 33.474895, 36.633839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169777, 33.544704, 36.987953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594699, 0.682927, -0.424198,
		-0.678615, -0.709334, -0.190597,
		-0.431062, 0.174520, 0.885285,
		41.040459, 33.597061, 37.253540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586143, 33.502335, 36.467510>,  <41.342201, 33.474895, 36.633839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586143, 33.502335, 36.467510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633053, 33.685661, 36.819916>,  <40.661198, 33.795658, 37.031361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633053, 33.685661, 36.819916>,  <40.586143, 33.502335, 36.467510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633053, 33.685661, 36.819916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619948, 0.726835, -0.295592,
		-0.775830, -0.511521, 0.369371,
		0.117270, 0.458319, 0.881017,
		40.668236, 33.823158, 37.084221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935013, 33.571468, 36.765701>,  <40.586143, 33.502335, 36.467510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935013, 33.571468, 36.765701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164143, 33.858826, 36.923576>,  <40.301620, 34.031242, 37.018299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164143, 33.858826, 36.923576>,  <39.935013, 33.571468, 36.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164143, 33.858826, 36.923576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635898, 0.693314, -0.339041,
		-0.517207, -0.056768, 0.853976,
		0.572827, 0.718396, 0.394685,
		40.335991, 34.074345, 37.041981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516140, 34.058521, 36.907795>,  <39.935013, 33.571468, 36.765701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516140, 34.058521, 36.907795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849117, 34.278046, 36.938358>,  <40.048904, 34.409760, 36.956696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849117, 34.278046, 36.938358>,  <39.516140, 34.058521, 36.907795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849117, 34.278046, 36.938358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506922, 0.809965, -0.294934,
		-0.223752, 0.206784, 0.952458,
		0.832446, 0.548814, 0.076408,
		40.098850, 34.442688, 36.961281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332916, 34.741993, 37.351814>,  <39.516140, 34.058521, 36.907795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332916, 34.741993, 37.351814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666206, 34.810745, 37.141598>,  <39.866180, 34.851997, 37.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666206, 34.810745, 37.141598>,  <39.332916, 34.741993, 37.351814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666206, 34.810745, 37.141598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373892, 0.875365, -0.306497,
		0.407364, 0.451877, 0.793638,
		0.833222, 0.171879, -0.525546,
		39.916172, 34.862309, 36.983932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524731, 35.340790, 37.563248>,  <39.332916, 34.741993, 37.351814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524731, 35.340790, 37.563248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712017, 35.312599, 37.210930>,  <39.824390, 35.295685, 36.999538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712017, 35.312599, 37.210930>,  <39.524731, 35.340790, 37.563248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712017, 35.312599, 37.210930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275373, 0.935533, -0.221241,
		0.839610, 0.346136, 0.418623,
		0.468215, -0.070478, -0.880799,
		39.852482, 35.291454, 36.946690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743008, 35.971424, 37.453667>,  <39.524731, 35.340790, 37.563248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743008, 35.971424, 37.453667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837086, 35.846050, 37.085655>,  <39.893532, 35.770828, 36.864849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837086, 35.846050, 37.085655>,  <39.743008, 35.971424, 37.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837086, 35.846050, 37.085655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045195, 0.949080, -0.311776,
		0.970897, 0.031747, 0.237383,
		0.235193, -0.313431, -0.920025,
		39.907642, 35.752022, 36.809647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407787, 36.281422, 37.191608>,  <39.743008, 35.971424, 37.453667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407787, 36.281422, 37.191608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198402, 36.184021, 36.865002>,  <40.072773, 36.125580, 36.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198402, 36.184021, 36.865002>,  <40.407787, 36.281422, 37.191608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198402, 36.184021, 36.865002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093368, 0.968917, -0.229091,
		0.846920, -0.043683, -0.529922,
		-0.523458, -0.243500, -0.816517,
		40.041367, 36.110970, 36.620049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671505, 36.483177, 36.548492>,  <40.407787, 36.281422, 37.191608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671505, 36.483177, 36.548492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281883, 36.442181, 36.467781>,  <40.048111, 36.417583, 36.419353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281883, 36.442181, 36.467781>,  <40.671505, 36.483177, 36.548492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281883, 36.442181, 36.467781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032445, 0.945605, -0.323694,
		0.223980, -0.308749, -0.924396,
		-0.974054, -0.102493, -0.201779,
		39.989666, 36.411434, 36.407246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609184, 37.047031, 36.242710>,  <40.671505, 36.483177, 36.548492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609184, 37.047031, 36.242710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225140, 36.936676, 36.260929>,  <39.994713, 36.870461, 36.271862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225140, 36.936676, 36.260929>,  <40.609184, 37.047031, 36.242710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225140, 36.936676, 36.260929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278279, 0.926759, -0.252348,
		0.027410, -0.254956, -0.966564,
		-0.960109, -0.275891, 0.045546,
		39.937107, 36.853909, 36.274593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268509, 37.261944, 35.599583>,  <40.609184, 37.047031, 36.242710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268509, 37.261944, 35.599583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964897, 37.226608, 35.857597>,  <39.782730, 37.205406, 36.012405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964897, 37.226608, 35.857597>,  <40.268509, 37.261944, 35.599583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964897, 37.226608, 35.857597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358385, 0.883829, -0.300676,
		-0.543537, -0.459393, -0.702514,
		-0.759031, -0.088341, 0.645034,
		39.737186, 37.200108, 36.051109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744041, 37.495861, 35.231071>,  <40.268509, 37.261944, 35.599583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744041, 37.495861, 35.231071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652714, 37.498138, 35.620499>,  <39.597919, 37.499504, 35.854156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652714, 37.498138, 35.620499>,  <39.744041, 37.495861, 35.231071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652714, 37.498138, 35.620499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429373, 0.896892, -0.105943,
		-0.873791, -0.442214, -0.202328,
		-0.228316, 0.005698, 0.973570,
		39.584221, 37.499847, 35.912571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047924, 37.720886, 35.220566>,  <39.744041, 37.495861, 35.231071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047924, 37.720886, 35.220566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160446, 37.795525, 35.597088>,  <39.227959, 37.840305, 35.823002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160446, 37.795525, 35.597088>,  <39.047924, 37.720886, 35.220566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160446, 37.795525, 35.597088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155459, 0.976817, -0.147174,
		-0.946942, -0.104933, 0.303793,
		0.281307, 0.186593, 0.941302,
		39.244839, 37.851501, 35.879478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587032, 38.188648, 35.703526>,  <39.047924, 37.720886, 35.220566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587032, 38.188648, 35.703526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986019, 38.194447, 35.731358>,  <39.225410, 38.197926, 35.748058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986019, 38.194447, 35.731358>,  <38.587032, 38.188648, 35.703526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986019, 38.194447, 35.731358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004722, 0.990328, -0.138666,
		-0.070919, 0.137986, 0.987892,
		0.997471, 0.014498, 0.069582,
		39.285259, 38.198795, 35.752232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663021, 38.741768, 35.977016>,  <38.587032, 38.188648, 35.703526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663021, 38.741768, 35.977016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041718, 38.635849, 35.903725>,  <39.268936, 38.572300, 35.859749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041718, 38.635849, 35.903725>,  <38.663021, 38.741768, 35.977016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041718, 38.635849, 35.903725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277970, 0.959291, 0.049935,
		0.162543, -0.098207, 0.981802,
		0.946738, -0.264795, -0.183225,
		39.325737, 38.556412, 35.848759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146919, 39.179886, 36.380978>,  <38.663021, 38.741768, 35.977016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146919, 39.179886, 36.380978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360851, 39.059757, 36.065063>,  <39.489208, 38.987679, 35.875515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360851, 39.059757, 36.065063>,  <39.146919, 39.179886, 36.380978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360851, 39.059757, 36.065063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387280, 0.917870, -0.086772,
		0.750981, -0.259461, 0.607213,
		0.534828, -0.300326, -0.789787,
		39.521301, 38.969658, 35.828129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809864, 39.403526, 36.815071>,  <39.146919, 39.179886, 36.380978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809864, 39.403526, 36.815071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474747, 39.559933, 36.967495>,  <39.273678, 39.653778, 37.058949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474747, 39.559933, 36.967495>,  <39.809864, 39.403526, 36.815071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474747, 39.559933, 36.967495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545289, -0.634483, -0.547806,
		0.027574, -0.666736, 0.744784,
		-0.837794, 0.391017, 0.381059,
		39.223408, 39.677238, 37.081814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580185, 38.962238, 37.302151>,  <39.809864, 39.403526, 36.815071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580185, 38.962238, 37.302151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259834, 39.155693, 37.160904>,  <39.067623, 39.271767, 37.076157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259834, 39.155693, 37.160904>,  <39.580185, 38.962238, 37.302151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259834, 39.155693, 37.160904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338382, -0.852007, -0.399476,
		-0.494058, -0.200444, 0.846007,
		-0.800877, 0.483638, -0.353115,
		39.019569, 39.300785, 37.054970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731674, 39.130245, 38.014351>,  <39.580185, 38.962238, 37.302151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731674, 39.130245, 38.014351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635353, 39.479435, 38.184025>,  <39.577560, 39.688950, 38.285828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635353, 39.479435, 38.184025>,  <39.731674, 39.130245, 38.014351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635353, 39.479435, 38.184025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296520, -0.349979, 0.888589,
		0.924171, 0.339751, -0.174580,
		-0.240800, 0.872974, 0.424183,
		39.563114, 39.741325, 38.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270824, 39.537628, 38.379662>,  <39.731674, 39.130245, 38.014351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270824, 39.537628, 38.379662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928146, 39.602634, 38.575481>,  <39.722538, 39.641640, 38.692974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928146, 39.602634, 38.575481>,  <40.270824, 39.537628, 38.379662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928146, 39.602634, 38.575481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409836, -0.361847, 0.837318,
		0.313220, 0.917963, 0.243388,
		-0.856696, 0.162515, 0.489552,
		39.671139, 39.651390, 38.722347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518780, 39.589443, 38.988613>,  <40.270824, 39.537628, 38.379662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518780, 39.589443, 38.988613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136372, 39.647202, 39.090729>,  <39.906925, 39.681858, 39.152000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136372, 39.647202, 39.090729>,  <40.518780, 39.589443, 38.988613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136372, 39.647202, 39.090729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244514, -0.088326, 0.965615,
		0.161981, 0.985570, 0.049135,
		-0.956020, 0.144397, 0.255292,
		39.849564, 39.690521, 39.167316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832016, 40.280304, 39.134178>,  <40.518780, 39.589443, 38.988613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832016, 40.280304, 39.134178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155067, 40.516125, 39.129078>,  <41.348900, 40.657616, 39.126019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155067, 40.516125, 39.129078>,  <40.832016, 40.280304, 39.134178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155067, 40.516125, 39.129078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585111, -0.803865, -0.106983,
		-0.073324, 0.078940, -0.994179,
		0.807631, 0.589550, -0.012754,
		41.397358, 40.692989, 39.125252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172371, 40.258770, 38.415455>,  <40.832016, 40.280304, 39.134178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172371, 40.258770, 38.415455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375637, 40.318726, 38.754704>,  <41.497597, 40.354698, 38.958252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375637, 40.318726, 38.754704>,  <41.172371, 40.258770, 38.415455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375637, 40.318726, 38.754704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542276, -0.820723, -0.179863,
		0.669110, 0.551314, -0.498343,
		0.508162, 0.149891, 0.848118,
		41.528088, 40.363693, 39.009140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004910, 40.270058, 38.184299>,  <41.172371, 40.258770, 38.415455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004910, 40.270058, 38.184299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892574, 40.133469, 38.543079>,  <41.825172, 40.051514, 38.758347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892574, 40.133469, 38.543079>,  <42.004910, 40.270058, 38.184299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892574, 40.133469, 38.543079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491075, -0.854089, -0.171396,
		0.824605, 0.392336, 0.407553,
		-0.280842, -0.341473, 0.896952,
		41.808323, 40.031025, 38.812164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601906, 40.076561, 38.547134>,  <42.004910, 40.270058, 38.184299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601906, 40.076561, 38.547134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285721, 39.860558, 38.662754>,  <42.096008, 39.730953, 38.732128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285721, 39.860558, 38.662754>,  <42.601906, 40.076561, 38.547134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285721, 39.860558, 38.662754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540137, -0.837092, -0.086767,
		0.288818, 0.087541, 0.953373,
		-0.790466, -0.540012, 0.289051,
		42.048580, 39.698555, 38.749470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798782, 39.613350, 39.078293>,  <42.601906, 40.076561, 38.547134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798782, 39.613350, 39.078293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478382, 39.453396, 38.900089>,  <42.286140, 39.357422, 38.793167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478382, 39.453396, 38.900089>,  <42.798782, 39.613350, 39.078293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478382, 39.453396, 38.900089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471192, -0.880178, -0.057138,
		-0.369282, -0.255689, 0.893450,
		-0.801005, -0.399886, -0.445513,
		42.238079, 39.333431, 38.766434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959133, 38.845840, 39.252434>,  <42.798782, 39.613350, 39.078293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959133, 38.845840, 39.252434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667217, 38.838562, 38.979065>,  <42.492065, 38.834194, 38.815044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667217, 38.838562, 38.979065>,  <42.959133, 38.845840, 39.252434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667217, 38.838562, 38.979065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314452, -0.896563, -0.311920,
		-0.607060, -0.442542, 0.660026,
		-0.729793, -0.018193, -0.683426,
		42.448280, 38.833103, 38.774036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619587, 38.253605, 39.417732>,  <42.959133, 38.845840, 39.252434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619587, 38.253605, 39.417732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504524, 38.329292, 39.042191>,  <42.435486, 38.374706, 38.816864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504524, 38.329292, 39.042191>,  <42.619587, 38.253605, 39.417732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504524, 38.329292, 39.042191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129408, -0.963619, -0.233863,
		-0.948951, -0.188767, 0.252702,
		-0.287654, 0.189223, -0.938856,
		42.418228, 38.386059, 38.760532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141869, 37.650757, 39.223045>,  <42.619587, 38.253605, 39.417732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141869, 37.650757, 39.223045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273094, 37.821957, 38.886192>,  <42.351830, 37.924679, 38.684082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273094, 37.821957, 38.886192>,  <42.141869, 37.650757, 39.223045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273094, 37.821957, 38.886192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275989, -0.896001, -0.347867,
		-0.903440, -0.118296, -0.412070,
		0.328064, 0.428004, -0.842132,
		42.371513, 37.950359, 38.633553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984535, 37.159592, 38.724331>,  <42.141869, 37.650757, 39.223045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984535, 37.159592, 38.724331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249149, 37.408627, 38.557117>,  <42.407917, 37.558048, 38.456787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249149, 37.408627, 38.557117>,  <41.984535, 37.159592, 38.724331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249149, 37.408627, 38.557117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402969, -0.765252, -0.502001,
		-0.632442, 0.163637, -0.757126,
		0.661538, 0.622585, -0.418038,
		42.447609, 37.595402, 38.431705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019680, 36.948505, 37.987827>,  <41.984535, 37.159592, 38.724331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019680, 36.948505, 37.987827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357357, 37.153675, 38.050114>,  <42.559963, 37.276775, 38.087486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357357, 37.153675, 38.050114>,  <42.019680, 36.948505, 37.987827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357357, 37.153675, 38.050114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521349, -0.718109, -0.460993,
		-0.124636, 0.470348, -0.873635,
		0.844193, 0.512925, 0.155713,
		42.610615, 37.307552, 38.096828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433159, 36.977341, 37.347050>,  <42.019680, 36.948505, 37.987827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433159, 36.977341, 37.347050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698143, 37.038578, 37.640362>,  <42.857136, 37.075321, 37.816349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698143, 37.038578, 37.640362>,  <42.433159, 36.977341, 37.347050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698143, 37.038578, 37.640362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610106, -0.678246, -0.409578,
		0.434640, 0.718710, -0.542719,
		0.662464, 0.153097, 0.733282,
		42.896881, 37.084507, 37.860348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095169, 37.089500, 36.968483>,  <42.433159, 36.977341, 37.347050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095169, 37.089500, 36.968483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176720, 36.975945, 37.343254>,  <43.225651, 36.907810, 37.568119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176720, 36.975945, 37.343254>,  <43.095169, 37.089500, 36.968483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176720, 36.975945, 37.343254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656961, -0.669878, -0.345928,
		0.725837, 0.686052, 0.049937,
		0.203873, -0.283893, 0.936931,
		43.237881, 36.890778, 37.624332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791008, 37.002628, 36.975430>,  <43.095169, 37.089500, 36.968483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791008, 37.002628, 36.975430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664364, 36.802425, 37.297733>,  <43.588379, 36.682304, 37.491116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664364, 36.802425, 37.297733>,  <43.791008, 37.002628, 36.975430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664364, 36.802425, 37.297733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495098, -0.811766, -0.309701,
		0.809096, 0.300874, 0.504815,
		-0.316611, -0.500511, 0.805758,
		43.569382, 36.652271, 37.539459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245369, 36.408092, 37.055992>,  <43.791008, 37.002628, 36.975430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245369, 36.408092, 37.055992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973587, 36.285328, 37.322571>,  <43.810520, 36.211670, 37.482517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973587, 36.285328, 37.322571>,  <44.245369, 36.408092, 37.055992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973587, 36.285328, 37.322571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249304, -0.950842, -0.183705,
		0.690066, 0.041329, 0.722565,
		-0.679452, -0.306907, 0.666447,
		43.769753, 36.193256, 37.522507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535851, 35.890038, 37.599033>,  <44.245369, 36.408092, 37.055992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535851, 35.890038, 37.599033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140202, 35.836685, 37.574223>,  <43.902813, 35.804672, 37.559338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140202, 35.836685, 37.574223>,  <44.535851, 35.890038, 37.599033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140202, 35.836685, 37.574223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145508, -0.949029, -0.279593,
		-0.021572, -0.285577, 0.958113,
		-0.989122, -0.133381, -0.062026,
		43.843464, 35.796669, 37.555614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359779, 35.286289, 38.036266>,  <44.535851, 35.890038, 37.599033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359779, 35.286289, 38.036266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068504, 35.339985, 37.767426>,  <43.893742, 35.372204, 37.606121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068504, 35.339985, 37.767426>,  <44.359779, 35.286289, 38.036266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068504, 35.339985, 37.767426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109998, -0.945029, -0.307931,
		-0.676497, -0.298160, 0.673389,
		-0.728184, 0.134243, -0.672106,
		43.850048, 35.380257, 37.565792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898132, 34.789871, 38.132381>,  <44.359779, 35.286289, 38.036266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898132, 34.789871, 38.132381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852428, 34.888592, 37.747459>,  <43.825005, 34.947826, 37.516506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852428, 34.888592, 37.747459>,  <43.898132, 34.789871, 38.132381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852428, 34.888592, 37.747459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025707, -0.969060, -0.245484,
		-0.993118, -0.003311, 0.117068,
		-0.114259, 0.246805, -0.962306,
		43.818150, 34.962631, 37.458767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393204, 34.322758, 37.898800>,  <43.898132, 34.789871, 38.132381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393204, 34.322758, 37.898800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571438, 34.480740, 37.577435>,  <43.678379, 34.575527, 37.384617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571438, 34.480740, 37.577435>,  <43.393204, 34.322758, 37.898800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571438, 34.480740, 37.577435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176886, -0.918572, -0.353462,
		-0.877592, 0.015384, -0.479161,
		0.445582, 0.394953, -0.803411,
		43.705112, 34.599224, 37.336411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073219, 34.074886, 37.339993>,  <43.393204, 34.322758, 37.898800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073219, 34.074886, 37.339993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426319, 34.181446, 37.185188>,  <43.638180, 34.245384, 37.092304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426319, 34.181446, 37.185188>,  <43.073219, 34.074886, 37.339993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426319, 34.181446, 37.185188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134094, -0.932305, -0.335895,
		-0.450298, 0.244616, -0.858717,
		0.882752, 0.266401, -0.387013,
		43.691143, 34.261368, 37.069084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113899, 33.776325, 36.619179>,  <43.073219, 34.074886, 37.339993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113899, 33.776325, 36.619179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483177, 33.876350, 36.735928>,  <43.704742, 33.936363, 36.805977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483177, 33.876350, 36.735928>,  <43.113899, 33.776325, 36.619179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483177, 33.876350, 36.735928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311291, -0.931891, -0.186221,
		0.225428, 0.262774, -0.938153,
		0.923190, 0.250059, 0.291874,
		43.760136, 33.951366, 36.823490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542843, 33.501289, 36.186836>,  <43.113899, 33.776325, 36.619179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542843, 33.501289, 36.186836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817940, 33.562912, 36.470604>,  <43.982998, 33.599884, 36.640865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817940, 33.562912, 36.470604>,  <43.542843, 33.501289, 36.186836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817940, 33.562912, 36.470604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404634, -0.892693, -0.198419,
		0.602725, 0.423517, -0.676281,
		0.687745, 0.154054, 0.709418,
		44.024261, 33.609127, 36.683430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225170, 33.431839, 35.857719>,  <43.542843, 33.501289, 36.186836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225170, 33.431839, 35.857719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268894, 33.366451, 36.249908>,  <44.295128, 33.327217, 36.485222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268894, 33.366451, 36.249908>,  <44.225170, 33.431839, 35.857719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268894, 33.366451, 36.249908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405845, -0.893082, -0.194150,
		0.907381, 0.419143, -0.031283,
		0.109315, -0.163472, 0.980473,
		44.301689, 33.317410, 36.544052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919876, 33.218861, 35.984306>,  <44.225170, 33.431839, 35.857719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919876, 33.218861, 35.984306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687366, 33.059273, 36.267982>,  <44.547859, 32.963520, 36.438187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687366, 33.059273, 36.267982>,  <44.919876, 33.218861, 35.984306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687366, 33.059273, 36.267982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284509, -0.916189, -0.282228,
		0.762348, 0.037718, 0.646067,
		-0.581274, -0.398968, 0.709186,
		44.512985, 32.939583, 36.480740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539967, 33.394695, 35.610672>,  <44.919876, 33.218861, 35.984306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539967, 33.394695, 35.610672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617222, 33.669685, 35.330654>,  <45.663574, 33.834679, 35.162643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617222, 33.669685, 35.330654>,  <45.539967, 33.394695, 35.610672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617222, 33.669685, 35.330654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892261, 0.173712, 0.416766,
		0.408125, -0.705122, -0.579860,
		0.193142, 0.687479, -0.700049,
		45.675163, 33.875931, 35.120640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189907, 33.256535, 35.165379>,  <45.539967, 33.394695, 35.610672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189907, 33.256535, 35.165379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092430, 33.634377, 35.253330>,  <46.033943, 33.861080, 35.306099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092430, 33.634377, 35.253330>,  <46.189907, 33.256535, 35.165379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092430, 33.634377, 35.253330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854221, 0.101690, 0.509869,
		0.459263, 0.312072, -0.831678,
		-0.243689, 0.944601, 0.219876,
		46.019325, 33.917755, 35.319294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700420, 33.746803, 34.712463>,  <46.189907, 33.256535, 35.165379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700420, 33.746803, 34.712463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569313, 33.889080, 35.062561>,  <46.490650, 33.974449, 35.272617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569313, 33.889080, 35.062561>,  <46.700420, 33.746803, 34.712463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569313, 33.889080, 35.062561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929269, 0.288448, 0.230776,
		-0.170376, 0.888976, -0.425082,
		-0.327769, 0.355697, 0.875242,
		46.470982, 33.995789, 35.325134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709278, 34.382935, 34.623108>,  <46.700420, 33.746803, 34.712463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709278, 34.382935, 34.623108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752880, 34.300228, 35.012028>,  <46.779041, 34.250603, 35.245380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752880, 34.300228, 35.012028>,  <46.709278, 34.382935, 34.623108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752880, 34.300228, 35.012028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793330, 0.607460, 0.040241,
		-0.598953, 0.766967, 0.230254,
		0.109006, -0.206770, 0.972298,
		46.785583, 34.238197, 35.303719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427086, 34.689289, 34.664242>,  <46.709278, 34.382935, 34.623108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427086, 34.689289, 34.664242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661480, 34.863884, 34.937328>,  <47.802116, 34.968639, 35.101181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661480, 34.863884, 34.937328>,  <47.427086, 34.689289, 34.664242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661480, 34.863884, 34.937328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810071, -0.294570, -0.506965,
		-0.020174, 0.850124, -0.526196,
		0.585985, 0.436483, 0.682718,
		47.837276, 34.994827, 35.142143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.898693, 39.999283, 44.926350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507698, 40.049564, 44.858559>,  <37.273102, 40.079731, 44.817883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507698, 40.049564, 44.858559>,  <37.898693, 39.999283, 44.926350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507698, 40.049564, 44.858559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056143, -0.619309, -0.783138,
		-0.203403, -0.775020, 0.598307,
		-0.977484, 0.125702, -0.169481,
		37.214455, 40.087276, 44.807713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581711, 39.332928, 44.937012>,  <37.898693, 39.999283, 44.926350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581711, 39.332928, 44.937012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345242, 39.565403, 44.713322>,  <37.203358, 39.704887, 44.579105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345242, 39.565403, 44.713322>,  <37.581711, 39.332928, 44.937012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345242, 39.565403, 44.713322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028598, -0.677824, -0.734667,
		-0.806037, -0.450309, 0.384091,
		-0.591174, 0.581185, -0.559230,
		37.167889, 39.739758, 44.545551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182957, 38.886650, 44.508244>,  <37.581711, 39.332928, 44.937012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182957, 38.886650, 44.508244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106239, 39.237652, 44.332424>,  <37.060207, 39.448254, 44.226933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106239, 39.237652, 44.332424>,  <37.182957, 38.886650, 44.508244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106239, 39.237652, 44.332424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049268, -0.438690, -0.897287,
		-0.980198, -0.193751, 0.040906,
		-0.191795, 0.877503, -0.439548,
		37.048702, 39.500904, 44.200562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870705, 38.661201, 43.848816>,  <37.182957, 38.886650, 44.508244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870705, 38.661201, 43.848816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972309, 39.039719, 43.768810>,  <37.033272, 39.266830, 43.720806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972309, 39.039719, 43.768810>,  <36.870705, 38.661201, 43.848816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972309, 39.039719, 43.768810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235099, -0.260999, -0.936274,
		-0.938193, 0.190804, -0.288770,
		0.254014, 0.946294, -0.200010,
		37.048512, 39.323608, 43.708809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426636, 38.970512, 43.380085>,  <36.870705, 38.661201, 43.848816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426636, 38.970512, 43.380085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791553, 39.130699, 43.345795>,  <37.010502, 39.226810, 43.325222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791553, 39.130699, 43.345795>,  <36.426636, 38.970512, 43.380085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791553, 39.130699, 43.345795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062838, -0.343723, -0.936966,
		-0.404691, 0.849400, -0.338740,
		0.912292, 0.400468, -0.085727,
		37.065243, 39.250839, 43.320076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330322, 39.110828, 42.674023>,  <36.426636, 38.970512, 43.380085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330322, 39.110828, 42.674023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715672, 39.157013, 42.770836>,  <36.946880, 39.184723, 42.828922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715672, 39.157013, 42.770836>,  <36.330322, 39.110828, 42.674023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715672, 39.157013, 42.770836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264449, -0.558707, -0.786075,
		0.044463, 0.821289, -0.568777,
		0.963374, 0.115462, 0.242031,
		37.004684, 39.191650, 42.843445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712383, 39.333969, 41.976875>,  <36.330322, 39.110828, 42.674023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712383, 39.333969, 41.976875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983898, 39.182865, 42.228764>,  <37.146809, 39.092201, 42.379894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983898, 39.182865, 42.228764>,  <36.712383, 39.333969, 41.976875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983898, 39.182865, 42.228764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296580, -0.643457, -0.705693,
		0.671780, 0.665777, -0.324734,
		0.678787, -0.377761, 0.629718,
		37.187534, 39.069538, 42.417679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243465, 39.222336, 41.649605>,  <36.712383, 39.333969, 41.976875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243465, 39.222336, 41.649605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320381, 38.991852, 41.967350>,  <37.366531, 38.853561, 42.157997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320381, 38.991852, 41.967350>,  <37.243465, 39.222336, 41.649605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320381, 38.991852, 41.967350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166514, -0.778571, -0.605062,
		0.967107, 0.248622, -0.053768,
		0.192294, -0.576207, 0.794360,
		37.378071, 38.818989, 42.205658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989185, 39.040176, 41.606644>,  <37.243465, 39.222336, 41.649605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989185, 39.040176, 41.606644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770821, 38.779057, 41.816723>,  <37.639801, 38.622383, 41.942772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770821, 38.779057, 41.816723>,  <37.989185, 39.040176, 41.606644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770821, 38.779057, 41.816723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424877, -0.755961, -0.497999,
		0.722125, -0.048716, 0.690045,
		-0.545907, -0.652802, 0.525200,
		37.607048, 38.583218, 41.974281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438324, 38.541027, 41.829330>,  <37.989185, 39.040176, 41.606644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438324, 38.541027, 41.829330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.103565, 38.330296, 41.888737>,  <37.902710, 38.203857, 41.924381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.103565, 38.330296, 41.888737>,  <38.438324, 38.541027, 41.829330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103565, 38.330296, 41.888737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357695, -0.731760, -0.580157,
		0.414321, -0.432408, 0.800851,
		-0.836895, -0.526831, 0.148514,
		37.852497, 38.172245, 41.933292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566452, 37.720272, 41.950504>,  <38.438324, 38.541027, 41.829330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566452, 37.720272, 41.950504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185181, 37.750366, 41.833344>,  <37.956417, 37.768425, 41.763046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185181, 37.750366, 41.833344>,  <38.566452, 37.720272, 41.950504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185181, 37.750366, 41.833344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099915, -0.835809, -0.539852,
		-0.285426, -0.543841, 0.789157,
		-0.953178, 0.075239, -0.292900,
		37.899227, 37.772938, 41.745472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368702, 37.080048, 41.876389>,  <38.566452, 37.720272, 41.950504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368702, 37.080048, 41.876389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048996, 37.243507, 41.700127>,  <37.857170, 37.341583, 41.594368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048996, 37.243507, 41.700127>,  <38.368702, 37.080048, 41.876389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048996, 37.243507, 41.700127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165161, -0.854363, -0.492734,
		-0.577835, -0.321047, 0.750357,
		-0.799268, 0.408648, -0.440656,
		37.809216, 37.366100, 41.567928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874626, 36.597397, 41.924557>,  <38.368702, 37.080048, 41.876389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874626, 36.597397, 41.924557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775654, 36.835606, 41.618843>,  <37.716270, 36.978531, 41.435413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775654, 36.835606, 41.618843>,  <37.874626, 36.597397, 41.924557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775654, 36.835606, 41.618843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198456, -0.803239, -0.561625,
		-0.948364, 0.012713, 0.316931,
		-0.247431, 0.595521, -0.764285,
		37.701424, 37.014263, 41.389557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277748, 36.261669, 41.599884>,  <37.874626, 36.597397, 41.924557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277748, 36.261669, 41.599884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435383, 36.499710, 41.319725>,  <37.529964, 36.642532, 41.151630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435383, 36.499710, 41.319725>,  <37.277748, 36.261669, 41.599884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435383, 36.499710, 41.319725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014354, -0.757989, -0.652109,
		-0.918961, 0.267040, -0.290171,
		0.394086, 0.595098, -0.700396,
		37.553608, 36.678238, 41.109608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957596, 36.063183, 41.057606>,  <37.277748, 36.261669, 41.599884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957596, 36.063183, 41.057606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286579, 36.239838, 40.914207>,  <37.483967, 36.345833, 40.828167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286579, 36.239838, 40.914207>,  <36.957596, 36.063183, 41.057606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286579, 36.239838, 40.914207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036848, -0.670278, -0.741195,
		-0.567635, 0.596390, -0.567547,
		0.822455, 0.441641, -0.358497,
		37.533318, 36.372330, 40.806660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829319, 35.997269, 40.433701>,  <36.957596, 36.063183, 41.057606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829319, 35.997269, 40.433701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223114, 36.066547, 40.422474>,  <37.459393, 36.108116, 40.415737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223114, 36.066547, 40.422474>,  <36.829319, 35.997269, 40.433701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223114, 36.066547, 40.422474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094036, -0.655881, -0.748984,
		-0.148134, 0.734725, -0.661993,
		0.984486, 0.173201, -0.028068,
		37.518459, 36.118507, 40.414055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929298, 35.883350, 39.750965>,  <36.829319, 35.997269, 40.433701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929298, 35.883350, 39.750965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291336, 35.878502, 39.920982>,  <37.508556, 35.875591, 40.022991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291336, 35.878502, 39.920982>,  <36.929298, 35.883350, 39.750965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291336, 35.878502, 39.920982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297984, -0.694999, -0.654356,
		0.303339, 0.718909, -0.625425,
		0.905092, -0.012125, 0.425043,
		37.562862, 35.874863, 40.048496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330475, 35.895470, 39.207813>,  <36.929298, 35.883350, 39.750965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330475, 35.895470, 39.207813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550076, 35.743881, 39.505802>,  <37.681835, 35.652927, 39.684593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550076, 35.743881, 39.505802>,  <37.330475, 35.895470, 39.207813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550076, 35.743881, 39.505802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325660, -0.723876, -0.608234,
		0.769765, 0.576530, -0.273997,
		0.549005, -0.378967, 0.744968,
		37.714779, 35.630192, 39.729294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050251, 35.663548, 38.946712>,  <37.330475, 35.895470, 39.207813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050251, 35.663548, 38.946712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992081, 35.473480, 39.293831>,  <37.957176, 35.359440, 39.502102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992081, 35.473480, 39.293831>,  <38.050251, 35.663548, 38.946712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992081, 35.473480, 39.293831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407139, -0.828151, -0.385232,
		0.901714, 0.297289, 0.313897,
		-0.145429, -0.475169, 0.867793,
		37.948452, 35.330929, 39.554169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610794, 35.404041, 39.062866>,  <38.050251, 35.663548, 38.946712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610794, 35.404041, 39.062866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424641, 35.193665, 39.347630>,  <38.312950, 35.067440, 39.518486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424641, 35.193665, 39.347630>,  <38.610794, 35.404041, 39.062866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424641, 35.193665, 39.347630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481029, -0.825450, -0.295369,
		0.742990, 0.204989, 0.637139,
		-0.465379, -0.525938, 0.711907,
		38.285027, 35.035885, 39.561203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976562, 34.846874, 39.232994>,  <38.610794, 35.404041, 39.062866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976562, 34.846874, 39.232994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626598, 34.698685, 39.357758>,  <38.416622, 34.609772, 39.432613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626598, 34.698685, 39.357758>,  <38.976562, 34.846874, 39.232994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626598, 34.698685, 39.357758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215601, -0.874662, -0.434146,
		0.433653, -0.312590, 0.845123,
		-0.874906, -0.370478, 0.311905,
		38.364128, 34.587540, 39.451328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100971, 34.225826, 39.431358>,  <38.976562, 34.846874, 39.232994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100971, 34.225826, 39.431358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709641, 34.218895, 39.348824>,  <38.474842, 34.214737, 39.299301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709641, 34.218895, 39.348824>,  <39.100971, 34.225826, 39.431358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709641, 34.218895, 39.348824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084325, -0.943459, -0.320583,
		-0.189115, -0.331035, 0.924474,
		-0.978328, -0.017329, -0.206337,
		38.416142, 34.213696, 39.286922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475235, 34.657410, 39.895512>,  <39.100971, 34.225826, 39.431358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475235, 34.657410, 39.895512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547047, 34.359474, 40.152565>,  <39.590134, 34.180714, 40.306797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547047, 34.359474, 40.152565>,  <39.475235, 34.657410, 39.895512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547047, 34.359474, 40.152565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373680, 0.552654, 0.744941,
		-0.910018, -0.373878, -0.179116,
		0.179528, -0.744841, 0.642636,
		39.600906, 34.136021, 40.345356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924248, 34.604221, 40.358295>,  <39.475235, 34.657410, 39.895512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924248, 34.604221, 40.358295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188320, 34.390427, 40.569382>,  <39.346764, 34.262150, 40.696033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188320, 34.390427, 40.569382>,  <38.924248, 34.604221, 40.358295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188320, 34.390427, 40.569382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343403, 0.410069, 0.844936,
		-0.668007, -0.739031, 0.087176,
		0.660182, -0.534488, 0.527715,
		39.386375, 34.230080, 40.727695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565472, 34.354523, 40.948929>,  <38.924248, 34.604221, 40.358295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565472, 34.354523, 40.948929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954895, 34.346195, 41.039917>,  <39.188549, 34.341198, 41.094509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954895, 34.346195, 41.039917>,  <38.565472, 34.354523, 40.948929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954895, 34.346195, 41.039917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211625, 0.292632, 0.932514,
		-0.085984, -0.955998, 0.280488,
		0.973562, -0.020823, 0.227475,
		39.246964, 34.339947, 41.108158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639580, 34.036785, 41.612026>,  <38.565472, 34.354523, 40.948929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639580, 34.036785, 41.612026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967278, 34.255867, 41.544079>,  <39.163895, 34.387318, 41.503311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967278, 34.255867, 41.544079>,  <38.639580, 34.036785, 41.612026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967278, 34.255867, 41.544079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070879, 0.390666, 0.917800,
		0.569048, -0.739861, 0.358872,
		0.819244, 0.547709, -0.169868,
		39.213051, 34.420177, 41.493118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117191, 33.957920, 42.236088>,  <38.639580, 34.036785, 41.612026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117191, 33.957920, 42.236088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230762, 34.291473, 42.046764>,  <39.298904, 34.491608, 41.933170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230762, 34.291473, 42.046764>,  <39.117191, 33.957920, 42.236088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230762, 34.291473, 42.046764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113633, 0.519406, 0.846938,
		0.952089, -0.186684, 0.242230,
		0.283926, 0.833886, -0.473308,
		39.315941, 34.541637, 41.904774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661068, 34.198639, 42.705528>,  <39.117191, 33.957920, 42.236088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661068, 34.198639, 42.705528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540081, 34.511539, 42.487682>,  <39.467491, 34.699280, 42.356976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540081, 34.511539, 42.487682>,  <39.661068, 34.198639, 42.705528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540081, 34.511539, 42.487682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006231, 0.572984, 0.819543,
		0.953141, 0.244488, -0.178180,
		-0.302463, 0.782250, -0.544611,
		39.449341, 34.746216, 42.324299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036201, 34.854832, 42.977707>,  <39.661068, 34.198639, 42.705528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036201, 34.854832, 42.977707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753933, 35.018459, 42.746296>,  <39.584572, 35.116634, 42.607449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753933, 35.018459, 42.746296>,  <40.036201, 34.854832, 42.977707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753933, 35.018459, 42.746296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062279, 0.777534, 0.625749,
		0.705800, 0.477601, -0.523205,
		-0.705668, 0.409069, -0.578528,
		39.542233, 35.141178, 42.572739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228024, 35.504761, 42.932117>,  <40.036201, 34.854832, 42.977707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228024, 35.504761, 42.932117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.834251, 35.509613, 42.861969>,  <39.597988, 35.512524, 42.819881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.834251, 35.509613, 42.861969>,  <40.228024, 35.504761, 42.932117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834251, 35.509613, 42.861969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121186, 0.675820, 0.727036,
		0.127340, 0.736967, -0.663825,
		-0.984428, 0.012134, -0.175369,
		39.538921, 35.513252, 42.809357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127800, 36.135406, 42.750416>,  <40.228024, 35.504761, 42.932117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127800, 36.135406, 42.750416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764004, 36.008648, 42.858047>,  <39.545727, 35.932590, 42.922626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764004, 36.008648, 42.858047>,  <40.127800, 36.135406, 42.750416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764004, 36.008648, 42.858047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050074, 0.726045, 0.685821,
		-0.412703, 0.610272, -0.676198,
		-0.909488, -0.316900, 0.269082,
		39.491158, 35.913578, 42.938770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796593, 36.816570, 43.054665>,  <40.127800, 36.135406, 42.750416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796593, 36.816570, 43.054665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.579079, 36.509602, 43.190521>,  <39.448570, 36.325420, 43.272038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.579079, 36.509602, 43.190521>,  <39.796593, 36.816570, 43.054665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579079, 36.509602, 43.190521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151180, 0.487670, 0.859839,
		-0.825497, 0.416218, -0.381205,
		-0.543783, -0.767425, 0.339646,
		39.415943, 36.279373, 43.292416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184135, 37.093895, 43.340096>,  <39.796593, 36.816570, 43.054665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184135, 37.093895, 43.340096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221107, 36.729458, 43.500778>,  <39.243290, 36.510796, 43.597187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221107, 36.729458, 43.500778>,  <39.184135, 37.093895, 43.340096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221107, 36.729458, 43.500778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202736, 0.377762, 0.903434,
		-0.974862, -0.164941, -0.149797,
		0.092425, -0.911093, 0.401705,
		39.248837, 36.456131, 43.621288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506668, 36.899090, 43.676605>,  <39.184135, 37.093895, 43.340096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506668, 36.899090, 43.676605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.797649, 36.678116, 43.839397>,  <38.972237, 36.545532, 43.937073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.797649, 36.678116, 43.839397>,  <38.506668, 36.899090, 43.676605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797649, 36.678116, 43.839397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285532, 0.295616, 0.911637,
		-0.623928, -0.779377, 0.057309,
		0.727451, -0.552433, 0.406980,
		39.015884, 36.512386, 43.961491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181374, 36.320316, 44.077797>,  <38.506668, 36.899090, 43.676605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181374, 36.320316, 44.077797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546867, 36.407864, 44.214722>,  <38.766163, 36.460392, 44.296879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546867, 36.407864, 44.214722>,  <38.181374, 36.320316, 44.077797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546867, 36.407864, 44.214722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378918, 0.154968, 0.912363,
		0.146625, -0.963374, 0.224528,
		0.913741, 0.218852, 0.342318,
		38.820988, 36.473522, 44.317417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062992, 36.292164, 44.765339>,  <38.181374, 36.320316, 44.077797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062992, 36.292164, 44.765339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440575, 36.424015, 44.772228>,  <38.667122, 36.503128, 44.776363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440575, 36.424015, 44.772228>,  <38.062992, 36.292164, 44.765339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440575, 36.424015, 44.772228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133945, 0.334837, 0.932707,
		0.301675, -0.882741, 0.360223,
		0.943956, 0.329624, 0.017226,
		38.723759, 36.522903, 44.777397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355885, 36.109322, 45.521751>,  <38.062992, 36.292164, 44.765339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355885, 36.109322, 45.521751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568005, 36.409611, 45.364170>,  <38.695278, 36.589783, 45.269623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568005, 36.409611, 45.364170>,  <38.355885, 36.109322, 45.521751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568005, 36.409611, 45.364170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020644, 0.453098, 0.891222,
		0.847556, -0.480751, 0.224782,
		0.530304, 0.750720, -0.393950,
		38.727097, 36.634827, 45.245983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851620, 36.257385, 46.086533>,  <38.355885, 36.109322, 45.521751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851620, 36.257385, 46.086533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810493, 36.581791, 45.856163>,  <38.785816, 36.776432, 45.717941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810493, 36.581791, 45.856163>,  <38.851620, 36.257385, 46.086533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810493, 36.581791, 45.856163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063658, 0.572442, 0.817471,
		0.992661, 0.120712, -0.007230,
		-0.102817, 0.811011, -0.575925,
		38.779648, 36.825096, 45.683384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244801, 36.761726, 46.365555>,  <38.851620, 36.257385, 46.086533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244801, 36.761726, 46.365555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966789, 36.954151, 46.151821>,  <38.799984, 37.069607, 46.023579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966789, 36.954151, 46.151821>,  <39.244801, 36.761726, 46.365555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966789, 36.954151, 46.151821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175005, 0.607640, 0.774691,
		0.697361, 0.631942, -0.338137,
		-0.695026, 0.481064, -0.534338,
		38.758282, 37.098469, 45.991520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321350, 37.476135, 46.475502>,  <39.244801, 36.761726, 46.365555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321350, 37.476135, 46.475502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951302, 37.449665, 46.325962>,  <38.729271, 37.433784, 46.236237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951302, 37.449665, 46.325962>,  <39.321350, 37.476135, 46.475502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951302, 37.449665, 46.325962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313546, 0.688421, 0.654038,
		0.214089, 0.722287, -0.657623,
		-0.925124, -0.066173, -0.373853,
		38.673763, 37.429813, 46.213806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.168190, 38.193695, 46.017532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.823776, 38.020725, 46.124577>,  <38.617126, 37.916943, 46.188805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.823776, 38.020725, 46.124577>,  <39.168190, 38.193695, 46.017532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823776, 38.020725, 46.124577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304119, 0.859628, 0.410549,
		-0.407583, 0.272112, -0.871683,
		-0.861039, -0.432428, 0.267615,
		38.565464, 37.890995, 46.204861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620876, 38.625328, 45.704697>,  <39.168190, 38.193695, 46.017532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620876, 38.625328, 45.704697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441628, 38.419285, 45.996960>,  <38.334080, 38.295658, 46.172318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441628, 38.419285, 45.996960>,  <38.620876, 38.625328, 45.704697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441628, 38.419285, 45.996960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465042, 0.832339, 0.301575,
		-0.763494, -0.204642, -0.612535,
		-0.448122, -0.515105, 0.730653,
		38.307190, 38.264751, 46.216156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893887, 38.767696, 45.722500>,  <38.620876, 38.625328, 45.704697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893887, 38.767696, 45.722500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974766, 38.632309, 46.090099>,  <38.023293, 38.551075, 46.310658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974766, 38.632309, 46.090099>,  <37.893887, 38.767696, 45.722500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974766, 38.632309, 46.090099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514569, 0.761696, 0.393749,
		-0.833268, -0.552501, -0.020154,
		0.202196, -0.338469, 0.918997,
		38.035423, 38.530769, 46.365799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241238, 38.978477, 46.148331>,  <37.893887, 38.767696, 45.722500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241238, 38.978477, 46.148331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543308, 38.925907, 46.405216>,  <37.724552, 38.894363, 46.559349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543308, 38.925907, 46.405216>,  <37.241238, 38.978477, 46.148331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543308, 38.925907, 46.405216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306425, 0.795293, 0.523080,
		-0.579495, -0.591807, 0.560313,
		0.755175, -0.131428, 0.642212,
		37.769859, 38.886478, 46.597881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048779, 39.351967, 46.777206>,  <37.241238, 38.978477, 46.148331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048779, 39.351967, 46.777206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418209, 39.241295, 46.883381>,  <37.639866, 39.174892, 46.947086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418209, 39.241295, 46.883381>,  <37.048779, 39.351967, 46.777206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418209, 39.241295, 46.883381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084506, 0.822158, 0.562952,
		-0.373990, -0.497497, 0.782705,
		0.923574, -0.276682, 0.265438,
		37.695282, 39.158291, 46.963013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052734, 39.248409, 47.461727>,  <37.048779, 39.351967, 46.777206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052734, 39.248409, 47.461727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422848, 39.355591, 47.354359>,  <37.644917, 39.419899, 47.289936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422848, 39.355591, 47.354359>,  <37.052734, 39.248409, 47.461727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422848, 39.355591, 47.354359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063860, 0.807681, 0.586151,
		0.373864, -0.525213, 0.764445,
		0.925282, 0.267958, -0.268423,
		37.700432, 39.435978, 47.273830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409496, 39.412395, 48.058990>,  <37.052734, 39.248409, 47.461727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409496, 39.412395, 48.058990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598000, 39.619774, 47.773575>,  <37.711102, 39.744202, 47.602325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598000, 39.619774, 47.773575>,  <37.409496, 39.412395, 48.058990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598000, 39.619774, 47.773575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102695, 0.835752, 0.539418,
		0.876000, -0.180924, 0.447091,
		0.471251, 0.518445, -0.713539,
		37.739376, 39.775307, 47.559513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908989, 39.802597, 48.450836>,  <37.409496, 39.412395, 48.058990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908989, 39.802597, 48.450836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878887, 39.979198, 48.093197>,  <37.860825, 40.085159, 47.878613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878887, 39.979198, 48.093197>,  <37.908989, 39.802597, 48.450836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878887, 39.979198, 48.093197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022143, 0.895679, 0.444151,
		0.996918, 0.053223, -0.057630,
		-0.075258, 0.441506, -0.894097,
		37.856312, 40.111649, 47.824966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338524, 40.285664, 48.473457>,  <37.908989, 39.802597, 48.450836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338524, 40.285664, 48.473457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080429, 40.418510, 48.198250>,  <37.925571, 40.498219, 48.033127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080429, 40.418510, 48.198250>,  <38.338524, 40.285664, 48.473457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080429, 40.418510, 48.198250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000132, 0.900520, 0.434814,
		0.763980, 0.280650, -0.581008,
		-0.645240, 0.332113, -0.688017,
		37.886856, 40.518143, 47.991844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682343, 40.972298, 48.233952>,  <38.338524, 40.285664, 48.473457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682343, 40.972298, 48.233952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287445, 40.926903, 48.189270>,  <38.050507, 40.899666, 48.162460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287445, 40.926903, 48.189270>,  <38.682343, 40.972298, 48.233952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287445, 40.926903, 48.189270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156896, 0.813200, 0.560437,
		0.027237, 0.570812, -0.820629,
		-0.987239, -0.113488, -0.111707,
		37.991272, 40.892857, 48.155758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444153, 41.648621, 48.277580>,  <38.682343, 40.972298, 48.233952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444153, 41.648621, 48.277580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113125, 41.430771, 48.332012>,  <37.914509, 41.300060, 48.364670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113125, 41.430771, 48.332012>,  <38.444153, 41.648621, 48.277580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113125, 41.430771, 48.332012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344314, 0.683905, 0.643212,
		-0.443373, 0.485448, -0.753499,
		-0.827568, -0.544623, 0.136079,
		37.864853, 41.267384, 48.372837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906151, 42.166359, 48.281143>,  <38.444153, 41.648621, 48.277580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906151, 42.166359, 48.281143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769794, 41.837841, 48.464123>,  <37.687981, 41.640728, 48.573910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769794, 41.837841, 48.464123>,  <37.906151, 42.166359, 48.281143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769794, 41.837841, 48.464123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419078, 0.568333, 0.708076,
		-0.841527, 0.049668, -0.537927,
		-0.340891, -0.821298, 0.457452,
		37.667526, 41.591450, 48.601360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207985, 42.315987, 48.360977>,  <37.906151, 42.166359, 48.281143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207985, 42.315987, 48.360977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.273312, 42.033447, 48.636486>,  <37.312508, 41.863926, 48.801792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.273312, 42.033447, 48.636486>,  <37.207985, 42.315987, 48.360977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273312, 42.033447, 48.636486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544639, 0.517568, 0.659918,
		-0.822616, -0.482906, -0.300176,
		0.163317, -0.706346, 0.688769,
		37.322308, 41.821545, 48.843117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586605, 42.214596, 48.656940>,  <37.207985, 42.315987, 48.360977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586605, 42.214596, 48.656940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832565, 42.060192, 48.932007>,  <36.980141, 41.967548, 49.097046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832565, 42.060192, 48.932007>,  <36.586605, 42.214596, 48.656940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832565, 42.060192, 48.932007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520509, 0.456418, 0.721632,
		-0.592425, -0.801671, 0.079729,
		0.614901, -0.386013, 0.687670,
		37.017036, 41.944389, 49.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187092, 41.900398, 49.214314>,  <36.586605, 42.214596, 48.656940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187092, 41.900398, 49.214314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542435, 41.931255, 49.395363>,  <36.755642, 41.949768, 49.503990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542435, 41.931255, 49.395363>,  <36.187092, 41.900398, 49.214314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542435, 41.931255, 49.395363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458775, 0.188733, 0.868277,
		-0.018446, -0.978994, 0.203053,
		0.888361, 0.077139, 0.452620,
		36.808945, 41.954395, 49.531147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136299, 41.459610, 49.865108>,  <36.187092, 41.900398, 49.214314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136299, 41.459610, 49.865108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443150, 41.709023, 49.925404>,  <36.627258, 41.858669, 49.961582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443150, 41.709023, 49.925404>,  <36.136299, 41.459610, 49.865108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443150, 41.709023, 49.925404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335635, 0.189872, 0.922658,
		0.546686, -0.758389, 0.354935,
		0.767126, 0.623533, 0.150742,
		36.673286, 41.896084, 49.970627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404964, 41.277779, 50.580242>,  <36.136299, 41.459610, 49.865108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404964, 41.277779, 50.580242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567982, 41.638950, 50.525650>,  <36.665794, 41.855652, 50.492893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567982, 41.638950, 50.525650>,  <36.404964, 41.277779, 50.580242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567982, 41.638950, 50.525650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434084, 0.323044, 0.840960,
		0.803416, -0.283485, 0.523602,
		0.407546, 0.902928, -0.136482,
		36.690247, 41.909828, 50.484707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736721, 41.442303, 51.151268>,  <36.404964, 41.277779, 50.580242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736721, 41.442303, 51.151268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645588, 41.787376, 50.970665>,  <36.590908, 41.994423, 50.862301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645588, 41.787376, 50.970665>,  <36.736721, 41.442303, 51.151268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645588, 41.787376, 50.970665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396592, 0.341281, 0.852198,
		0.889273, 0.373226, 0.264379,
		-0.227835, 0.862687, -0.451511,
		36.577236, 42.046181, 50.835213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981461, 41.897770, 51.597034>,  <36.736721, 41.442303, 51.151268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981461, 41.897770, 51.597034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721333, 42.105469, 51.375237>,  <36.565254, 42.230087, 51.242157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721333, 42.105469, 51.375237>,  <36.981461, 41.897770, 51.597034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721333, 42.105469, 51.375237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356463, 0.435991, 0.826345,
		0.670831, 0.735047, -0.098443,
		-0.650323, 0.519247, -0.554493,
		36.526237, 42.261242, 51.208889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032509, 42.657894, 51.722477>,  <36.981461, 41.897770, 51.597034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032509, 42.657894, 51.722477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664276, 42.614204, 51.572495>,  <36.443336, 42.587990, 51.482506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664276, 42.614204, 51.572495>,  <37.032509, 42.657894, 51.722477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664276, 42.614204, 51.572495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377874, 0.491679, 0.784515,
		0.098673, 0.863899, -0.493904,
		-0.920584, -0.109223, -0.374961,
		36.388100, 42.581436, 51.460007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800419, 43.287918, 51.894104>,  <37.032509, 42.657894, 51.722477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800419, 43.287918, 51.894104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465389, 43.098145, 51.785744>,  <36.264374, 42.984280, 51.720730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465389, 43.098145, 51.785744>,  <36.800419, 43.287918, 51.894104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465389, 43.098145, 51.785744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522294, 0.549895, 0.651786,
		-0.160265, 0.687405, -0.708371,
		-0.837571, -0.474436, -0.270898,
		36.214119, 42.955814, 51.704475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219482, 43.794724, 51.901421>,  <36.800419, 43.287918, 51.894104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219482, 43.794724, 51.901421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982967, 43.472427, 51.887794>,  <35.841057, 43.279049, 51.879620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982967, 43.472427, 51.887794>,  <36.219482, 43.794724, 51.901421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982967, 43.472427, 51.887794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724786, 0.512409, 0.460568,
		-0.353646, 0.297014, -0.886971,
		-0.591287, -0.805741, -0.034060,
		35.805580, 43.230705, 51.877575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674706, 44.282780, 52.235458>,  <36.219482, 43.794724, 51.901421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674706, 44.282780, 52.235458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507721, 44.528793, 51.967888>,  <35.407532, 44.676403, 51.807346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507721, 44.528793, 51.967888>,  <35.674706, 44.282780, 52.235458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507721, 44.528793, 51.967888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270273, -0.618781, -0.737606,
		-0.867573, -0.488711, 0.092086,
		-0.417457, 0.615038, -0.668923,
		35.382484, 44.713306, 51.767212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892162, 44.428928, 51.948818>,  <35.674706, 44.282780, 52.235458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892162, 44.428928, 51.948818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577236, 44.417580, 51.702457>,  <34.388283, 44.410770, 51.554642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577236, 44.417580, 51.702457>,  <34.892162, 44.428928, 51.948818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577236, 44.417580, 51.702457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394423, -0.790966, -0.467763,
		-0.473888, -0.611202, 0.633927,
		-0.787313, -0.028368, -0.615902,
		34.341042, 44.409069, 51.517689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143852, 43.881763, 51.593002>,  <34.892162, 44.428928, 51.948818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143852, 43.881763, 51.593002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771332, 43.918644, 51.452042>,  <34.547821, 43.940773, 51.367466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771332, 43.918644, 51.452042>,  <35.143852, 43.881763, 51.593002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771332, 43.918644, 51.452042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157151, -0.771079, -0.617042,
		-0.328617, -0.630030, 0.703614,
		-0.931297, 0.092197, -0.352399,
		34.491943, 43.946304, 51.346321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951977, 43.268696, 51.586838>,  <35.143852, 43.881763, 51.593002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951977, 43.268696, 51.586838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688755, 43.437737, 51.337559>,  <34.530823, 43.539162, 51.187992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688755, 43.437737, 51.337559>,  <34.951977, 43.268696, 51.586838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688755, 43.437737, 51.337559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113930, -0.762239, -0.637191,
		-0.744300, -0.490308, 0.453448,
		-0.658055, 0.422600, -0.623195,
		34.491341, 43.564518, 51.150600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632015, 42.708355, 51.243851>,  <34.951977, 43.268696, 51.586838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632015, 42.708355, 51.243851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521271, 43.016880, 51.014614>,  <34.454826, 43.201996, 50.877071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521271, 43.016880, 51.014614>,  <34.632015, 42.708355, 51.243851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521271, 43.016880, 51.014614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154377, -0.624355, -0.765733,
		-0.948429, -0.123527, 0.291930,
		-0.276857, 0.771311, -0.573087,
		34.438213, 43.248272, 50.842690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905804, 42.646732, 51.010872>,  <34.632015, 42.708355, 51.243851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905804, 42.646732, 51.010872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096020, 42.890705, 50.757305>,  <34.210148, 43.037086, 50.605164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096020, 42.890705, 50.757305>,  <33.905804, 42.646732, 51.010872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096020, 42.890705, 50.757305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352549, -0.528072, -0.772560,
		-0.805960, 0.590870, -0.036090,
		0.475540, 0.609929, -0.633915,
		34.238682, 43.073685, 50.567131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487434, 42.536736, 50.388893>,  <33.905804, 42.646732, 51.010872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487434, 42.536736, 50.388893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845158, 42.684845, 50.288403>,  <34.059792, 42.773708, 50.228107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845158, 42.684845, 50.288403>,  <33.487434, 42.536736, 50.388893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845158, 42.684845, 50.288403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001371, -0.559183, -0.829043,
		-0.447449, 0.741765, -0.499574,
		0.894308, 0.370270, -0.251223,
		34.113449, 42.795925, 50.213036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420654, 42.707642, 49.668018>,  <33.487434, 42.536736, 50.388893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420654, 42.707642, 49.668018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815624, 42.690472, 49.728867>,  <34.052608, 42.680172, 49.765377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815624, 42.690472, 49.728867>,  <33.420654, 42.707642, 49.668018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815624, 42.690472, 49.728867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116360, -0.453970, -0.883387,
		0.106974, 0.889983, -0.443269,
		0.987430, -0.042920, 0.152121,
		34.111855, 42.677597, 49.774502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763969, 43.013870, 49.105099>,  <33.420654, 42.707642, 49.668018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763969, 43.013870, 49.105099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062252, 42.790661, 49.250713>,  <34.241222, 42.656734, 49.338081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062252, 42.790661, 49.250713>,  <33.763969, 43.013870, 49.105099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062252, 42.790661, 49.250713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180447, -0.356814, -0.916582,
		0.641370, 0.749194, -0.165386,
		0.745710, -0.558025, 0.364039,
		34.285965, 42.623253, 49.359924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403767, 43.074947, 48.697124>,  <33.763969, 43.013870, 49.105099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403767, 43.074947, 48.697124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453873, 42.713493, 48.860954>,  <34.483936, 42.496620, 48.959251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.453873, 42.713493, 48.860954>,  <34.403767, 43.074947, 48.697124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453873, 42.713493, 48.860954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255125, -0.369606, -0.893478,
		0.958760, 0.216412, 0.184242,
		0.125262, -0.903636, 0.409576,
		34.491451, 42.442402, 48.983826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968830, 42.804665, 48.466854>,  <34.403767, 43.074947, 48.697124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968830, 42.804665, 48.466854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851929, 42.449112, 48.607975>,  <34.781788, 42.235779, 48.692650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851929, 42.449112, 48.607975>,  <34.968830, 42.804665, 48.466854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851929, 42.449112, 48.607975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247554, -0.426654, -0.869875,
		0.923744, -0.166888, 0.344740,
		-0.292257, -0.888884, 0.352805,
		34.764252, 42.182446, 48.713818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573311, 42.358280, 48.405087>,  <34.968830, 42.804665, 48.466854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573311, 42.358280, 48.405087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280663, 42.091217, 48.460175>,  <35.105072, 41.930981, 48.493229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280663, 42.091217, 48.460175>,  <35.573311, 42.358280, 48.405087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280663, 42.091217, 48.460175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324072, -0.518363, -0.791377,
		0.599757, -0.534356, 0.595613,
		-0.731621, -0.667655, 0.137723,
		35.061176, 41.890919, 48.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875935, 41.740383, 48.432331>,  <35.573311, 42.358280, 48.405087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875935, 41.740383, 48.432331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505474, 41.670891, 48.298431>,  <35.283195, 41.629196, 48.218090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505474, 41.670891, 48.298431>,  <35.875935, 41.740383, 48.432331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505474, 41.670891, 48.298431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375064, -0.517424, -0.769155,
		-0.039585, -0.837909, 0.544373,
		-0.926153, -0.173728, -0.334752,
		35.227627, 41.618771, 48.198006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826351, 41.053486, 48.270496>,  <35.875935, 41.740383, 48.432331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826351, 41.053486, 48.270496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517082, 41.214787, 48.074707>,  <35.331520, 41.311569, 47.957233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517082, 41.214787, 48.074707>,  <35.826351, 41.053486, 48.270496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517082, 41.214787, 48.074707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369686, -0.340531, -0.864506,
		-0.515298, -0.849367, 0.114212,
		-0.773175, 0.403255, -0.489474,
		35.285130, 41.335762, 47.927864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662689, 40.571404, 47.851784>,  <35.826351, 41.053486, 48.270496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662689, 40.571404, 47.851784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501102, 40.897274, 47.685356>,  <35.404152, 41.092796, 47.585499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501102, 40.897274, 47.685356>,  <35.662689, 40.571404, 47.851784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501102, 40.897274, 47.685356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348294, -0.283594, -0.893457,
		-0.845875, -0.505838, -0.169186,
		-0.403964, 0.814679, -0.416066,
		35.379913, 41.141678, 47.560535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329617, 40.341686, 47.252117>,  <35.662689, 40.571404, 47.851784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329617, 40.341686, 47.252117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397167, 40.729950, 47.183655>,  <35.437698, 40.962910, 47.142578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397167, 40.729950, 47.183655>,  <35.329617, 40.341686, 47.252117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397167, 40.729950, 47.183655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337349, -0.220081, -0.915292,
		-0.926108, 0.096837, -0.364619,
		0.168880, 0.970663, -0.171151,
		35.447830, 41.021149, 47.132309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143215, 40.468559, 46.592010>,  <35.329617, 40.341686, 47.252117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143215, 40.468559, 46.592010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375320, 40.793739, 46.611645>,  <35.514584, 40.988846, 46.623425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375320, 40.793739, 46.611645>,  <35.143215, 40.468559, 46.592010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375320, 40.793739, 46.611645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403750, -0.234804, -0.884224,
		-0.707302, 0.532904, -0.464476,
		0.580268, 0.812946, 0.049083,
		35.549400, 41.037624, 46.626369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123207, 40.781635, 45.970600>,  <35.143215, 40.468559, 46.592010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123207, 40.781635, 45.970600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463921, 40.932705, 46.115829>,  <35.668350, 41.023346, 46.202965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463921, 40.932705, 46.115829>,  <35.123207, 40.781635, 45.970600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463921, 40.932705, 46.115829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425254, -0.093693, -0.900212,
		-0.305969, 0.921186, -0.240413,
		0.851788, 0.377673, 0.363071,
		35.719456, 41.046005, 46.224751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424232, 41.200356, 45.434090>,  <35.123207, 40.781635, 45.970600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424232, 41.200356, 45.434090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753426, 41.154869, 45.656715>,  <35.950943, 41.127579, 45.790291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753426, 41.154869, 45.656715>,  <35.424232, 41.200356, 45.434090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753426, 41.154869, 45.656715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524944, -0.222206, -0.821619,
		0.217101, 0.968346, -0.123180,
		0.822983, -0.113712, 0.556569,
		36.000320, 41.120754, 45.823685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991257, 41.600540, 45.102341>,  <35.424232, 41.200356, 45.434090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991257, 41.600540, 45.102341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166866, 41.318573, 45.325176>,  <36.272232, 41.149391, 45.458878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166866, 41.318573, 45.325176>,  <35.991257, 41.600540, 45.102341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166866, 41.318573, 45.325176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665625, -0.161291, -0.728649,
		0.603491, 0.690707, 0.398400,
		0.439025, -0.704918, 0.557089,
		36.298573, 41.107098, 45.492302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697071, 41.703682, 45.092335>,  <35.991257, 41.600540, 45.102341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697071, 41.703682, 45.092335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653473, 41.317513, 45.187061>,  <36.627312, 41.085812, 45.243896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653473, 41.317513, 45.187061>,  <36.697071, 41.703682, 45.092335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653473, 41.317513, 45.187061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548146, -0.257112, -0.795883,
		0.829250, 0.043057, 0.557217,
		-0.108999, -0.965422, 0.236812,
		36.620773, 41.027885, 45.258106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265575, 41.462448, 44.737865>,  <36.697071, 41.703682, 45.092335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265575, 41.462448, 44.737865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055447, 41.135353, 44.831966>,  <36.929371, 40.939095, 44.888428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055447, 41.135353, 44.831966>,  <37.265575, 41.462448, 44.737865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055447, 41.135353, 44.831966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378455, -0.472160, -0.796138,
		0.762108, -0.329197, 0.557513,
		-0.525322, -0.817737, 0.235250,
		36.897850, 40.890034, 44.902542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.226826, 38.254723, 36.551834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850002, 38.277184, 36.419544>,  <39.623909, 38.290661, 36.340172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850002, 38.277184, 36.419544>,  <40.226826, 38.254723, 36.551834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850002, 38.277184, 36.419544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106491, -0.984956, 0.136096,
		-0.318103, 0.163429, 0.933864,
		-0.942057, 0.056156, -0.330721,
		39.567387, 38.294029, 36.320328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679657, 38.119671, 37.076378>,  <40.226826, 38.254723, 36.551834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679657, 38.119671, 37.076378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548927, 38.035412, 36.707855>,  <39.470490, 37.984856, 36.486740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548927, 38.035412, 36.707855>,  <39.679657, 38.119671, 37.076378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548927, 38.035412, 36.707855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115484, -0.976440, 0.182288,
		-0.938003, -0.046820, 0.343450,
		-0.326824, -0.210650, -0.921310,
		39.450882, 37.972218, 36.431461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296009, 37.580441, 37.199493>,  <39.679657, 38.119671, 37.076378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296009, 37.580441, 37.199493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360119, 37.563595, 36.805023>,  <39.398586, 37.553490, 36.568340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360119, 37.563595, 36.805023>,  <39.296009, 37.580441, 37.199493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360119, 37.563595, 36.805023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030247, -0.998830, 0.037737,
		-0.986608, 0.023780, -0.161364,
		0.160277, -0.042112, -0.986173,
		39.408203, 37.550961, 36.509171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848145, 37.083553, 37.015427>,  <39.296009, 37.580441, 37.199493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848145, 37.083553, 37.015427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111855, 37.129494, 36.718197>,  <39.270081, 37.157059, 36.539860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111855, 37.129494, 36.718197>,  <38.848145, 37.083553, 37.015427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111855, 37.129494, 36.718197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210125, -0.977033, 0.035412,
		-0.721941, -0.179484, -0.668271,
		0.659279, 0.114855, -0.743074,
		39.309639, 37.163952, 36.495274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689804, 36.582859, 36.489056>,  <38.848145, 37.083553, 37.015427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689804, 36.582859, 36.489056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071888, 36.667419, 36.406216>,  <39.301136, 36.718155, 36.356510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071888, 36.667419, 36.406216>,  <38.689804, 36.582859, 36.489056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071888, 36.667419, 36.406216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230448, -0.970392, 0.072335,
		-0.185678, -0.116821, -0.975642,
		0.955205, 0.211404, -0.207101,
		39.358448, 36.730839, 36.344086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840164, 36.074310, 36.036407>,  <38.689804, 36.582859, 36.489056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840164, 36.074310, 36.036407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197147, 36.194481, 36.171028>,  <39.411339, 36.266582, 36.251801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197147, 36.194481, 36.171028>,  <38.840164, 36.074310, 36.036407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197147, 36.194481, 36.171028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276907, -0.953738, 0.117076,
		0.356152, -0.011293, -0.934360,
		0.892456, 0.300428, 0.336548,
		39.464886, 36.284611, 36.271992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296680, 35.668285, 35.604038>,  <38.840164, 36.074310, 36.036407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296680, 35.668285, 35.604038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488911, 35.804897, 35.927124>,  <39.604248, 35.886864, 36.120975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488911, 35.804897, 35.927124>,  <39.296680, 35.668285, 35.604038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488911, 35.804897, 35.927124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448574, -0.887167, 0.108238,
		0.753545, 0.310303, -0.579554,
		0.480575, 0.341534, 0.807714,
		39.633083, 35.907356, 36.169437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842682, 35.271381, 35.619167>,  <39.296680, 35.668285, 35.604038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842682, 35.271381, 35.619167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876259, 35.438828, 35.980877>,  <39.896404, 35.539295, 36.197903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876259, 35.438828, 35.980877>,  <39.842682, 35.271381, 35.619167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876259, 35.438828, 35.980877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461752, -0.820507, 0.336975,
		0.883028, 0.389265, -0.262171,
		0.083941, 0.418617, 0.904275,
		39.901440, 35.564411, 36.252159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506561, 35.064674, 35.796932>,  <39.842682, 35.271381, 35.619167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506561, 35.064674, 35.796932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339886, 35.149498, 36.150520>,  <40.239880, 35.200394, 36.362675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339886, 35.149498, 36.150520>,  <40.506561, 35.064674, 35.796932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339886, 35.149498, 36.150520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496205, -0.761707, 0.416633,
		0.761677, 0.612236, 0.212168,
		-0.416687, 0.212061, 0.883969,
		40.214878, 35.213116, 36.415710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039497, 35.014679, 36.262302>,  <40.506561, 35.064674, 35.796932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039497, 35.014679, 36.262302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709869, 34.979179, 36.486099>,  <40.512093, 34.957882, 36.620377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709869, 34.979179, 36.486099>,  <41.039497, 35.014679, 36.262302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709869, 34.979179, 36.486099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377834, -0.821982, 0.426130,
		0.422075, 0.562556, 0.710903,
		-0.824072, -0.088744, 0.559491,
		40.462646, 34.952557, 36.653946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202297, 35.058689, 37.063755>,  <41.039497, 35.014679, 36.262302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202297, 35.058689, 37.063755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861546, 34.854603, 37.016464>,  <40.657093, 34.732151, 36.988091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861546, 34.854603, 37.016464>,  <41.202297, 35.058689, 37.063755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861546, 34.854603, 37.016464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338669, -0.708834, 0.618755,
		-0.399502, 0.487066, 0.776637,
		-0.851881, -0.510217, -0.118226,
		40.605980, 34.701538, 36.980995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080391, 34.901543, 37.697433>,  <41.202297, 35.058689, 37.063755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080391, 34.901543, 37.697433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848450, 34.646420, 37.494663>,  <40.709286, 34.493347, 37.373001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848450, 34.646420, 37.494663>,  <41.080391, 34.901543, 37.697433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848450, 34.646420, 37.494663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406577, -0.765723, 0.498360,
		-0.706021, 0.082873, 0.703325,
		-0.579853, -0.637809, -0.506923,
		40.674496, 34.455078, 37.342587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886787, 34.432739, 38.199314>,  <41.080391, 34.901543, 37.697433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886787, 34.432739, 38.199314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.815460, 34.242928, 37.854519>,  <40.772663, 34.129040, 37.647640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.815460, 34.242928, 37.854519>,  <40.886787, 34.432739, 38.199314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815460, 34.242928, 37.854519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249092, -0.869263, 0.427007,
		-0.951921, -0.138569, 0.273211,
		-0.178323, -0.474532, -0.861986,
		40.761963, 34.100567, 37.595924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507458, 33.848068, 38.432461>,  <40.886787, 34.432739, 38.199314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507458, 33.848068, 38.432461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653866, 33.761086, 38.070522>,  <40.741711, 33.708897, 37.853359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653866, 33.761086, 38.070522>,  <40.507458, 33.848068, 38.432461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653866, 33.761086, 38.070522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394194, -0.844546, 0.362427,
		-0.842990, -0.489341, -0.223410,
		0.366031, -0.217456, -0.904840,
		40.763672, 33.695847, 37.799068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413944, 33.188168, 38.290005>,  <40.507458, 33.848068, 38.432461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413944, 33.188168, 38.290005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701229, 33.250523, 38.018749>,  <40.873600, 33.287937, 37.855995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701229, 33.250523, 38.018749>,  <40.413944, 33.188168, 38.290005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701229, 33.250523, 38.018749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471720, -0.825522, 0.309828,
		-0.511517, -0.542412, -0.666438,
		0.718214, 0.155890, -0.678135,
		40.916695, 33.297291, 37.815308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517662, 32.528214, 38.036583>,  <40.413944, 33.188168, 38.290005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517662, 32.528214, 38.036583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853786, 32.722572, 37.940430>,  <41.055462, 32.839188, 37.882736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853786, 32.722572, 37.940430>,  <40.517662, 32.528214, 38.036583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853786, 32.722572, 37.940430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540682, -0.783344, 0.306651,
		-0.039300, -0.387652, -0.920968,
		0.840309, 0.485900, -0.240382,
		41.105881, 32.868343, 37.868317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917431, 32.025997, 37.596622>,  <40.517662, 32.528214, 38.036583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917431, 32.025997, 37.596622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169125, 32.287331, 37.765015>,  <41.320141, 32.444130, 37.866051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169125, 32.287331, 37.765015>,  <40.917431, 32.025997, 37.596622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169125, 32.287331, 37.765015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563486, -0.756537, 0.331866,
		0.535304, 0.028394, -0.844182,
		0.629232, 0.653334, 0.420977,
		41.357895, 32.483330, 37.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485878, 31.811457, 37.288406>,  <40.917431, 32.025997, 37.596622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485878, 31.811457, 37.288406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604832, 32.013649, 37.612396>,  <41.676205, 32.134964, 37.806789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604832, 32.013649, 37.612396>,  <41.485878, 31.811457, 37.288406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604832, 32.013649, 37.612396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708011, -0.685902, 0.168104,
		0.640535, 0.523477, -0.561860,
		0.297382, 0.505480, 0.809972,
		41.694046, 32.165295, 37.855389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187656, 31.851152, 37.187302>,  <41.485878, 31.811457, 37.288406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187656, 31.851152, 37.187302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126369, 31.919373, 37.576649>,  <42.089596, 31.960304, 37.810257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126369, 31.919373, 37.576649>,  <42.187656, 31.851152, 37.187302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126369, 31.919373, 37.576649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651147, -0.723494, 0.229269,
		0.743324, 0.668931, -0.000200,
		-0.153220, 0.170551, 0.973363,
		42.080402, 31.970537, 37.868656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804066, 31.847574, 37.489067>,  <42.187656, 31.851152, 37.187302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804066, 31.847574, 37.489067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.558922, 31.776728, 37.797104>,  <42.411835, 31.734221, 37.981926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.558922, 31.776728, 37.797104>,  <42.804066, 31.847574, 37.489067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558922, 31.776728, 37.797104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535913, -0.809338, 0.240353,
		0.580691, 0.560003, 0.590927,
		-0.612858, -0.177115, 0.770088,
		42.375065, 31.723593, 38.028130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250237, 31.858568, 38.026562>,  <42.804066, 31.847574, 37.489067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250237, 31.858568, 38.026562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935230, 31.626400, 38.109444>,  <42.746227, 31.487099, 38.159172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935230, 31.626400, 38.109444>,  <43.250237, 31.858568, 38.026562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935230, 31.626400, 38.109444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614308, -0.766264, 0.188323,
		0.049468, 0.275595, 0.960000,
		-0.787514, -0.580419, 0.207206,
		42.698975, 31.452274, 38.171604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260891, 32.459576, 37.660019>,  <43.250237, 31.858568, 38.026562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260891, 32.459576, 37.660019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563099, 32.199543, 37.692497>,  <43.744423, 32.043526, 37.711983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563099, 32.199543, 37.692497>,  <43.260891, 32.459576, 37.660019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563099, 32.199543, 37.692497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616663, -0.747516, -0.246874,
		0.221182, 0.136447, -0.965640,
		0.755517, -0.650078, 0.081196,
		43.789753, 32.004520, 37.716854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021996, 32.743446, 37.789185>,  <43.260891, 32.459576, 37.660019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021996, 32.743446, 37.789185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.152336, 32.771664, 37.412071>,  <44.230541, 32.788593, 37.185802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.152336, 32.771664, 37.412071>,  <44.021996, 32.743446, 37.789185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152336, 32.771664, 37.412071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118754, 0.986260, 0.114838,
		0.937931, -0.149381, 0.313003,
		0.325857, 0.070540, -0.942784,
		44.250092, 32.792828, 37.129234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497078, 33.165066, 37.868599>,  <44.021996, 32.743446, 37.789185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497078, 33.165066, 37.868599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423801, 33.203949, 37.477295>,  <44.379833, 33.227280, 37.242512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423801, 33.203949, 37.477295>,  <44.497078, 33.165066, 37.868599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423801, 33.203949, 37.477295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016116, 0.994669, 0.101853,
		0.982944, 0.034425, -0.180652,
		-0.183195, 0.097204, -0.978259,
		44.368843, 33.233109, 37.183819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676197, 33.789745, 37.796455>,  <44.497078, 33.165066, 37.868599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676197, 33.789745, 37.796455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495846, 33.735424, 37.443577>,  <44.387634, 33.702831, 37.231850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495846, 33.735424, 37.443577>,  <44.676197, 33.789745, 37.796455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495846, 33.735424, 37.443577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154611, 0.985300, -0.072658,
		0.879092, 0.103637, -0.465249,
		-0.450880, -0.135805, -0.882193,
		44.360580, 33.694683, 37.178921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016113, 34.247742, 37.182861>,  <44.676197, 33.789745, 37.796455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016113, 34.247742, 37.182861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643208, 34.162022, 37.066273>,  <44.419464, 34.110588, 36.996319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643208, 34.162022, 37.066273>,  <45.016113, 34.247742, 37.182861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643208, 34.162022, 37.066273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153688, 0.963959, -0.217172,
		0.327509, -0.157665, -0.931601,
		-0.932265, -0.214302, -0.291474,
		44.363529, 34.097733, 36.978832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812031, 34.734310, 36.618153>,  <45.016113, 34.247742, 37.182861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812031, 34.734310, 36.618153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.457584, 34.597706, 36.743484>,  <44.244919, 34.515743, 36.818684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.457584, 34.597706, 36.743484>,  <44.812031, 34.734310, 36.618153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457584, 34.597706, 36.743484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370842, 0.927945, -0.037343,
		-0.277996, -0.149285, -0.948911,
		-0.886112, -0.341514, 0.313326,
		44.191750, 34.495251, 36.837482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351501, 35.169258, 36.255074>,  <44.812031, 34.734310, 36.618153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351501, 35.169258, 36.255074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181973, 35.010090, 36.580536>,  <44.080257, 34.914589, 36.775814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181973, 35.010090, 36.580536>,  <44.351501, 35.169258, 36.255074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181973, 35.010090, 36.580536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478158, 0.861241, 0.172131,
		-0.769247, -0.316103, -0.555282,
		-0.423820, -0.397923, 0.813654,
		44.054825, 34.890713, 36.824631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613331, 35.408386, 36.255749>,  <44.351501, 35.169258, 36.255074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613331, 35.408386, 36.255749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688438, 35.302605, 36.634125>,  <43.733505, 35.239136, 36.861153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688438, 35.302605, 36.634125>,  <43.613331, 35.408386, 36.255749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688438, 35.302605, 36.634125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461387, 0.826457, 0.322632,
		-0.867101, -0.497026, 0.033171,
		0.187771, -0.264450, 0.945943,
		43.744770, 35.223270, 36.917908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927788, 35.477261, 36.705318>,  <43.613331, 35.408386, 36.255749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927788, 35.477261, 36.705318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224583, 35.462048, 36.973049>,  <43.402660, 35.452919, 37.133690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224583, 35.462048, 36.973049>,  <42.927788, 35.477261, 36.705318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224583, 35.462048, 36.973049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341004, 0.838176, 0.425649,
		-0.577204, -0.544072, 0.608950,
		0.741992, -0.038032, 0.669330,
		43.447182, 35.450638, 37.173847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554813, 35.651745, 37.356560>,  <42.927788, 35.477261, 36.705318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554813, 35.651745, 37.356560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944904, 35.701679, 37.429607>,  <43.178959, 35.731640, 37.473434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944904, 35.701679, 37.429607>,  <42.554813, 35.651745, 37.356560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944904, 35.701679, 37.429607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208892, 0.791339, 0.574584,
		-0.072787, -0.598497, 0.797812,
		0.975226, 0.124834, 0.182621,
		43.237473, 35.739128, 37.484394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689240, 35.950230, 38.082169>,  <42.554813, 35.651745, 37.356560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689240, 35.950230, 38.082169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039608, 36.024864, 37.904202>,  <43.249828, 36.069645, 37.797421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039608, 36.024864, 37.904202>,  <42.689240, 35.950230, 38.082169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039608, 36.024864, 37.904202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089264, 0.843596, 0.529507,
		0.474129, -0.503520, 0.722266,
		0.875919, 0.186582, -0.444920,
		43.302383, 36.080837, 37.770725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128021, 36.089272, 38.602100>,  <42.689240, 35.950230, 38.082169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128021, 36.089272, 38.602100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288578, 36.261761, 38.278885>,  <43.384914, 36.365253, 38.084953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288578, 36.261761, 38.278885>,  <43.128021, 36.089272, 38.602100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288578, 36.261761, 38.278885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085407, 0.860766, 0.501785,
		0.911915, -0.270425, 0.308677,
		0.401394, 0.431222, -0.808041,
		43.408997, 36.391129, 38.036472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658989, 36.619358, 38.832962>,  <43.128021, 36.089272, 38.602100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658989, 36.619358, 38.832962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539356, 36.711792, 38.462631>,  <43.467579, 36.767254, 38.240433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539356, 36.711792, 38.462631>,  <43.658989, 36.619358, 38.832962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539356, 36.711792, 38.462631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256160, 0.915178, 0.311178,
		0.919203, 0.330225, -0.214514,
		-0.299077, 0.231086, -0.925825,
		43.449635, 36.781116, 38.184883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781586, 37.309525, 38.781452>,  <43.658989, 36.619358, 38.832962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781586, 37.309525, 38.781452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512104, 37.247490, 38.492435>,  <43.350414, 37.210270, 38.319023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512104, 37.247490, 38.492435>,  <43.781586, 37.309525, 38.781452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512104, 37.247490, 38.492435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485875, 0.829654, 0.274956,
		0.556821, 0.536306, -0.634293,
		-0.673704, -0.155085, -0.722546,
		43.309994, 37.200966, 38.275673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726418, 37.922817, 38.301922>,  <43.781586, 37.309525, 38.781452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726418, 37.922817, 38.301922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.384186, 37.721756, 38.252407>,  <43.178848, 37.601120, 38.222698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.384186, 37.721756, 38.252407>,  <43.726418, 37.922817, 38.301922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384186, 37.721756, 38.252407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517658, 0.832412, 0.197790,
		0.003623, 0.233305, -0.972397,
		-0.855580, -0.502653, -0.123788,
		43.127510, 37.570961, 38.215271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376656, 38.316902, 37.856869>,  <43.726418, 37.922817, 38.301922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376656, 38.316902, 37.856869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.104717, 38.091454, 38.044548>,  <42.941555, 37.956184, 38.157154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.104717, 38.091454, 38.044548>,  <43.376656, 38.316902, 37.856869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104717, 38.091454, 38.044548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533883, 0.819001, 0.210252,
		-0.502774, -0.107558, -0.857700,
		-0.679843, -0.563621, 0.469195,
		42.900764, 37.922367, 38.185307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757809, 38.436253, 37.516720>,  <43.376656, 38.316902, 37.856869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757809, 38.436253, 37.516720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.666061, 38.303089, 37.882576>,  <42.611012, 38.223190, 38.102089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.666061, 38.303089, 37.882576>,  <42.757809, 38.436253, 37.516720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666061, 38.303089, 37.882576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577099, 0.803220, 0.147631,
		-0.783803, -0.493975, -0.376353,
		-0.229368, -0.332907, 0.914638,
		42.597252, 38.203217, 38.156967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096451, 38.618225, 37.551971>,  <42.757809, 38.436253, 37.516720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096451, 38.618225, 37.551971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.221233, 38.557014, 37.927048>,  <42.296104, 38.520290, 38.152096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.221233, 38.557014, 37.927048>,  <42.096451, 38.618225, 37.551971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221233, 38.557014, 37.927048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544917, 0.779667, 0.308520,
		-0.778299, -0.607209, 0.159836,
		0.311955, -0.153024, 0.937693,
		42.314819, 38.511108, 38.208355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512867, 38.443489, 37.893768>,  <42.096451, 38.618225, 37.551971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512867, 38.443489, 37.893768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.771862, 38.596600, 38.157356>,  <41.927261, 38.688465, 38.315510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.771862, 38.596600, 38.157356>,  <41.512867, 38.443489, 37.893768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771862, 38.596600, 38.157356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709890, 0.617427, 0.338880,
		-0.277151, -0.687217, 0.671506,
		0.647490, 0.382774, 0.658969,
		41.966110, 38.711433, 38.355045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128876, 38.798965, 38.461437>,  <41.512867, 38.443489, 37.893768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128876, 38.798965, 38.461437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.484295, 38.941372, 38.577179>,  <41.697548, 39.026817, 38.646622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.484295, 38.941372, 38.577179>,  <41.128876, 38.798965, 38.461437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484295, 38.941372, 38.577179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450294, 0.797500, 0.401533,
		-0.087806, -0.487077, 0.868934,
		0.888552, 0.356018, 0.289353,
		41.750862, 39.048176, 38.663986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987698, 39.043831, 39.111042>,  <41.128876, 38.798965, 38.461437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987698, 39.043831, 39.111042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.300880, 39.236351, 38.953396>,  <41.488789, 39.351864, 38.858807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.300880, 39.236351, 38.953396>,  <40.987698, 39.043831, 39.111042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300880, 39.236351, 38.953396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379364, 0.871527, 0.310681,
		0.493016, -0.093735, 0.864956,
		0.782954, 0.481304, -0.394118,
		41.535767, 39.380741, 38.835159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.820587, 35.725929, 44.553547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562336, 35.971958, 44.372505>,  <39.407383, 36.119576, 44.263882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562336, 35.971958, 44.372505>,  <39.820587, 35.725929, 44.553547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562336, 35.971958, 44.372505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093345, -0.524671, -0.846171,
		-0.757923, -0.588562, 0.281330,
		-0.645631, 0.615072, -0.452600,
		39.368649, 36.156479, 44.236725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426971, 35.305248, 44.156422>,  <39.820587, 35.725929, 44.553547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426971, 35.305248, 44.156422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381157, 35.662285, 43.981991>,  <39.353668, 35.876507, 43.877335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381157, 35.662285, 43.981991>,  <39.426971, 35.305248, 44.156422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381157, 35.662285, 43.981991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030208, -0.435629, -0.899619,
		-0.992960, -0.116209, 0.022931,
		-0.114533, 0.892593, -0.436073,
		39.346798, 35.930061, 43.851170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712593, 35.355160, 43.858833>,  <39.426971, 35.305248, 44.156422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712593, 35.355160, 43.858833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946049, 35.623745, 43.676182>,  <39.086121, 35.784897, 43.566593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946049, 35.623745, 43.676182>,  <38.712593, 35.355160, 43.858833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946049, 35.623745, 43.676182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150731, -0.462980, -0.873458,
		-0.797900, 0.578612, -0.169004,
		0.583640, 0.671459, -0.456627,
		39.121140, 35.825184, 43.539192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338024, 35.600426, 43.242104>,  <38.712593, 35.355160, 43.858833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338024, 35.600426, 43.242104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723953, 35.671520, 43.164623>,  <38.955513, 35.714176, 43.118134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723953, 35.671520, 43.164623>,  <38.338024, 35.600426, 43.242104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723953, 35.671520, 43.164623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101448, -0.428042, -0.898047,
		-0.242527, 0.886110, -0.394956,
		0.964826, 0.177733, -0.193705,
		39.013401, 35.724842, 43.106510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315273, 35.628658, 42.467892>,  <38.338024, 35.600426, 43.242104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315273, 35.628658, 42.467892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696896, 35.585529, 42.579716>,  <38.925869, 35.559650, 42.646812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696896, 35.585529, 42.579716>,  <38.315273, 35.628658, 42.467892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696896, 35.585529, 42.579716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145549, -0.648770, -0.746936,
		0.261909, 0.753307, -0.603268,
		0.954054, -0.107824, 0.279562,
		38.983112, 35.553181, 42.663586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581055, 35.656075, 41.765301>,  <38.315273, 35.628658, 42.467892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581055, 35.656075, 41.765301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844398, 35.507820, 42.027355>,  <39.002403, 35.418869, 42.184586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844398, 35.507820, 42.027355>,  <38.581055, 35.656075, 41.765301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844398, 35.507820, 42.027355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457431, -0.494201, -0.739272,
		0.597766, 0.786382, -0.155820,
		0.658356, -0.370634, 0.655132,
		39.041904, 35.396629, 42.223896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272118, 35.809219, 41.529583>,  <38.581055, 35.656075, 41.765301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272118, 35.809219, 41.529583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297878, 35.477478, 41.751583>,  <39.313335, 35.278435, 41.884785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297878, 35.477478, 41.751583>,  <39.272118, 35.809219, 41.529583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297878, 35.477478, 41.751583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498236, -0.455155, -0.737967,
		0.864646, 0.324046, 0.383902,
		0.064401, -0.829354, 0.554999,
		39.317200, 35.228672, 41.918083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840324, 35.566261, 41.336609>,  <39.272118, 35.809219, 41.529583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840324, 35.566261, 41.336609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664700, 35.248360, 41.504219>,  <39.559326, 35.057617, 41.604786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664700, 35.248360, 41.504219>,  <39.840324, 35.566261, 41.336609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664700, 35.248360, 41.504219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448645, -0.598017, -0.664149,
		0.778423, -0.103608, 0.619131,
		-0.439062, -0.794759, 0.419026,
		39.532982, 35.009933, 41.629929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386166, 35.049202, 41.458214>,  <39.840324, 35.566261, 41.336609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386166, 35.049202, 41.458214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032017, 34.863373, 41.465027>,  <39.819527, 34.751877, 41.469116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032017, 34.863373, 41.465027>,  <40.386166, 35.049202, 41.458214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032017, 34.863373, 41.465027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307567, -0.612847, -0.727888,
		0.348595, -0.639213, 0.685484,
		-0.885372, -0.464570, 0.017034,
		39.766403, 34.724003, 41.470139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526600, 34.319229, 41.469345>,  <40.386166, 35.049202, 41.458214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526600, 34.319229, 41.469345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142315, 34.318565, 41.358330>,  <39.911743, 34.318169, 41.291721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142315, 34.318565, 41.358330>,  <40.526600, 34.319229, 41.469345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142315, 34.318565, 41.358330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194632, -0.716914, -0.669442,
		-0.197863, -0.697160, 0.689071,
		-0.960712, -0.001657, -0.277541,
		39.854103, 34.318069, 41.275066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341972, 33.661610, 41.360741>,  <40.526600, 34.319229, 41.469345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341972, 33.661610, 41.360741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050430, 33.849640, 41.161621>,  <39.875504, 33.962460, 41.042149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050430, 33.849640, 41.161621>,  <40.341972, 33.661610, 41.360741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050430, 33.849640, 41.161621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126295, -0.622280, -0.772540,
		-0.672921, -0.625937, 0.394182,
		-0.728853, 0.470075, -0.497798,
		39.831776, 33.990662, 41.012283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863659, 33.131458, 41.138756>,  <40.341972, 33.661610, 41.360741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863659, 33.131458, 41.138756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785309, 33.426323, 40.880074>,  <39.738300, 33.603241, 40.724865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785309, 33.426323, 40.880074>,  <39.863659, 33.131458, 41.138756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785309, 33.426323, 40.880074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206997, -0.613540, -0.762050,
		-0.958533, -0.283133, -0.032413,
		-0.195875, 0.737159, -0.646706,
		39.726547, 33.647472, 40.686062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327541, 32.969559, 40.566498>,  <39.863659, 33.131458, 41.138756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327541, 32.969559, 40.566498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608223, 33.236759, 40.467396>,  <39.776630, 33.397079, 40.407932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608223, 33.236759, 40.467396>,  <39.327541, 32.969559, 40.566498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608223, 33.236759, 40.467396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254561, -0.559860, -0.788515,
		-0.665439, 0.490235, -0.562904,
		0.701705, 0.668002, -0.247758,
		39.818733, 33.437160, 40.393066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119320, 32.206467, 40.704567>,  <39.327541, 32.969559, 40.566498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119320, 32.206467, 40.704567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036812, 31.815605, 40.684090>,  <38.987309, 31.581087, 40.671803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036812, 31.815605, 40.684090>,  <39.119320, 32.206467, 40.704567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036812, 31.815605, 40.684090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971974, 0.198582, 0.125826,
		-0.112784, 0.075715, -0.990730,
		-0.206268, -0.977155, -0.051196,
		38.974930, 31.522459, 40.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496342, 32.048695, 40.302204>,  <39.119320, 32.206467, 40.704567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496342, 32.048695, 40.302204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520561, 31.713301, 40.518826>,  <38.535091, 31.512064, 40.648796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520561, 31.713301, 40.518826>,  <38.496342, 32.048695, 40.302204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520561, 31.713301, 40.518826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997001, -0.024608, 0.073366,
		-0.048190, -0.544368, -0.837461,
		0.060547, -0.838485, 0.541550,
		38.538727, 31.461756, 40.681290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857357, 31.602228, 40.173439>,  <38.496342, 32.048695, 40.302204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857357, 31.602228, 40.173439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005219, 31.477287, 40.523476>,  <38.093937, 31.402323, 40.733498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005219, 31.477287, 40.523476>,  <37.857357, 31.602228, 40.173439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005219, 31.477287, 40.523476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928474, -0.087722, 0.360889,
		-0.035958, -0.945908, -0.322436,
		0.369653, -0.312350, 0.875096,
		38.116116, 31.383581, 40.786003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465519, 31.061445, 40.449356>,  <37.857357, 31.602228, 40.173439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465519, 31.061445, 40.449356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653431, 31.180578, 40.781765>,  <37.766178, 31.252058, 40.981209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653431, 31.180578, 40.781765>,  <37.465519, 31.061445, 40.449356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653431, 31.180578, 40.781765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876587, 0.046056, 0.479035,
		0.104401, -0.953505, 0.282716,
		0.469783, 0.297837, 0.831022,
		37.794365, 31.269928, 41.031071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051346, 30.783237, 41.063114>,  <37.465519, 31.061445, 40.449356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051346, 30.783237, 41.063114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266258, 31.096584, 41.188122>,  <37.395206, 31.284592, 41.263126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266258, 31.096584, 41.188122>,  <37.051346, 30.783237, 41.063114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266258, 31.096584, 41.188122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831762, 0.430789, 0.350133,
		0.139652, -0.448061, 0.883028,
		0.537279, 0.783366, 0.312519,
		37.427441, 31.331594, 41.281879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720951, 31.036343, 41.714886>,  <37.051346, 30.783237, 41.063114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720951, 31.036343, 41.714886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955639, 31.347107, 41.623528>,  <37.096451, 31.533566, 41.568710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955639, 31.347107, 41.623528>,  <36.720951, 31.036343, 41.714886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955639, 31.347107, 41.623528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645918, 0.619102, 0.446658,
		0.488416, -0.114537, 0.865062,
		0.586720, 0.776913, -0.228398,
		37.131657, 31.580181, 41.555008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888817, 31.351820, 42.350807>,  <36.720951, 31.036343, 41.714886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888817, 31.351820, 42.350807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923050, 31.620890, 42.056820>,  <36.943592, 31.782331, 41.880428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923050, 31.620890, 42.056820>,  <36.888817, 31.351820, 42.350807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923050, 31.620890, 42.056820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472196, 0.676955, 0.564591,
		0.877329, 0.298728, 0.375574,
		0.085587, 0.672676, -0.734971,
		36.948727, 31.822693, 41.836330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279278, 32.016407, 42.605473>,  <36.888817, 31.351820, 42.350807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279278, 32.016407, 42.605473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034695, 32.095272, 42.298946>,  <36.887943, 32.142590, 42.115028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034695, 32.095272, 42.298946>,  <37.279278, 32.016407, 42.605473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034695, 32.095272, 42.298946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388370, 0.769005, 0.507740,
		0.689411, 0.608077, -0.393642,
		-0.611458, 0.197163, -0.766320,
		36.851257, 32.154423, 42.069050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395668, 32.740715, 42.560936>,  <37.279278, 32.016407, 42.605473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395668, 32.740715, 42.560936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074707, 32.682343, 42.329468>,  <36.882130, 32.647320, 42.190586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074707, 32.682343, 42.329468>,  <37.395668, 32.740715, 42.560936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074707, 32.682343, 42.329468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517202, 0.653828, 0.552278,
		0.297753, 0.742437, -0.600109,
		-0.802400, -0.145935, -0.578669,
		36.833988, 32.638561, 42.155869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164703, 33.378124, 42.395149>,  <37.395668, 32.740715, 42.560936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164703, 33.378124, 42.395149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867310, 33.110882, 42.383411>,  <36.688873, 32.950535, 42.376369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867310, 33.110882, 42.383411>,  <37.164703, 33.378124, 42.395149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867310, 33.110882, 42.383411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600945, 0.648213, 0.467638,
		-0.293411, 0.365316, -0.883433,
		-0.743488, -0.668105, -0.029342,
		36.644264, 32.910450, 42.374607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577766, 33.791439, 42.250290>,  <37.164703, 33.378124, 42.395149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577766, 33.791439, 42.250290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433613, 33.449585, 42.399811>,  <36.347122, 33.244473, 42.489525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433613, 33.449585, 42.399811>,  <36.577766, 33.791439, 42.250290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433613, 33.449585, 42.399811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598269, 0.519218, 0.610317,
		-0.715682, -0.003688, -0.698417,
		-0.360379, -0.854634, 0.373801,
		36.325500, 33.193195, 42.511951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807713, 33.861019, 42.215443>,  <36.577766, 33.791439, 42.250290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807713, 33.861019, 42.215443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946484, 33.604355, 42.489059>,  <36.029747, 33.450356, 42.653229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946484, 33.604355, 42.489059>,  <35.807713, 33.861019, 42.215443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946484, 33.604355, 42.489059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521202, 0.474454, 0.709395,
		-0.779736, -0.602636, -0.169830,
		0.346931, -0.641657, 0.684044,
		36.050564, 33.411858, 42.694271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343044, 33.902107, 42.935890>,  <35.807713, 33.861019, 42.215443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343044, 33.902107, 42.935890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587196, 33.645950, 43.122368>,  <35.733688, 33.492256, 43.234253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587196, 33.645950, 43.122368>,  <35.343044, 33.902107, 42.935890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587196, 33.645950, 43.122368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271023, 0.384184, 0.882581,
		-0.744300, -0.665059, 0.060938,
		0.610380, -0.640389, 0.466195,
		35.770309, 33.453835, 43.262226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953892, 33.657742, 43.508041>,  <35.343044, 33.902107, 42.935890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953892, 33.657742, 43.508041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323109, 33.568378, 43.633308>,  <35.544640, 33.514759, 43.708469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323109, 33.568378, 43.633308>,  <34.953892, 33.657742, 43.508041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323109, 33.568378, 43.633308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228811, 0.335590, 0.913797,
		-0.309247, -0.915133, 0.258647,
		0.923045, -0.223407, 0.313172,
		35.600021, 33.501358, 43.727261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917049, 33.312870, 44.120045>,  <34.953892, 33.657742, 43.508041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917049, 33.312870, 44.120045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286018, 33.463909, 44.152447>,  <35.507401, 33.554535, 44.171890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286018, 33.463909, 44.152447>,  <34.917049, 33.312870, 44.120045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286018, 33.463909, 44.152447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228241, 0.363818, 0.903074,
		0.311528, -0.851502, 0.421777,
		0.922419, 0.377599, 0.081008,
		35.562744, 33.577190, 44.176750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487732, 32.659996, 44.135880>,  <34.917049, 33.312870, 44.120045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487732, 32.659996, 44.135880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101860, 32.756561, 44.178055>,  <33.870338, 32.814499, 44.203362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101860, 32.756561, 44.178055>,  <34.487732, 32.659996, 44.135880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101860, 32.756561, 44.178055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211065, -0.468783, -0.857726,
		-0.157638, -0.849683, 0.503179,
		-0.964677, 0.241413, 0.105441,
		33.812458, 32.828987, 44.209686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086414, 31.960602, 44.103233>,  <34.487732, 32.659996, 44.135880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086414, 31.960602, 44.103233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867764, 32.282795, 44.011673>,  <33.736572, 32.476109, 43.956738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867764, 32.282795, 44.011673>,  <34.086414, 31.960602, 44.103233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867764, 32.282795, 44.011673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234621, -0.409735, -0.881516,
		-0.803834, -0.428157, 0.412956,
		-0.546629, 0.805480, -0.228904,
		33.703773, 32.524441, 43.943001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413040, 31.682789, 43.730480>,  <34.086414, 31.960602, 44.103233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413040, 31.682789, 43.730480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437241, 32.068424, 43.627037>,  <33.451759, 32.299805, 43.564972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437241, 32.068424, 43.627037>,  <33.413040, 31.682789, 43.730480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437241, 32.068424, 43.627037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381396, -0.217094, -0.898558,
		-0.922430, 0.152991, 0.354565,
		0.060498, 0.964087, -0.258605,
		33.455391, 32.357651, 43.549454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671352, 31.856964, 43.387783>,  <33.413040, 31.682789, 43.730480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671352, 31.856964, 43.387783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938461, 32.124779, 43.257671>,  <33.098728, 32.285465, 43.179604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938461, 32.124779, 43.257671>,  <32.671352, 31.856964, 43.387783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938461, 32.124779, 43.257671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162347, -0.295464, -0.941459,
		-0.726447, 0.681487, -0.088605,
		0.667772, 0.669535, -0.325276,
		33.138794, 32.325638, 43.160088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340137, 32.177238, 42.763756>,  <32.671352, 31.856964, 43.387783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340137, 32.177238, 42.763756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735527, 32.228981, 42.732323>,  <32.972763, 32.260029, 42.713463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735527, 32.228981, 42.732323>,  <32.340137, 32.177238, 42.763756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735527, 32.228981, 42.732323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051674, -0.199596, -0.978515,
		-0.142267, 0.971302, -0.190612,
		0.988479, 0.129360, -0.078587,
		33.032070, 32.267788, 42.708748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354126, 32.617485, 42.180107>,  <32.340137, 32.177238, 42.763756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354126, 32.617485, 42.180107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735638, 32.497288, 42.181782>,  <32.964542, 32.425171, 42.182785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735638, 32.497288, 42.181782>,  <32.354126, 32.617485, 42.180107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735638, 32.497288, 42.181782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013898, 0.030204, -0.999447,
		0.300201, 0.953305, 0.032984,
		0.953775, -0.300494, 0.004182,
		33.021770, 32.407139, 42.183037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740559, 33.132782, 41.879898>,  <32.354126, 32.617485, 42.180107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740559, 33.132782, 41.879898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932060, 32.783054, 41.847988>,  <33.046963, 32.573219, 41.828842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932060, 32.783054, 41.847988>,  <32.740559, 33.132782, 41.879898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932060, 32.783054, 41.847988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052581, 0.062147, -0.996681,
		0.876372, 0.481361, -0.016219,
		0.478756, -0.874316, -0.079775,
		33.075687, 32.520760, 41.824055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311035, 33.134933, 41.381931>,  <32.740559, 33.132782, 41.879898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311035, 33.134933, 41.381931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237789, 32.742283, 41.360508>,  <33.193840, 32.506691, 41.347656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237789, 32.742283, 41.360508>,  <33.311035, 33.134933, 41.381931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237789, 32.742283, 41.360508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169853, 0.022065, -0.985222,
		0.968306, -0.189510, 0.162692,
		-0.183119, -0.981631, -0.053555,
		33.182854, 32.447792, 41.344440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702217, 32.986988, 40.876080>,  <33.311035, 33.134933, 41.381931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702217, 32.986988, 40.876080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481899, 32.655052, 40.911831>,  <33.349709, 32.455891, 40.933281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481899, 32.655052, 40.911831>,  <33.702217, 32.986988, 40.876080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481899, 32.655052, 40.911831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032578, -0.085631, -0.995794,
		0.834007, -0.551386, 0.020130,
		-0.550790, -0.829844, 0.089380,
		33.316662, 32.406097, 40.938644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988979, 32.573246, 40.342781>,  <33.702217, 32.986988, 40.876080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988979, 32.573246, 40.342781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649380, 32.372581, 40.409164>,  <33.445621, 32.252182, 40.448994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649380, 32.372581, 40.409164>,  <33.988979, 32.573246, 40.342781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649380, 32.372581, 40.409164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028918, -0.269491, -0.962569,
		0.527606, -0.822017, 0.214290,
		-0.848997, -0.501661, 0.165957,
		33.394680, 32.222084, 40.458950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030041, 31.911386, 39.909081>,  <33.988979, 32.573246, 40.342781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030041, 31.911386, 39.909081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639034, 31.959906, 39.978077>,  <33.404430, 31.989017, 40.019474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639034, 31.959906, 39.978077>,  <34.030041, 31.911386, 39.909081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639034, 31.959906, 39.978077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188335, -0.134277, -0.972882,
		-0.094839, -0.983493, 0.154101,
		-0.977515, 0.121290, 0.172491,
		33.345779, 31.996294, 40.029823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739540, 31.392382, 39.568848>,  <34.030041, 31.911386, 39.909081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739540, 31.392382, 39.568848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460056, 31.670488, 39.636269>,  <33.292366, 31.837353, 39.676720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460056, 31.670488, 39.636269>,  <33.739540, 31.392382, 39.568848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460056, 31.670488, 39.636269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225436, 0.009623, -0.974211,
		-0.678960, -0.718685, 0.150015,
		-0.698707, 0.695269, 0.168551,
		33.250443, 31.879068, 39.686832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.965305, 33.681026, 48.358665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731144, 33.921162, 48.140709>,  <33.590649, 34.065243, 48.009937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731144, 33.921162, 48.140709>,  <33.965305, 33.681026, 48.358665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731144, 33.921162, 48.140709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159221, -0.573865, -0.803323,
		-0.794956, -0.557022, 0.240355,
		-0.585400, 0.600337, -0.544887,
		33.555523, 34.101261, 47.977242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472095, 33.226105, 48.029911>,  <33.965305, 33.681026, 48.358665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472095, 33.226105, 48.029911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.499073, 33.563484, 47.816727>,  <33.515259, 33.765911, 47.688816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.499073, 33.563484, 47.816727>,  <33.472095, 33.226105, 48.029911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499073, 33.563484, 47.816727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026264, -0.532492, -0.846027,
		-0.997377, 0.071059, -0.013763,
		0.067446, 0.843447, -0.532962,
		33.519306, 33.816517, 47.656837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073387, 33.095982, 47.393902>,  <33.472095, 33.226105, 48.029911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073387, 33.095982, 47.393902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257195, 33.430603, 47.274555>,  <33.367481, 33.631374, 47.202946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257195, 33.430603, 47.274555>,  <33.073387, 33.095982, 47.393902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257195, 33.430603, 47.274555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036892, -0.317669, -0.947484,
		-0.887400, 0.446397, -0.115114,
		0.459522, 0.836550, -0.298368,
		33.395050, 33.681568, 47.185043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658936, 33.265808, 46.842621>,  <33.073387, 33.095982, 47.393902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658936, 33.265808, 46.842621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.008080, 33.453438, 46.788826>,  <33.217567, 33.566013, 46.756550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.008080, 33.453438, 46.788826>,  <32.658936, 33.265808, 46.842621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008080, 33.453438, 46.788826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029115, -0.325184, -0.945202,
		-0.487101, 0.821114, -0.297497,
		0.872860, 0.469071, -0.134491,
		33.269936, 33.594158, 46.748478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565723, 33.739830, 46.264973>,  <32.658936, 33.265808, 46.842621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565723, 33.739830, 46.264973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.957256, 33.661362, 46.288345>,  <33.192177, 33.614281, 46.302368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.957256, 33.661362, 46.288345>,  <32.565723, 33.739830, 46.264973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957256, 33.661362, 46.288345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014653, -0.217605, -0.975927,
		0.204160, 0.956121, -0.210123,
		0.978828, -0.196166, 0.058436,
		33.250904, 33.602512, 46.305878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849827, 34.124619, 45.711712>,  <32.565723, 33.739830, 46.264973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849827, 34.124619, 45.711712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.108227, 33.831470, 45.797112>,  <33.263268, 33.655582, 45.848351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.108227, 33.831470, 45.797112>,  <32.849827, 34.124619, 45.711712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108227, 33.831470, 45.797112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026802, -0.257748, -0.965840,
		0.762865, 0.629657, -0.146863,
		0.646002, -0.732869, 0.213503,
		33.302029, 33.611610, 45.861164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352791, 34.212208, 45.262516>,  <32.849827, 34.124619, 45.711712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352791, 34.212208, 45.262516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.426197, 33.840321, 45.390228>,  <33.470242, 33.617188, 45.466854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.426197, 33.840321, 45.390228>,  <33.352791, 34.212208, 45.262516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426197, 33.840321, 45.390228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194263, -0.284091, -0.938911,
		0.963631, 0.234326, 0.128477,
		0.183513, -0.929722, 0.319280,
		33.481251, 33.561405, 45.486012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008778, 34.061249, 45.011276>,  <33.352791, 34.212208, 45.262516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008778, 34.061249, 45.011276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.817303, 33.713047, 45.057014>,  <33.702419, 33.504124, 45.084457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.817303, 33.713047, 45.057014>,  <34.008778, 34.061249, 45.011276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817303, 33.713047, 45.057014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059839, -0.162278, -0.984929,
		0.875944, -0.464631, 0.129771,
		-0.478687, -0.870508, 0.114343,
		33.673695, 33.451893, 45.091316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419529, 33.613297, 44.680386>,  <34.008778, 34.061249, 45.011276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419529, 33.613297, 44.680386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.065434, 33.427299, 44.685017>,  <33.852978, 33.315701, 44.687794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.065434, 33.427299, 44.685017>,  <34.419529, 33.613297, 44.680386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065434, 33.427299, 44.685017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184632, -0.374123, -0.908814,
		0.426928, -0.802378, 0.417041,
		-0.885237, -0.464997, 0.011579,
		33.799862, 33.287800, 44.688492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090969, 33.215561, 44.969681>,  <34.419529, 33.613297, 44.680386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090969, 33.215561, 44.969681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355957, 33.469193, 44.810143>,  <35.514950, 33.621372, 44.714420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355957, 33.469193, 44.810143>,  <35.090969, 33.215561, 44.969681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355957, 33.469193, 44.810143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091462, 0.459989, 0.883201,
		0.743484, -0.621573, 0.246735,
		0.662469, 0.634080, -0.398845,
		35.554699, 33.659416, 44.690491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734348, 33.230579, 45.400978>,  <35.090969, 33.215561, 44.969681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734348, 33.230579, 45.400978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734959, 33.571774, 45.192207>,  <35.735325, 33.776489, 45.066944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734959, 33.571774, 45.192207>,  <35.734348, 33.230579, 45.400978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734959, 33.571774, 45.192207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249620, 0.505084, 0.826184,
		0.968343, -0.131547, -0.212150,
		0.001528, 0.852986, -0.521931,
		35.735416, 33.827671, 45.035629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324421, 33.535748, 45.559704>,  <35.734348, 33.230579, 45.400978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324421, 33.535748, 45.559704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097614, 33.838158, 45.428913>,  <35.961529, 34.019604, 45.350437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097614, 33.838158, 45.428913>,  <36.324421, 33.535748, 45.559704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097614, 33.838158, 45.428913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327256, 0.571054, 0.752862,
		0.755906, 0.319880, -0.571211,
		-0.567018, 0.756025, -0.326981,
		35.927509, 34.064964, 45.330818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738659, 34.171791, 45.622532>,  <36.324421, 33.535748, 45.559704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738659, 34.171791, 45.622532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361614, 34.303337, 45.599430>,  <36.135387, 34.382263, 45.585567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361614, 34.303337, 45.599430>,  <36.738659, 34.171791, 45.622532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361614, 34.303337, 45.599430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189750, 0.669935, 0.717762,
		0.274736, 0.665611, -0.693889,
		-0.942611, 0.328860, -0.057755,
		36.078831, 34.401997, 45.582104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784664, 34.848705, 45.657532>,  <36.738659, 34.171791, 45.622532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784664, 34.848705, 45.657532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.414394, 34.757595, 45.778358>,  <36.192230, 34.702930, 45.850853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.414394, 34.757595, 45.778358>,  <36.784664, 34.848705, 45.657532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414394, 34.757595, 45.778358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132955, 0.551647, 0.823413,
		-0.354184, 0.802374, -0.480363,
		-0.925676, -0.227773, 0.302065,
		36.136692, 34.689262, 45.868977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491455, 35.406445, 45.768196>,  <36.784664, 34.848705, 45.657532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491455, 35.406445, 45.768196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.231743, 35.182076, 45.973637>,  <36.075916, 35.047455, 46.096901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.231743, 35.182076, 45.973637>,  <36.491455, 35.406445, 45.768196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231743, 35.182076, 45.973637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060431, 0.711227, 0.700360,
		-0.758141, 0.423695, -0.495686,
		-0.649285, -0.560926, 0.513606,
		36.036957, 35.013798, 46.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971416, 35.852489, 45.964458>,  <36.491455, 35.406445, 45.768196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971416, 35.852489, 45.964458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915096, 35.542145, 46.210457>,  <35.881302, 35.355938, 46.358055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915096, 35.542145, 46.210457>,  <35.971416, 35.852489, 45.964458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915096, 35.542145, 46.210457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120524, 0.629994, 0.767191,
		-0.982674, 0.033901, -0.182215,
		-0.140802, -0.775860, 0.614993,
		35.872856, 35.309387, 46.394955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502148, 36.138920, 46.389999>,  <35.971416, 35.852489, 45.964458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502148, 36.138920, 46.389999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670940, 35.844913, 46.602295>,  <35.772217, 35.668510, 46.729675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670940, 35.844913, 46.602295>,  <35.502148, 36.138920, 46.389999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670940, 35.844913, 46.602295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254683, 0.465739, 0.847481,
		-0.870096, -0.492794, 0.009339,
		0.421983, -0.735011, 0.530743,
		35.797535, 35.624409, 46.761517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052406, 36.001804, 46.932102>,  <35.502148, 36.138920, 46.389999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052406, 36.001804, 46.932102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396183, 35.841038, 47.058483>,  <35.602448, 35.744579, 47.134312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396183, 35.841038, 47.058483>,  <35.052406, 36.001804, 46.932102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396183, 35.841038, 47.058483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158462, 0.378145, 0.912083,
		-0.486057, -0.833948, 0.261304,
		0.859441, -0.401917, 0.315949,
		35.654015, 35.720463, 47.153267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925034, 35.863079, 47.619331>,  <35.052406, 36.001804, 46.932102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925034, 35.863079, 47.619331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.323605, 35.875710, 47.588017>,  <35.562748, 35.883286, 47.569229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.323605, 35.875710, 47.588017>,  <34.925034, 35.863079, 47.619331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323605, 35.875710, 47.588017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038507, 0.655299, 0.754387,
		0.075119, -0.754709, 0.651744,
		0.996431, 0.031572, -0.078287,
		35.622536, 35.885181, 47.564529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150635, 35.769623, 48.266788>,  <34.925034, 35.863079, 47.619331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150635, 35.769623, 48.266788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434750, 35.962585, 48.061745>,  <35.605217, 36.078365, 47.938717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434750, 35.962585, 48.061745>,  <35.150635, 35.769623, 48.266788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434750, 35.962585, 48.061745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088745, 0.661054, 0.745072,
		0.698299, -0.574704, 0.426724,
		0.710284, 0.482413, -0.512616,
		35.647835, 36.107307, 47.907959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533501, 35.915779, 48.734783>,  <35.150635, 35.769623, 48.266788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533501, 35.915779, 48.734783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715015, 36.153030, 48.468769>,  <35.823925, 36.295383, 48.309162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715015, 36.153030, 48.468769>,  <35.533501, 35.915779, 48.734783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715015, 36.153030, 48.468769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220440, 0.648383, 0.728701,
		0.863413, -0.477276, 0.163478,
		0.453788, 0.593133, -0.665034,
		35.851151, 36.330971, 48.269260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113495, 36.015884, 48.998348>,  <35.533501, 35.915779, 48.734783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113495, 36.015884, 48.998348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.080379, 36.324482, 48.746017>,  <36.060509, 36.509640, 48.594620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.080379, 36.324482, 48.746017>,  <36.113495, 36.015884, 48.998348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080379, 36.324482, 48.746017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267059, 0.627020, 0.731795,
		0.960117, -0.107882, -0.257947,
		-0.082791, 0.771496, -0.630824,
		36.055542, 36.555931, 48.556770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710678, 36.533615, 49.109798>,  <36.113495, 36.015884, 48.998348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710678, 36.533615, 49.109798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.460941, 36.771393, 48.907085>,  <36.311100, 36.914059, 48.785458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.460941, 36.771393, 48.907085>,  <36.710678, 36.533615, 49.109798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460941, 36.771393, 48.907085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182155, 0.741671, 0.645557,
		0.759612, 0.310739, -0.571341,
		-0.624346, 0.594446, -0.506780,
		36.273636, 36.949726, 48.755051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.892735, 39.974174, 45.941811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044090, 39.667725, 46.149612>,  <33.134903, 39.483856, 46.274292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044090, 39.667725, 46.149612>,  <32.892735, 39.974174, 45.941811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044090, 39.667725, 46.149612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373482, -0.387158, -0.842983,
		0.846956, 0.512998, 0.139637,
		0.378387, -0.766121, 0.519501,
		33.157608, 39.437889, 46.305462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639862, 39.850586, 45.793823>,  <32.892735, 39.974174, 45.941811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639862, 39.850586, 45.793823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530949, 39.498131, 45.948460>,  <33.465599, 39.286655, 46.041241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530949, 39.498131, 45.948460>,  <33.639862, 39.850586, 45.793823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530949, 39.498131, 45.948460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307729, -0.460415, -0.832659,
		0.911682, -0.107752, 0.396515,
		-0.272282, -0.881140, 0.386594,
		33.449265, 39.233788, 46.064438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176991, 39.428646, 45.630268>,  <33.639862, 39.850586, 45.793823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176991, 39.428646, 45.630268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909691, 39.148232, 45.729866>,  <33.749313, 38.979984, 45.789623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909691, 39.148232, 45.729866>,  <34.176991, 39.428646, 45.630268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909691, 39.148232, 45.729866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396078, -0.618577, -0.678590,
		0.629738, -0.354842, 0.691025,
		-0.668245, -0.701034, 0.248996,
		33.709217, 38.937920, 45.804565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558739, 38.788479, 45.830410>,  <34.176991, 39.428646, 45.630268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558739, 38.788479, 45.830410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196461, 38.690090, 45.692303>,  <33.979092, 38.631058, 45.609440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196461, 38.690090, 45.692303>,  <34.558739, 38.788479, 45.830410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196461, 38.690090, 45.692303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413661, -0.690892, -0.592919,
		-0.092703, -0.679829, 0.727488,
		-0.905699, -0.245968, -0.345266,
		33.924751, 38.616299, 45.588722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689846, 38.160183, 45.573895>,  <34.558739, 38.788479, 45.830410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689846, 38.160183, 45.573895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330090, 38.250332, 45.424068>,  <34.114235, 38.304420, 45.334171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330090, 38.250332, 45.424068>,  <34.689846, 38.160183, 45.573895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330090, 38.250332, 45.424068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190128, -0.569896, -0.799418,
		-0.393629, -0.790207, 0.469711,
		-0.899393, 0.225369, -0.374568,
		34.060272, 38.317944, 45.311699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403484, 37.507088, 45.395309>,  <34.689846, 38.160183, 45.573895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403484, 37.507088, 45.395309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228645, 37.793770, 45.177952>,  <34.123741, 37.965778, 45.047539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228645, 37.793770, 45.177952>,  <34.403484, 37.507088, 45.395309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228645, 37.793770, 45.177952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214392, -0.503719, -0.836841,
		-0.873488, -0.482281, 0.066518,
		-0.437099, 0.716709, -0.543390,
		34.097515, 38.008781, 45.014935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113422, 37.251652, 44.875004>,  <34.403484, 37.507088, 45.395309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113422, 37.251652, 44.875004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.167858, 37.621788, 44.733456>,  <34.200520, 37.843868, 44.648525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.167858, 37.621788, 44.733456>,  <34.113422, 37.251652, 44.875004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167858, 37.621788, 44.733456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346974, -0.379091, -0.857845,
		-0.927949, -0.006042, -0.372659,
		0.136089, 0.925339, -0.353874,
		34.208683, 37.899391, 44.627293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787544, 37.157951, 44.173298>,  <34.113422, 37.251652, 44.875004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787544, 37.157951, 44.173298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973927, 37.511776, 44.165009>,  <34.085758, 37.724072, 44.160034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973927, 37.511776, 44.165009>,  <33.787544, 37.157951, 44.173298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973927, 37.511776, 44.165009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409790, -0.236498, -0.880988,
		-0.784191, 0.402013, -0.472684,
		0.465958, 0.884564, -0.020719,
		34.113712, 37.777145, 44.158794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781723, 37.327972, 43.472256>,  <33.787544, 37.157951, 44.173298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781723, 37.327972, 43.472256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075024, 37.543869, 43.637672>,  <34.251003, 37.673405, 43.736923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075024, 37.543869, 43.637672>,  <33.781723, 37.327972, 43.472256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075024, 37.543869, 43.637672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557550, -0.129144, -0.820036,
		-0.389197, 0.831869, -0.395626,
		0.733255, 0.539737, 0.413546,
		34.295002, 37.705791, 43.761738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937389, 37.816669, 43.006950>,  <33.781723, 37.327972, 43.472256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937389, 37.816669, 43.006950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275162, 37.826828, 43.220978>,  <34.477825, 37.832924, 43.349392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275162, 37.826828, 43.220978>,  <33.937389, 37.816669, 43.006950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275162, 37.826828, 43.220978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535635, -0.051223, -0.842894,
		0.006003, 0.998364, -0.056855,
		0.844428, 0.025394, 0.535067,
		34.528492, 37.834446, 43.381496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407074, 38.345921, 42.721992>,  <33.937389, 37.816669, 43.006950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407074, 38.345921, 42.721992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.633472, 38.105637, 42.947842>,  <34.769314, 37.961468, 43.083351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.633472, 38.105637, 42.947842>,  <34.407074, 38.345921, 42.721992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633472, 38.105637, 42.947842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554812, -0.229025, -0.799832,
		0.609776, 0.765963, 0.203651,
		0.566000, -0.600707, 0.564620,
		34.803272, 37.925426, 43.117226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026657, 38.453117, 42.521736>,  <34.407074, 38.345921, 42.721992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026657, 38.453117, 42.521736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075996, 38.091576, 42.685608>,  <35.105598, 37.874649, 42.783932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075996, 38.091576, 42.685608>,  <35.026657, 38.453117, 42.521736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075996, 38.091576, 42.685608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397716, -0.333197, -0.854870,
		0.909179, 0.268382, 0.318377,
		0.123350, -0.903853, 0.409675,
		35.113003, 37.820419, 42.808510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655266, 38.307060, 42.268875>,  <35.026657, 38.453117, 42.521736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655266, 38.307060, 42.268875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493626, 37.957298, 42.376289>,  <35.396641, 37.747440, 42.440739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493626, 37.957298, 42.376289>,  <35.655266, 38.307060, 42.268875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493626, 37.957298, 42.376289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255728, -0.389863, -0.884653,
		0.878240, -0.288817, 0.381154,
		-0.404101, -0.874409, 0.268535,
		35.372395, 37.694977, 42.456848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050602, 37.775551, 42.058689>,  <35.655266, 38.307060, 42.268875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050602, 37.775551, 42.058689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732128, 37.546627, 42.137222>,  <35.541042, 37.409271, 42.184341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732128, 37.546627, 42.137222>,  <36.050602, 37.775551, 42.058689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732128, 37.546627, 42.137222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160614, -0.512763, -0.843372,
		0.583342, -0.639949, 0.500177,
		-0.796187, -0.572310, 0.196332,
		35.493271, 37.374935, 42.196121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731140, 37.511948, 42.198994>,  <36.050602, 37.775551, 42.058689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731140, 37.511948, 42.198994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.067348, 37.717136, 42.129276>,  <37.269073, 37.840248, 42.087444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.067348, 37.717136, 42.129276>,  <36.731140, 37.511948, 42.198994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067348, 37.717136, 42.129276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141726, 0.518699, 0.843128,
		0.522947, -0.683944, 0.508672,
		0.840500, 0.513003, -0.174319,
		37.319504, 37.871029, 42.076988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045746, 37.667061, 42.841110>,  <36.731140, 37.511948, 42.198994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045746, 37.667061, 42.841110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197323, 37.933506, 42.584141>,  <37.288269, 38.093372, 42.429958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197323, 37.933506, 42.584141>,  <37.045746, 37.667061, 42.841110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197323, 37.933506, 42.584141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120138, 0.723726, 0.679549,
		0.917590, -0.180329, 0.354274,
		0.378940, 0.666109, -0.642419,
		37.311005, 38.133339, 42.391415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615242, 38.067780, 43.196918>,  <37.045746, 37.667061, 42.841110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615242, 38.067780, 43.196918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541565, 38.302380, 42.881428>,  <37.497356, 38.443142, 42.692135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541565, 38.302380, 42.881428>,  <37.615242, 38.067780, 43.196918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541565, 38.302380, 42.881428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061966, 0.793930, 0.604843,
		0.980935, 0.160283, -0.109894,
		-0.184194, 0.586502, -0.788725,
		37.486305, 38.478329, 42.644810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027847, 38.644226, 43.271019>,  <37.615242, 38.067780, 43.196918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027847, 38.644226, 43.271019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789028, 38.798035, 42.989399>,  <37.645737, 38.890320, 42.820427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789028, 38.798035, 42.989399>,  <38.027847, 38.644226, 43.271019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789028, 38.798035, 42.989399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058735, 0.854328, 0.516405,
		0.800056, 0.349668, -0.487486,
		-0.597043, 0.384520, -0.704048,
		37.609917, 38.913391, 42.778183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271652, 39.355030, 43.114998>,  <38.027847, 38.644226, 43.271019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271652, 39.355030, 43.114998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885452, 39.311867, 43.020195>,  <37.653732, 39.285969, 42.963314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.885452, 39.311867, 43.020195>,  <38.271652, 39.355030, 43.114998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885452, 39.311867, 43.020195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244138, 0.691787, 0.679579,
		0.090632, 0.713994, -0.694261,
		-0.965496, -0.107904, -0.237011,
		37.595802, 39.279495, 42.949093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042751, 40.071686, 43.194801>,  <38.271652, 39.355030, 43.114998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042751, 40.071686, 43.194801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735897, 39.816372, 43.220390>,  <37.551785, 39.663185, 43.235744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735897, 39.816372, 43.220390>,  <38.042751, 40.071686, 43.194801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735897, 39.816372, 43.220390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236443, 0.374051, 0.896761,
		-0.596318, 0.672813, -0.437867,
		-0.767137, -0.638285, 0.063971,
		37.505756, 39.624886, 43.239582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422554, 40.510780, 43.361240>,  <38.042751, 40.071686, 43.194801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422554, 40.510780, 43.361240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296455, 40.148281, 43.473904>,  <37.220798, 39.930782, 43.541500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296455, 40.148281, 43.473904>,  <37.422554, 40.510780, 43.361240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296455, 40.148281, 43.473904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289420, 0.374459, 0.880918,
		-0.903802, 0.196187, -0.380332,
		-0.315243, -0.906251, 0.281656,
		37.201881, 39.876404, 43.558399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747746, 40.602051, 43.582886>,  <37.422554, 40.510780, 43.361240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747746, 40.602051, 43.582886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869675, 40.272861, 43.774639>,  <36.942833, 40.075348, 43.889690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869675, 40.272861, 43.774639>,  <36.747746, 40.602051, 43.582886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869675, 40.272861, 43.774639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495427, 0.292862, 0.817792,
		-0.813411, -0.486776, -0.318452,
		0.304819, -0.822971, 0.479379,
		36.961121, 40.025970, 43.918453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219635, 40.358589, 43.921982>,  <36.747746, 40.602051, 43.582886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219635, 40.358589, 43.921982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.532131, 40.207497, 44.120773>,  <36.719627, 40.116840, 44.240047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.532131, 40.207497, 44.120773>,  <36.219635, 40.358589, 43.921982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532131, 40.207497, 44.120773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311478, 0.454061, 0.834752,
		-0.540972, -0.806936, 0.237073,
		0.781237, -0.377734, 0.496977,
		36.766502, 40.094177, 44.269867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912136, 40.152107, 44.527664>,  <36.219635, 40.358589, 43.921982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912136, 40.152107, 44.527664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304443, 40.172119, 44.603130>,  <36.539825, 40.184128, 44.648411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304443, 40.172119, 44.603130>,  <35.912136, 40.152107, 44.527664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304443, 40.172119, 44.603130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191016, 0.444866, 0.874990,
		-0.040155, -0.894198, 0.445866,
		0.980765, 0.050032, 0.188670,
		36.598675, 40.187130, 44.659733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247589, 39.786083, 45.159058>,  <35.912136, 40.152107, 44.527664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247589, 39.786083, 45.159058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454174, 40.121452, 45.089417>,  <36.578125, 40.322674, 45.047630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454174, 40.121452, 45.089417>,  <36.247589, 39.786083, 45.159058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454174, 40.121452, 45.089417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333261, 0.384087, 0.861054,
		0.788800, -0.386679, 0.477780,
		0.516461, 0.838425, -0.174103,
		36.609112, 40.372978, 45.037186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686111, 39.806938, 45.695267>,  <36.247589, 39.786083, 45.159058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686111, 39.806938, 45.695267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647213, 40.179852, 45.555904>,  <36.623875, 40.403599, 45.472286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647213, 40.179852, 45.555904>,  <36.686111, 39.806938, 45.695267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647213, 40.179852, 45.555904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406461, 0.282343, 0.868948,
		0.908478, 0.226116, 0.351481,
		-0.097244, 0.932284, -0.348410,
		36.618038, 40.459538, 45.451382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740143, 40.159172, 46.263866>,  <36.686111, 39.806938, 45.695267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740143, 40.159172, 46.263866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.613865, 40.450394, 46.020466>,  <36.538097, 40.625126, 45.874424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.613865, 40.450394, 46.020466>,  <36.740143, 40.159172, 46.263866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613865, 40.450394, 46.020466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383870, 0.488479, 0.783602,
		0.867746, 0.480962, 0.125270,
		-0.315691, 0.728055, -0.608503,
		36.519157, 40.668812, 45.837914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015362, 40.767426, 46.531986>,  <36.740143, 40.159172, 46.263866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015362, 40.767426, 46.531986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.695946, 40.860687, 46.310005>,  <36.504295, 40.916645, 46.176815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.695946, 40.860687, 46.310005>,  <37.015362, 40.767426, 46.531986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695946, 40.860687, 46.310005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441579, 0.399636, 0.803305,
		0.409073, 0.886527, -0.216170,
		-0.798541, 0.233154, -0.554952,
		36.456383, 40.930634, 46.143520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857281, 40.612446, 46.588943>,  <37.015362, 40.767426, 46.531986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857281, 40.612446, 46.588943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869854, 40.477444, 46.965263>,  <37.877399, 40.396442, 47.191055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869854, 40.477444, 46.965263>,  <37.857281, 40.612446, 46.588943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869854, 40.477444, 46.965263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244391, -0.910099, -0.334653,
		0.969167, 0.240441, 0.053876,
		0.031432, -0.337502, 0.940800,
		37.879284, 40.376194, 47.247505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543068, 40.331223, 46.628189>,  <37.857281, 40.612446, 46.588943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543068, 40.331223, 46.628189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324005, 40.167141, 46.919888>,  <38.192566, 40.068691, 47.094906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324005, 40.167141, 46.919888>,  <38.543068, 40.331223, 46.628189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324005, 40.167141, 46.919888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371405, -0.900184, -0.227436,
		0.749753, 0.146289, 0.645345,
		-0.547658, -0.410205, 0.729248,
		38.159706, 40.044079, 47.138660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881966, 39.758080, 46.895061>,  <38.543068, 40.331223, 46.628189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881966, 39.758080, 46.895061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507431, 39.655876, 46.991383>,  <38.282711, 39.594555, 47.049175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507431, 39.655876, 46.991383>,  <38.881966, 39.758080, 46.895061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507431, 39.655876, 46.991383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200718, -0.952275, -0.229967,
		0.288071, -0.166993, 0.942936,
		-0.936337, -0.255511, 0.240804,
		38.226528, 39.579224, 47.063625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995255, 39.086636, 46.970955>,  <38.881966, 39.758080, 46.895061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995255, 39.086636, 46.970955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595779, 39.107048, 46.968899>,  <38.356094, 39.119297, 46.967663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595779, 39.107048, 46.968899>,  <38.995255, 39.086636, 46.970955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595779, 39.107048, 46.968899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048434, -0.971315, -0.232813,
		-0.016877, -0.232257, 0.972508,
		-0.998684, 0.051032, -0.005143,
		38.296173, 39.122356, 46.967354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821774, 38.553059, 47.274883>,  <38.995255, 39.086636, 46.970955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821774, 38.553059, 47.274883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493446, 38.664268, 47.075302>,  <38.296448, 38.730995, 46.955551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493446, 38.664268, 47.075302>,  <38.821774, 38.553059, 47.274883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493446, 38.664268, 47.075302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104566, -0.931923, -0.347255,
		-0.561534, -0.232860, 0.794013,
		-0.820820, 0.278022, -0.498957,
		38.247200, 38.747677, 46.925613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402775, 37.981846, 47.449020>,  <38.821774, 38.553059, 47.274883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402775, 37.981846, 47.449020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237774, 38.151550, 47.126572>,  <38.138771, 38.253372, 46.933102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237774, 38.151550, 47.126572>,  <38.402775, 37.981846, 47.449020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237774, 38.151550, 47.126572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039269, -0.875820, -0.481038,
		-0.910109, -0.230086, 0.344619,
		-0.412504, 0.424265, -0.806126,
		38.114021, 38.278831, 46.884735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837269, 37.561146, 47.185516>,  <38.402775, 37.981846, 47.449020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837269, 37.561146, 47.185516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.971603, 37.780750, 46.879368>,  <38.052204, 37.912514, 46.695679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.971603, 37.780750, 46.879368>,  <37.837269, 37.561146, 47.185516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971603, 37.780750, 46.879368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008867, -0.814376, -0.580269,
		-0.941879, 0.188089, -0.278365,
		0.335836, 0.549012, -0.765376,
		38.072353, 37.945454, 46.649754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439930, 37.354504, 46.488186>,  <37.837269, 37.561146, 47.185516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439930, 37.354504, 46.488186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780605, 37.537880, 46.386623>,  <37.985008, 37.647903, 46.325687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780605, 37.537880, 46.386623>,  <37.439930, 37.354504, 46.488186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780605, 37.537880, 46.386623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141455, -0.667620, -0.730940,
		-0.504602, 0.586615, -0.633451,
		0.851685, 0.458439, -0.253903,
		38.036110, 37.675411, 46.310452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430870, 37.629910, 45.783329>,  <37.439930, 37.354504, 46.488186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430870, 37.629910, 45.783329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806683, 37.566708, 45.904865>,  <38.032169, 37.528786, 45.977787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806683, 37.566708, 45.904865>,  <37.430870, 37.629910, 45.783329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806683, 37.566708, 45.904865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134902, -0.644726, -0.752416,
		0.314781, 0.747905, -0.584424,
		0.939529, -0.158007, 0.303841,
		38.088543, 37.519306, 45.996017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911747, 37.695045, 45.190075>,  <37.430870, 37.629910, 45.783329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911747, 37.695045, 45.190075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163509, 37.521046, 45.447639>,  <38.314568, 37.416645, 45.602177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163509, 37.521046, 45.447639>,  <37.911747, 37.695045, 45.190075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163509, 37.521046, 45.447639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369743, -0.561178, -0.740519,
		0.683472, 0.704172, -0.192374,
		0.629410, -0.434995, 0.643912,
		38.352333, 37.390549, 45.640812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630142, 37.828869, 44.910969>,  <37.911747, 37.695045, 45.190075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630142, 37.828869, 44.910969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674931, 37.514885, 45.154709>,  <38.701805, 37.326496, 45.300953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674931, 37.514885, 45.154709>,  <38.630142, 37.828869, 44.910969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674931, 37.514885, 45.154709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375577, -0.534291, -0.757281,
		0.920002, 0.313651, 0.234987,
		0.111971, -0.784956, 0.609349,
		38.708523, 37.279400, 45.337513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387939, 37.596977, 44.728512>,  <38.630142, 37.828869, 44.910969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387939, 37.596977, 44.728512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.167404, 37.304382, 44.888981>,  <39.035084, 37.128826, 44.985264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.167404, 37.304382, 44.888981>,  <39.387939, 37.596977, 44.728512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167404, 37.304382, 44.888981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348809, -0.638932, -0.685637,
		0.757861, -0.238087, 0.607422,
		-0.551343, -0.731492, 0.401175,
		39.002003, 37.084934, 45.009335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865421, 37.084724, 44.810875>,  <39.387939, 37.596977, 44.728512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865421, 37.084724, 44.810875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499329, 36.923866, 44.800816>,  <39.279675, 36.827351, 44.794781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499329, 36.923866, 44.800816>,  <39.865421, 37.084724, 44.810875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499329, 36.923866, 44.800816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285846, -0.604027, -0.743938,
		0.283976, -0.688065, 0.667775,
		-0.915232, -0.402142, -0.025151,
		39.224758, 36.803223, 44.793270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051563, 36.446892, 44.761780>,  <39.865421, 37.084724, 44.810875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051563, 36.446892, 44.761780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671242, 36.454319, 44.638088>,  <39.443047, 36.458775, 44.563873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671242, 36.454319, 44.638088>,  <40.051563, 36.446892, 44.761780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671242, 36.454319, 44.638088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269972, -0.439880, -0.856517,
		-0.151931, -0.897865, 0.413227,
		-0.950806, 0.018572, -0.309230,
		39.386002, 36.459892, 44.545319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.834167, 33.205696, 28.892982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569923, 32.982872, 28.691673>,  <26.411377, 32.849178, 28.570889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569923, 32.982872, 28.691673>,  <26.834167, 33.205696, 28.892982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569923, 32.982872, 28.691673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496454, -0.178713, 0.849468,
		-0.563143, 0.811017, -0.158494,
		-0.660608, -0.557057, -0.503274,
		26.371740, 32.815754, 28.540691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235037, 33.565804, 28.958069>,  <26.834167, 33.205696, 28.892982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235037, 33.565804, 28.958069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228472, 33.166100, 28.944157>,  <26.224533, 32.926277, 28.935810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228472, 33.166100, 28.944157>,  <26.235037, 33.565804, 28.958069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228472, 33.166100, 28.944157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247097, -0.029652, 0.968537,
		-0.968852, 0.024492, -0.246428,
		-0.016414, -0.999260, -0.034781,
		26.223547, 32.866322, 28.933722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638233, 33.373413, 29.319574>,  <26.235037, 33.565804, 28.958069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638233, 33.373413, 29.319574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930363, 33.100479, 29.332500>,  <26.105640, 32.936718, 29.340256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930363, 33.100479, 29.332500>,  <25.638233, 33.373413, 29.319574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930363, 33.100479, 29.332500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078547, 0.130874, 0.988282,
		-0.678571, -0.719227, 0.149176,
		0.730323, -0.682337, 0.032314,
		26.149460, 32.895779, 29.342196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420622, 32.911285, 29.926609>,  <25.638233, 33.373413, 29.319574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420622, 32.911285, 29.926609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813314, 32.866688, 29.864933>,  <26.048929, 32.839928, 29.827927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813314, 32.866688, 29.864933>,  <25.420622, 32.911285, 29.926609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813314, 32.866688, 29.864933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174918, 0.209845, 0.961961,
		-0.074900, -0.971356, 0.225514,
		0.981730, -0.111497, -0.154190,
		26.107834, 32.833241, 29.818676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616138, 32.430759, 30.403240>,  <25.420622, 32.911285, 29.926609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616138, 32.430759, 30.403240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956738, 32.607204, 30.289839>,  <26.161097, 32.713070, 30.221798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956738, 32.607204, 30.289839>,  <25.616138, 32.430759, 30.403240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956738, 32.607204, 30.289839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174977, 0.270645, 0.946644,
		0.494305, -0.855670, 0.153269,
		0.851496, 0.441112, -0.283504,
		26.212187, 32.739536, 30.204788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154987, 32.158638, 30.892826>,  <25.616138, 32.430759, 30.403240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154987, 32.158638, 30.892826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295847, 32.495560, 30.729605>,  <26.380363, 32.697712, 30.631672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295847, 32.495560, 30.729605>,  <26.154987, 32.158638, 30.892826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295847, 32.495560, 30.729605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143176, 0.382368, 0.912850,
		0.924927, -0.379884, 0.014053,
		0.352150, 0.842308, -0.408053,
		26.401491, 32.748253, 30.607189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928722, 32.265244, 31.147936>,  <26.154987, 32.158638, 30.892826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928722, 32.265244, 31.147936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761761, 32.612377, 31.040129>,  <26.661583, 32.820656, 30.975445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761761, 32.612377, 31.040129>,  <26.928722, 32.265244, 31.147936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761761, 32.612377, 31.040129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180645, 0.369914, 0.911335,
		0.890584, 0.331710, -0.311174,
		-0.417407, 0.867832, -0.269518,
		26.636539, 32.872726, 30.959272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425600, 32.712589, 31.332880>,  <26.928722, 32.265244, 31.147936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425600, 32.712589, 31.332880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.103479, 32.943604, 31.279299>,  <26.910208, 33.082211, 31.247150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.103479, 32.943604, 31.279299>,  <27.425600, 32.712589, 31.332880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103479, 32.943604, 31.279299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117101, 0.376439, 0.919011,
		0.581188, 0.724393, -0.370777,
		-0.805300, 0.577536, -0.133954,
		26.861889, 33.116863, 31.239113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647829, 33.431282, 31.532598>,  <27.425600, 32.712589, 31.332880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647829, 33.431282, 31.532598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.249748, 33.430527, 31.571732>,  <27.010900, 33.430073, 31.595211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.249748, 33.430527, 31.571732>,  <27.647829, 33.431282, 31.532598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249748, 33.430527, 31.571732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074560, 0.632849, 0.770677,
		-0.063367, 0.774273, -0.629672,
		-0.995201, -0.001888, 0.097831,
		26.951187, 33.429962, 31.601082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489401, 33.987278, 32.037746>,  <27.647829, 33.431282, 31.532598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489401, 33.987278, 32.037746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135628, 33.800629, 32.035328>,  <26.923363, 33.688637, 32.033875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135628, 33.800629, 32.035328>,  <27.489401, 33.987278, 32.037746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135628, 33.800629, 32.035328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266724, 0.494825, 0.827047,
		-0.382928, 0.733082, -0.562100,
		-0.884434, -0.466626, -0.006048,
		26.870298, 33.660641, 32.033512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963686, 34.506023, 32.256908>,  <27.489401, 33.987278, 32.037746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963686, 34.506023, 32.256908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773693, 34.163803, 32.339298>,  <26.659698, 33.958469, 32.388733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773693, 34.163803, 32.339298>,  <26.963686, 34.506023, 32.256908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773693, 34.163803, 32.339298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398470, 0.417798, 0.816496,
		-0.784611, 0.305744, -0.539357,
		-0.474981, -0.855550, 0.205979,
		26.631199, 33.907139, 32.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371288, 34.708652, 32.608658>,  <26.963686, 34.506023, 32.256908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371288, 34.708652, 32.608658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.438118, 34.330639, 32.721088>,  <26.478216, 34.103832, 32.788548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.438118, 34.330639, 32.721088>,  <26.371288, 34.708652, 32.608658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438118, 34.330639, 32.721088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228272, 0.240260, 0.943487,
		-0.959155, -0.221794, -0.175583,
		0.167074, -0.945031, 0.281076,
		26.488239, 34.047131, 32.805412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910770, 34.551899, 33.269745>,  <26.371288, 34.708652, 32.608658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910770, 34.551899, 33.269745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198498, 34.275284, 33.296143>,  <26.371134, 34.109314, 33.311981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198498, 34.275284, 33.296143>,  <25.910770, 34.551899, 33.269745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198498, 34.275284, 33.296143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017747, 0.113263, 0.993407,
		-0.694454, -0.713404, 0.093744,
		0.719318, -0.691539, 0.065995,
		26.414293, 34.067822, 33.315941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860441, 34.177292, 33.994030>,  <25.910770, 34.551899, 33.269745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860441, 34.177292, 33.994030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230467, 34.093521, 33.867290>,  <26.452482, 34.043259, 33.791245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230467, 34.093521, 33.867290>,  <25.860441, 34.177292, 33.994030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230467, 34.093521, 33.867290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332701, 0.044398, 0.941987,
		-0.183214, -0.976815, 0.110749,
		0.925063, -0.209431, -0.316853,
		26.507986, 34.030693, 33.772236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033400, 33.571350, 34.364086>,  <25.860441, 34.177292, 33.994030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033400, 33.571350, 34.364086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393709, 33.711231, 34.261082>,  <26.609896, 33.795158, 34.199280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393709, 33.711231, 34.261082>,  <26.033400, 33.571350, 34.364086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393709, 33.711231, 34.261082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275892, -0.002862, 0.961185,
		0.335392, -0.936856, -0.099058,
		0.900775, 0.349703, -0.257511,
		26.663942, 33.816143, 34.183830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413002, 33.161495, 34.665565>,  <26.033400, 33.571350, 34.364086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413002, 33.161495, 34.665565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674717, 33.453594, 34.586926>,  <26.831745, 33.628853, 34.539742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674717, 33.453594, 34.586926>,  <26.413002, 33.161495, 34.665565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674717, 33.453594, 34.586926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406339, -0.120218, 0.905779,
		0.637807, -0.672524, -0.375384,
		0.654287, 0.730245, -0.196597,
		26.871002, 33.672668, 34.527946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053331, 32.985447, 34.863457>,  <26.413002, 33.161495, 34.665565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053331, 32.985447, 34.863457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108982, 33.381466, 34.854954>,  <27.142372, 33.619076, 34.849854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108982, 33.381466, 34.854954>,  <27.053331, 32.985447, 34.863457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108982, 33.381466, 34.854954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486899, -0.049699, 0.872043,
		0.862307, -0.131675, -0.488967,
		0.139127, 0.990046, -0.021256,
		27.150721, 33.678478, 34.848576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790670, 33.109207, 35.103474>,  <27.053331, 32.985447, 34.863457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790670, 33.109207, 35.103474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577467, 33.445442, 35.142071>,  <27.449545, 33.647182, 35.165230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577467, 33.445442, 35.142071>,  <27.790670, 33.109207, 35.103474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577467, 33.445442, 35.142071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375797, 0.133008, 0.917107,
		0.758075, 0.525090, -0.386785,
		-0.533009, 0.840589, 0.096497,
		27.417564, 33.697620, 35.171021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292250, 33.653233, 35.274681>,  <27.790670, 33.109207, 35.103474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292250, 33.653233, 35.274681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937119, 33.783855, 35.404369>,  <27.724039, 33.862228, 35.482182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937119, 33.783855, 35.404369>,  <28.292250, 33.653233, 35.274681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937119, 33.783855, 35.404369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389623, 0.158564, 0.907222,
		0.244851, 0.931782, -0.268012,
		-0.887830, 0.326558, 0.324219,
		27.670769, 33.881824, 35.501637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392820, 34.191868, 35.667904>,  <28.292250, 33.653233, 35.274681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392820, 34.191868, 35.667904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056307, 34.038395, 35.820236>,  <27.854399, 33.946312, 35.911636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056307, 34.038395, 35.820236>,  <28.392820, 34.191868, 35.667904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056307, 34.038395, 35.820236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305012, 0.244732, 0.920366,
		-0.446332, 0.890445, -0.088861,
		-0.841282, -0.383685, 0.380828,
		27.803923, 33.923290, 35.934486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839911, 34.102840, 35.059593>,  <28.392820, 34.191868, 35.667904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839911, 34.102840, 35.059593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218239, 34.120567, 35.188251>,  <29.445236, 34.131203, 35.265446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218239, 34.120567, 35.188251>,  <28.839911, 34.102840, 35.059593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218239, 34.120567, 35.188251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323674, -0.050425, -0.944824,
		-0.025650, 0.997744, -0.062036,
		0.945821, 0.044314, 0.321650,
		29.501986, 34.133862, 35.284748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027945, 34.789822, 34.914753>,  <28.839911, 34.102840, 35.059593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027945, 34.789822, 34.914753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331892, 34.531101, 34.940815>,  <29.514261, 34.375870, 34.956451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331892, 34.531101, 34.940815>,  <29.027945, 34.789822, 34.914753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331892, 34.531101, 34.940815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196211, 0.132635, -0.971550,
		0.619759, 0.751035, 0.227694,
		0.759869, -0.646803, 0.065160,
		29.559853, 34.337059, 34.960361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564629, 35.148212, 34.632877>,  <29.027945, 34.789822, 34.914753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564629, 35.148212, 34.632877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697937, 34.771336, 34.618954>,  <29.777922, 34.545212, 34.610600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697937, 34.771336, 34.618954>,  <29.564629, 35.148212, 34.632877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697937, 34.771336, 34.618954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344728, 0.156138, -0.925626,
		0.877549, 0.296486, 0.376835,
		0.333273, -0.942187, -0.034812,
		29.797918, 34.488678, 34.608509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261978, 35.181740, 34.340286>,  <29.564629, 35.148212, 34.632877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261978, 35.181740, 34.340286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109640, 34.818375, 34.271297>,  <30.018238, 34.600357, 34.229904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109640, 34.818375, 34.271297>,  <30.261978, 35.181740, 34.340286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109640, 34.818375, 34.271297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288707, 0.060374, -0.955512,
		0.878411, -0.413695, 0.239272,
		-0.380845, -0.908411, -0.172470,
		29.995386, 34.545853, 34.219555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765301, 34.852684, 33.988213>,  <30.261978, 35.181740, 34.340286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765301, 34.852684, 33.988213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428738, 34.655544, 33.899548>,  <30.226799, 34.537262, 33.846348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428738, 34.655544, 33.899548>,  <30.765301, 34.852684, 33.988213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428738, 34.655544, 33.899548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216434, 0.068505, -0.973891,
		0.495167, -0.867413, 0.049028,
		-0.841407, -0.492850, -0.221659,
		30.176315, 34.507690, 33.833050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020258, 34.479584, 33.516743>,  <30.765301, 34.852684, 33.988213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020258, 34.479584, 33.516743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624924, 34.458935, 33.459427>,  <30.387724, 34.446545, 33.425037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624924, 34.458935, 33.459427>,  <31.020258, 34.479584, 33.516743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624924, 34.458935, 33.459427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136955, 0.110359, -0.984411,
		0.066621, -0.992551, -0.102003,
		-0.988334, -0.051613, -0.143287,
		30.328423, 34.443451, 33.416439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934114, 34.104115, 32.914906>,  <31.020258, 34.479584, 33.516743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934114, 34.104115, 32.914906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580719, 34.288063, 32.950603>,  <30.368681, 34.398430, 32.972023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580719, 34.288063, 32.950603>,  <30.934114, 34.104115, 32.914906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580719, 34.288063, 32.950603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024034, 0.145769, -0.989027,
		-0.467832, -0.875941, -0.117733,
		-0.883490, 0.459869, 0.089248,
		30.315672, 34.426025, 32.977379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558769, 33.957642, 32.266476>,  <30.934114, 34.104115, 32.914906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558769, 33.957642, 32.266476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392359, 34.288765, 32.417027>,  <30.292513, 34.487438, 32.507359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392359, 34.288765, 32.417027>,  <30.558769, 33.957642, 32.266476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392359, 34.288765, 32.417027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048323, 0.433435, -0.899888,
		-0.908069, -0.356187, -0.220322,
		-0.416024, 0.827807, 0.376377,
		30.267551, 34.537106, 32.529938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897055, 34.045307, 31.952137>,  <30.558769, 33.957642, 32.266476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897055, 34.045307, 31.952137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021229, 34.402622, 32.082161>,  <30.095734, 34.617012, 32.160175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021229, 34.402622, 32.082161>,  <29.897055, 34.045307, 31.952137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021229, 34.402622, 32.082161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089374, 0.367870, -0.925573,
		-0.946383, 0.258280, 0.194037,
		0.310437, 0.893288, 0.325062,
		30.114359, 34.670609, 32.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641924, 34.476414, 31.425564>,  <29.897055, 34.045307, 31.952137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641924, 34.476414, 31.425564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880653, 34.720364, 31.634119>,  <30.023891, 34.866734, 31.759253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880653, 34.720364, 31.634119>,  <29.641924, 34.476414, 31.425564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880653, 34.720364, 31.634119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171775, 0.537628, -0.825499,
		-0.783768, 0.582241, 0.216109,
		0.596826, 0.609878, 0.521390,
		30.059702, 34.903328, 31.790537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426682, 35.123631, 31.303787>,  <29.641924, 34.476414, 31.425564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426682, 35.123631, 31.303787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809429, 35.178955, 31.405981>,  <30.039078, 35.212151, 31.467297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809429, 35.178955, 31.405981>,  <29.426682, 35.123631, 31.303787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809429, 35.178955, 31.405981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149211, 0.520587, -0.840670,
		-0.249272, 0.842532, 0.477497,
		0.956870, 0.138308, 0.255482,
		30.096491, 35.220448, 31.482626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538115, 35.849491, 31.091583>,  <29.426682, 35.123631, 31.303787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538115, 35.849491, 31.091583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889227, 35.666382, 31.148064>,  <30.099895, 35.556515, 31.181952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889227, 35.666382, 31.148064>,  <29.538115, 35.849491, 31.091583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889227, 35.666382, 31.148064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360069, 0.436027, -0.824761,
		0.315989, 0.774804, 0.547568,
		0.877782, -0.457777, 0.141203,
		30.152561, 35.529049, 31.190424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013268, 36.265865, 30.947685>,  <29.538115, 35.849491, 31.091583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013268, 36.265865, 30.947685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.219816, 35.926140, 30.903835>,  <30.343746, 35.722305, 30.877525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.219816, 35.926140, 30.903835>,  <30.013268, 36.265865, 30.947685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219816, 35.926140, 30.903835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247111, 0.270343, -0.930511,
		0.819936, 0.453402, 0.349474,
		0.516374, -0.849318, -0.109624,
		30.374729, 35.671345, 30.870949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453674, 36.421135, 30.492525>,  <30.013268, 36.265865, 30.947685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453674, 36.421135, 30.492525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465408, 36.021709, 30.474579>,  <30.472448, 35.782055, 30.463810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465408, 36.021709, 30.474579>,  <30.453674, 36.421135, 30.492525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465408, 36.021709, 30.474579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029601, 0.045734, -0.998515,
		0.999131, 0.027964, 0.030900,
		0.029336, -0.998562, -0.044866,
		30.474209, 35.722141, 30.461119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853500, 36.216469, 29.898722>,  <30.453674, 36.421135, 30.492525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853500, 36.216469, 29.898722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667248, 35.870106, 29.971809>,  <30.555496, 35.662289, 30.015661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667248, 35.870106, 29.971809>,  <30.853500, 36.216469, 29.898722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667248, 35.870106, 29.971809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103025, -0.152025, -0.982992,
		0.878962, -0.476536, -0.018423,
		-0.465630, -0.865911, 0.182720,
		30.527559, 35.610332, 30.026625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143404, 35.865017, 29.433178>,  <30.853500, 36.216469, 29.898722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143404, 35.865017, 29.433178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.808208, 35.672493, 29.536030>,  <30.607092, 35.556976, 29.597740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.808208, 35.672493, 29.536030>,  <31.143404, 35.865017, 29.433178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808208, 35.672493, 29.536030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127899, -0.284837, -0.950005,
		0.530489, -0.828979, 0.177130,
		-0.837988, -0.481312, 0.257128,
		30.556812, 35.528099, 29.613169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202974, 35.127995, 29.053556>,  <31.143404, 35.865017, 29.433178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202974, 35.127995, 29.053556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.831219, 35.237343, 29.152758>,  <30.608166, 35.302952, 29.212278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.831219, 35.237343, 29.152758>,  <31.202974, 35.127995, 29.053556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831219, 35.237343, 29.152758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332348, -0.327479, -0.884479,
		-0.160575, -0.904448, 0.395209,
		-0.929387, 0.273372, 0.248006,
		30.552402, 35.319355, 29.227160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758398, 34.689873, 28.685509>,  <31.202974, 35.127995, 29.053556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758398, 34.689873, 28.685509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471468, 34.946575, 28.794024>,  <30.299311, 35.100597, 28.859133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471468, 34.946575, 28.794024>,  <30.758398, 34.689873, 28.685509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471468, 34.946575, 28.794024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554073, -0.289348, -0.780565,
		-0.422435, -0.710230, 0.563136,
		-0.717323, 0.641756, 0.271288,
		30.256271, 35.139103, 28.875410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124441, 34.311985, 28.775354>,  <30.758398, 34.689873, 28.685509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124441, 34.311985, 28.775354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991581, 34.685112, 28.719460>,  <29.911865, 34.908989, 28.685923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991581, 34.685112, 28.719460>,  <30.124441, 34.311985, 28.775354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991581, 34.685112, 28.719460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686972, -0.340762, -0.641833,
		-0.646331, -0.117189, 0.754004,
		-0.332152, 0.932817, -0.139739,
		29.891935, 34.964958, 28.677538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429605, 34.304935, 28.906870>,  <30.124441, 34.311985, 28.775354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429605, 34.304935, 28.906870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.519585, 34.595676, 28.647306>,  <29.573572, 34.770123, 28.491568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.519585, 34.595676, 28.647306>,  <29.429605, 34.304935, 28.906870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519585, 34.595676, 28.647306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648937, -0.385025, -0.656229,
		-0.726828, 0.568718, 0.385072,
		0.224947, 0.726853, -0.648910,
		29.587069, 34.813732, 28.452633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845276, 34.367470, 28.369804>,  <29.429605, 34.304935, 28.906870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845276, 34.367470, 28.369804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086489, 34.608044, 28.160183>,  <29.231216, 34.752388, 28.034410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086489, 34.608044, 28.160183>,  <28.845276, 34.367470, 28.369804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086489, 34.608044, 28.160183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319201, -0.420128, -0.849472,
		-0.731068, 0.679538, -0.061373,
		0.603034, 0.601432, -0.524051,
		29.267399, 34.788475, 28.002968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485445, 34.689087, 27.849586>,  <28.845276, 34.367470, 28.369804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485445, 34.689087, 27.849586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861170, 34.723698, 27.716795>,  <29.086605, 34.744465, 27.637121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861170, 34.723698, 27.716795>,  <28.485445, 34.689087, 27.849586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861170, 34.723698, 27.716795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311664, -0.189236, -0.931158,
		-0.143394, 0.978112, -0.150784,
		0.939310, 0.086528, -0.331978,
		29.142963, 34.749657, 27.617201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.214073, 37.644901, 48.760162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815502, 37.612137, 48.768356>,  <36.576359, 37.592480, 48.773273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815502, 37.612137, 48.768356>,  <37.214073, 37.644901, 48.760162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815502, 37.612137, 48.768356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037207, 0.643769, 0.764315,
		-0.075791, 0.760824, -0.644517,
		-0.996429, -0.081909, 0.020483,
		36.516575, 37.587563, 48.774502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973518, 38.385555, 48.839054>,  <37.214073, 37.644901, 48.760162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973518, 38.385555, 48.839054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665752, 38.164837, 48.967751>,  <36.481094, 38.032406, 49.044968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665752, 38.164837, 48.967751>,  <36.973518, 38.385555, 48.839054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665752, 38.164837, 48.967751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193205, 0.681164, 0.706178,
		-0.608828, 0.481182, -0.630708,
		-0.769416, -0.551797, 0.321745,
		36.434929, 37.999298, 49.064274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444016, 38.814400, 48.870174>,  <36.973518, 38.385555, 48.839054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444016, 38.814400, 48.870174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310432, 38.531704, 49.119652>,  <36.230282, 38.362087, 49.269337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310432, 38.531704, 49.119652>,  <36.444016, 38.814400, 48.870174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310432, 38.531704, 49.119652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192334, 0.698852, 0.688922,
		-0.922757, 0.110113, -0.369317,
		-0.333957, -0.706740, 0.623692,
		36.210247, 38.319683, 49.306759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777134, 39.083317, 49.019974>,  <36.444016, 38.814400, 48.870174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777134, 39.083317, 49.019974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900082, 38.816998, 49.291927>,  <35.973850, 38.657207, 49.455101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900082, 38.816998, 49.291927>,  <35.777134, 39.083317, 49.019974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900082, 38.816998, 49.291927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301027, 0.609748, 0.733205,
		-0.902723, -0.430025, -0.013007,
		0.307365, -0.665797, 0.679883,
		35.992290, 38.617260, 49.495892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203350, 38.908943, 49.458115>,  <35.777134, 39.083317, 49.019974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203350, 38.908943, 49.458115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525253, 38.835266, 49.683834>,  <35.718395, 38.791061, 49.819267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525253, 38.835266, 49.683834>,  <35.203350, 38.908943, 49.458115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525253, 38.835266, 49.683834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394781, 0.543853, 0.740521,
		-0.443297, -0.818716, 0.364954,
		0.804758, -0.184193, 0.564302,
		35.766682, 38.780006, 49.853127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937958, 38.809834, 50.203728>,  <35.203350, 38.908943, 49.458115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937958, 38.809834, 50.203728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329918, 38.855873, 50.268898>,  <35.565094, 38.883495, 50.307999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329918, 38.855873, 50.268898>,  <34.937958, 38.809834, 50.203728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329918, 38.855873, 50.268898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197743, 0.452870, 0.869371,
		0.026277, -0.884116, 0.466528,
		0.979902, 0.115097, 0.162928,
		35.623890, 38.890404, 50.317776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055492, 38.618774, 50.980846>,  <34.937958, 38.809834, 50.203728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055492, 38.618774, 50.980846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362267, 38.851154, 50.871815>,  <35.546333, 38.990582, 50.806396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362267, 38.851154, 50.871815>,  <35.055492, 38.618774, 50.980846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362267, 38.851154, 50.871815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102953, 0.530645, 0.841318,
		0.633408, -0.617177, 0.466783,
		0.766939, 0.580954, -0.272575,
		35.592350, 39.025440, 50.790043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552025, 38.637638, 51.504807>,  <35.055492, 38.618774, 50.980846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552025, 38.637638, 51.504807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647514, 38.971165, 51.305706>,  <35.704807, 39.171280, 51.186245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647514, 38.971165, 51.305706>,  <35.552025, 38.637638, 51.504807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647514, 38.971165, 51.305706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081502, 0.493562, 0.865883,
		0.967662, -0.247271, 0.049866,
		0.238720, 0.833818, -0.497754,
		35.719131, 39.221310, 51.156380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133957, 39.023350, 51.914021>,  <35.552025, 38.637638, 51.504807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133957, 39.023350, 51.914021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.943672, 39.282658, 51.676216>,  <35.829502, 39.438244, 51.533535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.943672, 39.282658, 51.676216>,  <36.133957, 39.023350, 51.914021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943672, 39.282658, 51.676216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051113, 0.654372, 0.754444,
		0.878114, 0.389286, -0.278159,
		-0.475714, 0.648270, -0.594511,
		35.800957, 39.477139, 51.497864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334187, 39.587467, 52.156738>,  <36.133957, 39.023350, 51.914021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334187, 39.587467, 52.156738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032261, 39.706108, 51.922718>,  <35.851105, 39.777290, 51.782307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032261, 39.706108, 51.922718>,  <36.334187, 39.587467, 52.156738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032261, 39.706108, 51.922718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284089, 0.656115, 0.699147,
		0.591229, 0.693932, -0.410983,
		-0.754813, 0.296600, -0.585053,
		35.805817, 39.795090, 51.747204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372688, 40.319099, 51.945786>,  <36.334187, 39.587467, 52.156738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372688, 40.319099, 51.945786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985500, 40.220783, 51.925285>,  <35.753189, 40.161793, 51.912987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985500, 40.220783, 51.925285>,  <36.372688, 40.319099, 51.945786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985500, 40.220783, 51.925285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222192, 0.743500, 0.630745,
		-0.116927, 0.621927, -0.774296,
		-0.967966, -0.245793, -0.051252,
		35.695110, 40.147045, 51.909908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118210, 40.929909, 52.070873>,  <36.372688, 40.319099, 51.945786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118210, 40.929909, 52.070873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804398, 40.687733, 52.124470>,  <35.616108, 40.542427, 52.156628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804398, 40.687733, 52.124470>,  <36.118210, 40.929909, 52.070873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804398, 40.687733, 52.124470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322583, 0.583036, 0.745660,
		-0.529574, 0.541771, -0.652714,
		-0.784533, -0.605437, 0.133994,
		35.569038, 40.506100, 52.164669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478058, 41.297077, 52.275272>,  <36.118210, 40.929909, 52.070873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478058, 41.297077, 52.275272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.391521, 40.932827, 52.416107>,  <35.339600, 40.714279, 52.500607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.391521, 40.932827, 52.416107>,  <35.478058, 41.297077, 52.275272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391521, 40.932827, 52.416107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397884, 0.411551, 0.819947,
		-0.891564, 0.037299, -0.451357,
		-0.216339, -0.910623, 0.352084,
		35.326618, 40.659641, 52.521732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768620, 41.531628, 52.163551>,  <35.478058, 41.297077, 52.275272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768620, 41.531628, 52.163551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507919, 41.809662, 52.284924>,  <34.351498, 41.976482, 52.357746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507919, 41.809662, 52.284924>,  <34.768620, 41.531628, 52.163551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507919, 41.809662, 52.284924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536410, 0.139624, 0.832328,
		0.536175, 0.705236, -0.463853,
		-0.651752, 0.695088, 0.303433,
		34.312393, 42.018188, 52.375954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505863, 42.006695, 52.120674>,  <34.768620, 41.531628, 52.163551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505863, 42.006695, 52.120674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539097, 42.389194, 52.008472>,  <35.559036, 42.618694, 51.941151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539097, 42.389194, 52.008472>,  <35.505863, 42.006695, 52.120674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539097, 42.389194, 52.008472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288224, -0.292507, -0.911793,
		-0.953952, -0.005091, -0.299917,
		0.083086, 0.956250, -0.280505,
		35.564022, 42.676071, 51.924320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192162, 42.197655, 51.393913>,  <35.505863, 42.006695, 52.120674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192162, 42.197655, 51.393913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.483585, 42.453758, 51.491287>,  <35.658440, 42.607422, 51.549713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.483585, 42.453758, 51.491287>,  <35.192162, 42.197655, 51.393913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483585, 42.453758, 51.491287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473060, -0.213283, -0.854824,
		-0.495391, 0.737953, -0.458272,
		0.728562, 0.640262, 0.243438,
		35.702152, 42.645836, 51.564320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253716, 42.721752, 50.882942>,  <35.192162, 42.197655, 51.393913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253716, 42.721752, 50.882942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599888, 42.664310, 51.074947>,  <35.807590, 42.629845, 51.190151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599888, 42.664310, 51.074947>,  <35.253716, 42.721752, 50.882942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599888, 42.664310, 51.074947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486110, 0.008561, -0.873856,
		0.121376, 0.989599, 0.077214,
		0.865427, -0.143600, 0.480015,
		35.859516, 42.621231, 51.218952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809307, 43.108173, 50.493301>,  <35.253716, 42.721752, 50.882942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809307, 43.108173, 50.493301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028748, 42.844551, 50.699093>,  <36.160412, 42.686378, 50.822567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028748, 42.844551, 50.699093>,  <35.809307, 43.108173, 50.493301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028748, 42.844551, 50.699093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613514, -0.100717, -0.783235,
		0.568009, 0.745323, 0.349084,
		0.548604, -0.659052, 0.514474,
		36.193329, 42.646835, 50.853436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467125, 43.234833, 50.288929>,  <35.809307, 43.108173, 50.493301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467125, 43.234833, 50.288929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505791, 42.878769, 50.467045>,  <36.528988, 42.665131, 50.573914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505791, 42.878769, 50.467045>,  <36.467125, 43.234833, 50.288929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505791, 42.878769, 50.467045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477921, -0.350921, -0.805261,
		0.873068, 0.290648, 0.391504,
		0.096661, -0.890156, 0.445285,
		36.534790, 42.611721, 50.600632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066666, 43.135246, 50.412857>,  <36.467125, 43.234833, 50.288929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066666, 43.135246, 50.412857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928055, 42.760899, 50.387325>,  <36.844891, 42.536289, 50.372005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928055, 42.760899, 50.387325>,  <37.066666, 43.135246, 50.412857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928055, 42.760899, 50.387325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749082, -0.235125, -0.619347,
		0.564620, -0.262430, 0.782518,
		-0.346525, -0.935867, -0.063825,
		36.824097, 42.480137, 50.368179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640995, 42.804482, 50.060184>,  <37.066666, 43.135246, 50.412857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640995, 42.804482, 50.060184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356091, 42.523735, 50.056957>,  <37.185146, 42.355289, 50.055019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356091, 42.523735, 50.056957>,  <37.640995, 42.804482, 50.060184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356091, 42.523735, 50.056957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489462, -0.488407, -0.722417,
		0.503096, -0.518503, 0.691411,
		-0.712265, -0.701864, -0.008072,
		37.142410, 42.313175, 50.054535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991783, 42.247227, 50.120731>,  <37.640995, 42.804482, 50.060184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991783, 42.247227, 50.120731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647797, 42.135628, 49.949795>,  <37.441406, 42.068668, 49.847233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647797, 42.135628, 49.949795>,  <37.991783, 42.247227, 50.120731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647797, 42.135628, 49.949795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509316, -0.415756, -0.753488,
		0.032554, -0.865624, 0.499635,
		-0.859964, -0.279001, -0.427342,
		37.389809, 42.051926, 49.821594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964203, 41.551830, 49.982056>,  <37.991783, 42.247227, 50.120731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964203, 41.551830, 49.982056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679062, 41.658428, 49.722572>,  <37.507977, 41.722385, 49.566883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679062, 41.658428, 49.722572>,  <37.964203, 41.551830, 49.982056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679062, 41.658428, 49.722572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427037, -0.568805, -0.702923,
		-0.556302, -0.778107, 0.291682,
		-0.712859, 0.266478, -0.648708,
		37.465206, 41.738377, 49.527958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659992, 40.955921, 49.724209>,  <37.964203, 41.551830, 49.982056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659992, 40.955921, 49.724209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532162, 41.208214, 49.441353>,  <37.455463, 41.359589, 49.271641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532162, 41.208214, 49.441353>,  <37.659992, 40.955921, 49.724209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532162, 41.208214, 49.441353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261228, -0.658706, -0.705596,
		-0.910839, -0.410219, 0.045744,
		-0.319580, 0.630735, -0.707136,
		37.436287, 41.397434, 49.229214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141075, 40.682053, 49.391842>,  <37.659992, 40.955921, 49.724209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141075, 40.682053, 49.391842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297409, 40.944328, 49.133442>,  <37.391209, 41.101696, 48.978401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297409, 40.944328, 49.133442>,  <37.141075, 40.682053, 49.391842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297409, 40.944328, 49.133442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126783, -0.733481, -0.667782,
		-0.911688, 0.179089, -0.369799,
		0.390833, 0.655693, -0.646000,
		37.414658, 41.141037, 48.939640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865437, 40.559925, 48.766098>,  <37.141075, 40.682053, 49.391842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865437, 40.559925, 48.766098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169449, 40.789268, 48.643707>,  <37.351856, 40.926872, 48.570274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169449, 40.789268, 48.643707>,  <36.865437, 40.559925, 48.766098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169449, 40.789268, 48.643707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145818, -0.609255, -0.779452,
		-0.633321, 0.547788, -0.546656,
		0.760027, 0.573356, -0.305977,
		37.397457, 40.961277, 48.551914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658298, 40.699398, 48.094498>,  <36.865437, 40.559925, 48.766098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658298, 40.699398, 48.094498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055462, 40.745586, 48.105785>,  <37.293758, 40.773300, 48.112560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055462, 40.745586, 48.105785>,  <36.658298, 40.699398, 48.094498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055462, 40.745586, 48.105785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080301, -0.476518, -0.875490,
		-0.087646, 0.871548, -0.482412,
		0.992910, 0.115471, 0.028221,
		37.353336, 40.780228, 48.114250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847469, 40.973591, 47.430412>,  <36.658298, 40.699398, 48.094498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847469, 40.973591, 47.430412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181423, 40.832577, 47.599503>,  <37.381794, 40.747971, 47.700954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181423, 40.832577, 47.599503>,  <36.847469, 40.973591, 47.430412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181423, 40.832577, 47.599503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301752, -0.349161, -0.887148,
		0.460346, 0.868221, -0.185131,
		0.834882, -0.352531, 0.422723,
		37.431889, 40.726818, 47.726318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757092, 41.515350, 46.838474>,  <36.847469, 40.973591, 47.430412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757092, 41.515350, 46.838474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433876, 41.391884, 46.637753>,  <36.239948, 41.317802, 46.517319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433876, 41.391884, 46.637753>,  <36.757092, 41.515350, 46.838474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433876, 41.391884, 46.637753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570340, 0.196412, 0.797581,
		-0.147626, 0.930670, -0.334753,
		-0.808034, -0.308666, -0.501803,
		36.191467, 41.299286, 46.487213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312447, 42.016273, 46.884644>,  <36.757092, 41.515350, 46.838474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312447, 42.016273, 46.884644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.076424, 41.700680, 46.816128>,  <35.934811, 41.511326, 46.775017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.076424, 41.700680, 46.816128>,  <36.312447, 42.016273, 46.884644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076424, 41.700680, 46.816128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474938, 0.167635, 0.863906,
		-0.652889, 0.591109, -0.473630,
		-0.590059, -0.788980, -0.171293,
		35.899406, 41.463985, 46.764740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668167, 42.317688, 46.941322>,  <36.312447, 42.016273, 46.884644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668167, 42.317688, 46.941322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582943, 41.929855, 46.989513>,  <35.531811, 41.697155, 47.018429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582943, 41.929855, 46.989513>,  <35.668167, 42.317688, 46.941322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582943, 41.929855, 46.989513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457157, 0.207904, 0.864745,
		-0.863490, 0.129165, -0.487547,
		-0.213058, -0.969584, 0.120474,
		35.519024, 41.638981, 47.025654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914169, 42.259960, 47.061913>,  <35.668167, 42.317688, 46.941322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914169, 42.259960, 47.061913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040253, 41.908516, 47.205406>,  <35.115902, 41.697647, 47.291500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040253, 41.908516, 47.205406>,  <34.914169, 42.259960, 47.061913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040253, 41.908516, 47.205406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587572, 0.116163, 0.800791,
		-0.745256, -0.463192, -0.479633,
		0.315204, -0.878612, 0.358729,
		35.134815, 41.644932, 47.313026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300278, 41.843903, 47.299595>,  <34.914169, 42.259960, 47.061913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300278, 41.843903, 47.299595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616413, 41.707039, 47.502884>,  <34.806095, 41.624920, 47.624855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616413, 41.707039, 47.502884>,  <34.300278, 41.843903, 47.299595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616413, 41.707039, 47.502884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558329, -0.060707, 0.827395,
		-0.252253, -0.937677, -0.239020,
		0.790340, -0.342165, 0.508219,
		34.853516, 41.604389, 47.655350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024834, 41.334782, 47.773251>,  <34.300278, 41.843903, 47.299595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024834, 41.334782, 47.773251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384670, 41.433189, 47.917587>,  <34.600574, 41.492233, 48.004189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384670, 41.433189, 47.917587>,  <34.024834, 41.334782, 47.773251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384670, 41.433189, 47.917587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425858, 0.310954, 0.849678,
		0.096830, -0.918032, 0.384501,
		0.899594, 0.246017, 0.360842,
		34.654549, 41.506996, 48.025841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959419, 41.112686, 48.478794>,  <34.024834, 41.334782, 47.773251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959419, 41.112686, 48.478794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275902, 41.356865, 48.493519>,  <34.465790, 41.503372, 48.502354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275902, 41.356865, 48.493519>,  <33.959419, 41.112686, 48.478794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275902, 41.356865, 48.493519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186826, 0.183957, 0.965016,
		0.582319, -0.770399, 0.259594,
		0.791202, 0.610446, 0.036809,
		34.513264, 41.539997, 48.504562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711281, 40.658485, 48.990063>,  <33.959419, 41.112686, 48.478794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711281, 40.658485, 48.990063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324944, 40.554996, 48.995888>,  <33.093140, 40.492905, 48.999382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324944, 40.554996, 48.995888>,  <33.711281, 40.658485, 48.990063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324944, 40.554996, 48.995888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108896, -0.456256, -0.883161,
		0.235136, -0.851408, 0.468844,
		-0.965843, -0.258718, 0.014567,
		33.035191, 40.477383, 49.000259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674500, 39.890930, 48.714512>,  <33.711281, 40.658485, 48.990063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674500, 39.890930, 48.714512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306274, 40.047161, 48.713520>,  <33.085339, 40.140900, 48.712925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306274, 40.047161, 48.713520>,  <33.674500, 39.890930, 48.714512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306274, 40.047161, 48.713520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218121, -0.519348, -0.826257,
		-0.324007, -0.760083, 0.563287,
		-0.920567, 0.390578, -0.002482,
		33.030106, 40.164333, 48.712776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133377, 39.331486, 48.770920>,  <33.674500, 39.890930, 48.714512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133377, 39.331486, 48.770920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036694, 39.651814, 48.551735>,  <32.978683, 39.844009, 48.420223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036694, 39.651814, 48.551735>,  <33.133377, 39.331486, 48.770920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036694, 39.651814, 48.551735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109747, -0.538520, -0.835435,
		-0.964122, -0.262070, 0.042279,
		-0.241711, 0.800822, -0.547961,
		32.964180, 39.892059, 48.387348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917049, 38.998837, 48.275646>,  <33.133377, 39.331486, 48.770920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917049, 38.998837, 48.275646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946255, 39.376381, 48.146778>,  <32.963776, 39.602909, 48.069458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946255, 39.376381, 48.146778>,  <32.917049, 38.998837, 48.275646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946255, 39.376381, 48.146778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080334, -0.327546, -0.941414,
		-0.994090, 0.042853, -0.099739,
		0.073012, 0.943863, -0.322168,
		32.968159, 39.659538, 48.050129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385838, 39.118603, 47.746746>,  <32.917049, 38.998837, 48.275646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385838, 39.118603, 47.746746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640347, 39.411495, 47.649586>,  <32.793053, 39.587231, 47.591290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640347, 39.411495, 47.649586>,  <32.385838, 39.118603, 47.746746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640347, 39.411495, 47.649586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110766, -0.398305, -0.910540,
		-0.763472, 0.552445, -0.334536,
		0.636271, 0.732228, -0.242902,
		32.831226, 39.631165, 47.576714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177822, 39.382599, 47.086548>,  <32.385838, 39.118603, 47.746746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177822, 39.382599, 47.086548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564991, 39.464287, 47.145088>,  <32.797291, 39.513298, 47.180214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564991, 39.464287, 47.145088>,  <32.177822, 39.382599, 47.086548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564991, 39.464287, 47.145088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214234, -0.366533, -0.905405,
		-0.131259, 0.907716, -0.398526,
		0.967923, 0.204220, 0.146353,
		32.855370, 39.525555, 47.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423199, 39.724934, 46.458912>,  <32.177822, 39.382599, 47.086548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423199, 39.724934, 46.458912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753559, 39.585484, 46.636158>,  <32.951775, 39.501812, 46.742504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753559, 39.585484, 46.636158>,  <32.423199, 39.724934, 46.458912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753559, 39.585484, 46.636158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309197, -0.377144, -0.873018,
		0.471473, 0.858035, -0.203690,
		0.825900, -0.348624, 0.443115,
		33.001328, 39.480896, 46.769093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.030716, 39.291805, 52.470169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411961, 39.282368, 52.349483>,  <33.640705, 39.276707, 52.277073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411961, 39.282368, 52.349483>,  <33.030716, 39.291805, 52.470169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411961, 39.282368, 52.349483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229613, -0.705810, -0.670157,
		-0.197143, 0.708009, -0.678129,
		0.953107, -0.023590, -0.301713,
		33.697891, 39.275291, 52.258968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159019, 39.466579, 51.707172>,  <33.030716, 39.291805, 52.470169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159019, 39.466579, 51.707172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.422146, 39.191872, 51.830864>,  <33.580021, 39.027046, 51.905079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.422146, 39.191872, 51.830864>,  <33.159019, 39.466579, 51.707172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422146, 39.191872, 51.830864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276459, -0.602073, -0.749052,
		0.700605, 0.407251, -0.585918,
		0.657817, -0.686772, 0.309227,
		33.619492, 38.985840, 51.923634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377369, 39.240993, 51.092682>,  <33.159019, 39.466579, 51.707172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377369, 39.240993, 51.092682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512520, 38.944546, 51.324745>,  <33.593613, 38.766678, 51.463982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512520, 38.944546, 51.324745>,  <33.377369, 39.240993, 51.092682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512520, 38.944546, 51.324745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048878, -0.601762, -0.797178,
		0.939919, 0.297708, -0.167100,
		0.337881, -0.741115, 0.580159,
		33.613884, 38.722210, 51.498795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791885, 38.766171, 50.633629>,  <33.377369, 39.240993, 51.092682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791885, 38.766171, 50.633629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741444, 38.535130, 50.956238>,  <33.711178, 38.396507, 51.149803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741444, 38.535130, 50.956238>,  <33.791885, 38.766171, 50.633629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741444, 38.535130, 50.956238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019944, -0.814323, -0.580069,
		0.991816, -0.057066, 0.114213,
		-0.126108, -0.577600, 0.806520,
		33.703609, 38.361851, 51.198193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242229, 38.309124, 50.506084>,  <33.791885, 38.766171, 50.633629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242229, 38.309124, 50.506084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.025169, 38.108356, 50.775486>,  <33.894932, 37.987896, 50.937126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.025169, 38.108356, 50.775486>,  <34.242229, 38.309124, 50.506084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025169, 38.108356, 50.775486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025624, -0.811352, -0.583996,
		0.839566, -0.299650, 0.453143,
		-0.542653, -0.501914, 0.673506,
		33.862373, 37.957783, 50.977539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457512, 37.577793, 50.573433>,  <34.242229, 38.309124, 50.506084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457512, 37.577793, 50.573433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.091183, 37.574883, 50.734039>,  <33.871384, 37.573135, 50.830402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.091183, 37.574883, 50.734039>,  <34.457512, 37.577793, 50.573433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091183, 37.574883, 50.734039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192905, -0.868955, -0.455746,
		0.352214, -0.494837, 0.794406,
		-0.915824, -0.007275, 0.401515,
		33.816437, 37.572701, 50.854492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434505, 36.976082, 50.866879>,  <34.457512, 37.577793, 50.573433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434505, 36.976082, 50.866879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050537, 37.079777, 50.824249>,  <33.820156, 37.141994, 50.798672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050537, 37.079777, 50.824249>,  <34.434505, 36.976082, 50.866879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050537, 37.079777, 50.824249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181010, -0.863670, -0.470435,
		-0.214000, -0.432287, 0.875975,
		-0.959916, 0.259234, -0.106577,
		33.762562, 37.157547, 50.792274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042297, 36.485264, 51.257313>,  <34.434505, 36.976082, 50.866879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042297, 36.485264, 51.257313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.786686, 36.644333, 50.993950>,  <33.633320, 36.739777, 50.835934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.786686, 36.644333, 50.993950>,  <34.042297, 36.485264, 51.257313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786686, 36.644333, 50.993950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341223, -0.913707, -0.220696,
		-0.689355, 0.083633, 0.719580,
		-0.639028, 0.397675, -0.658406,
		33.594978, 36.763634, 50.796429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344891, 36.159664, 51.362698>,  <34.042297, 36.485264, 51.257313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344891, 36.159664, 51.362698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325272, 36.322483, 50.997864>,  <33.313499, 36.420174, 50.778961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325272, 36.322483, 50.997864>,  <33.344891, 36.159664, 51.362698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325272, 36.322483, 50.997864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341058, -0.865125, -0.367747,
		-0.938762, 0.293038, 0.181260,
		-0.049049, 0.407047, -0.912089,
		33.310558, 36.444595, 50.724236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800377, 35.869473, 51.006008>,  <33.344891, 36.159664, 51.362698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800377, 35.869473, 51.006008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.995419, 36.036503, 50.699318>,  <33.112446, 36.136723, 50.515305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.995419, 36.036503, 50.699318>,  <32.800377, 35.869473, 51.006008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995419, 36.036503, 50.699318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343929, -0.715317, -0.608304,
		-0.802467, 0.560312, -0.205176,
		0.487606, 0.417578, -0.766726,
		33.141701, 36.161777, 50.469299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341167, 35.988853, 50.370922>,  <32.800377, 35.869473, 51.006008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341167, 35.988853, 50.370922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.715813, 35.977417, 50.231239>,  <32.940598, 35.970554, 50.147430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.715813, 35.977417, 50.231239>,  <32.341167, 35.988853, 50.370922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715813, 35.977417, 50.231239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319347, -0.479726, -0.817240,
		-0.144158, 0.876953, -0.458446,
		0.936609, -0.028592, -0.349208,
		32.996796, 35.968838, 50.126476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312405, 36.155422, 49.689289>,  <32.341167, 35.988853, 50.370922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312405, 36.155422, 49.689289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.634838, 35.926376, 49.749077>,  <32.828300, 35.788948, 49.784950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.634838, 35.926376, 49.749077>,  <32.312405, 36.155422, 49.689289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634838, 35.926376, 49.749077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273384, -0.584302, -0.764102,
		0.524869, 0.575070, -0.627541,
		0.806086, -0.572613, 0.149467,
		32.876663, 35.754593, 49.793919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090149, 36.541061, 49.154583>,  <32.312405, 36.155422, 49.689289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090149, 36.541061, 49.154583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856447, 36.810352, 48.973297>,  <31.716227, 36.971928, 48.864525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856447, 36.810352, 48.973297>,  <32.090149, 36.541061, 49.154583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856447, 36.810352, 48.973297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040582, 0.533511, 0.844819,
		0.810555, 0.511982, -0.284385,
		-0.584255, 0.673232, -0.453217,
		31.681171, 37.012321, 48.837334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417965, 37.101589, 49.409283>,  <32.090149, 36.541061, 49.154583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417965, 37.101589, 49.409283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.066513, 37.221138, 49.260323>,  <31.855640, 37.292866, 49.170948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.066513, 37.221138, 49.260323>,  <32.417965, 37.101589, 49.409283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066513, 37.221138, 49.260323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080265, 0.676353, 0.732191,
		0.470704, 0.673218, -0.570277,
		-0.878632, 0.298872, -0.372398,
		31.802923, 37.310799, 49.148602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415295, 37.806164, 49.362747>,  <32.417965, 37.101589, 49.409283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415295, 37.806164, 49.362747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029785, 37.705631, 49.398457>,  <31.798479, 37.645309, 49.419880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029785, 37.705631, 49.398457>,  <32.415295, 37.806164, 49.362747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029785, 37.705631, 49.398457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086393, 0.610828, 0.787036,
		-0.252337, 0.750814, -0.610414,
		-0.963775, -0.251334, 0.089269,
		31.740652, 37.630230, 49.425236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137627, 38.414188, 49.426037>,  <32.415295, 37.806164, 49.362747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137627, 38.414188, 49.426037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847378, 38.166058, 49.545147>,  <31.673229, 38.017178, 49.616611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847378, 38.166058, 49.545147>,  <32.137627, 38.414188, 49.426037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847378, 38.166058, 49.545147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302879, 0.676514, 0.671263,
		-0.617848, 0.396895, -0.678778,
		-0.725623, -0.620326, 0.297771,
		31.629690, 37.979961, 49.634480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343868, 38.758652, 49.328526>,  <32.137627, 38.414188, 49.426037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343868, 38.758652, 49.328526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395540, 38.498413, 49.627869>,  <31.426544, 38.342270, 49.807476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395540, 38.498413, 49.627869>,  <31.343868, 38.758652, 49.328526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395540, 38.498413, 49.627869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292792, 0.696010, 0.655624,
		-0.947409, -0.303809, -0.100577,
		0.129182, -0.650593, 0.748359,
		31.434296, 38.303234, 49.852375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914804, 39.097191, 49.674068>,  <31.343868, 38.758652, 49.328526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914804, 39.097191, 49.674068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055328, 38.809460, 49.913780>,  <31.139643, 38.636822, 50.057610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055328, 38.809460, 49.913780>,  <30.914804, 39.097191, 49.674068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055328, 38.809460, 49.913780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163304, 0.583192, 0.795750,
		-0.921907, -0.377422, 0.087412,
		0.351312, -0.719333, 0.599284,
		31.160723, 38.593658, 50.093567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393009, 38.962059, 50.195534>,  <30.914804, 39.097191, 49.674068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393009, 38.962059, 50.195534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.751312, 38.852959, 50.335949>,  <30.966293, 38.787498, 50.420197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.751312, 38.852959, 50.335949>,  <30.393009, 38.962059, 50.195534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751312, 38.852959, 50.335949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173024, 0.513476, 0.840479,
		-0.409490, -0.813603, 0.412757,
		0.895757, -0.272751, 0.351036,
		31.020039, 38.771133, 50.441261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237719, 38.943100, 50.838055>,  <30.393009, 38.962059, 50.195534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237719, 38.943100, 50.838055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.636345, 38.928253, 50.867661>,  <30.875521, 38.919346, 50.885422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.636345, 38.928253, 50.867661>,  <30.237719, 38.943100, 50.838055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636345, 38.928253, 50.867661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042216, 0.541162, 0.839858,
		-0.071230, -0.840099, 0.537737,
		0.996567, -0.037122, 0.074012,
		30.935314, 38.917118, 50.889866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408754, 38.896626, 51.505512>,  <30.237719, 38.943100, 50.838055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408754, 38.896626, 51.505512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748058, 39.043339, 51.352711>,  <30.951641, 39.131367, 51.261028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748058, 39.043339, 51.352711>,  <30.408754, 38.896626, 51.505512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748058, 39.043339, 51.352711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202846, 0.441292, 0.874137,
		0.489193, -0.818983, 0.299929,
		0.848259, 0.366782, -0.382004,
		31.002537, 39.153374, 51.238110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950169, 38.776016, 52.005241>,  <30.408754, 38.896626, 51.505512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950169, 38.776016, 52.005241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.069088, 39.077908, 51.771317>,  <31.140440, 39.259041, 51.630962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.069088, 39.077908, 51.771317>,  <30.950169, 38.776016, 52.005241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069088, 39.077908, 51.771317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163103, 0.563357, 0.809955,
		0.940751, -0.336181, 0.044387,
		0.297297, 0.754726, -0.584810,
		31.158278, 39.304325, 51.595875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436392, 39.068512, 52.551048>,  <30.950169, 38.776016, 52.005241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436392, 39.068512, 52.551048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406391, 39.332672, 52.252186>,  <31.388390, 39.491169, 52.072868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406391, 39.332672, 52.252186>,  <31.436392, 39.068512, 52.551048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406391, 39.332672, 52.252186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079963, 0.742875, 0.664638,
		0.993972, 0.109595, -0.002910,
		-0.075003, 0.660398, -0.747160,
		31.383890, 39.530792, 52.028038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014420, 39.495117, 52.628647>,  <31.436392, 39.068512, 52.551048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014420, 39.495117, 52.628647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.716141, 39.691525, 52.448498>,  <31.537172, 39.809368, 52.340408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.716141, 39.691525, 52.448498>,  <32.014420, 39.495117, 52.628647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716141, 39.691525, 52.448498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062422, 0.724456, 0.686489,
		0.663352, 0.483802, -0.570877,
		-0.745700, 0.491019, -0.450369,
		31.492432, 39.838829, 52.313389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236748, 40.272972, 52.520405>,  <32.014420, 39.495117, 52.628647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236748, 40.272972, 52.520405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.841694, 40.212391, 52.536579>,  <31.604662, 40.176041, 52.546284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.841694, 40.212391, 52.536579>,  <32.236748, 40.272972, 52.520405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841694, 40.212391, 52.536579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083239, 0.725262, 0.683422,
		-0.132834, 0.671607, -0.728903,
		-0.987637, -0.151455, 0.040436,
		31.545403, 40.166954, 52.548710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083046, 40.819893, 52.930614>,  <32.236748, 40.272972, 52.520405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083046, 40.819893, 52.930614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733765, 40.626175, 52.908813>,  <31.524197, 40.509945, 52.895733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733765, 40.626175, 52.908813>,  <32.083046, 40.819893, 52.930614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733765, 40.626175, 52.908813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348646, 0.542620, 0.764205,
		-0.340530, 0.686309, -0.642666,
		-0.873204, -0.484298, -0.054500,
		31.471804, 40.480885, 52.892464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134533, 41.020546, 52.134041>,  <32.083046, 40.819893, 52.930614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134533, 41.020546, 52.134041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.188652, 41.347473, 51.910011>,  <32.221123, 41.543629, 51.775593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.188652, 41.347473, 51.910011>,  <32.134533, 41.020546, 52.134041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188652, 41.347473, 51.910011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008946, -0.566259, -0.824179,
		-0.990764, 0.106502, -0.083927,
		0.135301, 0.817318, -0.560076,
		32.229244, 41.592667, 51.741989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621531, 41.042408, 51.654930>,  <32.134533, 41.020546, 52.134041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621531, 41.042408, 51.654930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.915760, 41.254230, 51.485935>,  <32.092297, 41.381325, 51.384537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.915760, 41.254230, 51.485935>,  <31.621531, 41.042408, 51.654930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915760, 41.254230, 51.485935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036753, -0.591536, -0.805441,
		-0.676445, 0.607990, -0.415656,
		0.735575, 0.529560, -0.422487,
		32.136433, 41.413097, 51.359188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472551, 41.084404, 50.906841>,  <31.621531, 41.042408, 51.654930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472551, 41.084404, 50.906841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.859188, 41.186897, 50.904327>,  <32.091171, 41.248394, 50.902821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.859188, 41.186897, 50.904327>,  <31.472551, 41.084404, 50.906841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859188, 41.186897, 50.904327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126072, -0.496632, -0.858757,
		-0.223164, 0.829277, -0.512345,
		0.966594, 0.256235, -0.006282,
		32.149166, 41.263767, 50.902443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622776, 41.432026, 50.223995>,  <31.472551, 41.084404, 50.906841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622776, 41.432026, 50.223995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978527, 41.297134, 50.347469>,  <32.191978, 41.216198, 50.421555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978527, 41.297134, 50.347469>,  <31.622776, 41.432026, 50.223995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978527, 41.297134, 50.347469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214368, -0.288754, -0.933096,
		0.403800, 0.896046, -0.184520,
		0.889377, -0.337229, 0.308683,
		32.245338, 41.195965, 50.440075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206017, 41.730217, 49.787411>,  <31.622776, 41.432026, 50.223995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206017, 41.730217, 49.787411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.368324, 41.400558, 49.945461>,  <32.465710, 41.202763, 50.040291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.368324, 41.400558, 49.945461>,  <32.206017, 41.730217, 49.787411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368324, 41.400558, 49.945461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250161, -0.315661, -0.915302,
		0.879073, 0.470249, 0.078084,
		0.405771, -0.824151, 0.395127,
		32.490055, 41.153313, 50.063999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771133, 41.707264, 49.358131>,  <32.206017, 41.730217, 49.787411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771133, 41.707264, 49.358131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.710953, 41.343571, 49.513393>,  <32.674843, 41.125355, 49.606552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.710953, 41.343571, 49.513393>,  <32.771133, 41.707264, 49.358131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710953, 41.343571, 49.513393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308476, -0.416198, -0.855349,
		0.939259, -0.008953, 0.343094,
		-0.150453, -0.909230, 0.388155,
		32.665817, 41.070801, 49.629841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368214, 41.347145, 49.143906>,  <32.771133, 41.707264, 49.358131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368214, 41.347145, 49.143906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.114597, 41.054382, 49.243744>,  <32.962429, 40.878723, 49.303646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.114597, 41.054382, 49.243744>,  <33.368214, 41.347145, 49.143906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114597, 41.054382, 49.243744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271866, -0.513140, -0.814111,
		0.723934, -0.448324, 0.524334,
		-0.634042, -0.731910, 0.249596,
		32.924385, 40.834808, 49.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210789, 41.156971, 49.270668>,  <33.368214, 41.347145, 49.143906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210789, 41.156971, 49.270668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395546, 41.459862, 49.085949>,  <34.506401, 41.641598, 48.975117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395546, 41.459862, 49.085949>,  <34.210789, 41.156971, 49.270668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395546, 41.459862, 49.085949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120712, 0.462151, 0.878547,
		0.878684, -0.461537, 0.122056,
		0.461890, 0.757231, -0.461798,
		34.534115, 41.687031, 48.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756771, 41.380516, 49.684021>,  <34.210789, 41.156971, 49.270668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756771, 41.380516, 49.684021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660149, 41.698215, 49.461018>,  <34.602173, 41.888836, 49.327217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660149, 41.698215, 49.461018>,  <34.756771, 41.380516, 49.684021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660149, 41.698215, 49.461018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018346, 0.570682, 0.820966,
		0.970212, 0.208541, -0.123283,
		-0.241560, 0.794250, -0.557508,
		34.587681, 41.936489, 49.293766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253529, 41.876308, 49.928490>,  <34.756771, 41.380516, 49.684021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253529, 41.876308, 49.928490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978092, 42.105419, 49.750607>,  <34.812832, 42.242886, 49.643875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978092, 42.105419, 49.750607>,  <35.253529, 41.876308, 49.928490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978092, 42.105419, 49.750607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057648, 0.654568, 0.753802,
		0.722853, 0.493426, -0.483750,
		-0.688592, 0.572776, -0.444711,
		34.771515, 42.277252, 49.617191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411568, 42.624348, 49.911709>,  <35.253529, 41.876308, 49.928490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411568, 42.624348, 49.911709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013027, 42.632507, 49.878559>,  <34.773903, 42.637402, 49.858669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013027, 42.632507, 49.878559>,  <35.411568, 42.624348, 49.911709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013027, 42.632507, 49.878559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039926, 0.746840, 0.663805,
		0.075435, 0.664691, -0.743300,
		-0.996351, 0.020397, -0.082876,
		34.714123, 42.638626, 49.853695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234276, 43.204529, 49.750900>,  <35.411568, 42.624348, 49.911709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234276, 43.204529, 49.750900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.881226, 43.084862, 49.895935>,  <34.669395, 43.013062, 49.982956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.881226, 43.084862, 49.895935>,  <35.234276, 43.204529, 49.750900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881226, 43.084862, 49.895935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102805, 0.875518, 0.472122,
		-0.458694, 0.379431, -0.803512,
		-0.882627, -0.299165, 0.362588,
		34.616436, 42.995113, 50.004711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897163, 43.841774, 49.773273>,  <35.234276, 43.204529, 49.750900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897163, 43.841774, 49.773273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.690372, 43.597794, 50.013504>,  <34.566296, 43.451405, 50.157642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.690372, 43.597794, 50.013504>,  <34.897163, 43.841774, 49.773273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690372, 43.597794, 50.013504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107894, 0.742445, 0.661161,
		-0.849171, 0.277008, -0.449639,
		-0.516979, -0.609952, 0.600576,
		34.535278, 43.414806, 50.193676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279942, 44.172451, 49.911617>,  <34.897163, 43.841774, 49.773273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279942, 44.172451, 49.911617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344643, 43.909519, 50.206032>,  <34.383465, 43.751759, 50.382683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344643, 43.909519, 50.206032>,  <34.279942, 44.172451, 49.911617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344643, 43.909519, 50.206032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358210, 0.655879, 0.664461,
		-0.919522, -0.371136, -0.129370,
		0.161754, -0.657328, 0.736040,
		34.393169, 43.712322, 50.426846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703945, 44.219349, 50.333206>,  <34.279942, 44.172451, 49.911617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703945, 44.219349, 50.333206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.928921, 44.000923, 50.581551>,  <34.063908, 43.869865, 50.730556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.928921, 44.000923, 50.581551>,  <33.703945, 44.219349, 50.333206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928921, 44.000923, 50.581551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251325, 0.602453, 0.757553,
		-0.787714, -0.582118, 0.201605,
		0.562443, -0.546067, 0.620862,
		34.097652, 43.837105, 50.767811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246513, 44.024258, 50.854465>,  <33.703945, 44.219349, 50.333206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246513, 44.024258, 50.854465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626999, 44.037491, 50.977165>,  <33.855289, 44.045429, 51.050785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626999, 44.037491, 50.977165>,  <33.246513, 44.024258, 50.854465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626999, 44.037491, 50.977165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235520, 0.720096, 0.652680,
		-0.199293, -0.693085, 0.692759,
		0.951216, 0.033084, 0.306746,
		33.912365, 44.047417, 51.069187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.243698, 34.421394, 38.799923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586178, 34.320793, 38.980438>,  <37.791668, 34.260433, 39.088749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586178, 34.320793, 38.980438>,  <37.243698, 34.421394, 38.799923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586178, 34.320793, 38.980438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121156, 0.751406, 0.648621,
		-0.502234, -0.610028, 0.612885,
		0.856202, -0.251505, 0.451290,
		37.843040, 34.245342, 39.115826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124027, 34.301628, 39.537067>,  <37.243698, 34.421394, 38.799923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124027, 34.301628, 39.537067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515694, 34.365566, 39.486980>,  <37.750694, 34.403931, 39.456928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515694, 34.365566, 39.486980>,  <37.124027, 34.301628, 39.537067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515694, 34.365566, 39.486980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034125, 0.737435, 0.674555,
		0.200162, -0.656230, 0.727528,
		0.979168, 0.159847, -0.125212,
		37.809444, 34.413521, 39.449417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434628, 34.193867, 40.177334>,  <37.124027, 34.301628, 39.537067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434628, 34.193867, 40.177334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642895, 34.447475, 39.948627>,  <37.767857, 34.599640, 39.811405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642895, 34.447475, 39.948627>,  <37.434628, 34.193867, 40.177334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642895, 34.447475, 39.948627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044001, 0.688740, 0.723672,
		0.852622, -0.351638, 0.386505,
		0.520672, 0.634025, -0.571763,
		37.799095, 34.637684, 39.777100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886627, 34.631042, 40.641701>,  <37.434628, 34.193867, 40.177334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886627, 34.631042, 40.641701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883144, 34.859852, 40.313625>,  <37.881054, 34.997139, 40.116779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883144, 34.859852, 40.313625>,  <37.886627, 34.631042, 40.641701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883144, 34.859852, 40.313625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079856, 0.817998, 0.569651,
		0.996768, -0.060535, -0.052805,
		-0.008711, 0.572027, -0.820188,
		37.880531, 35.031460, 40.067570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387295, 35.110107, 40.747086>,  <37.886627, 34.631042, 40.641701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387295, 35.110107, 40.747086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173603, 35.266308, 40.447189>,  <38.045387, 35.360027, 40.267254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173603, 35.266308, 40.447189>,  <38.387295, 35.110107, 40.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173603, 35.266308, 40.447189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046174, 0.872104, 0.487137,
		0.844076, 0.294863, -0.447874,
		-0.534231, 0.390501, -0.749737,
		38.013332, 35.383457, 40.222267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688381, 35.702530, 40.648468>,  <38.387295, 35.110107, 40.747086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688381, 35.702530, 40.648468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340794, 35.754322, 40.457417>,  <38.132240, 35.785397, 40.342785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340794, 35.754322, 40.457417>,  <38.688381, 35.702530, 40.648468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340794, 35.754322, 40.457417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055891, 0.933307, 0.354703,
		0.491701, 0.334921, -0.803777,
		-0.868968, 0.129485, -0.477627,
		38.080105, 35.793167, 40.314129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782375, 36.375019, 40.309677>,  <38.688381, 35.702530, 40.648468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782375, 36.375019, 40.309677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391998, 36.302586, 40.358261>,  <38.157772, 36.259125, 40.387413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391998, 36.302586, 40.358261>,  <38.782375, 36.375019, 40.309677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391998, 36.302586, 40.358261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102143, 0.871827, 0.479045,
		-0.192637, 0.455113, -0.869346,
		-0.975939, -0.181080, 0.121459,
		38.099216, 36.248260, 40.394699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458851, 37.064598, 40.234734>,  <38.782375, 36.375019, 40.309677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458851, 37.064598, 40.234734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161243, 36.852562, 40.397430>,  <37.982677, 36.725342, 40.495049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161243, 36.852562, 40.397430>,  <38.458851, 37.064598, 40.234734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161243, 36.852562, 40.397430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241019, 0.780692, 0.576567,
		-0.623175, 0.330944, -0.708611,
		-0.744018, -0.530091, 0.406743,
		37.938038, 36.693535, 40.519455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908215, 37.519608, 40.185081>,  <38.458851, 37.064598, 40.234734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908215, 37.519608, 40.185081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821613, 37.261093, 40.477776>,  <37.769653, 37.105984, 40.653393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821613, 37.261093, 40.477776>,  <37.908215, 37.519608, 40.185081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821613, 37.261093, 40.477776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271340, 0.759816, 0.590807,
		-0.937817, -0.070637, -0.339867,
		-0.216503, -0.646289, 0.731736,
		37.756660, 37.067207, 40.697296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368862, 37.797546, 40.359612>,  <37.908215, 37.519608, 40.185081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368862, 37.797546, 40.359612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455860, 37.557110, 40.667217>,  <37.508060, 37.412849, 40.851780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455860, 37.557110, 40.667217>,  <37.368862, 37.797546, 40.359612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455860, 37.557110, 40.667217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182889, 0.748827, 0.637033,
		-0.958774, -0.279196, 0.052933,
		0.217495, -0.601089, 0.769017,
		37.521107, 37.376781, 40.897923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834911, 37.938717, 40.855556>,  <37.368862, 37.797546, 40.359612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834911, 37.938717, 40.855556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118042, 37.770481, 41.082565>,  <37.287922, 37.669540, 41.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118042, 37.770481, 41.082565>,  <36.834911, 37.938717, 40.855556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118042, 37.770481, 41.082565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257048, 0.594969, 0.761536,
		-0.657952, -0.684919, 0.313025,
		0.707831, -0.420592, 0.567519,
		37.330391, 37.644302, 41.252819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618317, 37.723789, 41.513603>,  <36.834911, 37.938717, 40.855556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618317, 37.723789, 41.513603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009930, 37.776455, 41.575787>,  <37.244896, 37.808056, 41.613098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009930, 37.776455, 41.575787>,  <36.618317, 37.723789, 41.513603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009930, 37.776455, 41.575787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203487, 0.595033, 0.777514,
		0.009870, -0.792842, 0.609347,
		0.979028, 0.131668, 0.155460,
		37.303638, 37.815956, 41.622425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267532, 37.049717, 41.657738>,  <36.618317, 37.723789, 41.513603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267532, 37.049717, 41.657738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877678, 37.037781, 41.746460>,  <35.643764, 37.030617, 41.799694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877678, 37.037781, 41.746460>,  <36.267532, 37.049717, 41.657738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877678, 37.037781, 41.746460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215402, -0.143862, -0.965870,
		0.060737, -0.989147, 0.133784,
		-0.974635, -0.029847, 0.221802,
		35.585289, 37.028828, 41.813000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014427, 36.445660, 41.262619>,  <36.267532, 37.049717, 41.657738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014427, 36.445660, 41.262619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718769, 36.705574, 41.333553>,  <35.541374, 36.861523, 41.376114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718769, 36.705574, 41.333553>,  <36.014427, 36.445660, 41.262619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718769, 36.705574, 41.333553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378322, -0.182692, -0.907467,
		-0.557260, -0.737837, 0.380864,
		-0.739144, 0.649784, 0.177333,
		35.497025, 36.900509, 41.386753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537033, 36.021614, 40.975426>,  <36.014427, 36.445660, 41.262619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537033, 36.021614, 40.975426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435520, 36.408310, 40.988110>,  <35.374611, 36.640327, 40.995720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435520, 36.408310, 40.988110>,  <35.537033, 36.021614, 40.975426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435520, 36.408310, 40.988110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387628, -0.071613, -0.919030,
		-0.886194, -0.245526, 0.392910,
		-0.253783, 0.966741, 0.031709,
		35.359386, 36.698334, 40.997623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914307, 36.037273, 40.681618>,  <35.537033, 36.021614, 40.975426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914307, 36.037273, 40.681618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980095, 36.431057, 40.657001>,  <35.019566, 36.667328, 40.642231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980095, 36.431057, 40.657001>,  <34.914307, 36.037273, 40.681618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980095, 36.431057, 40.657001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550507, 0.039845, -0.833879,
		-0.818470, 0.171022, 0.548506,
		0.164466, 0.984461, -0.061537,
		35.029434, 36.726395, 40.638542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249775, 36.311371, 40.541214>,  <34.914307, 36.037273, 40.681618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249775, 36.311371, 40.541214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544735, 36.534954, 40.389526>,  <34.721710, 36.669106, 40.298515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544735, 36.534954, 40.389526>,  <34.249775, 36.311371, 40.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544735, 36.534954, 40.389526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444099, -0.021814, -0.895712,
		-0.508942, 0.828906, 0.232149,
		0.737397, 0.558962, -0.379218,
		34.765953, 36.702644, 40.275761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884346, 36.812424, 40.237556>,  <34.249775, 36.311371, 40.541214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884346, 36.812424, 40.237556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242798, 36.832619, 40.061188>,  <34.457867, 36.844738, 39.955368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242798, 36.832619, 40.061188>,  <33.884346, 36.812424, 40.237556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242798, 36.832619, 40.061188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443292, 0.149427, -0.883835,
		0.021260, 0.987483, 0.156288,
		0.896125, 0.050491, -0.440920,
		34.511635, 36.847767, 39.928913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709896, 37.368088, 39.635799>,  <33.884346, 36.812424, 40.237556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709896, 37.368088, 39.635799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043388, 37.168327, 39.541573>,  <34.243484, 37.048470, 39.485035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043388, 37.168327, 39.541573>,  <33.709896, 37.368088, 39.635799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043388, 37.168327, 39.541573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466054, -0.407660, -0.785243,
		0.296119, 0.764469, -0.572626,
		0.833731, -0.499400, -0.235568,
		34.293507, 37.018509, 39.470901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752186, 37.463440, 38.922642>,  <33.709896, 37.368088, 39.635799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752186, 37.463440, 38.922642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979523, 37.140472, 38.985973>,  <34.115925, 36.946693, 39.023972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979523, 37.140472, 38.985973>,  <33.752186, 37.463440, 38.922642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979523, 37.140472, 38.985973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434658, -0.458013, -0.775433,
		0.698615, 0.371889, -0.611257,
		0.568339, -0.807417, 0.158330,
		34.150024, 36.898247, 39.033474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098076, 37.352192, 38.354542>,  <33.752186, 37.463440, 38.922642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098076, 37.352192, 38.354542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099369, 36.997635, 38.539707>,  <34.100143, 36.784901, 38.650806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099369, 36.997635, 38.539707>,  <34.098076, 37.352192, 38.354542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099369, 36.997635, 38.539707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531064, -0.393764, -0.750281,
		0.847326, -0.243415, -0.472005,
		0.003229, -0.886397, 0.462915,
		34.100338, 36.731716, 38.678581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129055, 36.763504, 37.818832>,  <34.098076, 37.352192, 38.354542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129055, 36.763504, 37.818832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015457, 36.577831, 38.154423>,  <33.947300, 36.466427, 38.355778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015457, 36.577831, 38.154423>,  <34.129055, 36.763504, 37.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015457, 36.577831, 38.154423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773118, -0.406690, -0.486715,
		0.567129, -0.786851, -0.243373,
		-0.283995, -0.464186, 0.838975,
		33.930260, 36.438576, 38.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989468, 36.175743, 37.502380>,  <34.129055, 36.763504, 37.818832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989468, 36.175743, 37.502380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771530, 36.202263, 37.836746>,  <33.640766, 36.218174, 38.037365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771530, 36.202263, 37.836746>,  <33.989468, 36.175743, 37.502380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771530, 36.202263, 37.836746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690402, -0.601239, -0.402313,
		0.475912, -0.796314, 0.373352,
		-0.544842, 0.066298, 0.835914,
		33.608078, 36.222153, 38.087521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929504, 35.451664, 37.763687>,  <33.989468, 36.175743, 37.502380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929504, 35.451664, 37.763687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643730, 35.695347, 37.901356>,  <33.472267, 35.841557, 37.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643730, 35.695347, 37.901356>,  <33.929504, 35.451664, 37.763687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643730, 35.695347, 37.901356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698714, -0.595002, -0.397204,
		-0.037197, -0.524253, 0.850750,
		-0.714434, 0.609205, 0.344171,
		33.429401, 35.878109, 38.004608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495022, 34.955864, 38.011532>,  <33.929504, 35.451664, 37.763687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495022, 34.955864, 38.011532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288277, 35.288250, 37.929211>,  <33.164230, 35.487682, 37.879818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288277, 35.288250, 37.929211>,  <33.495022, 34.955864, 38.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288277, 35.288250, 37.929211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726213, -0.552891, -0.408566,
		-0.453288, -0.061718, 0.889225,
		-0.516860, 0.830965, -0.205799,
		33.133217, 35.537540, 37.867470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898521, 34.717232, 38.105015>,  <33.495022, 34.955864, 38.011532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898521, 34.717232, 38.105015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843578, 35.050072, 37.890079>,  <32.810612, 35.249775, 37.761116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843578, 35.050072, 37.890079>,  <32.898521, 34.717232, 38.105015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843578, 35.050072, 37.890079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748868, -0.442310, -0.493517,
		-0.648330, 0.334611, 0.683889,
		-0.137354, 0.832104, -0.537342,
		32.802372, 35.299702, 37.728878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252983, 34.854633, 38.106262>,  <32.898521, 34.717232, 38.105015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252983, 34.854633, 38.106262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367691, 35.041683, 37.771816>,  <32.436516, 35.153915, 37.571148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367691, 35.041683, 37.771816>,  <32.252983, 34.854633, 38.106262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367691, 35.041683, 37.771816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870247, -0.237753, -0.431443,
		-0.400544, 0.851351, 0.338772,
		0.286766, 0.467627, -0.836116,
		32.453720, 35.181973, 37.520981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671268, 34.707481, 38.616791>,  <32.252983, 34.854633, 38.106262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671268, 34.707481, 38.616791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466642, 34.365181, 38.585815>,  <31.343866, 34.159801, 38.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466642, 34.365181, 38.585815>,  <31.671268, 34.707481, 38.616791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466642, 34.365181, 38.585815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122932, -0.162092, 0.979088,
		-0.850404, 0.491350, 0.188120,
		-0.511567, -0.855746, -0.077441,
		31.313171, 34.108456, 38.562584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160450, 34.744640, 39.128017>,  <31.671268, 34.707481, 38.616791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160450, 34.744640, 39.128017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228453, 34.356823, 39.057503>,  <31.269255, 34.124130, 39.015194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228453, 34.356823, 39.057503>,  <31.160450, 34.744640, 39.128017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228453, 34.356823, 39.057503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039345, -0.172075, 0.984298,
		-0.984657, -0.174275, 0.008893,
		0.170008, -0.969545, -0.176291,
		31.279455, 34.065960, 39.004616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600452, 34.185966, 39.337322>,  <31.160450, 34.744640, 39.128017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600452, 34.185966, 39.337322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993240, 34.110641, 39.343922>,  <31.228914, 34.065449, 39.347881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993240, 34.110641, 39.343922>,  <30.600452, 34.185966, 39.337322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993240, 34.110641, 39.343922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022064, -0.027487, 0.999379,
		-0.187738, -0.981725, -0.031146,
		0.981971, -0.188308, 0.016500,
		31.287832, 34.054150, 39.348873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729593, 33.969616, 39.911701>,  <30.600452, 34.185966, 39.337322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729593, 33.969616, 39.911701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119215, 33.971661, 39.821198>,  <31.352987, 33.972889, 39.766895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119215, 33.971661, 39.821198>,  <30.729593, 33.969616, 39.911701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119215, 33.971661, 39.821198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216625, 0.268431, 0.938626,
		0.065534, -0.963285, 0.260358,
		0.974053, 0.005112, -0.226263,
		31.411430, 33.973194, 39.753319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039770, 33.610092, 40.418930>,  <30.729593, 33.969616, 39.911701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039770, 33.610092, 40.418930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331158, 33.825809, 40.249931>,  <31.505989, 33.955238, 40.148533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331158, 33.825809, 40.249931>,  <31.039770, 33.610092, 40.418930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331158, 33.825809, 40.249931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316727, 0.281727, 0.905712,
		0.607470, -0.793597, 0.034420,
		0.728467, 0.539291, -0.422494,
		31.549698, 33.987598, 40.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705549, 33.474037, 40.721581>,  <31.039770, 33.610092, 40.418930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705549, 33.474037, 40.721581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810041, 33.817665, 40.545506>,  <31.872736, 34.023842, 40.439861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810041, 33.817665, 40.545506>,  <31.705549, 33.474037, 40.721581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810041, 33.817665, 40.545506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563168, 0.234727, 0.792304,
		0.783965, -0.454874, -0.422480,
		0.261231, 0.859066, -0.440188,
		31.888411, 34.075386, 40.413448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420853, 33.511639, 40.840324>,  <31.705549, 33.474037, 40.721581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420853, 33.511639, 40.840324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244141, 33.866447, 40.786625>,  <32.138115, 34.079334, 40.754406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244141, 33.866447, 40.786625>,  <32.420853, 33.511639, 40.840324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244141, 33.866447, 40.786625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439231, 0.344337, 0.829764,
		0.782246, 0.307607, -0.541728,
		-0.441778, 0.887023, -0.134246,
		32.111607, 34.132553, 40.746349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907013, 34.022545, 41.164394>,  <32.420853, 33.511639, 40.840324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907013, 34.022545, 41.164394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555073, 34.212109, 41.150158>,  <32.343906, 34.325848, 41.141617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555073, 34.212109, 41.150158>,  <32.907013, 34.022545, 41.164394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555073, 34.212109, 41.150158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163007, 0.371290, 0.914096,
		0.446414, 0.798469, -0.403931,
		-0.879854, 0.473909, -0.035594,
		32.291115, 34.354282, 41.139481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991890, 34.715385, 41.491798>,  <32.907013, 34.022545, 41.164394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991890, 34.715385, 41.491798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598728, 34.644741, 41.512642>,  <32.362831, 34.602356, 41.525146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598728, 34.644741, 41.512642>,  <32.991890, 34.715385, 41.491798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598728, 34.644741, 41.512642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011737, 0.342510, 0.939441,
		-0.183762, 0.922765, -0.338727,
		-0.982901, -0.176609, 0.052110,
		32.303860, 34.591759, 41.528275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643604, 35.308472, 41.667297>,  <32.991890, 34.715385, 41.491798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643604, 35.308472, 41.667297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362003, 35.047741, 41.780079>,  <32.193043, 34.891304, 41.847748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362003, 35.047741, 41.780079>,  <32.643604, 35.308472, 41.667297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362003, 35.047741, 41.780079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137657, 0.514719, 0.846236,
		-0.696724, 0.556943, -0.452094,
		-0.704007, -0.651827, 0.281950,
		32.150803, 34.852192, 41.864662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298927, 35.710869, 42.060295>,  <32.643604, 35.308472, 41.667297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298927, 35.710869, 42.060295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154182, 35.352280, 42.162582>,  <32.067333, 35.137127, 42.223957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154182, 35.352280, 42.162582>,  <32.298927, 35.710869, 42.060295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154182, 35.352280, 42.162582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136026, 0.322150, 0.936865,
		-0.922253, 0.304234, -0.238518,
		-0.361865, -0.896471, 0.255720,
		32.045624, 35.083340, 42.239300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659594, 35.827843, 42.402378>,  <32.298927, 35.710869, 42.060295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659594, 35.827843, 42.402378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792379, 35.468369, 42.517036>,  <31.872051, 35.252686, 42.585831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792379, 35.468369, 42.517036>,  <31.659594, 35.827843, 42.402378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792379, 35.468369, 42.517036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124283, 0.259560, 0.957696,
		-0.935069, -0.353545, -0.025527,
		0.331963, -0.898685, 0.286646,
		31.891968, 35.198765, 42.603031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249228, 35.704525, 43.050514>,  <31.659594, 35.827843, 42.402378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249228, 35.704525, 43.050514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547396, 35.438709, 43.071434>,  <31.726297, 35.279221, 43.083984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547396, 35.438709, 43.071434>,  <31.249228, 35.704525, 43.050514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547396, 35.438709, 43.071434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006316, 0.085491, 0.996319,
		-0.666564, -0.742347, 0.067924,
		0.745421, -0.664540, 0.052297,
		31.771023, 35.239346, 43.087124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090357, 35.154678, 43.562408>,  <31.249228, 35.704525, 43.050514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090357, 35.154678, 43.562408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490133, 35.158684, 43.549675>,  <31.730000, 35.161087, 43.542034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490133, 35.158684, 43.549675>,  <31.090357, 35.154678, 43.562408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490133, 35.158684, 43.549675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030602, 0.105125, 0.993988,
		0.013297, -0.994408, 0.104761,
		0.999443, 0.010011, -0.031829,
		31.789967, 35.161690, 43.540127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325266, 34.652035, 44.041813>,  <31.090357, 35.154678, 43.562408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325266, 34.652035, 44.041813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624935, 34.906834, 43.969181>,  <31.804737, 35.059715, 43.925602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624935, 34.906834, 43.969181>,  <31.325266, 34.652035, 44.041813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624935, 34.906834, 43.969181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135157, 0.121355, 0.983364,
		0.648439, -0.761252, 0.004821,
		0.749173, 0.637000, -0.181579,
		31.849688, 35.097935, 43.914707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579231, 34.587387, 44.599163>,  <31.325266, 34.652035, 44.041813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579231, 34.587387, 44.599163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767387, 34.906651, 44.448608>,  <31.880281, 35.098209, 44.358276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767387, 34.906651, 44.448608>,  <31.579231, 34.587387, 44.599163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767387, 34.906651, 44.448608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172818, 0.334944, 0.926254,
		0.865371, -0.500748, 0.019617,
		0.470391, 0.798163, -0.376389,
		31.908504, 35.146099, 44.335693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270458, 34.635876, 44.800545>,  <31.579231, 34.587387, 44.599163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270458, 34.635876, 44.800545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194157, 35.019341, 44.716084>,  <32.148376, 35.249420, 44.665409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194157, 35.019341, 44.716084>,  <32.270458, 34.635876, 44.800545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194157, 35.019341, 44.716084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262616, 0.257095, 0.930019,
		0.945858, 0.121952, -0.300801,
		-0.190752, 0.958660, -0.211149,
		32.136932, 35.306938, 44.652740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755581, 34.930489, 45.152439>,  <32.270458, 34.635876, 44.800545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755581, 34.930489, 45.152439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510151, 35.238602, 45.082947>,  <32.362892, 35.423470, 45.041252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510151, 35.238602, 45.082947>,  <32.755581, 34.930489, 45.152439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510151, 35.238602, 45.082947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325820, 0.447382, 0.832881,
		0.719280, 0.454432, -0.525478,
		-0.613577, 0.770286, -0.173730,
		32.326077, 35.469688, 45.030827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155548, 35.583797, 45.505135>,  <32.755581, 34.930489, 45.152439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155548, 35.583797, 45.505135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769947, 35.684422, 45.470699>,  <32.538586, 35.744797, 45.450039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769947, 35.684422, 45.470699>,  <33.155548, 35.583797, 45.505135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769947, 35.684422, 45.470699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075704, 0.570080, 0.818094,
		0.254879, 0.782129, -0.568604,
		-0.964005, 0.251561, -0.086091,
		32.480747, 35.759892, 45.444874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094486, 36.318710, 45.730568>,  <33.155548, 35.583797, 45.505135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094486, 36.318710, 45.730568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719128, 36.181011, 45.742657>,  <32.493912, 36.098392, 45.749912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719128, 36.181011, 45.742657>,  <33.094486, 36.318710, 45.730568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719128, 36.181011, 45.742657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190763, 0.588965, 0.785322,
		-0.288145, 0.731174, -0.618350,
		-0.938393, -0.344245, 0.030226,
		32.437611, 36.077736, 45.751724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736019, 36.901608, 45.874935>,  <33.094486, 36.318710, 45.730568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736019, 36.901608, 45.874935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516758, 36.585045, 45.983166>,  <32.385201, 36.395107, 46.048103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516758, 36.585045, 45.983166>,  <32.736019, 36.901608, 45.874935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516758, 36.585045, 45.983166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237662, 0.457558, 0.856830,
		-0.801902, 0.405366, -0.438898,
		-0.548151, -0.791403, 0.270577,
		32.352314, 36.347626, 46.064339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044628, 37.185993, 46.081284>,  <32.736019, 36.901608, 45.874935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044628, 37.185993, 46.081284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076302, 36.839176, 46.278046>,  <32.095306, 36.631088, 46.396103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076302, 36.839176, 46.278046>,  <32.044628, 37.185993, 46.081284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076302, 36.839176, 46.278046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320786, 0.445049, 0.836079,
		-0.943836, -0.224001, -0.242893,
		0.079183, -0.867038, 0.491910,
		32.100056, 36.579063, 46.425617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398355, 37.152435, 46.439793>,  <32.044628, 37.185993, 46.081284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398355, 37.152435, 46.439793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662189, 36.902203, 46.606449>,  <31.820490, 36.752064, 46.706444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662189, 36.902203, 46.606449>,  <31.398355, 37.152435, 46.439793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662189, 36.902203, 46.606449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163119, 0.421973, 0.891813,
		-0.733716, -0.656191, 0.176283,
		0.659586, -0.625582, 0.416645,
		31.860065, 36.714527, 46.731441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040575, 36.887024, 46.995956>,  <31.398355, 37.152435, 46.439793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040575, 36.887024, 46.995956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422157, 36.807621, 47.085903>,  <31.651106, 36.759979, 47.139874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422157, 36.807621, 47.085903>,  <31.040575, 36.887024, 46.995956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422157, 36.807621, 47.085903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170682, 0.257238, 0.951155,
		-0.246655, -0.945740, 0.211512,
		0.953954, -0.198506, 0.224870,
		31.708344, 36.748070, 47.153362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989698, 36.402122, 47.504841>,  <31.040575, 36.887024, 46.995956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989698, 36.402122, 47.504841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346718, 36.577698, 47.546207>,  <31.560928, 36.683041, 47.571026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346718, 36.577698, 47.546207>,  <30.989698, 36.402122, 47.504841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346718, 36.577698, 47.546207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225811, 0.236519, 0.945023,
		0.390344, -0.866830, 0.310221,
		0.892547, 0.438936, 0.103416,
		31.614483, 36.709377, 47.577232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225183, 36.133739, 48.166714>,  <30.989698, 36.402122, 47.504841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225183, 36.133739, 48.166714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410723, 36.474209, 48.068451>,  <31.522047, 36.678490, 48.009491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410723, 36.474209, 48.068451>,  <31.225183, 36.133739, 48.166714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410723, 36.474209, 48.068451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124145, 0.212109, 0.969329,
		0.877173, -0.480120, -0.007282,
		0.463850, 0.851172, -0.245660,
		31.549877, 36.729561, 47.994751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794550, 36.160149, 48.641243>,  <31.225183, 36.133739, 48.166714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794550, 36.160149, 48.641243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707096, 36.530346, 48.517525>,  <31.654623, 36.752464, 48.443295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707096, 36.530346, 48.517525>,  <31.794550, 36.160149, 48.641243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707096, 36.530346, 48.517525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075625, 0.332085, 0.940213,
		0.972872, 0.182175, -0.142596,
		-0.218637, 0.925490, -0.309299,
		31.641504, 36.807995, 48.424736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498039, 36.007900, 48.787563>,  <31.794550, 36.160149, 48.641243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498039, 36.007900, 48.787563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762333, 35.802845, 49.006886>,  <32.920910, 35.679813, 49.138477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762333, 35.802845, 49.006886>,  <32.498039, 36.007900, 48.787563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762333, 35.802845, 49.006886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279484, -0.509929, -0.813548,
		0.696649, 0.690781, -0.193654,
		0.660733, -0.512635, 0.548304,
		32.960552, 35.649055, 49.171375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171936, 35.928169, 48.452240>,  <32.498039, 36.007900, 48.787563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171936, 35.928169, 48.452240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159664, 35.608318, 48.692123>,  <33.152302, 35.416409, 48.836056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159664, 35.608318, 48.692123>,  <33.171936, 35.928169, 48.452240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159664, 35.608318, 48.692123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118307, -0.598682, -0.792202,
		0.992503, 0.046649, 0.112967,
		-0.030676, -0.799627, 0.599713,
		33.150463, 35.368431, 48.872036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856049, 35.651791, 48.352848>,  <33.171936, 35.928169, 48.452240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856049, 35.651791, 48.352848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582436, 35.390686, 48.483074>,  <33.418266, 35.234024, 48.561211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582436, 35.390686, 48.483074>,  <33.856049, 35.651791, 48.352848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582436, 35.390686, 48.483074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145964, -0.559777, -0.815686,
		0.714697, -0.510437, 0.478187,
		-0.684035, -0.652766, 0.325566,
		33.377224, 35.194855, 48.580746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176941, 35.038326, 48.274769>,  <33.856049, 35.651791, 48.352848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176941, 35.038326, 48.274769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803005, 34.912010, 48.339710>,  <33.578644, 34.836220, 48.378677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803005, 34.912010, 48.339710>,  <34.176941, 35.038326, 48.274769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803005, 34.912010, 48.339710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086544, -0.646081, -0.758346,
		0.344375, -0.694877, 0.631309,
		-0.934835, -0.315792, 0.162357,
		33.522556, 34.817272, 48.388416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232079, 34.358284, 48.449211>,  <34.176941, 35.038326, 48.274769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232079, 34.358284, 48.449211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867546, 34.427006, 48.299564>,  <33.648827, 34.468239, 48.209778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867546, 34.427006, 48.299564>,  <34.232079, 34.358284, 48.449211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867546, 34.427006, 48.299564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123747, -0.752408, -0.646969,
		-0.392642, -0.635896, 0.664431,
		-0.911328, 0.171806, -0.374117,
		33.594147, 34.478546, 48.187328>
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
