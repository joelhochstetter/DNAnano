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
	<24.790186, 34.780357, 35.096874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.422123, 34.934444, 35.124912>,  <24.201284, 35.026897, 35.141735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.422123, 34.934444, 35.124912>,  <24.790186, 34.780357, 35.096874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.422123, 34.934444, 35.124912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198988, 0.614264, -0.763599,
		-0.337212, -0.688684, -0.641874,
		-0.920159, 0.385220, 0.070098,
		24.146076, 35.050011, 35.145943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578020, 34.800793, 35.017574>,  <24.790186, 34.780357, 35.096874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578020, 34.800793, 35.017574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897949, 34.685070, 35.227940>,  <26.089907, 34.615635, 35.354160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897949, 34.685070, 35.227940>,  <25.578020, 34.800793, 35.017574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897949, 34.685070, 35.227940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068217, 0.914313, 0.399222,
		-0.596349, -0.283430, 0.751023,
		0.799821, -0.289309, 0.525915,
		26.137896, 34.598278, 35.385715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471586, 35.064098, 35.607876>,  <25.578020, 34.800793, 35.017574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471586, 35.064098, 35.607876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865541, 34.998268, 35.586315>,  <26.101915, 34.958771, 35.573380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865541, 34.998268, 35.586315>,  <25.471586, 35.064098, 35.607876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865541, 34.998268, 35.586315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172898, 0.916668, 0.360315,
		-0.009893, -0.364190, 0.931272,
		0.984890, -0.164579, -0.053899,
		26.161009, 34.948895, 35.570145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773214, 35.119396, 36.292736>,  <25.471586, 35.064098, 35.607876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773214, 35.119396, 36.292736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074129, 35.168613, 36.033836>,  <26.254677, 35.198143, 35.878498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074129, 35.168613, 36.033836>,  <25.773214, 35.119396, 36.292736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074129, 35.168613, 36.033836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278345, 0.831068, 0.481509,
		0.597152, -0.542390, 0.590951,
		0.752286, 0.123045, -0.647245,
		26.299814, 35.205528, 35.839664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480001, 35.160404, 36.671013>,  <25.773214, 35.119396, 36.292736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480001, 35.160404, 36.671013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527393, 35.344482, 36.319061>,  <26.555828, 35.454929, 36.107891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527393, 35.344482, 36.319061>,  <26.480001, 35.160404, 36.671013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527393, 35.344482, 36.319061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448826, 0.765608, 0.460867,
		0.885730, -0.449514, -0.115841,
		0.118478, 0.460197, -0.879876,
		26.562937, 35.482540, 36.055099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224829, 35.305267, 36.622967>,  <26.480001, 35.160404, 36.671013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224829, 35.305267, 36.622967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986580, 35.561226, 36.428741>,  <26.843630, 35.714802, 36.312206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986580, 35.561226, 36.428741>,  <27.224829, 35.305267, 36.622967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986580, 35.561226, 36.428741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488898, 0.768414, 0.412939,
		0.637349, 0.008566, -0.770528,
		-0.595622, 0.639895, -0.485560,
		26.807894, 35.753193, 36.283073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554422, 35.782742, 36.144138>,  <27.224829, 35.305267, 36.622967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554422, 35.782742, 36.144138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228529, 35.967632, 36.284172>,  <27.032993, 36.078568, 36.368191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228529, 35.967632, 36.284172>,  <27.554422, 35.782742, 36.144138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228529, 35.967632, 36.284172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574398, 0.725876, 0.378379,
		-0.079220, 0.509364, -0.856897,
		-0.814734, 0.462224, 0.350082,
		26.984108, 36.106300, 36.389198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651011, 36.467278, 36.082813>,  <27.554422, 35.782742, 36.144138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651011, 36.467278, 36.082813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343887, 36.495979, 36.337475>,  <27.159613, 36.513199, 36.490273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343887, 36.495979, 36.337475>,  <27.651011, 36.467278, 36.082813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343887, 36.495979, 36.337475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413485, 0.814549, 0.406866,
		-0.489388, 0.575641, -0.655085,
		-0.767808, 0.071753, 0.636650,
		27.113544, 36.517506, 36.528469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631060, 37.183445, 36.193447>,  <27.651011, 36.467278, 36.082813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631060, 37.183445, 36.193447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411816, 37.005127, 36.476528>,  <27.280270, 36.898136, 36.646378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411816, 37.005127, 36.476528>,  <27.631060, 37.183445, 36.193447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411816, 37.005127, 36.476528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462355, 0.543604, 0.700516,
		-0.696994, 0.711171, -0.091841,
		-0.548112, -0.445792, 0.707702,
		27.247381, 36.871387, 36.688839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382967, 37.699303, 36.516529>,  <27.631060, 37.183445, 36.193447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382967, 37.699303, 36.516529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386824, 37.374496, 36.749954>,  <27.389137, 37.179615, 36.890011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386824, 37.374496, 36.749954>,  <27.382967, 37.699303, 36.516529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386824, 37.374496, 36.749954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456815, 0.522710, 0.719788,
		-0.889509, 0.259640, 0.375978,
		0.009641, -0.812011, 0.583563,
		27.389715, 37.130894, 36.925022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237864, 37.880939, 37.286507>,  <27.382967, 37.699303, 36.516529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237864, 37.880939, 37.286507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429203, 37.534977, 37.347336>,  <27.544006, 37.327400, 37.383835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429203, 37.534977, 37.347336>,  <27.237864, 37.880939, 37.286507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429203, 37.534977, 37.347336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545671, 0.428425, 0.720205,
		-0.688061, -0.261524, 0.676888,
		0.478347, -0.864903, 0.152077,
		27.572706, 37.275505, 37.392960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382473, 37.499062, 38.018333>,  <27.237864, 37.880939, 37.286507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382473, 37.499062, 38.018333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672445, 37.430386, 37.751503>,  <27.846430, 37.389179, 37.591404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672445, 37.430386, 37.751503>,  <27.382473, 37.499062, 38.018333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672445, 37.430386, 37.751503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671975, 0.389134, 0.630098,
		0.151402, -0.905040, 0.397467,
		0.724932, -0.171690, -0.667080,
		27.889925, 37.378880, 37.551380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820271, 37.046055, 38.308998>,  <27.382473, 37.499062, 38.018333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820271, 37.046055, 38.308998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992088, 37.313164, 38.065830>,  <28.095179, 37.473431, 37.919930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992088, 37.313164, 38.065830>,  <27.820271, 37.046055, 38.308998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992088, 37.313164, 38.065830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646130, 0.243032, 0.723499,
		0.630880, -0.703570, -0.327077,
		0.429543, 0.667776, -0.607922,
		28.120951, 37.513496, 37.883453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571684, 36.969387, 38.317764>,  <27.820271, 37.046055, 38.308998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571684, 36.969387, 38.317764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492241, 37.339710, 38.189121>,  <28.444574, 37.561905, 38.111935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492241, 37.339710, 38.189121>,  <28.571684, 36.969387, 38.317764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492241, 37.339710, 38.189121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792984, 0.344636, 0.502397,
		0.575961, -0.155248, -0.802600,
		-0.198609, 0.925810, -0.321606,
		28.432659, 37.617455, 38.092640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106268, 37.167908, 37.810257>,  <28.571684, 36.969387, 38.317764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106268, 37.167908, 37.810257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954933, 37.417801, 38.083481>,  <28.864132, 37.567738, 38.247414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954933, 37.417801, 38.083481>,  <29.106268, 37.167908, 37.810257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954933, 37.417801, 38.083481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913865, 0.134620, 0.383051,
		0.147351, 0.769147, -0.621852,
		-0.378336, 0.624732, 0.683061,
		28.841433, 37.605221, 38.288399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635317, 36.636547, 37.531937>,  <29.106268, 37.167908, 37.810257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635317, 36.636547, 37.531937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300385, 36.830711, 37.632534>,  <28.099424, 36.947212, 37.692890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300385, 36.830711, 37.632534>,  <28.635317, 36.636547, 37.531937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300385, 36.830711, 37.632534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517300, -0.554693, -0.651703,
		-0.176847, -0.675787, 0.715568,
		-0.837333, 0.485414, 0.251489,
		28.049185, 36.976337, 37.707981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126366, 36.173630, 37.536793>,  <28.635317, 36.636547, 37.531937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126366, 36.173630, 37.536793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914757, 36.512135, 37.511574>,  <27.787792, 36.715237, 37.496441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914757, 36.512135, 37.511574>,  <28.126366, 36.173630, 37.536793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914757, 36.512135, 37.511574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667669, -0.460935, -0.584600,
		-0.523788, -0.267167, 0.808868,
		-0.529022, 0.846263, -0.063053,
		27.756050, 36.766014, 37.492657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359783, 36.091854, 37.789856>,  <28.126366, 36.173630, 37.536793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359783, 36.091854, 37.789856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365194, 36.399326, 37.534061>,  <27.368441, 36.583809, 37.380585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365194, 36.399326, 37.534061>,  <27.359783, 36.091854, 37.789856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365194, 36.399326, 37.534061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766770, -0.402509, -0.500049,
		-0.641779, 0.497102, 0.583960,
		0.013527, 0.768684, -0.639485,
		27.369253, 36.629932, 37.342216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689798, 36.405277, 37.778599>,  <27.359783, 36.091854, 37.789856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689798, 36.405277, 37.778599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854919, 36.525623, 37.434719>,  <26.953991, 36.597832, 37.228394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854919, 36.525623, 37.434719>,  <26.689798, 36.405277, 37.778599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854919, 36.525623, 37.434719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832241, -0.258931, -0.490234,
		-0.370095, 0.917843, 0.143503,
		0.412801, 0.300862, -0.859696,
		26.978760, 36.615883, 37.176811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116385, 36.744667, 37.430195>,  <26.689798, 36.405277, 37.778599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116385, 36.744667, 37.430195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400051, 36.657566, 37.161968>,  <26.570251, 36.605305, 37.001030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400051, 36.657566, 37.161968>,  <26.116385, 36.744667, 37.430195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400051, 36.657566, 37.161968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684626, -0.439900, -0.581184,
		-0.168429, 0.871247, -0.461042,
		0.709168, -0.217754, -0.670570,
		26.612801, 36.592239, 36.960796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012928, 37.138962, 36.796204>,  <26.116385, 36.744667, 37.430195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012928, 37.138962, 36.796204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185343, 36.779377, 36.765041>,  <26.288792, 36.563625, 36.746342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185343, 36.779377, 36.765041>,  <26.012928, 37.138962, 36.796204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185343, 36.779377, 36.765041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856691, -0.380595, -0.348177,
		0.283346, 0.216823, -0.934186,
		0.431039, -0.898963, -0.077910,
		26.314655, 36.509689, 36.741669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868111, 36.452442, 36.521278>,  <26.012928, 37.138962, 36.796204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868111, 36.452442, 36.521278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239305, 36.431694, 36.373688>,  <26.462023, 36.419243, 36.285133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239305, 36.431694, 36.373688>,  <25.868111, 36.452442, 36.521278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239305, 36.431694, 36.373688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282493, -0.743672, -0.605928,
		-0.242968, 0.666529, -0.704773,
		0.927989, -0.051872, -0.368979,
		26.517702, 36.416134, 36.262993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907442, 36.607513, 35.715027>,  <25.868111, 36.452442, 36.521278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907442, 36.607513, 35.715027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185108, 36.370602, 35.878654>,  <26.351707, 36.228455, 35.976830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185108, 36.370602, 35.878654>,  <25.907442, 36.607513, 35.715027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185108, 36.370602, 35.878654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171735, -0.688158, -0.704943,
		0.699028, 0.419097, -0.579412,
		0.694167, -0.592280, 0.409068,
		26.393358, 36.192917, 36.001373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556355, 36.494873, 35.396217>,  <25.907442, 36.607513, 35.715027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556355, 36.494873, 35.396217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483740, 36.152153, 35.589272>,  <26.440172, 35.946522, 35.705105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483740, 36.152153, 35.589272>,  <26.556355, 36.494873, 35.396217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483740, 36.152153, 35.589272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333348, -0.408114, -0.849895,
		0.925162, -0.315170, -0.211527,
		-0.181534, -0.856803, 0.482633,
		26.429279, 35.895111, 35.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884180, 36.025768, 34.946957>,  <26.556355, 36.494873, 35.396217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884180, 36.025768, 34.946957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799608, 35.864109, 35.302925>,  <26.748865, 35.767113, 35.516506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799608, 35.864109, 35.302925>,  <26.884180, 36.025768, 34.946957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799608, 35.864109, 35.302925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144094, -0.887666, -0.437363,
		0.966713, -0.220704, 0.129445,
		-0.211432, -0.404152, 0.889920,
		26.736179, 35.742863, 35.569901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353197, 35.354782, 34.989044>,  <26.884180, 36.025768, 34.946957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353197, 35.354782, 34.989044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039919, 35.319214, 35.235199>,  <26.851952, 35.297871, 35.382893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039919, 35.319214, 35.235199>,  <27.353197, 35.354782, 34.989044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039919, 35.319214, 35.235199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066086, -0.972209, -0.224594,
		0.618253, -0.216569, 0.755553,
		-0.783196, -0.088924, 0.615384,
		26.804960, 35.292538, 35.419815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488091, 34.854351, 35.546764>,  <27.353197, 35.354782, 34.989044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488091, 34.854351, 35.546764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091375, 34.887409, 35.507717>,  <26.853346, 34.907246, 35.484291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091375, 34.887409, 35.507717>,  <27.488091, 34.854351, 35.546764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091375, 34.887409, 35.507717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077495, -0.995451, -0.055422,
		-0.101750, -0.047402, 0.993680,
		-0.991787, 0.082644, -0.097614,
		26.793839, 34.912201, 35.478432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830616, 34.158901, 35.453682>,  <27.488091, 34.854351, 35.546764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830616, 34.158901, 35.453682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672167, 34.257317, 35.099834>,  <27.577097, 34.316368, 34.887527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672167, 34.257317, 35.099834>,  <27.830616, 34.158901, 35.453682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672167, 34.257317, 35.099834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822992, -0.332066, -0.460887,
		-0.407148, -0.910603, -0.070950,
		-0.396125, 0.246040, -0.884618,
		27.553329, 34.331127, 34.834450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799820, 33.591381, 34.955364>,  <27.830616, 34.158901, 35.453682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799820, 33.591381, 34.955364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818277, 33.930771, 34.744476>,  <27.829351, 34.134403, 34.617943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818277, 33.930771, 34.744476>,  <27.799820, 33.591381, 34.955364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818277, 33.930771, 34.744476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722659, -0.392733, -0.568792,
		-0.689663, -0.354756, -0.631279,
		0.046142, 0.848474, -0.527222,
		27.832119, 34.185314, 34.586311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899523, 33.374020, 34.334629>,  <27.799820, 33.591381, 34.955364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899523, 33.374020, 34.334629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013369, 33.756702, 34.310303>,  <28.081676, 33.986313, 34.295708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013369, 33.756702, 34.310303>,  <27.899523, 33.374020, 34.334629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013369, 33.756702, 34.310303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753829, -0.262545, -0.602338,
		-0.592230, 0.125592, -0.795921,
		0.284614, 0.956711, -0.060812,
		28.098753, 34.043716, 34.292061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976362, 33.568275, 33.563488>,  <27.899523, 33.374020, 34.334629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976362, 33.568275, 33.563488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230520, 33.761250, 33.804661>,  <28.383015, 33.877033, 33.949364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230520, 33.761250, 33.804661>,  <27.976362, 33.568275, 33.563488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230520, 33.761250, 33.804661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760711, -0.256968, -0.596058,
		-0.132623, 0.837393, -0.530268,
		0.635397, 0.482432, 0.602935,
		28.421139, 33.905979, 33.985542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374279, 34.022827, 33.167210>,  <27.976362, 33.568275, 33.563488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374279, 34.022827, 33.167210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602125, 33.922653, 33.480343>,  <28.738832, 33.862549, 33.668221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602125, 33.922653, 33.480343>,  <28.374279, 34.022827, 33.167210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602125, 33.922653, 33.480343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784992, -0.116489, -0.608455,
		0.243568, 0.961100, 0.130234,
		0.569615, -0.250432, 0.782829,
		28.773010, 33.847523, 33.715191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003775, 34.562813, 33.313126>,  <28.374279, 34.022827, 33.167210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003775, 34.562813, 33.313126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102766, 34.211552, 33.476883>,  <29.162161, 34.000793, 33.575138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102766, 34.211552, 33.476883>,  <29.003775, 34.562813, 33.313126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102766, 34.211552, 33.476883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738444, -0.102599, -0.666464,
		0.627261, 0.467248, 0.623076,
		0.247477, -0.878153, 0.409393,
		29.177010, 33.948105, 33.599701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728300, 34.564087, 33.377228>,  <29.003775, 34.562813, 33.313126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728300, 34.564087, 33.377228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614544, 34.180775, 33.388699>,  <29.546291, 33.950787, 33.395580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614544, 34.180775, 33.388699>,  <29.728300, 34.564087, 33.377228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614544, 34.180775, 33.388699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784387, -0.249772, -0.567760,
		0.551236, -0.138972, 0.822694,
		-0.284389, -0.958280, 0.028675,
		29.529228, 33.893291, 33.397301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272560, 34.106297, 33.705799>,  <29.728300, 34.564087, 33.377228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272560, 34.106297, 33.705799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054949, 33.929733, 33.420368>,  <29.924381, 33.823795, 33.249111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054949, 33.929733, 33.420368>,  <30.272560, 34.106297, 33.705799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054949, 33.929733, 33.420368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834534, -0.196370, -0.514774,
		0.087099, -0.875557, 0.475199,
		-0.544029, -0.441406, -0.713578,
		29.891741, 33.797310, 33.206295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590834, 33.840809, 33.052731>,  <30.272560, 34.106297, 33.705799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590834, 33.840809, 33.052731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327715, 33.606739, 33.242413>,  <30.169844, 33.466297, 33.356224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327715, 33.606739, 33.242413>,  <30.590834, 33.840809, 33.052731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327715, 33.606739, 33.242413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275800, -0.773006, -0.571311,
		0.700881, -0.245021, 0.669873,
		-0.657799, -0.585172, 0.474209,
		30.130375, 33.431187, 33.384674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891808, 33.169224, 33.408138>,  <30.590834, 33.840809, 33.052731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891808, 33.169224, 33.408138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535007, 33.168549, 33.227325>,  <30.320929, 33.168144, 33.118835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535007, 33.168549, 33.227325>,  <30.891808, 33.169224, 33.408138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535007, 33.168549, 33.227325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361649, -0.602610, -0.711386,
		-0.271200, -0.798034, 0.538138,
		-0.891998, -0.001689, -0.452036,
		30.267408, 33.168041, 33.091713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776136, 32.491055, 33.186226>,  <30.891808, 33.169224, 33.408138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776136, 32.491055, 33.186226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552710, 32.729256, 32.955269>,  <30.418653, 32.872177, 32.816696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552710, 32.729256, 32.955269>,  <30.776136, 32.491055, 33.186226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552710, 32.729256, 32.955269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352087, -0.460058, -0.815096,
		-0.751026, -0.658577, 0.047303,
		-0.558565, 0.595503, -0.577391,
		30.385139, 32.907906, 32.782051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447947, 32.203827, 32.552460>,  <30.776136, 32.491055, 33.186226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447947, 32.203827, 32.552460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534452, 32.584869, 32.466885>,  <30.586357, 32.813496, 32.415539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534452, 32.584869, 32.466885>,  <30.447947, 32.203827, 32.552460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534452, 32.584869, 32.466885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306270, -0.274257, -0.911582,
		-0.927053, 0.131621, -0.351067,
		0.216266, 0.952606, -0.213939,
		30.599333, 32.870651, 32.402702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308443, 32.232182, 31.752792>,  <30.447947, 32.203827, 32.552460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308443, 32.232182, 31.752792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529982, 32.522495, 31.916004>,  <30.662905, 32.696686, 32.013931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529982, 32.522495, 31.916004>,  <30.308443, 32.232182, 31.752792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529982, 32.522495, 31.916004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510861, 0.090754, -0.854859,
		-0.657476, 0.681906, -0.320513,
		0.553846, 0.725788, 0.408028,
		30.696135, 32.740231, 32.038414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269991, 32.897308, 31.419739>,  <30.308443, 32.232182, 31.752792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269991, 32.897308, 31.419739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633097, 32.858070, 31.582880>,  <30.850960, 32.834526, 31.680765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633097, 32.858070, 31.582880>,  <30.269991, 32.897308, 31.419739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633097, 32.858070, 31.582880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417226, 0.110385, -0.902074,
		0.043468, 0.989036, 0.141131,
		0.907762, -0.098095, 0.407854,
		30.905426, 32.828640, 31.705236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648653, 33.500156, 31.288353>,  <30.269991, 32.897308, 31.419739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648653, 33.500156, 31.288353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894663, 33.187630, 31.330841>,  <31.042269, 33.000114, 31.356333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894663, 33.187630, 31.330841>,  <30.648653, 33.500156, 31.288353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894663, 33.187630, 31.330841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429208, 0.218721, -0.876323,
		0.661456, 0.584551, 0.469868,
		0.615025, -0.781320, 0.106219,
		31.079170, 32.953232, 31.362707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465849, 33.743824, 31.966240>,  <30.648653, 33.500156, 31.288353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465849, 33.743824, 31.966240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329460, 33.379612, 32.059765>,  <30.247627, 33.161083, 32.115879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329460, 33.379612, 32.059765>,  <30.465849, 33.743824, 31.966240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329460, 33.379612, 32.059765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578134, 0.399229, 0.711602,
		-0.741281, 0.107463, -0.662536,
		-0.340974, -0.910532, 0.233813,
		30.227167, 33.106453, 32.129910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676582, 33.600616, 31.985489>,  <30.465849, 33.743824, 31.966240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676582, 33.600616, 31.985489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883461, 33.373066, 32.241268>,  <30.007587, 33.236538, 32.394733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883461, 33.373066, 32.241268>,  <29.676582, 33.600616, 31.985489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883461, 33.373066, 32.241268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587712, 0.307071, 0.748533,
		-0.622177, -0.762948, -0.175519,
		0.517195, -0.568874, 0.639446,
		30.038620, 33.202404, 32.433102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195169, 33.202930, 32.384422>,  <29.676582, 33.600616, 31.985489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195169, 33.202930, 32.384422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535479, 33.203854, 32.594635>,  <29.739664, 33.204407, 32.720764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535479, 33.203854, 32.594635>,  <29.195169, 33.202930, 32.384422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535479, 33.203854, 32.594635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523321, 0.095428, 0.846776,
		-0.048200, -0.995434, 0.082393,
		0.850771, 0.002303, 0.525531,
		29.790710, 33.204548, 32.752293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190239, 32.661869, 32.927494>,  <29.195169, 33.202930, 32.384422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190239, 32.661869, 32.927494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415695, 32.978695, 33.021255>,  <29.550968, 33.168789, 33.077515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415695, 32.978695, 33.021255>,  <29.190239, 32.661869, 32.927494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415695, 32.978695, 33.021255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527674, 0.126930, 0.839910,
		0.635509, -0.597097, 0.489494,
		0.563639, 0.792063, 0.234408,
		29.584787, 33.216312, 33.091579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193756, 32.638462, 33.554203>,  <29.190239, 32.661869, 32.927494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193756, 32.638462, 33.554203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316698, 33.018093, 33.526550>,  <29.390463, 33.245872, 33.509960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316698, 33.018093, 33.526550>,  <29.193756, 32.638462, 33.554203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316698, 33.018093, 33.526550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502801, 0.223648, 0.834969,
		0.807914, -0.221871, 0.545937,
		0.307353, 0.949081, -0.069131,
		29.408903, 33.302818, 33.505810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501457, 32.829510, 34.190075>,  <29.193756, 32.638462, 33.554203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501457, 32.829510, 34.190075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379864, 33.159840, 34.000084>,  <29.306908, 33.358040, 33.886089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379864, 33.159840, 34.000084>,  <29.501457, 32.829510, 34.190075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379864, 33.159840, 34.000084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482990, 0.296156, 0.824022,
		0.821167, 0.479898, 0.308840,
		-0.303981, 0.825826, -0.474980,
		29.288670, 33.407589, 33.857590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435455, 33.450336, 34.688747>,  <29.501457, 32.829510, 34.190075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435455, 33.450336, 34.688747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206366, 33.538113, 34.372814>,  <29.068913, 33.590778, 34.183254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206366, 33.538113, 34.372814>,  <29.435455, 33.450336, 34.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206366, 33.538113, 34.372814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693467, 0.384102, 0.609565,
		0.437138, 0.896834, -0.067810,
		-0.572725, 0.219440, -0.789831,
		29.034548, 33.603943, 34.135864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237549, 34.131927, 34.749535>,  <29.435455, 33.450336, 34.688747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237549, 34.131927, 34.749535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963915, 33.918079, 34.551056>,  <28.799734, 33.789772, 34.431969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963915, 33.918079, 34.551056>,  <29.237549, 34.131927, 34.749535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963915, 33.918079, 34.551056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688262, 0.247878, 0.681800,
		-0.241507, 0.807922, -0.537528,
		-0.684083, -0.534620, -0.496198,
		28.758690, 33.757694, 34.402195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698837, 34.541855, 34.596813>,  <29.237549, 34.131927, 34.749535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698837, 34.541855, 34.596813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539330, 34.175037, 34.597733>,  <28.443624, 33.954945, 34.598286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539330, 34.175037, 34.597733>,  <28.698837, 34.541855, 34.596813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539330, 34.175037, 34.597733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809581, 0.353216, 0.468847,
		-0.430768, 0.185100, -0.883277,
		-0.398771, -0.917048, 0.002301,
		28.419699, 33.899921, 34.598423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170238, 34.701950, 35.183449>,  <28.698837, 34.541855, 34.596813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170238, 34.701950, 35.183449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007822, 35.041683, 35.318359>,  <28.910372, 35.245525, 35.399307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007822, 35.041683, 35.318359>,  <29.170238, 34.701950, 35.183449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007822, 35.041683, 35.318359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913846, 0.375821, 0.153763,
		0.003840, 0.370656, -0.928762,
		-0.406042, 0.849337, 0.337279,
		28.886009, 35.296486, 35.419544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213287, 35.369694, 34.809177>,  <29.170238, 34.701950, 35.183449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213287, 35.369694, 34.809177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233139, 35.375095, 35.208649>,  <29.245050, 35.378338, 35.448330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233139, 35.375095, 35.208649>,  <29.213287, 35.369694, 34.809177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233139, 35.375095, 35.208649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955369, 0.290907, -0.051413,
		-0.291217, 0.956656, 0.001534,
		0.049631, 0.013507, 0.998676,
		29.248028, 35.379147, 35.508251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299362, 36.120667, 35.136780>,  <29.213287, 35.369694, 34.809177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299362, 36.120667, 35.136780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481550, 35.809776, 35.310432>,  <29.590862, 35.623241, 35.414623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481550, 35.809776, 35.310432>,  <29.299362, 36.120667, 35.136780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481550, 35.809776, 35.310432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880948, 0.463801, -0.093906,
		-0.128367, 0.425222, 0.895940,
		0.455469, -0.777222, 0.434136,
		29.618191, 35.576611, 35.440674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729858, 36.645981, 35.486172>,  <29.299362, 36.120667, 35.136780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729858, 36.645981, 35.486172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123064, 36.694386, 35.541370>,  <30.358988, 36.723427, 35.574490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123064, 36.694386, 35.541370>,  <29.729858, 36.645981, 35.486172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123064, 36.694386, 35.541370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156089, 0.155623, 0.975406,
		0.096553, -0.980377, 0.171867,
		0.983013, 0.121005, 0.138000,
		30.417967, 36.730686, 35.582771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884687, 36.247116, 36.086945>,  <29.729858, 36.645981, 35.486172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884687, 36.247116, 36.086945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176003, 36.520088, 36.062000>,  <30.350792, 36.683872, 36.047035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176003, 36.520088, 36.062000>,  <29.884687, 36.247116, 36.086945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176003, 36.520088, 36.062000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078336, 0.173314, 0.981746,
		0.680778, -0.710110, 0.179681,
		0.728289, 0.682426, -0.062361,
		30.394489, 36.724815, 36.043293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206808, 36.231808, 36.691162>,  <29.884687, 36.247116, 36.086945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206808, 36.231808, 36.691162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325266, 36.581017, 36.536175>,  <30.396339, 36.790543, 36.443184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325266, 36.581017, 36.536175>,  <30.206808, 36.231808, 36.691162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325266, 36.581017, 36.536175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031586, 0.396491, 0.917495,
		0.954621, -0.283947, 0.089842,
		0.296142, 0.873023, -0.387467,
		30.414108, 36.842922, 36.419933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843100, 36.385109, 37.029968>,  <30.206808, 36.231808, 36.691162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843100, 36.385109, 37.029968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626961, 36.704201, 36.922897>,  <30.497276, 36.895657, 36.858654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626961, 36.704201, 36.922897>,  <30.843100, 36.385109, 37.029968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626961, 36.704201, 36.922897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006305, 0.321941, 0.946739,
		0.841417, 0.509882, -0.178990,
		-0.540349, 0.797731, -0.267673,
		30.464855, 36.943520, 36.842594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212696, 36.931549, 37.179836>,  <30.843100, 36.385109, 37.029968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212696, 36.931549, 37.179836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832850, 37.054024, 37.206593>,  <30.604940, 37.127510, 37.222649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832850, 37.054024, 37.206593>,  <31.212696, 36.931549, 37.179836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832850, 37.054024, 37.206593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177498, 0.349505, 0.919967,
		0.258305, 0.885491, -0.386245,
		-0.949617, 0.306190, 0.066894,
		30.547964, 37.145882, 37.226662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216740, 37.677334, 37.366409>,  <31.212696, 36.931549, 37.179836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216740, 37.677334, 37.366409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906477, 37.468048, 37.507607>,  <30.720320, 37.342476, 37.592323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906477, 37.468048, 37.507607>,  <31.216740, 37.677334, 37.366409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906477, 37.468048, 37.507607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183814, 0.347768, 0.919386,
		-0.603794, 0.778013, -0.173575,
		-0.775658, -0.523214, 0.352990,
		30.673780, 37.311085, 37.613503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774763, 38.125843, 37.532639>,  <31.216740, 37.677334, 37.366409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774763, 38.125843, 37.532639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782625, 37.799965, 37.764458>,  <30.787342, 37.604439, 37.903549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782625, 37.799965, 37.764458>,  <30.774763, 38.125843, 37.532639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782625, 37.799965, 37.764458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468684, 0.519535, 0.714436,
		-0.883147, 0.257585, 0.392047,
		0.019654, -0.814698, 0.579552,
		30.788521, 37.555557, 37.938324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261648, 38.271729, 36.970951>,  <30.774763, 38.125843, 37.532639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261648, 38.271729, 36.970951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500368, 37.952190, 36.940819>,  <30.643600, 37.760468, 36.922741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500368, 37.952190, 36.940819>,  <30.261648, 38.271729, 36.970951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500368, 37.952190, 36.940819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249877, -0.095819, -0.963525,
		0.762490, 0.593855, -0.256798,
		0.596800, -0.798846, -0.075330,
		30.679409, 37.712536, 36.918221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349403, 38.147209, 36.248238>,  <30.261648, 38.271729, 36.970951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349403, 38.147209, 36.248238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501360, 37.817570, 36.416306>,  <30.592535, 37.619785, 36.517147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501360, 37.817570, 36.416306>,  <30.349403, 38.147209, 36.248238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501360, 37.817570, 36.416306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004357, -0.455816, -0.890063,
		0.925020, 0.336298, -0.176752,
		0.379893, -0.824097, 0.420173,
		30.615328, 37.570339, 36.542358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865704, 37.898872, 35.894913>,  <30.349403, 38.147209, 36.248238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865704, 37.898872, 35.894913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767075, 37.570835, 36.101467>,  <30.707897, 37.374012, 36.225399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767075, 37.570835, 36.101467>,  <30.865704, 37.898872, 35.894913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767075, 37.570835, 36.101467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216494, -0.565984, -0.795482,
		0.944633, -0.084351, 0.317102,
		-0.246575, -0.820090, 0.516386,
		30.693102, 37.324810, 36.256382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494987, 37.414932, 35.920338>,  <30.865704, 37.898872, 35.894913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494987, 37.414932, 35.920338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152157, 37.210533, 35.946568>,  <30.946459, 37.087894, 35.962307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152157, 37.210533, 35.946568>,  <31.494987, 37.414932, 35.920338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152157, 37.210533, 35.946568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257280, -0.534820, -0.804844,
		0.446344, -0.672943, 0.589852,
		-0.857079, -0.510995, 0.065579,
		30.895033, 37.057236, 35.966240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694902, 36.764076, 35.744247>,  <31.494987, 37.414932, 35.920338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694902, 36.764076, 35.744247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297199, 36.766750, 35.701523>,  <31.058578, 36.768353, 35.675888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297199, 36.766750, 35.701523>,  <31.694902, 36.764076, 35.744247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297199, 36.766750, 35.701523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100178, -0.293096, -0.950820,
		-0.037660, -0.956060, 0.290743,
		-0.994257, 0.006682, -0.106814,
		30.998922, 36.768757, 35.669479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537571, 36.105686, 35.474445>,  <31.694902, 36.764076, 35.744247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537571, 36.105686, 35.474445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259020, 36.382416, 35.398090>,  <31.091890, 36.548454, 35.352280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259020, 36.382416, 35.398090>,  <31.537571, 36.105686, 35.474445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259020, 36.382416, 35.398090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091210, -0.178504, -0.979703,
		-0.711857, -0.699652, 0.061204,
		-0.696376, 0.691825, -0.190884,
		31.050106, 36.589962, 35.340824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057753, 35.840622, 35.078400>,  <31.537571, 36.105686, 35.474445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057753, 35.840622, 35.078400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059879, 36.233250, 35.001984>,  <31.061155, 36.468826, 34.956135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059879, 36.233250, 35.001984>,  <31.057753, 35.840622, 35.078400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059879, 36.233250, 35.001984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210766, -0.187851, -0.959318,
		-0.977522, -0.035166, -0.207879,
		0.005314, 0.981568, -0.191040,
		31.061474, 36.527721, 34.944672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543715, 35.845108, 34.522137>,  <31.057753, 35.840622, 35.078400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543715, 35.845108, 34.522137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768957, 36.175262, 34.538372>,  <30.904102, 36.373356, 34.548115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768957, 36.175262, 34.538372>,  <30.543715, 35.845108, 34.522137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768957, 36.175262, 34.538372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212528, -0.097182, -0.972311,
		-0.798587, 0.556142, -0.230141,
		0.563108, 0.825386, 0.040587,
		30.937889, 36.422878, 34.550549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254858, 36.436958, 34.101871>,  <30.543715, 35.845108, 34.522137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254858, 36.436958, 34.101871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653820, 36.460526, 34.118420>,  <30.893198, 36.474667, 34.128349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653820, 36.460526, 34.118420>,  <30.254858, 36.436958, 34.101871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653820, 36.460526, 34.118420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046199, -0.083103, -0.995470,
		-0.055216, 0.994798, -0.085610,
		0.997405, 0.058920, 0.041370,
		30.953041, 36.478203, 34.130829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448938, 36.591290, 33.422100>,  <30.254858, 36.436958, 34.101871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448938, 36.591290, 33.422100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800732, 36.545849, 33.606968>,  <31.011808, 36.518585, 33.717888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800732, 36.545849, 33.606968>,  <30.448938, 36.591290, 33.422100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800732, 36.545849, 33.606968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472876, 0.098733, -0.875580,
		0.053836, 0.988608, 0.140553,
		0.879483, -0.113602, 0.462173,
		31.064577, 36.511768, 33.745621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947325, 37.127544, 33.218838>,  <30.448938, 36.591290, 33.422100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947325, 37.127544, 33.218838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201597, 36.845669, 33.344906>,  <31.354160, 36.676544, 33.420547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201597, 36.845669, 33.344906>,  <30.947325, 37.127544, 33.218838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201597, 36.845669, 33.344906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610542, 0.209117, -0.763877,
		0.472387, 0.678004, 0.563171,
		0.635680, -0.704685, 0.315166,
		31.392302, 36.634262, 33.439457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655031, 37.385113, 33.001339>,  <30.947325, 37.127544, 33.218838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655031, 37.385113, 33.001339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670435, 36.989513, 33.058479>,  <31.679678, 36.752155, 33.092762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670435, 36.989513, 33.058479>,  <31.655031, 37.385113, 33.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670435, 36.989513, 33.058479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597260, -0.091827, -0.796774,
		0.801123, 0.116000, 0.587151,
		0.038509, -0.988995, 0.142847,
		31.681988, 36.692814, 33.101334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307388, 37.192760, 32.924110>,  <31.655031, 37.385113, 33.001339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307388, 37.192760, 32.924110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106571, 36.849438, 32.881657>,  <31.986082, 36.643444, 32.856186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106571, 36.849438, 32.881657>,  <32.307388, 37.192760, 32.924110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106571, 36.849438, 32.881657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518650, -0.200598, -0.831122,
		0.692067, -0.472303, 0.545869,
		-0.502042, -0.858307, -0.106132,
		31.955959, 36.591946, 32.849815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872890, 36.696060, 32.837784>,  <32.307388, 37.192760, 32.924110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872890, 36.696060, 32.837784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545189, 36.528660, 32.680973>,  <32.348568, 36.428219, 32.586887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545189, 36.528660, 32.680973>,  <32.872890, 36.696060, 32.837784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545189, 36.528660, 32.680973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484065, -0.138214, -0.864047,
		0.307419, -0.897639, 0.315813,
		-0.819252, -0.418499, -0.392026,
		32.299412, 36.403111, 32.563366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125130, 36.236210, 32.459835>,  <32.872890, 36.696060, 32.837784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125130, 36.236210, 32.459835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752041, 36.268585, 32.319275>,  <32.528187, 36.288010, 32.234940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752041, 36.268585, 32.319275>,  <33.125130, 36.236210, 32.459835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752041, 36.268585, 32.319275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352529, -0.000339, -0.935801,
		-0.075860, -0.996719, -0.028216,
		-0.932721, 0.080937, -0.351398,
		32.472225, 36.292866, 32.213856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149158, 35.770676, 31.895937>,  <33.125130, 36.236210, 32.459835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149158, 35.770676, 31.895937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806812, 35.967861, 31.833361>,  <32.601402, 36.086174, 31.795815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806812, 35.967861, 31.833361>,  <33.149158, 35.770676, 31.895937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806812, 35.967861, 31.833361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281891, 0.191026, -0.940238,
		-0.433622, -0.848818, -0.302456,
		-0.855867, 0.492967, -0.156442,
		32.550053, 36.115753, 31.786428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873291, 35.397827, 31.435717>,  <33.149158, 35.770676, 31.895937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873291, 35.397827, 31.435717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741070, 35.775116, 31.422630>,  <32.661739, 36.001488, 31.414778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741070, 35.775116, 31.422630>,  <32.873291, 35.397827, 31.435717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741070, 35.775116, 31.422630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351062, 0.090705, -0.931948,
		-0.876066, -0.319542, -0.361111,
		-0.330551, 0.943221, -0.032715,
		32.641903, 36.058083, 31.412815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747978, 35.397167, 30.679708>,  <32.873291, 35.397827, 31.435717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747978, 35.397167, 30.679708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726658, 35.778450, 30.798737>,  <32.713863, 36.007221, 30.870153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726658, 35.778450, 30.798737>,  <32.747978, 35.397167, 30.679708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726658, 35.778450, 30.798737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196860, 0.302179, -0.932703,
		-0.978982, 0.008864, -0.203755,
		-0.053303, 0.953210, 0.297572,
		32.710667, 36.064411, 30.888008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269917, 35.791809, 30.292229>,  <32.747978, 35.397167, 30.679708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269917, 35.791809, 30.292229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510101, 36.079647, 30.431732>,  <32.654213, 36.252350, 30.515434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510101, 36.079647, 30.431732>,  <32.269917, 35.791809, 30.292229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510101, 36.079647, 30.431732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061491, 0.393295, -0.917354,
		-0.797289, 0.572277, 0.191908,
		0.600457, 0.719596, 0.348759,
		32.690239, 36.295525, 30.536360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042130, 36.429523, 29.892172>,  <32.269917, 35.791809, 30.292229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042130, 36.429523, 29.892172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400192, 36.516235, 30.047968>,  <32.615028, 36.568260, 30.141445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400192, 36.516235, 30.047968>,  <32.042130, 36.429523, 29.892172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400192, 36.516235, 30.047968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249714, 0.479920, -0.841023,
		-0.369238, 0.850108, 0.375471,
		0.895157, 0.216778, 0.389489,
		32.668739, 36.581268, 30.164814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113190, 37.209751, 29.834299>,  <32.042130, 36.429523, 29.892172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113190, 37.209751, 29.834299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469028, 37.036518, 29.892338>,  <32.682533, 36.932579, 29.927162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469028, 37.036518, 29.892338>,  <32.113190, 37.209751, 29.834299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469028, 37.036518, 29.892338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406578, 0.606133, -0.683592,
		0.208101, 0.667117, 0.715296,
		0.889600, -0.433080, 0.145098,
		32.735909, 36.906593, 29.935867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519783, 37.797901, 29.948040>,  <32.113190, 37.209751, 29.834299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519783, 37.797901, 29.948040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714100, 37.470600, 29.825098>,  <32.830692, 37.274220, 29.751333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714100, 37.470600, 29.825098>,  <32.519783, 37.797901, 29.948040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714100, 37.470600, 29.825098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492129, 0.546653, -0.677480,
		0.722365, 0.177860, 0.668247,
		0.485796, -0.818252, -0.307353,
		32.859840, 37.225124, 29.732891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082581, 38.059902, 29.695192>,  <32.519783, 37.797901, 29.948040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082581, 38.059902, 29.695192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104069, 37.695770, 29.531040>,  <33.116962, 37.477291, 29.432549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104069, 37.695770, 29.531040>,  <33.082581, 38.059902, 29.695192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104069, 37.695770, 29.531040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482170, 0.383534, -0.787664,
		0.874430, -0.155563, 0.459536,
		0.053717, -0.910331, -0.410381,
		33.120182, 37.422672, 29.407927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804001, 37.999409, 29.377745>,  <33.082581, 38.059902, 29.695192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804001, 37.999409, 29.377745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594017, 37.709377, 29.199451>,  <33.468029, 37.535358, 29.092476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594017, 37.709377, 29.199451>,  <33.804001, 37.999409, 29.377745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594017, 37.709377, 29.199451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488432, 0.172243, -0.855434,
		0.697033, -0.666775, 0.263733,
		-0.524956, -0.725081, -0.445733,
		33.436531, 37.491852, 29.065731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276299, 37.580307, 28.957701>,  <33.804001, 37.999409, 29.377745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276299, 37.580307, 28.957701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903500, 37.548409, 28.816267>,  <33.679821, 37.529270, 28.731407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903500, 37.548409, 28.816267>,  <34.276299, 37.580307, 28.957701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903500, 37.548409, 28.816267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349051, 0.065451, -0.934815,
		0.097696, -0.994664, -0.033162,
		-0.931997, -0.079752, -0.353583,
		33.623901, 37.524483, 28.710192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319504, 37.026936, 28.450996>,  <34.276299, 37.580307, 28.957701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319504, 37.026936, 28.450996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996841, 37.254593, 28.387283>,  <33.803242, 37.391190, 28.349054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996841, 37.254593, 28.387283>,  <34.319504, 37.026936, 28.450996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996841, 37.254593, 28.387283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252182, 0.087716, -0.963696,
		-0.534514, -0.817543, -0.214286,
		-0.806659, 0.569148, -0.159285,
		33.754845, 37.425339, 28.339499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044098, 36.797421, 27.812449>,  <34.319504, 37.026936, 28.450996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044098, 36.797421, 27.812449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899086, 37.164524, 27.877306>,  <33.812080, 37.384785, 27.916220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899086, 37.164524, 27.877306>,  <34.044098, 36.797421, 27.812449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899086, 37.164524, 27.877306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207763, 0.249185, -0.945908,
		-0.908520, -0.309230, -0.281013,
		-0.362528, 0.917760, 0.162143,
		33.790329, 37.439854, 27.925949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565105, 37.007473, 27.223005>,  <34.044098, 36.797421, 27.812449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565105, 37.007473, 27.223005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676060, 37.358341, 27.379784>,  <33.742630, 37.568863, 27.473850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676060, 37.358341, 27.379784>,  <33.565105, 37.007473, 27.223005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676060, 37.358341, 27.379784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010703, 0.405109, -0.914206,
		-0.960700, 0.257781, 0.102982,
		0.277383, 0.877175, 0.391947,
		33.759274, 37.621494, 27.497368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038223, 37.442940, 26.998522>,  <33.565105, 37.007473, 27.223005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038223, 37.442940, 26.998522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360611, 37.663208, 27.085398>,  <33.554043, 37.795368, 27.137524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360611, 37.663208, 27.085398>,  <33.038223, 37.442940, 26.998522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360611, 37.663208, 27.085398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052500, 0.431957, -0.900365,
		-0.589621, 0.714266, 0.377055,
		0.805972, 0.550670, 0.217191,
		33.602402, 37.828407, 27.150555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892296, 38.089340, 26.711281>,  <33.038223, 37.442940, 26.998522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892296, 38.089340, 26.711281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288471, 38.104084, 26.764469>,  <33.526176, 38.112930, 26.796383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288471, 38.104084, 26.764469>,  <32.892296, 38.089340, 26.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288471, 38.104084, 26.764469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083242, 0.608937, -0.788838,
		-0.110049, 0.792361, 0.600044,
		0.990434, 0.036861, 0.132971,
		33.585602, 38.115143, 26.804359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072655, 38.802174, 26.634590>,  <32.892296, 38.089340, 26.711281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072655, 38.802174, 26.634590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427589, 38.624752, 26.584173>,  <33.640553, 38.518299, 26.553923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427589, 38.624752, 26.584173>,  <33.072655, 38.802174, 26.634590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427589, 38.624752, 26.584173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234157, 0.668916, -0.705494,
		0.397236, 0.596500, 0.697418,
		0.887341, -0.443552, -0.126043,
		33.693790, 38.491688, 26.546360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601254, 39.311890, 26.472965>,  <33.072655, 38.802174, 26.634590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601254, 39.311890, 26.472965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784306, 38.977959, 26.350567>,  <33.894138, 38.777599, 26.277128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784306, 38.977959, 26.350567>,  <33.601254, 39.311890, 26.472965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784306, 38.977959, 26.350567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472124, 0.519779, -0.711989,
		0.753439, 0.181361, 0.632011,
		0.457633, -0.834828, -0.305997,
		33.921597, 38.727509, 26.258768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305130, 39.473934, 26.399706>,  <33.601254, 39.311890, 26.472965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305130, 39.473934, 26.399706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306961, 39.129864, 26.195713>,  <34.308060, 38.923424, 26.073317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306961, 39.129864, 26.195713>,  <34.305130, 39.473934, 26.399706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306961, 39.129864, 26.195713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634255, 0.396778, -0.663542,
		0.773110, -0.320425, 0.547383,
		0.004575, -0.860172, -0.509984,
		34.308334, 38.871811, 26.042717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971691, 39.371304, 26.271505>,  <34.305130, 39.473934, 26.399706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971691, 39.371304, 26.271505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756145, 39.154678, 26.013409>,  <34.626820, 39.024704, 25.858551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756145, 39.154678, 26.013409>,  <34.971691, 39.371304, 26.271505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756145, 39.154678, 26.013409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495443, 0.415732, -0.762694,
		0.681295, -0.730668, 0.044292,
		-0.538863, -0.541564, -0.645241,
		34.594486, 38.992210, 25.819836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418320, 39.298717, 25.743872>,  <34.971691, 39.371304, 26.271505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418320, 39.298717, 25.743872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078312, 39.202087, 25.556637>,  <34.874306, 39.144112, 25.444296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078312, 39.202087, 25.556637>,  <35.418320, 39.298717, 25.743872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078312, 39.202087, 25.556637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403630, 0.272257, -0.873475,
		0.338447, -0.931407, -0.133919,
		-0.850021, -0.241571, -0.468089,
		34.823307, 39.129616, 25.416210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617970, 38.981937, 25.225269>,  <35.418320, 39.298717, 25.743872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617970, 38.981937, 25.225269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253185, 39.106312, 25.118198>,  <35.034313, 39.180935, 25.053957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253185, 39.106312, 25.118198>,  <35.617970, 38.981937, 25.225269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253185, 39.106312, 25.118198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385257, 0.424626, -0.819311,
		-0.141088, -0.850302, -0.507031,
		-0.911960, 0.310932, -0.267676,
		34.979599, 39.199593, 25.037895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531956, 38.740761, 24.558369>,  <35.617970, 38.981937, 25.225269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531956, 38.740761, 24.558369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241405, 39.012863, 24.597643>,  <35.067078, 39.176125, 24.621206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241405, 39.012863, 24.597643>,  <35.531956, 38.740761, 24.558369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241405, 39.012863, 24.597643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341965, 0.481615, -0.806912,
		-0.596190, -0.552544, -0.582454,
		-0.726373, 0.680251, 0.098183,
		35.023495, 39.216938, 24.627098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278198, 38.720387, 23.901001>,  <35.531956, 38.740761, 24.558369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278198, 38.720387, 23.901001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152020, 39.063164, 24.064041>,  <35.076313, 39.268829, 24.161865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152020, 39.063164, 24.064041>,  <35.278198, 38.720387, 23.901001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152020, 39.063164, 24.064041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077243, 0.451292, -0.889027,
		-0.945794, -0.248958, -0.208552,
		-0.315448, 0.856946, 0.407599,
		35.057384, 39.320248, 24.186321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865173, 39.126431, 23.346691>,  <35.278198, 38.720387, 23.901001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865173, 39.126431, 23.346691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946152, 39.406616, 23.620441>,  <34.994740, 39.574726, 23.784691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946152, 39.406616, 23.620441>,  <34.865173, 39.126431, 23.346691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946152, 39.406616, 23.620441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271214, 0.631407, -0.726477,
		-0.940989, 0.332681, -0.062152,
		0.202442, 0.700463, 0.684375,
		35.006886, 39.616756, 23.825754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517078, 39.749279, 23.159174>,  <34.865173, 39.126431, 23.346691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517078, 39.749279, 23.159174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823933, 39.883644, 23.377777>,  <35.008045, 39.964264, 23.508940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823933, 39.883644, 23.377777>,  <34.517078, 39.749279, 23.159174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823933, 39.883644, 23.377777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274043, 0.598676, -0.752654,
		-0.580009, 0.727151, 0.367208,
		0.767131, 0.335915, 0.546508,
		35.054073, 39.984417, 23.541729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530006, 40.491528, 23.072901>,  <34.517078, 39.749279, 23.159174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530006, 40.491528, 23.072901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899857, 40.396923, 23.192324>,  <35.121765, 40.340160, 23.263977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899857, 40.396923, 23.192324>,  <34.530006, 40.491528, 23.072901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899857, 40.396923, 23.192324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378622, 0.485416, -0.788046,
		0.041460, 0.841684, 0.538376,
		0.924622, -0.236513, 0.298555,
		35.177242, 40.325970, 23.281891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853996, 41.086311, 23.232800>,  <34.530006, 40.491528, 23.072901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853996, 41.086311, 23.232800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156570, 40.839455, 23.146133>,  <35.338116, 40.691341, 23.094133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156570, 40.839455, 23.146133>,  <34.853996, 41.086311, 23.232800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156570, 40.839455, 23.146133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303690, 0.624777, -0.719323,
		0.579287, 0.478325, 0.660024,
		0.756438, -0.617137, -0.216663,
		35.383503, 40.654312, 23.081135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281708, 41.597664, 23.074249>,  <34.853996, 41.086311, 23.232800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281708, 41.597664, 23.074249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436581, 41.251587, 22.946789>,  <35.529503, 41.043941, 22.870314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436581, 41.251587, 22.946789>,  <35.281708, 41.597664, 23.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436581, 41.251587, 22.946789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548914, 0.493987, -0.674292,
		0.740799, 0.086163, 0.666178,
		0.387182, -0.865189, -0.318649,
		35.552734, 40.992031, 22.851194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981361, 41.675816, 23.133141>,  <35.281708, 41.597664, 23.074249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981361, 41.675816, 23.133141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902939, 41.389328, 22.865231>,  <35.855885, 41.217438, 22.704485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902939, 41.389328, 22.865231>,  <35.981361, 41.675816, 23.133141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902939, 41.389328, 22.865231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676366, 0.395772, -0.621203,
		0.709992, -0.574806, 0.406828,
		-0.196060, -0.716215, -0.669774,
		35.844120, 41.174465, 22.664299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651852, 41.499744, 22.836777>,  <35.981361, 41.675816, 23.133141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651852, 41.499744, 22.836777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384377, 41.375793, 22.566420>,  <36.223892, 41.301422, 22.404205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384377, 41.375793, 22.566420>,  <36.651852, 41.499744, 22.836777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384377, 41.375793, 22.566420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483339, 0.509599, -0.711823,
		0.565017, -0.802671, -0.190982,
		-0.668684, -0.309883, -0.675895,
		36.183769, 41.282829, 22.363651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992920, 41.192005, 22.355627>,  <36.651852, 41.499744, 22.836777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992920, 41.192005, 22.355627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669601, 41.325741, 22.161772>,  <36.475609, 41.405983, 22.045460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669601, 41.325741, 22.161772>,  <36.992920, 41.192005, 22.355627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669601, 41.325741, 22.161772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588682, 0.473566, -0.655124,
		0.010471, -0.814831, -0.579603,
		-0.808296, 0.334343, -0.484636,
		36.427113, 41.426044, 22.016380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213383, 41.383629, 21.548609>,  <36.992920, 41.192005, 22.355627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213383, 41.383629, 21.548609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844410, 41.535835, 21.574934>,  <36.623028, 41.627159, 21.590729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844410, 41.535835, 21.574934>,  <37.213383, 41.383629, 21.548609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844410, 41.535835, 21.574934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212101, 0.641652, -0.737086,
		-0.322701, -0.665952, -0.672587,
		-0.922430, 0.380514, 0.065813,
		36.567680, 41.649990, 21.594677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916302, 41.535519, 20.807730>,  <37.213383, 41.383629, 21.548609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916302, 41.535519, 20.807730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706604, 41.762142, 21.062029>,  <36.580784, 41.898117, 21.214607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706604, 41.762142, 21.062029>,  <36.916302, 41.535519, 20.807730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706604, 41.762142, 21.062029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182148, 0.803887, -0.566204,
		-0.831858, -0.181030, -0.524633,
		-0.524246, 0.566563, 0.635746,
		36.549332, 41.932110, 21.252752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503212, 42.045341, 20.412888>,  <36.916302, 41.535519, 20.807730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503212, 42.045341, 20.412888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530724, 42.253292, 20.753475>,  <36.547230, 42.378063, 20.957827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530724, 42.253292, 20.753475>,  <36.503212, 42.045341, 20.412888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530724, 42.253292, 20.753475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251525, 0.816881, -0.519077,
		-0.965404, 0.249865, -0.074581,
		0.068776, 0.519878, 0.851468,
		36.551357, 42.409256, 21.008915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407772, 42.786671, 20.242373>,  <36.503212, 42.045341, 20.412888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407772, 42.786671, 20.242373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559505, 42.825630, 20.610420>,  <36.650547, 42.849007, 20.831249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559505, 42.825630, 20.610420>,  <36.407772, 42.786671, 20.242373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559505, 42.825630, 20.610420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132568, 0.978462, -0.158231,
		-0.915714, 0.182001, 0.358250,
		0.379332, 0.097402, 0.920119,
		36.673306, 42.854851, 20.886456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012081, 43.347622, 20.663145>,  <36.407772, 42.786671, 20.242373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012081, 43.347622, 20.663145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401421, 43.298515, 20.740620>,  <36.635025, 43.269051, 20.787106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401421, 43.298515, 20.740620>,  <36.012081, 43.347622, 20.663145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401421, 43.298515, 20.740620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136433, 0.988900, -0.058842,
		-0.184314, 0.083700, 0.979297,
		0.973352, -0.122763, 0.193688,
		36.693428, 43.261688, 20.798725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298641, 43.801231, 21.257729>,  <36.012081, 43.347622, 20.663145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298641, 43.801231, 21.257729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554077, 43.716869, 20.961697>,  <36.707340, 43.666252, 20.784077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554077, 43.716869, 20.961697>,  <36.298641, 43.801231, 21.257729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554077, 43.716869, 20.961697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105633, 0.976631, -0.187173,
		0.762262, 0.041350, 0.645946,
		0.638590, -0.210908, -0.740081,
		36.745655, 43.653595, 20.739672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046230, 44.153061, 21.133089>,  <36.298641, 43.801231, 21.257729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046230, 44.153061, 21.133089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892334, 44.122677, 20.765131>,  <36.799995, 44.104446, 20.544357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892334, 44.122677, 20.765131>,  <37.046230, 44.153061, 21.133089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892334, 44.122677, 20.765131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046308, 0.993765, -0.101424,
		0.921862, -0.081620, -0.378825,
		-0.384742, -0.075956, -0.919894,
		36.776913, 44.099892, 20.489162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257927, 44.710541, 20.541773>,  <37.046230, 44.153061, 21.133089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257927, 44.710541, 20.541773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868870, 44.633415, 20.489956>,  <36.635433, 44.587139, 20.458866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868870, 44.633415, 20.489956>,  <37.257927, 44.710541, 20.541773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868870, 44.633415, 20.489956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102479, 0.856647, -0.505623,
		0.208467, -0.478516, -0.852973,
		-0.972645, -0.192818, -0.129544,
		36.577076, 44.575569, 20.451092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929493, 44.745007, 20.135754>,  <37.257927, 44.710541, 20.541773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929493, 44.745007, 20.135754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221359, 44.769905, 20.408138>,  <38.396481, 44.784843, 20.571569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221359, 44.769905, 20.408138>,  <37.929493, 44.745007, 20.135754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221359, 44.769905, 20.408138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681136, 0.153979, 0.715782,
		-0.060298, -0.986111, 0.154753,
		0.729669, 0.062248, 0.680961,
		38.440262, 44.788582, 20.612427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964546, 44.165070, 20.667107>,  <37.929493, 44.745007, 20.135754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964546, 44.165070, 20.667107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138744, 44.470589, 20.857666>,  <38.243263, 44.653900, 20.972002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138744, 44.470589, 20.857666>,  <37.964546, 44.165070, 20.667107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138744, 44.470589, 20.857666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723784, -0.017566, 0.689803,
		0.535239, -0.645215, 0.545175,
		0.435495, 0.763799, 0.476398,
		38.269394, 44.699730, 21.000586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107361, 44.067547, 21.444427>,  <37.964546, 44.165070, 20.667107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107361, 44.067547, 21.444427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068684, 44.464413, 21.412781>,  <38.045475, 44.702534, 21.393793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068684, 44.464413, 21.412781>,  <38.107361, 44.067547, 21.444427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068684, 44.464413, 21.412781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663826, -0.005060, 0.747870,
		0.741610, 0.124836, 0.659114,
		-0.096696, 0.992164, -0.079117,
		38.039673, 44.762062, 21.389046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121807, 44.320583, 22.067392>,  <38.107361, 44.067547, 21.444427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121807, 44.320583, 22.067392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922318, 44.571236, 21.827858>,  <37.802624, 44.721626, 21.684137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922318, 44.571236, 21.827858>,  <38.121807, 44.320583, 22.067392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922318, 44.571236, 21.827858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753494, 0.028029, 0.656857,
		0.428390, 0.778813, 0.458183,
		-0.498727, 0.626629, -0.598838,
		37.772701, 44.759224, 21.648207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028927, 44.833637, 22.516165>,  <38.121807, 44.320583, 22.067392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028927, 44.833637, 22.516165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750549, 44.779160, 22.234138>,  <37.583523, 44.746475, 22.064922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750549, 44.779160, 22.234138>,  <38.028927, 44.833637, 22.516165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750549, 44.779160, 22.234138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698718, -0.098131, 0.708635,
		-0.165698, 0.985811, -0.026865,
		-0.695944, -0.136191, -0.705064,
		37.541767, 44.738304, 22.022619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449467, 45.128132, 22.747244>,  <38.028927, 44.833637, 22.516165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449467, 45.128132, 22.747244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338715, 44.803215, 22.541908>,  <37.272263, 44.608265, 22.418707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338715, 44.803215, 22.541908>,  <37.449467, 45.128132, 22.747244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338715, 44.803215, 22.541908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763591, -0.138305, 0.630714,
		-0.583322, 0.566613, -0.581966,
		-0.276882, -0.812294, -0.513337,
		37.255650, 44.559528, 22.387907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667007, 45.078587, 22.830708>,  <37.449467, 45.128132, 22.747244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667007, 45.078587, 22.830708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814404, 44.719223, 22.735144>,  <36.902840, 44.503605, 22.677805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814404, 44.719223, 22.735144>,  <36.667007, 45.078587, 22.830708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814404, 44.719223, 22.735144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805530, -0.436858, 0.400345,
		-0.464044, 0.044928, -0.884672,
		0.368489, -0.898408, -0.238912,
		36.924950, 44.449699, 22.663471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056896, 44.677898, 22.523653>,  <36.667007, 45.078587, 22.830708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056896, 44.677898, 22.523653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331142, 44.433502, 22.681957>,  <36.495689, 44.286865, 22.776939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331142, 44.433502, 22.681957>,  <36.056896, 44.677898, 22.523653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331142, 44.433502, 22.681957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712876, -0.453389, 0.535020,
		-0.147458, -0.648945, -0.746409,
		0.685612, -0.610990, 0.395761,
		36.536827, 44.250206, 22.800686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673916, 44.034416, 22.475471>,  <36.056896, 44.677898, 22.523653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673916, 44.034416, 22.475471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960121, 43.994305, 22.752018>,  <36.131844, 43.970238, 22.917946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960121, 43.994305, 22.752018>,  <35.673916, 44.034416, 22.475471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960121, 43.994305, 22.752018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622854, -0.539756, 0.566318,
		0.316377, -0.835827, -0.448663,
		0.715512, -0.100281, 0.691365,
		36.174774, 43.964222, 22.959427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415649, 43.333324, 22.825005>,  <35.673916, 44.034416, 22.475471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415649, 43.333324, 22.825005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679405, 43.517231, 23.062933>,  <35.837658, 43.627575, 23.205690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679405, 43.517231, 23.062933>,  <35.415649, 43.333324, 22.825005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679405, 43.517231, 23.062933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464125, -0.373471, 0.803186,
		0.591429, -0.805687, -0.032874,
		0.659394, 0.459769, 0.594821,
		35.877224, 43.655163, 23.241379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470371, 42.924534, 23.440351>,  <35.415649, 43.333324, 22.825005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470371, 42.924534, 23.440351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635994, 43.261772, 23.577606>,  <35.735367, 43.464115, 23.659958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635994, 43.261772, 23.577606>,  <35.470371, 42.924534, 23.440351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635994, 43.261772, 23.577606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147845, -0.309671, 0.939279,
		0.898163, -0.439649, -0.003575,
		0.414060, 0.843097, 0.343135,
		35.760212, 43.514702, 23.680546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814297, 42.725658, 24.063007>,  <35.470371, 42.924534, 23.440351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814297, 42.725658, 24.063007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806797, 43.124969, 24.085211>,  <35.802296, 43.364555, 24.098534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806797, 43.124969, 24.085211>,  <35.814297, 42.725658, 24.063007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806797, 43.124969, 24.085211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333462, -0.058585, 0.940942,
		0.942577, -0.000866, 0.333987,
		-0.018752, 0.998282, 0.055510,
		35.801170, 43.424454, 24.101864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109550, 42.852715, 24.725735>,  <35.814297, 42.725658, 24.063007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109550, 42.852715, 24.725735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859989, 43.152306, 24.636494>,  <35.710251, 43.332058, 24.582949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859989, 43.152306, 24.636494>,  <36.109550, 42.852715, 24.725735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859989, 43.152306, 24.636494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313868, 0.021296, 0.949228,
		0.715700, 0.662255, 0.221793,
		-0.623907, 0.748976, -0.223102,
		35.672817, 43.376999, 24.569563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146919, 43.238953, 25.257700>,  <36.109550, 42.852715, 24.725735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146919, 43.238953, 25.257700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800522, 43.338303, 25.084097>,  <35.592682, 43.397915, 24.979935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800522, 43.338303, 25.084097>,  <36.146919, 43.238953, 25.257700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800522, 43.338303, 25.084097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462435, -0.067509, 0.884079,
		0.190287, 0.966308, 0.173322,
		-0.865993, 0.248379, -0.434009,
		35.540726, 43.412815, 24.953894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888271, 43.750641, 25.700115>,  <36.146919, 43.238953, 25.257700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888271, 43.750641, 25.700115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587276, 43.606075, 25.479883>,  <35.406677, 43.519337, 25.347744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587276, 43.606075, 25.479883>,  <35.888271, 43.750641, 25.700115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587276, 43.606075, 25.479883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590547, 0.000164, 0.807003,
		-0.291570, 0.932406, -0.213554,
		-0.752490, -0.361412, -0.550582,
		35.361530, 43.497650, 25.314709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417637, 43.973545, 26.149984>,  <35.888271, 43.750641, 25.700115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417637, 43.973545, 26.149984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215347, 43.737473, 25.898293>,  <35.093975, 43.595829, 25.747276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215347, 43.737473, 25.898293>,  <35.417637, 43.973545, 26.149984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215347, 43.737473, 25.898293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649272, -0.219895, 0.728074,
		-0.568062, 0.776744, -0.271983,
		-0.505719, -0.590182, -0.629232,
		35.063633, 43.560417, 25.709522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693035, 44.233910, 26.145258>,  <35.417637, 43.973545, 26.149984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693035, 44.233910, 26.145258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702320, 43.855949, 26.014648>,  <34.707890, 43.629173, 25.936283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702320, 43.855949, 26.014648>,  <34.693035, 44.233910, 26.145258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702320, 43.855949, 26.014648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740277, -0.235757, 0.629610,
		-0.671901, 0.227104, -0.704963,
		0.023213, -0.944903, -0.326525,
		34.709286, 43.572479, 25.916691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992893, 44.032459, 26.117233>,  <34.693035, 44.233910, 26.145258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992893, 44.032459, 26.117233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185848, 43.682098, 26.121067>,  <34.301620, 43.471882, 26.123367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185848, 43.682098, 26.121067>,  <33.992893, 44.032459, 26.117233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185848, 43.682098, 26.121067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608640, -0.327290, 0.722799,
		-0.629966, -0.354503, -0.690992,
		0.482390, -0.875904, 0.009583,
		34.330566, 43.419327, 26.123941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520611, 43.508598, 26.042698>,  <33.992893, 44.032459, 26.117233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520611, 43.508598, 26.042698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846333, 43.368935, 26.228165>,  <34.041767, 43.285137, 26.339445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846333, 43.368935, 26.228165>,  <33.520611, 43.508598, 26.042698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846333, 43.368935, 26.228165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571624, -0.343773, 0.745028,
		-0.100739, -0.871726, -0.479526,
		0.814308, -0.349162, 0.463668,
		34.090626, 43.264187, 26.367266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334118, 42.937458, 26.245602>,  <33.520611, 43.508598, 26.042698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334118, 42.937458, 26.245602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669914, 42.957695, 26.462008>,  <33.871391, 42.969837, 26.591852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669914, 42.957695, 26.462008>,  <33.334118, 42.937458, 26.245602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669914, 42.957695, 26.462008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370726, -0.674604, 0.638335,
		0.397265, -0.736444, -0.547567,
		0.839489, 0.050591, 0.541016,
		33.921761, 42.972874, 26.624311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581524, 42.288544, 26.411310>,  <33.334118, 42.937458, 26.245602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581524, 42.288544, 26.411310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734310, 42.517578, 26.701481>,  <33.825981, 42.654999, 26.875584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734310, 42.517578, 26.701481>,  <33.581524, 42.288544, 26.411310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734310, 42.517578, 26.701481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421302, -0.590754, 0.688123,
		0.822561, -0.568463, 0.015585,
		0.381966, 0.572590, 0.725426,
		33.848900, 42.689354, 26.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875000, 41.813076, 26.895433>,  <33.581524, 42.288544, 26.411310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875000, 41.813076, 26.895433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816238, 42.141273, 27.116419>,  <33.780983, 42.338192, 27.249010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816238, 42.141273, 27.116419>,  <33.875000, 41.813076, 26.895433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816238, 42.141273, 27.116419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528638, -0.537191, 0.657242,
		0.836039, -0.195502, 0.512657,
		-0.146902, 0.820490, 0.552463,
		33.772167, 42.387421, 27.282158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150097, 41.739471, 27.585527>,  <33.875000, 41.813076, 26.895433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150097, 41.739471, 27.585527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892933, 42.041191, 27.638754>,  <33.738636, 42.222221, 27.670691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892933, 42.041191, 27.638754>,  <34.150097, 41.739471, 27.585527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892933, 42.041191, 27.638754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576807, -0.591094, 0.563827,
		0.503948, 0.285735, 0.815103,
		-0.642908, 0.754297, 0.133067,
		33.700062, 42.267479, 27.678675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069660, 41.688747, 28.228279>,  <34.150097, 41.739471, 27.585527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069660, 41.688747, 28.228279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762520, 41.934368, 28.155239>,  <33.578236, 42.081741, 28.111416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762520, 41.934368, 28.155239>,  <34.069660, 41.688747, 28.228279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762520, 41.934368, 28.155239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426580, -0.277433, 0.860848,
		0.477949, 0.738896, 0.474971,
		-0.767850, 0.614055, -0.182600,
		33.532166, 42.118584, 28.100460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013683, 42.190056, 28.785910>,  <34.069660, 41.688747, 28.228279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013683, 42.190056, 28.785910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651550, 42.171993, 28.616989>,  <33.434269, 42.161156, 28.515636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651550, 42.171993, 28.616989>,  <34.013683, 42.190056, 28.785910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651550, 42.171993, 28.616989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395394, -0.273387, 0.876883,
		-0.155045, 0.960844, 0.229652,
		-0.905331, -0.045154, -0.422299,
		33.379951, 42.158447, 28.490299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525028, 42.734325, 29.167934>,  <34.013683, 42.190056, 28.785910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525028, 42.734325, 29.167934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333675, 42.433739, 28.986189>,  <33.218864, 42.253387, 28.877142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333675, 42.433739, 28.986189>,  <33.525028, 42.734325, 29.167934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333675, 42.433739, 28.986189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366120, -0.299617, 0.881014,
		-0.798187, 0.587815, -0.131794,
		-0.478386, -0.751467, -0.454362,
		33.190159, 42.208298, 28.849880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898582, 42.652237, 29.685394>,  <33.525028, 42.734325, 29.167934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898582, 42.652237, 29.685394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892784, 42.331501, 29.446451>,  <32.889305, 42.139057, 29.303085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892784, 42.331501, 29.446451>,  <32.898582, 42.652237, 29.685394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892784, 42.331501, 29.446451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480078, -0.518475, 0.707608,
		-0.877106, 0.297037, -0.377431,
		-0.014497, -0.801843, -0.597358,
		32.888435, 42.090946, 29.267244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200619, 42.431942, 29.763075>,  <32.898582, 42.652237, 29.685394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200619, 42.431942, 29.763075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436207, 42.138641, 29.627159>,  <32.577560, 41.962662, 29.545610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436207, 42.138641, 29.627159>,  <32.200619, 42.431942, 29.763075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436207, 42.138641, 29.627159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518695, -0.665406, 0.536835,
		-0.619730, -0.139937, -0.772239,
		0.588975, -0.733248, -0.339787,
		32.612900, 41.918667, 29.525223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712841, 41.820972, 29.684971>,  <32.200619, 42.431942, 29.763075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712841, 41.820972, 29.684971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086620, 41.682632, 29.718901>,  <32.310886, 41.599628, 29.739258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086620, 41.682632, 29.718901>,  <31.712841, 41.820972, 29.684971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086620, 41.682632, 29.718901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338269, -0.787680, 0.514912,
		-0.111267, -0.509852, -0.853036,
		0.934448, -0.345848, 0.084825,
		32.366955, 41.578876, 29.744349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662201, 41.065502, 29.663099>,  <31.712841, 41.820972, 29.684971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662201, 41.065502, 29.663099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018188, 41.141205, 29.829056>,  <32.231781, 41.186626, 29.928629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018188, 41.141205, 29.829056>,  <31.662201, 41.065502, 29.663099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018188, 41.141205, 29.829056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103185, -0.802638, 0.587474,
		0.444193, -0.565644, -0.694794,
		0.889969, 0.189260, 0.414892,
		32.285179, 41.197983, 29.953524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061218, 40.326736, 29.792414>,  <31.662201, 41.065502, 29.663099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061218, 40.326736, 29.792414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153328, 40.613255, 30.055897>,  <32.208595, 40.785164, 30.213987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153328, 40.613255, 30.055897>,  <32.061218, 40.326736, 29.792414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153328, 40.613255, 30.055897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142611, -0.644752, 0.750971,
		0.962619, -0.266870, -0.046320,
		0.230277, 0.716293, 0.658708,
		32.222412, 40.828144, 30.253510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412182, 39.983368, 30.293633>,  <32.061218, 40.326736, 29.792414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412182, 39.983368, 30.293633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329723, 40.334061, 30.467453>,  <32.280247, 40.544479, 30.571747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329723, 40.334061, 30.467453>,  <32.412182, 39.983368, 30.293633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329723, 40.334061, 30.467453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035786, -0.437040, 0.898730,
		0.977867, 0.200820, 0.058719,
		-0.206146, 0.876737, 0.434554,
		32.267879, 40.597080, 30.597818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941769, 40.157173, 30.862402>,  <32.412182, 39.983368, 30.293633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941769, 40.157173, 30.862402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601440, 40.350319, 30.945299>,  <32.397243, 40.466206, 30.995037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601440, 40.350319, 30.945299>,  <32.941769, 40.157173, 30.862402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601440, 40.350319, 30.945299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042314, -0.456079, 0.888932,
		0.523757, 0.747549, 0.408472,
		-0.850816, 0.482868, 0.207243,
		32.346195, 40.495178, 31.007471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027985, 40.218285, 31.583351>,  <32.941769, 40.157173, 30.862402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027985, 40.218285, 31.583351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653877, 40.341797, 31.514151>,  <32.429413, 40.415905, 31.472631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653877, 40.341797, 31.514151>,  <33.027985, 40.218285, 31.583351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653877, 40.341797, 31.514151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301029, -0.436870, 0.847660,
		0.186162, 0.844866, 0.501542,
		-0.935268, 0.308781, -0.173000,
		32.373299, 40.434433, 31.462250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811115, 40.525383, 32.281456>,  <33.027985, 40.218285, 31.583351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811115, 40.525383, 32.281456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477390, 40.461910, 32.070274>,  <32.277153, 40.423828, 31.943565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477390, 40.461910, 32.070274>,  <32.811115, 40.525383, 32.281456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477390, 40.461910, 32.070274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439948, -0.385458, 0.811091,
		-0.332209, 0.908979, 0.251783,
		-0.834316, -0.158681, -0.527956,
		32.227097, 40.414307, 31.911888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315125, 40.800140, 32.661205>,  <32.811115, 40.525383, 32.281456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315125, 40.800140, 32.661205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121025, 40.560459, 32.406490>,  <32.004566, 40.416653, 32.253662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121025, 40.560459, 32.406490>,  <32.315125, 40.800140, 32.661205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121025, 40.560459, 32.406490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565017, -0.340918, 0.751352,
		-0.667303, 0.724385, -0.173130,
		-0.485245, -0.599201, -0.636786,
		31.975452, 40.380699, 32.215454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583687, 40.838848, 32.771690>,  <32.315125, 40.800140, 32.661205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583687, 40.838848, 32.771690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653700, 40.477386, 32.615345>,  <31.695707, 40.260509, 32.521538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653700, 40.477386, 32.615345>,  <31.583687, 40.838848, 32.771690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653700, 40.477386, 32.615345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352774, -0.428193, 0.831986,
		-0.919193, -0.007737, -0.393733,
		0.175031, -0.903654, -0.390863,
		31.706209, 40.206291, 32.498085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004679, 40.483376, 33.014420>,  <31.583687, 40.838848, 32.771690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004679, 40.483376, 33.014420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275145, 40.210876, 32.902199>,  <31.437424, 40.047379, 32.834866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275145, 40.210876, 32.902199>,  <31.004679, 40.483376, 33.014420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275145, 40.210876, 32.902199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291230, -0.596928, 0.747571,
		-0.676748, -0.423775, -0.602020,
		0.676164, -0.681243, -0.280554,
		31.477993, 40.006504, 32.818031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511181, 39.919098, 33.119305>,  <31.004679, 40.483376, 33.014420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511181, 39.919098, 33.119305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881966, 39.773354, 33.083553>,  <31.104437, 39.685905, 33.062103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881966, 39.773354, 33.083553>,  <30.511181, 39.919098, 33.119305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881966, 39.773354, 33.083553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213247, -0.707733, 0.673528,
		-0.308661, -0.605274, -0.733738,
		0.926959, -0.364359, -0.089376,
		31.160053, 39.664047, 33.056740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368530, 39.232025, 33.123901>,  <30.511181, 39.919098, 33.119305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368530, 39.232025, 33.123901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748991, 39.283730, 33.236046>,  <30.977268, 39.314751, 33.303333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748991, 39.283730, 33.236046>,  <30.368530, 39.232025, 33.123901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748991, 39.283730, 33.236046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155742, -0.583208, 0.797254,
		0.266559, -0.801973, -0.534589,
		0.951153, 0.129258, 0.280360,
		31.034336, 39.322506, 33.320152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781647, 38.526974, 33.229111>,  <30.368530, 39.232025, 33.123901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781647, 38.526974, 33.229111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991388, 38.795826, 33.438221>,  <31.117233, 38.957138, 33.563686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991388, 38.795826, 33.438221>,  <30.781647, 38.526974, 33.229111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991388, 38.795826, 33.438221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050365, -0.637356, 0.768922,
		0.850009, -0.376859, -0.368052,
		0.524356, 0.672127, 0.522777,
		31.148695, 38.997463, 33.595055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229469, 38.133976, 33.603352>,  <30.781647, 38.526974, 33.229111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229469, 38.133976, 33.603352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231287, 38.472214, 33.816872>,  <31.232378, 38.675156, 33.944984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231287, 38.472214, 33.816872>,  <31.229469, 38.133976, 33.603352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231287, 38.472214, 33.816872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068752, -0.532809, 0.843438,
		0.997623, 0.032866, -0.060558,
		0.004545, 0.845597, 0.533802,
		31.232651, 38.725891, 33.977013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808374, 38.189064, 34.146931>,  <31.229469, 38.133976, 33.603352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808374, 38.189064, 34.146931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525507, 38.445835, 34.265484>,  <31.355785, 38.599895, 34.336617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525507, 38.445835, 34.265484>,  <31.808374, 38.189064, 34.146931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525507, 38.445835, 34.265484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155039, -0.549770, 0.820802,
		0.689835, 0.534496, 0.488305,
		-0.707171, 0.641925, 0.296383,
		31.313356, 38.638412, 34.354397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004829, 38.354931, 34.878677>,  <31.808374, 38.189064, 34.146931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004829, 38.354931, 34.878677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612572, 38.400776, 34.815170>,  <31.377218, 38.428284, 34.777065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612572, 38.400776, 34.815170>,  <32.004829, 38.354931, 34.878677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612572, 38.400776, 34.815170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194714, -0.484998, 0.852563,
		0.020712, 0.866973, 0.497925,
		-0.980641, 0.114611, -0.158766,
		31.318378, 38.435158, 34.767540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778629, 38.319218, 35.070602>,  <32.004829, 38.354931, 34.878677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778629, 38.319218, 35.070602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113075, 38.288910, 35.287918>,  <33.313744, 38.270725, 35.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113075, 38.288910, 35.287918>,  <32.778629, 38.319218, 35.070602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113075, 38.288910, 35.287918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462854, 0.628988, -0.624612,
		-0.294398, 0.773714, 0.560978,
		0.836120, -0.075766, 0.543290,
		33.363911, 38.266182, 35.450905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071293, 38.996044, 35.147457>,  <32.778629, 38.319218, 35.070602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071293, 38.996044, 35.147457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376808, 38.744122, 35.203976>,  <33.560116, 38.592968, 35.237888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376808, 38.744122, 35.203976>,  <33.071293, 38.996044, 35.147457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376808, 38.744122, 35.203976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602778, 0.617691, -0.505091,
		0.230835, 0.470953, 0.851421,
		0.763789, -0.629811, 0.141295,
		33.605946, 38.555180, 35.246365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697773, 39.409904, 35.476845>,  <33.071293, 38.996044, 35.147457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697773, 39.409904, 35.476845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810150, 39.075809, 35.287766>,  <33.877575, 38.875351, 35.174316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810150, 39.075809, 35.287766>,  <33.697773, 39.409904, 35.476845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810150, 39.075809, 35.287766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531418, 0.545521, -0.648076,
		0.799166, -0.069129, 0.597121,
		0.280941, -0.835241, -0.472699,
		33.894432, 38.825237, 35.145954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498020, 39.464924, 35.498806>,  <33.697773, 39.409904, 35.476845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498020, 39.464924, 35.498806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376392, 39.211494, 35.214233>,  <34.303417, 39.059437, 35.043491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376392, 39.211494, 35.214233>,  <34.498020, 39.464924, 35.498806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376392, 39.211494, 35.214233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537029, 0.502825, -0.677323,
		0.786857, -0.588009, 0.187353,
		-0.304066, -0.633571, -0.711430,
		34.285172, 39.021423, 35.000805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097385, 39.088413, 35.173653>,  <34.498020, 39.464924, 35.498806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097385, 39.088413, 35.173653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793335, 39.060360, 34.915260>,  <34.610905, 39.043530, 34.760223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793335, 39.060360, 34.915260>,  <35.097385, 39.088413, 35.173653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793335, 39.060360, 34.915260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595272, 0.323419, -0.735562,
		0.260512, -0.943653, -0.204089,
		-0.760122, -0.070134, -0.645985,
		34.565300, 39.039322, 34.721466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415005, 38.973293, 34.541916>,  <35.097385, 39.088413, 35.173653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415005, 38.973293, 34.541916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054436, 39.104206, 34.428555>,  <34.838093, 39.182755, 34.360538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054436, 39.104206, 34.428555>,  <35.415005, 38.973293, 34.541916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054436, 39.104206, 34.428555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397105, 0.364297, -0.842375,
		-0.172447, -0.871881, -0.458350,
		-0.901427, 0.327278, -0.283406,
		34.784008, 39.202389, 34.343533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331039, 38.661808, 33.861794>,  <35.415005, 38.973293, 34.541916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331039, 38.661808, 33.861794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085091, 38.977108, 33.871552>,  <34.937519, 39.166286, 33.877407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085091, 38.977108, 33.871552>,  <35.331039, 38.661808, 33.861794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085091, 38.977108, 33.871552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368827, 0.314770, -0.874578,
		-0.697063, -0.528757, -0.484271,
		-0.614873, 0.788248, 0.024395,
		34.900627, 39.213581, 33.878868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368790, 38.845463, 33.239433>,  <35.331039, 38.661808, 33.861794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368790, 38.845463, 33.239433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198864, 39.172913, 33.394039>,  <35.096909, 39.369381, 33.486801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198864, 39.172913, 33.394039>,  <35.368790, 38.845463, 33.239433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198864, 39.172913, 33.394039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359776, 0.544458, -0.757712,
		-0.830718, -0.182830, -0.525814,
		-0.424816, 0.818620, 0.386513,
		35.071419, 39.418499, 33.509995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150391, 39.088650, 32.749016>,  <35.368790, 38.845463, 33.239433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150391, 39.088650, 32.749016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128983, 39.392029, 33.008831>,  <35.116138, 39.574055, 33.164719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128983, 39.392029, 33.008831>,  <35.150391, 39.088650, 32.749016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128983, 39.392029, 33.008831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420397, 0.607128, -0.674286,
		-0.905761, 0.236978, -0.351339,
		-0.053517, 0.758444, 0.649537,
		35.112926, 39.619560, 33.203693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669636, 39.565250, 32.526218>,  <35.150391, 39.088650, 32.749016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669636, 39.565250, 32.526218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928185, 39.777214, 32.745819>,  <35.083313, 39.904392, 32.877579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928185, 39.777214, 32.745819>,  <34.669636, 39.565250, 32.526218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928185, 39.777214, 32.745819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292045, 0.492902, -0.819608,
		-0.704916, 0.690107, 0.163844,
		0.646376, 0.529905, 0.548997,
		35.122097, 39.936184, 32.910519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440018, 40.309692, 32.548992>,  <34.669636, 39.565250, 32.526218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440018, 40.309692, 32.548992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835529, 40.307301, 32.608700>,  <35.072838, 40.305866, 32.644524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835529, 40.307301, 32.608700>,  <34.440018, 40.309692, 32.548992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835529, 40.307301, 32.608700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123545, 0.594492, -0.794554,
		-0.083994, 0.804079, 0.588559,
		0.988778, -0.005976, 0.149274,
		35.132164, 40.305508, 32.653481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657280, 40.936089, 32.472038>,  <34.440018, 40.309692, 32.548992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657280, 40.936089, 32.472038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010292, 40.750351, 32.442287>,  <35.222099, 40.638908, 32.424438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010292, 40.750351, 32.442287>,  <34.657280, 40.936089, 32.472038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010292, 40.750351, 32.442287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263496, 0.619267, -0.739648,
		0.389510, 0.633160, 0.668872,
		0.882526, -0.464345, -0.074376,
		35.275051, 40.611046, 32.419975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165493, 41.413788, 32.475269>,  <34.657280, 40.936089, 32.472038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165493, 41.413788, 32.475269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352711, 41.112659, 32.290142>,  <35.465042, 40.931984, 32.179066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352711, 41.112659, 32.290142>,  <35.165493, 41.413788, 32.475269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352711, 41.112659, 32.290142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501143, 0.657481, -0.562650,
		0.727869, 0.031404, 0.684997,
		0.468042, -0.752816, -0.462822,
		35.493122, 40.886814, 32.151295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854622, 41.696690, 32.229298>,  <35.165493, 41.413788, 32.475269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854622, 41.696690, 32.229298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818108, 41.351574, 32.030399>,  <35.796200, 41.144505, 31.911060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818108, 41.351574, 32.030399>,  <35.854622, 41.696690, 32.229298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818108, 41.351574, 32.030399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505482, 0.390073, -0.769630,
		0.857994, -0.321608, 0.400517,
		-0.091289, -0.862793, -0.497248,
		35.790722, 41.092735, 31.881226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556675, 41.435810, 31.852465>,  <35.854622, 41.696690, 32.229298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556675, 41.435810, 31.852465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254166, 41.263294, 31.655674>,  <36.072662, 41.159782, 31.537600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254166, 41.263294, 31.655674>,  <36.556675, 41.435810, 31.852465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254166, 41.263294, 31.655674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357377, 0.357551, -0.862809,
		0.548031, -0.828338, -0.116271,
		-0.756270, -0.431293, -0.491977,
		36.027283, 41.133907, 31.508081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830856, 41.058521, 31.276833>,  <36.556675, 41.435810, 31.852465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830856, 41.058521, 31.276833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448486, 41.134457, 31.187239>,  <36.219063, 41.180019, 31.133482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448486, 41.134457, 31.187239>,  <36.830856, 41.058521, 31.276833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448486, 41.134457, 31.187239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255198, 0.159944, -0.953568,
		-0.145203, -0.968699, -0.201341,
		-0.955924, 0.189843, -0.223986,
		36.161709, 41.191410, 31.120043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667366, 40.691536, 30.711109>,  <36.830856, 41.058521, 31.276833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667366, 40.691536, 30.711109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389526, 40.979172, 30.719481>,  <36.222824, 41.151752, 30.724503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389526, 40.979172, 30.719481>,  <36.667366, 40.691536, 30.711109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389526, 40.979172, 30.719481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048957, -0.018228, -0.998635,
		-0.717729, -0.694676, 0.047866,
		-0.694600, 0.719092, 0.020927,
		36.181145, 41.194901, 30.725758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362713, 40.629189, 30.111809>,  <36.667366, 40.691536, 30.711109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362713, 40.629189, 30.111809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201218, 40.982159, 30.208406>,  <36.104321, 41.193943, 30.266365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201218, 40.982159, 30.208406>,  <36.362713, 40.629189, 30.111809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201218, 40.982159, 30.208406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224515, 0.160325, -0.961191,
		-0.886898, -0.442288, 0.133389,
		-0.403738, 0.882427, 0.241492,
		36.080097, 41.246887, 30.280853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751511, 40.690708, 29.752083>,  <36.362713, 40.629189, 30.111809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751511, 40.690708, 29.752083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878937, 41.059631, 29.839594>,  <35.955391, 41.280987, 29.892101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878937, 41.059631, 29.839594>,  <35.751511, 40.690708, 29.752083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878937, 41.059631, 29.839594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068441, 0.252582, -0.965152,
		-0.945428, 0.292488, 0.143586,
		0.318562, 0.922309, 0.218780,
		35.974506, 41.336323, 29.905228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316719, 41.067760, 29.436184>,  <35.751511, 40.690708, 29.752083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316719, 41.067760, 29.436184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625004, 41.311432, 29.510914>,  <35.809975, 41.457634, 29.555752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625004, 41.311432, 29.510914>,  <35.316719, 41.067760, 29.436184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625004, 41.311432, 29.510914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008732, 0.303274, -0.952863,
		-0.637119, 0.732756, 0.239057,
		0.770716, 0.609174, 0.186823,
		35.856220, 41.494183, 29.566961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091682, 41.562317, 29.054874>,  <35.316719, 41.067760, 29.436184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091682, 41.562317, 29.054874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482582, 41.591812, 29.134417>,  <35.717121, 41.609509, 29.182142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482582, 41.591812, 29.134417>,  <35.091682, 41.562317, 29.054874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482582, 41.591812, 29.134417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185121, 0.160955, -0.969445,
		-0.103488, 0.984204, 0.143643,
		0.977251, 0.073735, 0.198854,
		35.775757, 41.613934, 29.194073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336437, 42.283371, 28.890421>,  <35.091682, 41.562317, 29.054874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336437, 42.283371, 28.890421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659195, 42.049953, 28.853748>,  <35.852848, 41.909904, 28.831745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659195, 42.049953, 28.853748>,  <35.336437, 42.283371, 28.890421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659195, 42.049953, 28.853748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121772, 0.316200, -0.940845,
		0.578014, 0.747994, 0.326198,
		0.806890, -0.583543, -0.091683,
		35.901260, 41.874889, 28.826242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776924, 42.705536, 28.481087>,  <35.336437, 42.283371, 28.890421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776924, 42.705536, 28.481087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936146, 42.338848, 28.467360>,  <36.031677, 42.118835, 28.459124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936146, 42.338848, 28.467360>,  <35.776924, 42.705536, 28.481087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936146, 42.338848, 28.467360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235544, 0.138290, -0.961975,
		0.886607, 0.374835, 0.270975,
		0.398055, -0.916719, -0.034318,
		36.055561, 42.063831, 28.457064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495823, 42.795383, 28.195000>,  <35.776924, 42.705536, 28.481087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495823, 42.795383, 28.195000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417809, 42.405861, 28.148258>,  <36.370998, 42.172146, 28.120213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417809, 42.405861, 28.148258>,  <36.495823, 42.795383, 28.195000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417809, 42.405861, 28.148258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376264, 0.035738, -0.925823,
		0.905752, -0.224536, 0.359440,
		-0.195034, -0.973810, -0.116855,
		36.359299, 42.113716, 28.113201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081394, 42.525818, 27.879913>,  <36.495823, 42.795383, 28.195000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081394, 42.525818, 27.879913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782505, 42.269848, 27.808186>,  <36.603172, 42.116268, 27.765148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782505, 42.269848, 27.808186>,  <37.081394, 42.525818, 27.879913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782505, 42.269848, 27.808186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324280, -0.115559, -0.938876,
		0.580086, -0.759700, 0.293863,
		-0.747223, -0.639923, -0.179322,
		36.558338, 42.077869, 27.754389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329872, 42.282696, 27.392576>,  <37.081394, 42.525818, 27.879913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329872, 42.282696, 27.392576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990326, 42.072216, 27.372427>,  <36.786598, 41.945927, 27.360338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990326, 42.072216, 27.372427>,  <37.329872, 42.282696, 27.392576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990326, 42.072216, 27.372427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145654, -0.141234, -0.979203,
		0.508146, -0.838548, 0.196532,
		-0.848866, -0.526203, -0.050371,
		36.735664, 41.914356, 27.357315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488266, 41.586212, 27.222502>,  <37.329872, 42.282696, 27.392576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488266, 41.586212, 27.222502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133293, 41.716908, 27.092449>,  <36.920311, 41.795326, 27.014418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133293, 41.716908, 27.092449>,  <37.488266, 41.586212, 27.222502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133293, 41.716908, 27.092449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337148, -0.020887, -0.941220,
		-0.314324, -0.944884, -0.091624,
		-0.887429, 0.326739, -0.325131,
		36.867065, 41.814930, 26.994909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168911, 41.075043, 26.867544>,  <37.488266, 41.586212, 27.222502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168911, 41.075043, 26.867544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043365, 41.434208, 26.744104>,  <36.968037, 41.649708, 26.670040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043365, 41.434208, 26.744104>,  <37.168911, 41.075043, 26.867544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043365, 41.434208, 26.744104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495297, -0.122455, -0.860050,
		-0.810042, -0.422789, -0.406301,
		-0.313866, 0.897916, -0.308600,
		36.949207, 41.703583, 26.651524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242077, 40.964069, 26.243376>,  <37.168911, 41.075043, 26.867544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242077, 40.964069, 26.243376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194298, 41.359592, 26.279127>,  <37.165630, 41.596905, 26.300577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194298, 41.359592, 26.279127>,  <37.242077, 40.964069, 26.243376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194298, 41.359592, 26.279127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467320, 0.135422, -0.873655,
		-0.875981, -0.062591, -0.478266,
		-0.119451, 0.988809, 0.089378,
		37.158463, 41.656235, 26.305941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899353, 41.201385, 25.584808>,  <37.242077, 40.964069, 26.243376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899353, 41.201385, 25.584808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072430, 41.524689, 25.744558>,  <37.176277, 41.718670, 25.840408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072430, 41.524689, 25.744558>,  <36.899353, 41.201385, 25.584808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072430, 41.524689, 25.744558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554333, 0.110834, -0.824882,
		-0.710979, 0.578309, -0.400085,
		0.432693, 0.808254, 0.399376,
		37.202236, 41.767166, 25.864370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896667, 41.672783, 25.041145>,  <36.899353, 41.201385, 25.584808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896667, 41.672783, 25.041145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172272, 41.784393, 25.308701>,  <37.337635, 41.851360, 25.469234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172272, 41.784393, 25.308701>,  <36.896667, 41.672783, 25.041145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172272, 41.784393, 25.308701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629063, 0.228096, -0.743137,
		-0.359922, 0.932802, -0.018362,
		0.689011, 0.279022, 0.668887,
		37.378975, 41.868099, 25.509367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048859, 42.334564, 24.878874>,  <36.896667, 41.672783, 25.041145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048859, 42.334564, 24.878874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360794, 42.194366, 25.086338>,  <37.547955, 42.110249, 25.210815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360794, 42.194366, 25.086338>,  <37.048859, 42.334564, 24.878874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360794, 42.194366, 25.086338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604828, 0.208320, -0.768625,
		0.161348, 0.913104, 0.374443,
		0.779839, -0.350490, 0.518659,
		37.594746, 42.089218, 25.241936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491524, 42.888271, 24.914951>,  <37.048859, 42.334564, 24.878874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491524, 42.888271, 24.914951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700745, 42.550896, 24.963976>,  <37.826275, 42.348469, 24.993391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700745, 42.550896, 24.963976>,  <37.491524, 42.888271, 24.914951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700745, 42.550896, 24.963976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531611, 0.210453, -0.820426,
		0.666189, 0.494280, 0.558461,
		0.523050, -0.843443, 0.122563,
		37.857658, 42.297863, 25.000746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132843, 43.134331, 24.855026>,  <37.491524, 42.888271, 24.914951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132843, 43.134331, 24.855026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146832, 42.742851, 24.774105>,  <38.155224, 42.507965, 24.725552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146832, 42.742851, 24.774105>,  <38.132843, 43.134331, 24.855026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146832, 42.742851, 24.774105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469259, 0.194804, -0.861306,
		0.882368, -0.064815, 0.466075,
		0.034968, -0.978698, -0.202304,
		38.157322, 42.449242, 24.713413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890095, 42.972183, 24.590715>,  <38.132843, 43.134331, 24.855026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890095, 42.972183, 24.590715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678047, 42.650589, 24.482950>,  <38.550819, 42.457634, 24.418291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678047, 42.650589, 24.482950>,  <38.890095, 42.972183, 24.590715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678047, 42.650589, 24.482950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484012, -0.026042, -0.874674,
		0.696208, -0.594080, 0.402943,
		-0.530120, -0.803984, -0.269411,
		38.519012, 42.409393, 24.402126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424049, 42.493862, 24.246790>,  <38.890095, 42.972183, 24.590715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424049, 42.493862, 24.246790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072227, 42.340893, 24.133549>,  <38.861134, 42.249111, 24.065605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072227, 42.340893, 24.133549>,  <39.424049, 42.493862, 24.246790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072227, 42.340893, 24.133549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267785, 0.093959, -0.958886,
		0.393297, -0.919199, 0.019765,
		-0.879550, -0.382420, -0.283101,
		38.808361, 42.226166, 24.048618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495178, 41.962479, 23.698132>,  <39.424049, 42.493862, 24.246790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495178, 41.962479, 23.698132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114765, 42.082687, 23.669203>,  <38.886517, 42.154812, 23.651846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114765, 42.082687, 23.669203>,  <39.495178, 41.962479, 23.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114765, 42.082687, 23.669203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068518, -0.023198, -0.997380,
		-0.301415, -0.953492, 0.001471,
		-0.951028, 0.300524, -0.072323,
		38.829456, 42.172844, 23.647507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422356, 41.579113, 23.194588>,  <39.495178, 41.962479, 23.698132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422356, 41.579113, 23.194588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137329, 41.859688, 23.188421>,  <38.966312, 42.028030, 23.184721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137329, 41.859688, 23.188421>,  <39.422356, 41.579113, 23.194588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137329, 41.859688, 23.188421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007419, -0.014435, -0.999868,
		-0.701563, -0.712589, 0.005082,
		-0.712569, 0.701433, -0.015414,
		38.923557, 42.070118, 23.183798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004997, 41.628708, 22.721045>,  <39.422356, 41.579113, 23.194588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004997, 41.628708, 22.721045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387661, 41.513897, 22.740681>,  <40.617260, 41.445011, 22.752462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387661, 41.513897, 22.740681>,  <40.004997, 41.628708, 22.721045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387661, 41.513897, 22.740681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091100, -0.134888, 0.986664,
		-0.276582, -0.948377, -0.155191,
		0.956662, -0.287031, 0.049089,
		40.674660, 41.427788, 22.755407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002460, 40.992992, 23.017006>,  <40.004997, 41.628708, 22.721045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002460, 40.992992, 23.017006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377365, 41.119209, 23.076307>,  <40.602306, 41.194939, 23.111887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377365, 41.119209, 23.076307>,  <40.002460, 40.992992, 23.017006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377365, 41.119209, 23.076307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060614, -0.271272, 0.960592,
		0.343329, -0.909308, -0.235125,
		0.937257, 0.315547, 0.148252,
		40.658543, 41.213875, 23.120783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315228, 40.481350, 23.358717>,  <40.002460, 40.992992, 23.017006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315228, 40.481350, 23.358717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532806, 40.805649, 23.445261>,  <40.663353, 41.000229, 23.497189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532806, 40.805649, 23.445261>,  <40.315228, 40.481350, 23.358717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532806, 40.805649, 23.445261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078749, -0.207383, 0.975085,
		0.835415, -0.547434, -0.048960,
		0.543948, 0.810745, 0.216361,
		40.695992, 41.048874, 23.510170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842121, 40.257500, 23.703320>,  <40.315228, 40.481350, 23.358717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842121, 40.257500, 23.703320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838142, 40.648144, 23.789227>,  <40.835754, 40.882530, 23.840771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838142, 40.648144, 23.789227>,  <40.842121, 40.257500, 23.703320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838142, 40.648144, 23.789227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147487, -0.213861, 0.965666,
		0.989014, -0.022066, 0.146166,
		-0.009951, 0.976615, 0.214766,
		40.835155, 40.941128, 23.853657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096878, 40.292294, 24.309906>,  <40.842121, 40.257500, 23.703320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096878, 40.292294, 24.309906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946175, 40.662785, 24.304934>,  <40.855751, 40.885078, 24.301950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946175, 40.662785, 24.304934>,  <41.096878, 40.292294, 24.309906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946175, 40.662785, 24.304934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110375, -0.031567, 0.993389,
		0.919711, 0.375643, 0.114125,
		-0.376762, 0.926227, -0.012429,
		40.833145, 40.940651, 24.301205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394115, 40.732868, 24.869001>,  <41.096878, 40.292294, 24.309906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394115, 40.732868, 24.869001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030422, 40.867771, 24.771379>,  <40.812206, 40.948711, 24.712807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030422, 40.867771, 24.771379>,  <41.394115, 40.732868, 24.869001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030422, 40.867771, 24.771379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234680, 0.068975, 0.969623,
		0.343842, 0.938884, 0.016432,
		-0.909229, 0.337253, -0.244054,
		40.757652, 40.968948, 24.698164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288322, 41.285751, 25.342175>,  <41.394115, 40.732868, 24.869001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288322, 41.285751, 25.342175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921101, 41.181038, 25.223083>,  <40.700768, 41.118210, 25.151628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921101, 41.181038, 25.223083>,  <41.288322, 41.285751, 25.342175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921101, 41.181038, 25.223083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357618, 0.222691, 0.906928,
		-0.171113, 0.939085, -0.298060,
		-0.918057, -0.261779, -0.297729,
		40.645683, 41.102505, 25.133764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872555, 41.802952, 25.633875>,  <41.288322, 41.285751, 25.342175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872555, 41.802952, 25.633875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610550, 41.521683, 25.523237>,  <40.453346, 41.352921, 25.456856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610550, 41.521683, 25.523237>,  <40.872555, 41.802952, 25.633875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610550, 41.521683, 25.523237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415006, 0.028887, 0.909360,
		-0.631450, 0.710429, -0.310743,
		-0.655012, -0.703176, -0.276592,
		40.414047, 41.310730, 25.440260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166981, 42.088219, 25.856014>,  <40.872555, 41.802952, 25.633875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166981, 42.088219, 25.856014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183064, 41.690414, 25.817356>,  <40.192715, 41.451733, 25.794161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183064, 41.690414, 25.817356>,  <40.166981, 42.088219, 25.856014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183064, 41.690414, 25.817356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368171, -0.104666, 0.923848,
		-0.928888, -0.001564, -0.370357,
		0.040208, -0.994506, -0.096647,
		40.195126, 41.392063, 25.788363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585255, 41.952431, 26.277670>,  <40.166981, 42.088219, 25.856014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585255, 41.952431, 26.277670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790432, 41.610317, 26.248325>,  <39.913540, 41.405048, 26.230719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790432, 41.610317, 26.248325>,  <39.585255, 41.952431, 26.277670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790432, 41.610317, 26.248325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258845, -0.235590, 0.936748,
		-0.818465, -0.461513, -0.342230,
		0.512948, -0.855279, -0.073361,
		39.944317, 41.353733, 26.226316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091602, 41.452492, 26.393965>,  <39.585255, 41.952431, 26.277670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091602, 41.452492, 26.393965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438385, 41.268532, 26.470772>,  <39.646454, 41.158157, 26.516857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438385, 41.268532, 26.470772>,  <39.091602, 41.452492, 26.393965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438385, 41.268532, 26.470772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359863, -0.311127, 0.879601,
		-0.344796, -0.831675, -0.435238,
		0.866957, -0.459909, 0.192014,
		39.698475, 41.130562, 26.528378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938396, 40.796329, 26.536667>,  <39.091602, 41.452492, 26.393965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938396, 40.796329, 26.536667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308002, 40.823624, 26.687151>,  <39.529766, 40.840000, 26.777441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308002, 40.823624, 26.687151>,  <38.938396, 40.796329, 26.536667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308002, 40.823624, 26.687151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263097, -0.600478, 0.755120,
		0.277434, -0.796724, -0.536899,
		0.924019, 0.068240, 0.376209,
		39.585209, 40.844097, 26.800014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151669, 40.123703, 26.588118>,  <38.938396, 40.796329, 26.536667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151669, 40.123703, 26.588118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309784, 40.372749, 26.858259>,  <39.404652, 40.522175, 27.020344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309784, 40.372749, 26.858259>,  <39.151669, 40.123703, 26.588118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309784, 40.372749, 26.858259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325612, -0.592511, 0.736822,
		0.858909, -0.511159, -0.031481,
		0.395286, 0.622613, 0.675353,
		39.428371, 40.559532, 27.060865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512215, 39.668530, 27.056847>,  <39.151669, 40.123703, 26.588118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512215, 39.668530, 27.056847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460793, 40.006500, 27.264530>,  <39.429939, 40.209282, 27.389139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460793, 40.006500, 27.264530>,  <39.512215, 39.668530, 27.056847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460793, 40.006500, 27.264530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165956, -0.534498, 0.828716,
		0.977718, 0.020368, 0.208932,
		-0.128553, 0.844924, 0.519208,
		39.422226, 40.259979, 27.420292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809547, 39.530300, 27.652931>,  <39.512215, 39.668530, 27.056847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809547, 39.530300, 27.652931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555847, 39.826427, 27.742065>,  <39.403625, 40.004105, 27.795546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555847, 39.826427, 27.742065>,  <39.809547, 39.530300, 27.652931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555847, 39.826427, 27.742065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315380, -0.510907, 0.799694,
		0.705874, 0.436930, 0.557525,
		-0.634254, 0.740315, 0.222837,
		39.365570, 40.048523, 27.808916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890377, 39.662682, 28.345158>,  <39.809547, 39.530300, 27.652931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890377, 39.662682, 28.345158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531002, 39.823719, 28.275049>,  <39.315376, 39.920341, 28.232985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531002, 39.823719, 28.275049>,  <39.890377, 39.662682, 28.345158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531002, 39.823719, 28.275049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304428, -0.283467, 0.909379,
		0.316429, 0.870381, 0.377240,
		-0.898441, 0.402596, -0.175271,
		39.261471, 39.944496, 28.222467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669270, 39.969555, 28.971302>,  <39.890377, 39.662682, 28.345158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669270, 39.969555, 28.971302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328808, 39.959965, 28.761553>,  <39.124531, 39.954212, 28.635702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328808, 39.959965, 28.761553>,  <39.669270, 39.969555, 28.971302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328808, 39.959965, 28.761553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504087, -0.241324, 0.829252,
		-0.146422, 0.970148, 0.193320,
		-0.851151, -0.023971, -0.524374,
		39.073463, 39.952774, 28.604240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192696, 40.523331, 29.342093>,  <39.669270, 39.969555, 28.971302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192696, 40.523331, 29.342093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981857, 40.253307, 29.135609>,  <38.855354, 40.091293, 29.011719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981857, 40.253307, 29.135609>,  <39.192696, 40.523331, 29.342093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981857, 40.253307, 29.135609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620959, -0.108748, 0.776263,
		-0.580157, 0.729709, -0.361862,
		-0.527094, -0.675055, -0.516210,
		38.823730, 40.050793, 28.980745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466461, 40.630905, 29.552973>,  <39.192696, 40.523331, 29.342093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466461, 40.630905, 29.552973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505173, 40.258743, 29.411562>,  <38.528400, 40.035446, 29.326715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505173, 40.258743, 29.411562>,  <38.466461, 40.630905, 29.552973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505173, 40.258743, 29.411562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726232, -0.308896, 0.614143,
		-0.680604, 0.197308, -0.705583,
		0.096776, -0.930405, -0.353527,
		38.534206, 39.979622, 29.305504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758118, 40.324627, 29.584188>,  <38.466461, 40.630905, 29.552973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758118, 40.324627, 29.584188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010082, 40.015110, 29.557482>,  <38.161263, 39.829399, 29.541458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010082, 40.015110, 29.557482>,  <37.758118, 40.324627, 29.584188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010082, 40.015110, 29.557482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492916, -0.464737, 0.735563,
		-0.600201, -0.430430, -0.674158,
		0.629915, -0.773789, -0.066770,
		38.199059, 39.782974, 29.537451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272781, 39.810928, 29.452028>,  <37.758118, 40.324627, 29.584188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272781, 39.810928, 29.452028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612526, 39.662025, 29.601698>,  <37.816372, 39.572685, 29.691500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612526, 39.662025, 29.601698>,  <37.272781, 39.810928, 29.452028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612526, 39.662025, 29.601698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526243, -0.542764, 0.654581,
		-0.040584, -0.752884, -0.656901,
		0.849365, -0.372255, 0.374172,
		37.867336, 39.550350, 29.713949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115368, 39.179199, 29.811754>,  <37.272781, 39.810928, 29.452028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115368, 39.179199, 29.811754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485111, 39.238506, 29.952368>,  <37.706959, 39.274090, 30.036736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485111, 39.238506, 29.952368>,  <37.115368, 39.179199, 29.811754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485111, 39.238506, 29.952368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270712, -0.394362, 0.878176,
		0.268841, -0.906915, -0.324392,
		0.924359, 0.148273, 0.351534,
		37.762421, 39.282990, 30.057827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284630, 38.619690, 30.191013>,  <37.115368, 39.179199, 29.811754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284630, 38.619690, 30.191013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545322, 38.889992, 30.328770>,  <37.701740, 39.052174, 30.411423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545322, 38.889992, 30.328770>,  <37.284630, 38.619690, 30.191013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545322, 38.889992, 30.328770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324304, -0.162178, 0.931947,
		0.685616, -0.719069, 0.113451,
		0.651735, 0.675750, 0.344389,
		37.740845, 39.092716, 30.432087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733673, 38.282967, 30.645161>,  <37.284630, 38.619690, 30.191013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733673, 38.282967, 30.645161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762753, 38.667217, 30.752426>,  <37.780201, 38.897766, 30.816786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762753, 38.667217, 30.752426>,  <37.733673, 38.282967, 30.645161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762753, 38.667217, 30.752426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296953, -0.235835, 0.925311,
		0.952121, -0.146898, 0.268117,
		0.072694, 0.960626, 0.268165,
		37.784561, 38.955406, 30.832876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073528, 38.221737, 31.186934>,  <37.733673, 38.282967, 30.645161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073528, 38.221737, 31.186934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921177, 38.585976, 31.251120>,  <37.829765, 38.804520, 31.289631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921177, 38.585976, 31.251120>,  <38.073528, 38.221737, 31.186934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921177, 38.585976, 31.251120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084945, -0.207275, 0.974588,
		0.920715, 0.357568, 0.156297,
		-0.380878, 0.910595, 0.160467,
		37.806915, 38.859154, 31.299259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449467, 38.597740, 31.622627>,  <38.073528, 38.221737, 31.186934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449467, 38.597740, 31.622627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103943, 38.797527, 31.649050>,  <37.896629, 38.917400, 31.664904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103943, 38.797527, 31.649050>,  <38.449467, 38.597740, 31.622627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103943, 38.797527, 31.649050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012248, -0.151888, 0.988322,
		0.503671, 0.852912, 0.137319,
		-0.863809, 0.499471, 0.066055,
		37.844799, 38.947369, 31.668867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555973, 39.062336, 32.122772>,  <38.449467, 38.597740, 31.622627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555973, 39.062336, 32.122772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156406, 39.061691, 32.104164>,  <37.916668, 39.061302, 32.092999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156406, 39.061691, 32.104164>,  <38.555973, 39.062336, 32.122772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156406, 39.061691, 32.104164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046238, -0.081183, 0.995626,
		-0.005384, 0.996698, 0.081020,
		-0.998916, -0.001614, -0.046522,
		37.856731, 39.061207, 32.090206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394226, 39.585869, 32.630096>,  <38.555973, 39.062336, 32.122772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394226, 39.585869, 32.630096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056393, 39.376011, 32.587334>,  <37.853695, 39.250095, 32.561676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056393, 39.376011, 32.587334>,  <38.394226, 39.585869, 32.630096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056393, 39.376011, 32.587334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083674, -0.067880, 0.994179,
		-0.528849, 0.848610, 0.013431,
		-0.844581, -0.524646, -0.106905,
		37.803017, 39.218616, 32.555264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831879, 39.959930, 32.891869>,  <38.394226, 39.585869, 32.630096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831879, 39.959930, 32.891869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699955, 39.582355, 32.897675>,  <37.620800, 39.355812, 32.901157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699955, 39.582355, 32.897675>,  <37.831879, 39.959930, 32.891869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699955, 39.582355, 32.897675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107090, 0.052686, 0.992852,
		-0.937952, 0.325902, -0.118463,
		-0.329814, -0.943934, 0.014516,
		37.601009, 39.299175, 32.902031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262333, 39.929401, 33.302540>,  <37.831879, 39.959930, 32.891869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262333, 39.929401, 33.302540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431866, 39.567249, 33.292324>,  <37.533585, 39.349957, 33.286194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431866, 39.567249, 33.292324>,  <37.262333, 39.929401, 33.302540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431866, 39.567249, 33.292324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007885, -0.031886, 0.999460,
		-0.905705, -0.423404, -0.020653,
		0.423835, -0.905379, -0.025541,
		37.559017, 39.295635, 33.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863979, 39.519451, 33.899426>,  <37.262333, 39.929401, 33.302540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863979, 39.519451, 33.899426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168495, 39.290073, 33.778358>,  <37.351204, 39.152447, 33.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168495, 39.290073, 33.778358>,  <36.863979, 39.519451, 33.899426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168495, 39.290073, 33.778358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234337, -0.191908, 0.953026,
		-0.604591, -0.796450, -0.011718,
		0.761286, -0.573445, -0.302664,
		37.396881, 39.118042, 33.687561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803726, 38.859844, 34.288147>,  <36.863979, 39.519451, 33.899426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803726, 38.859844, 34.288147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187931, 38.867542, 34.177120>,  <37.418453, 38.872162, 34.110504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187931, 38.867542, 34.177120>,  <36.803726, 38.859844, 34.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187931, 38.867542, 34.177120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271512, -0.282835, 0.919938,
		-0.060798, -0.958975, -0.276893,
		0.960513, 0.019250, -0.277569,
		37.476086, 38.873318, 34.093849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082470, 38.212387, 34.383732>,  <36.803726, 38.859844, 34.288147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082470, 38.212387, 34.383732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422581, 38.422318, 34.399651>,  <37.626648, 38.548275, 34.409203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422581, 38.422318, 34.399651>,  <37.082470, 38.212387, 34.383732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422581, 38.422318, 34.399651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221751, -0.425778, 0.877234,
		0.477342, -0.737067, -0.478410,
		0.850277, 0.524828, 0.039796,
		37.677666, 38.579765, 34.411591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636017, 37.738110, 34.686954>,  <37.082470, 38.212387, 34.383732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636017, 37.738110, 34.686954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777576, 38.110287, 34.724976>,  <37.862514, 38.333591, 34.747787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777576, 38.110287, 34.724976>,  <37.636017, 37.738110, 34.686954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777576, 38.110287, 34.724976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403953, -0.243719, 0.881716,
		0.843550, -0.273645, -0.462107,
		0.353901, 0.930441, 0.095049,
		37.883747, 38.389420, 34.753490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243664, 37.552280, 34.851524>,  <37.636017, 37.738110, 34.686954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243664, 37.552280, 34.851524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209606, 37.935070, 34.962479>,  <38.189171, 38.164745, 35.029053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209606, 37.935070, 34.962479>,  <38.243664, 37.552280, 34.851524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209606, 37.935070, 34.962479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324029, -0.236671, 0.915965,
		0.942208, 0.167875, -0.289936,
		-0.085148, 0.956977, 0.277389,
		38.184063, 38.222164, 35.045696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943092, 37.719444, 35.043652>,  <38.243664, 37.552280, 34.851524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943092, 37.719444, 35.043652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688080, 37.966110, 35.228378>,  <38.535072, 38.114109, 35.339214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688080, 37.966110, 35.228378>,  <38.943092, 37.719444, 35.043652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688080, 37.966110, 35.228378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413529, -0.231864, 0.880473,
		0.650040, 0.752302, -0.107191,
		-0.637528, 0.616669, 0.461820,
		38.496822, 38.151112, 35.366924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331512, 38.031860, 35.518669>,  <38.943092, 37.719444, 35.043652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331512, 38.031860, 35.518669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959053, 38.087406, 35.653534>,  <38.735577, 38.120735, 35.734455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959053, 38.087406, 35.653534>,  <39.331512, 38.031860, 35.518669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959053, 38.087406, 35.653534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294886, -0.257130, 0.920286,
		0.214489, 0.956348, 0.198477,
		-0.931148, 0.138863, 0.337165,
		38.679710, 38.129066, 35.754684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369083, 38.417645, 36.163727>,  <39.331512, 38.031860, 35.518669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369083, 38.417645, 36.163727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003700, 38.256088, 36.183571>,  <38.784470, 38.159153, 36.195477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003700, 38.256088, 36.183571>,  <39.369083, 38.417645, 36.163727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003700, 38.256088, 36.183571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232798, -0.418689, 0.877784,
		-0.333762, 0.813369, 0.476481,
		-0.913459, -0.403895, 0.049608,
		38.729664, 38.134918, 36.198452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089249, 38.576740, 36.811001>,  <39.369083, 38.417645, 36.163727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089249, 38.576740, 36.811001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908741, 38.247078, 36.674107>,  <38.800438, 38.049282, 36.591969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908741, 38.247078, 36.674107>,  <39.089249, 38.576740, 36.811001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908741, 38.247078, 36.674107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279161, -0.494635, 0.823046,
		-0.847601, 0.275874, 0.453284,
		-0.451267, -0.824154, -0.342240,
		38.773361, 37.999832, 36.571434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713375, 38.282406, 37.428059>,  <39.089249, 38.576740, 36.811001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713375, 38.282406, 37.428059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752483, 37.978031, 37.171490>,  <38.775948, 37.795406, 37.017548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752483, 37.978031, 37.171490>,  <38.713375, 38.282406, 37.428059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752483, 37.978031, 37.171490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278308, -0.597888, 0.751715,
		-0.955503, -0.252006, 0.153319,
		0.097769, -0.760936, -0.641419,
		38.781815, 37.749752, 36.979065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335663, 37.760468, 37.715462>,  <38.713375, 38.282406, 37.428059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335663, 37.760468, 37.715462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629776, 37.620987, 37.482990>,  <38.806244, 37.537300, 37.343506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629776, 37.620987, 37.482990>,  <38.335663, 37.760468, 37.715462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629776, 37.620987, 37.482990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283730, -0.620378, 0.731183,
		-0.615487, -0.702536, -0.357237,
		0.735305, -0.348675, -0.581165,
		38.850361, 37.516376, 37.308636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271481, 37.090065, 37.707291>,  <38.335663, 37.760468, 37.715462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271481, 37.090065, 37.707291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658585, 37.094784, 37.606655>,  <38.890846, 37.097614, 37.546272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658585, 37.094784, 37.606655>,  <38.271481, 37.090065, 37.707291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658585, 37.094784, 37.606655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201785, -0.634122, 0.746439,
		-0.150731, -0.773143, -0.616060,
		0.967762, 0.011800, -0.251591,
		38.948914, 37.098324, 37.531178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405533, 36.374855, 37.821789>,  <38.271481, 37.090065, 37.707291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405533, 36.374855, 37.821789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754894, 36.568703, 37.802570>,  <38.964512, 36.685013, 37.791039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754894, 36.568703, 37.802570>,  <38.405533, 36.374855, 37.821789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754894, 36.568703, 37.802570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430231, -0.721613, 0.542380,
		0.228178, -0.494388, -0.838759,
		0.873405, 0.484619, -0.048045,
		39.016914, 36.714088, 37.788158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840477, 35.919113, 37.500549>,  <38.405533, 36.374855, 37.821789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840477, 35.919113, 37.500549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062813, 36.156693, 37.733192>,  <39.196213, 36.299240, 37.872776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062813, 36.156693, 37.733192>,  <38.840477, 35.919113, 37.500549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062813, 36.156693, 37.733192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333381, -0.800184, 0.498561,
		0.761512, -0.083223, -0.642785,
		0.555838, 0.593953, 0.581605,
		39.229565, 36.334877, 37.907673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494484, 35.566990, 37.627464>,  <38.840477, 35.919113, 37.500549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494484, 35.566990, 37.627464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512783, 35.852711, 37.906799>,  <39.523762, 36.024143, 38.074402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512783, 35.852711, 37.906799>,  <39.494484, 35.566990, 37.627464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512783, 35.852711, 37.906799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326650, -0.671338, 0.665286,
		0.944038, 0.197680, -0.264037,
		0.045744, 0.714302, 0.698340,
		39.526505, 36.067001, 38.116302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207199, 35.603016, 37.849110>,  <39.494484, 35.566990, 37.627464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207199, 35.603016, 37.849110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962158, 35.749966, 38.129040>,  <39.815132, 35.838135, 38.296997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962158, 35.749966, 38.129040>,  <40.207199, 35.603016, 37.849110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962158, 35.749966, 38.129040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382209, -0.637315, 0.669138,
		0.691833, 0.677394, 0.250007,
		-0.612604, 0.367377, 0.699822,
		39.778378, 35.860180, 38.338985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615036, 35.564137, 38.405617>,  <40.207199, 35.603016, 37.849110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615036, 35.564137, 38.405617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238369, 35.584255, 38.538723>,  <40.012367, 35.596325, 38.618587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238369, 35.584255, 38.538723>,  <40.615036, 35.564137, 38.405617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238369, 35.584255, 38.538723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173862, -0.773911, 0.608961,
		0.288159, 0.631294, 0.720022,
		-0.941667, 0.050293, 0.332768,
		39.955868, 35.599342, 38.638554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639614, 35.300671, 39.038006>,  <40.615036, 35.564137, 38.405617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639614, 35.300671, 39.038006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245010, 35.286030, 38.974190>,  <40.008247, 35.277245, 38.935898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245010, 35.286030, 38.974190>,  <40.639614, 35.300671, 39.038006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245010, 35.286030, 38.974190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031792, -0.913274, 0.406104,
		-0.160571, 0.405699, 0.899792,
		-0.986512, -0.036602, -0.159543,
		39.949059, 35.275051, 38.926327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381649, 35.288212, 39.680805>,  <40.639614, 35.300671, 39.038006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381649, 35.288212, 39.680805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143845, 35.074638, 39.440319>,  <40.001160, 34.946495, 39.296028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143845, 35.074638, 39.440319>,  <40.381649, 35.288212, 39.680805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143845, 35.074638, 39.440319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171051, -0.814572, 0.554269,
		-0.785681, 0.226683, 0.575605,
		-0.594515, -0.533936, -0.601219,
		39.965488, 34.914459, 39.259953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978809, 34.960953, 40.187950>,  <40.381649, 35.288212, 39.680805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978809, 34.960953, 40.187950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972984, 34.759907, 39.842197>,  <39.969490, 34.639278, 39.634747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972984, 34.759907, 39.842197>,  <39.978809, 34.960953, 40.187950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972984, 34.759907, 39.842197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209729, -0.846783, 0.488849,
		-0.977651, -0.174170, 0.117742,
		-0.014559, -0.502618, -0.864386,
		39.968616, 34.609123, 39.582882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625027, 34.382782, 40.330898>,  <39.978809, 34.960953, 40.187950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625027, 34.382782, 40.330898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867466, 34.307148, 40.021866>,  <40.012932, 34.261768, 39.836445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867466, 34.307148, 40.021866>,  <39.625027, 34.382782, 40.330898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867466, 34.307148, 40.021866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225974, -0.890370, 0.395193,
		-0.762612, -0.414111, -0.496925,
		0.606101, -0.189087, -0.772585,
		40.049297, 34.250423, 39.790089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492462, 33.663486, 40.302399>,  <39.625027, 34.382782, 40.330898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492462, 33.663486, 40.302399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794479, 33.744156, 40.052845>,  <39.975689, 33.792557, 39.903114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794479, 33.744156, 40.052845>,  <39.492462, 33.663486, 40.302399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794479, 33.744156, 40.052845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278086, -0.960200, 0.026161,
		-0.593778, -0.193246, -0.781078,
		0.755047, 0.201673, -0.623885,
		40.020992, 33.804657, 39.865681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645412, 33.075722, 40.057354>,  <39.492462, 33.663486, 40.302399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645412, 33.075722, 40.057354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967316, 33.284527, 39.944309>,  <40.160458, 33.409809, 39.876484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967316, 33.284527, 39.944309>,  <39.645412, 33.075722, 40.057354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967316, 33.284527, 39.944309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502456, -0.852535, -0.143954,
		-0.316083, -0.026152, -0.948371,
		0.804754, 0.522016, -0.282612,
		40.208740, 33.441132, 39.859524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866379, 32.978218, 39.302620>,  <39.645412, 33.075722, 40.057354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866379, 32.978218, 39.302620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196888, 33.056000, 39.514080>,  <40.395191, 33.102669, 39.640957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196888, 33.056000, 39.514080>,  <39.866379, 32.978218, 39.302620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196888, 33.056000, 39.514080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387182, -0.877720, -0.282307,
		0.409110, 0.437945, -0.800521,
		0.826268, 0.194452, 0.528648,
		40.444767, 33.114334, 39.672676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266727, 32.562611, 38.925037>,  <39.866379, 32.978218, 39.302620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266727, 32.562611, 38.925037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448273, 32.615734, 39.277485>,  <40.557201, 32.647606, 39.488953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448273, 32.615734, 39.277485>,  <40.266727, 32.562611, 38.925037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448273, 32.615734, 39.277485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398276, -0.914796, -0.067268,
		0.797110, 0.381459, -0.468085,
		0.453862, 0.132807, 0.881119,
		40.584431, 32.655575, 39.541821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904671, 32.323212, 38.878361>,  <40.266727, 32.562611, 38.925037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904671, 32.323212, 38.878361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793789, 32.288891, 39.261150>,  <40.727261, 32.268299, 39.490822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793789, 32.288891, 39.261150>,  <40.904671, 32.323212, 38.878361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793789, 32.288891, 39.261150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337448, -0.941249, 0.013353,
		0.899603, 0.326630, 0.289876,
		-0.277207, -0.085806, 0.956971,
		40.710629, 32.263149, 39.548241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470211, 31.925840, 39.214077>,  <40.904671, 32.323212, 38.878361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470211, 31.925840, 39.214077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204372, 31.935955, 39.512787>,  <41.044868, 31.942024, 39.692013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204372, 31.935955, 39.512787>,  <41.470211, 31.925840, 39.214077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204372, 31.935955, 39.512787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153291, -0.973555, 0.169390,
		0.731307, 0.227050, 0.643147,
		-0.664599, 0.025287, 0.746773,
		41.004993, 31.943541, 39.736820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846798, 31.507114, 39.653030>,  <41.470211, 31.925840, 39.214077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846798, 31.507114, 39.653030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479477, 31.503819, 39.811352>,  <41.259087, 31.501841, 39.906345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479477, 31.503819, 39.811352>,  <41.846798, 31.507114, 39.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479477, 31.503819, 39.811352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085158, -0.980490, 0.177167,
		0.386621, 0.196398, 0.901084,
		-0.918299, -0.008238, 0.395803,
		41.203987, 31.501347, 39.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891693, 30.996128, 40.249695>,  <41.846798, 31.507114, 39.653030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891693, 30.996128, 40.249695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494194, 31.031742, 40.222755>,  <41.255695, 31.053110, 40.206593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494194, 31.031742, 40.222755>,  <41.891693, 30.996128, 40.249695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494194, 31.031742, 40.222755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094209, -0.992492, 0.078003,
		-0.059901, 0.083861, 0.994675,
		-0.993748, 0.089035, -0.067352,
		41.196068, 31.058453, 40.202549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765022, 30.553667, 40.721149>,  <41.891693, 30.996128, 40.249695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765022, 30.553667, 40.721149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438301, 30.602407, 40.495586>,  <41.242268, 30.631651, 40.360249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438301, 30.602407, 40.495586>,  <41.765022, 30.553667, 40.721149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438301, 30.602407, 40.495586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310423, -0.916711, 0.251553,
		-0.486288, 0.380518, 0.786594,
		-0.816800, 0.121850, -0.563907,
		41.193260, 30.638962, 40.326416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132923, 30.346018, 41.111008>,  <41.765022, 30.553667, 40.721149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132923, 30.346018, 41.111008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113438, 30.282957, 40.716492>,  <41.101746, 30.245121, 40.479782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113438, 30.282957, 40.716492>,  <41.132923, 30.346018, 41.111008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113438, 30.282957, 40.716492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360437, -0.918153, 0.164563,
		-0.931511, 0.363512, -0.012101,
		-0.048710, -0.157654, -0.986292,
		41.098824, 30.235661, 40.420605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886692, 29.629532, 41.464420>,  <41.132923, 30.346018, 41.111008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886692, 29.629532, 41.464420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710865, 29.356457, 41.230938>,  <40.605370, 29.192612, 41.090847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710865, 29.356457, 41.230938>,  <40.886692, 29.629532, 41.464420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710865, 29.356457, 41.230938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050302, 0.630127, -0.774861,
		0.896798, -0.369968, -0.242645,
		-0.439571, -0.682688, -0.583707,
		40.578995, 29.151649, 41.055824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441799, 29.375338, 40.885048>,  <40.886692, 29.629532, 41.464420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441799, 29.375338, 40.885048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050461, 29.448776, 40.846832>,  <40.815659, 29.492840, 40.823902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050461, 29.448776, 40.846832>,  <41.441799, 29.375338, 40.885048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050461, 29.448776, 40.846832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205864, 0.815708, -0.540592,
		-0.021320, -0.548555, -0.835842,
		-0.978348, 0.183596, -0.095537,
		40.756958, 29.503855, 40.818172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447472, 29.757072, 40.295395>,  <41.441799, 29.375338, 40.885048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447472, 29.757072, 40.295395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097797, 29.816679, 40.480263>,  <40.887993, 29.852444, 40.591183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097797, 29.816679, 40.480263>,  <41.447472, 29.757072, 40.295395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097797, 29.816679, 40.480263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148724, 0.823851, -0.546946,
		-0.462262, -0.546866, -0.698034,
		-0.874183, 0.149018, 0.462167,
		40.835541, 29.861383, 40.618912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831108, 30.064625, 39.830627>,  <41.447472, 29.757072, 40.295395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831108, 30.064625, 39.830627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775845, 30.194613, 40.204861>,  <40.742687, 30.272604, 40.429401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775845, 30.194613, 40.204861>,  <40.831108, 30.064625, 39.830627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775845, 30.194613, 40.204861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334885, 0.873670, -0.352919,
		-0.932074, -0.362072, -0.011882,
		-0.138163, 0.324967, 0.935578,
		40.734394, 30.292103, 40.485535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228741, 30.409388, 39.771114>,  <40.831108, 30.064625, 39.830627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228741, 30.409388, 39.771114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456890, 30.539995, 40.072594>,  <40.593781, 30.618359, 40.253483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456890, 30.539995, 40.072594>,  <40.228741, 30.409388, 39.771114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456890, 30.539995, 40.072594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094757, 0.937624, -0.334489,
		-0.815903, 0.119365, 0.565733,
		0.570371, 0.326518, 0.753700,
		40.628002, 30.637951, 40.298702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875774, 30.857203, 40.186863>,  <40.228741, 30.409388, 39.771114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875774, 30.857203, 40.186863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266907, 30.937014, 40.212296>,  <40.501587, 30.984901, 40.227554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266907, 30.937014, 40.212296>,  <39.875774, 30.857203, 40.186863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266907, 30.937014, 40.212296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187425, 0.969275, -0.159306,
		-0.093416, 0.143857, 0.985180,
		0.977827, 0.199529, 0.063583,
		40.560253, 30.996872, 40.231369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980194, 31.454893, 40.495876>,  <39.875774, 30.857203, 40.186863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980194, 31.454893, 40.495876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337132, 31.482447, 40.317448>,  <40.551292, 31.498978, 40.210388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337132, 31.482447, 40.317448>,  <39.980194, 31.454893, 40.495876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337132, 31.482447, 40.317448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072691, 0.997318, 0.008591,
		0.445469, 0.024759, 0.894955,
		0.892341, 0.068882, -0.446074,
		40.604836, 31.503111, 40.183624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215355, 31.903603, 40.832432>,  <39.980194, 31.454893, 40.495876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215355, 31.903603, 40.832432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433685, 31.907581, 40.497295>,  <40.564682, 31.909969, 40.296211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433685, 31.907581, 40.497295>,  <40.215355, 31.903603, 40.832432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433685, 31.907581, 40.497295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021370, 0.999770, -0.002053,
		0.837629, 0.019025, 0.545908,
		0.545821, 0.009946, -0.837843,
		40.597431, 31.910564, 40.245941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351879, 32.546505, 40.697590>,  <40.215355, 31.903603, 40.832432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351879, 32.546505, 40.697590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555737, 32.447437, 40.368004>,  <40.678051, 32.387997, 40.170250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555737, 32.447437, 40.368004>,  <40.351879, 32.546505, 40.697590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555737, 32.447437, 40.368004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217076, 0.963706, -0.155401,
		0.832550, -0.099664, 0.544911,
		0.509646, -0.247666, -0.823967,
		40.708630, 32.373138, 40.120815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143314, 32.817352, 40.696899>,  <40.351879, 32.546505, 40.697590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143314, 32.817352, 40.696899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980976, 32.788624, 40.332451>,  <40.883575, 32.771385, 40.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980976, 32.788624, 40.332451>,  <41.143314, 32.817352, 40.696899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980976, 32.788624, 40.332451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002729, 0.996998, -0.077380,
		0.913939, -0.028918, -0.404819,
		-0.405842, -0.071825, -0.911117,
		40.859222, 32.767075, 40.059116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409748, 33.435436, 40.361301>,  <41.143314, 32.817352, 40.696899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409748, 33.435436, 40.361301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092533, 33.301109, 40.158001>,  <40.902203, 33.220512, 40.036022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092533, 33.301109, 40.158001>,  <41.409748, 33.435436, 40.361301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092533, 33.301109, 40.158001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309044, 0.940776, -0.139398,
		0.524962, 0.046523, -0.849853,
		-0.793037, -0.335821, -0.508249,
		40.854622, 33.200363, 40.005527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053459, 33.997906, 40.117207>,  <41.409748, 33.435436, 40.361301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053459, 33.997906, 40.117207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861927, 33.722061, 39.899891>,  <40.747009, 33.556553, 39.769501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861927, 33.722061, 39.899891>,  <41.053459, 33.997906, 40.117207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861927, 33.722061, 39.899891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355173, 0.718102, -0.598483,
		0.802856, -0.093609, -0.588778,
		-0.478826, -0.689613, -0.543285,
		40.718281, 33.515179, 39.736904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208721, 34.016312, 39.336658>,  <41.053459, 33.997906, 40.117207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208721, 34.016312, 39.336658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836681, 33.902351, 39.429398>,  <40.613457, 33.833977, 39.485043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836681, 33.902351, 39.429398>,  <41.208721, 34.016312, 39.336658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836681, 33.902351, 39.429398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366776, 0.754537, -0.544196,
		-0.019900, -0.591191, -0.806286,
		-0.930097, -0.284897, 0.231850,
		40.557652, 33.816883, 39.498951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745380, 33.955349, 38.746124>,  <41.208721, 34.016312, 39.336658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745380, 33.955349, 38.746124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508816, 34.021290, 39.061859>,  <40.366879, 34.060856, 39.251301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508816, 34.021290, 39.061859>,  <40.745380, 33.955349, 38.746124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508816, 34.021290, 39.061859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554463, 0.627617, -0.546505,
		-0.585496, -0.760868, -0.279774,
		-0.591410, 0.164853, 0.789341,
		40.331394, 34.070747, 39.298660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009144, 33.904060, 38.444893>,  <40.745380, 33.955349, 38.746124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009144, 33.904060, 38.444893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009220, 34.118279, 38.782696>,  <40.009266, 34.246807, 38.985378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009220, 34.118279, 38.782696>,  <40.009144, 33.904060, 38.444893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009220, 34.118279, 38.782696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618789, 0.663472, -0.420600,
		-0.785557, -0.522494, 0.331513,
		0.000189, 0.535542, 0.844509,
		40.009277, 34.278942, 39.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397610, 34.107426, 38.418617>,  <40.009144, 33.904060, 38.444893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397610, 34.107426, 38.418617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572399, 34.347992, 38.686153>,  <39.677273, 34.492332, 38.846676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572399, 34.347992, 38.686153>,  <39.397610, 34.107426, 38.418617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572399, 34.347992, 38.686153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600162, 0.748812, -0.281224,
		-0.669968, -0.278523, 0.688163,
		0.436977, 0.601420, 0.668839,
		39.703491, 34.528419, 38.886806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825649, 34.547741, 38.473156>,  <39.397610, 34.107426, 38.418617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825649, 34.547741, 38.473156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159199, 34.686958, 38.644512>,  <39.359329, 34.770489, 38.747326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159199, 34.686958, 38.644512>,  <38.825649, 34.547741, 38.473156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159199, 34.686958, 38.644512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319105, 0.937272, -0.140333,
		-0.450364, -0.019683, 0.892628,
		0.833873, 0.348043, 0.428394,
		39.409359, 34.791370, 38.773029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678860, 35.077347, 38.860577>,  <38.825649, 34.547741, 38.473156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678860, 35.077347, 38.860577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071991, 35.150112, 38.872906>,  <39.307869, 35.193771, 38.880302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071991, 35.150112, 38.872906>,  <38.678860, 35.077347, 38.860577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071991, 35.150112, 38.872906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178727, 0.980143, -0.085879,
		-0.045834, 0.078896, 0.995828,
		0.982830, 0.181918, 0.030823,
		39.366840, 35.204689, 38.882153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707031, 35.714844, 39.182240>,  <38.678860, 35.077347, 38.860577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707031, 35.714844, 39.182240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077278, 35.696743, 39.031940>,  <39.299427, 35.685883, 38.941761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077278, 35.696743, 39.031940>,  <38.707031, 35.714844, 39.182240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077278, 35.696743, 39.031940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111691, 0.915946, -0.385447,
		0.361607, 0.398743, 0.842760,
		0.925616, -0.045252, -0.375749,
		39.354961, 35.683167, 38.919216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747383, 36.360531, 38.814205>,  <38.707031, 35.714844, 39.182240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747383, 36.360531, 38.814205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122299, 36.238098, 38.747520>,  <39.347248, 36.164639, 38.707508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122299, 36.238098, 38.747520>,  <38.747383, 36.360531, 38.814205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122299, 36.238098, 38.747520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211918, 0.880216, -0.424630,
		0.276718, 0.362673, 0.889885,
		0.937293, -0.306085, -0.166715,
		39.403488, 36.146271, 38.697506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229622, 37.037800, 38.856106>,  <38.747383, 36.360531, 38.814205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229622, 37.037800, 38.856106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366688, 36.736465, 38.631584>,  <39.448925, 36.555664, 38.496872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366688, 36.736465, 38.631584>,  <39.229622, 37.037800, 38.856106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366688, 36.736465, 38.631584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116855, 0.627013, -0.770194,
		0.932163, 0.198325, 0.302886,
		0.342662, -0.753340, -0.561303,
		39.469486, 36.510464, 38.463192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012852, 37.082077, 38.620026>,  <39.229622, 37.037800, 38.856106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012852, 37.082077, 38.620026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741772, 36.903759, 38.386105>,  <39.579124, 36.796768, 38.245754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741772, 36.903759, 38.386105>,  <40.012852, 37.082077, 38.620026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741772, 36.903759, 38.386105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123468, 0.715007, -0.688128,
		0.724913, -0.538540, -0.429507,
		-0.677685, -0.445803, -0.584810,
		39.538460, 36.770020, 38.210663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175781, 37.379040, 38.039841>,  <40.012852, 37.082077, 38.620026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175781, 37.379040, 38.039841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829449, 37.190258, 37.973396>,  <39.621651, 37.076988, 37.933529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829449, 37.190258, 37.973396>,  <40.175781, 37.379040, 38.039841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829449, 37.190258, 37.973396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185395, 0.610997, -0.769618,
		0.464721, -0.635563, -0.616518,
		-0.865831, -0.471957, -0.166112,
		39.569698, 37.048672, 37.923561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218876, 37.146671, 37.404922>,  <40.175781, 37.379040, 38.039841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218876, 37.146671, 37.404922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823139, 37.166512, 37.459671>,  <39.585697, 37.178413, 37.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823139, 37.166512, 37.459671>,  <40.218876, 37.146671, 37.404922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823139, 37.166512, 37.459671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100418, 0.448237, -0.888257,
		-0.105407, -0.892538, -0.438481,
		-0.989346, 0.049597, 0.136874,
		39.526337, 37.181389, 37.500732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822605, 36.887405, 36.732101>,  <40.218876, 37.146671, 37.404922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822605, 36.887405, 36.732101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542580, 37.113407, 36.906769>,  <39.374565, 37.249008, 37.011570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542580, 37.113407, 36.906769>,  <39.822605, 36.887405, 36.732101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542580, 37.113407, 36.906769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261732, 0.365931, -0.893080,
		-0.664383, -0.739505, -0.108297,
		-0.700065, 0.565002, 0.436670,
		39.332561, 37.282909, 37.037769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292500, 36.583660, 36.260845>,  <39.822605, 36.887405, 36.732101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292500, 36.583660, 36.260845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330135, 36.432491, 36.629265>,  <40.352718, 36.341789, 36.850315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330135, 36.432491, 36.629265>,  <40.292500, 36.583660, 36.260845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330135, 36.432491, 36.629265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066127, -0.920734, -0.384546,
		0.993365, 0.097087, -0.061640,
		0.094088, -0.377919, 0.921045,
		40.358360, 36.319115, 36.905579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878490, 36.296665, 36.469822>,  <40.292500, 36.583660, 36.260845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878490, 36.296665, 36.469822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539337, 36.130753, 36.601913>,  <40.335846, 36.031204, 36.681168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539337, 36.130753, 36.601913>,  <40.878490, 36.296665, 36.469822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539337, 36.130753, 36.601913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199007, -0.826299, -0.526902,
		0.491415, -0.381035, 0.783150,
		-0.847884, -0.414780, 0.330227,
		40.284973, 36.006317, 36.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951412, 35.678410, 36.710602>,  <40.878490, 36.296665, 36.469822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951412, 35.678410, 36.710602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583736, 35.675724, 36.553104>,  <40.363129, 35.674110, 36.458607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583736, 35.675724, 36.553104>,  <40.951412, 35.678410, 36.710602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583736, 35.675724, 36.553104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162927, -0.916756, -0.364709,
		-0.358520, -0.399391, 0.843771,
		-0.919194, -0.006717, -0.393747,
		40.307980, 35.673710, 36.434978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661987, 35.519501, 36.900185>,  <40.951412, 35.678410, 36.710602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661987, 35.519501, 36.900185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597214, 35.523335, 36.505482>,  <41.558350, 35.525635, 36.268661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597214, 35.523335, 36.505482>,  <41.661987, 35.519501, 36.900185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597214, 35.523335, 36.505482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951626, -0.263086, -0.158727,
		-0.261122, -0.964725, 0.033483,
		-0.161937, 0.009584, -0.986755,
		41.548634, 35.526211, 36.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827927, 34.839069, 36.495445>,  <41.661987, 35.519501, 36.900185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827927, 34.839069, 36.495445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896164, 35.184158, 36.305031>,  <41.937107, 35.391212, 36.190781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896164, 35.184158, 36.305031>,  <41.827927, 34.839069, 36.495445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896164, 35.184158, 36.305031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982549, -0.185287, 0.016315,
		-0.074129, -0.470516, -0.879272,
		0.170594, 0.862718, -0.476041,
		41.947342, 35.442974, 36.162220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338665, 34.715305, 35.879856>,  <41.827927, 34.839069, 36.495445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338665, 34.715305, 35.879856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347595, 35.097454, 35.997684>,  <42.352955, 35.326744, 36.068382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347595, 35.097454, 35.997684>,  <42.338665, 34.715305, 35.879856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347595, 35.097454, 35.997684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997116, -0.042655, 0.062768,
		0.072531, 0.292318, -0.953567,
		0.022326, 0.955370, 0.294568,
		42.354294, 35.384064, 36.086056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839439, 35.055782, 35.483707>,  <42.338665, 34.715305, 35.879856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839439, 35.055782, 35.483707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801495, 35.254719, 35.828651>,  <42.778728, 35.374081, 36.035618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801495, 35.254719, 35.828651>,  <42.839439, 35.055782, 35.483707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801495, 35.254719, 35.828651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989615, -0.046869, 0.135890,
		0.108001, 0.866291, -0.487726,
		-0.094861, 0.497337, 0.862356,
		42.773037, 35.403919, 36.087357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205017, 35.670681, 35.384495>,  <42.839439, 35.055782, 35.483707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205017, 35.670681, 35.384495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191696, 35.557690, 35.767971>,  <43.183704, 35.489895, 35.998058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191696, 35.557690, 35.767971>,  <43.205017, 35.670681, 35.384495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191696, 35.557690, 35.767971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986886, 0.142294, 0.076208,
		-0.157944, 0.948660, 0.274039,
		-0.033301, -0.282482, 0.958694,
		43.181705, 35.472946, 36.055580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481106, 36.206783, 35.751106>,  <43.205017, 35.670681, 35.384495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481106, 36.206783, 35.751106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530632, 35.848534, 35.921997>,  <43.560349, 35.633583, 36.024532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530632, 35.848534, 35.921997>,  <43.481106, 36.206783, 35.751106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530632, 35.848534, 35.921997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973066, 0.193954, 0.124594,
		-0.194452, 0.400295, 0.895518,
		0.123815, -0.895626, 0.427228,
		43.567776, 35.579845, 36.050167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683514, 36.442142, 36.438694>,  <43.481106, 36.206783, 35.751106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683514, 36.442142, 36.438694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828331, 36.097218, 36.297081>,  <43.915222, 35.890263, 36.212112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828331, 36.097218, 36.297081>,  <43.683514, 36.442142, 36.438694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828331, 36.097218, 36.297081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931695, 0.346777, 0.108126,
		0.029531, -0.368994, 0.928963,
		0.362040, -0.862316, -0.354030,
		43.936943, 35.838524, 36.190872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088345, 36.052948, 36.917091>,  <43.683514, 36.442142, 36.438694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088345, 36.052948, 36.917091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158249, 36.089264, 36.524925>,  <44.200191, 36.111053, 36.289627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158249, 36.089264, 36.524925>,  <44.088345, 36.052948, 36.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158249, 36.089264, 36.524925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816532, 0.543069, 0.195837,
		0.550213, -0.834766, 0.020775,
		0.174760, 0.090789, -0.980416,
		44.210678, 36.116501, 36.230801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783207, 35.844612, 36.897991>,  <44.088345, 36.052948, 36.917091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783207, 35.844612, 36.897991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661102, 36.086163, 36.603466>,  <44.587837, 36.231091, 36.426750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661102, 36.086163, 36.603466>,  <44.783207, 35.844612, 36.897991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661102, 36.086163, 36.603466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878893, 0.476296, 0.026248,
		0.366552, -0.639125, -0.676135,
		-0.305265, 0.603871, -0.736310,
		44.569523, 36.267323, 36.382572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305126, 35.855812, 36.436558>,  <44.783207, 35.844612, 36.897991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305126, 35.855812, 36.436558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075348, 36.183212, 36.433323>,  <44.937481, 36.379654, 36.431381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075348, 36.183212, 36.433323>,  <45.305126, 35.855812, 36.436558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075348, 36.183212, 36.433323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799976, 0.563483, 0.206218,
		0.173349, 0.111988, -0.978473,
		-0.574446, 0.818503, -0.008092,
		44.903015, 36.428764, 36.430897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432777, 36.253735, 36.907322>,  <45.305126, 35.855812, 36.436558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432777, 36.253735, 36.907322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732674, 36.009464, 36.805374>,  <45.912613, 35.862900, 36.744205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732674, 36.009464, 36.805374>,  <45.432777, 36.253735, 36.907322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732674, 36.009464, 36.805374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659904, -0.718601, -0.219407,
		-0.049164, 0.332690, -0.941754,
		0.749740, -0.610680, -0.254873,
		45.957596, 35.826260, 36.728912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834709, 36.988686, 36.810379>,  <45.432777, 36.253735, 36.907322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834709, 36.988686, 36.810379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032116, 36.644028, 36.857712>,  <46.150558, 36.437233, 36.886112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032116, 36.644028, 36.857712>,  <45.834709, 36.988686, 36.810379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.032116, 36.644028, 36.857712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095223, -0.188764, -0.977395,
		0.864507, 0.471095, -0.175207,
		0.493518, -0.861648, 0.118329,
		46.180172, 36.385532, 36.893211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443165, 36.899445, 36.344250>,  <45.834709, 36.988686, 36.810379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443165, 36.899445, 36.344250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242954, 36.566216, 36.438450>,  <46.122829, 36.366280, 36.494972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242954, 36.566216, 36.438450>,  <46.443165, 36.899445, 36.344250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242954, 36.566216, 36.438450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351868, -0.052785, -0.934560,
		0.790987, -0.550640, -0.266712,
		-0.500528, -0.833073, 0.235505,
		46.092796, 36.316296, 36.509102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588364, 36.326473, 35.781982>,  <46.443165, 36.899445, 36.344250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588364, 36.326473, 35.781982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233051, 36.254311, 35.950935>,  <46.019863, 36.211014, 36.052307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233051, 36.254311, 35.950935>,  <46.588364, 36.326473, 35.781982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233051, 36.254311, 35.950935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376178, -0.241869, -0.894421,
		0.263524, -0.953389, 0.146982,
		-0.888282, -0.180410, 0.422382,
		45.966568, 36.200188, 36.077648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158497, 35.657318, 35.698208>,  <46.588364, 36.326473, 35.781982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.158497, 35.657318, 35.698208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968365, 36.009094, 35.688118>,  <45.854286, 36.220161, 35.682064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968365, 36.009094, 35.688118>,  <46.158497, 35.657318, 35.698208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968365, 36.009094, 35.688118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135863, -0.101700, -0.985494,
		-0.869253, -0.465010, 0.167826,
		-0.475333, 0.879444, -0.025225,
		45.825764, 36.272926, 35.680550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854858, 35.381191, 35.712376>,  <46.158497, 35.657318, 35.698208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854858, 35.381191, 35.712376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974693, 35.330063, 35.334190>,  <47.046593, 35.299385, 35.107277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974693, 35.330063, 35.334190>,  <46.854858, 35.381191, 35.712376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974693, 35.330063, 35.334190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924127, -0.207443, 0.320869,
		-0.237146, -0.969860, 0.055979,
		0.299586, -0.127824, -0.945468,
		47.064568, 35.291714, 35.050549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.323055, 34.808830, 35.738621>,  <46.854858, 35.381191, 35.712376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.323055, 34.808830, 35.738621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.393627, 35.069088, 35.443180>,  <47.435970, 35.225243, 35.265915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.393627, 35.069088, 35.443180>,  <47.323055, 34.808830, 35.738621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.393627, 35.069088, 35.443180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965559, 0.031378, 0.258286,
		0.191229, -0.758730, -0.622704,
		0.176431, 0.650649, -0.738599,
		47.446556, 35.264282, 35.221600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.869232, 34.631012, 35.322277>,  <47.323055, 34.808830, 35.738621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.869232, 34.631012, 35.322277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826221, 35.026951, 35.285107>,  <47.800415, 35.264515, 35.262802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826221, 35.026951, 35.285107>,  <47.869232, 34.631012, 35.322277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.826221, 35.026951, 35.285107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956064, 0.128592, 0.263451,
		0.272727, -0.060517, -0.960186,
		-0.107529, 0.989849, -0.092929,
		47.793964, 35.323906, 35.257229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.547413, 36.529545, 28.459610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738186, 36.484505, 28.808289>,  <37.852650, 36.457481, 29.017496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738186, 36.484505, 28.808289>,  <37.547413, 36.529545, 28.459610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738186, 36.484505, 28.808289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828986, 0.271958, 0.488693,
		-0.292092, -0.955699, 0.036361,
		0.476932, -0.112600, 0.871698,
		37.881264, 36.450726, 29.069798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953003, 36.538971, 28.108334>,  <37.547413, 36.529545, 28.459610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953003, 36.538971, 28.108334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675240, 36.518303, 27.821245>,  <36.508583, 36.505901, 27.648993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675240, 36.518303, 27.821245>,  <36.953003, 36.538971, 28.108334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675240, 36.518303, 27.821245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712767, -0.087541, 0.695917,
		-0.098789, 0.994820, 0.023959,
		-0.694409, -0.051672, -0.717723,
		36.466915, 36.502800, 27.605928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424179, 37.033813, 28.198387>,  <36.953003, 36.538971, 28.108334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424179, 37.033813, 28.198387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294468, 36.698437, 28.023180>,  <36.216640, 36.497211, 27.918056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294468, 36.698437, 28.023180>,  <36.424179, 37.033813, 28.198387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294468, 36.698437, 28.023180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660061, -0.131131, 0.739678,
		-0.677614, 0.528982, -0.510899,
		-0.324281, -0.838441, -0.438017,
		36.197182, 36.446903, 27.891775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705353, 37.027206, 28.283148>,  <36.424179, 37.033813, 28.198387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705353, 37.027206, 28.283148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830704, 36.654030, 28.212246>,  <35.905914, 36.430126, 28.169704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830704, 36.654030, 28.212246>,  <35.705353, 37.027206, 28.283148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830704, 36.654030, 28.212246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506725, -0.322146, 0.799657,
		-0.803133, -0.160776, -0.573697,
		0.313380, -0.932938, -0.177256,
		35.924717, 36.374149, 28.159069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132370, 36.586464, 28.260246>,  <35.705353, 37.027206, 28.283148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132370, 36.586464, 28.260246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421902, 36.322948, 28.342281>,  <35.595623, 36.164841, 28.391502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421902, 36.322948, 28.342281>,  <35.132370, 36.586464, 28.260246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421902, 36.322948, 28.342281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577554, -0.415888, 0.702473,
		-0.377483, -0.626928, -0.681519,
		0.723835, -0.658786, 0.205094,
		35.639053, 36.125313, 28.403809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802940, 36.018097, 28.376345>,  <35.132370, 36.586464, 28.260246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802940, 36.018097, 28.376345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153183, 35.928303, 28.547421>,  <35.363327, 35.874428, 28.650066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153183, 35.928303, 28.547421>,  <34.802940, 36.018097, 28.376345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153183, 35.928303, 28.547421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478347, -0.280070, 0.832313,
		-0.067056, -0.933364, -0.352612,
		0.875607, -0.224482, 0.427691,
		35.415867, 35.860958, 28.675728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739368, 35.318886, 28.811256>,  <34.802940, 36.018097, 28.376345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739368, 35.318886, 28.811256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064346, 35.473663, 28.985708>,  <35.259335, 35.566528, 29.090380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064346, 35.473663, 28.985708>,  <34.739368, 35.318886, 28.811256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064346, 35.473663, 28.985708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360573, -0.254365, 0.897377,
		0.458169, -0.886326, -0.067137,
		0.812446, 0.386942, 0.436128,
		35.308079, 35.589745, 29.116547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876240, 34.905491, 29.307085>,  <34.739368, 35.318886, 28.811256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876240, 34.905491, 29.307085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072552, 35.238972, 29.408346>,  <35.190338, 35.439060, 29.469103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072552, 35.238972, 29.408346>,  <34.876240, 34.905491, 29.307085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072552, 35.238972, 29.408346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274644, -0.127712, 0.953027,
		0.826867, -0.537250, 0.166292,
		0.490776, 0.833698, 0.253153,
		35.219784, 35.489082, 29.484293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218403, 34.754601, 29.887878>,  <34.876240, 34.905491, 29.307085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218403, 34.754601, 29.887878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208027, 35.153683, 29.912897>,  <35.201801, 35.393131, 29.927908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208027, 35.153683, 29.912897>,  <35.218403, 34.754601, 29.887878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208027, 35.153683, 29.912897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012379, -0.062885, 0.997944,
		0.999587, 0.025115, 0.013982,
		-0.025943, 0.997705, 0.062548,
		35.200245, 35.452995, 29.931662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637917, 34.893341, 30.434446>,  <35.218403, 34.754601, 29.887878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637917, 34.893341, 30.434446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450260, 35.245090, 30.401926>,  <35.337666, 35.456139, 30.382414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450260, 35.245090, 30.401926>,  <35.637917, 34.893341, 30.434446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450260, 35.245090, 30.401926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025321, 0.105416, 0.994106,
		0.882759, 0.464319, -0.071722,
		-0.469143, 0.879372, -0.081300,
		35.309517, 35.508904, 30.377537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068344, 35.375095, 30.831688>,  <35.637917, 34.893341, 30.434446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068344, 35.375095, 30.831688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701862, 35.531109, 30.794920>,  <35.481976, 35.624718, 30.772860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701862, 35.531109, 30.794920>,  <36.068344, 35.375095, 30.831688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701862, 35.531109, 30.794920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039047, 0.315190, 0.948225,
		0.398812, 0.865176, -0.304007,
		-0.916201, 0.390034, -0.091919,
		35.427002, 35.648117, 30.767344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140617, 35.987347, 31.112720>,  <36.068344, 35.375095, 30.831688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140617, 35.987347, 31.112720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752258, 35.897728, 31.146561>,  <35.519241, 35.843956, 31.166864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752258, 35.897728, 31.146561>,  <36.140617, 35.987347, 31.112720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752258, 35.897728, 31.146561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079964, 0.029712, 0.996355,
		-0.225744, 0.974125, -0.010932,
		-0.970899, -0.224047, 0.084603,
		35.460987, 35.830513, 31.171942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760979, 36.546112, 31.587898>,  <36.140617, 35.987347, 31.112720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760979, 36.546112, 31.587898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.542152, 36.211445, 31.577330>,  <35.410854, 36.010643, 31.570988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.542152, 36.211445, 31.577330>,  <35.760979, 36.546112, 31.587898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542152, 36.211445, 31.577330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247409, 0.131456, 0.959952,
		-0.799689, 0.531699, -0.278915,
		-0.547070, -0.836670, -0.026423,
		35.378033, 35.960445, 31.569403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245598, 36.684132, 31.993078>,  <35.760979, 36.546112, 31.587898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245598, 36.684132, 31.993078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245342, 36.284603, 31.973675>,  <35.245190, 36.044888, 31.962032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245342, 36.284603, 31.973675>,  <35.245598, 36.684132, 31.993078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245342, 36.284603, 31.973675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094013, -0.048231, 0.994402,
		-0.995571, 0.005200, -0.093872,
		-0.000643, -0.998823, -0.048507,
		35.245148, 35.984955, 31.959124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787998, 36.515499, 32.531986>,  <35.245598, 36.684132, 31.993078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787998, 36.515499, 32.531986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004265, 36.188271, 32.453556>,  <35.134026, 35.991936, 32.406498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004265, 36.188271, 32.453556>,  <34.787998, 36.515499, 32.531986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004265, 36.188271, 32.453556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061323, -0.194130, 0.979057,
		-0.838999, -0.541367, -0.054793,
		0.540666, -0.818068, -0.196073,
		35.166466, 35.942848, 32.394733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539791, 36.030449, 32.931774>,  <34.787998, 36.515499, 32.531986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539791, 36.030449, 32.931774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892147, 35.870480, 32.830502>,  <35.103561, 35.774498, 32.769737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892147, 35.870480, 32.830502>,  <34.539791, 36.030449, 32.931774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892147, 35.870480, 32.830502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149410, -0.272603, 0.950455,
		-0.449126, -0.875071, -0.180380,
		0.880887, -0.399923, -0.253177,
		35.156414, 35.750504, 32.754547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619999, 35.437668, 33.300056>,  <34.539791, 36.030449, 32.931774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619999, 35.437668, 33.300056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995422, 35.541676, 33.209282>,  <35.220676, 35.604080, 33.154819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995422, 35.541676, 33.209282>,  <34.619999, 35.437668, 33.300056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995422, 35.541676, 33.209282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276772, -0.174268, 0.945002,
		0.206174, -0.949747, -0.235527,
		0.938557, 0.260022, -0.226933,
		35.276989, 35.619682, 33.141201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087715, 34.904476, 33.665329>,  <34.619999, 35.437668, 33.300056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087715, 34.904476, 33.665329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271690, 35.254372, 33.604279>,  <35.382076, 35.464310, 33.567650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271690, 35.254372, 33.604279>,  <35.087715, 34.904476, 33.665329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271690, 35.254372, 33.604279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229005, 0.049217, 0.972180,
		0.857915, -0.482090, -0.177683,
		0.459933, 0.874738, -0.152625,
		35.409672, 35.516792, 33.558491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659435, 34.821575, 34.246315>,  <35.087715, 34.904476, 33.665329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659435, 34.821575, 34.246315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650063, 35.191090, 34.093441>,  <35.644440, 35.412800, 34.001717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650063, 35.191090, 34.093441>,  <35.659435, 34.821575, 34.246315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650063, 35.191090, 34.093441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270184, 0.373913, 0.887237,
		0.962524, -0.082468, -0.258355,
		-0.023434, 0.923790, -0.382182,
		35.643032, 35.468227, 33.978786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184105, 35.154675, 34.654110>,  <35.659435, 34.821575, 34.246315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184105, 35.154675, 34.654110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995472, 35.465427, 34.487225>,  <35.882290, 35.651878, 34.387093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995472, 35.465427, 34.487225>,  <36.184105, 35.154675, 34.654110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995472, 35.465427, 34.487225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108527, 0.418399, 0.901756,
		0.875116, 0.470535, -0.112998,
		-0.471586, 0.776878, -0.417214,
		35.853996, 35.698490, 34.362061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540386, 35.801449, 34.771355>,  <36.184105, 35.154675, 34.654110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540386, 35.801449, 34.771355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146355, 35.860008, 34.735168>,  <35.909935, 35.895145, 34.713455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146355, 35.860008, 34.735168>,  <36.540386, 35.801449, 34.771355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146355, 35.860008, 34.735168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022655, 0.410790, 0.911448,
		0.170602, 0.899899, -0.401344,
		-0.985079, 0.146402, -0.090469,
		35.850830, 35.903931, 34.708027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060413, 35.492092, 35.368053>,  <36.540386, 35.801449, 34.771355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060413, 35.492092, 35.368053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410286, 35.656651, 35.470566>,  <37.620209, 35.755386, 35.532074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410286, 35.656651, 35.470566>,  <37.060413, 35.492092, 35.368053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410286, 35.656651, 35.470566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380219, -0.254458, -0.889204,
		-0.300600, 0.875217, -0.378991,
		0.874685, 0.411394, 0.256284,
		37.672691, 35.780067, 35.547451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287151, 36.022392, 34.864208>,  <37.060413, 35.492092, 35.368053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287151, 36.022392, 34.864208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629105, 35.898129, 35.030422>,  <37.834274, 35.823570, 35.130150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629105, 35.898129, 35.030422>,  <37.287151, 36.022392, 34.864208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629105, 35.898129, 35.030422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359354, -0.223141, -0.906131,
		0.374223, 0.923957, -0.079122,
		0.854881, -0.310662, 0.415532,
		37.885571, 35.804932, 35.155083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793560, 36.507545, 34.687588>,  <37.287151, 36.022392, 34.864208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793560, 36.507545, 34.687588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978806, 36.167538, 34.787983>,  <38.089951, 35.963531, 34.848221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978806, 36.167538, 34.787983>,  <37.793560, 36.507545, 34.687588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978806, 36.167538, 34.787983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502769, 0.018742, -0.864218,
		0.729899, 0.526416, 0.436043,
		0.463111, -0.850020, 0.250986,
		38.117741, 35.912533, 34.863277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485252, 36.706982, 34.498409>,  <37.793560, 36.507545, 34.687588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485252, 36.706982, 34.498409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524323, 36.312729, 34.553520>,  <38.547764, 36.076176, 34.586586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524323, 36.312729, 34.553520>,  <38.485252, 36.706982, 34.498409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524323, 36.312729, 34.553520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335619, -0.097707, -0.936917,
		0.936920, 0.137756, 0.321254,
		0.097677, -0.985635, 0.137777,
		38.553627, 36.017036, 34.594852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993446, 36.577969, 34.162937>,  <38.485252, 36.706982, 34.498409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993446, 36.577969, 34.162937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.836121, 36.211555, 34.194416>,  <38.741726, 35.991707, 34.213303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.836121, 36.211555, 34.194416>,  <38.993446, 36.577969, 34.162937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836121, 36.211555, 34.194416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394555, -0.245480, -0.885475,
		0.830442, -0.317216, 0.457975,
		-0.393310, -0.916032, 0.078698,
		38.718128, 35.936745, 34.218025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555687, 36.203506, 33.993378>,  <38.993446, 36.577969, 34.162937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555687, 36.203506, 33.993378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209377, 36.012093, 33.934818>,  <39.001591, 35.897243, 33.899681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.209377, 36.012093, 33.934818>,  <39.555687, 36.203506, 33.993378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209377, 36.012093, 33.934818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352410, -0.375314, -0.857291,
		0.355299, -0.793816, 0.493579,
		-0.865777, -0.478536, -0.146400,
		38.949646, 35.868530, 33.890900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743992, 35.619957, 33.628101>,  <39.555687, 36.203506, 33.993378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743992, 35.619957, 33.628101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355019, 35.676018, 33.553555>,  <39.121635, 35.709656, 33.508827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355019, 35.676018, 33.553555>,  <39.743992, 35.619957, 33.628101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355019, 35.676018, 33.553555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133821, -0.319096, -0.938227,
		-0.190964, -0.937302, 0.291544,
		-0.972432, 0.140153, -0.186367,
		39.063290, 35.718063, 33.497643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597683, 35.018368, 33.266369>,  <39.743992, 35.619957, 33.628101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597683, 35.018368, 33.266369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317039, 35.294762, 33.196751>,  <39.148655, 35.460598, 33.154980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317039, 35.294762, 33.196751>,  <39.597683, 35.018368, 33.266369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317039, 35.294762, 33.196751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143681, -0.102045, -0.984349,
		-0.697926, -0.715634, -0.027685,
		-0.701609, 0.690981, -0.174043,
		39.106556, 35.502056, 33.144539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142002, 34.740898, 32.653145>,  <39.597683, 35.018368, 33.266369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142002, 34.740898, 32.653145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111050, 35.137390, 32.695988>,  <39.092480, 35.375286, 32.721695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111050, 35.137390, 32.695988>,  <39.142002, 34.740898, 32.653145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111050, 35.137390, 32.695988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024540, 0.105503, -0.994116,
		-0.996700, -0.079553, 0.016161,
		-0.077380, 0.991232, 0.107107,
		39.087837, 35.434761, 32.728119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773746, 34.920120, 32.110493>,  <39.142002, 34.740898, 32.653145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773746, 34.920120, 32.110493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927387, 35.272999, 32.219452>,  <39.019573, 35.484726, 32.284828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927387, 35.272999, 32.219452>,  <38.773746, 34.920120, 32.110493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927387, 35.272999, 32.219452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121025, 0.244373, -0.962099,
		-0.915325, 0.402510, -0.012903,
		0.384101, 0.882195, 0.272395,
		39.042618, 35.537659, 32.301170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405163, 35.584793, 31.679304>,  <38.773746, 34.920120, 32.110493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405163, 35.584793, 31.679304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762943, 35.700245, 31.815926>,  <38.977612, 35.769516, 31.897898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762943, 35.700245, 31.815926>,  <38.405163, 35.584793, 31.679304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762943, 35.700245, 31.815926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245711, 0.320942, -0.914671,
		-0.373618, 0.902048, 0.216147,
		0.894447, 0.288628, 0.341553,
		39.031277, 35.786835, 31.918392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486984, 36.302994, 31.421455>,  <38.405163, 35.584793, 31.679304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486984, 36.302994, 31.421455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850601, 36.163231, 31.512274>,  <39.068771, 36.079372, 31.566765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850601, 36.163231, 31.512274>,  <38.486984, 36.302994, 31.421455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850601, 36.163231, 31.512274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382538, 0.483702, -0.787208,
		0.165237, 0.802461, 0.573370,
		0.909045, -0.349411, 0.227046,
		39.123314, 36.058407, 31.580387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975845, 36.871891, 31.368734>,  <38.486984, 36.302994, 31.421455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975845, 36.871891, 31.368734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192829, 36.535950, 31.360874>,  <39.323021, 36.334385, 31.356157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192829, 36.535950, 31.360874>,  <38.975845, 36.871891, 31.368734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192829, 36.535950, 31.360874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467089, 0.320969, -0.823897,
		0.698259, 0.437751, 0.566399,
		0.542459, -0.839853, -0.019651,
		39.355568, 36.283993, 31.354979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653404, 37.092541, 31.045044>,  <38.975845, 36.871891, 31.368734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653404, 37.092541, 31.045044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631874, 36.693924, 31.019753>,  <39.618954, 36.454754, 31.004578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631874, 36.693924, 31.019753>,  <39.653404, 37.092541, 31.045044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631874, 36.693924, 31.019753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210817, 0.050550, -0.976218,
		0.976042, -0.065879, 0.207367,
		-0.053830, -0.996546, -0.063227,
		39.615726, 36.394958, 31.000784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267193, 36.962032, 30.788574>,  <39.653404, 37.092541, 31.045044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267193, 36.962032, 30.788574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009209, 36.667175, 30.707932>,  <39.854420, 36.490261, 30.659546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009209, 36.667175, 30.707932>,  <40.267193, 36.962032, 30.788574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009209, 36.667175, 30.707932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260227, 0.036205, -0.964868,
		0.718548, -0.674763, 0.168475,
		-0.644958, -0.737146, -0.201607,
		39.815720, 36.446033, 30.647449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596367, 36.709625, 30.243092>,  <40.267193, 36.962032, 30.788574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596367, 36.709625, 30.243092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.239243, 36.529507, 30.238811>,  <40.024967, 36.421436, 30.236244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.239243, 36.529507, 30.238811>,  <40.596367, 36.709625, 30.243092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239243, 36.529507, 30.238811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056806, -0.089000, -0.994410,
		0.446830, -0.888431, 0.105041,
		-0.892814, -0.450299, -0.010700,
		39.971397, 36.394417, 30.235601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655315, 36.116505, 29.800848>,  <40.596367, 36.709625, 30.243092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655315, 36.116505, 29.800848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.259686, 36.175350, 29.804491>,  <40.022308, 36.210659, 29.806677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.259686, 36.175350, 29.804491>,  <40.655315, 36.116505, 29.800848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259686, 36.175350, 29.804491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057087, -0.325382, -0.943858,
		-0.135889, -0.934069, 0.330226,
		-0.989078, 0.147112, 0.009107,
		39.962963, 36.219482, 29.807222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345058, 35.558132, 29.358944>,  <40.655315, 36.116505, 29.800848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345058, 35.558132, 29.358944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078278, 35.854237, 29.392853>,  <39.918209, 36.031898, 29.413198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078278, 35.854237, 29.392853>,  <40.345058, 35.558132, 29.358944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078278, 35.854237, 29.392853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327766, -0.189308, -0.925598,
		-0.669138, -0.645115, 0.368892,
		-0.666951, 0.740263, 0.084774,
		39.878193, 36.076317, 29.418285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896030, 35.243431, 29.042099>,  <40.345058, 35.558132, 29.358944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896030, 35.243431, 29.042099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782932, 35.627041, 29.034878>,  <39.715073, 35.857208, 29.030544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782932, 35.627041, 29.034878>,  <39.896030, 35.243431, 29.042099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782932, 35.627041, 29.034878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240322, -0.089051, -0.966600,
		-0.928601, -0.268963, 0.255654,
		-0.282746, 0.959025, -0.018055,
		39.698109, 35.914749, 29.029461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.166519, 35.223881, 28.877068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297890, 35.590767, 28.786860>,  <39.376713, 35.810898, 28.732735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297890, 35.590767, 28.786860>,  <39.166519, 35.223881, 28.877068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297890, 35.590767, 28.786860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439242, -0.063062, -0.896153,
		-0.836184, 0.393376, 0.382167,
		0.328425, 0.917212, -0.225518,
		39.396416, 35.865932, 28.719204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537178, 35.672935, 28.650045>,  <39.166519, 35.223881, 28.877068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537178, 35.672935, 28.650045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868996, 35.844864, 28.507433>,  <39.068085, 35.948021, 28.421865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868996, 35.844864, 28.507433>,  <38.537178, 35.672935, 28.650045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868996, 35.844864, 28.507433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434163, 0.094839, -0.895828,
		-0.351234, 0.897919, 0.265286,
		0.829540, 0.429822, -0.356532,
		39.117859, 35.973812, 28.400473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339478, 36.187897, 28.130705>,  <38.537178, 35.672935, 28.650045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339478, 36.187897, 28.130705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721760, 36.117443, 28.036386>,  <38.951130, 36.075172, 27.979795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721760, 36.117443, 28.036386>,  <38.339478, 36.187897, 28.130705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721760, 36.117443, 28.036386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207622, 0.164375, -0.964300,
		0.208605, 0.970545, 0.120525,
		0.955707, -0.176134, -0.235796,
		39.008472, 36.064602, 27.965647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473259, 36.835949, 27.722206>,  <38.339478, 36.187897, 28.130705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473259, 36.835949, 27.722206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758522, 36.569798, 27.633961>,  <38.929680, 36.410107, 27.581013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758522, 36.569798, 27.633961>,  <38.473259, 36.835949, 27.722206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758522, 36.569798, 27.633961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174148, 0.136682, -0.975187,
		0.679023, 0.733886, -0.018398,
		0.713162, -0.665379, -0.220615,
		38.972469, 36.370182, 27.567776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942577, 37.123344, 27.252842>,  <38.473259, 36.835949, 27.722206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942577, 37.123344, 27.252842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991493, 36.728287, 27.213623>,  <39.020844, 36.491253, 27.190092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991493, 36.728287, 27.213623>,  <38.942577, 37.123344, 27.252842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991493, 36.728287, 27.213623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008941, 0.099879, -0.994959,
		0.992454, 0.120797, 0.021045,
		0.122290, -0.987640, -0.098045,
		39.028179, 36.431995, 27.184210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479527, 37.086773, 26.938334>,  <38.942577, 37.123344, 27.252842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479527, 37.086773, 26.938334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341866, 36.721165, 26.852430>,  <39.259270, 36.501801, 26.800888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341866, 36.721165, 26.852430>,  <39.479527, 37.086773, 26.938334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341866, 36.721165, 26.852430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297130, 0.110950, -0.948369,
		0.890658, -0.390197, 0.233399,
		-0.344155, -0.914022, -0.214758,
		39.238621, 36.446957, 26.788002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957199, 36.820133, 26.458010>,  <39.479527, 37.086773, 26.938334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957199, 36.820133, 26.458010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646938, 36.574051, 26.401608>,  <39.460781, 36.426403, 26.367765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646938, 36.574051, 26.401608>,  <39.957199, 36.820133, 26.458010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646938, 36.574051, 26.401608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342412, -0.222495, -0.912825,
		0.530203, -0.756318, 0.383233,
		-0.775654, -0.615206, -0.141005,
		39.414242, 36.389488, 26.359306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191475, 36.145309, 26.147512>,  <39.957199, 36.820133, 26.458010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191475, 36.145309, 26.147512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804832, 36.194202, 26.057423>,  <39.572845, 36.223537, 26.003368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804832, 36.194202, 26.057423>,  <40.191475, 36.145309, 26.147512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804832, 36.194202, 26.057423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216862, -0.078062, -0.973076,
		-0.136528, -0.989426, 0.048946,
		-0.966608, 0.122238, -0.225227,
		39.514851, 36.230873, 25.989855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042938, 35.688850, 25.610064>,  <40.191475, 36.145309, 26.147512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042938, 35.688850, 25.610064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733528, 35.939980, 25.575432>,  <39.547882, 36.090656, 25.554653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733528, 35.939980, 25.575432>,  <40.042938, 35.688850, 25.610064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733528, 35.939980, 25.575432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134517, 0.029142, -0.990483,
		-0.619325, -0.777810, -0.106996,
		-0.773526, 0.627823, -0.086580,
		39.501469, 36.128326, 25.549458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589787, 35.453167, 25.082605>,  <40.042938, 35.688850, 25.610064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589787, 35.453167, 25.082605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529602, 35.848557, 25.089218>,  <39.493492, 36.085793, 25.093185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529602, 35.848557, 25.089218>,  <39.589787, 35.453167, 25.082605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529602, 35.848557, 25.089218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006183, 0.017662, -0.999825,
		-0.988597, -0.150331, -0.008770,
		-0.150460, 0.988478, 0.016531,
		39.484463, 36.145100, 25.094177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043526, 35.551689, 24.583366>,  <39.589787, 35.453167, 25.082605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043526, 35.551689, 24.583366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.266479, 35.876526, 24.652456>,  <39.400249, 36.071426, 24.693911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.266479, 35.876526, 24.652456>,  <39.043526, 35.551689, 24.583366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266479, 35.876526, 24.652456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070809, 0.160783, -0.984447,
		-0.827232, 0.560942, 0.032114,
		0.557381, 0.812092, 0.172724,
		39.433693, 36.120152, 24.704273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872646, 36.034111, 24.012842>,  <39.043526, 35.551689, 24.583366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872646, 36.034111, 24.012842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207024, 36.208172, 24.146614>,  <39.407650, 36.312611, 24.226877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207024, 36.208172, 24.146614>,  <38.872646, 36.034111, 24.012842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207024, 36.208172, 24.146614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189721, 0.342667, -0.920101,
		-0.514986, 0.832597, 0.203890,
		0.835940, 0.435157, 0.334430,
		39.457806, 36.338718, 24.246943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782669, 36.651878, 23.774918>,  <38.872646, 36.034111, 24.012842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782669, 36.651878, 23.774918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171188, 36.662369, 23.869476>,  <39.404301, 36.668663, 23.926212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171188, 36.662369, 23.869476>,  <38.782669, 36.651878, 23.774918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171188, 36.662369, 23.869476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192252, 0.498606, -0.845241,
		-0.140038, 0.866432, 0.479255,
		0.971303, 0.026228, 0.236397,
		39.462578, 36.670238, 23.940395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941994, 37.328457, 23.926416>,  <38.782669, 36.651878, 23.774918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941994, 37.328457, 23.926416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267071, 37.132626, 23.800030>,  <39.462116, 37.015125, 23.724197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267071, 37.132626, 23.800030>,  <38.941994, 37.328457, 23.926416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267071, 37.132626, 23.800030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181003, 0.727543, -0.661754,
		0.553861, 0.480615, 0.679888,
		0.812696, -0.489582, -0.315966,
		39.510880, 36.985752, 23.705240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436813, 37.900990, 23.742899>,  <38.941994, 37.328457, 23.926416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436813, 37.900990, 23.742899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622360, 37.586300, 23.579979>,  <39.733688, 37.397488, 23.482227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622360, 37.586300, 23.579979>,  <39.436813, 37.900990, 23.742899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622360, 37.586300, 23.579979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266610, 0.562413, -0.782694,
		0.844835, 0.254475, 0.470633,
		0.463866, -0.786723, -0.407301,
		39.761520, 37.350285, 23.457788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135540, 38.060062, 23.685312>,  <39.436813, 37.900990, 23.742899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135540, 38.060062, 23.685312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073254, 37.795944, 23.391438>,  <40.035881, 37.637474, 23.215113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073254, 37.795944, 23.391438>,  <40.135540, 38.060062, 23.685312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073254, 37.795944, 23.391438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239611, 0.696296, -0.676579,
		0.958300, -0.281393, 0.049790,
		-0.155716, -0.660295, -0.734686,
		40.026539, 37.597855, 23.171032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695427, 38.222157, 23.369078>,  <40.135540, 38.060062, 23.685312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695427, 38.222157, 23.369078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448185, 38.042809, 23.110804>,  <40.299839, 37.935200, 22.955839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448185, 38.042809, 23.110804>,  <40.695427, 38.222157, 23.369078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448185, 38.042809, 23.110804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330822, 0.596736, -0.731070,
		0.713098, -0.665482, -0.220511,
		-0.618100, -0.448375, -0.645687,
		40.262756, 37.908295, 22.917097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072472, 38.163319, 22.736765>,  <40.695427, 38.222157, 23.369078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072472, 38.163319, 22.736765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700523, 38.113686, 22.598232>,  <40.477356, 38.083908, 22.515112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700523, 38.113686, 22.598232>,  <41.072472, 38.163319, 22.736765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700523, 38.113686, 22.598232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178216, 0.671645, -0.719118,
		0.321839, -0.730409, -0.602430,
		-0.929870, -0.124078, -0.346333,
		40.421562, 38.076462, 22.494333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067768, 38.037460, 22.031933>,  <41.072472, 38.163319, 22.736765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067768, 38.037460, 22.031933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716415, 38.210957, 22.112247>,  <40.505604, 38.315052, 22.160437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716415, 38.210957, 22.112247>,  <41.067768, 38.037460, 22.031933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716415, 38.210957, 22.112247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225973, 0.747043, -0.625191,
		-0.421163, -0.503785, -0.754203,
		-0.878384, 0.433737, 0.200785,
		40.452900, 38.341076, 22.172483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904678, 38.222420, 21.443098>,  <41.067768, 38.037460, 22.031933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904678, 38.222420, 21.443098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628895, 38.417797, 21.657042>,  <40.463425, 38.535023, 21.785408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628895, 38.417797, 21.657042>,  <40.904678, 38.222420, 21.443098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628895, 38.417797, 21.657042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049206, 0.705128, -0.707371,
		-0.722654, -0.514019, -0.462120,
		-0.689456, 0.488445, 0.534857,
		40.422058, 38.564331, 21.817499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323208, 38.349449, 20.956953>,  <40.904678, 38.222420, 21.443098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323208, 38.349449, 20.956953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297058, 38.620712, 21.249754>,  <40.281368, 38.783470, 21.425434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297058, 38.620712, 21.249754>,  <40.323208, 38.349449, 20.956953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297058, 38.620712, 21.249754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123751, 0.722397, -0.680315,
		-0.990157, -0.135061, 0.036698,
		-0.065374, 0.678160, 0.732000,
		40.277447, 38.824162, 21.469355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838020, 38.754501, 20.698093>,  <40.323208, 38.349449, 20.956953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838020, 38.754501, 20.698093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021324, 38.969265, 20.981422>,  <40.131306, 39.098125, 21.151421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021324, 38.969265, 20.981422>,  <39.838020, 38.754501, 20.698093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021324, 38.969265, 20.981422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004324, 0.798264, -0.602293,
		-0.888807, 0.272945, 0.368135,
		0.458261, 0.536914, 0.708322,
		40.158802, 39.130341, 21.193918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184982, 39.307842, 20.380960>,  <39.838020, 38.754501, 20.698093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184982, 39.307842, 20.380960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237583, 39.058266, 20.072830>,  <40.269142, 38.908520, 19.887953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237583, 39.058266, 20.072830>,  <40.184982, 39.307842, 20.380960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237583, 39.058266, 20.072830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608269, -0.664379, 0.434291,
		-0.782762, 0.411455, -0.466893,
		0.131503, -0.623943, -0.770326,
		40.277035, 38.871082, 19.841732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577236, 39.375633, 19.927559>,  <40.184982, 39.307842, 20.380960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577236, 39.375633, 19.927559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745541, 39.013634, 19.952654>,  <39.846523, 38.796432, 19.967710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745541, 39.013634, 19.952654>,  <39.577236, 39.375633, 19.927559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745541, 39.013634, 19.952654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696443, -0.277936, 0.661604,
		-0.581314, -0.322070, -0.747225,
		0.420764, -0.904998, 0.062735,
		39.871769, 38.742134, 19.971476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067875, 39.709049, 20.006348>,  <39.577236, 39.375633, 19.927559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067875, 39.709049, 20.006348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675335, 39.656109, 19.950586>,  <38.439812, 39.624344, 19.917130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675335, 39.656109, 19.950586>,  <39.067875, 39.709049, 20.006348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675335, 39.656109, 19.950586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120424, -0.141957, 0.982520,
		-0.149830, 0.980984, 0.123371,
		-0.981351, -0.132354, -0.139403,
		38.380928, 39.616402, 19.908766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745880, 40.166222, 20.623753>,  <39.067875, 39.709049, 20.006348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745880, 40.166222, 20.623753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458279, 39.925190, 20.485231>,  <38.285717, 39.780571, 20.402119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458279, 39.925190, 20.485231>,  <38.745880, 40.166222, 20.623753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458279, 39.925190, 20.485231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384364, -0.070378, 0.920495,
		-0.579047, 0.794947, -0.181009,
		-0.719006, -0.602583, -0.346302,
		38.242577, 39.744415, 20.381340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101368, 40.292336, 21.037554>,  <38.745880, 40.166222, 20.623753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101368, 40.292336, 21.037554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028938, 39.940460, 20.861662>,  <37.985481, 39.729336, 20.756126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028938, 39.940460, 20.861662>,  <38.101368, 40.292336, 21.037554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028938, 39.940460, 20.861662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548082, -0.280992, 0.787813,
		-0.816591, 0.383658, -0.431262,
		-0.181070, -0.879688, -0.439731,
		37.974617, 39.676556, 20.729742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354359, 40.147995, 21.149073>,  <38.101368, 40.292336, 21.037554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354359, 40.147995, 21.149073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552731, 39.803665, 21.103407>,  <37.671753, 39.597069, 21.076008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552731, 39.803665, 21.103407>,  <37.354359, 40.147995, 21.149073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552731, 39.803665, 21.103407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271621, -0.278651, 0.921182,
		-0.824789, -0.425832, -0.372009,
		0.495929, -0.860826, -0.114163,
		37.701508, 39.545418, 21.069159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927986, 39.734756, 21.421867>,  <37.354359, 40.147995, 21.149073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927986, 39.734756, 21.421867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263409, 39.517033, 21.412502>,  <37.464661, 39.386398, 21.406883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263409, 39.517033, 21.412502>,  <36.927986, 39.734756, 21.421867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263409, 39.517033, 21.412502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219802, -0.377323, 0.899619,
		-0.498508, -0.749235, -0.436048,
		0.838557, -0.544311, -0.023415,
		37.514977, 39.353741, 21.405478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702766, 39.035553, 21.500048>,  <36.927986, 39.734756, 21.421867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702766, 39.035553, 21.500048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090683, 39.036221, 21.597616>,  <37.323433, 39.036621, 21.656157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090683, 39.036221, 21.597616>,  <36.702766, 39.035553, 21.500048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090683, 39.036221, 21.597616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229560, -0.331864, 0.914969,
		0.082474, -0.943326, -0.321457,
		0.969794, 0.001667, 0.243920,
		37.381622, 39.036720, 21.670792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763664, 38.393009, 21.834808>,  <36.702766, 39.035553, 21.500048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763664, 38.393009, 21.834808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075356, 38.614639, 21.951975>,  <37.262371, 38.747616, 22.022276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075356, 38.614639, 21.951975>,  <36.763664, 38.393009, 21.834808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075356, 38.614639, 21.951975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060990, -0.398114, 0.915306,
		0.623761, -0.731101, -0.276430,
		0.779232, 0.554073, 0.292918,
		37.309124, 38.780861, 22.039850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059395, 37.958187, 22.239582>,  <36.763664, 38.393009, 21.834808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059395, 37.958187, 22.239582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230865, 38.308815, 22.327095>,  <37.333748, 38.519192, 22.379602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230865, 38.308815, 22.327095>,  <37.059395, 37.958187, 22.239582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230865, 38.308815, 22.327095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133269, -0.178160, 0.974935,
		0.893576, -0.447086, 0.040447,
		0.428674, 0.876569, 0.218782,
		37.359467, 38.571785, 22.392729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661575, 37.853214, 22.646910>,  <37.059395, 37.958187, 22.239582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661575, 37.853214, 22.646910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552425, 38.224323, 22.748713>,  <37.486935, 38.446987, 22.809795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552425, 38.224323, 22.748713>,  <37.661575, 37.853214, 22.646910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552425, 38.224323, 22.748713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155180, -0.303532, 0.940100,
		0.949451, 0.217038, 0.226799,
		-0.272878, 0.927773, 0.254508,
		37.470562, 38.502655, 22.825066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007378, 38.008648, 23.188688>,  <37.661575, 37.853214, 22.646910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007378, 38.008648, 23.188688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728767, 38.293076, 23.227137>,  <37.561600, 38.463730, 23.250206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728767, 38.293076, 23.227137>,  <38.007378, 38.008648, 23.188688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728767, 38.293076, 23.227137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044217, -0.176243, 0.983353,
		0.716169, 0.680679, 0.154199,
		-0.696525, 0.711065, 0.096122,
		37.519810, 38.506393, 23.255974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267830, 38.411297, 23.661177>,  <38.007378, 38.008648, 23.188688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267830, 38.411297, 23.661177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873451, 38.475143, 23.680883>,  <37.636822, 38.513451, 23.692707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873451, 38.475143, 23.680883>,  <38.267830, 38.411297, 23.661177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873451, 38.475143, 23.680883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020679, -0.176024, 0.984169,
		0.165761, 0.971359, 0.170250,
		-0.985949, 0.159616, 0.049265,
		37.577667, 38.523029, 23.695663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145100, 38.864368, 24.170927>,  <38.267830, 38.411297, 23.661177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145100, 38.864368, 24.170927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798027, 38.668396, 24.137255>,  <37.589783, 38.550812, 24.117052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798027, 38.668396, 24.137255>,  <38.145100, 38.864368, 24.170927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798027, 38.668396, 24.137255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008225, -0.155163, 0.987855,
		-0.497045, 0.857840, 0.130603,
		-0.867686, -0.489934, -0.084179,
		37.537720, 38.521416, 24.112001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995342, 38.701973, 24.801054>,  <38.145100, 38.864368, 24.170927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995342, 38.701973, 24.801054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.699432, 38.486385, 24.639936>,  <37.521885, 38.357033, 24.543266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.699432, 38.486385, 24.639936>,  <37.995342, 38.701973, 24.801054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699432, 38.486385, 24.639936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185977, -0.411530, 0.892220,
		-0.646639, 0.734955, 0.204205,
		-0.739778, -0.538966, -0.402796,
		37.477501, 38.324696, 24.519098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470268, 38.750580, 25.275854>,  <37.995342, 38.701973, 24.801054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470268, 38.750580, 25.275854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339920, 38.426563, 25.080862>,  <37.261711, 38.232151, 24.963867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339920, 38.426563, 25.080862>,  <37.470268, 38.750580, 25.275854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339920, 38.426563, 25.080862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219039, -0.436908, 0.872429,
		-0.919691, 0.391074, -0.035057,
		-0.325868, -0.810044, -0.487481,
		37.242161, 38.183552, 24.934618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732189, 38.499996, 25.505039>,  <37.470268, 38.750580, 25.275854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732189, 38.499996, 25.505039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896320, 38.178913, 25.331930>,  <36.994797, 37.986263, 25.228065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896320, 38.178913, 25.331930>,  <36.732189, 38.499996, 25.505039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896320, 38.178913, 25.331930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352755, -0.577332, 0.736378,
		-0.840950, -0.149492, -0.520053,
		0.410325, -0.802708, -0.432773,
		37.019417, 37.938099, 25.202099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276329, 38.000648, 25.570608>,  <36.732189, 38.499996, 25.505039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276329, 38.000648, 25.570608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605637, 37.791435, 25.482365>,  <36.803223, 37.665909, 25.429419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605637, 37.791435, 25.482365>,  <36.276329, 38.000648, 25.570608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605637, 37.791435, 25.482365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331772, -0.758692, 0.560637,
		-0.460605, -0.388362, -0.798134,
		0.823268, -0.523031, -0.220610,
		36.852615, 37.634525, 25.416182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049484, 37.323296, 25.466743>,  <36.276329, 38.000648, 25.570608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049484, 37.323296, 25.466743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430706, 37.279194, 25.579554>,  <36.659439, 37.252731, 25.647240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430706, 37.279194, 25.579554>,  <36.049484, 37.323296, 25.466743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430706, 37.279194, 25.579554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264987, -0.754404, 0.600547,
		0.146548, -0.647085, -0.748201,
		0.953051, -0.110255, 0.282025,
		36.716621, 37.246117, 25.664162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275887, 36.628635, 25.263546>,  <36.049484, 37.323296, 25.466743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275887, 36.628635, 25.263546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518021, 36.753349, 25.556494>,  <36.663300, 36.828178, 25.732262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518021, 36.753349, 25.556494>,  <36.275887, 36.628635, 25.263546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518021, 36.753349, 25.556494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262397, -0.790492, 0.553416,
		0.751480, -0.527171, -0.396697,
		0.605331, 0.311790, 0.732367,
		36.699619, 36.846886, 25.776203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304104, 36.087318, 25.679564>,  <36.275887, 36.628635, 25.263546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304104, 36.087318, 25.679564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497620, 36.330624, 25.931269>,  <36.613728, 36.476604, 26.082293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497620, 36.330624, 25.931269>,  <36.304104, 36.087318, 25.679564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497620, 36.330624, 25.931269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224123, -0.608925, 0.760907,
		0.846003, -0.509148, -0.158265,
		0.483785, 0.608258, 0.629264,
		36.642754, 36.513100, 26.120049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806744, 35.727734, 25.992338>,  <36.304104, 36.087318, 25.679564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806744, 35.727734, 25.992338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679630, 36.029633, 26.221899>,  <36.603363, 36.210773, 26.359636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679630, 36.029633, 26.221899>,  <36.806744, 35.727734, 25.992338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679630, 36.029633, 26.221899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081348, -0.624751, 0.776575,
		0.944668, 0.200096, 0.259932,
		-0.317782, 0.754751, 0.573904,
		36.584297, 36.256058, 26.394070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.197796, 35.327015, 31.323999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.902149, 35.596336, 31.331604>,  <39.724762, 35.757931, 31.336166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.902149, 35.596336, 31.331604>,  <40.197796, 35.327015, 31.323999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902149, 35.596336, 31.331604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041159, -0.073320, 0.996459,
		0.672317, 0.735718, 0.081905,
		-0.739118, 0.673307, 0.019012,
		39.680412, 35.798328, 31.337307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334518, 35.619125, 31.920408>,  <40.197796, 35.327015, 31.323999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334518, 35.619125, 31.920408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964691, 35.736179, 31.822803>,  <39.742794, 35.806412, 31.764240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964691, 35.736179, 31.822803>,  <40.334518, 35.619125, 31.920408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964691, 35.736179, 31.822803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204058, 0.160544, 0.965705,
		0.321773, 0.942652, -0.088719,
		-0.924566, 0.292634, -0.244014,
		39.687321, 35.823971, 31.749599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180874, 36.093212, 32.395645>,  <40.334518, 35.619125, 31.920408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180874, 36.093212, 32.395645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815029, 36.033730, 32.245251>,  <39.595520, 35.998039, 32.155014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815029, 36.033730, 32.245251>,  <40.180874, 36.093212, 32.395645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815029, 36.033730, 32.245251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379669, -0.003877, 0.925114,
		-0.139027, 0.988874, -0.052912,
		-0.914616, -0.148705, -0.375984,
		39.540646, 35.989117, 32.132454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671089, 36.603615, 32.666645>,  <40.180874, 36.093212, 32.395645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671089, 36.603615, 32.666645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491356, 36.264187, 32.554909>,  <39.383518, 36.060532, 32.487865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491356, 36.264187, 32.554909>,  <39.671089, 36.603615, 32.666645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491356, 36.264187, 32.554909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417123, -0.077234, 0.905563,
		-0.790007, 0.523418, -0.319254,
		-0.449331, -0.848568, -0.279345,
		39.356556, 36.009617, 32.471104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019592, 36.734531, 32.854233>,  <39.671089, 36.603615, 32.666645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019592, 36.734531, 32.854233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036770, 36.336922, 32.814110>,  <39.047077, 36.098354, 32.790035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036770, 36.336922, 32.814110>,  <39.019592, 36.734531, 32.854233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036770, 36.336922, 32.814110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397014, -0.109117, 0.911303,
		-0.916807, 0.000686, -0.399330,
		0.042949, -0.994028, -0.100311,
		39.049656, 36.038712, 32.784016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307102, 36.430893, 32.873039>,  <39.019592, 36.734531, 32.854233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307102, 36.430893, 32.873039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571121, 36.144489, 32.963966>,  <38.729534, 35.972649, 33.018524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571121, 36.144489, 32.963966>,  <38.307102, 36.430893, 32.873039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571121, 36.144489, 32.963966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494080, -0.185817, 0.849327,
		-0.565884, -0.672909, -0.476412,
		0.660046, -0.716006, 0.227320,
		38.769135, 35.929688, 33.032162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799870, 35.918030, 33.203648>,  <38.307102, 36.430893, 32.873039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799870, 35.918030, 33.203648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184574, 35.855114, 33.293339>,  <38.415398, 35.817364, 33.347153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184574, 35.855114, 33.293339>,  <37.799870, 35.918030, 33.203648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184574, 35.855114, 33.293339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263503, -0.308018, 0.914162,
		-0.074719, -0.938289, -0.337685,
		0.961761, -0.157286, 0.224227,
		38.473103, 35.807926, 33.360607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819908, 35.230858, 33.583004>,  <37.799870, 35.918030, 33.203648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819908, 35.230858, 33.583004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127098, 35.465462, 33.685932>,  <38.311413, 35.606224, 33.747688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127098, 35.465462, 33.685932>,  <37.819908, 35.230858, 33.583004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127098, 35.465462, 33.685932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123579, -0.258513, 0.958070,
		0.628440, -0.767576, -0.126052,
		0.767978, 0.586513, 0.257316,
		38.357491, 35.641415, 33.763126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098404, 34.821556, 34.079914>,  <37.819908, 35.230858, 33.583004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098404, 34.821556, 34.079914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.267155, 35.180309, 34.133003>,  <38.368404, 35.395561, 34.164856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.267155, 35.180309, 34.133003>,  <38.098404, 34.821556, 34.079914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267155, 35.180309, 34.133003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207930, -0.046771, 0.977025,
		0.882486, -0.439784, 0.166757,
		0.421881, 0.896885, 0.132719,
		38.393719, 35.449375, 34.172817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453175, 34.684723, 34.620487>,  <38.098404, 34.821556, 34.079914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453175, 34.684723, 34.620487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473042, 35.084072, 34.609257>,  <38.484962, 35.323681, 34.602520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473042, 35.084072, 34.609257>,  <38.453175, 34.684723, 34.620487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473042, 35.084072, 34.609257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103869, 0.033118, 0.994039,
		0.993350, -0.046453, 0.105345,
		0.049665, 0.998371, -0.028073,
		38.487942, 35.383583, 34.600834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010445, 34.940063, 35.123394>,  <38.453175, 34.684723, 34.620487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010445, 34.940063, 35.123394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.702282, 35.184574, 35.050938>,  <38.517384, 35.331280, 35.007465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.702282, 35.184574, 35.050938>,  <39.010445, 34.940063, 35.123394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702282, 35.184574, 35.050938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113505, 0.148075, 0.982441,
		0.627369, 0.777438, -0.044695,
		-0.770405, 0.611280, -0.181141,
		38.471161, 35.367958, 34.996597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908249, 35.256119, 35.748001>,  <39.010445, 34.940063, 35.123394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908249, 35.256119, 35.748001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597740, 35.421871, 35.557976>,  <38.411434, 35.521324, 35.443962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597740, 35.421871, 35.557976>,  <38.908249, 35.256119, 35.748001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597740, 35.421871, 35.557976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396338, 0.265207, 0.878966,
		0.490219, 0.870604, -0.041637,
		-0.776274, 0.414384, -0.475063,
		38.364857, 35.546185, 35.415459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857059, 36.066658, 36.081680>,  <38.908249, 35.256119, 35.748001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857059, 36.066658, 36.081680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499210, 36.006233, 35.913475>,  <38.284500, 35.969978, 35.812553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499210, 36.006233, 35.913475>,  <38.857059, 36.066658, 36.081680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499210, 36.006233, 35.913475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431881, 0.533672, 0.727099,
		0.114579, 0.832091, -0.542675,
		-0.894623, -0.151060, -0.420512,
		38.230824, 35.960915, 35.787323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240700, 36.508030, 36.591461>,  <38.857059, 36.066658, 36.081680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240700, 36.508030, 36.591461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.247578, 36.904751, 36.642120>,  <39.251705, 37.142784, 36.672516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.247578, 36.904751, 36.642120>,  <39.240700, 36.508030, 36.591461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247578, 36.904751, 36.642120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742180, 0.097537, -0.663065,
		-0.669980, -0.082590, 0.737771,
		0.017197, 0.991799, 0.126645,
		39.252735, 37.202290, 36.680115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002235, 36.808811, 35.974941>,  <39.240700, 36.508030, 36.591461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002235, 36.808811, 35.974941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938286, 37.066235, 36.274345>,  <38.899918, 37.220688, 36.453987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938286, 37.066235, 36.274345>,  <39.002235, 36.808811, 35.974941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938286, 37.066235, 36.274345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650982, 0.501279, -0.570037,
		-0.742066, -0.578402, 0.338805,
		-0.159874, 0.643561, 0.748511,
		38.890324, 37.259304, 36.498898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212467, 36.922523, 36.155815>,  <39.002235, 36.808811, 35.974941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212467, 36.922523, 36.155815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394665, 37.258404, 36.274082>,  <38.503983, 37.459934, 36.345043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394665, 37.258404, 36.274082>,  <38.212467, 36.922523, 36.155815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394665, 37.258404, 36.274082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548048, 0.526222, -0.650180,
		-0.701548, 0.134111, 0.699889,
		0.455493, 0.839705, 0.295671,
		38.531311, 37.510315, 36.362785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654137, 37.454651, 36.139671>,  <38.212467, 36.922523, 36.155815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654137, 37.454651, 36.139671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974899, 37.691936, 36.168076>,  <38.167358, 37.834309, 36.185120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974899, 37.691936, 36.168076>,  <37.654137, 37.454651, 36.139671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974899, 37.691936, 36.168076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410975, 0.633982, -0.655108,
		-0.433641, 0.496150, 0.752190,
		0.801907, 0.593213, 0.071015,
		38.215473, 37.869900, 36.189381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445480, 38.175598, 36.052818>,  <37.654137, 37.454651, 36.139671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445480, 38.175598, 36.052818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.837818, 38.182095, 35.975166>,  <38.073219, 38.185993, 35.928574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.837818, 38.182095, 35.975166>,  <37.445480, 38.175598, 36.052818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837818, 38.182095, 35.975166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161357, 0.626081, -0.762880,
		0.109150, 0.779589, 0.616707,
		0.980842, 0.016242, -0.194129,
		38.132072, 38.186966, 35.916927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586597, 38.935360, 35.861580>,  <37.445480, 38.175598, 36.052818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586597, 38.935360, 35.861580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890099, 38.717133, 35.719227>,  <38.072197, 38.586197, 35.633816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890099, 38.717133, 35.719227>,  <37.586597, 38.935360, 35.861580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890099, 38.717133, 35.719227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080904, 0.463189, -0.882559,
		0.646337, 0.698435, 0.307306,
		0.758751, -0.545569, -0.355882,
		38.117725, 38.553463, 35.612461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060345, 39.395725, 35.544655>,  <37.586597, 38.935360, 35.861580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060345, 39.395725, 35.544655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114323, 39.036312, 35.377598>,  <38.146709, 38.820663, 35.277363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114323, 39.036312, 35.377598>,  <38.060345, 39.395725, 35.544655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114323, 39.036312, 35.377598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299488, 0.364794, -0.881608,
		0.944509, 0.244047, -0.219874,
		0.134945, -0.898536, -0.417641,
		38.154804, 38.766750, 35.252304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395386, 39.577442, 34.956913>,  <38.060345, 39.395725, 35.544655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395386, 39.577442, 34.956913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236553, 39.215042, 34.898289>,  <38.141254, 38.997601, 34.863113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236553, 39.215042, 34.898289>,  <38.395386, 39.577442, 34.956913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236553, 39.215042, 34.898289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176105, 0.231937, -0.956657,
		0.900728, -0.354063, -0.251650,
		-0.397084, -0.906005, -0.146560,
		38.117428, 38.943241, 34.854321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762020, 39.336761, 34.324001>,  <38.395386, 39.577442, 34.956913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762020, 39.336761, 34.324001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428261, 39.118000, 34.351334>,  <38.228004, 38.986744, 34.367733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428261, 39.118000, 34.351334>,  <38.762020, 39.336761, 34.324001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428261, 39.118000, 34.351334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083614, 0.003059, -0.996494,
		0.544778, -0.837189, -0.048282,
		-0.834401, -0.546905, 0.068334,
		38.177940, 38.953930, 34.371834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720810, 39.035667, 33.759182>,  <38.762020, 39.336761, 34.324001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720810, 39.035667, 33.759182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338634, 38.993996, 33.869663>,  <38.109329, 38.968994, 33.935951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338634, 38.993996, 33.869663>,  <38.720810, 39.035667, 33.759182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338634, 38.993996, 33.869663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264040, -0.116823, -0.957411,
		0.132012, -0.987673, 0.084108,
		-0.955435, -0.104182, 0.276207,
		38.052006, 38.962742, 33.952526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497238, 38.431496, 33.362900>,  <38.720810, 39.035667, 33.759182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497238, 38.431496, 33.362900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158752, 38.613026, 33.474590>,  <37.955662, 38.721943, 33.541603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158752, 38.613026, 33.474590>,  <38.497238, 38.431496, 33.362900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158752, 38.613026, 33.474590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374773, -0.134411, -0.917321,
		-0.378775, -0.880894, 0.283822,
		-0.846212, 0.453828, 0.279224,
		37.904888, 38.749172, 33.558357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835804, 37.996090, 33.140965>,  <38.497238, 38.431496, 33.362900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835804, 37.996090, 33.140965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.754704, 38.385899, 33.179310>,  <37.706043, 38.619785, 33.202316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.754704, 38.385899, 33.179310>,  <37.835804, 37.996090, 33.140965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754704, 38.385899, 33.179310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372220, 0.013849, -0.928041,
		-0.905728, -0.223847, 0.359930,
		-0.202755, 0.974526, 0.095864,
		37.693878, 38.678257, 33.208069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221401, 38.076038, 32.768166>,  <37.835804, 37.996090, 33.140965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221401, 38.076038, 32.768166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.354496, 38.448032, 32.830666>,  <37.434353, 38.671227, 32.868168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.354496, 38.448032, 32.830666>,  <37.221401, 38.076038, 32.768166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354496, 38.448032, 32.830666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337148, 0.272062, -0.901285,
		-0.880690, 0.247214, 0.404068,
		0.332741, 0.929983, 0.156254,
		37.454319, 38.727028, 32.877541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736107, 38.522320, 32.377094>,  <37.221401, 38.076038, 32.768166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736107, 38.522320, 32.377094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055412, 38.755383, 32.438137>,  <37.246994, 38.895222, 32.474762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.055412, 38.755383, 32.438137>,  <36.736107, 38.522320, 32.377094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055412, 38.755383, 32.438137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039687, 0.303694, -0.951942,
		-0.601003, 0.753842, 0.265551,
		0.798260, 0.582659, 0.152604,
		37.294891, 38.930180, 32.483917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554169, 39.116932, 32.063839>,  <36.736107, 38.522320, 32.377094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554169, 39.116932, 32.063839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.952629, 39.088680, 32.084621>,  <37.191704, 39.071732, 32.097092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.952629, 39.088680, 32.084621>,  <36.554169, 39.116932, 32.063839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952629, 39.088680, 32.084621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064848, 0.194719, -0.978713,
		0.059008, 0.978313, 0.198549,
		0.996149, -0.070627, 0.051952,
		37.251472, 39.067493, 32.100208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328682, 39.840054, 32.270790>,  <36.554169, 39.116932, 32.063839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328682, 39.840054, 32.270790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020771, 40.093117, 32.304710>,  <35.836025, 40.244957, 32.325062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020771, 40.093117, 32.304710>,  <36.328682, 39.840054, 32.270790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020771, 40.093117, 32.304710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169443, -0.330609, 0.928433,
		0.615418, 0.700314, 0.361693,
		-0.769773, 0.632660, 0.084800,
		35.789841, 40.282913, 32.330151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368637, 40.145744, 32.998886>,  <36.328682, 39.840054, 32.270790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368637, 40.145744, 32.998886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.988106, 40.208557, 32.892822>,  <35.759785, 40.246246, 32.829185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.988106, 40.208557, 32.892822>,  <36.368637, 40.145744, 32.998886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988106, 40.208557, 32.892822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303936, -0.335988, 0.891479,
		0.050902, 0.928683, 0.367364,
		-0.951332, 0.157033, -0.265158,
		35.702705, 40.255669, 32.813274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971241, 40.555153, 33.622738>,  <36.368637, 40.145744, 32.998886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971241, 40.555153, 33.622738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702961, 40.354969, 33.403759>,  <35.541992, 40.234859, 33.272373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702961, 40.354969, 33.403759>,  <35.971241, 40.555153, 33.622738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702961, 40.354969, 33.403759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383048, -0.398328, 0.833432,
		-0.635165, 0.768682, 0.075458,
		-0.670701, -0.500463, -0.547446,
		35.501751, 40.204830, 33.239525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244316, 40.675133, 33.990997>,  <35.971241, 40.555153, 33.622738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244316, 40.675133, 33.990997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186169, 40.362644, 33.748161>,  <35.151279, 40.175152, 33.602459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186169, 40.362644, 33.748161>,  <35.244316, 40.675133, 33.990997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186169, 40.362644, 33.748161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650342, -0.386969, 0.653690,
		-0.745602, 0.489845, -0.451807,
		-0.145371, -0.781221, -0.607092,
		35.142559, 40.128277, 33.566032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624298, 40.516369, 34.040810>,  <35.244316, 40.675133, 33.990997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624298, 40.516369, 34.040810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.760521, 40.168602, 33.897625>,  <34.842255, 39.959942, 33.811714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.760521, 40.168602, 33.897625>,  <34.624298, 40.516369, 34.040810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760521, 40.168602, 33.897625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552615, -0.493110, 0.671908,
		-0.760682, -0.031008, -0.648384,
		0.340559, -0.869414, -0.357964,
		34.862690, 39.907776, 33.790237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043812, 40.160248, 34.026329>,  <34.624298, 40.516369, 34.040810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043812, 40.160248, 34.026329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314430, 39.869797, 33.977303>,  <34.476803, 39.695526, 33.947887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314430, 39.869797, 33.977303>,  <34.043812, 40.160248, 34.026329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314430, 39.869797, 33.977303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500589, -0.575557, 0.646641,
		-0.540090, -0.376126, -0.752883,
		0.676545, -0.726130, -0.122568,
		34.517395, 39.651958, 33.940533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643188, 39.593731, 33.786243>,  <34.043812, 40.160248, 34.026329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643188, 39.593731, 33.786243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.985706, 39.500465, 33.970585>,  <34.191219, 39.444504, 34.081192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.985706, 39.500465, 33.970585>,  <33.643188, 39.593731, 33.786243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985706, 39.500465, 33.970585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487261, -0.660593, 0.571134,
		0.171270, -0.713618, -0.679276,
		0.856297, -0.233167, 0.460858,
		34.242596, 39.430515, 34.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495636, 38.843403, 34.011204>,  <33.643188, 39.593731, 33.786243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495636, 38.843403, 34.011204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821774, 38.928837, 34.226463>,  <34.017456, 38.980095, 34.355618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821774, 38.928837, 34.226463>,  <33.495636, 38.843403, 34.011204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821774, 38.928837, 34.226463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288315, -0.656260, 0.697278,
		0.502091, -0.723675, -0.473497,
		0.815340, 0.213580, 0.538149,
		34.066376, 38.992912, 34.387909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952339, 38.169811, 34.057953>,  <33.495636, 38.843403, 34.011204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952339, 38.169811, 34.057953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050503, 38.431599, 34.344017>,  <34.109402, 38.588669, 34.515656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050503, 38.431599, 34.344017>,  <33.952339, 38.169811, 34.057953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050503, 38.431599, 34.344017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152136, -0.702576, 0.695156,
		0.957408, -0.279397, -0.072849,
		0.245406, 0.654465, 0.715159,
		34.124126, 38.627937, 34.558563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298187, 37.727489, 34.470894>,  <33.952339, 38.169811, 34.057953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298187, 37.727489, 34.470894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.192150, 38.043831, 34.691540>,  <34.128529, 38.233635, 34.823929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.192150, 38.043831, 34.691540>,  <34.298187, 37.727489, 34.470894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192150, 38.043831, 34.691540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167197, -0.601119, 0.781474,
		0.949616, 0.114935, 0.291581,
		-0.265094, 0.790851, 0.551616,
		34.112621, 38.281086, 34.857025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535820, 37.727509, 35.198597>,  <34.298187, 37.727489, 34.470894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535820, 37.727509, 35.198597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.221527, 37.974346, 35.215652>,  <34.032951, 38.122448, 35.225887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.221527, 37.974346, 35.215652>,  <34.535820, 37.727509, 35.198597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221527, 37.974346, 35.215652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339487, -0.487838, 0.804216,
		0.517076, 0.617425, 0.592806,
		-0.785736, 0.617090, 0.042641,
		33.985806, 38.159473, 35.228443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430065, 37.925884, 35.909161>,  <34.535820, 37.727509, 35.198597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430065, 37.925884, 35.909161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072529, 37.979645, 35.738056>,  <33.858006, 38.011902, 35.635395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072529, 37.979645, 35.738056>,  <34.430065, 37.925884, 35.909161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072529, 37.979645, 35.738056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411645, -0.624140, 0.664076,
		-0.177732, 0.769666, 0.613209,
		-0.893845, 0.134397, -0.427759,
		33.804375, 38.019962, 35.609730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.101479, 41.646656, 29.409023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706417, 41.659775, 29.347740>,  <36.469379, 41.667645, 29.310970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706417, 41.659775, 29.347740>,  <37.101479, 41.646656, 29.409023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706417, 41.659775, 29.347740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153377, -0.002739, 0.988164,
		0.031987, 0.999458, 0.007735,
		-0.987650, 0.032794, -0.153206,
		36.410122, 41.669613, 29.301779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896824, 42.219204, 29.695797>,  <37.101479, 41.646656, 29.409023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896824, 42.219204, 29.695797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580688, 41.975727, 29.667910>,  <36.391006, 41.829639, 29.651176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580688, 41.975727, 29.667910>,  <36.896824, 42.219204, 29.695797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580688, 41.975727, 29.667910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134369, 0.061183, 0.989041,
		-0.597757, 0.791043, -0.130145,
		-0.790336, -0.608693, -0.069719,
		36.343586, 41.793118, 29.646994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536469, 42.524986, 30.185999>,  <36.896824, 42.219204, 29.695797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536469, 42.524986, 30.185999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360340, 42.178974, 30.089804>,  <36.254665, 41.971367, 30.032085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360340, 42.178974, 30.089804>,  <36.536469, 42.524986, 30.185999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360340, 42.178974, 30.089804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320364, -0.098850, 0.942123,
		-0.838742, 0.491877, -0.233600,
		-0.440317, -0.865035, -0.240490,
		36.228245, 41.919464, 30.017656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892647, 42.428799, 30.673449>,  <36.536469, 42.524986, 30.185999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892647, 42.428799, 30.673449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932472, 42.056656, 30.532297>,  <35.956367, 41.833370, 30.447605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932472, 42.056656, 30.532297>,  <35.892647, 42.428799, 30.673449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932472, 42.056656, 30.532297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368062, -0.363923, 0.855623,
		-0.924455, 0.044689, -0.378664,
		0.099567, -0.930356, -0.352879,
		35.962341, 41.777550, 30.426434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242058, 42.079166, 30.768061>,  <35.892647, 42.428799, 30.673449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242058, 42.079166, 30.768061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527443, 41.799191, 30.755051>,  <35.698673, 41.631207, 30.747244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527443, 41.799191, 30.755051>,  <35.242058, 42.079166, 30.768061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527443, 41.799191, 30.755051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487782, -0.529459, 0.694076,
		-0.503026, -0.479337, -0.719167,
		0.713465, -0.699935, -0.032520,
		35.741482, 41.589211, 30.745293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959064, 41.360943, 30.700121>,  <35.242058, 42.079166, 30.768061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959064, 41.360943, 30.700121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328644, 41.272312, 30.824844>,  <35.550392, 41.219135, 30.899677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328644, 41.272312, 30.824844>,  <34.959064, 41.360943, 30.700121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328644, 41.272312, 30.824844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381291, -0.598648, 0.704442,
		0.030578, -0.769758, -0.637603,
		0.923950, -0.221572, 0.311807,
		35.605827, 41.205841, 30.918386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019516, 40.672661, 30.845356>,  <34.959064, 41.360943, 30.700121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019516, 40.672661, 30.845356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328484, 40.809307, 31.059523>,  <35.513863, 40.891293, 31.188023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328484, 40.809307, 31.059523>,  <35.019516, 40.672661, 30.845356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328484, 40.809307, 31.059523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310065, -0.532898, 0.787324,
		0.554281, -0.774158, -0.305698,
		0.772419, 0.341613, 0.535415,
		35.560211, 40.911789, 31.220146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443684, 40.111401, 31.133169>,  <35.019516, 40.672661, 30.845356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443684, 40.111401, 31.133169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581760, 40.408596, 31.362537>,  <35.664608, 40.586914, 31.500158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581760, 40.408596, 31.362537>,  <35.443684, 40.111401, 31.133169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581760, 40.408596, 31.362537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248353, -0.516884, 0.819238,
		0.905075, -0.425208, 0.006097,
		0.345196, 0.742986, 0.573421,
		35.685318, 40.631493, 31.534563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040688, 39.885815, 31.607893>,  <35.443684, 40.111401, 31.133169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040688, 39.885815, 31.607893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846359, 40.203197, 31.754538>,  <35.729763, 40.393627, 31.842525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846359, 40.203197, 31.754538>,  <36.040688, 39.885815, 31.607893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846359, 40.203197, 31.754538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271278, -0.535601, 0.799712,
		0.830896, 0.289061, 0.475452,
		-0.485819, 0.793458, 0.366613,
		35.700615, 40.441235, 31.864521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764473, 39.694054, 31.690050>,  <36.040688, 39.885815, 31.607893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764473, 39.694054, 31.690050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081215, 39.450020, 31.701096>,  <37.271259, 39.303600, 31.707724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081215, 39.450020, 31.701096>,  <36.764473, 39.694054, 31.690050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081215, 39.450020, 31.701096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273047, 0.313230, -0.909578,
		0.546268, 0.727795, 0.414615,
		0.791856, -0.610083, 0.027615,
		37.318771, 39.266994, 31.709379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370747, 40.096420, 31.509104>,  <36.764473, 39.694054, 31.690050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370747, 40.096420, 31.509104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496872, 39.726929, 31.422113>,  <37.572548, 39.505234, 31.369919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496872, 39.726929, 31.422113>,  <37.370747, 40.096420, 31.509104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496872, 39.726929, 31.422113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582882, 0.369359, -0.723756,
		0.748885, 0.101443, 0.654890,
		0.315310, -0.923733, -0.217478,
		37.591465, 39.449810, 31.356871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963345, 40.199883, 31.192862>,  <37.370747, 40.096420, 31.509104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963345, 40.199883, 31.192862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911011, 39.815990, 31.093422>,  <37.879612, 39.585655, 31.033758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911011, 39.815990, 31.093422>,  <37.963345, 40.199883, 31.192862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911011, 39.815990, 31.093422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532670, 0.143436, -0.834080,
		0.836149, -0.241546, 0.492453,
		-0.130833, -0.959730, -0.248598,
		37.871761, 39.528072, 31.018843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550072, 39.944473, 30.984146>,  <37.963345, 40.199883, 31.192862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550072, 39.944473, 30.984146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285942, 39.705254, 30.802460>,  <38.127464, 39.561722, 30.693449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285942, 39.705254, 30.802460>,  <38.550072, 39.944473, 30.984146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285942, 39.705254, 30.802460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491636, 0.112950, -0.863445,
		0.567682, -0.793464, 0.219437,
		-0.660327, -0.598045, -0.454215,
		38.087845, 39.525841, 30.666195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942444, 39.548515, 30.592512>,  <38.550072, 39.944473, 30.984146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942444, 39.548515, 30.592512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585918, 39.488800, 30.421274>,  <38.372002, 39.452972, 30.318531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585918, 39.488800, 30.421274>,  <38.942444, 39.548515, 30.592512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585918, 39.488800, 30.421274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413590, 0.119086, -0.902642,
		0.185738, -0.981596, -0.044398,
		-0.891316, -0.149292, -0.428097,
		38.318523, 39.444012, 30.292845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936840, 38.925838, 30.107809>,  <38.942444, 39.548515, 30.592512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936840, 38.925838, 30.107809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624207, 39.138443, 29.977194>,  <38.436626, 39.266006, 29.898825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624207, 39.138443, 29.977194>,  <38.936840, 38.925838, 30.107809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624207, 39.138443, 29.977194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392614, 0.012359, -0.919621,
		-0.484755, -0.846960, -0.218339,
		-0.781580, 0.531514, -0.326537,
		38.389732, 39.297897, 29.879232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916508, 38.748043, 29.470118>,  <38.936840, 38.925838, 30.107809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916508, 38.748043, 29.470118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667866, 39.061375, 29.470270>,  <38.518681, 39.249374, 29.470362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667866, 39.061375, 29.470270>,  <38.916508, 38.748043, 29.470118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667866, 39.061375, 29.470270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453902, 0.360585, -0.814832,
		-0.638423, -0.506328, -0.579697,
		-0.621602, 0.783333, 0.000382,
		38.481384, 39.296375, 29.470385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652714, 38.795357, 28.834139>,  <38.916508, 38.748043, 29.470118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652714, 38.795357, 28.834139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605755, 39.163628, 28.983042>,  <38.577579, 39.384590, 29.072384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605755, 39.163628, 28.983042>,  <38.652714, 38.795357, 28.834139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605755, 39.163628, 28.983042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498056, 0.378883, -0.779992,
		-0.859161, 0.093834, -0.503029,
		-0.117400, 0.920675, 0.372256,
		38.570534, 39.439831, 29.094719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191719, 39.106709, 28.340490>,  <38.652714, 38.795357, 28.834139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191719, 39.106709, 28.340490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382771, 39.396214, 28.539701>,  <38.497402, 39.569916, 28.659227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382771, 39.396214, 28.539701>,  <38.191719, 39.106709, 28.340490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382771, 39.396214, 28.539701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294348, 0.402276, -0.866910,
		-0.827785, 0.560656, -0.020900,
		0.477631, 0.723767, 0.498026,
		38.526058, 39.613342, 28.689110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952076, 39.735889, 28.027491>,  <38.191719, 39.106709, 28.340490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952076, 39.735889, 28.027491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304749, 39.825886, 28.193390>,  <38.516354, 39.879883, 28.292929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304749, 39.825886, 28.193390>,  <37.952076, 39.735889, 28.027491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304749, 39.825886, 28.193390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300701, 0.409449, -0.861354,
		-0.363614, 0.884155, 0.293350,
		0.881682, 0.224990, 0.414748,
		38.569252, 39.893383, 28.317814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063599, 40.491306, 27.912693>,  <37.952076, 39.735889, 28.027491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063599, 40.491306, 27.912693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423416, 40.336018, 27.992796>,  <38.639309, 40.242844, 28.040857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423416, 40.336018, 27.992796>,  <38.063599, 40.491306, 27.912693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423416, 40.336018, 27.992796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405509, 0.571679, -0.713264,
		0.162420, 0.722820, 0.671678,
		0.899546, -0.388219, 0.200258,
		38.693279, 40.219551, 28.052874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610165, 40.990517, 28.084635>,  <38.063599, 40.491306, 27.912693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610165, 40.990517, 28.084635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824520, 40.674202, 27.966326>,  <38.953133, 40.484413, 27.895340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824520, 40.674202, 27.966326>,  <38.610165, 40.990517, 28.084635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824520, 40.674202, 27.966326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533036, 0.588566, -0.607835,
		0.654747, 0.168077, 0.736924,
		0.535892, -0.790784, -0.295770,
		38.985287, 40.436966, 27.877594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325489, 41.257839, 28.194468>,  <38.610165, 40.990517, 28.084635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325489, 41.257839, 28.194468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324509, 40.944363, 27.946009>,  <39.323921, 40.756279, 27.796932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324509, 40.944363, 27.946009>,  <39.325489, 41.257839, 28.194468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324509, 40.944363, 27.946009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697549, 0.443734, -0.562607,
		0.716533, -0.434662, 0.545572,
		-0.002455, -0.783689, -0.621148,
		39.323772, 40.709255, 27.759665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081997, 41.138737, 28.036257>,  <39.325489, 41.257839, 28.194468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081997, 41.138737, 28.036257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871117, 40.975704, 27.738012>,  <39.744587, 40.877884, 27.559065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871117, 40.975704, 27.738012>,  <40.081997, 41.138737, 28.036257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871117, 40.975704, 27.738012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473195, 0.587999, -0.656006,
		0.705792, -0.698668, -0.117131,
		-0.527204, -0.407579, -0.745611,
		39.712955, 40.853432, 27.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.968636, 38.179417, 24.945324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155766, 38.415928, 25.208086>,  <34.268044, 38.557835, 25.365744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155766, 38.415928, 25.208086>,  <33.968636, 38.179417, 24.945324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155766, 38.415928, 25.208086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270752, -0.611644, 0.743361,
		0.841329, -0.525621, -0.126051,
		0.467824, 0.591282, 0.656906,
		34.296112, 38.593311, 25.405157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401382, 37.772812, 25.346684>,  <33.968636, 38.179417, 24.945324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401382, 37.772812, 25.346684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337841, 38.110233, 25.551889>,  <34.299717, 38.312687, 25.675013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337841, 38.110233, 25.551889>,  <34.401382, 37.772812, 25.346684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337841, 38.110233, 25.551889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149955, -0.534197, 0.831954,
		0.975848, 0.055231, 0.211354,
		-0.158854, 0.843554, 0.513013,
		34.290184, 38.363300, 25.705793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401527, 37.575882, 25.914164>,  <34.401382, 37.772812, 25.346684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401527, 37.575882, 25.914164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272270, 37.942123, 26.009871>,  <34.194717, 38.161869, 26.067295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272270, 37.942123, 26.009871>,  <34.401527, 37.575882, 25.914164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272270, 37.942123, 26.009871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130866, -0.293638, 0.946917,
		0.937258, 0.274678, 0.214708,
		-0.323144, 0.915603, 0.239268,
		34.175327, 38.216805, 26.081652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770439, 37.758015, 26.464363>,  <34.401527, 37.575882, 25.914164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770439, 37.758015, 26.464363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.441471, 37.984688, 26.484352>,  <34.244091, 38.120689, 26.496346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.441471, 37.984688, 26.484352>,  <34.770439, 37.758015, 26.464363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441471, 37.984688, 26.484352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092727, -0.220203, 0.971037,
		0.561271, 0.793967, 0.233646,
		-0.822421, 0.566680, 0.049971,
		34.194744, 38.154694, 26.499344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846630, 38.272232, 27.014311>,  <34.770439, 37.758015, 26.464363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846630, 38.272232, 27.014311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.454399, 38.222633, 26.953516>,  <34.219063, 38.192875, 26.917040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.454399, 38.222633, 26.953516>,  <34.846630, 38.272232, 27.014311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454399, 38.222633, 26.953516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134703, -0.137570, 0.981290,
		-0.142582, 0.982701, 0.118196,
		-0.980574, -0.123993, -0.151988,
		34.160229, 38.185436, 26.907919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549419, 38.570206, 27.647181>,  <34.846630, 38.272232, 27.014311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549419, 38.570206, 27.647181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.237267, 38.372757, 27.493637>,  <34.049976, 38.254288, 27.401510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.237267, 38.372757, 27.493637>,  <34.549419, 38.570206, 27.647181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237267, 38.372757, 27.493637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282446, -0.269423, 0.920671,
		-0.557883, 0.826891, 0.070831,
		-0.780378, -0.493621, -0.383859,
		34.003155, 38.224670, 27.378479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878033, 38.788261, 27.888250>,  <34.549419, 38.570206, 27.647181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878033, 38.788261, 27.888250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806301, 38.415253, 27.762873>,  <33.763260, 38.191448, 27.687645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806301, 38.415253, 27.762873>,  <33.878033, 38.788261, 27.888250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806301, 38.415253, 27.762873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239081, -0.267749, 0.933355,
		-0.954296, 0.242318, -0.174932,
		-0.179331, -0.932519, -0.313446,
		33.752502, 38.135498, 27.668839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157700, 38.547035, 28.005209>,  <33.878033, 38.788261, 27.888250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157700, 38.547035, 28.005209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.383038, 38.216854, 27.991020>,  <33.518242, 38.018745, 27.982506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.383038, 38.216854, 27.991020>,  <33.157700, 38.547035, 28.005209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383038, 38.216854, 27.991020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353680, -0.279733, 0.892558,
		-0.746691, -0.490276, -0.449535,
		0.563350, -0.825457, -0.035473,
		33.552044, 37.969215, 27.980379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650169, 38.055431, 28.152235>,  <33.157700, 38.547035, 28.005209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650169, 38.055431, 28.152235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995117, 37.859531, 28.203554>,  <33.202087, 37.741989, 28.234346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995117, 37.859531, 28.203554>,  <32.650169, 38.055431, 28.152235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995117, 37.859531, 28.203554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340884, -0.374323, 0.862369,
		-0.374323, -0.787416, -0.489753,
		-0.862369, 0.489753, -0.128300,
		33.253826, 37.712605, 28.242044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455872, 37.275944, 28.236057>,  <32.650169, 38.055431, 28.152235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455872, 37.275944, 28.236057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816940, 37.352661, 28.390144>,  <33.033581, 37.398689, 28.482597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816940, 37.352661, 28.390144>,  <32.455872, 37.275944, 28.236057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816940, 37.352661, 28.390144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229721, -0.542192, 0.808242,
		0.363876, -0.818073, -0.445365,
		0.902676, 0.191790, 0.385219,
		33.087742, 37.410198, 28.505711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609669, 36.650726, 28.450193>,  <32.455872, 37.275944, 28.236057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609669, 36.650726, 28.450193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.853420, 36.906849, 28.637241>,  <32.999672, 37.060524, 28.749470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.853420, 36.906849, 28.637241>,  <32.609669, 36.650726, 28.450193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853420, 36.906849, 28.637241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043745, -0.561721, 0.826169,
		0.791675, -0.523902, -0.314288,
		0.609374, 0.640309, 0.467619,
		33.036232, 37.098942, 28.777527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124908, 36.307480, 28.802408>,  <32.609669, 36.650726, 28.450193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124908, 36.307480, 28.802408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.117626, 36.654449, 29.001305>,  <33.113258, 36.862629, 29.120644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.117626, 36.654449, 29.001305>,  <33.124908, 36.307480, 28.802408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117626, 36.654449, 29.001305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098990, -0.496445, 0.862406,
		0.994922, -0.033522, 0.094904,
		-0.018205, 0.867421, 0.497242,
		33.112164, 36.914677, 29.150476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559986, 36.090874, 29.414934>,  <33.124908, 36.307480, 28.802408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559986, 36.090874, 29.414934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362339, 36.433765, 29.472906>,  <33.243752, 36.639500, 29.507689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362339, 36.433765, 29.472906>,  <33.559986, 36.090874, 29.414934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362339, 36.433765, 29.472906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052172, -0.195637, 0.979288,
		0.867826, 0.476326, 0.141391,
		-0.494122, 0.857228, 0.144928,
		33.214104, 36.690933, 29.516384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944283, 36.393257, 29.967672>,  <33.559986, 36.090874, 29.414934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944283, 36.393257, 29.967672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.568752, 36.530991, 29.965216>,  <33.343433, 36.613632, 29.963741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.568752, 36.530991, 29.965216>,  <33.944283, 36.393257, 29.967672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568752, 36.530991, 29.965216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065812, -0.161873, 0.984615,
		0.338043, 0.924787, 0.174633,
		-0.938827, 0.344335, -0.006142,
		33.287106, 36.634293, 29.963373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541630, 36.570824, 30.283051>,  <33.944283, 36.393257, 29.967672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541630, 36.570824, 30.283051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797592, 36.264217, 30.304884>,  <34.951168, 36.080254, 30.317984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797592, 36.264217, 30.304884>,  <34.541630, 36.570824, 30.283051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797592, 36.264217, 30.304884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265950, 0.154259, -0.951565,
		0.720969, 0.623424, 0.302565,
		0.639902, -0.766516, 0.054584,
		34.989563, 36.034264, 30.321259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223141, 36.748444, 29.940269>,  <34.541630, 36.570824, 30.283051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223141, 36.748444, 29.940269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.231091, 36.348614, 29.948740>,  <35.235859, 36.108715, 29.953823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.231091, 36.348614, 29.948740>,  <35.223141, 36.748444, 29.940269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231091, 36.348614, 29.948740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465430, -0.009497, -0.885033,
		0.884861, 0.027443, 0.465045,
		0.019872, -0.999578, 0.021176,
		35.237053, 36.048740, 29.955093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877201, 36.549026, 29.931345>,  <35.223141, 36.748444, 29.940269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877201, 36.549026, 29.931345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661453, 36.252426, 29.771717>,  <35.532005, 36.074467, 29.675941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661453, 36.252426, 29.771717>,  <35.877201, 36.549026, 29.931345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661453, 36.252426, 29.771717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551192, 0.047390, -0.833032,
		0.636606, -0.669276, 0.383148,
		-0.539371, -0.741501, -0.399069,
		35.499641, 36.029976, 29.651997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325901, 36.279568, 29.489094>,  <35.877201, 36.549026, 29.931345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325901, 36.279568, 29.489094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.987949, 36.093727, 29.383020>,  <35.785179, 35.982224, 29.319376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.987949, 36.093727, 29.383020>,  <36.325901, 36.279568, 29.489094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987949, 36.093727, 29.383020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386929, -0.188429, -0.902652,
		0.369402, -0.865242, 0.338967,
		-0.844884, -0.464597, -0.265181,
		35.734486, 35.954350, 29.303467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553501, 35.515030, 29.169212>,  <36.325901, 36.279568, 29.489094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553501, 35.515030, 29.169212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201977, 35.624142, 29.012606>,  <35.991062, 35.689610, 28.918642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201977, 35.624142, 29.012606>,  <36.553501, 35.515030, 29.169212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201977, 35.624142, 29.012606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358817, -0.163100, -0.919048,
		-0.314554, -0.948151, 0.045456,
		-0.878810, 0.272780, -0.391516,
		35.938335, 35.705975, 28.895151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563725, 35.224506, 28.489325>,  <36.553501, 35.515030, 29.169212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563725, 35.224506, 28.489325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276955, 35.502438, 28.466566>,  <36.104893, 35.669197, 28.452911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276955, 35.502438, 28.466566>,  <36.563725, 35.224506, 28.489325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276955, 35.502438, 28.466566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283227, 0.215716, -0.934478,
		-0.637028, -0.686062, -0.351445,
		-0.716922, 0.694828, -0.056894,
		36.061878, 35.710884, 28.449497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249649, 35.116089, 27.886679>,  <36.563725, 35.224506, 28.489325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249649, 35.116089, 27.886679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135723, 35.489326, 27.974518>,  <36.067368, 35.713268, 28.027222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135723, 35.489326, 27.974518>,  <36.249649, 35.116089, 27.886679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135723, 35.489326, 27.974518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283930, 0.300924, -0.910400,
		-0.915568, -0.196944, -0.350639,
		-0.284814, 0.933091, 0.219598,
		36.050278, 35.769253, 28.040398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787270, 35.363895, 27.309500>,  <36.249649, 35.116089, 27.886679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787270, 35.363895, 27.309500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947968, 35.692112, 27.472132>,  <36.044388, 35.889042, 27.569712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947968, 35.692112, 27.472132>,  <35.787270, 35.363895, 27.309500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947968, 35.692112, 27.472132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319002, 0.290777, -0.902046,
		-0.858391, 0.492095, -0.144936,
		0.401748, 0.820543, 0.406580,
		36.068493, 35.938274, 27.594107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609116, 36.018089, 26.923183>,  <35.787270, 35.363895, 27.309500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609116, 36.018089, 26.923183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943462, 36.120808, 27.117249>,  <36.144070, 36.182438, 27.233688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943462, 36.120808, 27.117249>,  <35.609116, 36.018089, 26.923183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943462, 36.120808, 27.117249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275485, 0.568234, -0.775383,
		-0.474800, 0.781772, 0.404225,
		0.835867, 0.256793, 0.485164,
		36.194221, 36.197845, 27.262798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732372, 36.796829, 26.985477>,  <35.609116, 36.018089, 26.923183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732372, 36.796829, 26.985477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095005, 36.628124, 26.979490>,  <36.312584, 36.526901, 26.975897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095005, 36.628124, 26.979490>,  <35.732372, 36.796829, 26.985477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095005, 36.628124, 26.979490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253209, 0.571964, -0.780220,
		0.337632, 0.703542, 0.625327,
		0.906581, -0.421765, -0.014970,
		36.366978, 36.501595, 26.974998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296299, 37.318939, 27.111036>,  <35.732372, 36.796829, 26.985477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296299, 37.318939, 27.111036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.401749, 36.998478, 26.896130>,  <36.465019, 36.806202, 26.767185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.401749, 36.998478, 26.896130>,  <36.296299, 37.318939, 27.111036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401749, 36.998478, 26.896130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285150, 0.596801, -0.750012,
		0.921515, 0.044523, 0.385782,
		0.263628, -0.801153, -0.537266,
		36.480839, 36.758133, 26.734949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006462, 37.458000, 26.972986>,  <36.296299, 37.318939, 27.111036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006462, 37.458000, 26.972986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882458, 37.183117, 26.710190>,  <36.808056, 37.018185, 26.552513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882458, 37.183117, 26.710190>,  <37.006462, 37.458000, 26.972986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882458, 37.183117, 26.710190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591778, 0.401372, -0.699071,
		0.744107, -0.605508, 0.282250,
		-0.310006, -0.687212, -0.656990,
		36.789455, 36.976952, 26.513092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571579, 37.289768, 26.652557>,  <37.006462, 37.458000, 26.972986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571579, 37.289768, 26.652557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300426, 37.186089, 26.377373>,  <37.137733, 37.123882, 26.212261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300426, 37.186089, 26.377373>,  <37.571579, 37.289768, 26.652557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300426, 37.186089, 26.377373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607956, 0.328513, -0.722820,
		0.413358, -0.908238, -0.065111,
		-0.677882, -0.259199, -0.687962,
		37.097061, 37.108330, 26.170984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994019, 37.110756, 25.899761>,  <37.571579, 37.289768, 26.652557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994019, 37.110756, 25.899761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604034, 37.182831, 25.847618>,  <37.370045, 37.226074, 25.816332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604034, 37.182831, 25.847618>,  <37.994019, 37.110756, 25.899761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604034, 37.182831, 25.847618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186818, 0.345536, -0.919622,
		-0.120659, -0.920944, -0.370544,
		-0.974957, 0.180185, -0.130357,
		37.311546, 37.236885, 25.808512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203815, 36.400814, 25.754147>,  <37.994019, 37.110756, 25.899761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203815, 36.400814, 25.754147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596226, 36.348366, 25.811272>,  <38.831673, 36.316898, 25.845547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596226, 36.348366, 25.811272>,  <38.203815, 36.400814, 25.754147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596226, 36.348366, 25.811272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176588, -0.300276, 0.937364,
		-0.080021, -0.944798, -0.317732,
		0.981027, -0.131116, 0.142811,
		38.890533, 36.309032, 25.854115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304348, 35.688335, 26.021282>,  <38.203815, 36.400814, 25.754147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304348, 35.688335, 26.021282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633465, 35.885822, 26.133892>,  <38.830936, 36.004314, 26.201458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633465, 35.885822, 26.133892>,  <38.304348, 35.688335, 26.021282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633465, 35.885822, 26.133892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004503, -0.489666, 0.871898,
		0.568320, -0.718661, -0.400672,
		0.822795, 0.493713, 0.281523,
		38.880302, 36.033936, 26.218349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731304, 35.289322, 26.545483>,  <38.304348, 35.688335, 26.021282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731304, 35.289322, 26.545483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895939, 35.644703, 26.626732>,  <38.994720, 35.857929, 26.675482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895939, 35.644703, 26.626732>,  <38.731304, 35.289322, 26.545483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895939, 35.644703, 26.626732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039793, -0.205144, 0.977922,
		0.910503, -0.410580, -0.049080,
		0.411584, 0.888448, 0.203123,
		39.019413, 35.911236, 26.687668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190556, 35.173454, 26.998016>,  <38.731304, 35.289322, 26.545483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190556, 35.173454, 26.998016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160488, 35.566017, 27.068666>,  <39.142448, 35.801556, 27.111055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160488, 35.566017, 27.068666>,  <39.190556, 35.173454, 26.998016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160488, 35.566017, 27.068666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060799, -0.172285, 0.983169,
		0.995316, 0.084641, -0.046718,
		-0.075167, 0.981404, 0.176624,
		39.137939, 35.860439, 27.121655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826408, 35.311356, 27.395081>,  <39.190556, 35.173454, 26.998016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826408, 35.311356, 27.395081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578148, 35.621929, 27.438810>,  <39.429192, 35.808273, 27.465048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578148, 35.621929, 27.438810>,  <39.826408, 35.311356, 27.395081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578148, 35.621929, 27.438810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354145, 0.153187, 0.922559,
		0.699555, 0.611302, -0.370044,
		-0.620648, 0.776430, 0.109326,
		39.391953, 35.854858, 27.471609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201298, 35.770237, 27.781351>,  <39.826408, 35.311356, 27.395081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201298, 35.770237, 27.781351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829678, 35.911053, 27.826841>,  <39.606705, 35.995541, 27.854136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829678, 35.911053, 27.826841>,  <40.201298, 35.770237, 27.781351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829678, 35.911053, 27.826841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239382, 0.337678, 0.910313,
		0.282060, 0.872952, -0.397991,
		-0.929052, 0.352035, 0.113724,
		39.550961, 36.016663, 27.860958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291805, 36.364586, 27.938530>,  <40.201298, 35.770237, 27.781351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291805, 36.364586, 27.938530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928375, 36.268494, 28.075220>,  <39.710316, 36.210838, 28.157234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928375, 36.268494, 28.075220>,  <40.291805, 36.364586, 27.938530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928375, 36.268494, 28.075220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281365, 0.252696, 0.925731,
		-0.308743, 0.937248, -0.162001,
		-0.908577, -0.240232, 0.341727,
		39.655804, 36.196423, 28.177738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048691, 36.937881, 28.361244>,  <40.291805, 36.364586, 27.938530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048691, 36.937881, 28.361244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820148, 36.630627, 28.476841>,  <39.683025, 36.446274, 28.546200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820148, 36.630627, 28.476841>,  <40.048691, 36.937881, 28.361244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820148, 36.630627, 28.476841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085647, 0.294397, 0.951838,
		-0.816224, 0.568586, -0.102415,
		-0.571352, -0.768141, 0.288992,
		39.648743, 36.400185, 28.563540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456791, 37.177219, 28.779991>,  <40.048691, 36.937881, 28.361244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456791, 37.177219, 28.779991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533161, 36.797241, 28.878912>,  <39.578983, 36.569256, 28.938265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533161, 36.797241, 28.878912>,  <39.456791, 37.177219, 28.779991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533161, 36.797241, 28.878912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111285, 0.271258, 0.956051,
		-0.975277, -0.155010, 0.157504,
		0.190921, -0.949943, 0.247302,
		39.590439, 36.512257, 28.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261707, 37.167572, 29.536623>,  <39.456791, 37.177219, 28.779991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261707, 37.167572, 29.536623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378841, 36.789345, 29.479847>,  <39.449123, 36.562408, 29.445782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378841, 36.789345, 29.479847>,  <39.261707, 37.167572, 29.536623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378841, 36.789345, 29.479847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028071, -0.156883, 0.987218,
		-0.955750, -0.285111, -0.072484,
		0.292838, -0.945568, -0.141938,
		39.466694, 36.505672, 29.437265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730900, 36.652184, 29.822992>,  <39.261707, 37.167572, 29.536623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730900, 36.652184, 29.822992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102482, 36.504578, 29.811264>,  <39.325432, 36.416012, 29.804228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102482, 36.504578, 29.811264>,  <38.730900, 36.652184, 29.822992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102482, 36.504578, 29.811264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064883, -0.240290, 0.968530,
		-0.364453, -0.897822, -0.247162,
		0.928958, -0.369020, -0.029320,
		39.381168, 36.393871, 29.802467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696785, 36.010792, 30.053019>,  <38.730900, 36.652184, 29.822992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696785, 36.010792, 30.053019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076317, 36.122128, 30.112688>,  <39.304035, 36.188927, 30.148489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076317, 36.122128, 30.112688>,  <38.696785, 36.010792, 30.053019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076317, 36.122128, 30.112688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073134, -0.265862, 0.961233,
		0.307207, -0.922955, -0.231901,
		0.948829, 0.278337, 0.149174,
		39.360966, 36.205627, 30.157440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990299, 35.406929, 30.398418>,  <38.696785, 36.010792, 30.053019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990299, 35.406929, 30.398418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223480, 35.722004, 30.478140>,  <39.363388, 35.911049, 30.525972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223480, 35.722004, 30.478140>,  <38.990299, 35.406929, 30.398418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223480, 35.722004, 30.478140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036340, -0.219775, 0.974874,
		0.811696, -0.575544, -0.099493,
		0.582949, 0.787685, 0.199306,
		39.398365, 35.958309, 30.537931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424126, 35.056709, 30.933615>,  <38.990299, 35.406929, 30.398418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424126, 35.056709, 30.933615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462074, 35.454868, 30.938950>,  <39.484844, 35.693764, 30.942150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462074, 35.454868, 30.938950>,  <39.424126, 35.056709, 30.933615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462074, 35.454868, 30.938950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027579, -0.016018, 0.999491,
		0.995107, -0.094454, -0.028972,
		0.094870, 0.995400, 0.013335,
		39.490536, 35.753487, 30.942949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.697723, 40.915478, 27.351379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.338223, 40.876507, 27.180378>,  <40.122524, 40.853127, 27.077776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.338223, 40.876507, 27.180378>,  <40.697723, 40.915478, 27.351379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338223, 40.876507, 27.180378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405782, 0.184564, -0.895141,
		0.166110, -0.977980, -0.126344,
		-0.898748, -0.097423, -0.427505,
		40.068600, 40.847279, 27.052126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768639, 40.462448, 26.770285>,  <40.697723, 40.915478, 27.351379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768639, 40.462448, 26.770285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.453350, 40.698021, 26.698877>,  <40.264175, 40.839363, 26.656033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.453350, 40.698021, 26.698877>,  <40.768639, 40.462448, 26.770285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453350, 40.698021, 26.698877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218685, -0.003099, -0.975791,
		-0.575223, -0.808180, -0.126347,
		-0.788223, 0.588928, -0.178519,
		40.216885, 40.874699, 26.645321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492062, 40.201126, 26.183437>,  <40.768639, 40.462448, 26.770285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492062, 40.201126, 26.183437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.305347, 40.554852, 26.179522>,  <40.193317, 40.767086, 26.177172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.305347, 40.554852, 26.179522>,  <40.492062, 40.201126, 26.183437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305347, 40.554852, 26.179522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045689, 0.013058, -0.998870,
		-0.883190, -0.466705, -0.046499,
		-0.466785, 0.884317, -0.009790,
		40.165314, 40.820145, 26.176584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975460, 40.141632, 25.675762>,  <40.492062, 40.201126, 26.183437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975460, 40.141632, 25.675762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067921, 40.529163, 25.711391>,  <40.123398, 40.761684, 25.732769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067921, 40.529163, 25.711391>,  <39.975460, 40.141632, 25.675762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067921, 40.529163, 25.711391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033497, 0.099424, -0.994481,
		-0.972342, 0.226888, 0.055434,
		0.231147, 0.968832, 0.089074,
		40.137264, 40.819813, 25.738113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499084, 40.406448, 25.270269>,  <39.975460, 40.141632, 25.675762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499084, 40.406448, 25.270269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.785221, 40.684082, 25.302610>,  <39.956902, 40.850662, 25.322014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.785221, 40.684082, 25.302610>,  <39.499084, 40.406448, 25.270269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785221, 40.684082, 25.302610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050054, 0.064509, -0.996661,
		-0.696982, 0.716998, 0.011404,
		0.715339, 0.694084, 0.080851,
		39.999825, 40.892307, 25.326866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446274, 40.837391, 24.711380>,  <39.499084, 40.406448, 25.270269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446274, 40.837391, 24.711380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818283, 40.909428, 24.839518>,  <40.041489, 40.952648, 24.916401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818283, 40.909428, 24.839518>,  <39.446274, 40.837391, 24.711380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818283, 40.909428, 24.839518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278906, 0.221725, -0.934371,
		-0.239300, 0.958335, 0.155982,
		0.930025, 0.180091, 0.320344,
		40.097290, 40.963455, 24.935621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639793, 41.524406, 24.370968>,  <39.446274, 40.837391, 24.711380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639793, 41.524406, 24.370968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980400, 41.340790, 24.472321>,  <40.184765, 41.230621, 24.533133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980400, 41.340790, 24.472321>,  <39.639793, 41.524406, 24.370968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980400, 41.340790, 24.472321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361855, 0.164764, -0.917558,
		0.379449, 0.873003, 0.306406,
		0.851516, -0.459041, 0.253381,
		40.235855, 41.203079, 24.548334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166374, 42.020554, 24.338892>,  <39.639793, 41.524406, 24.370968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166374, 42.020554, 24.338892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386391, 41.686749, 24.326029>,  <40.518402, 41.486465, 24.318310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386391, 41.686749, 24.326029>,  <40.166374, 42.020554, 24.338892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386391, 41.686749, 24.326029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368498, 0.277079, -0.887376,
		0.749440, 0.476245, 0.459924,
		0.550044, -0.834516, -0.032159,
		40.551403, 41.436394, 24.316381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827641, 42.296116, 24.141127>,  <40.166374, 42.020554, 24.338892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827641, 42.296116, 24.141127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796310, 41.909370, 24.043941>,  <40.777512, 41.677322, 23.985630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796310, 41.909370, 24.043941>,  <40.827641, 42.296116, 24.141127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796310, 41.909370, 24.043941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496462, 0.173510, -0.850541,
		0.864517, -0.187243, 0.466423,
		-0.078329, -0.966868, -0.242961,
		40.772812, 41.619308, 23.971052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318665, 42.163700, 23.691008>,  <40.827641, 42.296116, 24.141127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318665, 42.163700, 23.691008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.144157, 41.806225, 23.649065>,  <41.039452, 41.591740, 23.623899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.144157, 41.806225, 23.649065>,  <41.318665, 42.163700, 23.691008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144157, 41.806225, 23.649065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335310, -0.053328, -0.940597,
		0.835007, -0.445512, 0.322927,
		-0.436269, -0.893686, -0.104855,
		41.013275, 41.538120, 23.617609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860485, 41.607815, 23.392509>,  <41.318665, 42.163700, 23.691008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860485, 41.607815, 23.392509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.483063, 41.498383, 23.317833>,  <41.256607, 41.432724, 23.273027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.483063, 41.498383, 23.317833>,  <41.860485, 41.607815, 23.392509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483063, 41.498383, 23.317833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244657, -0.195764, -0.949642,
		0.223252, -0.941718, 0.251647,
		-0.943558, -0.273577, -0.186693,
		41.199997, 41.416309, 23.261826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969116, 41.031929, 22.891708>,  <41.860485, 41.607815, 23.392509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969116, 41.031929, 22.891708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580090, 41.120583, 22.863445>,  <41.346672, 41.173775, 22.846487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580090, 41.120583, 22.863445>,  <41.969116, 41.031929, 22.891708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580090, 41.120583, 22.863445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013273, -0.250374, -0.968058,
		-0.232243, -0.942440, 0.240563,
		-0.972567, 0.221632, -0.070657,
		41.288319, 41.187073, 22.842247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718906, 40.500755, 22.391273>,  <41.969116, 41.031929, 22.891708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718906, 40.500755, 22.391273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447952, 40.794483, 22.373705>,  <41.285381, 40.970718, 22.363163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447952, 40.794483, 22.373705>,  <41.718906, 40.500755, 22.391273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447952, 40.794483, 22.373705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009594, -0.068520, -0.997604,
		-0.735567, -0.675339, 0.053460,
		-0.677384, 0.734317, -0.043922,
		41.244736, 41.014778, 22.360529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225403, 40.221581, 21.964979>,  <41.718906, 40.500755, 22.391273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225403, 40.221581, 21.964979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207264, 40.621136, 21.959707>,  <41.196381, 40.860867, 21.956543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.207264, 40.621136, 21.959707>,  <41.225403, 40.221581, 21.964979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207264, 40.621136, 21.959707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082300, -0.016886, -0.996465,
		-0.995575, -0.044101, 0.082974,
		-0.045346, 0.998884, -0.013181,
		41.193661, 40.920799, 21.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692009, 39.847874, 22.081228>,  <41.225403, 40.221581, 21.964979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692009, 39.847874, 22.081228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526009, 39.618870, 21.798382>,  <40.426411, 39.481468, 21.628674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526009, 39.618870, 21.798382>,  <40.692009, 39.847874, 22.081228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526009, 39.618870, 21.798382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008324, -0.774778, 0.632178,
		-0.909785, 0.268237, 0.316765,
		-0.414996, -0.572509, -0.707114,
		40.401508, 39.447117, 21.586248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301113, 39.603329, 22.488838>,  <40.692009, 39.847874, 22.081228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301113, 39.603329, 22.488838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254963, 39.365643, 22.170443>,  <40.227272, 39.223030, 21.979406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254963, 39.365643, 22.170443>,  <40.301113, 39.603329, 22.488838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254963, 39.365643, 22.170443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254398, -0.756937, 0.601938,
		-0.960193, 0.271945, -0.063837,
		-0.115374, -0.594216, -0.795988,
		40.220352, 39.187378, 21.931646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622868, 39.229023, 22.571690>,  <40.301113, 39.603329, 22.488838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622868, 39.229023, 22.571690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853939, 39.019203, 22.321527>,  <39.992580, 38.893311, 22.171431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853939, 39.019203, 22.321527>,  <39.622868, 39.229023, 22.571690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853939, 39.019203, 22.321527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195319, -0.832753, 0.518047,
		-0.792552, -0.177111, -0.583518,
		0.577678, -0.524551, -0.625407,
		40.027245, 38.861839, 22.133905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252075, 38.630661, 22.291758>,  <39.622868, 39.229023, 22.571690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252075, 38.630661, 22.291758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641346, 38.551273, 22.245224>,  <39.874908, 38.503639, 22.217304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641346, 38.551273, 22.245224>,  <39.252075, 38.630661, 22.291758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641346, 38.551273, 22.245224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152521, -0.935201, 0.319588,
		-0.172223, -0.293273, -0.940388,
		0.973179, -0.198469, -0.116333,
		39.933300, 38.491734, 22.210323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157623, 37.884411, 22.248276>,  <39.252075, 38.630661, 22.291758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157623, 37.884411, 22.248276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551529, 37.926174, 22.303907>,  <39.787872, 37.951233, 22.337286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551529, 37.926174, 22.303907>,  <39.157623, 37.884411, 22.248276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551529, 37.926174, 22.303907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017439, -0.854971, 0.518383,
		0.173034, -0.508059, -0.843763,
		0.984762, 0.104412, 0.139079,
		39.846958, 37.957497, 22.345631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551006, 37.328346, 21.968229>,  <39.157623, 37.884411, 22.248276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551006, 37.328346, 21.968229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.772789, 37.494713, 22.256559>,  <39.905861, 37.594532, 22.429558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.772789, 37.494713, 22.256559>,  <39.551006, 37.328346, 21.968229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772789, 37.494713, 22.256559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004782, -0.867734, 0.497005,
		0.832196, -0.272123, -0.483113,
		0.554461, 0.415916, 0.720824,
		39.939129, 37.619488, 22.472807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872353, 36.714329, 22.306820>,  <39.551006, 37.328346, 21.968229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872353, 36.714329, 22.306820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.903465, 36.998962, 22.586134>,  <39.922134, 37.169743, 22.753723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.903465, 36.998962, 22.586134>,  <39.872353, 36.714329, 22.306820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903465, 36.998962, 22.586134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034405, -0.698074, 0.715199,
		0.996376, -0.079657, -0.029818,
		0.077786, 0.711582, 0.698284,
		39.926800, 37.212437, 22.795620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167717, 36.352322, 22.832056>,  <39.872353, 36.714329, 22.306820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167717, 36.352322, 22.832056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065289, 36.682270, 23.033655>,  <40.003834, 36.880238, 23.154615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065289, 36.682270, 23.033655>,  <40.167717, 36.352322, 22.832056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065289, 36.682270, 23.033655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031298, -0.528185, 0.848552,
		0.966152, 0.201513, 0.161068,
		-0.256068, 0.824872, 0.504000,
		39.988468, 36.929733, 23.184855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703300, 36.471233, 23.411852>,  <40.167717, 36.352322, 22.832056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703300, 36.471233, 23.411852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345020, 36.621944, 23.506310>,  <40.130054, 36.712372, 23.562984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345020, 36.621944, 23.506310>,  <40.703300, 36.471233, 23.411852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345020, 36.621944, 23.506310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002607, -0.526598, 0.850110,
		0.444657, 0.762057, 0.470690,
		-0.895697, 0.376780, 0.236142,
		40.076309, 36.734978, 23.577152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720146, 36.705719, 24.139200>,  <40.703300, 36.471233, 23.411852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720146, 36.705719, 24.139200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.324310, 36.698849, 24.082054>,  <40.086807, 36.694725, 24.047768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.324310, 36.698849, 24.082054>,  <40.720146, 36.705719, 24.139200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324310, 36.698849, 24.082054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125579, -0.381628, 0.915746,
		-0.070249, 0.924157, 0.375499,
		-0.989593, -0.017176, -0.142864,
		40.027431, 36.693695, 24.039194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480007, 36.896206, 24.793812>,  <40.720146, 36.705719, 24.139200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480007, 36.896206, 24.793812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.174911, 36.713150, 24.611034>,  <39.991856, 36.603317, 24.501368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.174911, 36.713150, 24.611034>,  <40.480007, 36.896206, 24.793812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174911, 36.713150, 24.611034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352828, -0.297676, 0.887075,
		-0.541982, 0.837827, 0.065580,
		-0.762737, -0.457640, -0.456944,
		39.946091, 36.575859, 24.473951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866619, 37.312359, 24.907532>,  <40.480007, 36.896206, 24.793812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866619, 37.312359, 24.907532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.770935, 36.926498, 24.863316>,  <39.713524, 36.694981, 24.836786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.770935, 36.926498, 24.863316>,  <39.866619, 37.312359, 24.907532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770935, 36.926498, 24.863316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332653, -0.025535, 0.942704,
		-0.912206, 0.262276, -0.314787,
		-0.239211, -0.964655, -0.110540,
		39.699173, 36.637100, 24.830154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253204, 37.412346, 25.259323>,  <39.866619, 37.312359, 24.907532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253204, 37.412346, 25.259323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.313850, 37.019421, 25.215384>,  <39.350239, 36.783665, 25.189020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.313850, 37.019421, 25.215384>,  <39.253204, 37.412346, 25.259323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313850, 37.019421, 25.215384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265122, -0.147474, 0.952870,
		-0.952220, -0.115343, -0.282793,
		0.151611, -0.982317, -0.109847,
		39.359333, 36.724724, 25.182428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600143, 37.132614, 25.386488>,  <39.253204, 37.412346, 25.259323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600143, 37.132614, 25.386488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882477, 36.858593, 25.458607>,  <39.051876, 36.694180, 25.501879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882477, 36.858593, 25.458607>,  <38.600143, 37.132614, 25.386488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882477, 36.858593, 25.458607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265047, -0.019364, 0.964041,
		-0.656929, -0.728235, -0.195239,
		0.705829, -0.685054, 0.180296,
		39.094227, 36.653076, 25.512695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920238, 37.005192, 25.168503>,  <38.600143, 37.132614, 25.386488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920238, 37.005192, 25.168503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.571728, 37.190651, 25.232883>,  <37.362621, 37.301926, 25.271513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.571728, 37.190651, 25.232883>,  <37.920238, 37.005192, 25.168503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571728, 37.190651, 25.232883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021702, 0.364023, -0.931137,
		-0.490309, -0.807787, -0.327227,
		-0.871279, 0.463647, 0.160953,
		37.310345, 37.329746, 25.281170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554657, 36.946568, 24.543320>,  <37.920238, 37.005192, 25.168503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554657, 36.946568, 24.543320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405876, 37.260212, 24.742048>,  <37.316608, 37.448399, 24.861284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405876, 37.260212, 24.742048>,  <37.554657, 36.946568, 24.543320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405876, 37.260212, 24.742048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026516, 0.526027, -0.850055,
		-0.927874, -0.329352, -0.174864,
		-0.371950, 0.784107, 0.496820,
		37.294292, 37.495445, 24.891094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813347, 37.138851, 24.278036>,  <37.554657, 36.946568, 24.543320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813347, 37.138851, 24.278036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974461, 37.460087, 24.453674>,  <37.071129, 37.652828, 24.559057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974461, 37.460087, 24.453674>,  <36.813347, 37.138851, 24.278036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974461, 37.460087, 24.453674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075570, 0.507272, -0.858466,
		-0.912169, 0.312596, 0.265012,
		0.402787, 0.803093, 0.439095,
		37.095295, 37.701015, 24.585403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541256, 37.643661, 23.946526>,  <36.813347, 37.138851, 24.278036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541256, 37.643661, 23.946526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.821316, 37.856396, 24.137077>,  <36.989353, 37.984035, 24.251410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.821316, 37.856396, 24.137077>,  <36.541256, 37.643661, 23.946526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821316, 37.856396, 24.137077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068273, 0.614280, -0.786129,
		-0.710721, 0.582934, 0.393780,
		0.700153, 0.531834, 0.476381,
		37.031361, 38.015945, 24.279991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310246, 38.186565, 23.861177>,  <36.541256, 37.643661, 23.946526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310246, 38.186565, 23.861177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693504, 38.262455, 23.946928>,  <36.923462, 38.307987, 23.998379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693504, 38.262455, 23.946928>,  <36.310246, 38.186565, 23.861177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693504, 38.262455, 23.946928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104885, 0.464128, -0.879536,
		-0.266365, 0.865211, 0.424805,
		0.958149, 0.189722, 0.214375,
		36.980949, 38.319370, 24.011240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289047, 38.836224, 23.673523>,  <36.310246, 38.186565, 23.861177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289047, 38.836224, 23.673523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676823, 38.738667, 23.684181>,  <36.909489, 38.680134, 23.690577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676823, 38.738667, 23.684181>,  <36.289047, 38.836224, 23.673523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676823, 38.738667, 23.684181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116144, 0.360537, -0.925486,
		0.216111, 0.900294, 0.377844,
		0.969436, -0.243892, 0.026647,
		36.967655, 38.665501, 23.692175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684326, 39.452976, 23.444181>,  <36.289047, 38.836224, 23.673523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684326, 39.452976, 23.444181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926449, 39.140606, 23.382523>,  <37.071720, 38.953182, 23.345528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926449, 39.140606, 23.382523>,  <36.684326, 39.452976, 23.444181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926449, 39.140606, 23.382523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281948, 0.391445, -0.875943,
		0.744389, 0.486748, 0.457123,
		0.605302, -0.780927, -0.154149,
		37.108040, 38.906326, 23.336277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349495, 40.043304, 23.745441>,  <36.684326, 39.452976, 23.444181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349495, 40.043304, 23.745441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.982418, 40.100021, 23.596992>,  <35.762173, 40.134052, 23.507923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.982418, 40.100021, 23.596992>,  <36.349495, 40.043304, 23.745441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982418, 40.100021, 23.596992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394948, -0.224348, 0.890889,
		0.043062, 0.964138, 0.261884,
		-0.917694, 0.141794, -0.371123,
		35.707111, 40.142559, 23.485655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040771, 40.392258, 24.341999>,  <36.349495, 40.043304, 23.745441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040771, 40.392258, 24.341999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747726, 40.261009, 24.103468>,  <35.571899, 40.182259, 23.960348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747726, 40.261009, 24.103468>,  <36.040771, 40.392258, 24.341999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747726, 40.261009, 24.103468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499901, -0.335196, 0.798588,
		-0.461925, 0.883163, 0.081539,
		-0.732615, -0.328126, -0.596330,
		35.527943, 40.162571, 23.924568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429787, 40.570877, 24.645906>,  <36.040771, 40.392258, 24.341999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429787, 40.570877, 24.645906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305843, 40.273838, 24.408405>,  <35.231476, 40.095615, 24.265905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305843, 40.273838, 24.408405>,  <35.429787, 40.570877, 24.645906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305843, 40.273838, 24.408405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553712, -0.366715, 0.747611,
		-0.772909, 0.560423, -0.297552,
		-0.309862, -0.742594, -0.593751,
		35.212883, 40.051060, 24.230280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752220, 40.511292, 24.691751>,  <35.429787, 40.570877, 24.645906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752220, 40.511292, 24.691751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862282, 40.148273, 24.564848>,  <34.928318, 39.930462, 24.488705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862282, 40.148273, 24.564848>,  <34.752220, 40.511292, 24.691751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862282, 40.148273, 24.564848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607131, -0.419895, 0.674596,
		-0.745442, 0.007004, -0.666533,
		0.275149, -0.907545, -0.317260,
		34.944828, 39.876011, 24.469669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172249, 40.229130, 24.738888>,  <34.752220, 40.511292, 24.691751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172249, 40.229130, 24.738888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431316, 39.926861, 24.699907>,  <34.586758, 39.745499, 24.676519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431316, 39.926861, 24.699907>,  <34.172249, 40.229130, 24.738888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431316, 39.926861, 24.699907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529388, -0.538292, 0.655736,
		-0.547981, -0.373102, -0.748674,
		0.647662, -0.755670, -0.097458,
		34.625614, 39.700161, 24.670671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806801, 39.651928, 24.751486>,  <34.172249, 40.229130, 24.738888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806801, 39.651928, 24.751486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161201, 39.485153, 24.832649>,  <34.373840, 39.385086, 24.881348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161201, 39.485153, 24.832649>,  <33.806801, 39.651928, 24.751486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161201, 39.485153, 24.832649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451163, -0.674107, 0.584836,
		-0.107059, -0.609707, -0.785363,
		0.885997, -0.416938, 0.202908,
		34.427002, 39.360073, 24.893522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762466, 38.893406, 24.771111>,  <33.806801, 39.651928, 24.751486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762466, 38.893406, 24.771111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.087101, 38.982647, 24.987095>,  <34.281879, 39.036190, 25.116686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.087101, 38.982647, 24.987095>,  <33.762466, 38.893406, 24.771111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087101, 38.982647, 24.987095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355588, -0.544696, 0.759515,
		0.463562, -0.808414, -0.362735,
		0.811583, 0.223098, 0.539963,
		34.330578, 39.049576, 25.149084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.061069, 43.001484, 23.063118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.326904, 42.707798, 23.118629>,  <38.486404, 42.531586, 23.151937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.326904, 42.707798, 23.118629>,  <38.061069, 43.001484, 23.063118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326904, 42.707798, 23.118629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271646, -0.064382, 0.960241,
		-0.696087, -0.675860, -0.242233,
		0.664584, -0.734213, 0.138780,
		38.526279, 42.487534, 23.160263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614586, 42.623161, 23.609854>,  <38.061069, 43.001484, 23.063118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614586, 42.623161, 23.609854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985386, 42.474255, 23.628160>,  <38.207867, 42.384911, 23.639145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985386, 42.474255, 23.628160>,  <37.614586, 42.623161, 23.609854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985386, 42.474255, 23.628160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187709, -0.354820, 0.915897,
		-0.324714, -0.857627, -0.398795,
		0.926998, -0.372262, 0.045769,
		38.263485, 42.362572, 23.641890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619522, 41.822300, 23.607994>,  <37.614586, 42.623161, 23.609854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619522, 41.822300, 23.607994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.967766, 41.950806, 23.757030>,  <38.176712, 42.027908, 23.846453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.967766, 41.950806, 23.757030>,  <37.619522, 41.822300, 23.607994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967766, 41.950806, 23.757030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182784, -0.491904, 0.851246,
		0.456756, -0.809208, -0.369535,
		0.870611, 0.321266, 0.372591,
		38.228951, 42.047184, 23.868807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824226, 41.330353, 24.098593>,  <37.619522, 41.822300, 23.607994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824226, 41.330353, 24.098593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040428, 41.656704, 24.180769>,  <38.170147, 41.852512, 24.230076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040428, 41.656704, 24.180769>,  <37.824226, 41.330353, 24.098593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040428, 41.656704, 24.180769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077716, -0.194723, 0.977775,
		0.837747, -0.544454, -0.041841,
		0.540500, 0.815876, 0.205442,
		38.202579, 41.901466, 24.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338951, 41.135941, 24.553577>,  <37.824226, 41.330353, 24.098593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338951, 41.135941, 24.553577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.281940, 41.528320, 24.606382>,  <38.247734, 41.763748, 24.638065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.281940, 41.528320, 24.606382>,  <38.338951, 41.135941, 24.553577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281940, 41.528320, 24.606382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263366, -0.166153, 0.950280,
		0.954109, 0.100674, 0.282030,
		-0.142529, 0.980948, 0.132014,
		38.239182, 41.822605, 24.645987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710857, 41.331928, 25.255383>,  <38.338951, 41.135941, 24.553577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710857, 41.331928, 25.255383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463551, 41.635380, 25.173182>,  <38.315166, 41.817451, 25.123861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463551, 41.635380, 25.173182>,  <38.710857, 41.331928, 25.255383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463551, 41.635380, 25.173182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342057, -0.024310, 0.939365,
		0.707630, 0.651073, 0.274523,
		-0.618269, 0.758625, -0.205502,
		38.278069, 41.862968, 25.111530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705421, 41.741074, 25.830004>,  <38.710857, 41.331928, 25.255383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705421, 41.741074, 25.830004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.361774, 41.816494, 25.639692>,  <38.155586, 41.861748, 25.525505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.361774, 41.816494, 25.639692>,  <38.705421, 41.741074, 25.830004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361774, 41.816494, 25.639692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485236, -0.004601, 0.874371,
		0.162674, 0.982053, 0.095444,
		-0.859118, 0.188550, -0.475779,
		38.104038, 41.873058, 25.496958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364475, 42.262772, 26.266726>,  <38.705421, 41.741074, 25.830004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364475, 42.262772, 26.266726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057316, 42.117966, 26.055338>,  <37.873020, 42.031082, 25.928505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057316, 42.117966, 26.055338>,  <38.364475, 42.262772, 26.266726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057316, 42.117966, 26.055338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588604, 0.073252, 0.805096,
		-0.252748, 0.929288, -0.269335,
		-0.767896, -0.362018, -0.528469,
		37.826946, 42.009361, 25.896797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733212, 42.775414, 26.410196>,  <38.364475, 42.262772, 26.266726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733212, 42.775414, 26.410196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549152, 42.482056, 26.210037>,  <37.438717, 42.306042, 26.089941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549152, 42.482056, 26.210037>,  <37.733212, 42.775414, 26.410196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549152, 42.482056, 26.210037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672033, -0.080611, 0.736121,
		-0.580204, 0.675008, -0.455772,
		-0.460147, -0.733394, -0.500398,
		37.411110, 42.262039, 26.059917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004387, 42.942406, 26.288731>,  <37.733212, 42.775414, 26.410196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004387, 42.942406, 26.288731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048859, 42.545307, 26.307005>,  <37.075542, 42.307049, 26.317970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048859, 42.545307, 26.307005>,  <37.004387, 42.942406, 26.288731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048859, 42.545307, 26.307005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779456, -0.058590, 0.623711,
		-0.616512, -0.104954, -0.780319,
		0.111180, -0.992749, 0.045686,
		37.082214, 42.247482, 26.320711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291218, 42.775223, 26.324629>,  <37.004387, 42.942406, 26.288731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291218, 42.775223, 26.324629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.512360, 42.458031, 26.427029>,  <36.645046, 42.267715, 26.488468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.512360, 42.458031, 26.427029>,  <36.291218, 42.775223, 26.324629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512360, 42.458031, 26.427029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662113, -0.231526, 0.712743,
		-0.505918, -0.563546, -0.653041,
		0.552859, -0.792977, 0.255998,
		36.678219, 42.220139, 26.503828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816483, 42.241211, 26.392429>,  <36.291218, 42.775223, 26.324629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816483, 42.241211, 26.392429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.148586, 42.137077, 26.589563>,  <36.347851, 42.074596, 26.707844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.148586, 42.137077, 26.589563>,  <35.816483, 42.241211, 26.392429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148586, 42.137077, 26.589563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552548, -0.268372, 0.789093,
		-0.073165, -0.927471, -0.366667,
		0.830264, -0.260335, 0.492837,
		36.397667, 42.058975, 26.737413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125587, 42.392479, 26.201902>,  <35.816483, 42.241211, 26.392429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125587, 42.392479, 26.201902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858913, 42.689644, 26.177877>,  <34.698910, 42.867943, 26.163462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858913, 42.689644, 26.177877>,  <35.125587, 42.392479, 26.201902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858913, 42.689644, 26.177877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391512, 0.280487, -0.876382,
		-0.634227, -0.607790, -0.477856,
		-0.666689, 0.742911, -0.060064,
		34.658905, 42.912518, 26.159859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806458, 42.314869, 25.517273>,  <35.125587, 42.392479, 26.201902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806458, 42.314869, 25.517273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777252, 42.693253, 25.643661>,  <34.759731, 42.920280, 25.719494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777252, 42.693253, 25.643661>,  <34.806458, 42.314869, 25.517273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777252, 42.693253, 25.643661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447188, 0.314233, -0.837425,
		-0.891455, 0.080157, -0.445962,
		-0.073010, 0.945956, 0.315970,
		34.755348, 42.977039, 25.738453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579563, 42.629326, 24.940559>,  <34.806458, 42.314869, 25.517273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579563, 42.629326, 24.940559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.712101, 42.917252, 25.184549>,  <34.791626, 43.090008, 25.330944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.712101, 42.917252, 25.184549>,  <34.579563, 42.629326, 24.940559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712101, 42.917252, 25.184549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533000, 0.390654, -0.750533,
		-0.778537, 0.573804, -0.254222,
		0.331347, 0.719818, 0.609976,
		34.811504, 43.133198, 25.367542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346985, 43.137482, 24.604095>,  <34.579563, 42.629326, 24.940559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346985, 43.137482, 24.604095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.647076, 43.265903, 24.835295>,  <34.827129, 43.342957, 24.974014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.647076, 43.265903, 24.835295>,  <34.346985, 43.137482, 24.604095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647076, 43.265903, 24.835295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398057, 0.478694, -0.782562,
		-0.527928, 0.817176, 0.231333,
		0.750229, 0.321052, 0.577999,
		34.872143, 43.362221, 25.008694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415222, 43.847660, 24.486893>,  <34.346985, 43.137482, 24.604095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415222, 43.847660, 24.486893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.755676, 43.698471, 24.634657>,  <34.959949, 43.608959, 24.723316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.755676, 43.698471, 24.634657>,  <34.415222, 43.847660, 24.486893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755676, 43.698471, 24.634657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499487, 0.358890, -0.788486,
		0.161506, 0.855623, 0.491758,
		0.851133, -0.372972, 0.369410,
		35.011017, 43.586578, 24.745480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909138, 44.410458, 24.297152>,  <34.415222, 43.847660, 24.486893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909138, 44.410458, 24.297152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.143147, 44.096386, 24.378393>,  <35.283550, 43.907944, 24.427137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.143147, 44.096386, 24.378393>,  <34.909138, 44.410458, 24.297152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143147, 44.096386, 24.378393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655269, 0.310048, -0.688834,
		0.477884, 0.536069, 0.695886,
		0.585021, -0.785175, 0.203102,
		35.318653, 43.860832, 24.439323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537167, 44.698196, 24.069763>,  <34.909138, 44.410458, 24.297152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537167, 44.698196, 24.069763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.624809, 44.310310, 24.112926>,  <35.677395, 44.077579, 24.138824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.624809, 44.310310, 24.112926>,  <35.537167, 44.698196, 24.069763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624809, 44.310310, 24.112926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668543, 0.068655, -0.740497,
		0.710664, 0.234387, 0.663340,
		0.219105, -0.969716, 0.107907,
		35.690540, 44.019394, 24.145298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198689, 44.610958, 24.193216>,  <35.537167, 44.698196, 24.069763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198689, 44.610958, 24.193216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.063152, 44.284103, 24.006676>,  <35.981831, 44.087990, 23.894753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.063152, 44.284103, 24.006676>,  <36.198689, 44.610958, 24.193216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063152, 44.284103, 24.006676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724011, 0.090079, -0.683881,
		0.600831, -0.569366, 0.561092,
		-0.338836, -0.817134, -0.466350,
		35.961502, 44.038963, 23.866770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746208, 44.178234, 24.019075>,  <36.198689, 44.610958, 24.193216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746208, 44.178234, 24.019075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468750, 44.031433, 23.771151>,  <36.302277, 43.943352, 23.622396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468750, 44.031433, 23.771151>,  <36.746208, 44.178234, 24.019075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468750, 44.031433, 23.771151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650937, 0.049085, -0.757543,
		0.308442, -0.928925, 0.204847,
		-0.693645, -0.367000, -0.619812,
		36.260658, 43.921333, 23.585207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087345, 43.592674, 23.769855>,  <36.746208, 44.178234, 24.019075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087345, 43.592674, 23.769855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.805664, 43.731743, 23.522236>,  <36.636658, 43.815186, 23.373663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.805664, 43.731743, 23.522236>,  <37.087345, 43.592674, 23.769855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805664, 43.731743, 23.522236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667291, 0.026246, -0.744334,
		-0.242540, -0.937247, -0.250484,
		-0.704199, 0.347677, -0.619051,
		36.594406, 43.836044, 23.336521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351738, 43.342659, 23.202375>,  <37.087345, 43.592674, 23.769855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351738, 43.342659, 23.202375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098145, 43.626923, 23.080366>,  <36.945988, 43.797482, 23.007160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098145, 43.626923, 23.080366>,  <37.351738, 43.342659, 23.202375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098145, 43.626923, 23.080366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567762, 0.159908, -0.807512,
		-0.525087, -0.685127, -0.504861,
		-0.633980, 0.710655, -0.305023,
		36.907951, 43.840118, 22.988859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397385, 43.234303, 22.473026>,  <37.351738, 43.342659, 23.202375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397385, 43.234303, 22.473026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265064, 43.605259, 22.542898>,  <37.185673, 43.827831, 22.584822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265064, 43.605259, 22.542898>,  <37.397385, 43.234303, 22.473026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265064, 43.605259, 22.542898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535575, 0.336900, -0.774375,
		-0.777000, -0.162610, -0.608135,
		-0.330802, 0.927392, 0.174682,
		37.165825, 43.883476, 22.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024155, 43.410683, 21.848356>,  <37.397385, 43.234303, 22.473026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024155, 43.410683, 21.848356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115543, 43.761341, 22.017731>,  <37.170376, 43.971737, 22.119354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115543, 43.761341, 22.017731>,  <37.024155, 43.410683, 21.848356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115543, 43.761341, 22.017731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473880, 0.279798, -0.834956,
		-0.850435, 0.391418, -0.351499,
		0.228468, 0.876644, 0.423435,
		37.184082, 44.024334, 22.144762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391777, 43.061237, 22.081757>,  <37.024155, 43.410683, 21.848356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391777, 43.061237, 22.081757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.421009, 42.846699, 21.745426>,  <36.438549, 42.717976, 21.543629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.421009, 42.846699, 21.745426>,  <36.391777, 43.061237, 22.081757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421009, 42.846699, 21.745426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141513, -0.840126, 0.523605,
		-0.987235, 0.080720, -0.137300,
		0.073084, -0.536351, -0.840825,
		36.442936, 42.685795, 21.493179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891094, 42.552383, 22.185671>,  <36.391777, 43.061237, 22.081757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891094, 42.552383, 22.185671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.086769, 42.385201, 21.879465>,  <36.204174, 42.284889, 21.695742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.086769, 42.385201, 21.879465>,  <35.891094, 42.552383, 22.185671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086769, 42.385201, 21.879465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190690, -0.907719, 0.373741,
		-0.851078, -0.036854, -0.523744,
		0.489187, -0.417956, -0.765513,
		36.233524, 42.259815, 21.649811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420658, 42.180847, 21.783875>,  <35.891094, 42.552383, 22.185671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420658, 42.180847, 21.783875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.770317, 42.007271, 21.696640>,  <35.980114, 41.903126, 21.644299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.770317, 42.007271, 21.696640>,  <35.420658, 42.180847, 21.783875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770317, 42.007271, 21.696640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317648, -0.850536, 0.419153,
		-0.367378, -0.297126, -0.881334,
		0.874147, -0.433941, -0.218087,
		36.032562, 41.877087, 21.631214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313709, 41.577171, 21.394863>,  <35.420658, 42.180847, 21.783875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313709, 41.577171, 21.394863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.655453, 41.530540, 21.597439>,  <35.860500, 41.502563, 21.718985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.655453, 41.530540, 21.597439>,  <35.313709, 41.577171, 21.394863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655453, 41.530540, 21.597439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375585, -0.812038, 0.446689,
		0.359175, -0.571844, -0.737555,
		0.854359, -0.116575, 0.506440,
		35.911762, 41.495567, 21.749371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375298, 40.888191, 21.462217>,  <35.313709, 41.577171, 21.394863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375298, 40.888191, 21.462217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.657063, 40.986809, 21.728456>,  <35.826122, 41.045979, 21.888199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.657063, 40.986809, 21.728456>,  <35.375298, 40.888191, 21.462217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657063, 40.986809, 21.728456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207084, -0.825554, 0.524953,
		0.678910, -0.507618, -0.530476,
		0.704413, 0.246543, 0.665597,
		35.868385, 41.060772, 21.928135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669899, 40.267834, 21.708620>,  <35.375298, 40.888191, 21.462217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669899, 40.267834, 21.708620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.736244, 40.531612, 22.001909>,  <35.776051, 40.689880, 22.177883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.736244, 40.531612, 22.001909>,  <35.669899, 40.267834, 21.708620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736244, 40.531612, 22.001909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314795, -0.669216, 0.673093,
		0.934556, -0.342454, 0.096596,
		0.165860, 0.659451, 0.733222,
		35.786003, 40.729446, 22.221876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809593, 39.851719, 22.297113>,  <35.669899, 40.267834, 21.708620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809593, 39.851719, 22.297113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.774647, 40.208035, 22.475487>,  <35.753677, 40.421825, 22.582510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.774647, 40.208035, 22.475487>,  <35.809593, 39.851719, 22.297113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774647, 40.208035, 22.475487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138089, -0.454153, 0.880157,
		0.986559, 0.015318, 0.162686,
		-0.087367, 0.890792, 0.445934,
		35.748436, 40.475273, 22.609266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282623, 39.819088, 22.777306>,  <35.809593, 39.851719, 22.297113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282623, 39.819088, 22.777306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.989880, 40.077793, 22.863180>,  <35.814236, 40.233017, 22.914705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.989880, 40.077793, 22.863180>,  <36.282623, 39.819088, 22.777306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989880, 40.077793, 22.863180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136420, -0.447710, 0.883711,
		0.667666, 0.617461, 0.415890,
		-0.731855, 0.646760, 0.214687,
		35.770325, 40.271820, 22.927586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043373, 39.718533, 22.887257>,  <36.282623, 39.819088, 22.777306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043373, 39.718533, 22.887257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.219547, 39.360168, 22.910458>,  <37.325253, 39.145149, 22.924377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.219547, 39.360168, 22.910458>,  <37.043373, 39.718533, 22.887257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219547, 39.360168, 22.910458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353281, 0.113557, -0.928600,
		0.825355, 0.429477, 0.366522,
		0.440433, -0.895910, 0.058001,
		37.351677, 39.091396, 22.927858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710735, 39.811455, 22.742817>,  <37.043373, 39.718533, 22.887257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710735, 39.811455, 22.742817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637253, 39.433945, 22.632883>,  <37.593163, 39.207439, 22.566923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637253, 39.433945, 22.632883>,  <37.710735, 39.811455, 22.742817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637253, 39.433945, 22.632883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413915, 0.179326, -0.892478,
		0.891586, -0.277714, 0.357700,
		-0.183709, -0.943778, -0.274835,
		37.582142, 39.150810, 22.550432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269142, 39.518116, 22.421177>,  <37.710735, 39.811455, 22.742817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269142, 39.518116, 22.421177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966988, 39.295353, 22.283045>,  <37.785694, 39.161697, 22.200165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966988, 39.295353, 22.283045>,  <38.269142, 39.518116, 22.421177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966988, 39.295353, 22.283045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352201, 0.099356, -0.930636,
		0.552587, -0.824612, 0.121091,
		-0.755382, -0.556905, -0.345332,
		37.740372, 39.128281, 22.179445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635979, 39.147316, 21.943647>,  <38.269142, 39.518116, 22.421177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635979, 39.147316, 21.943647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245327, 39.122704, 21.861267>,  <38.010937, 39.107937, 21.811838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245327, 39.122704, 21.861267>,  <38.635979, 39.147316, 21.943647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245327, 39.122704, 21.861267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208395, -0.036293, -0.977371,
		0.052666, -0.997445, 0.048268,
		-0.976626, -0.061533, -0.205951,
		37.952339, 39.104244, 21.799482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603672, 38.623486, 21.364433>,  <38.635979, 39.147316, 21.943647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603672, 38.623486, 21.364433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.283367, 38.862667, 21.378395>,  <38.091183, 39.006176, 21.386772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.283367, 38.862667, 21.378395>,  <38.603672, 38.623486, 21.364433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283367, 38.862667, 21.378395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125074, 0.223912, -0.966550,
		-0.585772, -0.769616, -0.254091,
		-0.800767, 0.597959, 0.034903,
		38.043137, 39.042053, 21.388866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331032, 38.443520, 20.783968>,  <38.603672, 38.623486, 21.364433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331032, 38.443520, 20.783968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160419, 38.789761, 20.888891>,  <38.058052, 38.997505, 20.951845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160419, 38.789761, 20.888891>,  <38.331032, 38.443520, 20.783968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160419, 38.789761, 20.888891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086734, 0.327820, -0.940751,
		-0.900304, -0.378509, -0.214903,
		-0.426532, 0.865601, 0.262308,
		38.032459, 39.049442, 20.967583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828583, 38.485214, 20.372969>,  <38.331032, 38.443520, 20.783968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828583, 38.485214, 20.372969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845322, 38.869167, 20.483875>,  <37.855366, 39.099541, 20.550419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845322, 38.869167, 20.483875>,  <37.828583, 38.485214, 20.372969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845322, 38.869167, 20.483875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009813, 0.277100, -0.960791,
		-0.999076, 0.042924, 0.002175,
		0.041844, 0.959882, 0.277265,
		37.857876, 39.157131, 20.567055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246609, 38.880905, 19.991951>,  <37.828583, 38.485214, 20.372969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246609, 38.880905, 19.991951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.547821, 39.119144, 20.103813>,  <37.728550, 39.262089, 20.170931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.547821, 39.119144, 20.103813>,  <37.246609, 38.880905, 19.991951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547821, 39.119144, 20.103813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139035, 0.271389, -0.952375,
		-0.643128, 0.756049, 0.121555,
		0.753031, 0.595599, 0.279655,
		37.773731, 39.297825, 20.187710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101803, 39.441402, 19.729061>,  <37.246609, 38.880905, 19.991951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101803, 39.441402, 19.729061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.493038, 39.472794, 19.806198>,  <37.727779, 39.491627, 19.852480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.493038, 39.472794, 19.806198>,  <37.101803, 39.441402, 19.729061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493038, 39.472794, 19.806198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153807, 0.351898, -0.923315,
		-0.140320, 0.932743, 0.332116,
		0.978087, 0.078478, 0.192840,
		37.786465, 39.496338, 19.864050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.643585, 36.045990, 35.115509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014503, 36.176952, 35.042927>,  <35.237053, 36.255531, 34.999378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014503, 36.176952, 35.042927>,  <34.643585, 36.045990, 35.115509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014503, 36.176952, 35.042927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009821, -0.505857, -0.862561,
		-0.374197, 0.798069, -0.472296,
		0.927297, 0.327406, -0.181452,
		35.292694, 36.275173, 34.988491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677849, 36.385887, 34.458073>,  <34.643585, 36.045990, 35.115509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677849, 36.385887, 34.458073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043613, 36.241287, 34.530922>,  <35.263073, 36.154530, 34.574631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043613, 36.241287, 34.530922>,  <34.677849, 36.385887, 34.458073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043613, 36.241287, 34.530922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020813, -0.407334, -0.913042,
		0.404246, 0.838688, -0.364948,
		0.914414, -0.361498, 0.182119,
		35.317936, 36.132839, 34.585556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013943, 36.546780, 33.892586>,  <34.677849, 36.385887, 34.458073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013943, 36.546780, 33.892586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279350, 36.281956, 34.031963>,  <35.438595, 36.123062, 34.115589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279350, 36.281956, 34.031963>,  <35.013943, 36.546780, 33.892586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279350, 36.281956, 34.031963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337997, -0.150229, -0.929080,
		0.667456, 0.734236, 0.124095,
		0.663522, -0.662063, 0.348441,
		35.478405, 36.083336, 34.136497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652660, 36.798832, 33.659607>,  <35.013943, 36.546780, 33.892586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652660, 36.798832, 33.659607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667297, 36.405231, 33.729347>,  <35.676079, 36.169071, 33.771191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667297, 36.405231, 33.729347>,  <35.652660, 36.798832, 33.659607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667297, 36.405231, 33.729347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113514, -0.169249, -0.979015,
		0.992862, 0.055615, 0.105505,
		0.036591, -0.984003, 0.174354,
		35.678276, 36.110031, 33.781654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124920, 36.571968, 33.207756>,  <35.652660, 36.798832, 33.659607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124920, 36.571968, 33.207756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906696, 36.255222, 33.317532>,  <35.775761, 36.065174, 33.383396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906696, 36.255222, 33.317532>,  <36.124920, 36.571968, 33.207756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906696, 36.255222, 33.317532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087398, -0.271925, -0.958342,
		0.833503, -0.546817, 0.079144,
		-0.545559, -0.791864, 0.274441,
		35.743031, 36.017662, 33.399864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464344, 36.039394, 32.810856>,  <36.124920, 36.571968, 33.207756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464344, 36.039394, 32.810856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102531, 35.911003, 32.923130>,  <35.885445, 35.833969, 32.990494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102531, 35.911003, 32.923130>,  <36.464344, 36.039394, 32.810856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102531, 35.911003, 32.923130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222614, -0.205954, -0.952904,
		0.363674, -0.924420, 0.114838,
		-0.904535, -0.320982, 0.280689,
		35.831169, 35.814709, 33.007336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341152, 35.394073, 32.424347>,  <36.464344, 36.039394, 32.810856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341152, 35.394073, 32.424347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974937, 35.508415, 32.537537>,  <35.755207, 35.577019, 32.605450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974937, 35.508415, 32.537537>,  <36.341152, 35.394073, 32.424347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974937, 35.508415, 32.537537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341532, -0.180862, -0.922304,
		-0.212474, -0.941048, 0.263217,
		-0.915539, 0.285863, 0.282970,
		35.700275, 35.594173, 32.622429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848034, 34.846581, 32.229702>,  <36.341152, 35.394073, 32.424347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848034, 34.846581, 32.229702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624115, 35.172260, 32.291294>,  <35.489761, 35.367668, 32.328251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624115, 35.172260, 32.291294>,  <35.848034, 34.846581, 32.229702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624115, 35.172260, 32.291294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356292, -0.068736, -0.931843,
		-0.748119, -0.576507, 0.328570,
		-0.559798, 0.814196, 0.153982,
		35.456177, 35.416519, 32.337490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162445, 34.677094, 32.023773>,  <35.848034, 34.846581, 32.229702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162445, 34.677094, 32.023773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197521, 35.074684, 31.997469>,  <35.218567, 35.313236, 31.981686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197521, 35.074684, 31.997469>,  <35.162445, 34.677094, 32.023773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197521, 35.074684, 31.997469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420955, -0.022856, -0.906793,
		-0.902833, 0.107204, 0.416414,
		0.087694, 0.993974, -0.065763,
		35.223831, 35.372875, 31.977739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635731, 34.879539, 31.556055>,  <35.162445, 34.677094, 32.023773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635731, 34.879539, 31.556055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848579, 35.218151, 31.562105>,  <34.976288, 35.421318, 31.565735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848579, 35.218151, 31.562105>,  <34.635731, 34.879539, 31.556055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848579, 35.218151, 31.562105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237624, 0.166465, -0.956987,
		-0.812638, 0.505641, 0.289736,
		0.532123, 0.846532, 0.015123,
		35.008217, 35.472111, 31.566643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203522, 35.507774, 31.252474>,  <34.635731, 34.879539, 31.556055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203522, 35.507774, 31.252474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588676, 35.613918, 31.232786>,  <34.819771, 35.677605, 31.220974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588676, 35.613918, 31.232786>,  <34.203522, 35.507774, 31.252474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588676, 35.613918, 31.232786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148882, 0.370146, -0.916966,
		-0.225110, 0.890266, 0.395918,
		0.962891, 0.265364, -0.049221,
		34.877544, 35.693527, 31.218019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220829, 36.066853, 30.830763>,  <34.203522, 35.507774, 31.252474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220829, 36.066853, 30.830763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590725, 35.918301, 30.797466>,  <34.812664, 35.829170, 30.777489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590725, 35.918301, 30.797466>,  <34.220829, 36.066853, 30.830763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590725, 35.918301, 30.797466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014308, 0.252486, -0.967495,
		0.380327, 0.893491, 0.238798,
		0.924741, -0.371381, -0.083243,
		34.868149, 35.806885, 30.772493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839424, 36.816586, 30.591169>,  <34.220829, 36.066853, 30.830763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839424, 36.816586, 30.591169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473862, 36.713501, 30.465723>,  <33.254524, 36.651649, 30.390455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473862, 36.713501, 30.465723>,  <33.839424, 36.816586, 30.591169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473862, 36.713501, 30.465723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291084, -0.122403, 0.948835,
		-0.282911, 0.958438, 0.036850,
		-0.913910, -0.257710, -0.313615,
		33.199688, 36.636189, 30.371639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500648, 37.120415, 31.101122>,  <33.839424, 36.816586, 30.591169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500648, 37.120415, 31.101122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263054, 36.855232, 30.918835>,  <33.120499, 36.696125, 30.809464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263054, 36.855232, 30.918835>,  <33.500648, 37.120415, 31.101122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263054, 36.855232, 30.918835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449971, -0.195788, 0.871317,
		-0.666865, 0.722607, -0.182014,
		-0.593984, -0.662952, -0.455716,
		33.084858, 36.656345, 30.782120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735229, 37.356747, 31.133957>,  <33.500648, 37.120415, 31.101122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735229, 37.356747, 31.133957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714397, 36.958656, 31.100962>,  <32.701897, 36.719803, 31.081165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714397, 36.958656, 31.100962>,  <32.735229, 37.356747, 31.133957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714397, 36.958656, 31.100962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491991, -0.046310, 0.869368,
		-0.869041, 0.085862, -0.487232,
		-0.052082, -0.995230, -0.082489,
		32.698772, 36.660088, 31.076216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051594, 37.214767, 31.342159>,  <32.735229, 37.356747, 31.133957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051594, 37.214767, 31.342159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248249, 36.867672, 31.371346>,  <32.366241, 36.659416, 31.388857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248249, 36.867672, 31.371346>,  <32.051594, 37.214767, 31.342159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248249, 36.867672, 31.371346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538639, -0.237193, 0.808460,
		-0.684225, -0.436769, -0.584011,
		0.491633, -0.867740, 0.072967,
		32.395741, 36.607349, 31.393236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530018, 36.852448, 31.599310>,  <32.051594, 37.214767, 31.342159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530018, 36.852448, 31.599310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856398, 36.632828, 31.671715>,  <32.052227, 36.501057, 31.715158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856398, 36.632828, 31.671715>,  <31.530018, 36.852448, 31.599310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856398, 36.632828, 31.671715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440325, -0.387329, 0.809994,
		-0.374591, -0.740638, -0.557797,
		0.815963, -0.549028, 0.181032,
		32.101185, 36.468113, 31.726019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217937, 36.386879, 31.873131>,  <31.530018, 36.852448, 31.599310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217937, 36.386879, 31.873131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605400, 36.350964, 31.965773>,  <31.837877, 36.329414, 32.021358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605400, 36.350964, 31.965773>,  <31.217937, 36.386879, 31.873131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605400, 36.350964, 31.965773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247540, -0.426533, 0.869939,
		0.020676, -0.900004, -0.435391,
		0.968657, -0.089790, 0.231605,
		31.895998, 36.324028, 32.035255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297882, 35.696491, 32.168705>,  <31.217937, 36.386879, 31.873131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297882, 35.696491, 32.168705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592440, 35.943359, 32.279572>,  <31.769175, 36.091480, 32.346092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592440, 35.943359, 32.279572>,  <31.297882, 35.696491, 32.168705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592440, 35.943359, 32.279572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205932, -0.185765, 0.960772,
		0.644452, -0.764583, -0.009700,
		0.736392, 0.617174, 0.277169,
		31.813356, 36.128513, 32.362720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508661, 35.378819, 32.711658>,  <31.297882, 35.696491, 32.168705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508661, 35.378819, 32.711658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638502, 35.754139, 32.759373>,  <31.716408, 35.979332, 32.788002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638502, 35.754139, 32.759373>,  <31.508661, 35.378819, 32.711658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638502, 35.754139, 32.759373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181276, -0.062063, 0.981472,
		0.928316, -0.340214, 0.149944,
		0.324604, 0.938297, 0.119287,
		31.735884, 36.035629, 32.795158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691212, 35.394718, 33.399204>,  <31.508661, 35.378819, 32.711658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691212, 35.394718, 33.399204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688953, 35.778332, 33.285908>,  <31.687599, 36.008499, 33.217930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688953, 35.778332, 33.285908>,  <31.691212, 35.394718, 33.399204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688953, 35.778332, 33.285908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314180, 0.267204, 0.910985,
		0.949347, 0.094131, 0.299800,
		-0.005644, 0.959031, -0.283243,
		31.687260, 36.066040, 33.200935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117115, 35.694542, 33.845760>,  <31.691212, 35.394718, 33.399204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117115, 35.694542, 33.845760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880808, 35.992893, 33.722694>,  <31.739023, 36.171906, 33.648857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880808, 35.992893, 33.722694>,  <32.117115, 35.694542, 33.845760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880808, 35.992893, 33.722694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300132, 0.150801, 0.941902,
		0.748943, 0.648784, 0.134775,
		-0.590767, 0.745881, -0.307662,
		31.703577, 36.216656, 33.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282448, 36.291428, 34.228268>,  <32.117115, 35.694542, 33.845760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282448, 36.291428, 34.228268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908512, 36.345650, 34.097000>,  <31.684149, 36.378181, 34.018242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908512, 36.345650, 34.097000>,  <32.282448, 36.291428, 34.228268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908512, 36.345650, 34.097000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292513, 0.229855, 0.928226,
		0.201256, 0.963739, -0.175226,
		-0.934843, 0.135555, -0.328165,
		31.628059, 36.386314, 33.998550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042442, 37.060226, 34.240509>,  <32.282448, 36.291428, 34.228268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042442, 37.060226, 34.240509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703114, 36.850780, 34.209057>,  <31.499517, 36.725113, 34.190186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703114, 36.850780, 34.209057>,  <32.042442, 37.060226, 34.240509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703114, 36.850780, 34.209057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396531, 0.529852, 0.749680,
		-0.350884, 0.667145, -0.657113,
		-0.848318, -0.523617, -0.078627,
		31.448618, 36.693695, 34.185467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595686, 37.515259, 34.580395>,  <32.042442, 37.060226, 34.240509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595686, 37.515259, 34.580395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374914, 37.183395, 34.546829>,  <31.242451, 36.984276, 34.526691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374914, 37.183395, 34.546829>,  <31.595686, 37.515259, 34.580395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374914, 37.183395, 34.546829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488486, 0.240121, 0.838882,
		-0.675837, 0.503992, -0.537806,
		-0.551929, -0.829659, -0.083911,
		31.209335, 36.934498, 34.521656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891041, 37.816338, 34.718956>,  <31.595686, 37.515259, 34.580395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891041, 37.816338, 34.718956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926554, 37.425365, 34.795628>,  <30.947861, 37.190781, 34.841629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926554, 37.425365, 34.795628>,  <30.891041, 37.816338, 34.718956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926554, 37.425365, 34.795628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520241, 0.118598, 0.845745,
		-0.849392, -0.174806, -0.497972,
		0.088783, -0.977434, 0.191677,
		30.953188, 37.132133, 34.853130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182716, 37.505135, 34.900490>,  <30.891041, 37.816338, 34.718956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182716, 37.505135, 34.900490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481565, 37.299889, 35.069496>,  <30.660875, 37.176739, 35.170898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481565, 37.299889, 35.069496>,  <30.182716, 37.505135, 34.900490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481565, 37.299889, 35.069496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350527, 0.235928, 0.906349,
		-0.564747, -0.825256, -0.003595,
		0.747122, -0.513118, 0.422514,
		30.705702, 37.145954, 35.196251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086433, 38.233440, 34.743660>,  <30.182716, 37.505135, 34.900490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086433, 38.233440, 34.743660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.023966, 38.438068, 34.405689>,  <29.986485, 38.560844, 34.202908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.023966, 38.438068, 34.405689>,  <30.086433, 38.233440, 34.743660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023966, 38.438068, 34.405689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781416, 0.587217, 0.211107,
		0.604153, -0.627273, -0.491455,
		-0.156169, 0.511572, -0.844929,
		29.977116, 38.591541, 34.152210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165173, 38.881989, 34.507774>,  <30.086433, 38.233440, 34.743660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165173, 38.881989, 34.507774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531387, 38.755699, 34.607464>,  <30.751116, 38.679924, 34.667278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531387, 38.755699, 34.607464>,  <30.165173, 38.881989, 34.507774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531387, 38.755699, 34.607464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393203, 0.571944, -0.719910,
		0.084752, 0.757099, 0.647780,
		0.915537, -0.315723, 0.249220,
		30.806049, 38.660984, 34.682228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487005, 39.451111, 34.847000>,  <30.165173, 38.881989, 34.507774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487005, 39.451111, 34.847000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.766092, 39.210827, 34.690876>,  <30.933544, 39.066658, 34.597202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.766092, 39.210827, 34.690876>,  <30.487005, 39.451111, 34.847000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766092, 39.210827, 34.690876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064854, 0.595568, -0.800683,
		0.713429, 0.533339, 0.454498,
		0.697720, -0.600707, -0.390306,
		30.975409, 39.030617, 34.573784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014914, 39.863392, 34.564255>,  <30.487005, 39.451111, 34.847000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014914, 39.863392, 34.564255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.064098, 39.508598, 34.386200>,  <31.093609, 39.295723, 34.279366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.064098, 39.508598, 34.386200>,  <31.014914, 39.863392, 34.564255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064098, 39.508598, 34.386200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286577, 0.461167, -0.839761,
		0.950134, -0.024308, 0.310894,
		0.122961, -0.886980, -0.445136,
		31.100986, 39.242504, 34.252659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658318, 40.010464, 34.213306>,  <31.014914, 39.863392, 34.564255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658318, 40.010464, 34.213306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.489098, 39.695183, 34.034523>,  <31.387566, 39.506016, 33.927254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.489098, 39.695183, 34.034523>,  <31.658318, 40.010464, 34.213306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489098, 39.695183, 34.034523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332367, 0.323902, -0.885788,
		0.842947, -0.523287, 0.124944,
		-0.423051, -0.788199, -0.446955,
		31.362183, 39.458721, 33.900436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211555, 39.619045, 33.822006>,  <31.658318, 40.010464, 34.213306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211555, 39.619045, 33.822006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862089, 39.535557, 33.646214>,  <31.652411, 39.485462, 33.540737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862089, 39.535557, 33.646214>,  <32.211555, 39.619045, 33.822006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862089, 39.535557, 33.646214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363382, 0.320711, -0.874699,
		0.323544, -0.923887, -0.204334,
		-0.873655, -0.208752, -0.439488,
		31.599989, 39.472939, 33.514370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443462, 39.275299, 33.208210>,  <32.211555, 39.619045, 33.822006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443462, 39.275299, 33.208210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064236, 39.376339, 33.130894>,  <31.836700, 39.436962, 33.084503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064236, 39.376339, 33.130894>,  <32.443462, 39.275299, 33.208210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064236, 39.376339, 33.130894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264428, 0.288201, -0.920336,
		-0.176767, -0.923653, -0.340028,
		-0.948067, 0.252598, -0.193295,
		31.779816, 39.452118, 33.072906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305004, 39.053135, 32.541664>,  <32.443462, 39.275299, 33.208210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305004, 39.053135, 32.541664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041351, 39.345604, 32.612015>,  <31.883160, 39.521084, 32.654224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041351, 39.345604, 32.612015>,  <32.305004, 39.053135, 32.541664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041351, 39.345604, 32.612015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173932, 0.375750, -0.910252,
		-0.731635, -0.569388, -0.374844,
		-0.659134, 0.731170, 0.175877,
		31.843611, 39.564957, 32.664780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003834, 39.067390, 31.974941>,  <32.305004, 39.053135, 32.541664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003834, 39.067390, 31.974941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911282, 39.423275, 32.132359>,  <31.855751, 39.636806, 32.226810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911282, 39.423275, 32.132359>,  <32.003834, 39.067390, 31.974941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911282, 39.423275, 32.132359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155562, 0.433152, -0.887795,
		-0.960346, -0.144198, -0.238628,
		-0.231381, 0.889711, 0.393544,
		31.841867, 39.690189, 32.250423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507601, 39.415478, 31.491814>,  <32.003834, 39.067390, 31.974941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507601, 39.415478, 31.491814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648184, 39.720802, 31.708641>,  <31.732534, 39.903996, 31.838737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648184, 39.720802, 31.708641>,  <31.507601, 39.415478, 31.491814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648184, 39.720802, 31.708641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256308, 0.478436, -0.839884,
		-0.900435, 0.434122, -0.027491,
		0.351459, 0.763307, 0.542069,
		31.753622, 39.949795, 31.871262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192902, 40.002628, 31.256674>,  <31.507601, 39.415478, 31.491814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192902, 40.002628, 31.256674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499516, 40.170898, 31.450769>,  <31.683485, 40.271858, 31.567226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499516, 40.170898, 31.450769>,  <31.192902, 40.002628, 31.256674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499516, 40.170898, 31.450769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205012, 0.555757, -0.805670,
		-0.608598, 0.717055, 0.339765,
		0.766537, 0.420673, 0.485238,
		31.729477, 40.297100, 31.596340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161427, 40.789265, 31.191137>,  <31.192902, 40.002628, 31.256674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161427, 40.789265, 31.191137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537025, 40.687462, 31.283670>,  <31.762384, 40.626381, 31.339190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537025, 40.687462, 31.283670>,  <31.161427, 40.789265, 31.191137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537025, 40.687462, 31.283670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343899, 0.685707, -0.641514,
		0.004641, 0.681934, 0.731399,
		0.938995, -0.254505, 0.231334,
		31.818724, 40.611111, 31.353071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574923, 41.544052, 31.437931>,  <31.161427, 40.789265, 31.191137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574923, 41.544052, 31.437931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798857, 41.239109, 31.308077>,  <31.933218, 41.056141, 31.230164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798857, 41.239109, 31.308077>,  <31.574923, 41.544052, 31.437931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798857, 41.239109, 31.308077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444861, 0.607071, -0.658455,
		0.699058, 0.224209, 0.679006,
		0.559837, -0.762361, -0.324636,
		31.966808, 41.010399, 31.210686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121155, 41.789974, 31.069969>,  <31.574923, 41.544052, 31.437931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121155, 41.789974, 31.069969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151875, 41.415279, 30.933367>,  <32.170307, 41.190464, 30.851406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151875, 41.415279, 30.933367>,  <32.121155, 41.789974, 31.069969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151875, 41.415279, 30.933367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636602, 0.309683, -0.706282,
		0.767358, -0.163158, 0.620113,
		0.076803, -0.936737, -0.341505,
		32.174915, 41.134258, 30.830915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824039, 41.645702, 31.014322>,  <32.121155, 41.789974, 31.069969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824039, 41.645702, 31.014322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638012, 41.393337, 30.765915>,  <32.526398, 41.241920, 30.616871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638012, 41.393337, 30.765915>,  <32.824039, 41.645702, 31.014322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638012, 41.393337, 30.765915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546026, 0.347746, -0.762187,
		0.696828, -0.693560, 0.182768,
		-0.465066, -0.630910, -0.621021,
		32.498493, 41.204063, 30.579609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383064, 41.460579, 30.559258>,  <32.824039, 41.645702, 31.014322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383064, 41.460579, 30.559258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041389, 41.365925, 30.374056>,  <32.836384, 41.309132, 30.262934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041389, 41.365925, 30.374056>,  <33.383064, 41.460579, 30.559258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041389, 41.365925, 30.374056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351924, 0.392403, -0.849805,
		0.382781, -0.888832, -0.251905,
		-0.854183, -0.236638, -0.463006,
		32.785133, 41.294933, 30.235153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530495, 41.056484, 29.937986>,  <33.383064, 41.460579, 30.559258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530495, 41.056484, 29.937986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181217, 41.238888, 29.869175>,  <32.971649, 41.348328, 29.827888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181217, 41.238888, 29.869175>,  <33.530495, 41.056484, 29.937986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181217, 41.238888, 29.869175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365851, 0.380076, -0.849526,
		-0.322004, -0.804737, -0.498709,
		-0.873193, 0.456005, -0.172028,
		32.919258, 41.375690, 29.817566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334885, 40.857067, 29.239788>,  <33.530495, 41.056484, 29.937986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334885, 40.857067, 29.239788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110596, 41.179329, 29.316212>,  <32.976021, 41.372688, 29.362066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110596, 41.179329, 29.316212>,  <33.334885, 40.857067, 29.239788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110596, 41.179329, 29.316212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339779, 0.434311, -0.834221,
		-0.755076, -0.402850, -0.517274,
		-0.560724, 0.805659, 0.191057,
		32.942379, 41.421028, 29.373529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874615, 41.010689, 28.640535>,  <33.334885, 40.857067, 29.239788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874615, 41.010689, 28.640535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865135, 41.367149, 28.821768>,  <32.859447, 41.581024, 28.930508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865135, 41.367149, 28.821768>,  <32.874615, 41.010689, 28.640535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865135, 41.367149, 28.821768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302363, 0.438376, -0.846406,
		-0.952898, 0.116933, -0.279842,
		-0.023703, 0.891153, 0.453084,
		32.858025, 41.634495, 28.957693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409737, 41.415180, 28.244064>,  <32.874615, 41.010689, 28.640535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409737, 41.415180, 28.244064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633503, 41.669312, 28.457010>,  <32.767761, 41.821789, 28.584778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633503, 41.669312, 28.457010>,  <32.409737, 41.415180, 28.244064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633503, 41.669312, 28.457010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269860, 0.467672, -0.841699,
		-0.783727, 0.614525, 0.090174,
		0.559417, 0.635328, 0.532363,
		32.801327, 41.859909, 28.616718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267681, 42.079498, 27.886089>,  <32.409737, 41.415180, 28.244064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267681, 42.079498, 27.886089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.612778, 42.089931, 28.088079>,  <32.819836, 42.096191, 28.209274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.612778, 42.089931, 28.088079>,  <32.267681, 42.079498, 27.886089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612778, 42.089931, 28.088079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458996, 0.378583, -0.803740,
		-0.212141, 0.925199, 0.314646,
		0.862739, 0.026086, 0.504976,
		32.871601, 42.097755, 28.239573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446178, 42.873329, 27.931673>,  <32.267681, 42.079498, 27.886089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446178, 42.873329, 27.931673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770298, 42.643322, 27.976885>,  <32.964771, 42.505318, 28.004011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770298, 42.643322, 27.976885>,  <32.446178, 42.873329, 27.931673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770298, 42.643322, 27.976885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481972, 0.544201, -0.686694,
		0.333349, 0.610904, 0.718105,
		0.810297, -0.575015, 0.113030,
		33.013386, 42.470818, 28.010794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984375, 43.276043, 27.951361>,  <32.446178, 42.873329, 27.931673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984375, 43.276043, 27.951361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218994, 42.961052, 27.875637>,  <33.359768, 42.772057, 27.830202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218994, 42.961052, 27.875637>,  <32.984375, 43.276043, 27.951361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218994, 42.961052, 27.875637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624438, 0.588558, -0.513494,
		0.515784, 0.182979, 0.836950,
		0.586552, -0.787476, -0.189310,
		33.394958, 42.724808, 27.818844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678448, 43.571781, 27.910620>,  <32.984375, 43.276043, 27.951361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678448, 43.571781, 27.910620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704933, 43.217812, 27.726215>,  <33.720825, 43.005432, 27.615572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704933, 43.217812, 27.726215>,  <33.678448, 43.571781, 27.910620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704933, 43.217812, 27.726215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722517, 0.361173, -0.589511,
		0.688175, -0.294058, 0.663283,
		0.066210, -0.884920, -0.461012,
		33.724796, 42.952335, 27.587912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458076, 43.411644, 27.833681>,  <33.678448, 43.571781, 27.910620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458076, 43.411644, 27.833681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267189, 43.195145, 27.556751>,  <34.152657, 43.065247, 27.390594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267189, 43.195145, 27.556751>,  <34.458076, 43.411644, 27.833681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267189, 43.195145, 27.556751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653039, 0.308759, -0.691526,
		0.588047, -0.782125, 0.206109,
		-0.477221, -0.541247, -0.692323,
		34.124023, 43.032772, 27.349054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929626, 43.286922, 27.389727>,  <34.458076, 43.411644, 27.833681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929626, 43.286922, 27.389727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626579, 43.164993, 27.158869>,  <34.444752, 43.091835, 27.020355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626579, 43.164993, 27.158869>,  <34.929626, 43.286922, 27.389727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626579, 43.164993, 27.158869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528372, 0.232701, -0.816501,
		0.383192, -0.923543, -0.015238,
		-0.757619, -0.304825, -0.577143,
		34.399292, 43.073547, 26.985725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237511, 42.827560, 26.923298>,  <34.929626, 43.286922, 27.389727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237511, 42.827560, 26.923298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896591, 42.966209, 26.766611>,  <34.692039, 43.049400, 26.672598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896591, 42.966209, 26.766611>,  <35.237511, 42.827560, 26.923298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896591, 42.966209, 26.766611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454575, 0.120381, -0.882536,
		-0.258755, -0.930246, -0.260168,
		-0.852295, 0.346626, -0.391718,
		34.640903, 43.070198, 26.649096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436123, 42.133099, 27.313616>,  <35.237511, 42.827560, 26.923298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436123, 42.133099, 27.313616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818352, 42.019093, 27.283537>,  <36.047688, 41.950687, 27.265490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818352, 42.019093, 27.283537>,  <35.436123, 42.133099, 27.313616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818352, 42.019093, 27.283537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085633, 0.024305, 0.996030,
		-0.282061, -0.958213, 0.047632,
		0.955567, -0.285020, -0.075199,
		36.105022, 41.933586, 27.260977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495220, 41.362320, 27.525887>,  <35.436123, 42.133099, 27.313616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495220, 41.362320, 27.525887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831795, 41.563934, 27.603800>,  <36.033737, 41.684902, 27.650547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831795, 41.563934, 27.603800>,  <35.495220, 41.362320, 27.525887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831795, 41.563934, 27.603800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108758, -0.195124, 0.974730,
		0.529303, -0.841354, -0.109366,
		0.841433, 0.504033, 0.194784,
		36.084225, 41.715145, 27.662235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958496, 40.893555, 27.846323>,  <35.495220, 41.362320, 27.525887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958496, 40.893555, 27.846323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074898, 41.264099, 27.941961>,  <36.144737, 41.486427, 27.999344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074898, 41.264099, 27.941961>,  <35.958496, 40.893555, 27.846323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074898, 41.264099, 27.941961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003289, -0.248942, 0.968513,
		0.956716, -0.282629, -0.069397,
		0.291006, 0.926363, 0.239096,
		36.162201, 41.542007, 28.013691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448860, 40.837757, 28.292799>,  <35.958496, 40.893555, 27.846323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448860, 40.837757, 28.292799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325504, 41.215004, 28.342472>,  <36.251492, 41.441353, 28.372276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325504, 41.215004, 28.342472>,  <36.448860, 40.837757, 28.292799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325504, 41.215004, 28.342472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112147, -0.165681, 0.979782,
		0.944625, 0.288231, 0.156863,
		-0.308393, 0.943118, 0.124182,
		36.232986, 41.497940, 28.379726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960197, 41.156689, 28.725327>,  <36.448860, 40.837757, 28.292799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960197, 41.156689, 28.725327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622658, 41.367702, 28.764553>,  <36.420132, 41.494312, 28.788090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622658, 41.367702, 28.764553>,  <36.960197, 41.156689, 28.725327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622658, 41.367702, 28.764553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157772, 0.069258, 0.985044,
		0.512854, 0.846705, -0.141674,
		-0.843854, 0.527536, 0.098067,
		36.369503, 41.525963, 28.793974>
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
