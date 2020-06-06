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
	<24.273043, 35.261913, 34.800407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.091673, 35.033478, 35.074127>,  <23.982851, 34.896416, 35.238358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.091673, 35.033478, 35.074127>,  <24.273043, 35.261913, 34.800407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.091673, 35.033478, 35.074127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889192, -0.342548, 0.303314,
		0.061185, 0.746001, 0.663128,
		-0.453426, -0.571089, 0.684297,
		23.955645, 34.862152, 35.279415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.490929, 34.688702, 34.514038>,  <24.273043, 35.261913, 34.800407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.490929, 34.688702, 34.514038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874458, 34.723862, 34.406013>,  <25.104576, 34.744957, 34.341198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874458, 34.723862, 34.406013>,  <24.490929, 34.688702, 34.514038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874458, 34.723862, 34.406013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058647, -0.991683, -0.114564,
		-0.277885, 0.094008, -0.956003,
		0.958822, 0.087903, -0.270061,
		25.162106, 34.750233, 34.324997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529615, 34.266239, 33.851494>,  <24.490929, 34.688702, 34.514038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529615, 34.266239, 33.851494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906836, 34.290863, 33.982254>,  <25.133167, 34.305637, 34.060711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906836, 34.290863, 33.982254>,  <24.529615, 34.266239, 33.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906836, 34.290863, 33.982254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155147, -0.950693, -0.268539,
		0.294253, 0.303964, -0.906102,
		0.943051, 0.061561, 0.326903,
		25.189751, 34.309330, 34.080326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854469, 34.007359, 33.335659>,  <24.529615, 34.266239, 33.851494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854469, 34.007359, 33.335659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092356, 33.974033, 33.655502>,  <25.235088, 33.954037, 33.847408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092356, 33.974033, 33.655502>,  <24.854469, 34.007359, 33.335659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092356, 33.974033, 33.655502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093871, -0.980616, -0.171990,
		0.798436, 0.177345, -0.575368,
		0.594716, -0.083313, 0.799607,
		25.270771, 33.949039, 33.895386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588964, 33.678867, 33.182911>,  <24.854469, 34.007359, 33.335659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588964, 33.678867, 33.182911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444286, 33.602654, 33.547958>,  <25.357479, 33.556927, 33.766987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444286, 33.602654, 33.547958>,  <25.588964, 33.678867, 33.182911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444286, 33.602654, 33.547958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011157, -0.977938, -0.208595,
		0.932231, -0.085629, 0.351588,
		-0.361693, -0.190536, 0.912620,
		25.335779, 33.545494, 33.821743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048027, 33.211430, 33.500942>,  <25.588964, 33.678867, 33.182911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048027, 33.211430, 33.500942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662319, 33.193172, 33.605324>,  <25.430893, 33.182220, 33.667953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662319, 33.193172, 33.605324>,  <26.048027, 33.211430, 33.500942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662319, 33.193172, 33.605324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067833, -0.909669, -0.409758,
		0.256082, -0.412819, 0.874072,
		-0.964272, -0.045641, 0.260953,
		25.373037, 33.179482, 33.683609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927502, 32.646568, 33.935074>,  <26.048027, 33.211430, 33.500942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927502, 32.646568, 33.935074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590706, 32.733330, 33.737484>,  <25.388628, 32.785389, 33.618931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590706, 32.733330, 33.737484>,  <25.927502, 32.646568, 33.935074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590706, 32.733330, 33.737484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018916, -0.926923, -0.374773,
		-0.539165, -0.306211, 0.784561,
		-0.841988, 0.216905, -0.493972,
		25.338110, 32.798401, 33.589291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433681, 32.083355, 34.045280>,  <25.927502, 32.646568, 33.935074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433681, 32.083355, 34.045280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387650, 32.253689, 33.686298>,  <25.360029, 32.355888, 33.470909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387650, 32.253689, 33.686298>,  <25.433681, 32.083355, 34.045280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387650, 32.253689, 33.686298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041918, -0.900567, -0.432691,
		-0.992471, -0.087414, 0.085788,
		-0.115081, 0.425838, -0.897451,
		25.353125, 32.381439, 33.417065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019783, 31.662212, 33.733337>,  <25.433681, 32.083355, 34.045280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019783, 31.662212, 33.733337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144835, 31.855875, 33.406448>,  <25.219866, 31.972073, 33.210316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144835, 31.855875, 33.406448>,  <25.019783, 31.662212, 33.733337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144835, 31.855875, 33.406448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141627, -0.874492, -0.463902,
		-0.939258, 0.029288, -0.341960,
		0.312627, 0.484155, -0.817226,
		25.238623, 32.001122, 33.161282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685352, 31.344810, 33.233665>,  <25.019783, 31.662212, 33.733337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685352, 31.344810, 33.233665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020948, 31.509838, 33.091743>,  <25.222305, 31.608854, 33.006592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020948, 31.509838, 33.091743>,  <24.685352, 31.344810, 33.233665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020948, 31.509838, 33.091743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196849, -0.837991, -0.508941,
		-0.507295, 0.357153, -0.784279,
		0.838989, 0.412568, -0.354804,
		25.272644, 31.633608, 32.985302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658180, 31.256069, 32.508278>,  <24.685352, 31.344810, 33.233665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658180, 31.256069, 32.508278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044710, 31.306618, 32.597942>,  <25.276628, 31.336946, 32.651741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044710, 31.306618, 32.597942>,  <24.658180, 31.256069, 32.508278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044710, 31.306618, 32.597942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219383, -0.859863, -0.460984,
		0.134491, 0.494637, -0.858630,
		0.966325, 0.126370, 0.224159,
		25.334608, 31.344528, 32.665192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047010, 31.141108, 31.919981>,  <24.658180, 31.256069, 32.508278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047010, 31.141108, 31.919981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267193, 31.057911, 32.243397>,  <25.399302, 31.007994, 32.437447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267193, 31.057911, 32.243397>,  <25.047010, 31.141108, 31.919981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267193, 31.057911, 32.243397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289060, -0.861087, -0.418299,
		0.783227, 0.463972, -0.413868,
		0.550455, -0.207990, 0.808541,
		25.432329, 30.995514, 32.485958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648840, 30.964462, 31.641987>,  <25.047010, 31.141108, 31.919981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648840, 30.964462, 31.641987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667538, 30.820009, 32.014523>,  <25.678757, 30.733337, 32.238045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667538, 30.820009, 32.014523>,  <25.648840, 30.964462, 31.641987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667538, 30.820009, 32.014523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263026, -0.895008, -0.360247,
		0.963656, 0.261806, 0.053153,
		0.046743, -0.361135, 0.931341,
		25.681561, 30.711668, 32.293926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373240, 30.907534, 32.034637>,  <25.648840, 30.964462, 31.641987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373240, 30.907534, 32.034637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074987, 30.645454, 32.083221>,  <25.896036, 30.488207, 32.112373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074987, 30.645454, 32.083221>,  <26.373240, 30.907534, 32.034637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074987, 30.645454, 32.083221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579095, -0.727307, -0.368339,
		0.329674, -0.204306, 0.921723,
		-0.745630, -0.655197, 0.121462,
		25.851299, 30.448895, 32.119659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418776, 30.623634, 32.721020>,  <26.373240, 30.907534, 32.034637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418776, 30.623634, 32.721020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534668, 30.398403, 33.030602>,  <26.604202, 30.263264, 33.216351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534668, 30.398403, 33.030602>,  <26.418776, 30.623634, 32.721020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534668, 30.398403, 33.030602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939735, -0.320730, 0.118447,
		0.181535, -0.761627, -0.622069,
		0.289729, -0.563078, 0.773951,
		26.621586, 30.229481, 33.262787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375839, 31.070765, 33.328709>,  <26.418776, 30.623634, 32.721020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375839, 31.070765, 33.328709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126190, 31.080412, 33.016327>,  <25.976400, 31.086201, 32.828899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126190, 31.080412, 33.016327>,  <26.375839, 31.070765, 33.328709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126190, 31.080412, 33.016327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007289, 0.999660, 0.025048,
		0.781292, 0.009941, -0.624087,
		-0.624123, 0.024118, -0.780953,
		25.938953, 31.087646, 32.782040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617670, 31.574383, 32.942368>,  <26.375839, 31.070765, 33.328709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617670, 31.574383, 32.942368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240694, 31.519905, 32.820213>,  <26.014509, 31.487219, 32.746922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240694, 31.519905, 32.820213>,  <26.617670, 31.574383, 32.942368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240694, 31.519905, 32.820213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156911, 0.986622, 0.044228,
		0.295277, 0.089601, -0.951201,
		-0.942438, -0.136195, -0.305386,
		25.957962, 31.479046, 32.728596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323433, 32.083244, 32.365307>,  <26.617670, 31.574383, 32.942368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323433, 32.083244, 32.365307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001802, 31.962574, 32.570225>,  <25.808823, 31.890171, 32.693176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001802, 31.962574, 32.570225>,  <26.323433, 32.083244, 32.365307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001802, 31.962574, 32.570225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232926, 0.952660, 0.195410,
		-0.546995, 0.037798, -0.836282,
		-0.804079, -0.301680, 0.512296,
		25.760578, 31.872070, 32.723915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777779, 32.562519, 32.144703>,  <26.323433, 32.083244, 32.365307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777779, 32.562519, 32.144703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612089, 32.390537, 32.465591>,  <25.512674, 32.287350, 32.658123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612089, 32.390537, 32.465591>,  <25.777779, 32.562519, 32.144703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612089, 32.390537, 32.465591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417686, 0.872900, 0.252160,
		-0.808676, -0.230626, -0.541161,
		-0.414225, -0.429951, 0.802222,
		25.487822, 32.261551, 32.706257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210627, 33.011520, 32.264099>,  <25.777779, 32.562519, 32.144703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210627, 33.011520, 32.264099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255569, 32.811924, 32.607815>,  <25.282536, 32.692165, 32.814045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255569, 32.811924, 32.607815>,  <25.210627, 33.011520, 32.264099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255569, 32.811924, 32.607815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360329, 0.785445, 0.503229,
		-0.926034, -0.366169, -0.091551,
		0.112358, -0.498995, 0.859290,
		25.289276, 32.662224, 32.865601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516573, 32.985180, 32.699020>,  <25.210627, 33.011520, 32.264099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516573, 32.985180, 32.699020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852180, 32.987488, 32.916649>,  <25.053545, 32.988873, 33.047226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852180, 32.987488, 32.916649>,  <24.516573, 32.985180, 32.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852180, 32.987488, 32.916649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244315, 0.897466, 0.367239,
		-0.486169, -0.441045, 0.754400,
		0.839017, 0.005771, 0.544074,
		25.103886, 32.989220, 33.079872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446939, 32.999638, 33.473724>,  <24.516573, 32.985180, 32.699020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446939, 32.999638, 33.473724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785654, 33.184811, 33.368923>,  <24.988884, 33.295914, 33.306042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785654, 33.184811, 33.368923>,  <24.446939, 32.999638, 33.473724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785654, 33.184811, 33.368923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439371, 0.886353, 0.146053,
		0.299838, -0.008561, 0.953951,
		0.846788, 0.462931, -0.262001,
		25.039690, 33.323689, 33.290321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166059, 33.069824, 34.137501>,  <24.446939, 32.999638, 33.473724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166059, 33.069824, 34.137501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519114, 33.094296, 33.951077>,  <24.730946, 33.108978, 33.839222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519114, 33.094296, 33.951077>,  <24.166059, 33.069824, 34.137501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.519114, 33.094296, 33.951077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184663, 0.866649, 0.463486,
		0.432268, -0.495153, 0.753637,
		0.882635, 0.061181, -0.466061,
		24.783903, 33.112648, 33.811260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558830, 33.465130, 34.686028>,  <24.166059, 33.069824, 34.137501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558830, 33.465130, 34.686028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736160, 33.491886, 34.328484>,  <24.842558, 33.507938, 34.113956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736160, 33.491886, 34.328484>,  <24.558830, 33.465130, 34.686028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736160, 33.491886, 34.328484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140421, 0.979717, 0.142957,
		0.885293, -0.188894, 0.424941,
		0.443326, 0.066889, -0.893861,
		24.869158, 33.511951, 34.060326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887884, 32.911320, 35.230625>,  <24.558830, 33.465130, 34.686028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887884, 32.911320, 35.230625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510317, 32.781666, 35.255802>,  <24.283777, 32.703873, 35.270908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510317, 32.781666, 35.255802>,  <24.887884, 32.911320, 35.230625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.510317, 32.781666, 35.255802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321203, 0.945561, 0.052380,
		-0.076494, 0.029225, -0.996642,
		-0.943916, -0.324131, 0.062942,
		24.227142, 32.684425, 35.274685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430721, 33.434429, 34.879223>,  <24.887884, 32.911320, 35.230625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430721, 33.434429, 34.879223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520365, 33.503227, 34.495518>,  <25.574150, 33.544506, 34.265293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520365, 33.503227, 34.495518>,  <25.430721, 33.434429, 34.879223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520365, 33.503227, 34.495518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287057, 0.928986, 0.233630,
		0.931328, -0.327724, 0.158823,
		0.224110, 0.171994, -0.959266,
		25.587597, 33.554825, 34.207737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993330, 33.819588, 34.986656>,  <25.430721, 33.434429, 34.879223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993330, 33.819588, 34.986656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802303, 33.873089, 34.639313>,  <25.687687, 33.905190, 34.430908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802303, 33.873089, 34.639313>,  <25.993330, 33.819588, 34.986656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802303, 33.873089, 34.639313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165533, 0.984342, 0.060576,
		0.862861, -0.114813, -0.492229,
		-0.477566, 0.133749, -0.868356,
		25.659033, 33.913212, 34.378807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404753, 34.228046, 34.490135>,  <25.993330, 33.819588, 34.986656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404753, 34.228046, 34.490135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021233, 34.284290, 34.391403>,  <25.791121, 34.318039, 34.332165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021233, 34.284290, 34.391403>,  <26.404753, 34.228046, 34.490135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021233, 34.284290, 34.391403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134830, 0.990050, 0.040267,
		0.250041, 0.005327, -0.968221,
		-0.958802, 0.140614, -0.246835,
		25.733593, 34.326473, 34.317352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418592, 34.772072, 33.978588>,  <26.404753, 34.228046, 34.490135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418592, 34.772072, 33.978588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041958, 34.761436, 34.112877>,  <25.815977, 34.755054, 34.193451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041958, 34.761436, 34.112877>,  <26.418592, 34.772072, 33.978588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041958, 34.761436, 34.112877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021532, 0.999592, 0.018787,
		-0.336084, 0.010461, -0.941774,
		-0.941586, -0.026592, 0.335722,
		25.759481, 34.753460, 34.213593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826733, 35.348675, 33.765129>,  <26.418592, 34.772072, 33.978588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826733, 35.348675, 33.765129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783514, 35.657372, 34.015804>,  <26.757584, 35.842590, 34.166210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783514, 35.657372, 34.015804>,  <26.826733, 35.348675, 33.765129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783514, 35.657372, 34.015804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584123, 0.460809, -0.668173,
		-0.804442, -0.438259, 0.401002,
		-0.108047, 0.771741, 0.626691,
		26.751101, 35.888893, 34.203812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190216, 35.643497, 33.597397>,  <26.826733, 35.348675, 33.765129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190216, 35.643497, 33.597397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410479, 35.946178, 33.738354>,  <26.542635, 36.127789, 33.822929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410479, 35.946178, 33.738354>,  <26.190216, 35.643497, 33.597397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410479, 35.946178, 33.738354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492197, 0.635305, -0.595088,
		-0.674182, 0.154241, 0.722280,
		0.550655, 0.756702, 0.352394,
		26.575676, 36.173187, 33.844070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834129, 36.198856, 34.046535>,  <26.190216, 35.643497, 33.597397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834129, 36.198856, 34.046535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129080, 36.342793, 33.817875>,  <26.306051, 36.429153, 33.680679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129080, 36.342793, 33.817875>,  <25.834129, 36.198856, 34.046535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129080, 36.342793, 33.817875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627529, 0.678102, -0.382602,
		0.249963, 0.640852, 0.725829,
		0.737378, 0.359843, -0.571653,
		26.350292, 36.450745, 33.646378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671875, 36.928837, 33.943649>,  <25.834129, 36.198856, 34.046535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671875, 36.928837, 33.943649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920301, 36.847141, 33.640980>,  <26.069357, 36.798122, 33.459377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920301, 36.847141, 33.640980>,  <25.671875, 36.928837, 33.943649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920301, 36.847141, 33.640980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573263, 0.539979, -0.616273,
		0.534459, 0.816522, 0.218279,
		0.621066, -0.204241, -0.756678,
		26.106621, 36.785870, 33.413975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574493, 37.491402, 33.540154>,  <25.671875, 36.928837, 33.943649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574493, 37.491402, 33.540154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754227, 37.221176, 33.306328>,  <25.862066, 37.059040, 33.166031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754227, 37.221176, 33.306328>,  <25.574493, 37.491402, 33.540154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754227, 37.221176, 33.306328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402715, 0.430919, -0.807546,
		0.797446, 0.598271, -0.078431,
		0.449334, -0.675559, -0.584567,
		25.889027, 37.018509, 33.130959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051035, 37.775745, 32.942848>,  <25.574493, 37.491402, 33.540154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051035, 37.775745, 32.942848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966537, 37.403038, 32.824738>,  <25.915838, 37.179413, 32.753872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966537, 37.403038, 32.824738>,  <26.051035, 37.775745, 32.942848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966537, 37.403038, 32.824738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166215, 0.331937, -0.928542,
		0.963197, -0.147069, -0.224993,
		-0.211243, -0.931766, -0.295276,
		25.903164, 37.123508, 32.736156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637344, 38.118481, 33.395638>,  <26.051035, 37.775745, 32.942848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637344, 38.118481, 33.395638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587902, 37.774220, 33.198051>,  <26.558237, 37.567661, 33.079502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587902, 37.774220, 33.198051>,  <26.637344, 38.118481, 33.395638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587902, 37.774220, 33.198051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420321, 0.496328, -0.759598,
		0.898917, 0.113732, -0.423099,
		-0.123605, -0.860653, -0.493962,
		26.550821, 37.516026, 33.049862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805897, 38.217457, 32.707317>,  <26.637344, 38.118481, 33.395638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805897, 38.217457, 32.707317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606861, 37.873981, 32.658237>,  <26.487440, 37.667896, 32.628788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606861, 37.873981, 32.658237>,  <26.805897, 38.217457, 32.707317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606861, 37.873981, 32.658237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581303, 0.435102, -0.687584,
		0.643809, -0.270810, -0.715662,
		-0.497591, -0.858690, -0.122700,
		26.457584, 37.616375, 32.621426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731852, 38.204700, 32.005169>,  <26.805897, 38.217457, 32.707317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731852, 38.204700, 32.005169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438786, 37.965702, 32.135521>,  <26.262947, 37.822304, 32.213734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438786, 37.965702, 32.135521>,  <26.731852, 38.204700, 32.005169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438786, 37.965702, 32.135521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582728, 0.303355, -0.753925,
		0.351617, -0.742270, -0.570439,
		-0.732662, -0.597504, 0.325877,
		26.218987, 37.786453, 32.233284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501928, 37.872913, 31.353256>,  <26.731852, 38.204700, 32.005169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501928, 37.872913, 31.353256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223076, 37.879250, 31.639963>,  <26.055765, 37.883053, 31.811987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223076, 37.879250, 31.639963>,  <26.501928, 37.872913, 31.353256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223076, 37.879250, 31.639963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686717, 0.272478, -0.673925,
		-0.205979, -0.962032, -0.179075,
		-0.697132, 0.015840, 0.716768,
		26.013937, 37.884003, 31.854994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966785, 37.774788, 30.860424>,  <26.501928, 37.872913, 31.353256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966785, 37.774788, 30.860424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689741, 37.904305, 30.602602>,  <25.523514, 37.982014, 30.447908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689741, 37.904305, 30.602602>,  <25.966785, 37.774788, 30.860424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689741, 37.904305, 30.602602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646468, -0.675012, 0.355580,
		-0.319950, 0.662963, 0.676840,
		-0.692612, 0.323787, -0.644555,
		25.481958, 38.001442, 30.409235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686188, 38.335793, 31.237234>,  <25.966785, 37.774788, 30.860424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686188, 38.335793, 31.237234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026999, 38.234333, 31.054054>,  <26.231485, 38.173458, 30.944147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026999, 38.234333, 31.054054>,  <25.686188, 38.335793, 31.237234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026999, 38.234333, 31.054054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121711, 0.754832, -0.644527,
		0.509155, 0.604891, 0.612265,
		0.852026, -0.253645, -0.457948,
		26.282606, 38.158241, 30.916670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476292, 38.811214, 31.755489>,  <25.686188, 38.335793, 31.237234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476292, 38.811214, 31.755489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275242, 38.465946, 31.736313>,  <25.154612, 38.258785, 31.724808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275242, 38.465946, 31.736313>,  <25.476292, 38.811214, 31.755489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275242, 38.465946, 31.736313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699808, -0.438801, 0.563669,
		-0.507581, 0.249765, 0.824609,
		-0.502623, -0.863175, -0.047939,
		25.124454, 38.206993, 31.721931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307678, 38.581699, 32.462318>,  <25.476292, 38.811214, 31.755489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307678, 38.581699, 32.462318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360643, 38.280041, 32.205032>,  <25.392422, 38.099045, 32.050659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360643, 38.280041, 32.205032>,  <25.307678, 38.581699, 32.462318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360643, 38.280041, 32.205032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644368, -0.427601, 0.633992,
		-0.753164, -0.498418, 0.429329,
		0.132411, -0.754146, -0.643219,
		25.400368, 38.053799, 32.012066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117050, 37.828278, 32.798420>,  <25.307678, 38.581699, 32.462318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117050, 37.828278, 32.798420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368448, 37.778641, 32.491280>,  <25.519287, 37.748859, 32.306995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368448, 37.778641, 32.491280>,  <25.117050, 37.828278, 32.798420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368448, 37.778641, 32.491280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599990, -0.550872, 0.580131,
		-0.494978, -0.825312, -0.271766,
		0.628498, -0.124095, -0.767848,
		25.556997, 37.741413, 32.260925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223694, 37.120964, 32.697548>,  <25.117050, 37.828278, 32.798420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223694, 37.120964, 32.697548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544413, 37.297207, 32.536060>,  <25.736845, 37.402950, 32.439167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544413, 37.297207, 32.536060>,  <25.223694, 37.120964, 32.697548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544413, 37.297207, 32.536060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597584, -0.594956, 0.537513,
		-0.003363, -0.672231, -0.740334,
		0.801799, 0.440604, -0.403715,
		25.784952, 37.429390, 32.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668633, 36.584660, 32.510448>,  <25.223694, 37.120964, 32.697548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668633, 36.584660, 32.510448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909204, 36.901939, 32.548641>,  <26.053547, 37.092308, 32.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909204, 36.901939, 32.548641>,  <25.668633, 36.584660, 32.510448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909204, 36.901939, 32.548641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632547, -0.545770, 0.549563,
		0.488023, -0.270128, -0.829978,
		0.601430, 0.793200, 0.095480,
		26.089634, 37.139900, 32.577286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299835, 36.376892, 32.383678>,  <25.668633, 36.584660, 32.510448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299835, 36.376892, 32.383678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342884, 36.704491, 32.609127>,  <26.368713, 36.901051, 32.744396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342884, 36.704491, 32.609127>,  <26.299835, 36.376892, 32.383678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342884, 36.704491, 32.609127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446894, -0.546260, 0.708439,
		0.888090, 0.175635, -0.424792,
		0.107620, 0.818994, 0.563619,
		26.375170, 36.950188, 32.778214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985447, 36.643906, 32.496696>,  <26.299835, 36.376892, 32.383678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985447, 36.643906, 32.496696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729914, 36.709545, 32.797352>,  <26.576593, 36.748928, 32.977745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729914, 36.709545, 32.797352>,  <26.985447, 36.643906, 32.496696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729914, 36.709545, 32.797352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648800, -0.410141, 0.640970,
		0.413459, 0.897138, 0.155547,
		-0.638835, 0.164095, 0.751640,
		26.538263, 36.758774, 33.022842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341475, 37.040615, 33.072857>,  <26.985447, 36.643906, 32.496696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341475, 37.040615, 33.072857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037466, 36.840038, 33.238228>,  <26.855061, 36.719692, 33.337452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037466, 36.840038, 33.238228>,  <27.341475, 37.040615, 33.072857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037466, 36.840038, 33.238228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628470, -0.405059, 0.664043,
		-0.165517, 0.764514, 0.622995,
		-0.760020, -0.501444, 0.413430,
		26.809460, 36.689606, 33.362255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167162, 37.217701, 33.769611>,  <27.341475, 37.040615, 33.072857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167162, 37.217701, 33.769611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130789, 36.824409, 33.706383>,  <27.108965, 36.588432, 33.668446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130789, 36.824409, 33.706383>,  <27.167162, 37.217701, 33.769611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130789, 36.824409, 33.706383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646614, -0.179011, 0.741516,
		-0.757378, -0.034781, 0.652049,
		-0.090933, -0.983232, -0.158069,
		27.103508, 36.529438, 33.658962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154501, 37.037441, 34.449989>,  <27.167162, 37.217701, 33.769611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154501, 37.037441, 34.449989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254009, 36.754753, 34.185062>,  <27.313715, 36.585140, 34.026108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254009, 36.754753, 34.185062>,  <27.154501, 37.037441, 34.449989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254009, 36.754753, 34.185062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673600, -0.365120, 0.642612,
		-0.695971, -0.605997, 0.385216,
		0.248771, -0.706721, -0.662313,
		27.328640, 36.542736, 33.986370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519377, 36.732460, 35.031826>,  <27.154501, 37.037441, 34.449989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519377, 36.732460, 35.031826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822727, 36.647770, 34.785236>,  <28.004738, 36.596954, 34.637283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822727, 36.647770, 34.785236>,  <27.519377, 36.732460, 35.031826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822727, 36.647770, 34.785236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437234, 0.866672, 0.240222,
		0.483415, -0.451720, 0.749839,
		0.758378, -0.211728, -0.616470,
		28.050240, 36.584251, 34.600296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089848, 36.697041, 35.366661>,  <27.519377, 36.732460, 35.031826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089848, 36.697041, 35.366661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186047, 36.810280, 34.995281>,  <28.243765, 36.878223, 34.772453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186047, 36.810280, 34.995281>,  <28.089848, 36.697041, 35.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186047, 36.810280, 34.995281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282648, 0.894646, 0.346003,
		0.928586, -0.345637, 0.135142,
		0.240496, 0.283096, -0.928450,
		28.258196, 36.895210, 34.716747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772806, 36.965946, 35.403225>,  <28.089848, 36.697041, 35.366661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772806, 36.965946, 35.403225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587858, 37.139706, 35.094028>,  <28.476889, 37.243961, 34.908512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587858, 37.139706, 35.094028>,  <28.772806, 36.965946, 35.403225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587858, 37.139706, 35.094028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268056, 0.899463, 0.345127,
		0.845197, -0.047628, -0.532328,
		-0.462372, 0.434394, -0.772990,
		28.449146, 37.270023, 34.862133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242212, 37.324593, 34.820824>,  <28.772806, 36.965946, 35.403225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242212, 37.324593, 34.820824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891489, 37.482445, 34.930710>,  <28.681055, 37.577156, 34.996639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891489, 37.482445, 34.930710>,  <29.242212, 37.324593, 34.820824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891489, 37.482445, 34.930710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463940, 0.844455, 0.267684,
		-0.126345, 0.362158, -0.923514,
		-0.876810, 0.394635, 0.274712,
		28.628447, 37.600834, 35.013123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104658, 37.928341, 34.500824>,  <29.242212, 37.324593, 34.820824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104658, 37.928341, 34.500824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902103, 37.943642, 34.845406>,  <28.780571, 37.952824, 35.052155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902103, 37.943642, 34.845406>,  <29.104658, 37.928341, 34.500824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902103, 37.943642, 34.845406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360604, 0.916862, 0.171256,
		-0.783286, 0.397367, -0.478082,
		-0.506386, 0.038255, 0.861458,
		28.750187, 37.955120, 35.103844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606930, 38.360191, 34.710312>,  <29.104658, 37.928341, 34.500824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606930, 38.360191, 34.710312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820765, 38.216366, 34.404388>,  <29.949066, 38.130070, 34.220833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820765, 38.216366, 34.404388>,  <29.606930, 38.360191, 34.710312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820765, 38.216366, 34.404388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839781, 0.327510, 0.433018,
		0.094787, -0.873758, 0.477035,
		0.534587, -0.359560, -0.764809,
		29.981140, 38.108498, 34.174946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254246, 37.791794, 34.937466>,  <29.606930, 38.360191, 34.710312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254246, 37.791794, 34.937466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301603, 38.065025, 34.649193>,  <30.330017, 38.228966, 34.476231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301603, 38.065025, 34.649193>,  <30.254246, 37.791794, 34.937466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301603, 38.065025, 34.649193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800422, 0.363862, 0.476372,
		0.587630, -0.633247, -0.503676,
		0.118392, 0.683083, -0.720680,
		30.337122, 38.269951, 34.432987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028156, 37.859734, 34.706295>,  <30.254246, 37.791794, 34.937466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028156, 37.859734, 34.706295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787205, 38.177513, 34.675335>,  <30.642633, 38.368179, 34.656757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787205, 38.177513, 34.675335>,  <31.028156, 37.859734, 34.706295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787205, 38.177513, 34.675335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638810, 0.537957, 0.550021,
		0.478604, 0.281874, -0.831556,
		-0.602378, 0.794449, -0.077405,
		30.606491, 38.415848, 34.652115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521357, 38.398201, 34.685596>,  <31.028156, 37.859734, 34.706295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521357, 38.398201, 34.685596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150410, 38.524887, 34.765278>,  <30.927841, 38.600899, 34.813087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150410, 38.524887, 34.765278>,  <31.521357, 38.398201, 34.685596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150410, 38.524887, 34.765278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370268, 0.700376, 0.610226,
		0.053750, 0.639662, -0.766775,
		-0.927369, 0.316712, 0.199201,
		30.872200, 38.619900, 34.825039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491474, 39.084431, 34.521637>,  <31.521357, 38.398201, 34.685596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491474, 39.084431, 34.521637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179539, 39.032124, 34.766506>,  <30.992378, 39.000740, 34.913425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179539, 39.032124, 34.766506>,  <31.491474, 39.084431, 34.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179539, 39.032124, 34.766506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282156, 0.799528, 0.530229,
		-0.558784, 0.586220, -0.586606,
		-0.779839, -0.130769, 0.612169,
		30.945587, 38.992893, 34.950157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135601, 38.862598, 34.768295>,  <31.491474, 39.084431, 34.521637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135601, 38.862598, 34.768295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489906, 38.682865, 34.814808>,  <32.702488, 38.575024, 34.842716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489906, 38.682865, 34.814808>,  <32.135601, 38.862598, 34.768295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489906, 38.682865, 34.814808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228329, -0.203720, 0.952031,
		-0.404091, -0.869825, -0.283044,
		0.885763, -0.449335, 0.116285,
		32.755634, 38.548065, 34.849693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151337, 38.175465, 34.902622>,  <32.135601, 38.862598, 34.768295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151337, 38.175465, 34.902622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490250, 38.289013, 35.082188>,  <32.693600, 38.357143, 35.189926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490250, 38.289013, 35.082188>,  <32.151337, 38.175465, 34.902622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490250, 38.289013, 35.082188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352439, -0.331827, 0.875030,
		0.397356, -0.899616, -0.181106,
		0.847287, 0.283870, 0.448913,
		32.744434, 38.374172, 35.216862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610550, 37.561291, 35.182659>,  <32.151337, 38.175465, 34.902622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610550, 37.561291, 35.182659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676987, 37.894634, 35.393536>,  <32.716850, 38.094639, 35.520061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676987, 37.894634, 35.393536>,  <32.610550, 37.561291, 35.182659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676987, 37.894634, 35.393536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495834, -0.391540, 0.775142,
		0.852386, -0.390146, 0.348173,
		0.166095, 0.833356, 0.527191,
		32.726814, 38.144642, 35.551693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424072, 36.892181, 34.723804>,  <32.610550, 37.561291, 35.182659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424072, 36.892181, 34.723804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279243, 36.528351, 34.805363>,  <32.192345, 36.310051, 34.854298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279243, 36.528351, 34.805363>,  <32.424072, 36.892181, 34.723804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279243, 36.528351, 34.805363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643611, -0.402171, -0.651170,
		0.674289, -0.104545, 0.731030,
		-0.362076, -0.909576, 0.203894,
		32.170620, 36.255478, 34.866531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001522, 36.443104, 34.959137>,  <32.424072, 36.892181, 34.723804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001522, 36.443104, 34.959137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678352, 36.290016, 34.779900>,  <32.484451, 36.198162, 34.672356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678352, 36.290016, 34.779900>,  <33.001522, 36.443104, 34.959137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678352, 36.290016, 34.779900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570476, -0.317349, -0.757527,
		0.147719, -0.867649, 0.474726,
		-0.807921, -0.382721, -0.448094,
		32.435978, 36.175201, 34.645470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963768, 35.689793, 34.806118>,  <33.001522, 36.443104, 34.959137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963768, 35.689793, 34.806118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727322, 35.854675, 34.528797>,  <32.585453, 35.953606, 34.362404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727322, 35.854675, 34.528797>,  <32.963768, 35.689793, 34.806118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727322, 35.854675, 34.528797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408350, -0.588311, -0.697955,
		-0.695578, -0.695682, 0.179436,
		-0.591119, 0.412209, -0.693298,
		32.549984, 35.978336, 34.320808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709885, 35.220097, 34.397972>,  <32.963768, 35.689793, 34.806118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709885, 35.220097, 34.397972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667309, 35.529583, 34.148159>,  <32.641762, 35.715275, 33.998272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667309, 35.529583, 34.148159>,  <32.709885, 35.220097, 34.397972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667309, 35.529583, 34.148159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103176, -0.616112, -0.780872,
		-0.988951, -0.147555, -0.014248,
		-0.106443, 0.773714, -0.624529,
		32.635376, 35.761696, 33.960800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095375, 35.152855, 33.986698>,  <32.709885, 35.220097, 34.397972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095375, 35.152855, 33.986698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316170, 35.397907, 33.760426>,  <32.448647, 35.544941, 33.624664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316170, 35.397907, 33.760426>,  <32.095375, 35.152855, 33.986698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316170, 35.397907, 33.760426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056749, -0.649216, -0.758484,
		-0.831919, 0.450774, -0.323593,
		0.551987, 0.612634, -0.565677,
		32.481766, 35.581696, 33.590721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875917, 35.188377, 33.242859>,  <32.095375, 35.152855, 33.986698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875917, 35.188377, 33.242859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247204, 35.330593, 33.199039>,  <32.469975, 35.415924, 33.172749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247204, 35.330593, 33.199039>,  <31.875917, 35.188377, 33.242859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247204, 35.330593, 33.199039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072027, -0.460627, -0.884667,
		-0.365000, 0.813272, -0.453171,
		0.928217, 0.355544, -0.109551,
		32.525669, 35.437256, 33.166176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998964, 35.345863, 32.504917>,  <31.875917, 35.188377, 33.242859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998964, 35.345863, 32.504917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366001, 35.306007, 32.658848>,  <32.586224, 35.282093, 32.751205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366001, 35.306007, 32.658848>,  <31.998964, 35.345863, 32.504917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366001, 35.306007, 32.658848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232805, -0.649989, -0.723406,
		0.322216, 0.753383, -0.573229,
		0.917594, -0.099643, 0.384828,
		32.641281, 35.276115, 32.774296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373898, 35.313808, 31.940413>,  <31.998964, 35.345863, 32.504917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373898, 35.313808, 31.940413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641140, 35.171856, 32.202003>,  <32.801487, 35.086685, 32.358959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641140, 35.171856, 32.202003>,  <32.373898, 35.313808, 31.940413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641140, 35.171856, 32.202003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421223, -0.544133, -0.725596,
		0.613351, 0.760250, -0.214058,
		0.668110, -0.354879, 0.653979,
		32.841572, 35.065392, 32.398197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104416, 35.455544, 31.667492>,  <32.373898, 35.313808, 31.940413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104416, 35.455544, 31.667492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193859, 35.160755, 31.922640>,  <33.247524, 34.983883, 32.075729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193859, 35.160755, 31.922640>,  <33.104416, 35.455544, 31.667492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193859, 35.160755, 31.922640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300313, -0.570508, -0.764417,
		0.927260, 0.362490, 0.093752,
		0.223607, -0.736968, 0.637870,
		33.260941, 34.939663, 32.114002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755684, 35.084957, 31.374624>,  <33.104416, 35.455544, 31.667492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755684, 35.084957, 31.374624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611710, 34.832172, 31.649162>,  <33.525326, 34.680500, 31.813885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611710, 34.832172, 31.649162>,  <33.755684, 35.084957, 31.374624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611710, 34.832172, 31.649162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304892, -0.774936, -0.553637,
		0.881750, 0.009985, 0.471610,
		-0.359940, -0.631960, 0.686345,
		33.503727, 34.642586, 31.855066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315861, 34.627365, 31.598911>,  <33.755684, 35.084957, 31.374624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315861, 34.627365, 31.598911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965137, 34.437126, 31.627237>,  <33.754704, 34.322983, 31.644232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965137, 34.437126, 31.627237>,  <34.315861, 34.627365, 31.598911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965137, 34.437126, 31.627237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358810, -0.745184, -0.562100,
		0.320104, -0.467444, 0.824032,
		-0.876806, -0.475602, 0.070813,
		33.702095, 34.294445, 31.648481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465446, 33.908192, 31.890047>,  <34.315861, 34.627365, 31.598911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465446, 33.908192, 31.890047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117420, 33.915207, 31.692999>,  <33.908604, 33.919415, 31.574770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117420, 33.915207, 31.692999>,  <34.465446, 33.908192, 31.890047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117420, 33.915207, 31.692999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264183, -0.827132, -0.496045,
		-0.416158, -0.561734, 0.715030,
		-0.870069, 0.017534, -0.492618,
		33.856400, 33.920467, 31.545214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382351, 33.234238, 31.606478>,  <34.465446, 33.908192, 31.890047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382351, 33.234238, 31.606478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052227, 33.383583, 31.437025>,  <33.854153, 33.473190, 31.335354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052227, 33.383583, 31.437025>,  <34.382351, 33.234238, 31.606478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052227, 33.383583, 31.437025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001906, -0.752050, -0.659103,
		-0.564675, -0.543158, 0.621387,
		-0.825312, 0.373363, -0.423628,
		33.804634, 33.495594, 31.309937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997322, 32.586842, 31.505117>,  <34.382351, 33.234238, 31.606478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997322, 32.586842, 31.505117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905632, 32.898277, 31.271452>,  <33.850616, 33.085140, 31.131252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905632, 32.898277, 31.271452>,  <33.997322, 32.586842, 31.505117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905632, 32.898277, 31.271452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116074, -0.573998, -0.810588,
		-0.966428, -0.253613, 0.041200,
		-0.229224, 0.778593, -0.584165,
		33.836864, 33.131855, 31.096203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553661, 32.261440, 30.888542>,  <33.997322, 32.586842, 31.505117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553661, 32.261440, 30.888542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711304, 32.610638, 30.773603>,  <33.805889, 32.820156, 30.704641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711304, 32.610638, 30.773603>,  <33.553661, 32.261440, 30.888542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711304, 32.610638, 30.773603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157478, -0.372171, -0.914707,
		-0.905471, 0.315245, -0.284153,
		0.394110, 0.872989, -0.287346,
		33.829536, 32.872536, 30.687399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357662, 32.424294, 30.171951>,  <33.553661, 32.261440, 30.888542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357662, 32.424294, 30.171951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671719, 32.670639, 30.198050>,  <33.860153, 32.818447, 30.213709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671719, 32.670639, 30.198050>,  <33.357662, 32.424294, 30.171951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671719, 32.670639, 30.198050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246586, -0.214231, -0.945146,
		-0.568107, 0.758164, -0.320067,
		0.785143, 0.615868, 0.065247,
		33.907261, 32.855400, 30.217623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407982, 32.687317, 29.415052>,  <33.357662, 32.424294, 30.171951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407982, 32.687317, 29.415052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749886, 32.758083, 29.610228>,  <33.955029, 32.800545, 29.727333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749886, 32.758083, 29.610228>,  <33.407982, 32.687317, 29.415052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749886, 32.758083, 29.610228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513628, -0.153136, -0.844236,
		-0.074638, 0.972240, -0.221764,
		0.854760, 0.176916, 0.487940,
		34.006313, 32.811157, 29.756609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710194, 33.106476, 28.913006>,  <33.407982, 32.687317, 29.415052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710194, 33.106476, 28.913006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997513, 32.955120, 29.146544>,  <34.169903, 32.864307, 29.286665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997513, 32.955120, 29.146544>,  <33.710194, 33.106476, 28.913006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997513, 32.955120, 29.146544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596641, -0.096634, -0.796669,
		0.357873, 0.920587, 0.156353,
		0.718294, -0.378392, 0.583843,
		34.213001, 32.841602, 29.321697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335018, 33.148781, 28.527891>,  <33.710194, 33.106476, 28.913006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335018, 33.148781, 28.527891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461742, 32.891205, 28.806452>,  <34.537777, 32.736660, 28.973587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461742, 32.891205, 28.806452>,  <34.335018, 33.148781, 28.527891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461742, 32.891205, 28.806452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553562, -0.470674, -0.687048,
		0.770195, 0.603164, 0.207346,
		0.316811, -0.643940, 0.696399,
		34.556786, 32.698025, 29.015371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142437, 33.117054, 28.537661>,  <34.335018, 33.148781, 28.527891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142437, 33.117054, 28.537661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980759, 32.780231, 28.680529>,  <34.883751, 32.578140, 28.766249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980759, 32.780231, 28.680529>,  <35.142437, 33.117054, 28.537661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980759, 32.780231, 28.680529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640675, -0.539334, -0.546493,
		0.652812, 0.007941, 0.757479,
		-0.404194, -0.842054, 0.357171,
		34.859501, 32.527615, 28.787680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667263, 32.657169, 28.693703>,  <35.142437, 33.117054, 28.537661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667263, 32.657169, 28.693703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378056, 32.385315, 28.644171>,  <35.204533, 32.222202, 28.614450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378056, 32.385315, 28.644171>,  <35.667263, 32.657169, 28.693703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378056, 32.385315, 28.644171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578663, -0.497905, -0.645941,
		0.377351, -0.538683, 0.753277,
		-0.723018, -0.679640, -0.123831,
		35.161152, 32.181423, 28.607021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022694, 32.097473, 28.614597>,  <35.667263, 32.657169, 28.693703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022694, 32.097473, 28.614597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669621, 31.965620, 28.480608>,  <35.457775, 31.886507, 28.400213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669621, 31.965620, 28.480608>,  <36.022694, 32.097473, 28.614597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669621, 31.965620, 28.480608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469486, -0.586232, -0.660239,
		0.021266, -0.740048, 0.672217,
		-0.882684, -0.329637, -0.334975,
		35.404816, 31.866730, 28.380116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156002, 31.469469, 28.414389>,  <36.022694, 32.097473, 28.614597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156002, 31.469469, 28.414389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819054, 31.550249, 28.214535>,  <35.616886, 31.598717, 28.094624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819054, 31.550249, 28.214535>,  <36.156002, 31.469469, 28.414389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819054, 31.550249, 28.214535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360395, -0.478196, -0.800902,
		-0.400667, -0.854718, 0.330033,
		-0.842366, 0.201953, -0.499634,
		35.566345, 31.610834, 28.064646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921284, 30.914499, 28.141098>,  <36.156002, 31.469469, 28.414389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921284, 30.914499, 28.141098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701576, 31.165474, 27.920324>,  <35.569752, 31.316059, 27.787861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701576, 31.165474, 27.920324>,  <35.921284, 30.914499, 28.141098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701576, 31.165474, 27.920324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263127, -0.497028, -0.826878,
		-0.793139, -0.599406, 0.107907,
		-0.549269, 0.627436, -0.551932,
		35.536797, 31.353704, 27.754745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449760, 30.451864, 27.764032>,  <35.921284, 30.914499, 28.141098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449760, 30.451864, 27.764032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469116, 30.795023, 27.559416>,  <35.480728, 31.000917, 27.436646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469116, 30.795023, 27.559416>,  <35.449760, 30.451864, 27.764032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469116, 30.795023, 27.559416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133611, -0.513098, -0.847867,
		-0.989852, -0.027323, -0.139450,
		0.048385, 0.857895, -0.511542,
		35.483631, 31.052391, 27.405952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028885, 30.307835, 27.211113>,  <35.449760, 30.451864, 27.764032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028885, 30.307835, 27.211113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278320, 30.607624, 27.122187>,  <35.427982, 30.787498, 27.068830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278320, 30.607624, 27.122187>,  <35.028885, 30.307835, 27.211113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278320, 30.607624, 27.122187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319060, -0.503618, -0.802851,
		-0.713681, 0.429715, -0.553177,
		0.623587, 0.749476, -0.222318,
		35.465397, 30.832466, 27.055490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909927, 30.413504, 26.520098>,  <35.028885, 30.307835, 27.211113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909927, 30.413504, 26.520098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273659, 30.569185, 26.578947>,  <35.491898, 30.662594, 26.614258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273659, 30.569185, 26.578947>,  <34.909927, 30.413504, 26.520098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273659, 30.569185, 26.578947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287417, -0.331877, -0.898470,
		-0.300860, 0.859289, -0.413648,
		0.909326, 0.389203, 0.147126,
		35.546455, 30.685946, 26.623085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067780, 30.875114, 25.906921>,  <34.909927, 30.413504, 26.520098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067780, 30.875114, 25.906921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420242, 30.783569, 26.072418>,  <35.631721, 30.728643, 26.171717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420242, 30.783569, 26.072418>,  <35.067780, 30.875114, 25.906921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420242, 30.783569, 26.072418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357878, -0.249046, -0.899944,
		0.309002, 0.941063, -0.137545,
		0.881159, -0.228861, 0.413741,
		35.684589, 30.714911, 26.196541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506893, 31.180279, 25.472294>,  <35.067780, 30.875114, 25.906921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506893, 31.180279, 25.472294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726166, 30.903204, 25.659777>,  <35.857727, 30.736959, 25.772266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726166, 30.903204, 25.659777>,  <35.506893, 31.180279, 25.472294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726166, 30.903204, 25.659777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305150, -0.356133, -0.883206,
		0.778706, 0.627181, 0.016148,
		0.548179, -0.692686, 0.468707,
		35.890621, 30.695398, 25.800388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132271, 31.273830, 25.259115>,  <35.506893, 31.180279, 25.472294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132271, 31.273830, 25.259115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133549, 30.898422, 25.397198>,  <36.134315, 30.673178, 25.480047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133549, 30.898422, 25.397198>,  <36.132271, 31.273830, 25.259115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133549, 30.898422, 25.397198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520872, -0.293120, -0.801731,
		0.853629, 0.182367, 0.487914,
		0.003192, -0.938522, 0.345206,
		36.134506, 30.616865, 25.500759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791103, 31.059332, 25.386375>,  <36.132271, 31.273830, 25.259115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791103, 31.059332, 25.386375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575905, 30.725552, 25.338625>,  <36.446785, 30.525284, 25.309975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575905, 30.725552, 25.338625>,  <36.791103, 31.059332, 25.386375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575905, 30.725552, 25.338625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584865, -0.267540, -0.765739,
		0.607033, -0.481785, 0.631977,
		-0.538000, -0.834449, -0.119374,
		36.414505, 30.475216, 25.302813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309784, 30.592712, 25.368547>,  <36.791103, 31.059332, 25.386375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309784, 30.592712, 25.368547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010983, 30.404898, 25.180286>,  <36.831699, 30.292208, 25.067329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010983, 30.404898, 25.180286>,  <37.309784, 30.592712, 25.368547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010983, 30.404898, 25.180286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649508, -0.364391, -0.667352,
		0.141846, -0.804210, 0.577171,
		-0.747007, -0.469538, -0.470653,
		36.786880, 30.264036, 25.039091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502056, 29.920582, 25.318466>,  <37.309784, 30.592712, 25.368547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502056, 29.920582, 25.318466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225445, 29.962286, 25.032551>,  <37.059479, 29.987309, 24.861002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225445, 29.962286, 25.032551>,  <37.502056, 29.920582, 25.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225445, 29.962286, 25.032551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570823, -0.527522, -0.629191,
		-0.442666, -0.843119, 0.305281,
		-0.691525, 0.104260, -0.714788,
		37.017986, 29.993565, 24.818113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618229, 29.288509, 24.894989>,  <37.502056, 29.920582, 25.318466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618229, 29.288509, 24.894989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371540, 29.490738, 24.653641>,  <37.223526, 29.612076, 24.508831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371540, 29.490738, 24.653641>,  <37.618229, 29.288509, 24.894989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371540, 29.490738, 24.653641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482355, -0.363028, -0.797211,
		-0.622086, -0.782694, -0.019978,
		-0.616719, 0.505571, -0.603371,
		37.186523, 29.642408, 24.472630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478119, 28.792822, 24.370266>,  <37.618229, 29.288509, 24.894989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478119, 28.792822, 24.370266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388687, 29.160011, 24.239218>,  <37.335030, 29.380325, 24.160589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388687, 29.160011, 24.239218>,  <37.478119, 28.792822, 24.370266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388687, 29.160011, 24.239218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377605, -0.228304, -0.897380,
		-0.898569, -0.324348, -0.295587,
		-0.223580, 0.917973, -0.327623,
		37.321613, 29.435404, 24.140930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162258, 28.677485, 23.752342>,  <37.478119, 28.792822, 24.370266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162258, 28.677485, 23.752342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288227, 29.056850, 23.737757>,  <37.363808, 29.284470, 23.729006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288227, 29.056850, 23.737757>,  <37.162258, 28.677485, 23.752342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288227, 29.056850, 23.737757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415757, -0.172387, -0.892989,
		-0.853211, 0.266062, -0.448600,
		0.314923, 0.948416, -0.036465,
		37.382706, 29.341375, 23.726816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990513, 28.857489, 23.116713>,  <37.162258, 28.677485, 23.752342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990513, 28.857489, 23.116713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277847, 29.119553, 23.210310>,  <37.450249, 29.276791, 23.266468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277847, 29.119553, 23.210310>,  <36.990513, 28.857489, 23.116713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277847, 29.119553, 23.210310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331520, -0.026665, -0.943071,
		-0.611625, 0.755018, -0.236354,
		0.718338, 0.655162, 0.233994,
		37.493347, 29.316101, 23.280508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959713, 29.292572, 22.553394>,  <36.990513, 28.857489, 23.116713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959713, 29.292572, 22.553394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314568, 29.301302, 22.737793>,  <37.527481, 29.306540, 22.848433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314568, 29.301302, 22.737793>,  <36.959713, 29.292572, 22.553394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314568, 29.301302, 22.737793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461513, -0.039061, -0.886273,
		-0.001336, 0.998998, -0.044726,
		0.887133, 0.021826, 0.460998,
		37.580708, 29.307850, 22.876093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420567, 29.797384, 22.150999>,  <36.959713, 29.292572, 22.553394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420567, 29.797384, 22.150999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655338, 29.571428, 22.383003>,  <37.796200, 29.435854, 22.522205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655338, 29.571428, 22.383003>,  <37.420567, 29.797384, 22.150999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655338, 29.571428, 22.383003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682618, -0.039967, -0.729681,
		0.435372, 0.824196, 0.362148,
		0.586927, -0.564892, 0.580012,
		37.831417, 29.401960, 22.557007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963200, 29.965778, 21.834278>,  <37.420567, 29.797384, 22.150999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963200, 29.965778, 21.834278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036488, 29.630701, 22.040073>,  <38.080460, 29.429655, 22.163551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036488, 29.630701, 22.040073>,  <37.963200, 29.965778, 21.834278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036488, 29.630701, 22.040073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530170, -0.356521, -0.769293,
		0.827859, 0.413716, 0.378799,
		0.183219, -0.837695, 0.514489,
		38.091454, 29.379393, 22.194420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605888, 29.980289, 21.933046>,  <37.963200, 29.965778, 21.834278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605888, 29.980289, 21.933046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534191, 29.586769, 21.934376>,  <38.491173, 29.350657, 21.935173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534191, 29.586769, 21.934376>,  <38.605888, 29.980289, 21.933046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534191, 29.586769, 21.934376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617157, -0.115073, -0.778380,
		0.766151, -0.137472, 0.627785,
		-0.179247, -0.983799, 0.003321,
		38.480415, 29.291630, 21.935371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142586, 29.703001, 21.673414>,  <38.605888, 29.980289, 21.933046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142586, 29.703001, 21.673414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898354, 29.386862, 21.653229>,  <38.751816, 29.197178, 21.641117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898354, 29.386862, 21.653229>,  <39.142586, 29.703001, 21.673414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898354, 29.386862, 21.653229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491255, -0.327996, -0.806900,
		0.621178, -0.517467, 0.588529,
		-0.610579, -0.790346, -0.050465,
		38.715179, 29.149757, 21.638090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555260, 29.009598, 21.721577>,  <39.142586, 29.703001, 21.673414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555260, 29.009598, 21.721577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219883, 28.951908, 21.511353>,  <39.018658, 28.917294, 21.385218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219883, 28.951908, 21.511353>,  <39.555260, 29.009598, 21.721577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219883, 28.951908, 21.511353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543272, -0.144632, -0.827005,
		0.043260, -0.978918, 0.199618,
		-0.838441, -0.144223, -0.525562,
		38.968349, 28.908642, 21.353683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867729, 28.708572, 21.193121>,  <39.555260, 29.009598, 21.721577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867729, 28.708572, 21.193121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493332, 28.759493, 21.061840>,  <39.268696, 28.790045, 20.983072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493332, 28.759493, 21.061840>,  <39.867729, 28.708572, 21.193121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493332, 28.759493, 21.061840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333001, 0.017832, -0.942758,
		-0.114164, -0.991704, -0.059082,
		-0.935990, 0.127304, -0.328203,
		39.212536, 28.797684, 20.963379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707317, 28.113152, 20.747162>,  <39.867729, 28.708572, 21.193121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707317, 28.113152, 20.747162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473866, 28.428288, 20.668482>,  <39.333794, 28.617369, 20.621273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473866, 28.428288, 20.668482>,  <39.707317, 28.113152, 20.747162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473866, 28.428288, 20.668482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267100, -0.042501, -0.962731,
		-0.766836, -0.614415, -0.185627,
		-0.583627, 0.787838, -0.196701,
		39.298779, 28.664639, 20.609472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192879, 27.929842, 20.238262>,  <39.707317, 28.113152, 20.747162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192879, 27.929842, 20.238262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211639, 28.327383, 20.198149>,  <39.222897, 28.565908, 20.174080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211639, 28.327383, 20.198149>,  <39.192879, 27.929842, 20.238262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211639, 28.327383, 20.198149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043692, -0.102339, -0.993789,
		-0.997944, 0.042226, -0.048223,
		0.046899, 0.993853, -0.100284,
		39.225708, 28.625540, 20.168064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593353, 28.230133, 19.940483>,  <39.192879, 27.929842, 20.238262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593353, 28.230133, 19.940483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935295, 28.423010, 19.863831>,  <39.140461, 28.538736, 19.817839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935295, 28.423010, 19.863831>,  <38.593353, 28.230133, 19.940483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935295, 28.423010, 19.863831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154520, -0.115990, -0.981157,
		-0.495333, 0.868353, -0.024646,
		0.854850, 0.482192, -0.191632,
		39.191750, 28.567667, 19.806341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437206, 28.794142, 19.522858>,  <38.593353, 28.230133, 19.940483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437206, 28.794142, 19.522858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822361, 28.716671, 19.447666>,  <39.053455, 28.670189, 19.402552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822361, 28.716671, 19.447666>,  <38.437206, 28.794142, 19.522858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822361, 28.716671, 19.447666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152717, 0.183308, -0.971121,
		0.222544, 0.963788, 0.146927,
		0.962887, -0.193679, -0.187980,
		39.111229, 28.658567, 19.391272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561996, 29.071810, 18.898117>,  <38.437206, 28.794142, 19.522858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561996, 29.071810, 18.898117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892246, 28.857052, 18.967493>,  <39.090397, 28.728197, 19.009119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892246, 28.857052, 18.967493>,  <38.561996, 29.071810, 18.898117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892246, 28.857052, 18.967493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139461, -0.103671, -0.984786,
		0.546709, 0.837254, -0.010717,
		0.825627, -0.536897, 0.173442,
		39.139935, 28.695982, 19.019526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046082, 28.556850, 18.502810>,  <38.561996, 29.071810, 18.898117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046082, 28.556850, 18.502810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938202, 28.862059, 18.267841>,  <38.873474, 29.045183, 18.126862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938202, 28.862059, 18.267841>,  <39.046082, 28.556850, 18.502810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938202, 28.862059, 18.267841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962226, 0.189965, -0.195024,
		-0.037218, -0.617827, -0.785433,
		-0.269696, 0.763022, -0.587419,
		38.857292, 29.090965, 18.091616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709415, 28.715626, 18.531601>,  <39.046082, 28.556850, 18.502810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709415, 28.715626, 18.531601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002537, 28.987492, 18.518629>,  <40.178410, 29.150612, 18.510845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002537, 28.987492, 18.518629>,  <39.709415, 28.715626, 18.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002537, 28.987492, 18.518629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497821, 0.568016, 0.655386,
		0.463862, -0.464128, 0.754597,
		0.732807, 0.679664, -0.032429,
		40.222378, 29.191391, 18.508900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948654, 29.003084, 19.246054>,  <39.709415, 28.715626, 18.531601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948654, 29.003084, 19.246054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959473, 29.275528, 18.953381>,  <39.965961, 29.438993, 18.777777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959473, 29.275528, 18.953381>,  <39.948654, 29.003084, 19.246054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959473, 29.275528, 18.953381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504933, 0.641017, 0.578048,
		0.862735, 0.353819, 0.361249,
		0.027043, 0.681109, -0.731683,
		39.967587, 29.479860, 18.733875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306671, 29.647287, 19.398504>,  <39.948654, 29.003084, 19.246054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306671, 29.647287, 19.398504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984066, 29.715559, 19.172087>,  <39.790504, 29.756521, 19.036236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984066, 29.715559, 19.172087>,  <40.306671, 29.647287, 19.398504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984066, 29.715559, 19.172087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289183, 0.721188, 0.629493,
		0.515664, 0.671384, -0.532291,
		-0.806513, 0.170678, -0.566044,
		39.742111, 29.766762, 19.002274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205692, 30.329716, 19.312954>,  <40.306671, 29.647287, 19.398504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205692, 30.329716, 19.312954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837212, 30.180561, 19.268528>,  <39.616123, 30.091068, 19.241873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837212, 30.180561, 19.268528>,  <40.205692, 30.329716, 19.312954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837212, 30.180561, 19.268528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371826, 0.759682, 0.533506,
		-0.114563, 0.532766, -0.838472,
		-0.921206, -0.372886, -0.111065,
		39.560848, 30.068695, 19.235209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757893, 30.925606, 19.073559>,  <40.205692, 30.329716, 19.312954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757893, 30.925606, 19.073559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516571, 30.668880, 19.262917>,  <39.371777, 30.514845, 19.376532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516571, 30.668880, 19.262917>,  <39.757893, 30.925606, 19.073559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516571, 30.668880, 19.262917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285248, 0.727978, 0.623443,
		-0.744753, 0.241092, -0.622268,
		-0.603305, -0.641812, 0.473393,
		39.335579, 30.476337, 19.404934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123131, 31.369286, 19.337610>,  <39.757893, 30.925606, 19.073559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123131, 31.369286, 19.337610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158997, 31.032045, 19.549700>,  <39.180515, 30.829700, 19.676954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158997, 31.032045, 19.549700>,  <39.123131, 31.369286, 19.337610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158997, 31.032045, 19.549700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276848, 0.490292, 0.826420,
		-0.956722, -0.220889, -0.189451,
		0.089661, -0.843103, 0.530225,
		39.185894, 30.779114, 19.708767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428925, 31.331367, 19.771061>,  <39.123131, 31.369286, 19.337610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428925, 31.331367, 19.771061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699448, 31.087685, 19.936703>,  <38.861759, 30.941475, 20.036087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699448, 31.087685, 19.936703>,  <38.428925, 31.331367, 19.771061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699448, 31.087685, 19.936703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208285, 0.381071, 0.900779,
		-0.706563, -0.695451, 0.130831,
		0.676304, -0.609207, 0.414102,
		38.902340, 30.904922, 20.060934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076900, 30.894760, 20.300299>,  <38.428925, 31.331367, 19.771061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076900, 30.894760, 20.300299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463360, 30.902214, 20.403231>,  <38.695236, 30.906687, 20.464991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463360, 30.902214, 20.403231>,  <38.076900, 30.894760, 20.300299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463360, 30.902214, 20.403231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252412, 0.274810, 0.927776,
		-0.053427, -0.961318, 0.270210,
		0.966144, 0.018636, 0.257330,
		38.753204, 30.907804, 20.480431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164993, 30.604183, 20.951445>,  <38.076900, 30.894760, 20.300299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164993, 30.604183, 20.951445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492218, 30.830721, 20.911404>,  <38.688553, 30.966644, 20.887379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492218, 30.830721, 20.911404>,  <38.164993, 30.604183, 20.951445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492218, 30.830721, 20.911404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107266, 0.321250, 0.940900,
		0.565034, -0.758979, 0.323553,
		0.818065, 0.566347, -0.100105,
		38.737637, 31.000626, 20.881372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384686, 30.626257, 21.649065>,  <38.164993, 30.604183, 20.951445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384686, 30.626257, 21.649065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567181, 30.939074, 21.479237>,  <38.676678, 31.126762, 21.377340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567181, 30.939074, 21.479237>,  <38.384686, 30.626257, 21.649065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567181, 30.939074, 21.479237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089688, 0.515105, 0.852422,
		0.885327, -0.350829, 0.305150,
		0.456238, 0.782040, -0.424571,
		38.704052, 31.173685, 21.351866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775803, 30.862204, 22.155090>,  <38.384686, 30.626257, 21.649065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775803, 30.862204, 22.155090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794975, 31.185658, 21.920549>,  <38.806480, 31.379730, 21.779825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794975, 31.185658, 21.920549>,  <38.775803, 30.862204, 22.155090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794975, 31.185658, 21.920549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142403, 0.586563, 0.797286,
		0.988648, 0.045285, 0.143266,
		0.047930, 0.808636, -0.586353,
		38.809353, 31.428249, 21.744644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191917, 31.331453, 22.486849>,  <38.775803, 30.862204, 22.155090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191917, 31.331453, 22.486849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996010, 31.574097, 22.236361>,  <38.878464, 31.719683, 22.086067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996010, 31.574097, 22.236361>,  <39.191917, 31.331453, 22.486849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996010, 31.574097, 22.236361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070117, 0.688533, 0.721807,
		0.869028, 0.397428, -0.294689,
		-0.489769, 0.606608, -0.626221,
		38.849079, 31.756079, 22.048494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571659, 32.053913, 22.536566>,  <39.191917, 31.331453, 22.486849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571659, 32.053913, 22.536566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192444, 32.094307, 22.415880>,  <38.964916, 32.118546, 22.343470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192444, 32.094307, 22.415880>,  <39.571659, 32.053913, 22.536566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192444, 32.094307, 22.415880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159460, 0.669777, 0.725239,
		0.275321, 0.735663, -0.618868,
		-0.948035, 0.100989, -0.301713,
		38.908031, 32.124603, 22.325367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425327, 32.706795, 22.747488>,  <39.571659, 32.053913, 22.536566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425327, 32.706795, 22.747488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058365, 32.570259, 22.665657>,  <38.838188, 32.488338, 22.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058365, 32.570259, 22.665657>,  <39.425327, 32.706795, 22.747488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058365, 32.570259, 22.665657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395093, 0.719707, 0.570897,
		-0.047636, 0.604571, -0.795125,
		-0.917405, -0.341344, -0.204578,
		38.783142, 32.467857, 22.604284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011215, 33.276348, 22.627989>,  <39.425327, 32.706795, 22.747488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011215, 33.276348, 22.627989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753620, 32.983624, 22.717186>,  <38.599064, 32.807987, 22.770704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753620, 32.983624, 22.717186>,  <39.011215, 33.276348, 22.627989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753620, 32.983624, 22.717186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448881, 0.597482, 0.664470,
		-0.619506, 0.327812, -0.713269,
		-0.643986, -0.731816, 0.222995,
		38.560425, 32.764080, 22.784084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374817, 33.546043, 22.813757>,  <39.011215, 33.276348, 22.627989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374817, 33.546043, 22.813757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298294, 33.176888, 22.947428>,  <38.252380, 32.955395, 23.027630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298294, 33.176888, 22.947428>,  <38.374817, 33.546043, 22.813757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298294, 33.176888, 22.947428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413296, 0.384554, 0.825412,
		-0.890273, 0.019797, -0.454996,
		-0.191311, -0.922890, 0.334176,
		38.240902, 32.900021, 23.047680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642929, 33.397179, 23.015617>,  <38.374817, 33.546043, 22.813757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642929, 33.397179, 23.015617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857243, 33.143147, 23.238188>,  <37.985832, 32.990726, 23.371729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857243, 33.143147, 23.238188>,  <37.642929, 33.397179, 23.015617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857243, 33.143147, 23.238188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490549, 0.302242, 0.817320,
		-0.687240, -0.710858, -0.149603,
		0.535782, -0.635083, 0.556424,
		38.017979, 32.952621, 23.405115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156841, 33.054882, 23.467102>,  <37.642929, 33.397179, 23.015617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156841, 33.054882, 23.467102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516457, 33.015152, 23.637682>,  <37.732227, 32.991314, 23.740030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516457, 33.015152, 23.637682>,  <37.156841, 33.054882, 23.467102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516457, 33.015152, 23.637682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393015, 0.246337, 0.885922,
		-0.193042, -0.964082, 0.182431,
		0.899041, -0.099322, 0.426452,
		37.786167, 32.985355, 23.765617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974258, 32.681026, 24.026512>,  <37.156841, 33.054882, 23.467102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974258, 32.681026, 24.026512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346470, 32.757111, 24.151691>,  <37.569798, 32.802761, 24.226799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346470, 32.757111, 24.151691>,  <36.974258, 32.681026, 24.026512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346470, 32.757111, 24.151691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337106, 0.110972, 0.934904,
		0.143102, -0.975451, 0.167385,
		0.930528, 0.190213, 0.312950,
		37.625629, 32.814175, 24.245577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179832, 32.244164, 24.597059>,  <36.974258, 32.681026, 24.026512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179832, 32.244164, 24.597059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399067, 32.574394, 24.650772>,  <37.530605, 32.772533, 24.683001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399067, 32.574394, 24.650772>,  <37.179832, 32.244164, 24.597059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399067, 32.574394, 24.650772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494374, 0.190246, 0.848175,
		0.674685, -0.531256, 0.512413,
		0.548083, 0.825574, 0.134283,
		37.563492, 32.822067, 24.691057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352058, 32.300911, 25.275084>,  <37.179832, 32.244164, 24.597059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352058, 32.300911, 25.275084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422394, 32.681694, 25.174791>,  <37.464596, 32.910164, 25.114616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422394, 32.681694, 25.174791>,  <37.352058, 32.300911, 25.275084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422394, 32.681694, 25.174791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374794, 0.300256, 0.877141,
		0.910281, -0.060258, 0.409582,
		0.175834, 0.951954, -0.250733,
		37.475143, 32.967281, 25.099571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619072, 32.682178, 25.893003>,  <37.352058, 32.300911, 25.275084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619072, 32.682178, 25.893003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484318, 32.966843, 25.646412>,  <37.403465, 33.137642, 25.498457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484318, 32.966843, 25.646412>,  <37.619072, 32.682178, 25.893003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484318, 32.966843, 25.646412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594353, 0.347076, 0.725453,
		0.730242, 0.610800, 0.306054,
		-0.336883, 0.711661, -0.616481,
		37.383251, 33.180340, 25.461468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545181, 33.272385, 26.305891>,  <37.619072, 32.682178, 25.893003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545181, 33.272385, 26.305891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304722, 33.346775, 25.995012>,  <37.160446, 33.391407, 25.808485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304722, 33.346775, 25.995012>,  <37.545181, 33.272385, 26.305891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304722, 33.346775, 25.995012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696036, 0.355976, 0.623551,
		0.392628, 0.915803, -0.084550,
		-0.601147, 0.185974, -0.777198,
		37.124378, 33.402569, 25.761852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437714, 33.954052, 26.229582>,  <37.545181, 33.272385, 26.305891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437714, 33.954052, 26.229582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094421, 33.779736, 26.121126>,  <36.888447, 33.675144, 26.056053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094421, 33.779736, 26.121126>,  <37.437714, 33.954052, 26.229582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094421, 33.779736, 26.121126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508167, 0.647271, 0.568161,
		-0.072098, 0.625400, -0.776966,
		-0.858235, -0.435792, -0.271141,
		36.836952, 33.648998, 26.039783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020657, 34.391331, 26.518810>,  <37.437714, 33.954052, 26.229582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020657, 34.391331, 26.518810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758259, 34.127556, 26.371939>,  <36.600819, 33.969292, 26.283815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758259, 34.127556, 26.371939>,  <37.020657, 34.391331, 26.518810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758259, 34.127556, 26.371939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710493, 0.375349, 0.595241,
		-0.254701, 0.651353, -0.714749,
		-0.655993, -0.659433, -0.367181,
		36.561462, 33.929726, 26.261784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485710, 34.773926, 26.206385>,  <37.020657, 34.391331, 26.518810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485710, 34.773926, 26.206385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291237, 34.434437, 26.289616>,  <36.174553, 34.230743, 26.339554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291237, 34.434437, 26.289616>,  <36.485710, 34.773926, 26.206385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291237, 34.434437, 26.289616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736442, 0.526123, 0.425263,
		-0.470405, 0.053517, -0.880826,
		-0.486181, -0.848723, 0.208078,
		36.145382, 34.179821, 26.352039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635147, 34.842735, 26.066221>,  <36.485710, 34.773926, 26.206385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635147, 34.842735, 26.066221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682724, 34.532242, 26.313871>,  <35.711269, 34.345947, 26.462461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682724, 34.532242, 26.313871>,  <35.635147, 34.842735, 26.066221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682724, 34.532242, 26.313871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805062, 0.289570, 0.517711,
		-0.581144, -0.560012, -0.590473,
		0.118941, -0.776232, 0.619126,
		35.718407, 34.299374, 26.499609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925449, 34.652946, 26.213039>,  <35.635147, 34.842735, 26.066221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925449, 34.652946, 26.213039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156445, 34.491962, 26.497162>,  <35.295040, 34.395370, 26.667635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156445, 34.491962, 26.497162>,  <34.925449, 34.652946, 26.213039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156445, 34.491962, 26.497162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590577, 0.394775, 0.703826,
		-0.563674, -0.825941, -0.009707,
		0.577486, -0.402461, 0.710306,
		35.329689, 34.371223, 26.710253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466129, 34.299690, 26.685501>,  <34.925449, 34.652946, 26.213039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466129, 34.299690, 26.685501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809418, 34.391312, 26.869236>,  <35.015392, 34.446285, 26.979477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809418, 34.391312, 26.869236>,  <34.466129, 34.299690, 26.685501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809418, 34.391312, 26.869236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512892, 0.347956, 0.784773,
		0.019923, -0.909100, 0.416101,
		0.858222, 0.229050, 0.459338,
		35.066883, 34.460026, 27.007038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341064, 34.073574, 27.397999>,  <34.466129, 34.299690, 26.685501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341064, 34.073574, 27.397999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659843, 34.314697, 27.413492>,  <34.851109, 34.459370, 27.422789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659843, 34.314697, 27.413492>,  <34.341064, 34.073574, 27.397999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659843, 34.314697, 27.413492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398361, 0.476289, 0.783873,
		0.454073, -0.640137, 0.619711,
		0.796947, 0.602805, 0.038736,
		34.898926, 34.495541, 27.425112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533958, 34.147873, 28.034754>,  <34.341064, 34.073574, 27.397999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533958, 34.147873, 28.034754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690884, 34.484810, 27.886944>,  <34.785038, 34.686974, 27.798258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690884, 34.484810, 27.886944>,  <34.533958, 34.147873, 28.034754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690884, 34.484810, 27.886944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251320, 0.484605, 0.837852,
		0.884833, -0.235831, 0.401815,
		0.392312, 0.842343, -0.369525,
		34.808578, 34.737514, 27.776087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975613, 34.388794, 28.525551>,  <34.533958, 34.147873, 28.034754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975613, 34.388794, 28.525551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908501, 34.716419, 28.306105>,  <34.868233, 34.912994, 28.174437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908501, 34.716419, 28.306105>,  <34.975613, 34.388794, 28.525551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908501, 34.716419, 28.306105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185782, 0.520265, 0.833552,
		0.968160, 0.241777, 0.064877,
		-0.167781, 0.819065, -0.548618,
		34.858166, 34.962139, 28.141520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171837, 34.905636, 28.948145>,  <34.975613, 34.388794, 28.525551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171837, 34.905636, 28.948145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979847, 35.102268, 28.657497>,  <34.864655, 35.220245, 28.483109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979847, 35.102268, 28.657497>,  <35.171837, 34.905636, 28.948145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979847, 35.102268, 28.657497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315251, 0.676289, 0.665770,
		0.818683, 0.548620, -0.169630,
		-0.479973, 0.491579, -0.726620,
		34.835854, 35.249741, 28.439512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362659, 35.571346, 29.062544>,  <35.171837, 34.905636, 28.948145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362659, 35.571346, 29.062544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026630, 35.594627, 28.846807>,  <34.825012, 35.608597, 28.717365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026630, 35.594627, 28.846807>,  <35.362659, 35.571346, 29.062544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026630, 35.594627, 28.846807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327253, 0.738567, 0.589427,
		0.432647, 0.671663, -0.601402,
		-0.840072, 0.058203, -0.539343,
		34.774609, 35.612087, 28.685005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238110, 36.267975, 28.972221>,  <35.362659, 35.571346, 29.062544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238110, 36.267975, 28.972221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889313, 36.081886, 28.911291>,  <34.680035, 35.970234, 28.874733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889313, 36.081886, 28.911291>,  <35.238110, 36.267975, 28.972221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889313, 36.081886, 28.911291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429953, 0.579092, 0.692670,
		-0.234032, 0.669495, -0.704986,
		-0.871991, -0.465218, -0.152325,
		34.627716, 35.942322, 28.865593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718838, 36.817825, 28.849720>,  <35.238110, 36.267975, 28.972221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718838, 36.817825, 28.849720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518616, 36.492756, 28.969057>,  <34.398483, 36.297714, 29.040659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518616, 36.492756, 28.969057>,  <34.718838, 36.817825, 28.849720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518616, 36.492756, 28.969057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312468, 0.490998, 0.813194,
		-0.807345, 0.313828, -0.499706,
		-0.500558, -0.812670, 0.298344,
		34.368450, 36.248955, 29.058559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126541, 37.120987, 29.034903>,  <34.718838, 36.817825, 28.849720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126541, 37.120987, 29.034903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115303, 36.758648, 29.203968>,  <34.108559, 36.541245, 29.305407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115303, 36.758648, 29.203968>,  <34.126541, 37.120987, 29.034903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115303, 36.758648, 29.203968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478581, 0.383409, 0.789910,
		-0.877594, -0.180087, -0.444295,
		-0.028094, -0.905851, 0.422664,
		34.106876, 36.486893, 29.330767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407265, 37.008465, 29.267593>,  <34.126541, 37.120987, 29.034903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407265, 37.008465, 29.267593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620106, 36.752884, 29.489803>,  <33.747810, 36.599537, 29.623129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620106, 36.752884, 29.489803>,  <33.407265, 37.008465, 29.267593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620106, 36.752884, 29.489803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592886, 0.187217, 0.783222,
		-0.604444, -0.746117, -0.279206,
		0.532103, -0.638951, 0.555524,
		33.779736, 36.561199, 29.656460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845436, 36.675682, 29.629570>,  <33.407265, 37.008465, 29.267593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845436, 36.675682, 29.629570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175682, 36.572483, 29.830286>,  <33.373829, 36.510563, 29.950716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175682, 36.572483, 29.830286>,  <32.845436, 36.675682, 29.629570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175682, 36.572483, 29.830286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444113, 0.251396, 0.859979,
		-0.348017, -0.932866, 0.092979,
		0.825619, -0.257994, 0.501788,
		33.423367, 36.495087, 29.980822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565659, 36.322575, 30.128151>,  <32.845436, 36.675682, 29.629570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565659, 36.322575, 30.128151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934021, 36.446327, 30.222994>,  <33.155037, 36.520580, 30.279900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934021, 36.446327, 30.222994>,  <32.565659, 36.322575, 30.128151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934021, 36.446327, 30.222994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324813, 0.272817, 0.905576,
		0.215477, -0.910965, 0.351728,
		0.920905, 0.309377, 0.237107,
		33.210293, 36.539143, 30.294125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609676, 36.082085, 30.869799>,  <32.565659, 36.322575, 30.128151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609676, 36.082085, 30.869799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861172, 36.385715, 30.802284>,  <33.012070, 36.567894, 30.761776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861172, 36.385715, 30.802284>,  <32.609676, 36.082085, 30.869799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861172, 36.385715, 30.802284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361356, 0.477408, 0.800939,
		0.688553, -0.442592, 0.574462,
		0.628742, 0.759074, -0.168788,
		33.049793, 36.613438, 30.751648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773888, 36.250156, 31.511520>,  <32.609676, 36.082085, 30.869799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773888, 36.250156, 31.511520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921032, 36.567924, 31.318205>,  <33.009319, 36.758587, 31.202215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921032, 36.567924, 31.318205>,  <32.773888, 36.250156, 31.511520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921032, 36.567924, 31.318205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172142, 0.568927, 0.804170,
		0.913807, -0.212631, 0.346041,
		0.367863, 0.794424, -0.483287,
		33.031391, 36.806252, 31.173218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306412, 36.602177, 31.940144>,  <32.773888, 36.250156, 31.511520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306412, 36.602177, 31.940144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136223, 36.845406, 31.672050>,  <33.034107, 36.991344, 31.511194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136223, 36.845406, 31.672050>,  <33.306412, 36.602177, 31.940144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136223, 36.845406, 31.672050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291686, 0.608943, 0.737637,
		0.856673, 0.509345, -0.081724,
		-0.425477, 0.608076, -0.670233,
		33.008579, 37.027828, 31.470980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460232, 37.341671, 32.197296>,  <33.306412, 36.602177, 31.940144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460232, 37.341671, 32.197296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145649, 37.392555, 31.955536>,  <32.956898, 37.423088, 31.810480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145649, 37.392555, 31.955536>,  <33.460232, 37.341671, 32.197296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145649, 37.392555, 31.955536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352730, 0.710779, 0.608584,
		0.507014, 0.691817, -0.514127,
		-0.786459, 0.127212, -0.604399,
		32.909710, 37.430717, 31.774216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356163, 38.070221, 32.196011>,  <33.460232, 37.341671, 32.197296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356163, 38.070221, 32.196011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027515, 37.880890, 32.068951>,  <32.830326, 37.767292, 31.992714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027515, 37.880890, 32.068951>,  <33.356163, 38.070221, 32.196011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027515, 37.880890, 32.068951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549511, 0.509458, 0.662186,
		-0.151602, 0.718617, -0.678680,
		-0.821617, -0.473330, -0.317653,
		32.781029, 37.738892, 31.973654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011219, 38.440117, 32.003166>,  <33.356163, 38.070221, 32.196011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011219, 38.440117, 32.003166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339775, 38.580040, 32.183372>,  <34.536907, 38.663994, 32.291496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339775, 38.580040, 32.183372>,  <34.011219, 38.440117, 32.003166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339775, 38.580040, 32.183372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567393, -0.420483, -0.707996,
		-0.058228, 0.837156, -0.543856,
		0.821386, 0.349805, 0.450513,
		34.586189, 38.684982, 32.318527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432964, 38.865189, 31.564014>,  <34.011219, 38.440117, 32.003166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432964, 38.865189, 31.564014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664360, 38.709282, 31.850632>,  <34.803196, 38.615738, 32.022602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664360, 38.709282, 31.850632>,  <34.432964, 38.865189, 31.564014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664360, 38.709282, 31.850632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645052, -0.319076, -0.694333,
		0.499260, 0.863871, 0.066838,
		0.578487, -0.389766, 0.716543,
		34.837906, 38.592354, 32.065594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079662, 38.956009, 31.266588>,  <34.432964, 38.865189, 31.564014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079662, 38.956009, 31.266588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151520, 38.712872, 31.575975>,  <35.194633, 38.566990, 31.761608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151520, 38.712872, 31.575975>,  <35.079662, 38.956009, 31.266588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151520, 38.712872, 31.575975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635074, -0.528803, -0.563070,
		0.751271, 0.592363, 0.291029,
		0.179645, -0.607843, 0.773469,
		35.205414, 38.530518, 31.808016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818199, 38.849510, 31.250341>,  <35.079662, 38.956009, 31.266588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818199, 38.849510, 31.250341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687897, 38.532555, 31.456642>,  <35.609715, 38.342381, 31.580423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687897, 38.532555, 31.456642>,  <35.818199, 38.849510, 31.250341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687897, 38.532555, 31.456642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704302, -0.567311, -0.426752,
		0.630745, 0.224227, 0.742888,
		-0.325759, -0.792389, 0.515753,
		35.590168, 38.294838, 31.611368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356201, 38.649414, 31.490387>,  <35.818199, 38.849510, 31.250341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356201, 38.649414, 31.490387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115074, 38.330269, 31.488623>,  <35.970398, 38.138783, 31.487564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115074, 38.330269, 31.488623>,  <36.356201, 38.649414, 31.490387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115074, 38.330269, 31.488623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687237, -0.516415, -0.510902,
		0.405353, -0.311014, 0.859628,
		-0.602822, -0.797864, -0.004410,
		35.934227, 38.090908, 31.487299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749874, 38.155624, 31.716097>,  <36.356201, 38.649414, 31.490387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749874, 38.155624, 31.716097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466366, 37.929962, 31.546682>,  <36.296261, 37.794567, 31.445034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466366, 37.929962, 31.546682>,  <36.749874, 38.155624, 31.716097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466366, 37.929962, 31.546682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703624, -0.522247, -0.481842,
		0.050642, -0.639523, 0.767102,
		-0.708766, -0.564152, -0.423536,
		36.253735, 37.760715, 31.419622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955784, 37.494282, 31.688738>,  <36.749874, 38.155624, 31.716097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955784, 37.494282, 31.688738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678246, 37.507427, 31.400988>,  <36.511723, 37.515312, 31.228338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678246, 37.507427, 31.400988>,  <36.955784, 37.494282, 31.688738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678246, 37.507427, 31.400988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602470, -0.520727, -0.604875,
		-0.394473, -0.853091, 0.341507,
		-0.693845, 0.032860, -0.719374,
		36.470093, 37.517284, 31.185175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857624, 36.720470, 31.341669>,  <36.955784, 37.494282, 31.688738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857624, 36.720470, 31.341669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727608, 36.998482, 31.085142>,  <36.649597, 37.165287, 30.931227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727608, 36.998482, 31.085142>,  <36.857624, 36.720470, 31.341669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727608, 36.998482, 31.085142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502943, -0.447241, -0.739610,
		-0.800871, -0.562951, -0.204186,
		-0.325044, 0.695026, -0.641315,
		36.630093, 37.206989, 30.892748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720177, 36.347313, 30.744179>,  <36.857624, 36.720470, 31.341669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720177, 36.347313, 30.744179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729748, 36.719692, 30.598433>,  <36.735493, 36.943119, 30.510984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729748, 36.719692, 30.598433>,  <36.720177, 36.347313, 30.744179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729748, 36.719692, 30.598433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376070, -0.346082, -0.859534,
		-0.926282, -0.116458, -0.358384,
		0.023931, 0.930948, -0.364365,
		36.736927, 36.998978, 30.489122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369308, 36.260620, 30.203215>,  <36.720177, 36.347313, 30.744179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369308, 36.260620, 30.203215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600491, 36.585552, 30.171988>,  <36.739201, 36.780510, 30.153252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600491, 36.585552, 30.171988>,  <36.369308, 36.260620, 30.203215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600491, 36.585552, 30.171988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472689, -0.411212, -0.779404,
		-0.665233, 0.413557, -0.621639,
		0.577953, 0.812327, -0.078068,
		36.773876, 36.829250, 30.148567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291401, 36.555248, 29.540102>,  <36.369308, 36.260620, 30.203215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291401, 36.555248, 29.540102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649334, 36.700554, 29.643883>,  <36.864094, 36.787739, 29.706152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649334, 36.700554, 29.643883>,  <36.291401, 36.555248, 29.540102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649334, 36.700554, 29.643883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361485, -0.248627, -0.898617,
		-0.261931, 0.897899, -0.353794,
		0.894830, 0.363267, 0.259454,
		36.917782, 36.809532, 29.721720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656605, 36.804096, 28.839699>,  <36.291401, 36.555248, 29.540102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656605, 36.804096, 28.839699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950336, 36.798321, 29.111155>,  <37.126575, 36.794857, 29.274029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950336, 36.798321, 29.111155>,  <36.656605, 36.804096, 28.839699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950336, 36.798321, 29.111155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678441, -0.016589, -0.734467,
		0.021862, 0.999758, -0.002387,
		0.734329, -0.014437, 0.678640,
		37.170635, 36.793991, 29.314747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202271, 37.336620, 28.626322>,  <36.656605, 36.804096, 28.839699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202271, 37.336620, 28.626322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385914, 37.103992, 28.894947>,  <37.496101, 36.964417, 29.056122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385914, 37.103992, 28.894947>,  <37.202271, 37.336620, 28.626322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385914, 37.103992, 28.894947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754701, -0.143471, -0.640189,
		0.468665, 0.800744, 0.373044,
		0.459107, -0.581572, 0.671562,
		37.523647, 36.929520, 29.096416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913841, 37.443909, 28.559965>,  <37.202271, 37.336620, 28.626322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913841, 37.443909, 28.559965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 37.074287, 28.703959>,  <37.831535, 36.852516, 28.790356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 37.074287, 28.703959>,  <37.913841, 37.443909, 28.559965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862400, 37.074287, 28.703959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695250, -0.342860, -0.631724,
		0.707170, 0.169040, 0.686539,
		-0.128599, -0.924052, 0.359985,
		37.823822, 36.797073, 28.811954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581352, 37.175091, 28.419498>,  <37.913841, 37.443909, 28.559965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581352, 37.175091, 28.419498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351315, 36.857990, 28.500303>,  <38.213291, 36.667728, 28.548786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351315, 36.857990, 28.500303>,  <38.581352, 37.175091, 28.419498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351315, 36.857990, 28.500303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573894, -0.566917, -0.590974,
		0.583023, -0.223929, 0.780986,
		-0.575091, -0.792755, 0.202014,
		38.178787, 36.620163, 28.560907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107399, 36.662125, 28.433247>,  <38.581352, 37.175091, 28.419498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107399, 36.662125, 28.433247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750031, 36.489708, 28.382637>,  <38.535610, 36.386257, 28.352270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750031, 36.489708, 28.382637>,  <39.107399, 36.662125, 28.433247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750031, 36.489708, 28.382637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418798, -0.697283, -0.581726,
		0.162524, -0.572712, 0.803484,
		-0.893417, -0.431042, -0.126526,
		38.482006, 36.360394, 28.344679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305748, 35.998680, 28.475771>,  <39.107399, 36.662125, 28.433247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305748, 35.998680, 28.475771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962265, 36.026588, 28.272690>,  <38.756176, 36.043335, 28.150841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962265, 36.026588, 28.272690>,  <39.305748, 35.998680, 28.475771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962265, 36.026588, 28.272690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406233, -0.511268, -0.757350,
		-0.312415, -0.856584, 0.410683,
		-0.858703, 0.069774, -0.507700,
		38.704655, 36.047520, 28.120380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140915, 35.349987, 28.272247>,  <39.305748, 35.998680, 28.475771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140915, 35.349987, 28.272247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928902, 35.582760, 28.025534>,  <38.801693, 35.722424, 27.877504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928902, 35.582760, 28.025534>,  <39.140915, 35.349987, 28.272247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928902, 35.582760, 28.025534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386602, -0.481538, -0.786549,
		-0.754723, -0.655345, 0.030254,
		-0.530030, 0.581931, -0.616786,
		38.769894, 35.757339, 27.840498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726753, 34.922707, 27.781248>,  <39.140915, 35.349987, 28.272247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726753, 34.922707, 27.781248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780907, 35.264984, 27.581463>,  <38.813400, 35.470348, 27.461592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780907, 35.264984, 27.581463>,  <38.726753, 34.922707, 27.781248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780907, 35.264984, 27.581463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024233, -0.506813, -0.861715,
		-0.990497, 0.104559, -0.089350,
		0.135384, 0.855691, -0.499463,
		38.821522, 35.521690, 27.431623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425793, 34.793247, 27.158594>,  <38.726753, 34.922707, 27.781248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425793, 34.793247, 27.158594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603359, 35.145218, 27.090868>,  <38.709900, 35.356400, 27.050232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603359, 35.145218, 27.090868>,  <38.425793, 34.793247, 27.158594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603359, 35.145218, 27.090868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156669, -0.262262, -0.952194,
		-0.882264, 0.396172, -0.254281,
		0.443920, 0.879924, -0.169317,
		38.736534, 35.409195, 27.040073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175617, 35.112892, 26.520245>,  <38.425793, 34.793247, 27.158594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175617, 35.112892, 26.520245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545109, 35.245956, 26.596195>,  <38.766804, 35.325794, 26.641766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545109, 35.245956, 26.596195>,  <38.175617, 35.112892, 26.520245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545109, 35.245956, 26.596195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330135, -0.440071, -0.835074,
		-0.194241, 0.834069, -0.516332,
		0.923732, 0.332665, 0.189875,
		38.822227, 35.345757, 26.653158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395355, 35.536175, 25.944668>,  <38.175617, 35.112892, 26.520245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395355, 35.536175, 25.944668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726482, 35.414112, 26.132963>,  <38.925159, 35.340874, 26.245939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726482, 35.414112, 26.132963>,  <38.395355, 35.536175, 25.944668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726482, 35.414112, 26.132963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347706, -0.379403, -0.857411,
		0.440241, 0.873461, -0.207974,
		0.827822, -0.305154, 0.470736,
		38.974831, 35.322567, 26.274183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951523, 35.478901, 25.380419>,  <38.395355, 35.536175, 25.944668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951523, 35.478901, 25.380419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095997, 35.257156, 25.680346>,  <39.182682, 35.124107, 25.860302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095997, 35.257156, 25.680346>,  <38.951523, 35.478901, 25.380419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095997, 35.257156, 25.680346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367303, -0.654512, -0.660835,
		0.857107, 0.514094, -0.032780,
		0.361186, -0.554366, 0.749815,
		39.204353, 35.090847, 25.905291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606762, 35.471447, 25.275915>,  <38.951523, 35.478901, 25.380419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606762, 35.471447, 25.275915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567745, 35.161518, 25.525761>,  <39.544334, 34.975563, 25.675669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567745, 35.161518, 25.525761>,  <39.606762, 35.471447, 25.275915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567745, 35.161518, 25.525761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558666, -0.562026, -0.609934,
		0.823637, 0.289455, 0.487686,
		-0.097544, -0.774818, 0.624614,
		39.538483, 34.929073, 25.713144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257339, 35.163200, 25.447056>,  <39.606762, 35.471447, 25.275915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257339, 35.163200, 25.447056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998371, 34.867699, 25.521984>,  <39.842991, 34.690399, 25.566942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998371, 34.867699, 25.521984>,  <40.257339, 35.163200, 25.447056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998371, 34.867699, 25.521984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562741, -0.629133, -0.536203,
		0.513973, -0.241736, 0.823041,
		-0.647422, -0.738752, 0.187323,
		39.804146, 34.646072, 25.578180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637688, 34.599354, 25.286655>,  <40.257339, 35.163200, 25.447056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637688, 34.599354, 25.286655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274509, 34.439575, 25.337360>,  <40.056602, 34.343708, 25.367783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274509, 34.439575, 25.337360>,  <40.637688, 34.599354, 25.286655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274509, 34.439575, 25.337360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297188, -0.826972, -0.477281,
		0.295479, -0.395674, 0.869560,
		-0.907949, -0.399449, 0.126763,
		40.002125, 34.319740, 25.375389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799194, 33.915180, 25.498755>,  <40.637688, 34.599354, 25.286655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799194, 33.915180, 25.498755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440678, 33.937092, 25.322727>,  <40.225567, 33.950237, 25.217112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440678, 33.937092, 25.322727>,  <40.799194, 33.915180, 25.498755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440678, 33.937092, 25.322727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254856, -0.748475, -0.612237,
		-0.362917, -0.660897, 0.656892,
		-0.896292, 0.054778, -0.440068,
		40.171791, 33.953526, 25.190706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552399, 33.229317, 25.574350>,  <40.799194, 33.915180, 25.498755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552399, 33.229317, 25.574350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344090, 33.399185, 25.278120>,  <40.219105, 33.501106, 25.100382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344090, 33.399185, 25.278120>,  <40.552399, 33.229317, 25.574350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344090, 33.399185, 25.278120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255271, -0.750342, -0.609774,
		-0.814637, -0.506601, 0.282352,
		-0.520772, 0.424668, -0.740577,
		40.187859, 33.526585, 25.055946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338604, 32.633572, 25.047966>,  <40.552399, 33.229317, 25.574350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338604, 32.633572, 25.047966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259830, 32.955322, 24.823753>,  <40.212566, 33.148373, 24.689226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259830, 32.955322, 24.823753>,  <40.338604, 32.633572, 25.047966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259830, 32.955322, 24.823753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287865, -0.499089, -0.817339,
		-0.937204, -0.322319, -0.133264,
		-0.196934, 0.804376, -0.560533,
		40.200748, 33.196636, 24.655594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946964, 32.466549, 24.504833>,  <40.338604, 32.633572, 25.047966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946964, 32.466549, 24.504833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165020, 32.791023, 24.420164>,  <40.295853, 32.985706, 24.369362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165020, 32.791023, 24.420164>,  <39.946964, 32.466549, 24.504833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165020, 32.791023, 24.420164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379624, -0.463970, -0.800386,
		-0.747471, 0.355962, -0.560872,
		0.545135, 0.811186, -0.211673,
		40.328560, 33.034378, 24.356663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940495, 32.424110, 23.822142>,  <39.946964, 32.466549, 24.504833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940495, 32.424110, 23.822142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228359, 32.685219, 23.916777>,  <40.401077, 32.841885, 23.973558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228359, 32.685219, 23.916777>,  <39.940495, 32.424110, 23.822142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228359, 32.685219, 23.916777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418528, -0.135962, -0.897969,
		-0.554001, 0.745255, -0.371049,
		0.719665, 0.652770, 0.236587,
		40.444260, 32.881050, 23.987753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001575, 32.856602, 23.166348>,  <39.940495, 32.424110, 23.822142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001575, 32.856602, 23.166348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337551, 32.870064, 23.383005>,  <40.539135, 32.878143, 23.512999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337551, 32.870064, 23.383005>,  <40.001575, 32.856602, 23.166348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337551, 32.870064, 23.383005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541873, -0.106669, -0.833664,
		0.029716, 0.993725, -0.107834,
		0.839935, 0.033659, 0.541642,
		40.589531, 32.880161, 23.545498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507366, 32.907276, 22.576654>,  <40.001575, 32.856602, 23.166348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507366, 32.907276, 22.576654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708691, 32.769806, 22.893784>,  <40.829483, 32.687325, 23.084061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708691, 32.769806, 22.893784>,  <40.507366, 32.907276, 22.576654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708691, 32.769806, 22.893784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611731, -0.506302, -0.607818,
		0.610300, 0.790914, -0.044589,
		0.503308, -0.343675, 0.792823,
		40.859684, 32.666702, 23.131630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195202, 32.935425, 22.389772>,  <40.507366, 32.907276, 22.576654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195202, 32.935425, 22.389772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168674, 32.679058, 22.695669>,  <41.152756, 32.525238, 22.879208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168674, 32.679058, 22.695669>,  <41.195202, 32.935425, 22.389772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168674, 32.679058, 22.695669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538037, -0.668428, -0.513537,
		0.840308, 0.377401, 0.389167,
		-0.066320, -0.640916, 0.764741,
		41.148777, 32.486782, 22.925091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886410, 32.671177, 22.448181>,  <41.195202, 32.935425, 22.389772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886410, 32.671177, 22.448181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659637, 32.409718, 22.648712>,  <41.523575, 32.252842, 22.769032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659637, 32.409718, 22.648712>,  <41.886410, 32.671177, 22.448181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659637, 32.409718, 22.648712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629390, -0.736344, -0.248325,
		0.531467, 0.174748, 0.828858,
		-0.566930, -0.653652, 0.501327,
		41.489559, 32.213623, 22.799110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272968, 32.220413, 22.845135>,  <41.886410, 32.671177, 22.448181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272968, 32.220413, 22.845135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933304, 32.017529, 22.786259>,  <41.729507, 31.895798, 22.750933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933304, 32.017529, 22.786259>,  <42.272968, 32.220413, 22.845135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933304, 32.017529, 22.786259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521022, -0.758930, -0.390592,
		0.086407, -0.408363, 0.908721,
		-0.849159, -0.507213, -0.147189,
		41.678555, 31.865364, 22.742102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324852, 31.531126, 23.123755>,  <42.272968, 32.220413, 22.845135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324852, 31.531126, 23.123755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027664, 31.490355, 22.859148>,  <41.849350, 31.465891, 22.700384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027664, 31.490355, 22.859148>,  <42.324852, 31.531126, 23.123755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027664, 31.490355, 22.859148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425658, -0.834681, -0.349460,
		-0.516536, -0.541219, 0.663530,
		-0.742971, -0.101929, -0.661517,
		41.804771, 31.459776, 22.660692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149433, 30.758869, 23.181553>,  <42.324852, 31.531126, 23.123755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149433, 30.758869, 23.181553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027042, 30.900345, 22.827993>,  <41.953609, 30.985231, 22.615858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027042, 30.900345, 22.827993>,  <42.149433, 30.758869, 23.181553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027042, 30.900345, 22.827993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244038, -0.868271, -0.431916,
		-0.920230, -0.347862, 0.179357,
		-0.305977, 0.353692, -0.883900,
		41.935249, 31.006453, 22.562822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294376, 30.040483, 23.482370>,  <42.149433, 30.758869, 23.181553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294376, 30.040483, 23.482370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645863, 29.934549, 23.641232>,  <42.856754, 29.870989, 23.736547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645863, 29.934549, 23.641232>,  <42.294376, 30.040483, 23.482370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645863, 29.934549, 23.641232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122573, 0.678911, 0.723917,
		-0.461349, -0.684794, 0.564105,
		0.878711, -0.264834, 0.397152,
		42.909477, 29.855099, 23.760378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185184, 30.248354, 24.220179>,  <42.294376, 30.040483, 23.482370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185184, 30.248354, 24.220179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577564, 30.181284, 24.180925>,  <42.812992, 30.141043, 24.157373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577564, 30.181284, 24.180925>,  <42.185184, 30.248354, 24.220179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577564, 30.181284, 24.180925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185076, 0.652881, 0.734502,
		-0.059089, -0.738669, 0.671474,
		0.980946, -0.167675, -0.098131,
		42.871849, 30.130981, 24.151485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399986, 30.074162, 24.873312>,  <42.185184, 30.248354, 24.220179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399986, 30.074162, 24.873312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691933, 30.258242, 24.671122>,  <42.867100, 30.368690, 24.549807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691933, 30.258242, 24.671122>,  <42.399986, 30.074162, 24.873312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691933, 30.258242, 24.671122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016790, 0.727156, 0.686267,
		0.683378, -0.509373, 0.523004,
		0.729871, 0.460198, -0.505475,
		42.910892, 30.396301, 24.519478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823799, 30.410242, 25.381567>,  <42.399986, 30.074162, 24.873312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823799, 30.410242, 25.381567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955887, 30.583384, 25.046045>,  <43.035141, 30.687267, 24.844732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955887, 30.583384, 25.046045>,  <42.823799, 30.410242, 25.381567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955887, 30.583384, 25.046045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051732, 0.879019, 0.473971,
		0.942485, -0.199909, 0.267879,
		0.330222, 0.432853, -0.838804,
		43.054955, 30.713240, 24.794405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369995, 30.767342, 25.628336>,  <42.823799, 30.410242, 25.381567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369995, 30.767342, 25.628336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237919, 30.907484, 25.277742>,  <43.158672, 30.991570, 25.067387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237919, 30.907484, 25.277742>,  <43.369995, 30.767342, 25.628336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237919, 30.907484, 25.277742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085018, 0.913751, 0.397279,
		0.940076, 0.205696, -0.271929,
		-0.330194, 0.350354, -0.876484,
		43.138859, 31.012590, 25.014797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746674, 31.371902, 25.460581>,  <43.369995, 30.767342, 25.628336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746674, 31.371902, 25.460581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419170, 31.418396, 25.235680>,  <43.222668, 31.446293, 25.100739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419170, 31.418396, 25.235680>,  <43.746674, 31.371902, 25.460581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419170, 31.418396, 25.235680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101717, 0.934435, 0.341300,
		0.565059, 0.336632, -0.753251,
		-0.818757, 0.116236, -0.562252,
		43.173542, 31.453266, 25.067003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718571, 32.062870, 25.170271>,  <43.746674, 31.371902, 25.460581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718571, 32.062870, 25.170271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341694, 31.933781, 25.134207>,  <43.115570, 31.856327, 25.112568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341694, 31.933781, 25.134207>,  <43.718571, 32.062870, 25.170271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341694, 31.933781, 25.134207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319467, 0.783963, 0.532299,
		-0.101103, 0.530330, -0.841741,
		-0.942188, -0.322726, -0.090162,
		43.059036, 31.836964, 25.107159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298870, 32.651875, 24.863903>,  <43.718571, 32.062870, 25.170271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298870, 32.651875, 24.863903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060402, 32.399998, 25.063128>,  <42.917320, 32.248871, 25.182663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060402, 32.399998, 25.063128>,  <43.298870, 32.651875, 24.863903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060402, 32.399998, 25.063128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249482, 0.734949, 0.630562,
		-0.763111, 0.251666, -0.595253,
		-0.596172, -0.629694, 0.498061,
		42.881550, 32.211090, 25.212545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702732, 33.071217, 25.036127>,  <43.298870, 32.651875, 24.863903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702732, 33.071217, 25.036127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670345, 32.768944, 25.296093>,  <42.650913, 32.587582, 25.452072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670345, 32.768944, 25.296093>,  <42.702732, 33.071217, 25.036127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670345, 32.768944, 25.296093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493512, 0.596908, 0.632572,
		-0.865962, -0.269526, -0.421266,
		-0.080963, -0.755683, 0.649914,
		42.646057, 32.542240, 25.491068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059322, 33.112679, 25.306610>,  <42.702732, 33.071217, 25.036127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059322, 33.112679, 25.306610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219322, 32.866852, 25.578583>,  <42.315323, 32.719357, 25.741766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219322, 32.866852, 25.578583>,  <42.059322, 33.112679, 25.306610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219322, 32.866852, 25.578583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441472, 0.520934, 0.730568,
		-0.803182, -0.592400, -0.062939,
		0.400001, -0.614565, 0.679932,
		42.339321, 32.682484, 25.782562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503670, 32.771118, 25.696375>,  <42.059322, 33.112679, 25.306610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503670, 32.771118, 25.696375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814816, 32.750713, 25.946920>,  <42.001503, 32.738472, 26.097248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814816, 32.750713, 25.946920>,  <41.503670, 32.771118, 25.696375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814816, 32.750713, 25.946920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591369, 0.277831, 0.757029,
		-0.212640, -0.959275, 0.185948,
		0.777861, -0.051010, 0.626363,
		42.048172, 32.735409, 26.134829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211502, 32.565815, 26.302809>,  <41.503670, 32.771118, 25.696375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211502, 32.565815, 26.302809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568501, 32.688377, 26.435215>,  <41.782700, 32.761913, 26.514658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568501, 32.688377, 26.435215>,  <41.211502, 32.565815, 26.302809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568501, 32.688377, 26.435215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425681, 0.329470, 0.842760,
		0.149167, -0.893065, 0.424481,
		0.892493, 0.306405, 0.331015,
		41.836250, 32.780300, 26.534519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228115, 32.329651, 27.024448>,  <41.211502, 32.565815, 26.302809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228115, 32.329651, 27.024448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507797, 32.611942, 26.978729>,  <41.675606, 32.781319, 26.951298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507797, 32.611942, 26.978729>,  <41.228115, 32.329651, 27.024448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507797, 32.611942, 26.978729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185361, 0.333363, 0.924397,
		0.690476, -0.625154, 0.363903,
		0.699202, 0.705727, -0.114300,
		41.717560, 32.823662, 26.944439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703529, 32.397171, 27.672209>,  <41.228115, 32.329651, 27.024448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703529, 32.397171, 27.672209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716343, 32.738380, 27.463850>,  <41.724030, 32.943104, 27.338835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716343, 32.738380, 27.463850>,  <41.703529, 32.397171, 27.672209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716343, 32.738380, 27.463850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195981, 0.516406, 0.833616,
		0.980084, 0.075383, 0.183717,
		0.032033, 0.853020, -0.520895,
		41.725952, 32.994286, 27.307581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029549, 32.867268, 28.107216>,  <41.703529, 32.397171, 27.672209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029549, 32.867268, 28.107216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833645, 33.080132, 27.830973>,  <41.716103, 33.207851, 27.665228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833645, 33.080132, 27.830973>,  <42.029549, 32.867268, 28.107216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833645, 33.080132, 27.830973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277477, 0.655782, 0.702108,
		0.826523, 0.535492, -0.173513,
		-0.489760, 0.532163, -0.690607,
		41.686718, 33.239780, 27.623791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239475, 33.584103, 28.172874>,  <42.029549, 32.867268, 28.107216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239475, 33.584103, 28.172874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879292, 33.601818, 27.999804>,  <41.663181, 33.612446, 27.895960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879292, 33.601818, 27.999804>,  <42.239475, 33.584103, 28.172874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879292, 33.601818, 27.999804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290831, 0.678385, 0.674693,
		0.323404, 0.733370, -0.597979,
		-0.900459, 0.044287, -0.432679,
		41.609154, 33.615105, 27.869999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145439, 34.317245, 28.130758>,  <42.239475, 33.584103, 28.172874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145439, 34.317245, 28.130758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787243, 34.162148, 28.043354>,  <41.572323, 34.069088, 27.990911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787243, 34.162148, 28.043354>,  <42.145439, 34.317245, 28.130758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787243, 34.162148, 28.043354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444298, 0.807741, 0.387497,
		0.026252, 0.444085, -0.895600,
		-0.895494, -0.387741, -0.218510,
		41.518593, 34.045826, 27.977800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702454, 34.882999, 27.810432>,  <42.145439, 34.317245, 28.130758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702454, 34.882999, 27.810432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483524, 34.586449, 27.965765>,  <41.352165, 34.408520, 28.058966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483524, 34.586449, 27.965765>,  <41.702454, 34.882999, 27.810432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483524, 34.586449, 27.965765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440470, 0.649709, 0.619568,
		-0.711635, 0.168055, -0.682153,
		-0.547323, -0.741374, 0.388333,
		41.319328, 34.364037, 28.082264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101776, 35.226288, 27.874166>,  <41.702454, 34.882999, 27.810432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101776, 35.226288, 27.874166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065422, 34.907421, 28.112917>,  <41.043610, 34.716099, 28.256166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065422, 34.907421, 28.112917>,  <41.101776, 35.226288, 27.874166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065422, 34.907421, 28.112917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513101, 0.551162, 0.657987,
		-0.853503, -0.246457, -0.459121,
		-0.090885, -0.797169, 0.596876,
		41.038158, 34.668270, 28.291979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517662, 35.310734, 28.107601>,  <41.101776, 35.226288, 27.874166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517662, 35.310734, 28.107601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647255, 35.030495, 28.361906>,  <40.725010, 34.862350, 28.514488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647255, 35.030495, 28.361906>,  <40.517662, 35.310734, 28.107601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647255, 35.030495, 28.361906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439174, 0.483837, 0.756986,
		-0.837950, -0.524461, -0.150931,
		0.323984, -0.700601, 0.635761,
		40.744450, 34.820312, 28.552635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919064, 35.050621, 28.363560>,  <40.517662, 35.310734, 28.107601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919064, 35.050621, 28.363560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200394, 34.969803, 28.636179>,  <40.369194, 34.921310, 28.799749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200394, 34.969803, 28.636179>,  <39.919064, 35.050621, 28.363560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200394, 34.969803, 28.636179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529410, 0.490954, 0.691874,
		-0.474398, -0.847432, 0.238337,
		0.703329, -0.202045, 0.681546,
		40.411392, 34.909191, 28.840643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570499, 35.140030, 28.969923>,  <39.919064, 35.050621, 28.363560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570499, 35.140030, 28.969923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940701, 35.119640, 29.120043>,  <40.162819, 35.107407, 29.210115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940701, 35.119640, 29.120043>,  <39.570499, 35.140030, 28.969923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940701, 35.119640, 29.120043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271764, 0.600804, 0.751783,
		-0.263807, -0.797769, 0.542190,
		0.925500, -0.050978, 0.375301,
		40.218349, 35.104347, 29.232634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548283, 34.894470, 29.665571>,  <39.570499, 35.140030, 28.969923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548283, 34.894470, 29.665571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872017, 35.123524, 29.613308>,  <40.066257, 35.260956, 29.581949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872017, 35.123524, 29.613308>,  <39.548283, 34.894470, 29.665571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872017, 35.123524, 29.613308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309263, 0.604587, 0.734051,
		0.499335, -0.553685, 0.666407,
		0.809334, 0.572632, -0.130657,
		40.114819, 35.295315, 29.574110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772305, 35.038349, 30.351995>,  <39.548283, 34.894470, 29.665571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772305, 35.038349, 30.351995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936905, 35.314255, 30.113703>,  <40.035664, 35.479797, 29.970728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936905, 35.314255, 30.113703>,  <39.772305, 35.038349, 30.351995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936905, 35.314255, 30.113703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132377, 0.691937, 0.709717,
		0.901747, -0.213185, 0.376039,
		0.411496, 0.689764, -0.595731,
		40.060352, 35.521183, 29.934984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228481, 35.453163, 30.817316>,  <39.772305, 35.038349, 30.351995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228481, 35.453163, 30.817316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112598, 35.667301, 30.499958>,  <40.043068, 35.795784, 30.309544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112598, 35.667301, 30.499958>,  <40.228481, 35.453163, 30.817316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112598, 35.667301, 30.499958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133928, 0.798116, 0.587430,
		0.947698, 0.276443, -0.159525,
		-0.289710, 0.535342, -0.793396,
		40.025684, 35.827904, 30.261940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580528, 36.107967, 30.899935>,  <40.228481, 35.453163, 30.817316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580528, 36.107967, 30.899935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264164, 36.169506, 30.663025>,  <40.074345, 36.206429, 30.520880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264164, 36.169506, 30.663025>,  <40.580528, 36.107967, 30.899935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264164, 36.169506, 30.663025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226353, 0.825674, 0.516747,
		0.568525, 0.542764, -0.618212,
		-0.790913, 0.153850, -0.592273,
		40.026890, 36.215660, 30.485344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611965, 36.789009, 30.637539>,  <40.580528, 36.107967, 30.899935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611965, 36.789009, 30.637539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233265, 36.660679, 30.648375>,  <40.006046, 36.583679, 30.654877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233265, 36.660679, 30.648375>,  <40.611965, 36.789009, 30.637539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233265, 36.660679, 30.648375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257579, 0.805202, 0.534138,
		-0.193180, 0.498717, -0.844964,
		-0.946750, -0.320829, 0.027090,
		39.949242, 36.564430, 30.656502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270947, 37.439129, 30.636389>,  <40.611965, 36.789009, 30.637539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270947, 37.439129, 30.636389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986565, 37.177086, 30.738672>,  <39.815937, 37.019859, 30.800041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986565, 37.177086, 30.738672>,  <40.270947, 37.439129, 30.636389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986565, 37.177086, 30.738672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409976, 0.681530, 0.606165,
		-0.571374, 0.326119, -0.753112,
		-0.710951, -0.655105, 0.255708,
		39.773281, 36.980553, 30.815384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707478, 37.909805, 30.844933>,  <40.270947, 37.439129, 30.636389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707478, 37.909805, 30.844933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666832, 37.534401, 30.976915>,  <39.642445, 37.309158, 31.056107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666832, 37.534401, 30.976915>,  <39.707478, 37.909805, 30.844933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666832, 37.534401, 30.976915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417122, 0.341309, 0.842328,
		-0.903151, -0.052037, -0.426157,
		-0.101619, -0.938510, 0.329959,
		39.636345, 37.252850, 31.075903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269871, 38.081154, 31.382483>,  <39.707478, 37.909805, 30.844933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269871, 38.081154, 31.382483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335079, 37.691650, 31.446005>,  <39.374207, 37.457947, 31.484118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335079, 37.691650, 31.446005>,  <39.269871, 38.081154, 31.382483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335079, 37.691650, 31.446005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229963, 0.119022, 0.965894,
		-0.959448, -0.193983, -0.204525,
		0.163024, -0.973758, 0.158804,
		39.383987, 37.399525, 31.493647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642689, 37.802002, 31.776117>,  <39.269871, 38.081154, 31.382483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642689, 37.802002, 31.776117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975182, 37.587612, 31.835165>,  <39.174675, 37.458977, 31.870594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975182, 37.587612, 31.835165>,  <38.642689, 37.802002, 31.776117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975182, 37.587612, 31.835165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135757, 0.061796, 0.988813,
		-0.539100, -0.841970, -0.021395,
		0.831229, -0.535974, 0.147618,
		39.224548, 37.426819, 31.879450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483532, 37.202843, 32.210590>,  <38.642689, 37.802002, 31.776117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483532, 37.202843, 32.210590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872044, 37.287498, 32.254082>,  <39.105152, 37.338291, 32.280178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872044, 37.287498, 32.254082>,  <38.483532, 37.202843, 32.210590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872044, 37.287498, 32.254082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119808, 0.040222, 0.991982,
		0.205568, -0.976520, 0.064423,
		0.971282, 0.211638, 0.108727,
		39.163429, 37.350990, 32.286701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680397, 36.856956, 32.792561>,  <38.483532, 37.202843, 32.210590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680397, 36.856956, 32.792561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972153, 37.126644, 32.746231>,  <39.147205, 37.288456, 32.718433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972153, 37.126644, 32.746231>,  <38.680397, 36.856956, 32.792561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972153, 37.126644, 32.746231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164554, -0.008575, 0.986331,
		0.664012, -0.738480, -0.117200,
		0.729390, 0.674221, -0.115826,
		39.190971, 37.328911, 32.711483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248444, 36.619282, 33.134052>,  <38.680397, 36.856956, 32.792561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248444, 36.619282, 33.134052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312672, 37.013550, 33.113396>,  <39.351208, 37.250111, 33.101002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312672, 37.013550, 33.113396>,  <39.248444, 36.619282, 33.134052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312672, 37.013550, 33.113396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047418, 0.059963, 0.997074,
		0.985885, -0.157648, 0.056367,
		0.160567, 0.985673, -0.051641,
		39.360840, 37.309250, 33.097904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601692, 36.651405, 33.793510>,  <39.248444, 36.619282, 33.134052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601692, 36.651405, 33.793510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557003, 37.037270, 33.698055>,  <39.530190, 37.268787, 33.640781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557003, 37.037270, 33.698055>,  <39.601692, 36.651405, 33.793510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557003, 37.037270, 33.698055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039840, 0.244300, 0.968881,
		0.992941, 0.098739, -0.065725,
		-0.111723, 0.964660, -0.238642,
		39.523487, 37.326668, 33.626461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996620, 36.945496, 34.336452>,  <39.601692, 36.651405, 33.793510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996620, 36.945496, 34.336452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754200, 37.231152, 34.196339>,  <39.608746, 37.402546, 34.112270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754200, 37.231152, 34.196339>,  <39.996620, 36.945496, 34.336452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754200, 37.231152, 34.196339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049424, 0.405717, 0.912661,
		0.793887, 0.570435, -0.210591,
		-0.606054, 0.714141, -0.350287,
		39.572384, 37.445393, 34.091251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290485, 37.600185, 34.401192>,  <39.996620, 36.945496, 34.336452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290485, 37.600185, 34.401192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899612, 37.680630, 34.373848>,  <39.665089, 37.728897, 34.357441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899612, 37.680630, 34.373848>,  <40.290485, 37.600185, 34.401192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899612, 37.680630, 34.373848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034992, 0.469842, 0.882057,
		0.209505, 0.859537, -0.466158,
		-0.977181, 0.201107, -0.068357,
		39.606457, 37.740963, 34.353340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230816, 38.340378, 34.596214>,  <40.290485, 37.600185, 34.401192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230816, 38.340378, 34.596214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862011, 38.185513, 34.595135>,  <39.640728, 38.092594, 34.594486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862011, 38.185513, 34.595135>,  <40.230816, 38.340378, 34.596214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862011, 38.185513, 34.595135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250184, 0.590451, 0.767318,
		-0.295482, 0.708148, -0.641262,
		-0.922008, -0.387162, -0.002699,
		39.585407, 38.069363, 34.594326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763477, 38.925537, 34.620708>,  <40.230816, 38.340378, 34.596214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763477, 38.925537, 34.620708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549255, 38.611771, 34.745842>,  <39.420723, 38.423512, 34.820923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549255, 38.611771, 34.745842>,  <39.763477, 38.925537, 34.620708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549255, 38.611771, 34.745842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432282, 0.572863, 0.696390,
		-0.725474, 0.237723, -0.645891,
		-0.535555, -0.784420, 0.312834,
		39.388588, 38.376446, 34.839691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005058, 39.208649, 34.702843>,  <39.763477, 38.925537, 34.620708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005058, 39.208649, 34.702843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062527, 38.877621, 34.919910>,  <39.097008, 38.679005, 35.050152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062527, 38.877621, 34.919910>,  <39.005058, 39.208649, 34.702843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062527, 38.877621, 34.919910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444974, 0.435773, 0.782368,
		-0.883943, -0.353876, -0.305639,
		0.143672, -0.827571, 0.542665,
		39.105629, 38.629349, 35.082710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335365, 39.054585, 35.106934>,  <39.005058, 39.208649, 34.702843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335365, 39.054585, 35.106934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627747, 38.859383, 35.297745>,  <38.803177, 38.742260, 35.412231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627747, 38.859383, 35.297745>,  <38.335365, 39.054585, 35.106934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627747, 38.859383, 35.297745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392879, 0.270634, 0.878864,
		-0.557992, -0.829824, 0.006094,
		0.730952, -0.488005, 0.477033,
		38.847031, 38.712982, 35.440853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020344, 38.783466, 35.685844>,  <38.335365, 39.054585, 35.106934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020344, 38.783466, 35.685844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405140, 38.740147, 35.786125>,  <38.636017, 38.714153, 35.846294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405140, 38.740147, 35.786125>,  <38.020344, 38.783466, 35.685844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405140, 38.740147, 35.786125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211724, 0.284061, 0.935138,
		-0.172491, -0.952670, 0.250333,
		0.961987, -0.108301, 0.250701,
		38.693737, 38.707657, 35.861336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047012, 38.567692, 36.357239>,  <38.020344, 38.783466, 35.685844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047012, 38.567692, 36.357239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423004, 38.704090, 36.362324>,  <38.648598, 38.785927, 36.365376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423004, 38.704090, 36.362324>,  <38.047012, 38.567692, 36.357239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423004, 38.704090, 36.362324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114604, 0.280386, 0.953021,
		0.321416, -0.897275, 0.302637,
		0.939978, 0.340999, 0.012711,
		38.704998, 38.806389, 36.366138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457298, 38.268024, 36.970734>,  <38.047012, 38.567692, 36.357239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457298, 38.268024, 36.970734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654057, 38.599949, 36.865318>,  <38.772110, 38.799103, 36.802071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654057, 38.599949, 36.865318>,  <38.457298, 38.268024, 36.970734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654057, 38.599949, 36.865318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101052, 0.355056, 0.929368,
		0.864771, -0.430520, 0.258503,
		0.491894, 0.829812, -0.263537,
		38.801624, 38.848892, 36.786259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005886, 38.331535, 37.455727>,  <38.457298, 38.268024, 36.970734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005886, 38.331535, 37.455727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874630, 38.672195, 37.292255>,  <38.795876, 38.876591, 37.194172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874630, 38.672195, 37.292255>,  <39.005886, 38.331535, 37.455727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874630, 38.672195, 37.292255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260533, 0.334255, 0.905757,
		0.907990, 0.403690, 0.112200,
		-0.328142, 0.851650, -0.408675,
		38.776188, 38.927689, 37.169651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902065, 38.711494, 38.073833>,  <39.005886, 38.331535, 37.455727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902065, 38.711494, 38.073833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777309, 38.955009, 37.782051>,  <38.702457, 39.101116, 37.606983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777309, 38.955009, 37.782051>,  <38.902065, 38.711494, 38.073833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777309, 38.955009, 37.782051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389537, 0.618327, 0.682592,
		0.866594, 0.497044, 0.044294,
		-0.311890, 0.608785, -0.729456,
		38.683743, 39.137646, 37.563213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295078, 39.394962, 38.062038>,  <38.902065, 38.711494, 38.073833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295078, 39.394962, 38.062038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934101, 39.444878, 37.897099>,  <38.717514, 39.474827, 37.798134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934101, 39.444878, 37.897099>,  <39.295078, 39.394962, 38.062038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934101, 39.444878, 37.897099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322415, 0.439209, 0.838537,
		0.285749, 0.889676, -0.356125,
		-0.902439, 0.124791, -0.412348,
		38.663368, 39.482315, 37.773396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149708, 40.059052, 38.210052>,  <39.295078, 39.394962, 38.062038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149708, 40.059052, 38.210052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794682, 39.900848, 38.115562>,  <38.581665, 39.805927, 38.058868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794682, 39.900848, 38.115562>,  <39.149708, 40.059052, 38.210052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794682, 39.900848, 38.115562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416025, 0.467870, 0.779757,
		-0.197879, 0.790359, -0.579807,
		-0.887562, -0.395512, -0.236228,
		38.528412, 39.782196, 38.044693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722431, 40.551601, 38.253933>,  <39.149708, 40.059052, 38.210052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722431, 40.551601, 38.253933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514866, 40.216499, 38.321941>,  <38.390327, 40.015438, 38.362747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514866, 40.216499, 38.321941>,  <38.722431, 40.551601, 38.253933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514866, 40.216499, 38.321941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322368, 0.375985, 0.868743,
		-0.791715, 0.395989, -0.465166,
		-0.518909, -0.837751, 0.170019,
		38.359192, 39.965176, 38.372948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221859, 40.902813, 38.601269>,  <38.722431, 40.551601, 38.253933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221859, 40.902813, 38.601269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177029, 40.506592, 38.632874>,  <38.150131, 40.268860, 38.651836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177029, 40.506592, 38.632874>,  <38.221859, 40.902813, 38.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177029, 40.506592, 38.632874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380082, 0.116196, 0.917625,
		-0.918137, 0.072816, -0.389515,
		-0.112078, -0.990554, 0.079008,
		38.143406, 40.209427, 38.656574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557465, 40.742401, 38.982536>,  <38.221859, 40.902813, 38.601269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557465, 40.742401, 38.982536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802338, 40.430637, 39.035839>,  <37.949261, 40.243580, 39.067822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802338, 40.430637, 39.035839>,  <37.557465, 40.742401, 38.982536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802338, 40.430637, 39.035839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224773, -0.009958, 0.974360,
		-0.758099, -0.626435, -0.181286,
		0.612179, -0.779410, 0.133256,
		37.985992, 40.196815, 39.075817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112354, 40.312565, 39.438358>,  <37.557465, 40.742401, 38.982536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112354, 40.312565, 39.438358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462410, 40.124706, 39.484928>,  <37.672443, 40.011990, 39.512871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462410, 40.124706, 39.484928>,  <37.112354, 40.312565, 39.438358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462410, 40.124706, 39.484928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216320, -0.164526, 0.962360,
		-0.432817, -0.867388, -0.245578,
		0.875143, -0.469649, 0.116424,
		37.724953, 39.983810, 39.519855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015804, 39.625217, 39.943779>,  <37.112354, 40.312565, 39.438358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015804, 39.625217, 39.943779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403519, 39.722614, 39.957592>,  <37.636147, 39.781052, 39.965878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403519, 39.722614, 39.957592>,  <37.015804, 39.625217, 39.943779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403519, 39.722614, 39.957592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009371, -0.176872, 0.984189,
		0.245751, -0.953639, -0.173721,
		0.969287, 0.243493, 0.034530,
		37.694305, 39.795662, 39.967953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391205, 39.159077, 40.328873>,  <37.015804, 39.625217, 39.943779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391205, 39.159077, 40.328873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599533, 39.500500, 40.323582>,  <37.724529, 39.705353, 40.320408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599533, 39.500500, 40.323582>,  <37.391205, 39.159077, 40.328873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599533, 39.500500, 40.323582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323315, -0.182890, 0.928450,
		0.790069, -0.487837, -0.371223,
		0.520825, 0.853561, -0.013229,
		37.755779, 39.756569, 40.319614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202686, 39.031372, 40.417503>,  <37.391205, 39.159077, 40.328873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202686, 39.031372, 40.417503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043804, 39.370930, 40.556995>,  <37.948475, 39.574665, 40.640690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043804, 39.370930, 40.556995>,  <38.202686, 39.031372, 40.417503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043804, 39.370930, 40.556995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154498, -0.312714, 0.937198,
		0.904631, 0.426138, -0.006940,
		-0.397206, 0.848891, 0.348728,
		37.924641, 39.625599, 40.661613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666607, 39.228783, 41.070511>,  <38.202686, 39.031372, 40.417503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666607, 39.228783, 41.070511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318462, 39.409443, 41.148968>,  <38.109573, 39.517841, 41.196041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318462, 39.409443, 41.148968>,  <38.666607, 39.228783, 41.070511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318462, 39.409443, 41.148968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081744, -0.260282, 0.962066,
		0.485574, 0.853383, 0.189620,
		-0.870365, 0.451654, 0.196145,
		38.057354, 39.544941, 41.207813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675728, 39.446026, 41.704414>,  <38.666607, 39.228783, 41.070511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675728, 39.446026, 41.704414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285553, 39.504116, 41.638157>,  <38.051449, 39.538971, 41.598404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285553, 39.504116, 41.638157>,  <38.675728, 39.446026, 41.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285553, 39.504116, 41.638157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204261, -0.314695, 0.926954,
		0.082495, 0.938017, 0.336630,
		-0.975434, 0.145230, -0.165639,
		37.992924, 39.547684, 41.588467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388054, 39.805523, 42.317093>,  <38.675728, 39.446026, 41.704414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388054, 39.805523, 42.317093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058388, 39.661495, 42.142231>,  <37.860588, 39.575081, 42.037312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058388, 39.661495, 42.142231>,  <38.388054, 39.805523, 42.317093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058388, 39.661495, 42.142231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317088, -0.346205, 0.882948,
		-0.469267, 0.866310, 0.171156,
		-0.824162, -0.360067, -0.437159,
		37.811138, 39.553474, 42.011082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733780, 40.057381, 42.635323>,  <38.388054, 39.805523, 42.317093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733780, 40.057381, 42.635323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636543, 39.701302, 42.481201>,  <37.578201, 39.487656, 42.388729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636543, 39.701302, 42.481201>,  <37.733780, 40.057381, 42.635323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636543, 39.701302, 42.481201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265684, -0.320925, 0.909076,
		-0.932908, 0.323359, -0.158495,
		-0.243093, -0.890194, -0.385305,
		37.563614, 39.434242, 42.365608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972694, 39.795753, 42.726131>,  <37.733780, 40.057381, 42.635323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972694, 39.795753, 42.726131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258732, 39.516373, 42.714790>,  <37.430355, 39.348743, 42.707985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258732, 39.516373, 42.714790>,  <36.972694, 39.795753, 42.726131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258732, 39.516373, 42.714790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098835, -0.141176, 0.985038,
		-0.692003, -0.701596, -0.169986,
		0.715097, -0.698450, -0.028351,
		37.473263, 39.306839, 42.706284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801018, 39.063904, 42.997459>,  <36.972694, 39.795753, 42.726131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801018, 39.063904, 42.997459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195026, 39.040314, 43.062271>,  <37.431431, 39.026161, 43.101158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195026, 39.040314, 43.062271>,  <36.801018, 39.063904, 42.997459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195026, 39.040314, 43.062271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172004, -0.270475, 0.947237,
		-0.012039, -0.960919, -0.276568,
		0.985023, -0.058975, 0.162026,
		37.490532, 39.022621, 43.110878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336796, 38.571899, 43.554138>,  <36.801018, 39.063904, 42.997459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336796, 38.571899, 43.554138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622192, 38.297428, 43.610817>,  <36.793430, 38.132744, 43.644825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622192, 38.297428, 43.610817>,  <36.336796, 38.571899, 43.554138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622192, 38.297428, 43.610817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571279, 0.452633, -0.684663,
		0.405666, 0.569454, 0.714953,
		0.713495, -0.686182, 0.141699,
		36.836243, 38.091572, 43.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110760, 38.808586, 43.836155>,  <36.336796, 38.571899, 43.554138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110760, 38.808586, 43.836155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065662, 38.512989, 43.570473>,  <37.038605, 38.335629, 43.411064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065662, 38.512989, 43.570473>,  <37.110760, 38.808586, 43.836155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065662, 38.512989, 43.570473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406067, 0.575833, -0.709596,
		0.906862, -0.349718, 0.235158,
		-0.112747, -0.738995, -0.664210,
		37.031837, 38.291290, 43.371208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758568, 38.590206, 43.410278>,  <37.110760, 38.808586, 43.836155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758568, 38.590206, 43.410278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422565, 38.518093, 43.205578>,  <37.220963, 38.474827, 43.082756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422565, 38.518093, 43.205578>,  <37.758568, 38.590206, 43.410278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422565, 38.518093, 43.205578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452433, 0.287890, -0.844052,
		0.299515, -0.940537, -0.160252,
		-0.839997, -0.180303, -0.511757,
		37.170563, 38.464008, 43.052052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933807, 38.226124, 42.826221>,  <37.758568, 38.590206, 43.410278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933807, 38.226124, 42.826221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615131, 38.463791, 42.781940>,  <37.423927, 38.606392, 42.755371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615131, 38.463791, 42.781940>,  <37.933807, 38.226124, 42.826221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615131, 38.463791, 42.781940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351978, 0.307224, -0.884152,
		-0.491323, -0.743358, -0.453895,
		-0.796689, 0.594165, -0.110700,
		37.376125, 38.642040, 42.748730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885880, 38.225140, 42.104515>,  <37.933807, 38.226124, 42.826221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885880, 38.225140, 42.104515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637863, 38.506687, 42.243145>,  <37.489052, 38.675617, 42.326321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637863, 38.506687, 42.243145>,  <37.885880, 38.225140, 42.104515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637863, 38.506687, 42.243145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026351, 0.460171, -0.887439,
		-0.784124, -0.541119, -0.303874,
		-0.620044, 0.703870, 0.346572,
		37.451851, 38.717850, 42.347118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242073, 38.401920, 41.654797>,  <37.885880, 38.225140, 42.104515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242073, 38.401920, 41.654797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335751, 38.715843, 41.884308>,  <37.391956, 38.904198, 42.022015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335751, 38.715843, 41.884308>,  <37.242073, 38.401920, 41.654797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335751, 38.715843, 41.884308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063221, 0.576651, -0.814541,
		-0.970132, 0.227037, 0.085433,
		0.234196, 0.784811, 0.573781,
		37.406010, 38.951286, 42.056442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894119, 38.880817, 41.388103>,  <37.242073, 38.401920, 41.654797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894119, 38.880817, 41.388103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161549, 39.092125, 41.597462>,  <37.322006, 39.218910, 41.723076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161549, 39.092125, 41.597462>,  <36.894119, 38.880817, 41.388103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161549, 39.092125, 41.597462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200229, 0.549949, -0.810842,
		-0.716183, 0.646906, 0.261906,
		0.668573, 0.528270, 0.523393,
		37.362122, 39.250607, 41.754478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774612, 39.563663, 41.302010>,  <36.894119, 38.880817, 41.388103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774612, 39.563663, 41.302010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163044, 39.567917, 41.397419>,  <37.396103, 39.570469, 41.454666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163044, 39.567917, 41.397419>,  <36.774612, 39.563663, 41.302010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163044, 39.567917, 41.397419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150463, 0.748426, -0.645925,
		-0.185383, 0.663133, 0.725181,
		0.971079, 0.010631, 0.238522,
		37.454369, 39.571106, 41.468975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995007, 40.295830, 41.368793>,  <36.774612, 39.563663, 41.302010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995007, 40.295830, 41.368793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317543, 40.070015, 41.298248>,  <37.511066, 39.934525, 41.255920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317543, 40.070015, 41.298248>,  <36.995007, 40.295830, 41.368793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317543, 40.070015, 41.298248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301645, 0.649028, -0.698407,
		0.508741, 0.509959, 0.693631,
		0.806345, -0.564539, -0.176361,
		37.559448, 39.900654, 41.245338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684917, 40.766094, 41.239956>,  <36.995007, 40.295830, 41.368793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684917, 40.766094, 41.239956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734356, 40.404469, 41.076298>,  <37.764019, 40.187492, 40.978104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734356, 40.404469, 41.076298>,  <37.684917, 40.766094, 41.239956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734356, 40.404469, 41.076298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396275, 0.422969, -0.814900,
		0.909775, -0.061419, 0.410532,
		0.123592, -0.904060, -0.409146,
		37.771435, 40.133251, 40.953552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276630, 40.907784, 40.891857>,  <37.684917, 40.766094, 41.239956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276630, 40.907784, 40.891857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133659, 40.561722, 40.751144>,  <38.047878, 40.354084, 40.666718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133659, 40.561722, 40.751144>,  <38.276630, 40.907784, 40.891857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133659, 40.561722, 40.751144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335484, 0.232590, -0.912881,
		0.871606, -0.444304, 0.207113,
		-0.357425, -0.865157, -0.351784,
		38.026432, 40.302174, 40.645611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593136, 40.847687, 40.275097>,  <38.276630, 40.907784, 40.891857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593136, 40.847687, 40.275097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386242, 40.505356, 40.277035>,  <38.262104, 40.299957, 40.278198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386242, 40.505356, 40.277035>,  <38.593136, 40.847687, 40.275097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386242, 40.505356, 40.277035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134350, -0.086783, -0.987127,
		0.845233, -0.509925, 0.159868,
		-0.517235, -0.855830, 0.004843,
		38.231071, 40.248608, 40.278488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941151, 40.240543, 39.998737>,  <38.593136, 40.847687, 40.275097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941151, 40.240543, 39.998737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564049, 40.110828, 39.967636>,  <38.337788, 40.033001, 39.948975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564049, 40.110828, 39.967636>,  <38.941151, 40.240543, 39.998737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564049, 40.110828, 39.967636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173402, -0.277535, -0.944937,
		0.284850, -0.904330, 0.317880,
		-0.942758, -0.324286, -0.077756,
		38.281219, 40.013542, 39.944309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007530, 39.618507, 39.603626>,  <38.941151, 40.240543, 39.998737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007530, 39.618507, 39.603626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628807, 39.742500, 39.569061>,  <38.401573, 39.816895, 39.548325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628807, 39.742500, 39.569061>,  <39.007530, 39.618507, 39.603626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628807, 39.742500, 39.569061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009300, -0.294768, -0.955524,
		-0.321672, -0.903891, 0.281971,
		-0.946805, 0.309988, -0.086412,
		38.344765, 39.835495, 39.543137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566517, 39.099907, 39.304848>,  <39.007530, 39.618507, 39.603626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566517, 39.099907, 39.304848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396179, 39.454857, 39.234173>,  <38.293976, 39.667828, 39.191769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396179, 39.454857, 39.234173>,  <38.566517, 39.099907, 39.304848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396179, 39.454857, 39.234173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053855, -0.219788, -0.974060,
		-0.903192, -0.405284, 0.141386,
		-0.425846, 0.887377, -0.176684,
		38.268425, 39.721069, 39.181168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869595, 39.126549, 39.029930>,  <38.566517, 39.099907, 39.304848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869595, 39.126549, 39.029930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059475, 39.451591, 38.894676>,  <38.173401, 39.646618, 38.813522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059475, 39.451591, 38.894676>,  <37.869595, 39.126549, 39.029930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059475, 39.451591, 38.894676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298749, -0.212610, -0.930347,
		-0.827895, 0.542652, 0.141839,
		0.474698, 0.812604, -0.338136,
		38.201885, 39.695374, 38.793236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456688, 39.084625, 38.462391>,  <37.869595, 39.126549, 39.029930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456688, 39.084625, 38.462391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717003, 39.378525, 38.385857>,  <37.873192, 39.554867, 38.339935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717003, 39.378525, 38.385857>,  <37.456688, 39.084625, 38.462391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717003, 39.378525, 38.385857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014291, -0.240107, -0.970641,
		-0.759122, 0.634419, -0.145759,
		0.650791, 0.734752, -0.191337,
		37.912239, 39.598949, 38.328457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373554, 39.349388, 37.721985>,  <37.456688, 39.084625, 38.462391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373554, 39.349388, 37.721985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737793, 39.475998, 37.828293>,  <37.956337, 39.551964, 37.892078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737793, 39.475998, 37.828293>,  <37.373554, 39.349388, 37.721985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737793, 39.475998, 37.828293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330418, -0.171230, -0.928173,
		-0.248280, 0.933003, -0.260506,
		0.910594, 0.316522, 0.265767,
		38.010971, 39.570953, 37.908024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574245, 39.710617, 37.177002>,  <37.373554, 39.349388, 37.721985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574245, 39.710617, 37.177002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915844, 39.620323, 37.364502>,  <38.120804, 39.566147, 37.477001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915844, 39.620323, 37.364502>,  <37.574245, 39.710617, 37.177002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915844, 39.620323, 37.364502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453804, -0.117455, -0.883327,
		0.254455, 0.967082, 0.002133,
		0.853999, -0.225735, 0.468753,
		38.172043, 39.552601, 37.505127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113083, 40.062157, 36.870544>,  <37.574245, 39.710617, 37.177002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113083, 40.062157, 36.870544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297005, 39.759972, 37.057247>,  <38.407356, 39.578663, 37.169270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297005, 39.759972, 37.057247>,  <38.113083, 40.062157, 36.870544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297005, 39.759972, 37.057247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469966, -0.238957, -0.849724,
		0.753468, 0.610065, 0.245167,
		0.459802, -0.755460, 0.466757,
		38.434944, 39.533333, 37.197273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741329, 40.114090, 36.550877>,  <38.113083, 40.062157, 36.870544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741329, 40.114090, 36.550877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755768, 39.766747, 36.748726>,  <38.764431, 39.558342, 36.867435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755768, 39.766747, 36.748726>,  <38.741329, 40.114090, 36.550877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755768, 39.766747, 36.748726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261907, -0.469421, -0.843237,
		0.964418, 0.159985, 0.210484,
		0.036100, -0.868360, 0.494619,
		38.766598, 39.506237, 36.897110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516537, 39.824215, 36.512230>,  <38.741329, 40.114090, 36.550877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516537, 39.824215, 36.512230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240765, 39.537647, 36.554996>,  <39.075302, 39.365707, 36.580658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240765, 39.537647, 36.554996>,  <39.516537, 39.824215, 36.512230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240765, 39.537647, 36.554996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287791, -0.406371, -0.867202,
		0.664731, -0.567101, 0.486342,
		-0.689427, -0.716421, 0.106920,
		39.033936, 39.322720, 36.587074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781658, 39.403522, 36.101311>,  <39.516537, 39.824215, 36.512230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781658, 39.403522, 36.101311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438416, 39.212978, 36.177963>,  <39.232468, 39.098652, 36.223957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438416, 39.212978, 36.177963>,  <39.781658, 39.403522, 36.101311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438416, 39.212978, 36.177963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178215, -0.626331, -0.758913,
		0.481545, -0.617079, 0.622357,
		-0.858111, -0.476364, 0.191634,
		39.180981, 39.070068, 36.235455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929333, 38.656151, 36.217266>,  <39.781658, 39.403522, 36.101311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929333, 38.656151, 36.217266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555874, 38.698570, 36.080414>,  <39.331799, 38.724022, 35.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555874, 38.698570, 36.080414>,  <39.929333, 38.656151, 36.217266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555874, 38.698570, 36.080414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226366, -0.565541, -0.793046,
		-0.277591, -0.817873, 0.504011,
		-0.933650, 0.106051, -0.342128,
		39.275780, 38.730385, 35.977776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764042, 38.004856, 36.053234>,  <39.929333, 38.656151, 36.217266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764042, 38.004856, 36.053234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495060, 38.227760, 35.858395>,  <39.333672, 38.361504, 35.741489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495060, 38.227760, 35.858395>,  <39.764042, 38.004856, 36.053234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495060, 38.227760, 35.858395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029156, -0.637663, -0.769763,
		-0.739562, -0.531834, 0.412554,
		-0.672456, 0.557260, -0.487097,
		39.293324, 38.394939, 35.712265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841278, 37.951839, 36.763134>,  <39.764042, 38.004856, 36.053234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841278, 37.951839, 36.763134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944462, 38.042839, 37.138729>,  <40.006374, 38.097439, 37.364086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944462, 38.042839, 37.138729>,  <39.841278, 37.951839, 36.763134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944462, 38.042839, 37.138729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854280, -0.507673, -0.111691,
		0.451289, 0.830971, -0.325308,
		0.257962, 0.227499, 0.938989,
		40.021851, 38.111088, 37.420425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581516, 38.278709, 36.743126>,  <39.841278, 37.951839, 36.763134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581516, 38.278709, 36.743126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467072, 38.094292, 37.079121>,  <40.398403, 37.983639, 37.280716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467072, 38.094292, 37.079121>,  <40.581516, 38.278709, 36.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467072, 38.094292, 37.079121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731777, -0.671062, -0.119076,
		0.618582, 0.580613, 0.529381,
		-0.286110, -0.461047, 0.839986,
		40.381237, 37.955978, 37.331116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184170, 38.191399, 37.161343>,  <40.581516, 38.278709, 36.743126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184170, 38.191399, 37.161343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959797, 37.874561, 37.257626>,  <40.825172, 37.684460, 37.315395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959797, 37.874561, 37.257626>,  <41.184170, 38.191399, 37.161343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959797, 37.874561, 37.257626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779455, -0.603281, -0.168825,
		0.278937, 0.092918, 0.955803,
		-0.560932, -0.792097, 0.240703,
		40.791519, 37.636932, 37.329838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399319, 37.798134, 37.814800>,  <41.184170, 38.191399, 37.161343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399319, 37.798134, 37.814800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256256, 37.613960, 37.489819>,  <41.170418, 37.503456, 37.294830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256256, 37.613960, 37.489819>,  <41.399319, 37.798134, 37.814800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256256, 37.613960, 37.489819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841184, -0.536686, -0.066156,
		-0.405573, -0.707086, 0.579259,
		-0.357658, -0.460432, -0.812455,
		41.148960, 37.475830, 37.246082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530724, 37.105740, 37.847145>,  <41.399319, 37.798134, 37.814800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530724, 37.105740, 37.847145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519157, 37.179459, 37.454166>,  <41.512218, 37.223690, 37.218380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519157, 37.179459, 37.454166>,  <41.530724, 37.105740, 37.847145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519157, 37.179459, 37.454166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884011, -0.454049, -0.111194,
		-0.466571, -0.871707, -0.149791,
		-0.028916, 0.184297, -0.982445,
		41.510483, 37.234749, 37.159431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452023, 36.467609, 37.434402>,  <41.530724, 37.105740, 37.847145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452023, 36.467609, 37.434402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631050, 36.748314, 37.212696>,  <41.738468, 36.916737, 37.079674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631050, 36.748314, 37.212696>,  <41.452023, 36.467609, 37.434402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631050, 36.748314, 37.212696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776544, -0.612369, -0.148268,
		-0.443463, -0.364050, -0.819029,
		0.447571, 0.701764, -0.554264,
		41.765320, 36.958843, 37.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862122, 36.190243, 36.934368>,  <41.452023, 36.467609, 37.434402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862122, 36.190243, 36.934368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029419, 36.550091, 36.984581>,  <42.129799, 36.765999, 37.014709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029419, 36.550091, 36.984581>,  <41.862122, 36.190243, 36.934368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029419, 36.550091, 36.984581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904744, -0.400316, -0.145553,
		-0.080690, 0.174452, -0.981354,
		0.418244, 0.899618, 0.125533,
		42.154892, 36.819977, 37.022240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219872, 36.384743, 36.377922>,  <41.862122, 36.190243, 36.934368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219872, 36.384743, 36.377922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384979, 36.556156, 36.699413>,  <42.484043, 36.659004, 36.892307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384979, 36.556156, 36.699413>,  <42.219872, 36.384743, 36.377922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384979, 36.556156, 36.699413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856869, -0.481922, -0.183104,
		0.308868, 0.764270, -0.566120,
		0.412766, 0.428536, 0.803729,
		42.508808, 36.684715, 36.940533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856270, 36.635567, 36.209007>,  <42.219872, 36.384743, 36.377922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856270, 36.635567, 36.209007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896675, 36.649254, 36.606728>,  <42.920918, 36.657467, 36.845360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896675, 36.649254, 36.606728>,  <42.856270, 36.635567, 36.209007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896675, 36.649254, 36.606728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827429, -0.557812, -0.064865,
		0.552411, 0.829262, -0.084658,
		0.101014, 0.034216, 0.994296,
		42.926979, 36.659519, 36.905018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457741, 36.894302, 36.460209>,  <42.856270, 36.635567, 36.209007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457741, 36.894302, 36.460209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315914, 36.605865, 36.698303>,  <43.230820, 36.432804, 36.841160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315914, 36.605865, 36.698303>,  <43.457741, 36.894302, 36.460209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315914, 36.605865, 36.698303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844762, -0.519935, -0.126665,
		0.400823, 0.457924, 0.793503,
		-0.354567, -0.721091, 0.595239,
		43.209545, 36.389538, 36.876873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859730, 36.715420, 36.955769>,  <43.457741, 36.894302, 36.460209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859730, 36.715420, 36.955769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667900, 36.366596, 36.916737>,  <43.552803, 36.157303, 36.893318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667900, 36.366596, 36.916737>,  <43.859730, 36.715420, 36.955769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667900, 36.366596, 36.916737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877404, -0.478214, -0.038387,
		-0.013188, -0.104025, 0.994487,
		-0.479570, -0.872061, -0.097579,
		43.524029, 36.104977, 36.887463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135742, 36.282448, 37.426739>,  <43.859730, 36.715420, 36.955769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135742, 36.282448, 37.426739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970398, 36.027561, 37.166557>,  <43.871193, 35.874630, 37.010448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970398, 36.027561, 37.166557>,  <44.135742, 36.282448, 37.426739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970398, 36.027561, 37.166557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819087, -0.572267, 0.040104,
		-0.397787, -0.516198, 0.758489,
		-0.413356, -0.637221, -0.650451,
		43.846390, 35.836395, 36.971420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000145, 35.631607, 37.495815>,  <44.135742, 36.282448, 37.426739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000145, 35.631607, 37.495815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110405, 35.594070, 37.113148>,  <44.176559, 35.571548, 36.883549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110405, 35.594070, 37.113148>,  <44.000145, 35.631607, 37.495815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110405, 35.594070, 37.113148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861193, -0.418022, 0.289145,
		-0.427042, -0.903577, -0.034412,
		0.275650, -0.093842, -0.956667,
		44.193100, 35.565918, 36.826149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135643, 34.870560, 37.102894>,  <44.000145, 35.631607, 37.495815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135643, 34.870560, 37.102894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360962, 35.190357, 37.019459>,  <44.496151, 35.382236, 36.969398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360962, 35.190357, 37.019459>,  <44.135643, 34.870560, 37.102894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360962, 35.190357, 37.019459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823107, -0.520944, 0.226078,
		0.072084, -0.299041, -0.951514,
		0.563293, 0.799494, -0.208591,
		44.529949, 35.430206, 36.956882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680695, 34.610901, 36.664944>,  <44.135643, 34.870560, 37.102894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680695, 34.610901, 36.664944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767937, 34.938423, 36.877354>,  <44.820282, 35.134937, 37.004799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767937, 34.938423, 36.877354>,  <44.680695, 34.610901, 36.664944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767937, 34.938423, 36.877354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801148, -0.460945, 0.381696,
		0.557308, 0.342180, -0.756519,
		0.218105, 0.818806, 0.531025,
		44.833366, 35.184067, 37.036659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001575, 33.954899, 36.885277>,  <44.680695, 34.610901, 36.664944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001575, 33.954899, 36.885277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156960, 34.315002, 36.806660>,  <45.250191, 34.531067, 36.759487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156960, 34.315002, 36.806660>,  <45.001575, 33.954899, 36.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156960, 34.315002, 36.806660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852283, -0.432110, -0.294778,
		-0.350307, -0.053005, -0.935134,
		0.388456, 0.900262, -0.196546,
		45.273495, 34.585079, 36.747696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444565, 33.808701, 36.326530>,  <45.001575, 33.954899, 36.885277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444565, 33.808701, 36.326530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582161, 34.120777, 36.535519>,  <45.664719, 34.308022, 36.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582161, 34.120777, 36.535519>,  <45.444565, 33.808701, 36.326530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582161, 34.120777, 36.535519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929840, -0.205619, -0.305154,
		-0.130649, 0.590783, -0.796183,
		0.343990, 0.780190, 0.522469,
		45.685356, 34.354836, 36.692261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772945, 34.440311, 35.947910>,  <45.444565, 33.808701, 36.326530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772945, 34.440311, 35.947910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934631, 34.335735, 36.298512>,  <46.031643, 34.272991, 36.508873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934631, 34.335735, 36.298512>,  <45.772945, 34.440311, 35.947910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934631, 34.335735, 36.298512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769078, -0.421562, -0.480421,
		0.495102, 0.868294, 0.030665,
		0.404219, -0.261441, 0.876502,
		46.055897, 34.257301, 36.561462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524143, 34.602230, 35.939682>,  <45.772945, 34.440311, 35.947910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524143, 34.602230, 35.939682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837990, 34.390118, 36.068161>,  <47.026299, 34.262852, 36.145248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837990, 34.390118, 36.068161>,  <46.524143, 34.602230, 35.939682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837990, 34.390118, 36.068161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594927, 0.789772, -0.149409,
		-0.174447, 0.308321, 0.935151,
		0.784621, -0.530282, 0.321201,
		47.073376, 34.231033, 36.164520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768196, 34.441166, 35.167332>,  <46.524143, 34.602230, 35.939682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768196, 34.441166, 35.167332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874882, 34.361771, 35.544579>,  <46.938892, 34.314133, 35.770927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874882, 34.361771, 35.544579>,  <46.768196, 34.441166, 35.167332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874882, 34.361771, 35.544579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876944, 0.355946, 0.322912,
		-0.399793, -0.913184, -0.079130,
		0.266712, -0.198490, 0.943115,
		46.954895, 34.302223, 35.827515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.320229, 34.957348, 34.992542>,  <46.768196, 34.441166, 35.167332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.320229, 34.957348, 34.992542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666424, 34.951012, 35.192814>,  <47.874142, 34.947208, 35.312977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666424, 34.951012, 35.192814>,  <47.320229, 34.957348, 34.992542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666424, 34.951012, 35.192814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477660, 0.327203, -0.815340,
		-0.150906, 0.944821, 0.290758,
		0.865488, -0.015843, 0.500680,
		47.926071, 34.946259, 35.343018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.046658, 30.552088, 28.531290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683708, 30.490040, 28.375032>,  <38.465939, 30.452812, 28.281279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683708, 30.490040, 28.375032>,  <39.046658, 30.552088, 28.531290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683708, 30.490040, 28.375032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380444, 0.698212, 0.606435,
		0.178683, 0.698884, -0.692556,
		-0.907378, -0.155119, -0.390644,
		38.411495, 30.443504, 28.257839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857792, 31.188192, 28.638348>,  <39.046658, 30.552088, 28.531290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857792, 31.188192, 28.638348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538021, 30.950808, 28.600988>,  <38.346161, 30.808376, 28.578573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538021, 30.950808, 28.600988>,  <38.857792, 31.188192, 28.638348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538021, 30.950808, 28.600988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405010, 0.417558, 0.813396,
		-0.443720, 0.688076, -0.574164,
		-0.799425, -0.593462, -0.093399,
		38.298195, 30.772770, 28.572969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278103, 31.664314, 28.715771>,  <38.857792, 31.188192, 28.638348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278103, 31.664314, 28.715771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146694, 31.296881, 28.803658>,  <38.067848, 31.076420, 28.856390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146694, 31.296881, 28.803658>,  <38.278103, 31.664314, 28.715771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146694, 31.296881, 28.803658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493414, 0.365274, 0.789378,
		-0.805368, 0.150915, -0.573242,
		-0.328519, -0.918586, 0.219717,
		38.048138, 31.021305, 28.869572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584995, 31.727459, 28.841181>,  <38.278103, 31.664314, 28.715771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584995, 31.727459, 28.841181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641922, 31.360693, 28.990316>,  <37.676079, 31.140633, 29.079798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641922, 31.360693, 28.990316>,  <37.584995, 31.727459, 28.841181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641922, 31.360693, 28.990316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618852, 0.211548, 0.756485,
		-0.772507, -0.338397, -0.537327,
		0.142322, -0.916916, 0.372840,
		37.684620, 31.085619, 29.102169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945793, 31.585068, 29.016035>,  <37.584995, 31.727459, 28.841181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945793, 31.585068, 29.016035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150879, 31.333069, 29.249353>,  <37.273930, 31.181870, 29.389343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150879, 31.333069, 29.249353>,  <36.945793, 31.585068, 29.016035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150879, 31.333069, 29.249353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625649, 0.191097, 0.756337,
		-0.587955, -0.752719, -0.296180,
		0.512710, -0.629997, 0.583294,
		37.304691, 31.144070, 29.424341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580181, 30.907202, 29.267565>,  <36.945793, 31.585068, 29.016035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580181, 30.907202, 29.267565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869110, 31.011606, 29.523729>,  <37.042465, 31.074249, 29.677427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869110, 31.011606, 29.523729>,  <36.580181, 30.907202, 29.267565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869110, 31.011606, 29.523729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691459, 0.288367, 0.662367,
		-0.011788, -0.921259, 0.388772,
		0.722320, 0.261012, 0.640412,
		37.085808, 31.089911, 29.715853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332226, 30.616352, 29.882015>,  <36.580181, 30.907202, 29.267565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332226, 30.616352, 29.882015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609070, 30.880947, 29.997549>,  <36.775177, 31.039703, 30.066870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609070, 30.880947, 29.997549>,  <36.332226, 30.616352, 29.882015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609070, 30.880947, 29.997549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657495, 0.412669, 0.630400,
		0.297806, -0.626213, 0.720534,
		0.692106, 0.661485, 0.288837,
		36.816700, 31.079393, 30.084200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189346, 30.660511, 30.566364>,  <36.332226, 30.616352, 29.882015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189346, 30.660511, 30.566364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.433777, 30.972527, 30.512522>,  <36.580437, 31.159737, 30.480217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.433777, 30.972527, 30.512522>,  <36.189346, 30.660511, 30.566364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433777, 30.972527, 30.512522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428603, 0.469021, 0.772216,
		0.665494, -0.414191, 0.620937,
		0.611078, 0.780041, -0.134607,
		36.617100, 31.206539, 30.472139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358280, 30.952208, 31.278522>,  <36.189346, 30.660511, 30.566364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358280, 30.952208, 31.278522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464672, 31.248060, 31.031233>,  <36.528507, 31.425571, 30.882860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464672, 31.248060, 31.031233>,  <36.358280, 30.952208, 31.278522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464672, 31.248060, 31.031233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278628, 0.672938, 0.685216,
		0.922832, -0.010002, 0.385072,
		0.265984, 0.739631, -0.618222,
		36.544468, 31.469950, 30.845766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838779, 31.425417, 31.563303>,  <36.358280, 30.952208, 31.278522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838779, 31.425417, 31.563303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664387, 31.651297, 31.283007>,  <36.559753, 31.786823, 31.114828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664387, 31.651297, 31.283007>,  <36.838779, 31.425417, 31.563303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664387, 31.651297, 31.283007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135943, 0.728381, 0.671551,
		0.889630, 0.388043, -0.240792,
		-0.435979, 0.564698, -0.700742,
		36.533592, 31.820705, 31.072784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215672, 32.023190, 31.500536>,  <36.838779, 31.425417, 31.563303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215672, 32.023190, 31.500536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846394, 32.119896, 31.381025>,  <36.624828, 32.177921, 31.309319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846394, 32.119896, 31.381025>,  <37.215672, 32.023190, 31.500536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846394, 32.119896, 31.381025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026850, 0.734900, 0.677644,
		0.383403, 0.633617, -0.671961,
		-0.923191, 0.241768, -0.298776,
		36.569435, 32.192425, 31.291393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159534, 32.783672, 31.410236>,  <37.215672, 32.023190, 31.500536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159534, 32.783672, 31.410236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776546, 32.670033, 31.430412>,  <36.546753, 32.601849, 31.442518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776546, 32.670033, 31.430412>,  <37.159534, 32.783672, 31.410236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776546, 32.670033, 31.430412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216587, 0.823139, 0.524912,
		-0.190645, 0.491662, -0.849661,
		-0.957468, -0.284097, 0.050440,
		36.489307, 32.584805, 31.445543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704651, 33.286457, 31.152178>,  <37.159534, 32.783672, 31.410236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704651, 33.286457, 31.152178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459942, 33.078453, 31.390615>,  <36.313118, 32.953651, 31.533678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459942, 33.078453, 31.390615>,  <36.704651, 33.286457, 31.152178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459942, 33.078453, 31.390615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004730, 0.755952, 0.654611,
		-0.791021, 0.397652, -0.464928,
		-0.611770, -0.520010, 0.596093,
		36.276409, 32.922451, 31.569443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306496, 33.824455, 31.491785>,  <36.704651, 33.286457, 31.152178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306496, 33.824455, 31.491785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183933, 33.510654, 31.707441>,  <36.110394, 33.322376, 31.836836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183933, 33.510654, 31.707441>,  <36.306496, 33.824455, 31.491785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183933, 33.510654, 31.707441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177058, 0.603473, 0.777478,
		-0.935288, 0.142766, -0.323811,
		-0.306409, -0.784499, 0.539143,
		36.092010, 33.275303, 31.869184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593250, 33.947102, 31.780319>,  <36.306496, 33.824455, 31.491785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593250, 33.947102, 31.780319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776756, 33.694752, 32.030609>,  <35.886860, 33.543343, 32.180782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776756, 33.694752, 32.030609>,  <35.593250, 33.947102, 31.780319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776756, 33.694752, 32.030609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356361, 0.514453, 0.779965,
		-0.813968, -0.580802, 0.011191,
		0.458762, -0.630878, 0.625723,
		35.914387, 33.505489, 32.218327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104916, 33.622368, 32.221928>,  <35.593250, 33.947102, 31.780319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104916, 33.622368, 32.221928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447216, 33.587917, 32.425991>,  <35.652596, 33.567245, 32.548431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447216, 33.587917, 32.425991>,  <35.104916, 33.622368, 32.221928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447216, 33.587917, 32.425991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379444, 0.565841, 0.732015,
		-0.351718, -0.820004, 0.451540,
		0.855755, -0.086128, 0.510162,
		35.703941, 33.562080, 32.579041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839661, 33.602661, 32.852806>,  <35.104916, 33.622368, 32.221928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839661, 33.602661, 32.852806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227924, 33.661156, 32.929165>,  <35.460880, 33.696255, 32.974979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227924, 33.661156, 32.929165>,  <34.839661, 33.602661, 32.852806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227924, 33.661156, 32.929165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230228, 0.335828, 0.913353,
		0.069459, -0.930502, 0.359642,
		0.970654, 0.146240, 0.190901,
		35.519119, 33.705029, 32.986435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080109, 33.309452, 33.578613>,  <34.839661, 33.602661, 32.852806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080109, 33.309452, 33.578613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337345, 33.596161, 33.470787>,  <35.491688, 33.768188, 33.406090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337345, 33.596161, 33.470787>,  <35.080109, 33.309452, 33.578613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337345, 33.596161, 33.470787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017848, 0.337890, 0.941017,
		0.765582, -0.609970, 0.204500,
		0.643090, 0.716775, -0.269569,
		35.530273, 33.811195, 33.389915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515564, 33.245514, 34.100830>,  <35.080109, 33.309452, 33.578613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515564, 33.245514, 34.100830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527298, 33.601093, 33.918007>,  <35.534340, 33.814442, 33.808311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527298, 33.601093, 33.918007>,  <35.515564, 33.245514, 34.100830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527298, 33.601093, 33.918007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028567, 0.457815, 0.888588,
		0.999161, -0.013012, 0.038825,
		0.029337, 0.888952, -0.457060,
		35.536098, 33.867779, 33.780888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956333, 33.650307, 34.547718>,  <35.515564, 33.245514, 34.100830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956333, 33.650307, 34.547718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783024, 33.928535, 34.318478>,  <35.679039, 34.095474, 34.180935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783024, 33.928535, 34.318478>,  <35.956333, 33.650307, 34.547718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783024, 33.928535, 34.318478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074769, 0.661438, 0.746263,
		0.898154, 0.280488, -0.338593,
		-0.433277, 0.695576, -0.573102,
		35.653042, 34.137207, 34.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285740, 34.210506, 34.761242>,  <35.956333, 33.650307, 34.547718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285740, 34.210506, 34.761242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951908, 34.353680, 34.593731>,  <35.751610, 34.439583, 34.493225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951908, 34.353680, 34.593731>,  <36.285740, 34.210506, 34.761242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951908, 34.353680, 34.593731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110375, 0.636115, 0.763659,
		0.539724, 0.683553, -0.491379,
		-0.834575, 0.357929, -0.418774,
		35.701534, 34.461060, 34.468098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319485, 34.996334, 34.780273>,  <36.285740, 34.210506, 34.761242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319485, 34.996334, 34.780273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932308, 34.901707, 34.746532>,  <35.700001, 34.844929, 34.726288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932308, 34.901707, 34.746532>,  <36.319485, 34.996334, 34.780273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932308, 34.901707, 34.746532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199020, 0.517567, 0.832175,
		-0.153209, 0.822289, -0.548059,
		-0.967945, -0.236571, -0.084356,
		35.641926, 34.830734, 34.721226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072285, 34.928280, 34.684673>,  <36.319485, 34.996334, 34.780273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072285, 34.928280, 34.684673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.156765, 35.318104, 34.714695>,  <37.207455, 35.551998, 34.732708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.156765, 35.318104, 34.714695>,  <37.072285, 34.928280, 34.684673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156765, 35.318104, 34.714695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760771, -0.115687, -0.638626,
		-0.613695, 0.191979, -0.765848,
		0.211201, 0.974557, 0.075056,
		37.220127, 35.610470, 34.737213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046883, 35.288418, 33.973431>,  <37.072285, 34.928280, 34.684673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046883, 35.288418, 33.973431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302361, 35.410667, 34.255894>,  <37.455647, 35.484016, 34.425373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302361, 35.410667, 34.255894>,  <37.046883, 35.288418, 33.973431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302361, 35.410667, 34.255894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753247, -0.060945, -0.654908,
		-0.157120, 0.950199, -0.269138,
		0.638696, 0.305627, 0.706158,
		37.493969, 35.502354, 34.467743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529552, 35.760738, 33.607109>,  <37.046883, 35.288418, 33.973431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529552, 35.760738, 33.607109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698257, 35.642906, 33.950115>,  <37.799480, 35.572205, 34.155918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698257, 35.642906, 33.950115>,  <37.529552, 35.760738, 33.607109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698257, 35.642906, 33.950115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801362, -0.321347, -0.504535,
		0.424189, 0.899976, 0.100536,
		0.421762, -0.294584, 0.857518,
		37.824787, 35.554531, 34.207371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243675, 36.073936, 33.661961>,  <37.529552, 35.760738, 33.607109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243675, 36.073936, 33.661961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213261, 35.748589, 33.892666>,  <38.195011, 35.553379, 34.031090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213261, 35.748589, 33.892666>,  <38.243675, 36.073936, 33.661961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213261, 35.748589, 33.892666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820422, -0.379772, -0.427411,
		0.566680, 0.440690, 0.696180,
		-0.076034, -0.813367, 0.576761,
		38.190449, 35.504578, 34.065693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971813, 35.764027, 33.696861>,  <38.243675, 36.073936, 33.661961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971813, 35.764027, 33.696861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730026, 35.472904, 33.826420>,  <38.584953, 35.298229, 33.904156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730026, 35.472904, 33.826420>,  <38.971813, 35.764027, 33.696861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730026, 35.472904, 33.826420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529945, -0.670951, -0.518635,
		0.594788, -0.141850, 0.791268,
		-0.604471, -0.727807, 0.323901,
		38.548683, 35.254562, 33.923592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435577, 35.224922, 33.913521>,  <38.971813, 35.764027, 33.696861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435577, 35.224922, 33.913521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077438, 35.071518, 33.822941>,  <38.862556, 34.979477, 33.768593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077438, 35.071518, 33.822941>,  <39.435577, 35.224922, 33.913521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077438, 35.071518, 33.822941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445309, -0.762383, -0.469545,
		0.007434, -0.521244, 0.853375,
		-0.895346, -0.383506, -0.226447,
		38.808834, 34.956467, 33.755005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549793, 34.517479, 34.018879>,  <39.435577, 35.224922, 33.913521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549793, 34.517479, 34.018879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230747, 34.566338, 33.782612>,  <39.039318, 34.595654, 33.640850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230747, 34.566338, 33.782612>,  <39.549793, 34.517479, 34.018879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230747, 34.566338, 33.782612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398014, -0.629217, -0.667586,
		-0.453203, -0.767571, 0.453256,
		-0.797616, 0.122149, -0.590668,
		38.991463, 34.602982, 33.605412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482185, 33.888348, 33.738113>,  <39.549793, 34.517479, 34.018879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482185, 33.888348, 33.738113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.281960, 34.129036, 33.489159>,  <39.161823, 34.273449, 33.339787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.281960, 34.129036, 33.489159>,  <39.482185, 33.888348, 33.738113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281960, 34.129036, 33.489159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263550, -0.578894, -0.771637,
		-0.824609, -0.550282, 0.131188,
		-0.500562, 0.601724, -0.622388,
		39.131790, 34.309551, 33.302441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037952, 33.464321, 33.270287>,  <39.482185, 33.888348, 33.738113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037952, 33.464321, 33.270287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059902, 33.804111, 33.060379>,  <39.073074, 34.007984, 32.934433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059902, 33.804111, 33.060379>,  <39.037952, 33.464321, 33.270287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059902, 33.804111, 33.060379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367573, -0.505839, -0.780396,
		-0.928374, -0.150065, -0.340003,
		0.054877, 0.849475, -0.524767,
		39.076366, 34.058952, 32.902950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728592, 33.333622, 32.597610>,  <39.037952, 33.464321, 33.270287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728592, 33.333622, 32.597610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956314, 33.657242, 32.539200>,  <39.092949, 33.851414, 32.504154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956314, 33.657242, 32.539200>,  <38.728592, 33.333622, 32.597610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956314, 33.657242, 32.539200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312038, -0.376978, -0.872078,
		-0.760606, 0.450913, -0.467071,
		0.569306, 0.809052, -0.146030,
		39.127106, 33.899956, 32.495392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697136, 33.523750, 31.925724>,  <38.728592, 33.333622, 32.597610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697136, 33.523750, 31.925724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018703, 33.739826, 32.025249>,  <39.211643, 33.869473, 32.084965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018703, 33.739826, 32.025249>,  <38.697136, 33.523750, 31.925724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018703, 33.739826, 32.025249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480895, -0.344261, -0.806365,
		-0.349932, 0.767907, -0.536532,
		0.803921, 0.540188, 0.248815,
		39.259880, 33.901882, 32.099895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891376, 33.877243, 31.379574>,  <38.697136, 33.523750, 31.925724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891376, 33.877243, 31.379574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231014, 33.861774, 31.590305>,  <39.434795, 33.852493, 31.716745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231014, 33.861774, 31.590305>,  <38.891376, 33.877243, 31.379574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231014, 33.861774, 31.590305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495380, -0.288004, -0.819544,
		0.183424, 0.956848, -0.225383,
		0.849090, -0.038674, 0.526831,
		39.485741, 33.850174, 31.748354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455658, 34.230362, 30.898783>,  <38.891376, 33.877243, 31.379574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455658, 34.230362, 30.898783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636002, 34.000694, 31.172152>,  <39.744205, 33.862896, 31.336172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636002, 34.000694, 31.172152>,  <39.455658, 34.230362, 30.898783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636002, 34.000694, 31.172152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473990, -0.494778, -0.728374,
		0.756348, 0.652326, 0.049075,
		0.450856, -0.574166, 0.683420,
		39.771259, 33.828445, 31.377178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209953, 34.190338, 30.753923>,  <39.455658, 34.230362, 30.898783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209953, 34.190338, 30.753923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.118732, 33.869194, 30.974253>,  <40.063999, 33.676506, 31.106451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.118732, 33.869194, 30.974253>,  <40.209953, 34.190338, 30.753923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118732, 33.869194, 30.974253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505656, -0.581117, -0.637664,
		0.832049, 0.133109, 0.538494,
		-0.228049, -0.802861, 0.550825,
		40.050316, 33.628334, 31.139500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867046, 33.793552, 30.917696>,  <40.209953, 34.190338, 30.753923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867046, 33.793552, 30.917696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.549656, 33.553375, 30.957443>,  <40.359222, 33.409271, 30.981291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.549656, 33.553375, 30.957443>,  <40.867046, 33.793552, 30.917696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549656, 33.553375, 30.957443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437577, -0.676314, -0.592558,
		0.422999, -0.426698, 0.799375,
		-0.793472, -0.600440, 0.099367,
		40.311615, 33.373241, 30.987253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116848, 33.132370, 31.019609>,  <40.867046, 33.793552, 30.917696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116848, 33.132370, 31.019609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.736446, 33.062305, 30.917706>,  <40.508205, 33.020267, 30.856564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.736446, 33.062305, 30.917706>,  <41.116848, 33.132370, 31.019609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736446, 33.062305, 30.917706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299910, -0.722788, -0.622600,
		-0.075083, -0.668503, 0.739910,
		-0.951008, -0.175160, -0.254760,
		40.451145, 33.009758, 30.841278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991703, 32.382778, 31.018473>,  <41.116848, 33.132370, 31.019609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991703, 32.382778, 31.018473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.695057, 32.519768, 30.787745>,  <40.517071, 32.601963, 30.649307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.695057, 32.519768, 30.787745>,  <40.991703, 32.382778, 31.018473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695057, 32.519768, 30.787745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150675, -0.752853, -0.640711,
		-0.653691, -0.562070, 0.506720,
		-0.741610, 0.342477, -0.576823,
		40.472572, 32.622509, 30.614698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587227, 31.865871, 30.902861>,  <40.991703, 32.382778, 31.018473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587227, 31.865871, 30.902861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.487820, 32.113499, 30.604870>,  <40.428177, 32.262077, 30.426075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.487820, 32.113499, 30.604870>,  <40.587227, 31.865871, 30.902861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487820, 32.113499, 30.604870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081634, -0.779756, -0.620738,
		-0.965182, -0.093449, 0.244319,
		-0.248516, 0.619070, -0.744978,
		40.413265, 32.299221, 30.381376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.898006, 31.495825, 30.512247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069733, 31.778502, 30.287294>,  <40.172768, 31.948107, 30.152323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069733, 31.778502, 30.287294>,  <39.898006, 31.495825, 30.512247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069733, 31.778502, 30.287294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170408, -0.674885, -0.717978,
		-0.886932, 0.212406, -0.410165,
		0.429317, 0.706692, -0.562381,
		40.198528, 31.990509, 30.118580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616211, 31.303320, 29.869801>,  <39.898006, 31.495825, 30.512247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616211, 31.303320, 29.869801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.918732, 31.548176, 29.777460>,  <40.100243, 31.695089, 29.722055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.918732, 31.548176, 29.777460>,  <39.616211, 31.303320, 29.869801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918732, 31.548176, 29.777460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234831, -0.583358, -0.777527,
		-0.610625, 0.533833, -0.584944,
		0.756301, 0.612140, -0.230852,
		40.145622, 31.731817, 29.708204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513390, 31.624216, 29.137165>,  <39.616211, 31.303320, 29.869801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513390, 31.624216, 29.137165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901493, 31.604752, 29.232018>,  <40.134354, 31.593073, 29.288929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901493, 31.604752, 29.232018>,  <39.513390, 31.624216, 29.137165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901493, 31.604752, 29.232018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171451, -0.553400, -0.815078,
		0.170894, 0.831493, -0.528597,
		0.970258, -0.048663, 0.237133,
		40.192570, 31.590153, 29.303158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821629, 31.833622, 28.513924>,  <39.513390, 31.624216, 29.137165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821629, 31.833622, 28.513924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102993, 31.652029, 28.732687>,  <40.271812, 31.543074, 28.863945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102993, 31.652029, 28.732687>,  <39.821629, 31.833622, 28.513924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102993, 31.652029, 28.732687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258135, -0.553748, -0.791663,
		0.662248, 0.698044, -0.272327,
		0.703416, -0.453980, 0.546908,
		40.314018, 31.515835, 28.896759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568150, 31.969185, 28.124865>,  <39.821629, 31.833622, 28.513924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568150, 31.969185, 28.124865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576969, 31.640835, 28.353138>,  <40.582260, 31.443825, 28.490101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576969, 31.640835, 28.353138>,  <40.568150, 31.969185, 28.124865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576969, 31.640835, 28.353138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589738, -0.450253, -0.670434,
		0.807294, 0.351336, 0.474173,
		0.022049, -0.820875, 0.570682,
		40.583584, 31.394573, 28.524343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159885, 31.713821, 27.937214>,  <40.568150, 31.969185, 28.124865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159885, 31.713821, 27.937214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.979321, 31.406853, 28.119331>,  <40.870983, 31.222672, 28.228601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.979321, 31.406853, 28.119331>,  <41.159885, 31.713821, 27.937214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979321, 31.406853, 28.119331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428633, -0.634005, -0.643670,
		0.782624, -0.095408, 0.615140,
		-0.451413, -0.767421, 0.455293,
		40.843895, 31.176626, 28.255919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681824, 31.262552, 27.885643>,  <41.159885, 31.713821, 27.937214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681824, 31.262552, 27.885643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.332901, 31.076668, 27.946461>,  <41.123547, 30.965137, 27.982952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.332901, 31.076668, 27.946461>,  <41.681824, 31.262552, 27.885643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332901, 31.076668, 27.946461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316100, -0.773217, -0.549742,
		0.373036, -0.431484, 0.821380,
		-0.872310, -0.464712, 0.152045,
		41.071209, 30.937254, 27.992075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931774, 30.631449, 27.852659>,  <41.681824, 31.262552, 27.885643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931774, 30.631449, 27.852659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541378, 30.559095, 27.804136>,  <41.307140, 30.515682, 27.775023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541378, 30.559095, 27.804136>,  <41.931774, 30.631449, 27.852659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541378, 30.559095, 27.804136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217575, -0.784744, -0.580377,
		0.009787, -0.592839, 0.805262,
		-0.975995, -0.180885, -0.121307,
		41.248581, 30.504829, 27.767744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817886, 29.922400, 27.881475>,  <41.931774, 30.631449, 27.852659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817886, 29.922400, 27.881475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490444, 30.030468, 27.678740>,  <41.293980, 30.095310, 27.557098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490444, 30.030468, 27.678740>,  <41.817886, 29.922400, 27.881475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490444, 30.030468, 27.678740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195824, -0.698293, -0.688505,
		-0.539940, -0.662867, 0.518722,
		-0.818608, 0.270173, -0.506842,
		41.244862, 30.111519, 27.526688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495403, 29.360018, 27.855577>,  <41.817886, 29.922400, 27.881475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495403, 29.360018, 27.855577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361816, 29.595982, 27.561510>,  <41.281666, 29.737560, 27.385069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361816, 29.595982, 27.561510>,  <41.495403, 29.360018, 27.855577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361816, 29.595982, 27.561510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160887, -0.732830, -0.661117,
		-0.928753, -0.339070, 0.149833,
		-0.333967, 0.589908, -0.735170,
		41.261627, 29.772953, 27.340960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954739, 28.948252, 27.455498>,  <41.495403, 29.360018, 27.855577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954739, 28.948252, 27.455498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118000, 29.235727, 27.230324>,  <41.215958, 29.408213, 27.095221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118000, 29.235727, 27.230324>,  <40.954739, 28.948252, 27.455498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118000, 29.235727, 27.230324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287048, -0.686393, -0.668183,
		-0.866609, 0.111135, -0.486455,
		0.408158, 0.718689, -0.562933,
		41.240448, 29.451334, 27.061443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843697, 28.684530, 26.864891>,  <40.954739, 28.948252, 27.455498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843697, 28.684530, 26.864891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111324, 28.975544, 26.804178>,  <41.271900, 29.150152, 26.767750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111324, 28.975544, 26.804178>,  <40.843697, 28.684530, 26.864891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111324, 28.975544, 26.804178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448252, -0.557935, -0.698411,
		-0.592803, 0.399249, -0.699417,
		0.669070, 0.727536, -0.151782,
		41.312046, 29.193804, 26.758644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802094, 28.976688, 26.169188>,  <40.843697, 28.684530, 26.864891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802094, 28.976688, 26.169188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178349, 29.038475, 26.290079>,  <41.404102, 29.075546, 26.362614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178349, 29.038475, 26.290079>,  <40.802094, 28.976688, 26.169188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178349, 29.038475, 26.290079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334961, -0.566246, -0.753104,
		0.054807, 0.809633, -0.584372,
		0.940637, 0.154467, 0.302230,
		41.460541, 29.084816, 26.380749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107269, 28.944214, 25.619129>,  <40.802094, 28.976688, 26.169188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107269, 28.944214, 25.619129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413837, 28.937796, 25.875984>,  <41.597778, 28.933945, 26.030096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413837, 28.937796, 25.875984>,  <41.107269, 28.944214, 25.619129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413837, 28.937796, 25.875984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502717, -0.607300, -0.615193,
		0.399840, 0.794311, -0.457383,
		0.766423, -0.016044, 0.642136,
		41.643764, 28.932981, 26.068624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713352, 29.026121, 25.208895>,  <41.107269, 28.944214, 25.619129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713352, 29.026121, 25.208895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890850, 28.896410, 25.543064>,  <41.997349, 28.818583, 25.743567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890850, 28.896410, 25.543064>,  <41.713352, 29.026121, 25.208895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890850, 28.896410, 25.543064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468668, -0.710610, -0.524771,
		0.763831, 0.624402, -0.163353,
		0.443748, -0.324278, 0.835423,
		42.023975, 28.799128, 25.793692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367973, 28.928284, 25.058994>,  <41.713352, 29.026121, 25.208895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367973, 28.928284, 25.058994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.335621, 28.708277, 25.391485>,  <42.316208, 28.576273, 25.590981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.335621, 28.708277, 25.391485>,  <42.367973, 28.928284, 25.058994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335621, 28.708277, 25.391485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241554, -0.819916, -0.519028,
		0.967011, 0.158804, 0.199178,
		-0.080885, -0.550017, 0.831227,
		42.311356, 28.543272, 25.640854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064625, 28.728561, 25.205212>,  <42.367973, 28.928284, 25.058994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064625, 28.728561, 25.205212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.792412, 28.492477, 25.378889>,  <42.629082, 28.350828, 25.483095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.792412, 28.492477, 25.378889>,  <43.064625, 28.728561, 25.205212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792412, 28.492477, 25.378889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319990, -0.772486, -0.548518,
		0.659148, -0.234349, 0.714566,
		-0.680537, -0.590208, 0.434194,
		42.588249, 28.315414, 25.509148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386669, 28.149506, 25.233198>,  <43.064625, 28.728561, 25.205212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386669, 28.149506, 25.233198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005219, 28.033760, 25.266335>,  <42.776348, 27.964314, 25.286217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005219, 28.033760, 25.266335>,  <43.386669, 28.149506, 25.233198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005219, 28.033760, 25.266335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191244, -0.795055, -0.575598,
		0.232419, -0.533064, 0.813526,
		-0.953628, -0.289362, 0.082841,
		42.719131, 27.946951, 25.291187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348454, 27.468466, 25.233747>,  <43.386669, 28.149506, 25.233198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348454, 27.468466, 25.233747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.965794, 27.538000, 25.140278>,  <42.736198, 27.579721, 25.084196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.965794, 27.538000, 25.140278>,  <43.348454, 27.468466, 25.233747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965794, 27.538000, 25.140278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071897, -0.636535, -0.767889,
		-0.282228, -0.751401, 0.596443,
		-0.956649, 0.173837, -0.233672,
		42.678799, 27.590151, 25.070177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086037, 26.818529, 25.092318>,  <43.348454, 27.468466, 25.233747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086037, 26.818529, 25.092318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833996, 27.079987, 24.924643>,  <42.682770, 27.236860, 24.824038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833996, 27.079987, 24.924643>,  <43.086037, 26.818529, 25.092318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833996, 27.079987, 24.924643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031698, -0.517735, -0.854954,
		-0.775864, -0.551997, 0.305508,
		-0.630103, 0.653643, -0.419189,
		42.644966, 27.276079, 24.798885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477253, 26.368690, 24.734642>,  <43.086037, 26.818529, 25.092318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477253, 26.368690, 24.734642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.497417, 26.727453, 24.558908>,  <42.509514, 26.942711, 24.453468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.497417, 26.727453, 24.558908>,  <42.477253, 26.368690, 24.734642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497417, 26.727453, 24.558908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042082, -0.441411, -0.896318,
		-0.997842, 0.026693, -0.059994,
		0.050408, 0.896908, -0.439335,
		42.512539, 26.996525, 24.427109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942162, 26.431776, 24.167103>,  <42.477253, 26.368690, 24.734642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942162, 26.431776, 24.167103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229156, 26.701088, 24.095646>,  <42.401352, 26.862675, 24.052773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229156, 26.701088, 24.095646>,  <41.942162, 26.431776, 24.167103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229156, 26.701088, 24.095646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123897, -0.375715, -0.918416,
		-0.685468, 0.636816, -0.352986,
		0.717484, 0.673279, -0.178641,
		42.444401, 26.903072, 24.042053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955666, 26.516142, 23.467793>,  <41.942162, 26.431776, 24.167103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955666, 26.516142, 23.467793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.312450, 26.683390, 23.536581>,  <42.526524, 26.783739, 23.577854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.312450, 26.683390, 23.536581>,  <41.955666, 26.516142, 23.467793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312450, 26.683390, 23.536581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311828, -0.293544, -0.903657,
		-0.327356, 0.859655, -0.392212,
		0.891965, 0.418120, 0.171971,
		42.580040, 26.808826, 23.588173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284931, 26.982944, 22.942581>,  <41.955666, 26.516142, 23.467793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284931, 26.982944, 22.942581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551319, 26.755545, 23.135782>,  <42.711151, 26.619104, 23.251703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551319, 26.755545, 23.135782>,  <42.284931, 26.982944, 22.942581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551319, 26.755545, 23.135782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357418, -0.325150, -0.875517,
		0.654780, 0.755702, -0.013348,
		0.665970, -0.568500, 0.483003,
		42.751110, 26.584995, 23.280684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705620, 26.782572, 22.485411>,  <42.284931, 26.982944, 22.942581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705620, 26.782572, 22.485411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.424015, 26.498497, 22.485861>,  <41.255051, 26.328053, 22.486132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.424015, 26.498497, 22.485861>,  <41.705620, 26.782572, 22.485411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424015, 26.498497, 22.485861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648000, 0.643017, 0.408199,
		-0.290621, 0.286648, -0.912892,
		-0.704014, -0.710185, 0.001127,
		41.212811, 26.285442, 22.486198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036739, 26.987223, 22.168186>,  <41.705620, 26.782572, 22.485411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036739, 26.987223, 22.168186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.912643, 26.682539, 22.395712>,  <40.838184, 26.499729, 22.532227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.912643, 26.682539, 22.395712>,  <41.036739, 26.987223, 22.168186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912643, 26.682539, 22.395712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617624, 0.616358, 0.488512,
		-0.722696, -0.199754, -0.661671,
		-0.310244, -0.761709, 0.568813,
		40.819569, 26.454025, 22.566355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411850, 27.409855, 22.364765>,  <41.036739, 26.987223, 22.168186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411850, 27.409855, 22.364765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454430, 27.073399, 22.576860>,  <40.479977, 26.871525, 22.704117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454430, 27.073399, 22.576860>,  <40.411850, 27.409855, 22.364765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454430, 27.073399, 22.576860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637521, 0.351497, 0.685578,
		-0.763045, -0.411015, -0.498829,
		0.106446, -0.841141, 0.530238,
		40.486362, 26.821056, 22.735931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719498, 27.062258, 22.410231>,  <40.411850, 27.409855, 22.364765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719498, 27.062258, 22.410231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.951385, 26.972164, 22.723457>,  <40.090519, 26.918108, 22.911394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.951385, 26.972164, 22.723457>,  <39.719498, 27.062258, 22.410231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951385, 26.972164, 22.723457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594657, 0.540067, 0.595575,
		-0.557052, -0.810924, 0.179152,
		0.579720, -0.225233, 0.783067,
		40.125301, 26.904594, 22.958378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336311, 26.979126, 22.923258>,  <39.719498, 27.062258, 22.410231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336311, 26.979126, 22.923258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.683403, 27.015432, 23.118732>,  <39.891659, 27.037216, 23.236017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.683403, 27.015432, 23.118732>,  <39.336311, 26.979126, 22.923258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683403, 27.015432, 23.118732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424066, 0.648041, 0.632622,
		-0.259266, -0.756177, 0.600814,
		0.867726, 0.090768, 0.488684,
		39.943722, 27.042664, 23.265337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168980, 26.837908, 23.603344>,  <39.336311, 26.979126, 22.923258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168980, 26.837908, 23.603344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501980, 27.059502, 23.600859>,  <39.701782, 27.192457, 23.599367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501980, 27.059502, 23.600859>,  <39.168980, 26.837908, 23.603344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501980, 27.059502, 23.600859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397163, 0.604583, 0.690464,
		0.386261, -0.572348, 0.723340,
		0.832505, 0.553983, -0.006211,
		39.751732, 27.225697, 23.598995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199783, 26.960320, 24.221941>,  <39.168980, 26.837908, 23.603344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199783, 26.960320, 24.221941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451962, 27.237677, 24.082375>,  <39.603268, 27.404091, 23.998634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451962, 27.237677, 24.082375>,  <39.199783, 26.960320, 24.221941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451962, 27.237677, 24.082375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286006, 0.625376, 0.726021,
		0.721623, -0.357924, 0.592580,
		0.630445, 0.693394, -0.348917,
		39.641094, 27.445694, 23.977699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517303, 27.190256, 24.788393>,  <39.199783, 26.960320, 24.221941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517303, 27.190256, 24.788393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590469, 27.473259, 24.515343>,  <39.634369, 27.643061, 24.351513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590469, 27.473259, 24.515343>,  <39.517303, 27.190256, 24.788393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590469, 27.473259, 24.515343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173492, 0.706670, 0.685943,
		0.967700, -0.007039, 0.252007,
		0.182915, 0.707508, -0.682623,
		39.645344, 27.685511, 24.310556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974682, 27.756310, 25.155207>,  <39.517303, 27.190256, 24.788393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974682, 27.756310, 25.155207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827995, 27.933647, 24.828045>,  <39.739983, 28.040049, 24.631748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827995, 27.933647, 24.828045>,  <39.974682, 27.756310, 25.155207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827995, 27.933647, 24.828045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150065, 0.839451, 0.522304,
		0.918152, 0.314274, -0.241307,
		-0.366712, 0.443343, -0.817906,
		39.717983, 28.066650, 24.582674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236786, 28.437969, 25.128794>,  <39.974682, 27.756310, 25.155207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236786, 28.437969, 25.128794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.918991, 28.473183, 24.888449>,  <39.728313, 28.494310, 24.744242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.918991, 28.473183, 24.888449>,  <40.236786, 28.437969, 25.128794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918991, 28.473183, 24.888449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335435, 0.761184, 0.555052,
		0.506232, 0.642534, -0.575222,
		-0.794489, 0.088036, -0.600863,
		39.680645, 28.499594, 24.708189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328449, 29.021896, 24.970188>,  <40.236786, 28.437969, 25.128794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328449, 29.021896, 24.970188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939072, 28.949575, 24.914022>,  <39.705444, 28.906183, 24.880323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939072, 28.949575, 24.914022>,  <40.328449, 29.021896, 24.970188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939072, 28.949575, 24.914022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228851, 0.783828, 0.577270,
		0.005690, 0.594074, -0.804390,
		-0.973445, -0.180800, -0.140414,
		39.647038, 28.895336, 24.871899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973026, 29.641924, 24.873213>,  <40.328449, 29.021896, 24.970188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973026, 29.641924, 24.873213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698895, 29.378157, 24.996822>,  <39.534416, 29.219896, 25.070988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698895, 29.378157, 24.996822>,  <39.973026, 29.641924, 24.873213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698895, 29.378157, 24.996822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317262, 0.652310, 0.688357,
		-0.655493, 0.373709, -0.656254,
		-0.685327, -0.659418, 0.309022,
		39.493298, 29.180330, 25.089529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487556, 30.040636, 25.057053>,  <39.973026, 29.641924, 24.873213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487556, 30.040636, 25.057053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374268, 29.705900, 25.244450>,  <39.306293, 29.505058, 25.356888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374268, 29.705900, 25.244450>,  <39.487556, 30.040636, 25.057053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374268, 29.705900, 25.244450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371634, 0.546091, 0.750781,
		-0.884124, 0.038526, -0.465661,
		-0.283218, -0.836839, 0.468495,
		39.289303, 29.454849, 25.384998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866016, 30.254618, 25.309896>,  <39.487556, 30.040636, 25.057053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866016, 30.254618, 25.309896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973534, 29.932993, 25.522022>,  <39.038044, 29.740019, 25.649298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973534, 29.932993, 25.522022>,  <38.866016, 30.254618, 25.309896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973534, 29.932993, 25.522022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468702, 0.371806, 0.801298,
		-0.841467, -0.463945, -0.276925,
		0.268796, -0.804062, 0.530314,
		39.054173, 29.691774, 25.681116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241127, 29.958374, 25.582739>,  <38.866016, 30.254618, 25.309896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241127, 29.958374, 25.582739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543690, 29.845205, 25.818636>,  <38.725227, 29.777304, 25.960175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543690, 29.845205, 25.818636>,  <38.241127, 29.958374, 25.582739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543690, 29.845205, 25.818636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485713, 0.360923, 0.796127,
		-0.438095, -0.888644, 0.135587,
		0.756410, -0.282923, 0.589745,
		38.770611, 29.760328, 25.995560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929855, 29.587227, 26.202530>,  <38.241127, 29.958374, 25.582739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929855, 29.587227, 26.202530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299366, 29.656872, 26.338949>,  <38.521072, 29.698660, 26.420801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299366, 29.656872, 26.338949>,  <37.929855, 29.587227, 26.202530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299366, 29.656872, 26.338949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376691, 0.253177, 0.891069,
		0.068802, -0.951623, 0.299468,
		0.923780, 0.174114, 0.341049,
		38.576500, 29.709106, 26.441263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919865, 29.251120, 26.752100>,  <37.929855, 29.587227, 26.202530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919865, 29.251120, 26.752100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245781, 29.480900, 26.783384>,  <38.441330, 29.618769, 26.802155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245781, 29.480900, 26.783384>,  <37.919865, 29.251120, 26.752100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245781, 29.480900, 26.783384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273802, 0.262378, 0.925306,
		0.511023, -0.775346, 0.371070,
		0.814793, 0.574453, 0.078210,
		38.490219, 29.653234, 26.806847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160477, 29.070076, 27.452410>,  <37.919865, 29.251120, 26.752100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160477, 29.070076, 27.452410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313942, 29.425394, 27.351431>,  <38.406021, 29.638586, 27.290844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313942, 29.425394, 27.351431>,  <38.160477, 29.070076, 27.452410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313942, 29.425394, 27.351431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358910, 0.395310, 0.845526,
		0.850874, -0.233791, 0.470484,
		0.383664, 0.888297, -0.252449,
		38.429043, 29.691883, 27.275696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643642, 29.293465, 28.028534>,  <38.160477, 29.070076, 27.452410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643642, 29.293465, 28.028534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.540989, 29.620102, 27.821724>,  <38.479397, 29.816084, 27.697638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.540989, 29.620102, 27.821724>,  <38.643642, 29.293465, 28.028534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540989, 29.620102, 27.821724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351895, 0.419279, 0.836884,
		0.900171, 0.396711, 0.179754,
		-0.256634, 0.816594, -0.517024,
		38.464001, 29.865080, 27.666616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002441, 29.899885, 28.225929>,  <38.643642, 29.293465, 28.028534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002441, 29.899885, 28.225929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668488, 30.048199, 28.063211>,  <38.468113, 30.137188, 27.965582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668488, 30.048199, 28.063211>,  <39.002441, 29.899885, 28.225929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668488, 30.048199, 28.063211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277716, 0.354322, 0.892933,
		0.475222, 0.858472, -0.192846,
		-0.834888, 0.370785, -0.406793,
		38.418022, 30.159433, 27.941174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.539700, 33.651039, 32.367565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.202908, 33.768478, 32.186512>,  <40.000832, 33.838943, 32.077881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.202908, 33.768478, 32.186512>,  <40.539700, 33.651039, 32.367565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202908, 33.768478, 32.186512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258083, 0.517566, 0.815793,
		0.473782, 0.803696, -0.360006,
		-0.841976, 0.293597, -0.452634,
		39.950314, 33.856556, 32.050720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385109, 34.370773, 32.493763>,  <40.539700, 33.651039, 32.367565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385109, 34.370773, 32.493763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.036404, 34.215042, 32.374802>,  <39.827179, 34.121601, 32.303425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.036404, 34.215042, 32.374802>,  <40.385109, 34.370773, 32.493763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036404, 34.215042, 32.374802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482650, 0.578246, 0.657784,
		-0.084124, 0.716974, -0.692005,
		-0.871764, -0.389332, -0.297403,
		39.774876, 34.098244, 32.285580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904423, 34.875877, 32.327370>,  <40.385109, 34.370773, 32.493763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904423, 34.875877, 32.327370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643589, 34.576450, 32.375408>,  <39.487087, 34.396793, 32.404232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643589, 34.576450, 32.375408>,  <39.904423, 34.875877, 32.327370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643589, 34.576450, 32.375408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585856, 0.598081, 0.546875,
		-0.481201, 0.286252, -0.828556,
		-0.652087, -0.748572, 0.120095,
		39.447964, 34.351879, 32.411438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190880, 35.203979, 32.342987>,  <39.904423, 34.875877, 32.327370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190880, 35.203979, 32.342987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.150555, 34.845078, 32.514927>,  <39.126358, 34.629738, 32.618092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.150555, 34.845078, 32.514927>,  <39.190880, 35.203979, 32.342987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150555, 34.845078, 32.514927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589172, 0.401984, 0.700917,
		-0.801694, -0.182591, -0.569164,
		-0.100814, -0.897256, 0.429846,
		39.120312, 34.575901, 32.643879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432564, 35.063744, 32.496468>,  <39.190880, 35.203979, 32.342987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432564, 35.063744, 32.496468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628464, 34.822594, 32.748398>,  <38.746002, 34.677902, 32.899559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628464, 34.822594, 32.748398>,  <38.432564, 35.063744, 32.496468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628464, 34.822594, 32.748398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547855, 0.349161, 0.760224,
		-0.678234, -0.717374, -0.159289,
		0.489747, -0.602877, 0.629830,
		38.775387, 34.641731, 32.937347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942265, 34.546528, 32.837986>,  <38.432564, 35.063744, 32.496468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942265, 34.546528, 32.837986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259953, 34.592533, 33.076645>,  <38.450565, 34.620136, 33.219841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259953, 34.592533, 33.076645>,  <37.942265, 34.546528, 32.837986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259953, 34.592533, 33.076645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603203, 0.267547, 0.751376,
		-0.073215, -0.956657, 0.281865,
		0.794221, 0.115009, 0.596646,
		38.498219, 34.627037, 33.255638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662247, 34.412086, 33.486130>,  <37.942265, 34.546528, 32.837986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662247, 34.412086, 33.486130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.004070, 34.604412, 33.564655>,  <38.209164, 34.719807, 33.611771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.004070, 34.604412, 33.564655>,  <37.662247, 34.412086, 33.486130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004070, 34.604412, 33.564655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402130, 0.373376, 0.835991,
		0.328654, -0.793353, 0.512423,
		0.854563, 0.480813, 0.196320,
		38.260437, 34.748657, 33.623550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852543, 34.210911, 34.166367>,  <37.662247, 34.412086, 33.486130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852543, 34.210911, 34.166367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051949, 34.550114, 34.094398>,  <38.171593, 34.753635, 34.051216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051949, 34.550114, 34.094398>,  <37.852543, 34.210911, 34.166367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051949, 34.550114, 34.094398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313369, 0.369801, 0.874670,
		0.808259, -0.379654, 0.450090,
		0.498515, 0.848004, -0.179923,
		38.201504, 34.804516, 34.040421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239830, 34.404278, 34.744633>,  <37.852543, 34.210911, 34.166367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239830, 34.404278, 34.744633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200848, 34.746788, 34.541737>,  <38.177456, 34.952293, 34.419998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200848, 34.746788, 34.541737>,  <38.239830, 34.404278, 34.744633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200848, 34.746788, 34.541737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587077, 0.362084, 0.724042,
		0.803643, 0.368352, 0.467412,
		-0.097460, 0.856278, -0.507237,
		38.171608, 35.003670, 34.389565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401760, 34.954514, 35.217140>,  <38.239830, 34.404278, 34.744633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401760, 34.954514, 35.217140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217697, 35.143265, 34.916317>,  <38.107258, 35.256516, 34.735825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217697, 35.143265, 34.916317>,  <38.401760, 34.954514, 35.217140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217697, 35.143265, 34.916317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502007, 0.560372, 0.658766,
		0.732287, 0.680673, -0.020973,
		-0.460157, 0.471877, -0.752056,
		38.079651, 35.284828, 34.690701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467167, 35.724045, 35.277641>,  <38.401760, 34.954514, 35.217140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467167, 35.724045, 35.277641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151299, 35.645485, 35.045143>,  <37.961777, 35.598347, 34.905643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151299, 35.645485, 35.045143>,  <38.467167, 35.724045, 35.277641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151299, 35.645485, 35.045143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590219, 0.501834, 0.632301,
		0.167502, 0.842371, -0.512205,
		-0.789674, -0.196402, -0.581241,
		37.914398, 35.586563, 34.870770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609734, 35.691120, 36.009838>,  <38.467167, 35.724045, 35.277641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609734, 35.691120, 36.009838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925434, 35.657803, 36.253197>,  <39.114853, 35.637814, 36.399212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925434, 35.657803, 36.253197>,  <38.609734, 35.691120, 36.009838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925434, 35.657803, 36.253197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130476, -0.945389, -0.298691,
		0.600054, 0.315122, -0.735278,
		0.789247, -0.083295, 0.608400,
		39.162209, 35.632812, 36.435719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228237, 36.170433, 35.845165>,  <38.609734, 35.691120, 36.009838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228237, 36.170433, 35.845165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073666, 36.320251, 36.182304>,  <38.980923, 36.410145, 36.384586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073666, 36.320251, 36.182304>,  <39.228237, 36.170433, 35.845165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073666, 36.320251, 36.182304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887426, 0.399973, 0.229120,
		-0.251299, 0.836501, -0.486945,
		-0.386424, 0.374550, 0.842845,
		38.957737, 36.432617, 36.435158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621212, 36.770844, 35.958805>,  <39.228237, 36.170433, 35.845165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621212, 36.770844, 35.958805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.461525, 36.685356, 36.315445>,  <39.365715, 36.634064, 36.529430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.461525, 36.685356, 36.315445>,  <39.621212, 36.770844, 35.958805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461525, 36.685356, 36.315445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853931, 0.267384, 0.446439,
		-0.333813, 0.939590, 0.075760,
		-0.399213, -0.213721, 0.891601,
		39.341763, 36.621239, 36.582924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334816, 37.524750, 35.717140>,  <39.621212, 36.770844, 35.958805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334816, 37.524750, 35.717140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252815, 37.865242, 35.523899>,  <39.203617, 38.069538, 35.407955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252815, 37.865242, 35.523899>,  <39.334816, 37.524750, 35.717140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252815, 37.865242, 35.523899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093955, -0.474189, -0.875395,
		-0.974242, -0.224844, 0.017231,
		-0.204999, 0.851228, -0.483100,
		39.191315, 38.120609, 35.378967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728603, 37.333706, 35.206882>,  <39.334816, 37.524750, 35.717140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728603, 37.333706, 35.206882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936779, 37.659737, 35.105061>,  <39.061684, 37.855354, 35.043968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936779, 37.659737, 35.105061>,  <38.728603, 37.333706, 35.206882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936779, 37.659737, 35.105061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059669, -0.332089, -0.941359,
		-0.851813, 0.474728, -0.221466,
		0.520436, 0.815077, -0.254551,
		39.092911, 37.904259, 35.028694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373207, 37.573563, 34.716908>,  <38.728603, 37.333706, 35.206882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373207, 37.573563, 34.716908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745209, 37.713585, 34.672073>,  <38.968410, 37.797596, 34.645172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745209, 37.713585, 34.672073>,  <38.373207, 37.573563, 34.716908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745209, 37.713585, 34.672073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015623, -0.267030, -0.963561,
		-0.367227, 0.897863, -0.242869,
		0.930000, 0.350052, -0.112088,
		39.024208, 37.818600, 34.638447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317959, 38.001080, 34.189323>,  <38.373207, 37.573563, 34.716908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317959, 38.001080, 34.189323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.707260, 37.922077, 34.236275>,  <38.940842, 37.874676, 34.264446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.707260, 37.922077, 34.236275>,  <38.317959, 38.001080, 34.189323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707260, 37.922077, 34.236275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115492, -0.021092, -0.993085,
		0.198615, 0.980075, 0.002282,
		0.973249, -0.197505, 0.117380,
		38.999233, 37.862827, 34.271488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757572, 38.370270, 33.665688>,  <38.317959, 38.001080, 34.189323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757572, 38.370270, 33.665688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.033531, 38.106319, 33.784752>,  <39.199108, 37.947948, 33.856190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.033531, 38.106319, 33.784752>,  <38.757572, 38.370270, 33.665688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033531, 38.106319, 33.784752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362237, -0.041320, -0.931170,
		0.626759, 0.750235, 0.210526,
		0.689897, -0.659879, 0.297661,
		39.240501, 37.908356, 33.874050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249897, 38.509342, 33.208141>,  <38.757572, 38.370270, 33.665688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249897, 38.509342, 33.208141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.352432, 38.145992, 33.340286>,  <39.413952, 37.927982, 33.419575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.352432, 38.145992, 33.340286>,  <39.249897, 38.509342, 33.208141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352432, 38.145992, 33.340286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264406, -0.262852, -0.927900,
		0.929721, 0.325204, 0.172802,
		0.256335, -0.908378, 0.330364,
		39.429333, 37.873478, 33.439396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988979, 38.380749, 33.047215>,  <39.249897, 38.509342, 33.208141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988979, 38.380749, 33.047215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748589, 38.061539, 33.065010>,  <39.604355, 37.870014, 33.075687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748589, 38.061539, 33.065010>,  <39.988979, 38.380749, 33.047215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748589, 38.061539, 33.065010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123663, -0.147827, -0.981252,
		0.789639, -0.584212, 0.187527,
		-0.600980, -0.798025, 0.044484,
		39.568295, 37.822132, 33.078354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109921, 38.246361, 32.439487>,  <39.988979, 38.380749, 33.047215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109921, 38.246361, 32.439487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865005, 37.951878, 32.554798>,  <39.718056, 37.775188, 32.623985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865005, 37.951878, 32.554798>,  <40.109921, 38.246361, 32.439487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865005, 37.951878, 32.554798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105055, -0.437139, -0.893237,
		0.783624, -0.516633, 0.344997,
		-0.612288, -0.736206, 0.288278,
		39.681320, 37.731014, 32.641281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465824, 37.676746, 32.280556>,  <40.109921, 38.246361, 32.439487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465824, 37.676746, 32.280556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072845, 37.602287, 32.275719>,  <39.837059, 37.557613, 32.272816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072845, 37.602287, 32.275719>,  <40.465824, 37.676746, 32.280556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072845, 37.602287, 32.275719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111423, -0.533611, -0.838358,
		0.149605, -0.824990, 0.544986,
		-0.982447, -0.186146, -0.012092,
		39.778111, 37.546444, 32.272091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455864, 37.019733, 31.990768>,  <40.465824, 37.676746, 32.280556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455864, 37.019733, 31.990768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.080612, 37.157269, 31.974373>,  <39.855461, 37.239788, 31.964535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.080612, 37.157269, 31.974373>,  <40.455864, 37.019733, 31.990768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080612, 37.157269, 31.974373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126076, -0.449414, -0.884382,
		-0.322504, -0.824502, 0.464960,
		-0.938134, 0.343837, -0.040988,
		39.799171, 37.260422, 31.962076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122280, 36.405334, 31.661478>,  <40.455864, 37.019733, 31.990768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122280, 36.405334, 31.661478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.871944, 36.717159, 31.651655>,  <39.721745, 36.904255, 31.645761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.871944, 36.717159, 31.651655>,  <40.122280, 36.405334, 31.661478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871944, 36.717159, 31.651655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243401, -0.225125, -0.943438,
		-0.741001, -0.584462, 0.330639,
		-0.625839, 0.779566, -0.024559,
		39.684193, 36.951031, 31.644287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436886, 36.063427, 31.503262>,  <40.122280, 36.405334, 31.661478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436886, 36.063427, 31.503262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494514, 36.436161, 31.370037>,  <39.529091, 36.659801, 31.290102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494514, 36.436161, 31.370037>,  <39.436886, 36.063427, 31.503262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494514, 36.436161, 31.370037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145557, -0.312958, -0.938547,
		-0.978803, 0.183700, 0.090546,
		0.144074, 0.931832, -0.333064,
		39.537735, 36.715710, 31.270119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851196, 36.167179, 31.179714>,  <39.436886, 36.063427, 31.503262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851196, 36.167179, 31.179714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128540, 36.419720, 31.040783>,  <39.294949, 36.571243, 30.957424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128540, 36.419720, 31.040783>,  <38.851196, 36.167179, 31.179714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128540, 36.419720, 31.040783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103750, -0.564454, -0.818918,
		-0.713080, 0.531773, -0.456875,
		0.693363, 0.631355, -0.347330,
		39.336548, 36.609127, 30.936584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731747, 36.260891, 30.459585>,  <38.851196, 36.167179, 31.179714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731747, 36.260891, 30.459585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.112396, 36.357986, 30.534939>,  <39.340786, 36.416245, 30.580151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.112396, 36.357986, 30.534939>,  <38.731747, 36.260891, 30.459585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112396, 36.357986, 30.534939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295347, -0.553532, -0.778700,
		-0.084748, 0.796667, -0.598447,
		0.951624, 0.242743, 0.188382,
		39.397884, 36.430809, 30.591454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171589, 36.701366, 30.133665>,  <38.731747, 36.260891, 30.459585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171589, 36.701366, 30.133665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.861668, 36.732792, 29.882742>,  <37.675716, 36.751648, 29.732189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.861668, 36.732792, 29.882742>,  <38.171589, 36.701366, 30.133665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861668, 36.732792, 29.882742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531356, 0.456720, 0.713490,
		0.342560, 0.886134, -0.312120,
		-0.774799, 0.078566, -0.627306,
		37.629227, 36.756363, 29.694550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008278, 37.319103, 30.197235>,  <38.171589, 36.701366, 30.133665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008278, 37.319103, 30.197235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679031, 37.146847, 30.049168>,  <37.481483, 37.043495, 29.960327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679031, 37.146847, 30.049168>,  <38.008278, 37.319103, 30.197235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679031, 37.146847, 30.049168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551983, 0.453639, 0.699661,
		-0.133379, 0.780231, -0.611105,
		-0.823119, -0.430640, -0.370169,
		37.432095, 37.017654, 29.938116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529160, 37.845787, 30.302368>,  <38.008278, 37.319103, 30.197235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529160, 37.845787, 30.302368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282166, 37.544209, 30.212671>,  <37.133968, 37.363262, 30.158854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.282166, 37.544209, 30.212671>,  <37.529160, 37.845787, 30.302368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282166, 37.544209, 30.212671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656503, 0.336950, 0.674884,
		-0.433265, 0.563945, -0.703027,
		-0.617482, -0.753943, -0.224243,
		37.096920, 37.318024, 30.145399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860699, 38.143620, 29.972458>,  <37.529160, 37.845787, 30.302368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860699, 38.143620, 29.972458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830589, 37.789890, 30.156765>,  <36.812523, 37.577652, 30.267349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830589, 37.789890, 30.156765>,  <36.860699, 38.143620, 29.972458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830589, 37.789890, 30.156765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592480, 0.411333, 0.692656,
		-0.802060, -0.220859, -0.554906,
		-0.075272, -0.884323, 0.460768,
		36.808006, 37.524593, 30.294996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188251, 38.004642, 30.001541>,  <36.860699, 38.143620, 29.972458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188251, 38.004642, 30.001541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.350117, 37.771763, 30.283617>,  <36.447235, 37.632034, 30.452862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.350117, 37.771763, 30.283617>,  <36.188251, 38.004642, 30.001541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350117, 37.771763, 30.283617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804965, 0.139125, 0.576780,
		-0.433910, -0.801055, -0.412350,
		0.404664, -0.582198, 0.705190,
		36.471516, 37.597103, 30.495174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746849, 37.531010, 30.159056>,  <36.188251, 38.004642, 30.001541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746849, 37.531010, 30.159056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984768, 37.562336, 30.479076>,  <36.127518, 37.581131, 30.671089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984768, 37.562336, 30.479076>,  <35.746849, 37.531010, 30.159056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984768, 37.562336, 30.479076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784088, 0.275983, 0.555913,
		-0.177261, -0.957966, 0.225564,
		0.594798, 0.078320, 0.800051,
		36.163208, 37.585831, 30.719091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346161, 37.186733, 30.684668>,  <35.746849, 37.531010, 30.159056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346161, 37.186733, 30.684668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.616009, 37.381268, 30.906788>,  <35.777920, 37.497990, 31.040060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.616009, 37.381268, 30.906788>,  <35.346161, 37.186733, 30.684668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616009, 37.381268, 30.906788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722024, 0.278311, 0.633423,
		0.153509, -0.828264, 0.538900,
		0.674623, 0.486335, 0.555303,
		35.818398, 37.527168, 31.073380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222366, 37.046814, 31.431946>,  <35.346161, 37.186733, 30.684668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222366, 37.046814, 31.431946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450245, 37.374321, 31.460386>,  <35.586971, 37.570827, 31.477451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450245, 37.374321, 31.460386>,  <35.222366, 37.046814, 31.431946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450245, 37.374321, 31.460386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676646, 0.418182, 0.606031,
		0.466469, -0.393363, 0.792257,
		0.569698, 0.818773, 0.071099,
		35.621155, 37.619953, 31.481716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160046, 37.218971, 32.080952>,  <35.222366, 37.046814, 31.431946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160046, 37.218971, 32.080952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310791, 37.564896, 31.948238>,  <35.401237, 37.772449, 31.868612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310791, 37.564896, 31.948238>,  <35.160046, 37.218971, 32.080952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310791, 37.564896, 31.948238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505556, 0.492179, 0.708642,
		0.776134, -0.099331, 0.622695,
		0.376867, 0.864808, -0.331779,
		35.423851, 37.824337, 31.848705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320663, 37.510063, 32.684391>,  <35.160046, 37.218971, 32.080952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320663, 37.510063, 32.684391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297447, 37.819992, 32.432590>,  <35.283516, 38.005951, 32.281509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.297447, 37.819992, 32.432590>,  <35.320663, 37.510063, 32.684391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297447, 37.819992, 32.432590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522153, 0.513877, 0.680652,
		0.850875, 0.368204, 0.374751,
		-0.058043, 0.774827, -0.629503,
		35.280033, 38.052441, 32.243740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615627, 38.104809, 32.976021>,  <35.320663, 37.510063, 32.684391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615627, 38.104809, 32.976021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.398830, 38.280991, 32.689735>,  <35.268753, 38.386700, 32.517963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.398830, 38.280991, 32.689735>,  <35.615627, 38.104809, 32.976021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398830, 38.280991, 32.689735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433502, 0.583069, 0.687100,
		0.719948, 0.682664, -0.125080,
		-0.541989, 0.440454, -0.715715,
		35.236233, 38.413128, 32.475021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695389, 38.865875, 33.032501>,  <35.615627, 38.104809, 32.976021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695389, 38.865875, 33.032501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.358974, 38.806843, 32.824314>,  <35.157127, 38.771423, 32.699402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.358974, 38.806843, 32.824314>,  <35.695389, 38.865875, 33.032501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358974, 38.806843, 32.824314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459113, 0.703581, 0.542392,
		0.286145, 0.695122, -0.659489,
		-0.841033, -0.147577, -0.520466,
		35.106663, 38.762569, 32.668175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.964680, 35.842838, 26.980625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615108, 35.693874, 26.855680>,  <39.405365, 35.604496, 26.780714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615108, 35.693874, 26.855680>,  <39.964680, 35.842838, 26.980625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615108, 35.693874, 26.855680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485495, 0.637793, 0.597925,
		-0.023451, 0.674191, -0.738185,
		-0.873925, -0.372407, -0.312360,
		39.352932, 35.582153, 26.761972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554104, 36.390949, 26.796139>,  <39.964680, 35.842838, 26.980625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554104, 36.390949, 26.796139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328262, 36.077785, 26.900660>,  <39.192757, 35.889889, 26.963371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328262, 36.077785, 26.900660>,  <39.554104, 36.390949, 26.796139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328262, 36.077785, 26.900660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524617, 0.584822, 0.618676,
		-0.637182, 0.212222, -0.740919,
		-0.564602, -0.782908, 0.261303,
		39.158882, 35.842915, 26.979050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904102, 36.701591, 26.960749>,  <39.554104, 36.390949, 26.796139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904102, 36.701591, 26.960749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881523, 36.325478, 27.095022>,  <38.867977, 36.099812, 27.175587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881523, 36.325478, 27.095022>,  <38.904102, 36.701591, 26.960749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881523, 36.325478, 27.095022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623740, 0.295744, 0.723522,
		-0.779590, -0.168536, -0.603187,
		-0.056449, -0.940283, 0.335682,
		38.864590, 36.043392, 27.195726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084644, 36.520626, 27.083038>,  <38.904102, 36.701591, 26.960749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084644, 36.520626, 27.083038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317600, 36.298306, 27.320324>,  <38.457375, 36.164913, 27.462696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317600, 36.298306, 27.320324>,  <38.084644, 36.520626, 27.083038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317600, 36.298306, 27.320324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618001, 0.171355, 0.767276,
		-0.528104, -0.813463, -0.243691,
		0.582393, -0.555802, 0.593214,
		38.492317, 36.131565, 27.498287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588158, 36.090225, 27.439075>,  <38.084644, 36.520626, 27.083038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588158, 36.090225, 27.439075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928490, 36.100189, 27.649014>,  <38.132690, 36.106167, 27.774977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928490, 36.100189, 27.649014>,  <37.588158, 36.090225, 27.439075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928490, 36.100189, 27.649014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520122, 0.181625, 0.834557,
		-0.074537, -0.983052, 0.167489,
		0.850833, 0.024909, 0.524845,
		38.183739, 36.107662, 27.806467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357101, 35.896713, 28.026588>,  <37.588158, 36.090225, 27.439075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357101, 35.896713, 28.026588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719070, 36.029163, 28.133526>,  <37.936253, 36.108635, 28.197689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719070, 36.029163, 28.133526>,  <37.357101, 35.896713, 28.026588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719070, 36.029163, 28.133526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346433, 0.208278, 0.914661,
		0.247193, -0.920310, 0.303190,
		0.904920, 0.331133, 0.267341,
		37.990547, 36.128502, 28.213730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365051, 35.639458, 28.767546>,  <37.357101, 35.896713, 28.026588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365051, 35.639458, 28.767546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625141, 35.935242, 28.697790>,  <37.781193, 36.112713, 28.655937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625141, 35.935242, 28.697790>,  <37.365051, 35.639458, 28.767546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625141, 35.935242, 28.697790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288557, 0.452700, 0.843681,
		0.702815, -0.498257, 0.507731,
		0.650220, 0.739461, -0.174389,
		37.820206, 36.157082, 28.645473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886345, 35.664444, 29.351257>,  <37.365051, 35.639458, 28.767546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886345, 35.664444, 29.351257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838715, 36.011223, 29.157673>,  <37.810135, 36.219292, 29.041521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838715, 36.011223, 29.157673>,  <37.886345, 35.664444, 29.351257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838715, 36.011223, 29.157673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005674, 0.488017, 0.872816,
		0.992869, 0.101187, -0.063031,
		-0.119078, 0.866949, -0.483963,
		37.802990, 36.271309, 29.012484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377258, 36.160110, 29.680485>,  <37.886345, 35.664444, 29.351257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377258, 36.160110, 29.680485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061886, 36.337666, 29.510147>,  <37.872662, 36.444199, 29.407946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061886, 36.337666, 29.510147>,  <38.377258, 36.160110, 29.680485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061886, 36.337666, 29.510147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276799, 0.362213, 0.890047,
		0.549331, 0.819610, -0.162710,
		-0.788427, 0.443892, -0.425842,
		37.825359, 36.470833, 29.382395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074158, 36.438107, 29.632526>,  <38.377258, 36.160110, 29.680485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074158, 36.438107, 29.632526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357227, 36.362877, 29.904945>,  <39.527069, 36.317738, 30.068396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357227, 36.362877, 29.904945>,  <39.074158, 36.438107, 29.632526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357227, 36.362877, 29.904945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452801, -0.619224, -0.641508,
		0.542373, 0.762357, -0.353048,
		0.707675, -0.188076, 0.681046,
		39.569530, 36.306454, 30.109259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788429, 36.614788, 29.255659>,  <39.074158, 36.438107, 29.632526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788429, 36.614788, 29.255659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851715, 36.352127, 29.550623>,  <39.889687, 36.194530, 29.727600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851715, 36.352127, 29.550623>,  <39.788429, 36.614788, 29.255659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851715, 36.352127, 29.550623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370047, -0.652953, -0.660846,
		0.915441, 0.377433, 0.139685,
		0.158218, -0.656656, 0.737408,
		39.899181, 36.155128, 29.771845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527946, 36.425407, 29.171047>,  <39.788429, 36.614788, 29.255659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527946, 36.425407, 29.171047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397602, 36.142590, 29.422096>,  <40.319397, 35.972900, 29.572725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397602, 36.142590, 29.422096>,  <40.527946, 36.425407, 29.171047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397602, 36.142590, 29.422096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497677, -0.692715, -0.521980,
		0.803824, 0.142260, 0.577606,
		-0.325859, -0.707042, 0.627620,
		40.299843, 35.930477, 29.610382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125877, 36.025642, 29.288187>,  <40.527946, 36.425407, 29.171047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125877, 36.025642, 29.288187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821396, 35.795273, 29.407436>,  <40.638706, 35.657051, 29.478987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821396, 35.795273, 29.407436>,  <41.125877, 36.025642, 29.288187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821396, 35.795273, 29.407436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392804, -0.775237, -0.494684,
		0.516019, -0.259451, 0.816339,
		-0.761203, -0.575928, 0.298124,
		40.593037, 35.622494, 29.496874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405308, 35.394142, 29.565378>,  <41.125877, 36.025642, 29.288187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405308, 35.394142, 29.565378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043770, 35.320965, 29.410669>,  <40.826847, 35.277058, 29.317844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043770, 35.320965, 29.410669>,  <41.405308, 35.394142, 29.565378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043770, 35.320965, 29.410669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353560, -0.828443, -0.434370,
		-0.240952, -0.529351, 0.813468,
		-0.903846, -0.182947, -0.386772,
		40.772617, 35.266079, 29.294638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251255, 34.668903, 29.816574>,  <41.405308, 35.394142, 29.565378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251255, 34.668903, 29.816574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048630, 34.761833, 29.484449>,  <40.927055, 34.817593, 29.285175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048630, 34.761833, 29.484449>,  <41.251255, 34.668903, 29.816574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048630, 34.761833, 29.484449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267676, -0.873052, -0.407590,
		-0.819598, -0.428726, 0.380071,
		-0.506566, 0.232324, -0.830311,
		40.896660, 34.831532, 29.235355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388531, 34.114708, 29.420927>,  <41.251255, 34.668903, 29.816574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388531, 34.114708, 29.420927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166275, 34.313217, 29.154100>,  <41.032921, 34.432323, 28.994005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166275, 34.313217, 29.154100>,  <41.388531, 34.114708, 29.420927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166275, 34.313217, 29.154100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282422, -0.641954, -0.712834,
		-0.781984, -0.584476, 0.216539,
		-0.555643, 0.496269, -0.667066,
		40.999580, 34.462097, 28.953981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993862, 33.606075, 29.082428>,  <41.388531, 34.114708, 29.420927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993862, 33.606075, 29.082428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023575, 33.916409, 28.831806>,  <41.041401, 34.102608, 28.681433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023575, 33.916409, 28.831806>,  <40.993862, 33.606075, 29.082428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023575, 33.916409, 28.831806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108800, -0.630843, -0.768244,
		-0.991284, -0.011102, -0.131271,
		0.074283, 0.775831, -0.626553,
		41.045860, 34.149158, 28.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630508, 33.387119, 28.557491>,  <40.993862, 33.606075, 29.082428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630508, 33.387119, 28.557491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849808, 33.688568, 28.412451>,  <40.981388, 33.869438, 28.325426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849808, 33.688568, 28.412451>,  <40.630508, 33.387119, 28.557491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849808, 33.688568, 28.412451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207899, -0.542772, -0.813743,
		-0.810063, 0.370748, -0.454250,
		0.548248, 0.753621, -0.362601,
		41.014282, 33.914654, 28.303671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417034, 33.454811, 27.869562>,  <40.630508, 33.387119, 28.557491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417034, 33.454811, 27.869562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763115, 33.653343, 27.898090>,  <40.970764, 33.772461, 27.915207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763115, 33.653343, 27.898090>,  <40.417034, 33.454811, 27.869562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763115, 33.653343, 27.898090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339229, -0.474638, -0.812184,
		-0.369258, 0.726896, -0.579026,
		0.865201, 0.496327, 0.071321,
		41.022675, 33.802242, 27.919487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583630, 33.742409, 27.148369>,  <40.417034, 33.454811, 27.869562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583630, 33.742409, 27.148369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909950, 33.701321, 27.376024>,  <41.105743, 33.676670, 27.512617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909950, 33.701321, 27.376024>,  <40.583630, 33.742409, 27.148369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909950, 33.701321, 27.376024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501163, -0.365580, -0.784339,
		0.288631, 0.925095, -0.246762,
		0.815799, -0.102717, 0.569141,
		41.154690, 33.670506, 27.546766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127197, 33.854519, 26.628214>,  <40.583630, 33.742409, 27.148369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127197, 33.854519, 26.628214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292004, 33.682232, 26.949392>,  <41.390888, 33.578861, 27.142099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292004, 33.682232, 26.949392>,  <41.127197, 33.854519, 26.628214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292004, 33.682232, 26.949392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701431, -0.412530, -0.581217,
		0.581579, 0.802685, 0.132146,
		0.412020, -0.430715, 0.802948,
		41.415611, 33.553017, 27.190277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827595, 34.017776, 26.609934>,  <41.127197, 33.854519, 26.628214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827595, 34.017776, 26.609934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829536, 33.719013, 26.875898>,  <41.830704, 33.539757, 27.035477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829536, 33.719013, 26.875898>,  <41.827595, 34.017776, 26.609934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829536, 33.719013, 26.875898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652594, -0.501442, -0.568047,
		0.757692, 0.436677, 0.484991,
		0.004858, -0.746907, 0.664911,
		41.830994, 33.494942, 27.075371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522240, 33.791637, 26.598373>,  <41.827595, 34.017776, 26.609934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522240, 33.791637, 26.598373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309746, 33.491352, 26.755459>,  <42.182251, 33.311180, 26.849710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309746, 33.491352, 26.755459>,  <42.522240, 33.791637, 26.598373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309746, 33.491352, 26.755459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570144, -0.659635, -0.489712,
		0.626681, -0.036245, 0.778432,
		-0.531231, -0.750712, 0.392715,
		42.150375, 33.266140, 26.873274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.890957, 29.328159, 25.306242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049038, 29.695080, 25.286774>,  <36.143887, 29.915232, 25.275093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049038, 29.695080, 25.286774>,  <35.890957, 29.328159, 25.306242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049038, 29.695080, 25.286774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459995, 0.243485, 0.853885,
		0.795122, -0.315071, 0.518181,
		0.395204, 0.917303, -0.048669,
		36.167599, 29.970270, 25.272173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018410, 29.426922, 25.972113>,  <35.890957, 29.328159, 25.306242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018410, 29.426922, 25.972113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068485, 29.800032, 25.836903>,  <36.098530, 30.023897, 25.755775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068485, 29.800032, 25.836903>,  <36.018410, 29.426922, 25.972113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068485, 29.800032, 25.836903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169901, 0.355831, 0.918976,
		0.977476, -0.057618, 0.203027,
		0.125193, 0.932772, -0.338027,
		36.106045, 30.079863, 25.735495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465267, 29.788986, 26.539909>,  <36.018410, 29.426922, 25.972113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465267, 29.788986, 26.539909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277916, 30.044676, 26.295937>,  <36.165504, 30.198090, 26.149553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277916, 30.044676, 26.295937>,  <36.465267, 29.788986, 26.539909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277916, 30.044676, 26.295937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069588, 0.661500, 0.746710,
		0.880785, 0.392184, -0.265347,
		-0.468375, 0.639226, -0.609931,
		36.137405, 30.236444, 26.112957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778931, 30.413450, 26.770622>,  <36.465267, 29.788986, 26.539909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778931, 30.413450, 26.770622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449333, 30.510611, 26.565866>,  <36.251575, 30.568907, 26.443012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449333, 30.510611, 26.565866>,  <36.778931, 30.413450, 26.770622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449333, 30.510611, 26.565866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190067, 0.732602, 0.653582,
		0.533767, 0.635842, -0.557493,
		-0.823995, 0.242899, -0.511891,
		36.202133, 30.583481, 26.412298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738949, 31.184038, 26.700743>,  <36.778931, 30.413450, 26.770622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738949, 31.184038, 26.700743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.366184, 31.041248, 26.675108>,  <36.142525, 30.955574, 26.659727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.366184, 31.041248, 26.675108>,  <36.738949, 31.184038, 26.700743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366184, 31.041248, 26.675108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300724, 0.661774, 0.686746,
		-0.202742, 0.659259, -0.724067,
		-0.931912, -0.356976, -0.064085,
		36.086609, 30.934155, 26.655882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333023, 31.759617, 26.729525>,  <36.738949, 31.184038, 26.700743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333023, 31.759617, 26.729525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049030, 31.488924, 26.807459>,  <35.878635, 31.326509, 26.854219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049030, 31.488924, 26.807459>,  <36.333023, 31.759617, 26.729525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049030, 31.488924, 26.807459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323088, 0.558851, 0.763741,
		-0.625730, 0.479294, -0.615418,
		-0.709983, -0.676730, 0.194836,
		35.836037, 31.285906, 26.865910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660156, 32.179787, 26.815771>,  <36.333023, 31.759617, 26.729525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660156, 32.179787, 26.815771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607777, 31.822863, 26.988577>,  <35.576351, 31.608709, 27.092260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607777, 31.822863, 26.988577>,  <35.660156, 32.179787, 26.815771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607777, 31.822863, 26.988577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382953, 0.447471, 0.808156,
		-0.914439, -0.059617, -0.400308,
		-0.130947, -0.892309, 0.432016,
		35.568493, 31.555170, 27.118181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008202, 32.225044, 27.006804>,  <35.660156, 32.179787, 26.815771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008202, 32.225044, 27.006804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.183872, 31.944084, 27.230862>,  <35.289276, 31.775509, 27.365295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.183872, 31.944084, 27.230862>,  <35.008202, 32.225044, 27.006804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183872, 31.944084, 27.230862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338576, 0.448117, 0.827380,
		-0.832159, -0.553019, -0.041011,
		0.439179, -0.702397, 0.560144,
		35.315624, 31.733366, 27.398905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500404, 32.037010, 27.430658>,  <35.008202, 32.225044, 27.006804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500404, 32.037010, 27.430658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833424, 31.915180, 27.615742>,  <35.033234, 31.842081, 27.726791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833424, 31.915180, 27.615742>,  <34.500404, 32.037010, 27.430658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833424, 31.915180, 27.615742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384676, 0.283168, 0.878544,
		-0.398610, -0.909421, 0.118586,
		0.832547, -0.304580, 0.462706,
		35.083187, 31.823807, 27.754553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290607, 31.598318, 27.810411>,  <34.500404, 32.037010, 27.430658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290607, 31.598318, 27.810411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639324, 31.698257, 27.978964>,  <34.848553, 31.758221, 28.080095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639324, 31.698257, 27.978964>,  <34.290607, 31.598318, 27.810411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639324, 31.698257, 27.978964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486562, 0.341614, 0.804088,
		0.056951, -0.906022, 0.419382,
		0.871788, 0.249849, 0.421380,
		34.900860, 31.773212, 28.105377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242622, 31.298620, 28.510616>,  <34.290607, 31.598318, 27.810411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242622, 31.298620, 28.510616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508610, 31.597366, 28.510960>,  <34.668201, 31.776615, 28.511166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508610, 31.597366, 28.510960>,  <34.242622, 31.298620, 28.510616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508610, 31.597366, 28.510960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540652, 0.480577, 0.690465,
		0.515274, -0.459603, 0.723366,
		0.664973, 0.746867, 0.000857,
		34.708103, 31.821426, 28.511217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339100, 31.448303, 29.272713>,  <34.242622, 31.298620, 28.510616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339100, 31.448303, 29.272713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484653, 31.782833, 29.108686>,  <34.571983, 31.983551, 29.010271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484653, 31.782833, 29.108686>,  <34.339100, 31.448303, 29.272713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484653, 31.782833, 29.108686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264752, 0.514956, 0.815308,
		0.893027, -0.188107, 0.408800,
		0.363879, 0.836323, -0.410068,
		34.593819, 32.033730, 28.985666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778286, 31.709965, 29.821243>,  <34.339100, 31.448303, 29.272713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778286, 31.709965, 29.821243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.694054, 32.016281, 29.578188>,  <34.643513, 32.200069, 29.432356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.694054, 32.016281, 29.578188>,  <34.778286, 31.709965, 29.821243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694054, 32.016281, 29.578188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053719, 0.611570, 0.789364,
		0.976099, 0.198867, -0.087648,
		-0.210581, 0.765790, -0.607636,
		34.630878, 32.246017, 29.395897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200783, 32.341797, 30.106562>,  <34.778286, 31.709965, 29.821243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200783, 32.341797, 30.106562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908714, 32.483253, 29.872711>,  <34.733475, 32.568127, 29.732401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908714, 32.483253, 29.872711>,  <35.200783, 32.341797, 30.106562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908714, 32.483253, 29.872711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290375, 0.613915, 0.734023,
		0.618496, 0.705722, -0.345572,
		-0.730168, 0.353645, -0.584628,
		34.689663, 32.589348, 29.697323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927872, 32.518841, 30.185839>,  <35.200783, 32.341797, 30.106562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927872, 32.518841, 30.185839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132347, 32.315704, 30.463192>,  <36.255032, 32.193821, 30.629604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132347, 32.315704, 30.463192>,  <35.927872, 32.518841, 30.185839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132347, 32.315704, 30.463192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405863, -0.568506, -0.715595,
		0.757601, 0.647225, -0.084501,
		0.511190, -0.507840, 0.693385,
		36.285706, 32.163353, 30.671207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722378, 32.521263, 30.076382>,  <35.927872, 32.518841, 30.185839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722378, 32.521263, 30.076382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683384, 32.201504, 30.313517>,  <36.659988, 32.009647, 30.455797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683384, 32.201504, 30.313517>,  <36.722378, 32.521263, 30.076382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683384, 32.201504, 30.313517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528527, -0.546321, -0.649763,
		0.843301, 0.249989, 0.475762,
		-0.097485, -0.799399, 0.592839,
		36.654137, 31.961683, 30.491367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410343, 32.259827, 30.273603>,  <36.722378, 32.521263, 30.076382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410343, 32.259827, 30.273603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172142, 31.949835, 30.358255>,  <37.029221, 31.763840, 30.409046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172142, 31.949835, 30.358255>,  <37.410343, 32.259827, 30.273603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172142, 31.949835, 30.358255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573383, -0.594531, -0.563706,
		0.562681, -0.214342, 0.798403,
		-0.595501, -0.774978, 0.211631,
		36.993492, 31.717342, 30.421745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890648, 31.779377, 30.461788>,  <37.410343, 32.259827, 30.273603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890648, 31.779377, 30.461788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565308, 31.574602, 30.351236>,  <37.370106, 31.451738, 30.284904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565308, 31.574602, 30.351236>,  <37.890648, 31.779377, 30.461788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565308, 31.574602, 30.351236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561718, -0.567360, -0.602143,
		0.151450, -0.645000, 0.749024,
		-0.813348, -0.511935, -0.276382,
		37.321304, 31.421022, 30.268322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048599, 31.066195, 30.514168>,  <37.890648, 31.779377, 30.461788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048599, 31.066195, 30.514168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730137, 31.090862, 30.273392>,  <37.539059, 31.105663, 30.128925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730137, 31.090862, 30.273392>,  <38.048599, 31.066195, 30.514168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730137, 31.090862, 30.273392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465356, -0.573440, -0.674248,
		-0.386756, -0.816923, 0.427851,
		-0.796156, 0.061667, -0.601941,
		37.491291, 31.109362, 30.092810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893517, 30.366524, 30.239441>,  <38.048599, 31.066195, 30.514168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893517, 30.366524, 30.239441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738861, 30.630207, 29.981462>,  <37.646069, 30.788416, 29.826675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738861, 30.630207, 29.981462>,  <37.893517, 30.366524, 30.239441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738861, 30.630207, 29.981462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337167, -0.549878, -0.764167,
		-0.858386, -0.512913, -0.009657,
		-0.386641, 0.659207, -0.644945,
		37.622868, 30.827969, 29.787979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788437, 29.929560, 29.639057>,  <37.893517, 30.366524, 30.239441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788437, 29.929560, 29.639057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748844, 30.288198, 29.466400>,  <37.725086, 30.503382, 29.362806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748844, 30.288198, 29.466400>,  <37.788437, 29.929560, 29.639057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748844, 30.288198, 29.466400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307184, -0.385057, -0.870270,
		-0.946488, -0.218738, -0.237305,
		-0.098985, 0.896596, -0.431645,
		37.719151, 30.557177, 29.336906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515678, 29.800402, 29.063522>,  <37.788437, 29.929560, 29.639057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515678, 29.800402, 29.063522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674313, 30.164022, 29.012392>,  <37.769493, 30.382195, 28.981714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674313, 30.164022, 29.012392>,  <37.515678, 29.800402, 29.063522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674313, 30.164022, 29.012392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213788, -0.226878, -0.950169,
		-0.892755, 0.349498, -0.284322,
		0.396588, 0.909053, -0.127828,
		37.793289, 30.436739, 28.974043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202538, 30.125919, 28.487696>,  <37.515678, 29.800402, 29.063522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202538, 30.125919, 28.487696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560162, 30.302826, 28.516151>,  <37.774734, 30.408970, 28.533226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560162, 30.302826, 28.516151>,  <37.202538, 30.125919, 28.487696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560162, 30.302826, 28.516151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209915, -0.273352, -0.938730,
		-0.395721, 0.854213, -0.337230,
		0.894058, 0.442265, 0.071141,
		37.828381, 30.435505, 28.537493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171944, 30.530663, 27.894846>,  <37.202538, 30.125919, 28.487696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171944, 30.530663, 27.894846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552074, 30.480577, 28.008823>,  <37.780155, 30.450527, 28.077209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552074, 30.480577, 28.008823>,  <37.171944, 30.530663, 27.894846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552074, 30.480577, 28.008823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266303, -0.146766, -0.952650,
		0.161103, 0.981214, -0.106132,
		0.950331, -0.125211, 0.284945,
		37.837173, 30.443014, 28.094307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454891, 30.825769, 27.390253>,  <37.171944, 30.530663, 27.894846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454891, 30.825769, 27.390253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.749424, 30.608490, 27.551624>,  <37.926144, 30.478123, 27.648447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.749424, 30.608490, 27.551624>,  <37.454891, 30.825769, 27.390253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749424, 30.608490, 27.551624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381269, -0.159473, -0.910606,
		0.558975, 0.824320, 0.089680,
		0.736329, -0.543198, 0.403429,
		37.970322, 30.445530, 27.672653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094177, 30.845060, 26.881704>,  <37.454891, 30.825769, 27.390253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094177, 30.845060, 26.881704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216209, 30.557312, 27.131323>,  <38.289429, 30.384663, 27.281094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216209, 30.557312, 27.131323>,  <38.094177, 30.845060, 26.881704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216209, 30.557312, 27.131323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642438, -0.328261, -0.692473,
		0.702995, 0.612168, 0.362006,
		0.305078, -0.719371, 0.624046,
		38.307732, 30.341501, 27.318537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881252, 30.882206, 26.936560>,  <38.094177, 30.845060, 26.881704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881252, 30.882206, 26.936560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744820, 30.515232, 27.018507>,  <38.662960, 30.295048, 27.067675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744820, 30.515232, 27.018507>,  <38.881252, 30.882206, 26.936560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744820, 30.515232, 27.018507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586503, -0.378010, -0.716326,
		0.734626, -0.124171, 0.667013,
		-0.341084, -0.917437, 0.204869,
		38.642494, 30.240002, 27.079967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487812, 30.544622, 26.985273>,  <38.881252, 30.882206, 26.936560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487812, 30.544622, 26.985273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195312, 30.275383, 26.941059>,  <39.019814, 30.113840, 26.914532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195312, 30.275383, 26.941059>,  <39.487812, 30.544622, 26.985273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195312, 30.275383, 26.941059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457833, -0.364203, -0.811015,
		0.505636, -0.643657, 0.574489,
		-0.731246, -0.673099, -0.110533,
		38.975937, 30.073454, 26.907900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977757, 30.288427, 27.473629>,  <39.487812, 30.544622, 26.985273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977757, 30.288427, 27.473629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357803, 30.361784, 27.574545>,  <40.585831, 30.405798, 27.635094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357803, 30.361784, 27.574545>,  <39.977757, 30.288427, 27.473629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357803, 30.361784, 27.574545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311514, 0.517685, 0.796845,
		0.015527, -0.835686, 0.548989,
		0.950115, 0.183390, 0.252290,
		40.642838, 30.416801, 27.650232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070690, 30.153925, 28.195635>,  <39.977757, 30.288427, 27.473629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070690, 30.153925, 28.195635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358963, 30.416725, 28.107128>,  <40.531929, 30.574406, 28.054024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358963, 30.416725, 28.107128>,  <40.070690, 30.153925, 28.195635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358963, 30.416725, 28.107128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137372, 0.448176, 0.883328,
		0.679515, -0.606207, 0.413247,
		0.720686, 0.657002, -0.221266,
		40.575169, 30.613827, 28.040749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290764, 30.116686, 28.808273>,  <40.070690, 30.153925, 28.195635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290764, 30.116686, 28.808273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493214, 30.420755, 28.645313>,  <40.614685, 30.603197, 28.547537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493214, 30.420755, 28.645313>,  <40.290764, 30.116686, 28.808273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493214, 30.420755, 28.645313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152043, 0.543614, 0.825449,
		0.848951, -0.355840, 0.390717,
		0.506128, 0.760172, -0.407399,
		40.645050, 30.648808, 28.523094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841461, 30.416910, 29.316713>,  <40.290764, 30.116686, 28.808273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841461, 30.416910, 29.316713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751305, 30.731249, 29.086359>,  <40.697208, 30.919851, 28.948147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751305, 30.731249, 29.086359>,  <40.841461, 30.416910, 29.316713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751305, 30.731249, 29.086359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016431, 0.587947, 0.808732,
		0.974129, 0.191746, -0.119608,
		-0.225394, 0.785844, -0.575887,
		40.683685, 30.967003, 28.913593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308147, 30.973089, 29.619755>,  <40.841461, 30.416910, 29.316713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308147, 30.973089, 29.619755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.062805, 31.177950, 29.379257>,  <40.915600, 31.300867, 29.234959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.062805, 31.177950, 29.379257>,  <41.308147, 30.973089, 29.619755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062805, 31.177950, 29.379257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009724, 0.756301, 0.654152,
		0.789746, 0.407075, -0.458902,
		-0.613357, 0.512152, -0.601244,
		40.878799, 31.331594, 29.198883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507893, 31.727726, 29.564175>,  <41.308147, 30.973089, 29.619755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507893, 31.727726, 29.564175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.118488, 31.699059, 29.477322>,  <40.884846, 31.681858, 29.425209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.118488, 31.699059, 29.477322>,  <41.507893, 31.727726, 29.564175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118488, 31.699059, 29.477322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187394, 0.794207, 0.578030,
		0.131022, 0.603406, -0.786597,
		-0.973507, -0.071669, -0.217133,
		40.826435, 31.677557, 29.412182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297794, 32.330891, 29.415127>,  <41.507893, 31.727726, 29.564175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297794, 32.330891, 29.415127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.957432, 32.149872, 29.521828>,  <40.753216, 32.041260, 29.585848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.957432, 32.149872, 29.521828>,  <41.297794, 32.330891, 29.415127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957432, 32.149872, 29.521828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301058, 0.836231, 0.458348,
		-0.430490, 0.309704, -0.847798,
		-0.850907, -0.452551, 0.266750,
		40.702160, 32.014107, 29.601852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713100, 32.804340, 29.297604>,  <41.297794, 32.330891, 29.415127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713100, 32.804340, 29.297604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579872, 32.551170, 29.577166>,  <40.499935, 32.399269, 29.744904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579872, 32.551170, 29.577166>,  <40.713100, 32.804340, 29.297604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579872, 32.551170, 29.577166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445624, 0.758889, 0.474877,
		-0.830952, -0.153280, -0.534811,
		-0.333073, -0.632924, 0.698906,
		40.479950, 32.361294, 29.786837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048553, 33.052811, 29.389963>,  <40.713100, 32.804340, 29.297604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048553, 33.052811, 29.389963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153542, 32.824726, 29.701340>,  <40.216534, 32.687878, 29.888166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153542, 32.824726, 29.701340>,  <40.048553, 33.052811, 29.389963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153542, 32.824726, 29.701340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401392, 0.669100, 0.625451,
		-0.877494, -0.476621, -0.053261,
		0.262466, -0.570208, 0.778443,
		40.232281, 32.653664, 29.934874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493427, 33.101234, 29.832174>,  <40.048553, 33.052811, 29.389963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493427, 33.101234, 29.832174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.779778, 32.957180, 30.071445>,  <39.951588, 32.870747, 30.215008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.779778, 32.957180, 30.071445>,  <39.493427, 33.101234, 29.832174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779778, 32.957180, 30.071445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284508, 0.631908, 0.720935,
		-0.637631, -0.686289, 0.349907,
		0.715879, -0.360139, 0.598179,
		39.994541, 32.849140, 30.250898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214222, 32.865891, 30.535095>,  <39.493427, 33.101234, 29.832174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214222, 32.865891, 30.535095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602848, 32.893066, 30.625828>,  <39.836021, 32.909374, 30.680267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602848, 32.893066, 30.625828>,  <39.214222, 32.865891, 30.535095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602848, 32.893066, 30.625828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224550, 0.568331, 0.791566,
		-0.075134, -0.819990, 0.567425,
		0.971562, 0.067942, 0.226830,
		39.894318, 32.913448, 30.693876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365963, 32.570972, 31.274429>,  <39.214222, 32.865891, 30.535095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365963, 32.570972, 31.274429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665043, 32.821671, 31.186668>,  <39.844490, 32.972088, 31.134012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665043, 32.821671, 31.186668>,  <39.365963, 32.570972, 31.274429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665043, 32.821671, 31.186668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104594, 0.437441, 0.893143,
		0.655748, -0.644854, 0.392628,
		0.747699, 0.626744, -0.219403,
		39.889355, 33.009693, 31.120848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781860, 32.595234, 31.905893>,  <39.365963, 32.570972, 31.274429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781860, 32.595234, 31.905893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861927, 32.916901, 31.682020>,  <39.909969, 33.109901, 31.547697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861927, 32.916901, 31.682020>,  <39.781860, 32.595234, 31.905893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861927, 32.916901, 31.682020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070122, 0.581537, 0.810493,
		0.977249, -0.122989, 0.172796,
		0.200168, 0.804170, -0.559682,
		39.921978, 33.158150, 31.514116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210976, 33.032825, 32.291264>,  <39.781860, 32.595234, 31.905893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210976, 33.032825, 32.291264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053665, 33.260403, 32.002365>,  <39.959278, 33.396950, 31.829025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053665, 33.260403, 32.002365>,  <40.210976, 33.032825, 32.291264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053665, 33.260403, 32.002365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163500, 0.729750, 0.663877,
		0.904766, 0.379174, -0.193972,
		-0.393276, 0.568939, -0.722248,
		39.935684, 33.431084, 31.785690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.072479, 33.193054, 26.869398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.707504, 33.056080, 26.779774>,  <42.488522, 32.973896, 26.725998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.707504, 33.056080, 26.779774>,  <43.072479, 33.193054, 26.869398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707504, 33.056080, 26.779774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407250, -0.706098, -0.579287,
		0.040157, -0.619810, 0.783724,
		-0.912434, -0.342434, -0.224063,
		42.433773, 32.953350, 26.712555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084049, 32.470524, 26.913677>,  <43.072479, 33.193054, 26.869398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084049, 32.470524, 26.913677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.772018, 32.546059, 26.675077>,  <42.584801, 32.591381, 26.531918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.772018, 32.546059, 26.675077>,  <43.084049, 32.470524, 26.913677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772018, 32.546059, 26.675077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283246, -0.743497, -0.605792,
		-0.557893, -0.641523, 0.526501,
		-0.780081, 0.188837, -0.596500,
		42.537994, 32.602711, 26.496128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926479, 31.865856, 26.582876>,  <43.084049, 32.470524, 26.913677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926479, 31.865856, 26.582876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.727081, 32.124489, 26.351900>,  <42.607441, 32.279667, 26.213314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.727081, 32.124489, 26.351900>,  <42.926479, 31.865856, 26.582876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727081, 32.124489, 26.351900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245908, -0.533271, -0.809414,
		-0.831284, -0.545484, 0.106832,
		-0.498493, 0.646582, -0.577439,
		42.577534, 32.318462, 26.178669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368275, 31.599161, 26.286446>,  <42.926479, 31.865856, 26.582876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368275, 31.599161, 26.286446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.424698, 31.885506, 26.012907>,  <42.458553, 32.057312, 25.848783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.424698, 31.885506, 26.012907>,  <42.368275, 31.599161, 26.286446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424698, 31.885506, 26.012907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039630, -0.694281, -0.718612,
		-0.989208, 0.074265, -0.126303,
		0.141058, 0.715863, -0.683845,
		42.467014, 32.100266, 25.807755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916950, 31.462643, 25.684328>,  <42.368275, 31.599161, 26.286446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916950, 31.462643, 25.684328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.209316, 31.692368, 25.536856>,  <42.384735, 31.830202, 25.448372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.209316, 31.692368, 25.536856>,  <41.916950, 31.462643, 25.684328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209316, 31.692368, 25.536856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020125, -0.558121, -0.829515,
		-0.682169, 0.598887, -0.419499,
		0.730918, 0.574312, -0.368680,
		42.428593, 31.864660, 25.426252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793530, 31.506372, 24.980587>,  <41.916950, 31.462643, 25.684328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793530, 31.506372, 24.980587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.177513, 31.601770, 25.039379>,  <42.407902, 31.659008, 25.074654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.177513, 31.601770, 25.039379>,  <41.793530, 31.506372, 24.980587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177513, 31.601770, 25.039379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271666, -0.664369, -0.696284,
		-0.068410, 0.708332, -0.702556,
		0.959957, 0.238493, 0.146980,
		42.465500, 31.673319, 25.083473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064327, 31.613802, 24.289095>,  <41.793530, 31.506372, 24.980587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064327, 31.613802, 24.289095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376865, 31.549864, 24.530407>,  <42.564388, 31.511501, 24.675194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376865, 31.549864, 24.530407>,  <42.064327, 31.613802, 24.289095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376865, 31.549864, 24.530407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338202, -0.703960, -0.624548,
		0.524515, 0.692019, -0.495978,
		0.781348, -0.159844, 0.603279,
		42.611271, 31.501911, 24.711391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733242, 31.673342, 23.955715>,  <42.064327, 31.613802, 24.289095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733242, 31.673342, 23.955715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.844784, 31.445238, 24.264791>,  <42.911709, 31.308376, 24.450237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.844784, 31.445238, 24.264791>,  <42.733242, 31.673342, 23.955715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844784, 31.445238, 24.264791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326064, -0.700585, -0.634715,
		0.903285, 0.428938, -0.009420,
		0.278853, -0.570257, 0.772689,
		42.928440, 31.274160, 24.496597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320255, 31.422934, 23.765173>,  <42.733242, 31.673342, 23.955715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320255, 31.422934, 23.765173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.226986, 31.180305, 24.069201>,  <43.171024, 31.034729, 24.251617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.226986, 31.180305, 24.069201>,  <43.320255, 31.422934, 23.765173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226986, 31.180305, 24.069201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303902, -0.787918, -0.535564,
		0.923729, 0.106109, 0.368057,
		-0.233171, -0.606569, 0.760069,
		43.157036, 30.998335, 24.297222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765766, 30.959225, 23.685488>,  <43.320255, 31.422934, 23.765173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765766, 30.959225, 23.685488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.536697, 30.783306, 23.962219>,  <43.399258, 30.677755, 24.128258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.536697, 30.783306, 23.962219>,  <43.765766, 30.959225, 23.685488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536697, 30.783306, 23.962219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167900, -0.888947, -0.426125,
		0.802408, -0.127872, 0.582915,
		-0.572670, -0.439798, 0.691829,
		43.364895, 30.651367, 24.169767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097645, 30.354342, 23.869648>,  <43.765766, 30.959225, 23.685488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097645, 30.354342, 23.869648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.723618, 30.272741, 23.985600>,  <43.499203, 30.223782, 24.055170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.723618, 30.272741, 23.985600>,  <44.097645, 30.354342, 23.869648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723618, 30.272741, 23.985600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082738, -0.920813, -0.381126,
		0.344674, -0.332395, 0.877903,
		-0.935069, -0.204001, 0.289878,
		43.443096, 30.211540, 24.072563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146561, 29.661819, 24.236805>,  <44.097645, 30.354342, 23.869648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146561, 29.661819, 24.236805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.773754, 29.733833, 24.110992>,  <43.550068, 29.777040, 24.035505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.773754, 29.733833, 24.110992>,  <44.146561, 29.661819, 24.236805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773754, 29.733833, 24.110992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011470, -0.882104, -0.470916,
		-0.362227, -0.435295, 0.824202,
		-0.932019, 0.180032, -0.314529,
		43.494148, 29.787844, 24.016634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743282, 29.084141, 24.329777>,  <44.146561, 29.661819, 24.236805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743282, 29.084141, 24.329777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.615555, 29.305069, 24.021757>,  <43.538918, 29.437626, 23.836945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.615555, 29.305069, 24.021757>,  <43.743282, 29.084141, 24.329777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615555, 29.305069, 24.021757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134491, -0.777953, -0.613760,
		-0.938055, -0.299551, 0.174134,
		-0.319321, 0.552321, -0.770049,
		43.519760, 29.470766, 23.790743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328823, 28.689075, 23.927395>,  <43.743282, 29.084141, 24.329777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328823, 28.689075, 23.927395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.452576, 28.979618, 23.681894>,  <43.526825, 29.153944, 23.534594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.452576, 28.979618, 23.681894>,  <43.328823, 28.689075, 23.927395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452576, 28.979618, 23.681894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227192, -0.683183, -0.694007,
		-0.923401, 0.075272, -0.376384,
		0.309378, 0.726358, -0.613750,
		43.545387, 29.197525, 23.497768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185814, 27.899460, 23.889053>,  <43.328823, 28.689075, 23.927395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185814, 27.899460, 23.889053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.935726, 27.587479, 23.900232>,  <42.785675, 27.400290, 23.906940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.935726, 27.587479, 23.900232>,  <43.185814, 27.899460, 23.889053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935726, 27.587479, 23.900232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474533, 0.408333, 0.779796,
		-0.619615, 0.474279, -0.625409,
		-0.625216, -0.779951, 0.027948,
		42.748161, 27.353493, 23.908617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515125, 28.218920, 23.936842>,  <43.185814, 27.899460, 23.889053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515125, 28.218920, 23.936842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.473507, 27.848837, 24.082809>,  <42.448536, 27.626787, 24.170389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.473507, 27.848837, 24.082809>,  <42.515125, 28.218920, 23.936842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473507, 27.848837, 24.082809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353306, 0.377360, 0.856022,
		-0.929704, -0.039864, -0.366144,
		-0.104043, -0.925208, 0.364917,
		42.442295, 27.571274, 24.192286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873276, 28.155735, 24.241261>,  <42.515125, 28.218920, 23.936842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873276, 28.155735, 24.241261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101280, 27.876963, 24.415329>,  <42.238083, 27.709698, 24.519770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101280, 27.876963, 24.415329>,  <41.873276, 28.155735, 24.241261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101280, 27.876963, 24.415329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294329, 0.321293, 0.900078,
		-0.767113, -0.641135, -0.021988,
		0.570007, -0.696933, 0.435173,
		42.272282, 27.667883, 24.545881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492180, 27.804028, 24.678606>,  <41.873276, 28.155735, 24.241261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492180, 27.804028, 24.678606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.858360, 27.727699, 24.820330>,  <42.078068, 27.681902, 24.905365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.858360, 27.727699, 24.820330>,  <41.492180, 27.804028, 24.678606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858360, 27.727699, 24.820330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236148, 0.458184, 0.856914,
		-0.325856, -0.868133, 0.374383,
		0.915452, -0.190821, 0.354310,
		42.132996, 27.670454, 24.926622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419056, 27.634512, 25.369585>,  <41.492180, 27.804028, 24.678606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419056, 27.634512, 25.369585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.811890, 27.706419, 25.346947>,  <42.047588, 27.749563, 25.333363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.811890, 27.706419, 25.346947>,  <41.419056, 27.634512, 25.369585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811890, 27.706419, 25.346947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035622, 0.471949, 0.880906,
		0.185067, -0.863104, 0.469895,
		0.982080, 0.179765, -0.056596,
		42.106514, 27.760349, 25.329967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674118, 27.476763, 25.931831>,  <41.419056, 27.634512, 25.369585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674118, 27.476763, 25.931831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.955212, 27.732174, 25.806328>,  <42.123867, 27.885420, 25.731026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.955212, 27.732174, 25.806328>,  <41.674118, 27.476763, 25.931831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955212, 27.732174, 25.806328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144588, 0.559986, 0.815788,
		0.696604, -0.527917, 0.485846,
		0.702735, 0.638529, -0.313758,
		42.166031, 27.923733, 25.712200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091015, 27.706509, 26.549953>,  <41.674118, 27.476763, 25.931831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091015, 27.706509, 26.549953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.144936, 27.979998, 26.263079>,  <42.177288, 28.144091, 26.090954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.144936, 27.979998, 26.263079>,  <42.091015, 27.706509, 26.549953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144936, 27.979998, 26.263079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155467, 0.729421, 0.666164,
		0.978601, 0.021701, 0.204620,
		0.134798, 0.683721, -0.717186,
		42.185375, 28.185114, 26.047922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338562, 28.222593, 26.884592>,  <42.091015, 27.706509, 26.549953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338562, 28.222593, 26.884592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257683, 28.411758, 26.541553>,  <42.209156, 28.525257, 26.335732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257683, 28.411758, 26.541553>,  <42.338562, 28.222593, 26.884592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257683, 28.411758, 26.541553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259478, 0.818517, 0.512544,
		0.944345, 0.326162, -0.042792,
		-0.202198, 0.472914, -0.857594,
		42.197021, 28.553633, 26.284275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706806, 28.858915, 26.930183>,  <42.338562, 28.222593, 26.884592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706806, 28.858915, 26.930183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.377705, 28.863840, 26.702879>,  <42.180244, 28.866795, 26.566496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.377705, 28.863840, 26.702879>,  <42.706806, 28.858915, 26.930183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377705, 28.863840, 26.702879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267980, 0.873275, 0.406912,
		0.501258, 0.487072, -0.715193,
		-0.822756, 0.012310, -0.568262,
		42.130878, 28.867533, 26.532400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563034, 29.550976, 26.832951>,  <42.706806, 28.858915, 26.930183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563034, 29.550976, 26.832951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.231880, 29.406853, 26.661005>,  <42.033188, 29.320379, 26.557837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.231880, 29.406853, 26.661005>,  <42.563034, 29.550976, 26.832951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231880, 29.406853, 26.661005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521605, 0.776352, 0.353844,
		0.206234, 0.517162, -0.830669,
		-0.827886, -0.360307, -0.429865,
		41.983513, 29.298761, 26.532045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183773, 30.187428, 26.544971>,  <42.563034, 29.550976, 26.832951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183773, 30.187428, 26.544971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922142, 29.886566, 26.577074>,  <41.765163, 29.706049, 26.596334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922142, 29.886566, 26.577074>,  <42.183773, 30.187428, 26.544971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922142, 29.886566, 26.577074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659920, 0.619270, 0.425453,
		-0.369706, 0.225320, -0.901415,
		-0.654082, -0.752154, 0.080255,
		41.725918, 29.660919, 26.601151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550129, 30.423925, 26.264147>,  <42.183773, 30.187428, 26.544971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550129, 30.423925, 26.264147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.478035, 30.132536, 26.528522>,  <41.434780, 29.957703, 26.687147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.478035, 30.132536, 26.528522>,  <41.550129, 30.423925, 26.264147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478035, 30.132536, 26.528522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597073, 0.615013, 0.515036,
		-0.781677, -0.301802, -0.545799,
		-0.180235, -0.728474, 0.660939,
		41.423965, 29.913994, 26.726805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793285, 30.515419, 26.399641>,  <41.550129, 30.423925, 26.264147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793285, 30.515419, 26.399641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916679, 30.289753, 26.705990>,  <40.990715, 30.154354, 26.889799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916679, 30.289753, 26.705990>,  <40.793285, 30.515419, 26.399641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916679, 30.289753, 26.705990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484709, 0.599540, 0.636875,
		-0.818472, -0.567689, -0.088507,
		0.308483, -0.564164, 0.765870,
		41.009224, 30.120504, 26.935751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282013, 30.536604, 26.834988>,  <40.793285, 30.515419, 26.399641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282013, 30.536604, 26.834988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568623, 30.391981, 27.073606>,  <40.740589, 30.305208, 27.216778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568623, 30.391981, 27.073606>,  <40.282013, 30.536604, 26.834988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568623, 30.391981, 27.073606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354753, 0.547470, 0.757909,
		-0.600620, -0.754688, 0.264012,
		0.716524, -0.361556, 0.596549,
		40.783581, 30.283514, 27.252571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829205, 30.061300, 26.575293>,  <40.282013, 30.536604, 26.834988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829205, 30.061300, 26.575293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439171, 29.973461, 26.562687>,  <39.205151, 29.920757, 26.555124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439171, 29.973461, 26.562687>,  <39.829205, 30.061300, 26.575293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439171, 29.973461, 26.562687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162633, -0.610956, -0.774780,
		0.150888, -0.760598, 0.631446,
		-0.975081, -0.219599, -0.031513,
		39.146645, 29.907581, 26.553232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790287, 29.320778, 26.646341>,  <39.829205, 30.061300, 26.575293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790287, 29.320778, 26.646341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468655, 29.459240, 26.452999>,  <39.275677, 29.542316, 26.336994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468655, 29.459240, 26.452999>,  <39.790287, 29.320778, 26.646341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468655, 29.459240, 26.452999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157965, -0.659399, -0.735010,
		-0.573151, -0.667360, 0.475529,
		-0.804080, 0.346154, -0.483355,
		39.227428, 29.563086, 26.307993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440125, 28.752047, 26.505827>,  <39.790287, 29.320778, 26.646341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440125, 28.752047, 26.505827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.310863, 29.030409, 26.249300>,  <39.233307, 29.197426, 26.095385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.310863, 29.030409, 26.249300>,  <39.440125, 28.752047, 26.505827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310863, 29.030409, 26.249300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139130, -0.635376, -0.759566,
		-0.936062, -0.334685, 0.108504,
		-0.323156, 0.695905, -0.641316,
		39.213917, 29.239180, 26.056906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937565, 28.381178, 26.038483>,  <39.440125, 28.752047, 26.505827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937565, 28.381178, 26.038483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.041248, 28.709232, 25.834450>,  <39.103458, 28.906065, 25.712030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.041248, 28.709232, 25.834450>,  <38.937565, 28.381178, 26.038483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041248, 28.709232, 25.834450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008449, -0.526189, -0.850325,
		-0.965784, 0.224721, -0.129463,
		0.259208, 0.820137, -0.510084,
		39.119011, 28.955273, 25.681425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577095, 28.309753, 25.381662>,  <38.937565, 28.381178, 26.038483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577095, 28.309753, 25.381662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846985, 28.594839, 25.304947>,  <39.008919, 28.765890, 25.258919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846985, 28.594839, 25.304947>,  <38.577095, 28.309753, 25.381662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846985, 28.594839, 25.304947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218807, -0.441326, -0.870261,
		-0.704888, 0.545225, -0.453722,
		0.674727, 0.712714, -0.191786,
		39.049404, 28.808653, 25.247412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466198, 28.421864, 24.672850>,  <38.577095, 28.309753, 25.381662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466198, 28.421864, 24.672850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.827652, 28.566635, 24.764456>,  <39.044525, 28.653498, 24.819420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.827652, 28.566635, 24.764456>,  <38.466198, 28.421864, 24.672850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827652, 28.566635, 24.764456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377641, -0.421035, -0.824692,
		-0.202055, 0.831708, -0.517141,
		0.903638, 0.361927, 0.229015,
		39.098743, 28.675213, 24.833160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633148, 28.731588, 24.028616>,  <38.466198, 28.421864, 24.672850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633148, 28.731588, 24.028616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942406, 28.623648, 24.258200>,  <39.127960, 28.558884, 24.395950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942406, 28.623648, 24.258200>,  <38.633148, 28.731588, 24.028616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942406, 28.623648, 24.258200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318038, -0.618010, -0.718968,
		0.548728, 0.738406, -0.391986,
		0.773142, -0.269851, 0.573961,
		39.174347, 28.542692, 24.430387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676331, 29.377007, 23.565199>,  <38.633148, 28.731588, 24.028616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676331, 29.377007, 23.565199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336475, 29.373165, 23.354288>,  <38.132561, 29.370859, 23.227741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336475, 29.373165, 23.354288>,  <38.676331, 29.377007, 23.565199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336475, 29.373165, 23.354288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431004, 0.588792, 0.683783,
		0.303888, 0.808228, -0.504401,
		-0.849640, -0.009605, -0.527276,
		38.081585, 29.370283, 23.196106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438118, 30.147247, 23.593502>,  <38.676331, 29.377007, 23.565199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438118, 30.147247, 23.593502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155895, 29.877005, 23.507950>,  <37.986561, 29.714859, 23.456617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155895, 29.877005, 23.507950>,  <38.438118, 30.147247, 23.593502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155895, 29.877005, 23.507950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559568, 0.345951, 0.753128,
		-0.434825, 0.651058, -0.622135,
		-0.705558, -0.675605, -0.213883,
		37.944229, 29.674324, 23.443785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809093, 30.567003, 23.571165>,  <38.438118, 30.147247, 23.593502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809093, 30.567003, 23.571165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656670, 30.199015, 23.607931>,  <37.565216, 29.978222, 23.629990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656670, 30.199015, 23.607931>,  <37.809093, 30.567003, 23.571165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656670, 30.199015, 23.607931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532332, 0.299597, 0.791748,
		-0.755923, 0.252772, -0.603893,
		-0.381056, -0.919972, 0.091914,
		37.542355, 29.923023, 23.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072094, 30.593084, 23.554951>,  <37.809093, 30.567003, 23.571165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072094, 30.593084, 23.554951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136665, 30.238197, 23.727823>,  <37.175407, 30.025265, 23.831547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136665, 30.238197, 23.727823>,  <37.072094, 30.593084, 23.554951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136665, 30.238197, 23.727823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578622, 0.269668, 0.769724,
		-0.799460, -0.374328, -0.469832,
		0.161431, -0.887219, 0.432184,
		37.185093, 29.972033, 23.857479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508732, 30.413309, 23.715103>,  <37.072094, 30.593084, 23.554951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508732, 30.413309, 23.715103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.728668, 30.194744, 23.967804>,  <36.860630, 30.063604, 24.119425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.728668, 30.194744, 23.967804>,  <36.508732, 30.413309, 23.715103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728668, 30.194744, 23.967804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642380, 0.206800, 0.737958,
		-0.533877, -0.811582, -0.237298,
		0.549840, -0.546414, 0.631750,
		36.893620, 30.030821, 24.157330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991058, 29.932135, 24.017691>,  <36.508732, 30.413309, 23.715103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991058, 29.932135, 24.017691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.314274, 29.950184, 24.252653>,  <36.508202, 29.961014, 24.393631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.314274, 29.950184, 24.252653>,  <35.991058, 29.932135, 24.017691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314274, 29.950184, 24.252653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586823, 0.149887, 0.795722,
		-0.052139, -0.987673, 0.147593,
		0.808035, 0.045123, 0.587404,
		36.556683, 29.963720, 24.428875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756302, 29.613234, 24.641060>,  <35.991058, 29.932135, 24.017691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756302, 29.613234, 24.641060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085312, 29.803610, 24.765600>,  <36.282719, 29.917835, 24.840324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085312, 29.803610, 24.765600>,  <35.756302, 29.613234, 24.641060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085312, 29.803610, 24.765600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448438, 0.206018, 0.869747,
		0.349805, -0.855007, 0.382884,
		0.822521, 0.475942, 0.311351,
		36.332069, 29.946392, 24.859005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.312389, 31.400640, 21.495028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496490, 31.276806, 21.827850>,  <41.606953, 31.202505, 22.027544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.496490, 31.276806, 21.827850>,  <41.312389, 31.400640, 21.495028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496490, 31.276806, 21.827850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489550, 0.693351, 0.528777,
		-0.740611, -0.650707, 0.167560,
		0.460257, -0.309589, 0.832057,
		41.634567, 31.183929, 22.077467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749107, 31.333870, 21.872063>,  <41.312389, 31.400640, 21.495028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749107, 31.333870, 21.872063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.075340, 31.384031, 22.098019>,  <41.271080, 31.414129, 22.233593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.075340, 31.384031, 22.098019>,  <40.749107, 31.333870, 21.872063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075340, 31.384031, 22.098019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529041, 0.557066, 0.640151,
		-0.234403, -0.820945, 0.520676,
		0.815580, 0.125405, 0.564892,
		41.320015, 31.421654, 22.267487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492424, 31.419439, 22.549248>,  <40.749107, 31.333870, 21.872063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492424, 31.419439, 22.549248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867466, 31.545980, 22.606949>,  <41.092491, 31.621906, 22.641569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867466, 31.545980, 22.606949>,  <40.492424, 31.419439, 22.549248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867466, 31.545980, 22.606949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287056, 0.470234, 0.834553,
		0.196183, -0.823893, 0.531708,
		0.937609, 0.316355, 0.144252,
		41.148750, 31.640886, 22.650225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571850, 31.374168, 23.252283>,  <40.492424, 31.419439, 22.549248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571850, 31.374168, 23.252283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872501, 31.603836, 23.122429>,  <41.052891, 31.741636, 23.044518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872501, 31.603836, 23.122429>,  <40.571850, 31.374168, 23.252283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872501, 31.603836, 23.122429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118402, 0.601630, 0.789951,
		0.648878, -0.555308, 0.520183,
		0.751624, 0.574172, -0.324635,
		41.097988, 31.776087, 23.025040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097698, 31.542755, 23.869308>,  <40.571850, 31.374168, 23.252283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097698, 31.542755, 23.869308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.075516, 31.817842, 23.579765>,  <41.062206, 31.982895, 23.406040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.075516, 31.817842, 23.579765>,  <41.097698, 31.542755, 23.869308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075516, 31.817842, 23.579765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031268, 0.723421, 0.689699,
		0.997972, 0.060881, -0.018613,
		-0.055454, 0.687718, -0.723857,
		41.058880, 32.024158, 23.362608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546432, 32.163593, 24.036116>,  <41.097698, 31.542755, 23.869308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546432, 32.163593, 24.036116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.282600, 32.297817, 23.767088>,  <41.124302, 32.378353, 23.605671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.282600, 32.297817, 23.767088>,  <41.546432, 32.163593, 24.036116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282600, 32.297817, 23.767088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164861, 0.808434, 0.565027,
		0.733327, 0.483563, -0.477910,
		-0.659585, 0.335561, -0.672567,
		41.084724, 32.398487, 23.565317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704041, 32.847897, 24.185352>,  <41.546432, 32.163593, 24.036116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704041, 32.847897, 24.185352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.351582, 32.840237, 23.996368>,  <41.140106, 32.835640, 23.882978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.351582, 32.840237, 23.996368>,  <41.704041, 32.847897, 24.185352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351582, 32.840237, 23.996368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413103, 0.517331, 0.749476,
		0.230068, 0.855571, -0.463752,
		-0.881144, -0.019147, -0.472461,
		41.087238, 32.834492, 23.854630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480217, 33.513481, 24.201206>,  <41.704041, 32.847897, 24.185352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480217, 33.513481, 24.201206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156998, 33.288750, 24.130308>,  <40.963066, 33.153912, 24.087769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156998, 33.288750, 24.130308>,  <41.480217, 33.513481, 24.201206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156998, 33.288750, 24.130308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521816, 0.542919, 0.657988,
		-0.273443, 0.624174, -0.731871,
		-0.808045, -0.561824, -0.177246,
		40.914585, 33.120201, 24.077135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952396, 34.127155, 24.082071>,  <41.480217, 33.513481, 24.201206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952396, 34.127155, 24.082071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.779613, 33.784283, 24.194252>,  <40.675945, 33.578560, 24.261560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.779613, 33.784283, 24.194252>,  <40.952396, 34.127155, 24.082071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779613, 33.784283, 24.194252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658239, 0.512203, 0.551697,
		-0.616553, 0.053704, -0.785480,
		-0.431954, -0.857184, 0.280450,
		40.650028, 33.527126, 24.278387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277988, 34.281410, 23.973139>,  <40.952396, 34.127155, 24.082071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277988, 34.281410, 23.973139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244083, 33.943985, 24.185257>,  <40.223740, 33.741531, 24.312529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244083, 33.943985, 24.185257>,  <40.277988, 34.281410, 23.973139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244083, 33.943985, 24.185257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561622, 0.480064, 0.673884,
		-0.823040, -0.240704, -0.514458,
		-0.084766, -0.843564, 0.530296,
		40.218655, 33.690914, 24.344345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527641, 34.084896, 24.038179>,  <40.277988, 34.281410, 23.973139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527641, 34.084896, 24.038179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717125, 33.917927, 24.348370>,  <39.830814, 33.817745, 24.534483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717125, 33.917927, 24.348370>,  <39.527641, 34.084896, 24.038179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717125, 33.917927, 24.348370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555641, 0.541506, 0.630899,
		-0.683275, -0.729748, 0.024580,
		0.473707, -0.417420, 0.775475,
		39.859238, 33.792702, 24.581013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057785, 34.086597, 24.606421>,  <39.527641, 34.084896, 24.038179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057785, 34.086597, 24.606421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406155, 34.039028, 24.797142>,  <39.615177, 34.010487, 24.911575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406155, 34.039028, 24.797142>,  <39.057785, 34.086597, 24.606421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406155, 34.039028, 24.797142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362723, 0.499032, 0.787019,
		-0.331538, -0.858384, 0.391483,
		0.870927, -0.118927, 0.476804,
		39.667435, 34.003349, 24.940184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815735, 33.367989, 24.414171>,  <39.057785, 34.086597, 24.606421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815735, 33.367989, 24.414171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.456902, 33.194508, 24.380369>,  <38.241600, 33.090420, 24.360088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.456902, 33.194508, 24.380369>,  <38.815735, 33.367989, 24.414171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456902, 33.194508, 24.380369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316025, -0.496101, -0.808710,
		0.308814, -0.752188, 0.582105,
		-0.897085, -0.433701, -0.084507,
		38.187775, 33.064396, 24.355017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879215, 32.590862, 24.253923>,  <38.815735, 33.367989, 24.414171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879215, 32.590862, 24.253923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.529484, 32.724594, 24.113201>,  <38.319645, 32.804832, 24.028769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.529484, 32.724594, 24.113201>,  <38.879215, 32.590862, 24.253923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529484, 32.724594, 24.113201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204901, -0.402826, -0.892047,
		-0.439959, -0.852028, 0.283697,
		-0.874329, 0.334334, -0.351808,
		38.267185, 32.824894, 24.007660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547131, 31.979198, 24.032404>,  <38.879215, 32.590862, 24.253923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547131, 31.979198, 24.032404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.407940, 32.302528, 23.842447>,  <38.324425, 32.496525, 23.728474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.407940, 32.302528, 23.842447>,  <38.547131, 31.979198, 24.032404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407940, 32.302528, 23.842447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115798, -0.465611, -0.877381,
		-0.930324, -0.360301, 0.068420,
		-0.347978, 0.808325, -0.474891,
		38.303547, 32.545025, 23.699980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282864, 31.717573, 23.454554>,  <38.547131, 31.979198, 24.032404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282864, 31.717573, 23.454554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.277462, 32.095898, 23.324778>,  <38.274223, 32.322891, 23.246912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.277462, 32.095898, 23.324778>,  <38.282864, 31.717573, 23.454554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277462, 32.095898, 23.324778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057204, -0.324667, -0.944097,
		-0.998271, 0.005813, 0.058487,
		-0.013501, 0.945810, -0.324438,
		38.273411, 32.379642, 23.227446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686783, 31.796297, 22.997847>,  <38.282864, 31.717573, 23.454554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686783, 31.796297, 22.997847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953209, 32.081661, 22.910767>,  <38.113064, 32.252880, 22.858519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953209, 32.081661, 22.910767>,  <37.686783, 31.796297, 22.997847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953209, 32.081661, 22.910767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002356, -0.293880, -0.955839,
		-0.745886, 0.636143, -0.197425,
		0.666070, 0.713412, -0.217702,
		38.153030, 32.295685, 22.845455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546700, 31.932753, 22.346903>,  <37.686783, 31.796297, 22.997847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546700, 31.932753, 22.346903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.915138, 32.069958, 22.420572>,  <38.136200, 32.152283, 22.464775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.915138, 32.069958, 22.420572>,  <37.546700, 31.932753, 22.346903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915138, 32.069958, 22.420572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279341, -0.252739, -0.926332,
		-0.271196, 0.904690, -0.328616,
		0.921098, 0.343014, 0.184175,
		38.191467, 32.172863, 22.475824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760899, 32.401527, 21.773478>,  <37.546700, 31.932753, 22.346903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760899, 32.401527, 21.773478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105446, 32.299786, 21.949366>,  <38.312172, 32.238739, 22.054899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.105446, 32.299786, 21.949366>,  <37.760899, 32.401527, 21.773478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105446, 32.299786, 21.949366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319551, -0.401586, -0.858263,
		0.394888, 0.879791, -0.264633,
		0.861366, -0.254354, 0.439720,
		38.363857, 32.223480, 22.081282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306240, 32.651245, 21.325762>,  <37.760899, 32.401527, 21.773478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306240, 32.651245, 21.325762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460960, 32.349419, 21.537804>,  <38.553791, 32.168324, 21.665030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460960, 32.349419, 21.537804>,  <38.306240, 32.651245, 21.325762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460960, 32.349419, 21.537804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278630, -0.452351, -0.847198,
		0.879063, 0.475398, 0.035278,
		0.386798, -0.754570, 0.530105,
		38.577000, 32.123047, 21.696835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859364, 32.415554, 20.943871>,  <38.306240, 32.651245, 21.325762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859364, 32.415554, 20.943871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.848625, 32.104744, 21.195431>,  <38.842182, 31.918259, 21.346367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.848625, 32.104744, 21.195431>,  <38.859364, 32.415554, 20.943871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848625, 32.104744, 21.195431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193189, -0.621299, -0.759385,
		0.980794, 0.101113, 0.166789,
		-0.026842, -0.777023, 0.628900,
		38.840572, 31.871637, 21.384100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430920, 32.122597, 20.876192>,  <38.859364, 32.415554, 20.943871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430920, 32.122597, 20.876192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203514, 31.829165, 21.025139>,  <39.067070, 31.653105, 21.114506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203514, 31.829165, 21.025139>,  <39.430920, 32.122597, 20.876192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203514, 31.829165, 21.025139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345057, -0.623518, -0.701542,
		0.746813, -0.270348, 0.607604,
		-0.568512, -0.733578, 0.372366,
		39.032959, 31.609091, 21.136848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861702, 31.609650, 20.805046>,  <39.430920, 32.122597, 20.876192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861702, 31.609650, 20.805046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.507214, 31.427147, 20.837143>,  <39.294521, 31.317644, 20.856401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.507214, 31.427147, 20.837143>,  <39.861702, 31.609650, 20.805046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507214, 31.427147, 20.837143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244343, -0.607527, -0.755782,
		0.393582, -0.650184, 0.649888,
		-0.886222, -0.456258, 0.080244,
		39.241348, 31.290270, 20.861216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982323, 30.792526, 20.979794>,  <39.861702, 31.609650, 20.805046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982323, 30.792526, 20.979794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.623016, 30.840080, 20.810566>,  <39.407433, 30.868612, 20.709028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.623016, 30.840080, 20.810566>,  <39.982323, 30.792526, 20.979794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623016, 30.840080, 20.810566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221007, -0.709904, -0.668724,
		-0.379839, -0.694192, 0.611408,
		-0.898264, 0.118882, -0.423071,
		39.353539, 30.875746, 20.683645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851257, 30.253174, 20.593382>,  <39.982323, 30.792526, 20.979794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851257, 30.253174, 20.593382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548660, 30.457924, 20.430553>,  <39.367104, 30.580774, 20.332857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548660, 30.457924, 20.430553>,  <39.851257, 30.253174, 20.593382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548660, 30.457924, 20.430553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160139, -0.458503, -0.874145,
		-0.634096, -0.726470, 0.264882,
		-0.756490, 0.511874, -0.407072,
		39.321712, 30.611486, 20.308432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294189, 29.728979, 20.452856>,  <39.851257, 30.253174, 20.593382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294189, 29.728979, 20.452856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293995, 30.052809, 20.218048>,  <39.293877, 30.247107, 20.077164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293995, 30.052809, 20.218048>,  <39.294189, 29.728979, 20.452856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293995, 30.052809, 20.218048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012394, -0.586980, -0.809507,
		-0.999923, 0.006880, 0.010320,
		-0.000488, 0.809572, -0.587020,
		39.293850, 30.295681, 20.041943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536736, 29.739988, 20.359823>,  <39.294189, 29.728979, 20.452856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536736, 29.739988, 20.359823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754372, 29.412312, 20.432364>,  <38.884953, 29.215706, 20.475887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754372, 29.412312, 20.432364>,  <38.536736, 29.739988, 20.359823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754372, 29.412312, 20.432364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310488, 0.004216, 0.950568,
		-0.779463, -0.573503, -0.252055,
		0.544091, -0.819193, 0.181352,
		38.917599, 29.166553, 20.486769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079498, 29.198982, 20.462128>,  <38.536736, 29.739988, 20.359823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079498, 29.198982, 20.462128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415226, 29.045671, 20.616344>,  <38.616661, 28.953684, 20.708874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415226, 29.045671, 20.616344>,  <38.079498, 29.198982, 20.462128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415226, 29.045671, 20.616344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420380, -0.007891, 0.907314,
		-0.344712, -0.923599, -0.167746,
		0.839318, -0.383279, 0.385542,
		38.667023, 28.930687, 20.732008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839268, 28.506603, 20.744133>,  <38.079498, 29.198982, 20.462128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839268, 28.506603, 20.744133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185848, 28.619219, 20.909060>,  <38.393795, 28.686789, 21.008015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185848, 28.619219, 20.909060>,  <37.839268, 28.506603, 20.744133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185848, 28.619219, 20.909060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437879, 0.031769, 0.898473,
		0.239857, -0.959023, 0.150807,
		0.866447, 0.281540, 0.412316,
		38.445782, 28.703680, 21.032755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925350, 28.141724, 21.495714>,  <37.839268, 28.506603, 20.744133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925350, 28.141724, 21.495714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.155941, 28.465090, 21.543264>,  <38.294296, 28.659109, 21.571795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.155941, 28.465090, 21.543264>,  <37.925350, 28.141724, 21.495714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155941, 28.465090, 21.543264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283271, 0.061264, 0.957081,
		0.766439, -0.585412, 0.264319,
		0.576480, 0.808418, 0.118875,
		38.328884, 28.707615, 21.578926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277302, 28.070499, 22.096483>,  <37.925350, 28.141724, 21.495714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277302, 28.070499, 22.096483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291950, 28.463200, 22.021841>,  <38.300739, 28.698820, 21.977057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291950, 28.463200, 22.021841>,  <38.277302, 28.070499, 22.096483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291950, 28.463200, 22.021841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290382, 0.189127, 0.938035,
		0.956210, 0.019834, 0.292009,
		0.036622, 0.981752, -0.186605,
		38.302937, 28.757725, 21.965860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218727, 28.195854, 22.798254>,  <38.277302, 28.070499, 22.096483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218727, 28.195854, 22.798254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.207249, 28.557669, 22.628080>,  <38.200363, 28.774757, 22.525976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.207249, 28.557669, 22.628080>,  <38.218727, 28.195854, 22.798254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207249, 28.557669, 22.628080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375254, 0.384733, 0.843306,
		0.926478, 0.183844, 0.328390,
		-0.028695, 0.904534, -0.425435,
		38.198639, 28.829029, 22.500450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493107, 28.636999, 23.314430>,  <38.218727, 28.195854, 22.798254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493107, 28.636999, 23.314430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308109, 28.908607, 23.086384>,  <38.197109, 29.071571, 22.949556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308109, 28.908607, 23.086384>,  <38.493107, 28.636999, 23.314430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308109, 28.908607, 23.086384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344976, 0.454533, 0.821213,
		0.816757, 0.576482, 0.024027,
		-0.462493, 0.679020, -0.570116,
		38.169361, 29.112314, 22.915350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198597, 28.715460, 23.606127>,  <38.493107, 28.636999, 23.314430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198597, 28.715460, 23.606127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365040, 28.508598, 23.905300>,  <39.464905, 28.384481, 24.084805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365040, 28.508598, 23.905300>,  <39.198597, 28.715460, 23.606127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365040, 28.508598, 23.905300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408246, -0.628719, -0.661852,
		0.812519, 0.580744, -0.050491,
		0.416111, -0.517154, 0.747932,
		39.489872, 28.353453, 24.129681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925961, 28.664133, 23.471802>,  <39.198597, 28.715460, 23.606127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925961, 28.664133, 23.471802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.847027, 28.358662, 23.717682>,  <39.799667, 28.175379, 23.865210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.847027, 28.358662, 23.717682>,  <39.925961, 28.664133, 23.471802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847027, 28.358662, 23.717682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524100, -0.612085, -0.592176,
		0.828479, 0.205304, 0.521031,
		-0.197339, -0.763677, 0.614699,
		39.787827, 28.129559, 23.902092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532101, 28.280352, 23.583313>,  <39.925961, 28.664133, 23.471802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532101, 28.280352, 23.583313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.256947, 28.019699, 23.711184>,  <40.091854, 27.863308, 23.787907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.256947, 28.019699, 23.711184>,  <40.532101, 28.280352, 23.583313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256947, 28.019699, 23.711184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526411, -0.751126, -0.398373,
		0.499710, -0.105752, 0.859713,
		-0.687882, -0.651633, 0.319677,
		40.050583, 27.824209, 23.807087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915802, 27.792854, 23.821636>,  <40.532101, 28.280352, 23.583313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915802, 27.792854, 23.821636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.556030, 27.640127, 23.736551>,  <40.340168, 27.548491, 23.685501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.556030, 27.640127, 23.736551>,  <40.915802, 27.792854, 23.821636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556030, 27.640127, 23.736551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434489, -0.728259, -0.529961,
		0.047440, -0.569082, 0.820911,
		-0.899427, -0.381818, -0.212712,
		40.286201, 27.525581, 23.672737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081116, 27.121597, 23.819126>,  <40.915802, 27.792854, 23.821636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081116, 27.121597, 23.819126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718555, 27.096649, 23.652008>,  <40.501019, 27.081680, 23.551737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718555, 27.096649, 23.652008>,  <41.081116, 27.121597, 23.819126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718555, 27.096649, 23.652008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273131, -0.841018, -0.466999,
		-0.322244, -0.537400, 0.779333,
		-0.906398, -0.062372, -0.417794,
		40.446636, 27.077938, 23.526670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965347, 26.442835, 23.833103>,  <41.081116, 27.121597, 23.819126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965347, 26.442835, 23.833103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708408, 26.590137, 23.564247>,  <40.554245, 26.678518, 23.402933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708408, 26.590137, 23.564247>,  <40.965347, 26.442835, 23.833103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708408, 26.590137, 23.564247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258508, -0.721497, -0.642351,
		-0.721497, -0.586369, 0.368257,
		0.642351, -0.368257, 0.672139,
		40.515701, 26.700615, 23.362606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580597, 25.930967, 23.670929>,  <40.965347, 26.442835, 23.833103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580597, 25.930967, 23.670929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559807, 26.177105, 23.356312>,  <40.547333, 26.324787, 23.167542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559807, 26.177105, 23.356312>,  <40.580597, 25.930967, 23.670929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559807, 26.177105, 23.356312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334494, -0.731386, -0.594296,
		-0.940963, -0.293984, -0.167812,
		-0.051978, 0.615343, -0.786544,
		40.544212, 26.361708, 23.120348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419750, 25.447916, 23.263916>,  <40.580597, 25.930967, 23.670929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419750, 25.447916, 23.263916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.560307, 25.755856, 23.050802>,  <40.644638, 25.940619, 22.922934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.560307, 25.755856, 23.050802>,  <40.419750, 25.447916, 23.263916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560307, 25.755856, 23.050802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313650, -0.632988, -0.707778,
		-0.882128, 0.081596, -0.463888,
		0.351387, 0.769849, -0.532784,
		40.665722, 25.986811, 22.890966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167416, 25.469652, 22.505293>,  <40.419750, 25.447916, 23.263916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167416, 25.469652, 22.505293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511127, 25.674166, 22.511383>,  <40.717354, 25.796873, 22.515038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511127, 25.674166, 22.511383>,  <40.167416, 25.469652, 22.505293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511127, 25.674166, 22.511383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409580, -0.669910, -0.619246,
		-0.306411, 0.538339, -0.785050,
		0.859277, 0.511284, 0.015225,
		40.768909, 25.827551, 22.515951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.382092, 34.616215, 34.426594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759830, 34.692364, 34.533905>,  <34.986473, 34.738052, 34.598289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759830, 34.692364, 34.533905>,  <34.382092, 34.616215, 34.426594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759830, 34.692364, 34.533905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279181, -0.032474, -0.959689,
		-0.173987, 0.981174, -0.083816,
		0.944344, 0.190373, 0.268275,
		35.043133, 34.749477, 34.614388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617107, 34.989826, 33.896721>,  <34.382092, 34.616215, 34.426594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617107, 34.989826, 33.896721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943668, 34.827530, 34.061096>,  <35.139603, 34.730152, 34.159721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943668, 34.827530, 34.061096>,  <34.617107, 34.989826, 33.896721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943668, 34.827530, 34.061096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283134, -0.338969, -0.897182,
		0.503317, 0.848808, -0.161855,
		0.816399, -0.405740, 0.410935,
		35.188587, 34.705807, 34.184376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107830, 35.121273, 33.483562>,  <34.617107, 34.989826, 33.896721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107830, 35.121273, 33.483562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253872, 34.814209, 33.694241>,  <35.341496, 34.629971, 33.820648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253872, 34.814209, 33.694241>,  <35.107830, 35.121273, 33.483562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253872, 34.814209, 33.694241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450636, -0.349324, -0.821523,
		0.814633, 0.537286, 0.218395,
		0.365103, -0.767656, 0.526692,
		35.363403, 34.583912, 33.852249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835781, 34.999405, 33.228745>,  <35.107830, 35.121273, 33.483562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835781, 34.999405, 33.228745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752796, 34.649067, 33.403030>,  <35.703003, 34.438862, 33.507603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752796, 34.649067, 33.403030>,  <35.835781, 34.999405, 33.228745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752796, 34.649067, 33.403030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315434, -0.481513, -0.817708,
		0.925991, -0.032205, 0.376169,
		-0.207464, -0.875847, 0.435718,
		35.690556, 34.386314, 33.533745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380543, 34.672794, 32.987110>,  <35.835781, 34.999405, 33.228745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380543, 34.672794, 32.987110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109570, 34.400608, 33.098858>,  <35.946983, 34.237297, 33.165905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109570, 34.400608, 33.098858>,  <36.380543, 34.672794, 32.987110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109570, 34.400608, 33.098858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373364, -0.645317, -0.666458,
		0.633783, -0.347176, 0.691222,
		-0.677435, -0.680467, 0.279368,
		35.906338, 34.196468, 33.182667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704708, 34.056145, 33.330273>,  <36.380543, 34.672794, 32.987110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704708, 34.056145, 33.330273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346855, 33.941151, 33.193455>,  <36.132145, 33.872154, 33.111366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346855, 33.941151, 33.193455>,  <36.704708, 34.056145, 33.330273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346855, 33.941151, 33.193455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436674, -0.724681, -0.533061,
		-0.094625, -0.626253, 0.773856,
		-0.894629, -0.287482, -0.342041,
		36.078465, 33.854908, 33.090843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805386, 33.397625, 33.271484>,  <36.704708, 34.056145, 33.330273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805386, 33.397625, 33.271484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482071, 33.446705, 33.041138>,  <36.288082, 33.476154, 32.902931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482071, 33.446705, 33.041138>,  <36.805386, 33.397625, 33.271484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482071, 33.446705, 33.041138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368378, -0.657591, -0.657169,
		-0.459321, -0.743315, 0.486320,
		-0.808284, 0.122702, -0.575866,
		36.239586, 33.483517, 32.868378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533180, 32.773033, 33.047680>,  <36.805386, 33.397625, 33.271484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533180, 32.773033, 33.047680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303322, 32.976231, 32.791019>,  <36.165405, 33.098148, 32.637024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303322, 32.976231, 32.791019>,  <36.533180, 32.773033, 33.047680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303322, 32.976231, 32.791019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193665, -0.677360, -0.709702,
		-0.795156, -0.532095, 0.290863,
		-0.574648, 0.507994, -0.641656,
		36.130928, 33.128628, 32.598522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944736, 32.332420, 32.708088>,  <36.533180, 32.773033, 33.047680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944736, 32.332420, 32.708088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997707, 32.624245, 32.439701>,  <36.029491, 32.799339, 32.278667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997707, 32.624245, 32.439701>,  <35.944736, 32.332420, 32.708088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997707, 32.624245, 32.439701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026891, -0.679328, -0.733342,
		-0.990828, 0.079074, -0.109582,
		0.132430, 0.729562, -0.670970,
		36.037437, 32.843113, 32.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430389, 32.254261, 32.297077>,  <35.944736, 32.332420, 32.708088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430389, 32.254261, 32.297077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672970, 32.464085, 32.058060>,  <35.818516, 32.589981, 31.914650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672970, 32.464085, 32.058060>,  <35.430389, 32.254261, 32.297077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672970, 32.464085, 32.058060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045135, -0.773006, -0.632791,
		-0.793841, 0.356785, -0.492464,
		0.606448, 0.524563, -0.597541,
		35.854904, 32.621452, 31.878798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246441, 32.242081, 31.553360>,  <35.430389, 32.254261, 32.297077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246441, 32.242081, 31.553360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633785, 32.339123, 31.529997>,  <35.866192, 32.397350, 31.515980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633785, 32.339123, 31.529997>,  <35.246441, 32.242081, 31.553360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633785, 32.339123, 31.529997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077056, -0.513340, -0.854719,
		-0.237344, 0.823179, -0.515795,
		0.968365, 0.242607, -0.058407,
		35.924294, 32.411903, 31.512474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407093, 32.496040, 30.794891>,  <35.246441, 32.242081, 31.553360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407093, 32.496040, 30.794891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768368, 32.415951, 30.946766>,  <35.985134, 32.367897, 31.037891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768368, 32.415951, 30.946766>,  <35.407093, 32.496040, 30.794891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768368, 32.415951, 30.946766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239692, -0.498536, -0.833072,
		0.356091, 0.843428, -0.402278,
		0.903187, -0.200227, 0.379687,
		36.039326, 32.355881, 31.060673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134483, 33.121635, 30.302872>,  <35.407093, 32.496040, 30.794891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134483, 33.121635, 30.302872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784897, 33.021679, 30.136145>,  <34.575146, 32.961704, 30.036108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784897, 33.021679, 30.136145>,  <35.134483, 33.121635, 30.302872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784897, 33.021679, 30.136145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485032, 0.502176, 0.715935,
		0.030413, 0.827874, -0.560089,
		-0.873967, -0.249888, -0.416818,
		34.522705, 32.946712, 30.011099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794418, 33.755173, 30.224974>,  <35.134483, 33.121635, 30.302872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794418, 33.755173, 30.224974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503838, 33.480328, 30.220198>,  <34.329487, 33.315422, 30.217333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503838, 33.480328, 30.220198>,  <34.794418, 33.755173, 30.224974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503838, 33.480328, 30.220198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474294, 0.488729, 0.732250,
		-0.497301, 0.537609, -0.680932,
		-0.726455, -0.687110, -0.011939,
		34.285900, 33.274193, 30.216616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153824, 34.032673, 30.090206>,  <34.794418, 33.755173, 30.224974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153824, 34.032673, 30.090206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076065, 33.697960, 30.294952>,  <34.029408, 33.497131, 30.417801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076065, 33.697960, 30.294952>,  <34.153824, 34.032673, 30.090206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076065, 33.697960, 30.294952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491808, 0.534642, 0.687228,
		-0.848724, -0.118143, -0.515470,
		-0.194400, -0.836780, 0.511867,
		34.017746, 33.446926, 30.448513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466705, 34.120750, 30.375059>,  <34.153824, 34.032673, 30.090206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466705, 34.120750, 30.375059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573532, 33.803059, 30.593374>,  <33.637627, 33.612446, 30.724363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573532, 33.803059, 30.593374>,  <33.466705, 34.120750, 30.375059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573532, 33.803059, 30.593374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483426, 0.379528, 0.788833,
		-0.833653, -0.474515, -0.282591,
		0.267062, -0.794225, 0.545787,
		33.653652, 33.564793, 30.757111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869656, 34.005905, 30.649786>,  <33.466705, 34.120750, 30.375059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869656, 34.005905, 30.649786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164227, 33.852367, 30.872618>,  <33.340969, 33.760246, 31.006317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164227, 33.852367, 30.872618>,  <32.869656, 34.005905, 30.649786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164227, 33.852367, 30.872618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442985, 0.348759, 0.825912,
		-0.511308, -0.855003, 0.086799,
		0.736429, -0.383845, 0.557077,
		33.385155, 33.737213, 31.039742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574154, 33.649456, 31.183559>,  <32.869656, 34.005905, 30.649786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574154, 33.649456, 31.183559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947083, 33.748817, 31.288681>,  <33.170841, 33.808434, 31.351753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947083, 33.748817, 31.288681>,  <32.574154, 33.649456, 31.183559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947083, 33.748817, 31.288681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357285, 0.520548, 0.775485,
		0.055831, -0.816900, 0.574070,
		0.932325, 0.248402, 0.262804,
		33.226780, 33.823338, 31.367521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532814, 33.825165, 31.902315>,  <32.574154, 33.649456, 31.183559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532814, 33.825165, 31.902315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908276, 33.954193, 31.853529>,  <33.133553, 34.031609, 31.824257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908276, 33.954193, 31.853529>,  <32.532814, 33.825165, 31.902315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908276, 33.954193, 31.853529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098122, 0.588864, 0.802254,
		0.330605, -0.741072, 0.584391,
		0.938655, 0.322571, -0.121966,
		33.189873, 34.050964, 31.816938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839268, 33.782696, 32.581329>,  <32.532814, 33.825165, 31.902315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839268, 33.782696, 32.581329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035931, 34.048244, 32.355927>,  <33.153927, 34.207573, 32.220684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035931, 34.048244, 32.355927>,  <32.839268, 33.782696, 32.581329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035931, 34.048244, 32.355927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136646, 0.697927, 0.703012,
		0.860002, -0.268639, 0.433855,
		0.491656, 0.663876, -0.563510,
		33.183426, 34.247406, 32.186874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409863, 34.021168, 32.983723>,  <32.839268, 33.782696, 32.581329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409863, 34.021168, 32.983723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301163, 34.287743, 32.706017>,  <33.235943, 34.447689, 32.539391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301163, 34.287743, 32.706017>,  <33.409863, 34.021168, 32.983723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301163, 34.287743, 32.706017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000782, 0.721571, 0.692340,
		0.962367, 0.187601, -0.196610,
		-0.271752, 0.666439, -0.694269,
		33.219639, 34.487675, 32.497734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663372, 34.628265, 33.324085>,  <33.409863, 34.021168, 32.983723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663372, 34.628265, 33.324085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413124, 34.758858, 33.040676>,  <33.262974, 34.837212, 32.870628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413124, 34.758858, 33.040676>,  <33.663372, 34.628265, 33.324085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413124, 34.758858, 33.040676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157487, 0.836666, 0.524583,
		0.764064, 0.439775, -0.472021,
		-0.625622, 0.326478, -0.708526,
		33.225437, 34.856800, 32.828117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900101, 35.351028, 32.961746>,  <33.663372, 34.628265, 33.324085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900101, 35.351028, 32.961746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502766, 35.305920, 32.952263>,  <33.264366, 35.278854, 32.946571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502766, 35.305920, 32.952263>,  <33.900101, 35.351028, 32.961746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502766, 35.305920, 32.952263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108381, 0.844338, 0.524736,
		-0.039159, 0.523809, -0.850935,
		-0.993338, -0.112774, -0.023707,
		33.204765, 35.272087, 32.945152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694843, 36.000172, 33.003971>,  <33.900101, 35.351028, 32.961746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694843, 36.000172, 33.003971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.343632, 35.816383, 33.057571>,  <33.132904, 35.706112, 33.089729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.343632, 35.816383, 33.057571>,  <33.694843, 36.000172, 33.003971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343632, 35.816383, 33.057571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285530, 0.727556, 0.623807,
		-0.384111, 0.509459, -0.770006,
		-0.878027, -0.459471, 0.133996,
		33.080223, 35.678543, 33.097771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170723, 36.495903, 32.913937>,  <33.694843, 36.000172, 33.003971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170723, 36.495903, 32.913937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972561, 36.220013, 33.125160>,  <32.853664, 36.054478, 33.251896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972561, 36.220013, 33.125160>,  <33.170723, 36.495903, 32.913937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972561, 36.220013, 33.125160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324925, 0.710911, 0.623723,
		-0.805604, 0.137414, -0.576298,
		-0.495404, -0.689727, 0.528063,
		32.823940, 36.013096, 33.283581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585640, 36.771248, 33.122742>,  <33.170723, 36.495903, 32.913937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585640, 36.771248, 33.122742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.613766, 36.463013, 33.376118>,  <32.630642, 36.278072, 33.528141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.613766, 36.463013, 33.376118>,  <32.585640, 36.771248, 33.122742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613766, 36.463013, 33.376118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203772, 0.610523, 0.765336,
		-0.976490, -0.182891, -0.114096,
		0.070314, -0.770592, 0.633438,
		32.634861, 36.231834, 33.566151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879675, 37.301353, 32.922501>,  <32.585640, 36.771248, 33.122742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879675, 37.301353, 32.922501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896219, 37.626606, 32.690254>,  <31.906145, 37.821758, 32.550907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896219, 37.626606, 32.690254>,  <31.879675, 37.301353, 32.922501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896219, 37.626606, 32.690254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316791, -0.561799, -0.764215,
		-0.947593, -0.152326, -0.280827,
		0.041359, 0.813129, -0.580612,
		31.908627, 37.870544, 32.516071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719282, 37.048637, 32.237923>,  <31.879675, 37.301353, 32.922501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719282, 37.048637, 32.237923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910089, 37.396133, 32.184654>,  <32.024574, 37.604633, 32.152691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.910089, 37.396133, 32.184654>,  <31.719282, 37.048637, 32.237923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910089, 37.396133, 32.184654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448539, -0.370940, -0.813153,
		-0.755821, 0.328156, -0.566611,
		0.477019, 0.868745, -0.133174,
		32.053196, 37.656757, 32.144703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622444, 37.221100, 31.546928>,  <31.719282, 37.048637, 32.237923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622444, 37.221100, 31.546928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960100, 37.400364, 31.664631>,  <32.162693, 37.507923, 31.735252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960100, 37.400364, 31.664631>,  <31.622444, 37.221100, 31.546928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960100, 37.400364, 31.664631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486541, -0.409832, -0.771567,
		-0.225188, 0.794476, -0.564002,
		0.844138, 0.448157, 0.294256,
		32.213341, 37.534813, 31.752907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931976, 37.596329, 30.941532>,  <31.622444, 37.221100, 31.546928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931976, 37.596329, 30.941532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230461, 37.522118, 31.197266>,  <32.409554, 37.477592, 31.350706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230461, 37.522118, 31.197266>,  <31.931976, 37.596329, 30.941532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230461, 37.522118, 31.197266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602284, -0.220967, -0.767090,
		0.283587, 0.957473, -0.053149,
		0.746212, -0.185526, 0.639334,
		32.454323, 37.466461, 31.389067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507835, 37.857876, 30.600140>,  <31.931976, 37.596329, 30.941532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507835, 37.857876, 30.600140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668510, 37.609798, 30.869659>,  <32.764915, 37.460953, 31.031370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668510, 37.609798, 30.869659>,  <32.507835, 37.857876, 30.600140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668510, 37.609798, 30.869659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682437, -0.287918, -0.671851,
		0.610677, 0.729700, 0.307590,
		0.401689, -0.620195, 0.673799,
		32.789017, 37.423740, 31.071798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197460, 37.897079, 30.452284>,  <32.507835, 37.857876, 30.600140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197460, 37.897079, 30.452284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130951, 37.560131, 30.657324>,  <33.091045, 37.357960, 30.780348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130951, 37.560131, 30.657324>,  <33.197460, 37.897079, 30.452284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130951, 37.560131, 30.657324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594160, -0.500457, -0.629695,
		0.786974, 0.199867, 0.583716,
		-0.166270, -0.842375, 0.512600,
		33.081070, 37.307419, 30.811104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832733, 37.694828, 30.690144>,  <33.197460, 37.897079, 30.452284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832733, 37.694828, 30.690144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586792, 37.381531, 30.653301>,  <33.439228, 37.193554, 30.631197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586792, 37.381531, 30.653301>,  <33.832733, 37.694828, 30.690144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586792, 37.381531, 30.653301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547619, -0.339981, -0.764543,
		0.567510, -0.520521, 0.637958,
		-0.614855, -0.783244, -0.092104,
		33.402336, 37.146557, 30.625669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288555, 37.094070, 30.723892>,  <33.832733, 37.694828, 30.690144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288555, 37.094070, 30.723892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957748, 36.946365, 30.554331>,  <33.759266, 36.857742, 30.452593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957748, 36.946365, 30.554331>,  <34.288555, 37.094070, 30.723892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957748, 36.946365, 30.554331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553603, -0.403687, -0.728396,
		0.097845, -0.837068, 0.538279,
		-0.827013, -0.369263, -0.423905,
		33.709644, 36.835587, 30.427160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426361, 36.302525, 30.707891>,  <34.288555, 37.094070, 30.723892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426361, 36.302525, 30.707891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118500, 36.370239, 30.461647>,  <33.933784, 36.410870, 30.313900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118500, 36.370239, 30.461647>,  <34.426361, 36.302525, 30.707891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118500, 36.370239, 30.461647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449768, -0.540590, -0.710966,
		-0.453152, -0.824078, 0.339925,
		-0.769651, 0.169288, -0.615613,
		33.887604, 36.421024, 30.276964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475830, 35.772770, 30.333666>,  <34.426361, 36.302525, 30.707891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475830, 35.772770, 30.333666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234180, 36.006805, 30.117256>,  <34.089191, 36.147224, 29.987411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234180, 36.006805, 30.117256>,  <34.475830, 35.772770, 30.333666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234180, 36.006805, 30.117256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339987, -0.424787, -0.839026,
		-0.720723, -0.690817, 0.057703,
		-0.604125, 0.585087, -0.541023,
		34.052944, 36.182331, 29.954948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031372, 35.380806, 29.960020>,  <34.475830, 35.772770, 30.333666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031372, 35.380806, 29.960020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052692, 35.718704, 29.747015>,  <34.065483, 35.921444, 29.619211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052692, 35.718704, 29.747015>,  <34.031372, 35.380806, 29.960020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052692, 35.718704, 29.747015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165137, -0.533384, -0.829597,
		-0.984829, -0.043721, -0.167926,
		0.053298, 0.844742, -0.532513,
		34.068684, 35.972126, 29.587261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606213, 35.279053, 29.357141>,  <34.031372, 35.380806, 29.960020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606213, 35.279053, 29.357141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.857006, 35.579384, 29.274054>,  <34.007481, 35.759583, 29.224201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.857006, 35.579384, 29.274054>,  <33.606213, 35.279053, 29.357141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857006, 35.579384, 29.274054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201580, -0.413919, -0.887714,
		-0.752502, 0.514708, -0.410872,
		0.626982, 0.750830, -0.207720,
		34.045101, 35.804634, 29.211737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401760, 35.440613, 28.665022>,  <33.606213, 35.279053, 29.357141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401760, 35.440613, 28.665022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771755, 35.560860, 28.757990>,  <33.993752, 35.633007, 28.813770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771755, 35.560860, 28.757990>,  <33.401760, 35.440613, 28.665022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771755, 35.560860, 28.757990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344645, -0.406121, -0.846337,
		-0.160035, 0.862956, -0.479265,
		0.924991, 0.300620, 0.232420,
		34.049252, 35.651047, 28.827715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678493, 35.652523, 28.037437>,  <33.401760, 35.440613, 28.665022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678493, 35.652523, 28.037437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030010, 35.674351, 28.227066>,  <34.240921, 35.687447, 28.340843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030010, 35.674351, 28.227066>,  <33.678493, 35.652523, 28.037437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030010, 35.674351, 28.227066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433137, -0.508163, -0.744421,
		0.200282, 0.859530, -0.470207,
		0.878794, 0.054570, 0.474070,
		34.293648, 35.690723, 28.369287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030201, 35.827084, 27.537642>,  <33.678493, 35.652523, 28.037437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030201, 35.827084, 27.537642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297283, 35.702915, 27.808287>,  <34.457531, 35.628414, 27.970675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297283, 35.702915, 27.808287>,  <34.030201, 35.827084, 27.537642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297283, 35.702915, 27.808287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463558, -0.537797, -0.704193,
		0.582479, 0.783844, -0.215191,
		0.667706, -0.310424, 0.676613,
		34.497597, 35.609787, 28.011271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685200, 35.921387, 27.252571>,  <34.030201, 35.827084, 27.537642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685200, 35.921387, 27.252571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726082, 35.641693, 27.535589>,  <34.750610, 35.473877, 27.705400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726082, 35.641693, 27.535589>,  <34.685200, 35.921387, 27.252571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726082, 35.641693, 27.535589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634321, -0.502094, -0.587826,
		0.766284, 0.508888, 0.392226,
		0.102203, -0.699239, 0.707545,
		34.756744, 35.431923, 27.747852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341808, 35.804798, 27.269623>,  <34.685200, 35.921387, 27.252571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341808, 35.804798, 27.269623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186085, 35.470493, 27.424507>,  <35.092651, 35.269909, 27.517437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186085, 35.470493, 27.424507>,  <35.341808, 35.804798, 27.269623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186085, 35.470493, 27.424507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562278, -0.548595, -0.618778,
		0.729575, -0.023178, 0.683507,
		-0.389311, -0.835766, 0.387209,
		35.069290, 35.219765, 27.540670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888420, 35.361725, 27.355774>,  <35.341808, 35.804798, 27.269623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888420, 35.361725, 27.355774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579033, 35.110020, 27.386192>,  <35.393402, 34.958996, 27.404444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579033, 35.110020, 27.386192>,  <35.888420, 35.361725, 27.355774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579033, 35.110020, 27.386192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454697, -0.634439, -0.625090,
		0.441589, -0.448908, 0.776840,
		-0.773466, -0.629260, 0.076044,
		35.346992, 34.921242, 27.409006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157803, 34.771019, 27.603100>,  <35.888420, 35.361725, 27.355774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157803, 34.771019, 27.603100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816631, 34.685867, 27.412441>,  <35.611927, 34.634777, 27.298046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816631, 34.685867, 27.412441>,  <36.157803, 34.771019, 27.603100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816631, 34.685867, 27.412441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466754, -0.719888, -0.513714,
		-0.233773, -0.660639, 0.713377,
		-0.852931, -0.212879, -0.476646,
		35.560753, 34.622005, 27.269447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094810, 34.001503, 27.661367>,  <36.157803, 34.771019, 27.603100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094810, 34.001503, 27.661367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847584, 34.116146, 27.368561>,  <35.699249, 34.184933, 27.192877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847584, 34.116146, 27.368561>,  <36.094810, 34.001503, 27.661367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847584, 34.116146, 27.368561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399420, -0.687531, -0.606436,
		-0.677092, -0.667201, 0.310465,
		-0.618069, 0.286607, -0.732015,
		35.662163, 34.202129, 27.148956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809269, 33.320667, 27.267897>,  <36.094810, 34.001503, 27.661367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809269, 33.320667, 27.267897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785782, 33.624512, 27.008810>,  <35.771690, 33.806820, 26.853357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785782, 33.624512, 27.008810>,  <35.809269, 33.320667, 27.267897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785782, 33.624512, 27.008810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390087, -0.579790, -0.715316,
		-0.918904, -0.294669, -0.262270,
		-0.058720, 0.759614, -0.647717,
		35.768166, 33.852398, 26.814495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735249, 32.990959, 26.630667>,  <35.809269, 33.320667, 27.267897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735249, 32.990959, 26.630667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847797, 33.364151, 26.540888>,  <35.915329, 33.588066, 26.487020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847797, 33.364151, 26.540888>,  <35.735249, 32.990959, 26.630667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847797, 33.364151, 26.540888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399749, -0.326600, -0.856466,
		-0.872370, 0.151265, -0.464855,
		0.281375, 0.932980, -0.224447,
		35.932209, 33.644047, 26.473553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685257, 33.017117, 25.885029>,  <35.735249, 32.990959, 26.630667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685257, 33.017117, 25.885029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948200, 33.293232, 26.005945>,  <36.105968, 33.458900, 26.078495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948200, 33.293232, 26.005945>,  <35.685257, 33.017117, 25.885029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948200, 33.293232, 26.005945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576206, -0.201897, -0.791975,
		-0.485658, 0.694796, -0.530467,
		0.657361, 0.690287, 0.302293,
		36.145409, 33.500317, 26.096634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841438, 33.388447, 25.310898>,  <35.685257, 33.017117, 25.885029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841438, 33.388447, 25.310898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157413, 33.452744, 25.547594>,  <36.347000, 33.491322, 25.689611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157413, 33.452744, 25.547594>,  <35.841438, 33.388447, 25.310898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157413, 33.452744, 25.547594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612122, -0.149959, -0.776414,
		-0.036065, 0.975538, -0.216852,
		0.789941, 0.160741, 0.591740,
		36.394394, 33.500965, 25.725117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272087, 33.545616, 24.757858>,  <35.841438, 33.388447, 25.310898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272087, 33.545616, 24.757858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535069, 33.522156, 25.058342>,  <36.692856, 33.508080, 25.238632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535069, 33.522156, 25.058342>,  <36.272087, 33.545616, 24.757858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535069, 33.522156, 25.058342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750922, -0.031349, -0.659647,
		0.062240, 0.997786, 0.023434,
		0.657452, -0.058653, 0.751211,
		36.732304, 33.504559, 25.283705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909332, 34.097401, 24.652842>,  <36.272087, 33.545616, 24.757858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909332, 34.097401, 24.652842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037254, 33.785362, 24.867939>,  <37.114010, 33.598137, 24.996998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037254, 33.785362, 24.867939>,  <36.909332, 34.097401, 24.652842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037254, 33.785362, 24.867939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854546, -0.007650, -0.519319,
		0.409235, 0.625607, 0.664185,
		0.319808, -0.780100, 0.537741,
		37.133198, 33.551331, 25.029261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570362, 34.216690, 24.745386>,  <36.909332, 34.097401, 24.652842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570362, 34.216690, 24.745386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542042, 33.826664, 24.829508>,  <37.525047, 33.592648, 24.879982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542042, 33.826664, 24.829508>,  <37.570362, 34.216690, 24.745386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542042, 33.826664, 24.829508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753659, -0.190409, -0.629081,
		0.653441, 0.113957, 0.748350,
		-0.070804, -0.975068, 0.210306,
		37.520802, 33.534145, 24.892599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345284, 33.859993, 24.739082>,  <37.570362, 34.216690, 24.745386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345284, 33.859993, 24.739082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.097912, 33.545902, 24.726625>,  <37.949490, 33.357449, 24.719151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.097912, 33.545902, 24.726625>,  <38.345284, 33.859993, 24.739082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097912, 33.545902, 24.726625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546343, -0.401130, -0.735258,
		0.564849, -0.471720, 0.677071,
		-0.618430, -0.785223, -0.031143,
		37.912384, 33.310337, 24.717283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859322, 33.650661, 25.327835>,  <38.345284, 33.859993, 24.739082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859322, 33.650661, 25.327835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205688, 33.849854, 25.346569>,  <39.413509, 33.969368, 25.357809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205688, 33.849854, 25.346569>,  <38.859322, 33.650661, 25.327835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205688, 33.849854, 25.346569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308004, 0.457103, 0.834380,
		0.394097, -0.736934, 0.549196,
		0.865923, 0.497981, 0.046836,
		39.465466, 33.999249, 25.360619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179867, 33.621849, 25.967470>,  <38.859322, 33.650661, 25.327835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179867, 33.621849, 25.967470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.342525, 33.960880, 25.831091>,  <39.440121, 34.164299, 25.749264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.342525, 33.960880, 25.831091>,  <39.179867, 33.621849, 25.967470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342525, 33.960880, 25.831091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271034, 0.468320, 0.840962,
		0.872458, -0.249562, 0.420162,
		0.406642, 0.847582, -0.340950,
		39.464520, 34.215157, 25.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342480, 33.922592, 26.584408>,  <39.179867, 33.621849, 25.967470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342480, 33.922592, 26.584408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.386017, 34.210800, 26.310474>,  <39.412140, 34.383728, 26.146114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.386017, 34.210800, 26.310474>,  <39.342480, 33.922592, 26.584408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386017, 34.210800, 26.310474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238139, 0.687766, 0.685761,
		0.965113, 0.088444, 0.246444,
		0.108844, 0.720525, -0.684834,
		39.418671, 34.426956, 26.105024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599407, 34.430248, 26.954435>,  <39.342480, 33.922592, 26.584408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599407, 34.430248, 26.954435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.495823, 34.627712, 26.622353>,  <39.433674, 34.746189, 26.423103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.495823, 34.627712, 26.622353>,  <39.599407, 34.430248, 26.954435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495823, 34.627712, 26.622353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316932, 0.768509, 0.555831,
		0.912411, 0.407056, -0.042556,
		-0.258959, 0.493659, -0.830206,
		39.418137, 34.775810, 26.373291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017693, 35.049934, 26.997461>,  <39.599407, 34.430248, 26.954435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017693, 35.049934, 26.997461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697063, 35.109928, 26.765951>,  <39.504684, 35.145924, 26.627045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697063, 35.109928, 26.765951>,  <40.017693, 35.049934, 26.997461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697063, 35.109928, 26.765951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305403, 0.729500, 0.612012,
		0.514012, 0.667334, -0.538941,
		-0.801574, 0.149987, -0.578777,
		39.456593, 35.154922, 26.592318>
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
