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
	<23.940741, 35.185822, 34.720055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270334, 35.046032, 34.898457>,  <24.468090, 34.962158, 35.005497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270334, 35.046032, 34.898457>,  <23.940741, 35.185822, 34.720055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270334, 35.046032, 34.898457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011680, -0.776495, -0.630014,
		0.566490, 0.524332, -0.635739,
		0.823985, -0.349471, 0.446001,
		24.517530, 34.941189, 35.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595486, 35.070858, 34.310123>,  <23.940741, 35.185822, 34.720055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595486, 35.070858, 34.310123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625029, 34.784554, 34.587894>,  <24.642754, 34.612770, 34.754559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625029, 34.784554, 34.587894>,  <24.595486, 35.070858, 34.310123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625029, 34.784554, 34.587894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141971, -0.681690, -0.717735,
		0.987112, 0.151598, 0.051270,
		0.073857, -0.715763, 0.694427,
		24.647186, 34.569824, 34.796223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270693, 34.685780, 34.321316>,  <24.595486, 35.070858, 34.310123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270693, 34.685780, 34.321316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923725, 34.496830, 34.383862>,  <24.715546, 34.383461, 34.421387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923725, 34.496830, 34.383862>,  <25.270693, 34.685780, 34.321316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923725, 34.496830, 34.383862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154786, -0.554817, -0.817447,
		0.472892, -0.684866, 0.554376,
		-0.867418, -0.472374, 0.156361,
		24.663500, 34.355118, 34.430771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350769, 33.913036, 34.403786>,  <25.270693, 34.685780, 34.321316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350769, 33.913036, 34.403786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015503, 34.031647, 34.220680>,  <24.814344, 34.102814, 34.110817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015503, 34.031647, 34.220680>,  <25.350769, 33.913036, 34.403786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015503, 34.031647, 34.220680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203049, -0.609325, -0.766482,
		-0.506213, -0.735386, 0.450504,
		-0.838164, 0.296529, -0.457768,
		24.764053, 34.120605, 34.083351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747789, 33.435440, 34.852852>,  <25.350769, 33.913036, 34.403786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747789, 33.435440, 34.852852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866035, 33.069660, 34.963409>,  <25.936983, 32.850193, 35.029743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866035, 33.069660, 34.963409>,  <25.747789, 33.435440, 34.852852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866035, 33.069660, 34.963409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341700, 0.371398, 0.863311,
		-0.892105, -0.160766, 0.422259,
		0.295617, -0.914450, 0.276392,
		25.954721, 32.795326, 35.046326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318119, 33.588181, 35.344864>,  <25.747789, 33.435440, 34.852852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318119, 33.588181, 35.344864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083540, 33.270184, 35.406925>,  <25.942793, 33.079388, 35.444160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083540, 33.270184, 35.406925>,  <26.318119, 33.588181, 35.344864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083540, 33.270184, 35.406925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809960, -0.577151, 0.104214,
		0.006696, 0.186783, 0.982378,
		-0.586446, -0.794990, 0.155151,
		25.907606, 33.031685, 35.453472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280107, 33.313423, 36.056210>,  <26.318119, 33.588181, 35.344864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280107, 33.313423, 36.056210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660568, 33.337540, 36.177322>,  <26.888845, 33.352009, 36.249989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660568, 33.337540, 36.177322>,  <26.280107, 33.313423, 36.056210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660568, 33.337540, 36.177322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186946, 0.668004, -0.720293,
		-0.245688, 0.741711, 0.624101,
		0.951151, 0.060294, 0.302781,
		26.945913, 33.355629, 36.268158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473969, 34.030704, 36.024170>,  <26.280107, 33.313423, 36.056210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473969, 34.030704, 36.024170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817038, 33.827602, 35.991718>,  <27.022879, 33.705742, 35.972248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817038, 33.827602, 35.991718>,  <26.473969, 34.030704, 36.024170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817038, 33.827602, 35.991718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263353, 0.569277, -0.778825,
		0.441637, 0.646611, 0.621973,
		0.857672, -0.507756, -0.081127,
		27.074339, 33.675274, 35.967381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001463, 34.539539, 36.045612>,  <26.473969, 34.030704, 36.024170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001463, 34.539539, 36.045612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218287, 34.235615, 35.902023>,  <27.348381, 34.053261, 35.815868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218287, 34.235615, 35.902023>,  <27.001463, 34.539539, 36.045612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218287, 34.235615, 35.902023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337350, 0.587994, -0.735159,
		0.769655, 0.277399, 0.575048,
		0.542057, -0.759811, -0.358972,
		27.380903, 34.007671, 35.794331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588511, 34.871132, 35.776890>,  <27.001463, 34.539539, 36.045612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588511, 34.871132, 35.776890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582979, 34.520947, 35.583652>,  <27.579660, 34.310837, 35.467709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582979, 34.520947, 35.583652>,  <27.588511, 34.871132, 35.776890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582979, 34.520947, 35.583652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276270, 0.460987, -0.843307,
		0.960981, -0.145125, 0.235489,
		-0.013827, -0.875460, -0.483093,
		27.578831, 34.258308, 35.438725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212406, 34.856937, 35.320431>,  <27.588511, 34.871132, 35.776890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212406, 34.856937, 35.320431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950975, 34.593670, 35.170956>,  <27.794117, 34.435707, 35.081272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950975, 34.593670, 35.170956>,  <28.212406, 34.856937, 35.320431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950975, 34.593670, 35.170956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300218, 0.227784, -0.926274,
		0.694770, -0.717580, 0.048721,
		-0.653578, -0.658174, -0.373688,
		27.754902, 34.396217, 35.058849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598598, 34.513142, 34.716255>,  <28.212406, 34.856937, 35.320431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598598, 34.513142, 34.716255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205345, 34.454941, 34.671940>,  <27.969393, 34.420021, 34.645351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205345, 34.454941, 34.671940>,  <28.598598, 34.513142, 34.716255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205345, 34.454941, 34.671940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066739, 0.278565, -0.958096,
		0.170267, -0.949332, -0.264156,
		-0.983135, -0.145502, -0.110787,
		27.910404, 34.411289, 34.638702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491711, 33.932793, 34.239262>,  <28.598598, 34.513142, 34.716255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491711, 33.932793, 34.239262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171591, 34.172611, 34.236118>,  <27.979519, 34.316502, 34.234230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171591, 34.172611, 34.236118>,  <28.491711, 33.932793, 34.239262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171591, 34.172611, 34.236118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091792, 0.109552, -0.989734,
		-0.592530, -0.792806, -0.142708,
		-0.800301, 0.599547, -0.007860,
		27.931499, 34.352474, 34.233761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053696, 33.650097, 33.737740>,  <28.491711, 33.932793, 34.239262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053696, 33.650097, 33.737740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936504, 34.028908, 33.790356>,  <27.866190, 34.256195, 33.821926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936504, 34.028908, 33.790356>,  <28.053696, 33.650097, 33.737740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936504, 34.028908, 33.790356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088852, 0.163948, -0.982459,
		-0.951982, -0.276150, -0.132178,
		-0.292977, 0.947028, 0.131539,
		27.848612, 34.313015, 33.829819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635893, 33.736046, 33.075821>,  <28.053696, 33.650097, 33.737740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635893, 33.736046, 33.075821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677124, 34.105705, 33.222969>,  <27.701862, 34.327499, 33.311260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677124, 34.105705, 33.222969>,  <27.635893, 33.736046, 33.075821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677124, 34.105705, 33.222969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095198, 0.358981, -0.928477,
		-0.990107, 0.130728, -0.050973,
		0.103080, 0.924144, 0.367874,
		27.708048, 34.382950, 33.333332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212013, 34.186298, 32.612442>,  <27.635893, 33.736046, 33.075821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212013, 34.186298, 32.612442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446442, 34.431664, 32.824196>,  <27.587099, 34.578880, 32.951248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446442, 34.431664, 32.824196>,  <27.212013, 34.186298, 32.612442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446442, 34.431664, 32.824196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170283, 0.545517, -0.820619,
		-0.792165, 0.571085, 0.215257,
		0.586070, 0.613411, 0.529386,
		27.622263, 34.615688, 32.983013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961792, 34.777695, 32.426720>,  <27.212013, 34.186298, 32.612442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961792, 34.777695, 32.426720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343874, 34.803181, 32.542320>,  <27.573124, 34.818470, 32.611679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343874, 34.803181, 32.542320>,  <26.961792, 34.777695, 32.426720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343874, 34.803181, 32.542320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257213, 0.304244, -0.917211,
		-0.146363, 0.950461, 0.274229,
		0.955206, 0.063711, 0.289001,
		27.630436, 34.822292, 32.629021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211529, 35.354969, 31.999168>,  <26.961792, 34.777695, 32.426720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211529, 35.354969, 31.999168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543909, 35.176743, 32.132431>,  <27.743338, 35.069805, 32.212387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543909, 35.176743, 32.132431>,  <27.211529, 35.354969, 31.999168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543909, 35.176743, 32.132431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485642, 0.288754, -0.825090,
		0.271433, 0.847402, 0.456326,
		0.830949, -0.445568, 0.333156,
		27.793194, 35.043072, 32.232376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686586, 35.831017, 31.827538>,  <27.211529, 35.354969, 31.999168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686586, 35.831017, 31.827538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897051, 35.497101, 31.892378>,  <28.023329, 35.296749, 31.931282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897051, 35.497101, 31.892378>,  <27.686586, 35.831017, 31.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897051, 35.497101, 31.892378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629066, 0.253819, -0.734746,
		0.572215, 0.488568, 0.658689,
		0.526161, -0.834792, 0.162103,
		28.054899, 35.246662, 31.941010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381964, 35.966106, 31.832117>,  <27.686586, 35.831017, 31.827538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381964, 35.966106, 31.832117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373421, 35.581570, 31.722307>,  <28.368296, 35.350849, 31.656422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373421, 35.581570, 31.722307>,  <28.381964, 35.966106, 31.832117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373421, 35.581570, 31.722307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581934, 0.211326, -0.785299,
		0.812956, -0.176527, 0.554924,
		-0.021356, -0.961343, -0.274525,
		28.367014, 35.293167, 31.639950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122410, 35.646423, 31.889574>,  <28.381964, 35.966106, 31.832117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122410, 35.646423, 31.889574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920738, 35.407825, 31.639776>,  <28.799734, 35.264668, 31.489899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920738, 35.407825, 31.639776>,  <29.122410, 35.646423, 31.889574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920738, 35.407825, 31.639776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712496, 0.121318, -0.691109,
		0.488008, -0.793392, 0.363838,
		-0.504180, -0.596499, -0.624493,
		28.769484, 35.228874, 31.452429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644537, 35.351654, 31.554016>,  <29.122410, 35.646423, 31.889574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644537, 35.351654, 31.554016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306387, 35.311657, 31.344124>,  <29.103497, 35.287659, 31.218189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306387, 35.311657, 31.344124>,  <29.644537, 35.351654, 31.554016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306387, 35.311657, 31.344124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514746, 0.110006, -0.850256,
		0.142751, -0.988887, -0.041520,
		-0.845375, -0.100003, -0.524729,
		29.052774, 35.281658, 31.186705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984068, 35.307667, 31.024502>,  <29.644537, 35.351654, 31.554016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984068, 35.307667, 31.024502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609156, 35.294106, 30.885731>,  <29.384209, 35.285969, 30.802467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609156, 35.294106, 30.885731>,  <29.984068, 35.307667, 31.024502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609156, 35.294106, 30.885731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330837, 0.226955, -0.915990,
		0.109792, -0.973315, -0.201504,
		-0.937279, -0.033904, -0.346927,
		29.327972, 35.283936, 30.781652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820539, 34.806549, 30.527025>,  <29.984068, 35.307667, 31.024502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820539, 34.806549, 30.527025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531570, 35.070396, 30.444069>,  <29.358189, 35.228706, 30.394295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531570, 35.070396, 30.444069>,  <29.820539, 34.806549, 30.527025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531570, 35.070396, 30.444069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501638, 0.293545, -0.813751,
		-0.475886, -0.691906, -0.542952,
		-0.722420, 0.659619, -0.207392,
		29.314844, 35.268284, 30.381851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658749, 34.711784, 29.832693>,  <29.820539, 34.806549, 30.527025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658749, 34.711784, 29.832693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598953, 35.080070, 29.976885>,  <29.563076, 35.301041, 30.063400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598953, 35.080070, 29.976885>,  <29.658749, 34.711784, 29.832693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598953, 35.080070, 29.976885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582812, 0.376558, -0.720093,
		-0.798739, 0.102447, -0.592891,
		-0.149486, 0.920711, 0.360479,
		29.554108, 35.356285, 30.085028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536190, 35.218143, 29.224014>,  <29.658749, 34.711784, 29.832693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536190, 35.218143, 29.224014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661734, 35.418285, 29.546787>,  <29.737061, 35.538372, 29.740450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661734, 35.418285, 29.546787>,  <29.536190, 35.218143, 29.224014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661734, 35.418285, 29.546787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587797, 0.565035, -0.578990,
		-0.745644, 0.656034, -0.116764,
		0.313861, 0.500355, 0.806930,
		29.755892, 35.568390, 29.788866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381926, 35.952103, 29.078951>,  <29.536190, 35.218143, 29.224014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381926, 35.952103, 29.078951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683264, 35.877636, 29.331240>,  <29.864067, 35.832954, 29.482613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683264, 35.877636, 29.331240>,  <29.381926, 35.952103, 29.078951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683264, 35.877636, 29.331240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638456, 0.436924, -0.633617,
		-0.157618, 0.880022, 0.448016,
		0.753346, -0.186169, 0.630722,
		29.909267, 35.821785, 29.520456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219748, 35.660221, 28.434746>,  <29.381926, 35.952103, 29.078951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219748, 35.660221, 28.434746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399557, 35.660858, 28.077438>,  <29.507442, 35.661240, 27.863054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399557, 35.660858, 28.077438>,  <29.219748, 35.660221, 28.434746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399557, 35.660858, 28.077438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061835, -0.997655, 0.029336,
		-0.891126, -0.068422, -0.448568,
		0.449524, 0.001595, -0.893267,
		29.534414, 35.661335, 27.809458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904022, 35.090637, 28.094873>,  <29.219748, 35.660221, 28.434746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904022, 35.090637, 28.094873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269257, 35.156715, 27.945751>,  <29.488398, 35.196362, 27.856277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269257, 35.156715, 27.945751>,  <28.904022, 35.090637, 28.094873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269257, 35.156715, 27.945751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150564, -0.986241, -0.068253,
		-0.378950, 0.006190, -0.925397,
		0.913087, 0.165196, -0.372804,
		29.543182, 35.206276, 27.833910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146898, 34.439350, 27.816208>,  <28.904022, 35.090637, 28.094873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146898, 34.439350, 27.816208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487877, 34.648380, 27.809988>,  <29.692465, 34.773800, 27.806255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487877, 34.648380, 27.809988>,  <29.146898, 34.439350, 27.816208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487877, 34.648380, 27.809988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486726, -0.804119, -0.341308,
		-0.190865, 0.283379, -0.939823,
		0.852449, 0.522580, -0.015550,
		29.743612, 34.805153, 27.805323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495766, 34.265141, 27.121647>,  <29.146898, 34.439350, 27.816208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495766, 34.265141, 27.121647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733238, 34.384235, 27.420683>,  <29.875723, 34.455692, 27.600105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733238, 34.384235, 27.420683>,  <29.495766, 34.265141, 27.121647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733238, 34.384235, 27.420683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608331, -0.774205, -0.174756,
		0.526757, 0.558532, -0.640756,
		0.593684, 0.297738, 0.747591,
		29.911343, 34.473557, 27.644960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247936, 34.325756, 26.875788>,  <29.495766, 34.265141, 27.121647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247936, 34.325756, 26.875788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247185, 34.262436, 27.270744>,  <30.246735, 34.224445, 27.507717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247185, 34.262436, 27.270744>,  <30.247936, 34.325756, 26.875788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247185, 34.262436, 27.270744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781481, -0.616292, -0.097317,
		0.623926, 0.771444, 0.124866,
		-0.001879, -0.158299, 0.987389,
		30.246620, 34.214947, 27.566961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884272, 34.562672, 27.246183>,  <30.247936, 34.325756, 26.875788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884272, 34.562672, 27.246183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701311, 34.263733, 27.438953>,  <30.591536, 34.084370, 27.554615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701311, 34.263733, 27.438953>,  <30.884272, 34.562672, 27.246183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701311, 34.263733, 27.438953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837557, -0.544156, -0.048920,
		0.298802, 0.381262, 0.874847,
		-0.457402, -0.747351, 0.481923,
		30.564091, 34.039528, 27.583530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279060, 34.247448, 27.799723>,  <30.884272, 34.562672, 27.246183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279060, 34.247448, 27.799723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032732, 33.949711, 27.696404>,  <30.884935, 33.771069, 27.634413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032732, 33.949711, 27.696404>,  <31.279060, 34.247448, 27.799723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032732, 33.949711, 27.696404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765907, -0.642453, 0.025336,
		-0.184803, -0.182230, 0.965733,
		-0.615821, -0.744343, -0.258299,
		30.847986, 33.726406, 27.618914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175093, 33.741653, 28.308102>,  <31.279060, 34.247448, 27.799723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175093, 33.741653, 28.308102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145563, 33.562065, 27.951904>,  <31.127846, 33.454311, 27.738186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145563, 33.562065, 27.951904>,  <31.175093, 33.741653, 28.308102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145563, 33.562065, 27.951904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755375, -0.608170, 0.244004,
		-0.651121, -0.654643, 0.384037,
		-0.073825, -0.448968, -0.890493,
		31.123415, 33.427376, 27.684757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841362, 33.649395, 28.772232>,  <31.175093, 33.741653, 28.308102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841362, 33.649395, 28.772232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512676, 33.461353, 28.901096>,  <31.315466, 33.348526, 28.978415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512676, 33.461353, 28.901096>,  <31.841362, 33.649395, 28.772232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512676, 33.461353, 28.901096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138591, 0.383490, 0.913087,
		-0.552795, 0.794944, -0.249966,
		-0.821712, -0.470107, 0.322163,
		31.266163, 33.320320, 28.997746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433338, 34.102787, 29.230673>,  <31.841362, 33.649395, 28.772232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433338, 34.102787, 29.230673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317228, 33.733898, 29.332846>,  <31.247562, 33.512566, 29.394150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317228, 33.733898, 29.332846>,  <31.433338, 34.102787, 29.230673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317228, 33.733898, 29.332846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067253, 0.285927, 0.955888,
		-0.954576, 0.260293, -0.145020,
		-0.290277, -0.922222, 0.255434,
		31.230145, 33.457233, 29.409475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987106, 34.256908, 29.738371>,  <31.433338, 34.102787, 29.230673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987106, 34.256908, 29.738371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056574, 33.872528, 29.824547>,  <31.098253, 33.641899, 29.876253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056574, 33.872528, 29.824547>,  <30.987106, 34.256908, 29.738371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056574, 33.872528, 29.824547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110641, 0.198342, 0.973868,
		-0.978569, -0.192966, -0.071875,
		0.173668, -0.960950, 0.215441,
		31.108675, 33.584244, 29.889179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482376, 34.065582, 30.221512>,  <30.987106, 34.256908, 29.738371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482376, 34.065582, 30.221512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769499, 33.789928, 30.261198>,  <30.941772, 33.624535, 30.285009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769499, 33.789928, 30.261198>,  <30.482376, 34.065582, 30.221512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769499, 33.789928, 30.261198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040969, 0.100446, 0.994099,
		-0.695036, -0.717635, 0.043868,
		0.717807, -0.689137, 0.099214,
		30.984840, 33.583187, 30.290962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280581, 33.650211, 30.705780>,  <30.482376, 34.065582, 30.221512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280581, 33.650211, 30.705780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663185, 33.534309, 30.692368>,  <30.892748, 33.464767, 30.684320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663185, 33.534309, 30.692368>,  <30.280581, 33.650211, 30.705780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663185, 33.534309, 30.692368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003582, -0.126621, 0.991945,
		-0.291672, -0.948687, -0.122153,
		0.956512, -0.289760, -0.033534,
		30.950138, 33.447384, 30.682308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276611, 33.077477, 31.076788>,  <30.280581, 33.650211, 30.705780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276611, 33.077477, 31.076788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669786, 33.150337, 31.087017>,  <30.905691, 33.194054, 31.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669786, 33.150337, 31.087017>,  <30.276611, 33.077477, 31.076788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669786, 33.150337, 31.087017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003274, -0.121687, 0.992563,
		0.183908, -0.975712, -0.119015,
		0.982938, 0.182151, 0.025574,
		30.964668, 33.204983, 31.094688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654236, 32.516262, 31.508209>,  <30.276611, 33.077477, 31.076788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654236, 32.516262, 31.508209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889946, 32.839237, 31.519522>,  <31.031372, 33.033024, 31.526310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889946, 32.839237, 31.519522>,  <30.654236, 32.516262, 31.508209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889946, 32.839237, 31.519522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186360, -0.169903, 0.967679,
		0.786145, -0.564959, -0.250594,
		0.589276, 0.807437, 0.028282,
		31.066729, 33.081467, 31.528006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312124, 32.291237, 31.865438>,  <30.654236, 32.516262, 31.508209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312124, 32.291237, 31.865438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253805, 32.685612, 31.898132>,  <31.218815, 32.922237, 31.917749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253805, 32.685612, 31.898132>,  <31.312124, 32.291237, 31.865438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253805, 32.685612, 31.898132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104393, -0.097490, 0.989746,
		0.983792, 0.135768, 0.117138,
		-0.145796, 0.985933, 0.081737,
		31.210066, 32.981392, 31.922653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627018, 32.443886, 32.483677>,  <31.312124, 32.291237, 31.865438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627018, 32.443886, 32.483677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419125, 32.778469, 32.414143>,  <31.294390, 32.979218, 32.372421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419125, 32.778469, 32.414143>,  <31.627018, 32.443886, 32.483677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419125, 32.778469, 32.414143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137996, 0.118611, 0.983305,
		0.843111, 0.535043, 0.053781,
		-0.519732, 0.836457, -0.173836,
		31.263205, 33.029408, 32.361992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909000, 32.843021, 32.908688>,  <31.627018, 32.443886, 32.483677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909000, 32.843021, 32.908688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552156, 32.997856, 32.815475>,  <31.338051, 33.090759, 32.759548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552156, 32.997856, 32.815475>,  <31.909000, 32.843021, 32.908688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552156, 32.997856, 32.815475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186287, 0.154767, 0.970229,
		0.411632, 0.908960, -0.065959,
		-0.892107, 0.387090, -0.233035,
		31.284525, 33.113983, 32.745564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916899, 33.464104, 33.161385>,  <31.909000, 32.843021, 32.908688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916899, 33.464104, 33.161385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521820, 33.410412, 33.129299>,  <31.284773, 33.378197, 33.110046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521820, 33.410412, 33.129299>,  <31.916899, 33.464104, 33.161385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521820, 33.410412, 33.129299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119007, 0.312501, 0.942433,
		-0.101440, 0.940385, -0.324631,
		-0.987698, -0.134234, -0.080212,
		31.225512, 33.370140, 33.105236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674006, 33.924564, 33.634174>,  <31.916899, 33.464104, 33.161385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674006, 33.924564, 33.634174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354458, 33.690102, 33.580173>,  <31.162729, 33.549423, 33.547771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354458, 33.690102, 33.580173>,  <31.674006, 33.924564, 33.634174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354458, 33.690102, 33.580173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321623, 0.226592, 0.919356,
		-0.508300, 0.777864, -0.369540,
		-0.798868, -0.586160, -0.135002,
		31.114798, 33.514252, 33.539673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925282, 34.237530, 33.701828>,  <31.674006, 33.924564, 33.634174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925282, 34.237530, 33.701828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838011, 33.853264, 33.770557>,  <30.785648, 33.622704, 33.811794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838011, 33.853264, 33.770557>,  <30.925282, 34.237530, 33.701828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838011, 33.853264, 33.770557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553683, 0.266834, 0.788819,
		-0.803638, 0.076964, -0.590120,
		-0.218175, -0.960664, 0.171824,
		30.772558, 33.565063, 33.822105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182178, 34.263977, 33.930225>,  <30.925282, 34.237530, 33.701828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182178, 34.263977, 33.930225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319471, 33.910027, 34.056198>,  <30.401848, 33.697655, 34.131783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319471, 33.910027, 34.056198>,  <30.182178, 34.263977, 33.930225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319471, 33.910027, 34.056198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472739, 0.126983, 0.872005,
		-0.811608, -0.448184, -0.374731,
		0.343234, -0.884877, 0.314934,
		30.422441, 33.644562, 34.150677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698708, 33.867943, 34.210625>,  <30.182178, 34.263977, 33.930225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698708, 33.867943, 34.210625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992819, 33.652813, 34.375599>,  <30.169287, 33.523735, 34.474583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992819, 33.652813, 34.375599>,  <29.698708, 33.867943, 34.210625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992819, 33.652813, 34.375599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553610, -0.125528, 0.823261,
		-0.391000, -0.833657, -0.390045,
		0.735279, -0.537828, 0.412439,
		30.213402, 33.491467, 34.499332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354256, 33.361565, 34.608997>,  <29.698708, 33.867943, 34.210625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354256, 33.361565, 34.608997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725388, 33.362263, 34.758198>,  <29.948067, 33.362682, 34.847717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725388, 33.362263, 34.758198>,  <29.354256, 33.361565, 34.608997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725388, 33.362263, 34.758198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373003, 0.001177, 0.927829,
		0.001177, -0.999998, 0.001742,
		-0.927829, -0.001742, -0.373001,
		30.003736, 33.362785, 34.870098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278784, 32.918835, 35.160583>,  <29.354256, 33.361565, 34.608997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278784, 32.918835, 35.160583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593164, 33.159016, 35.219559>,  <29.781794, 33.303123, 35.254944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593164, 33.159016, 35.219559>,  <29.278784, 32.918835, 35.160583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593164, 33.159016, 35.219559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371120, 0.267418, 0.889245,
		0.494519, -0.753623, 0.433017,
		0.785952, 0.600450, 0.147441,
		29.828951, 33.339149, 35.263790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359262, 32.991390, 35.873825>,  <29.278784, 32.918835, 35.160583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359262, 32.991390, 35.873825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600416, 33.298939, 35.788624>,  <29.745108, 33.483467, 35.737503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600416, 33.298939, 35.788624>,  <29.359262, 32.991390, 35.873825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600416, 33.298939, 35.788624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279829, 0.453797, 0.846028,
		0.747146, -0.450453, 0.488739,
		0.602884, 0.768870, -0.213003,
		29.781281, 33.529598, 35.724724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746323, 33.170422, 36.553448>,  <29.359262, 32.991390, 35.873825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746323, 33.170422, 36.553448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775286, 33.509304, 36.342922>,  <29.792664, 33.712631, 36.216606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775286, 33.509304, 36.342922>,  <29.746323, 33.170422, 36.553448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775286, 33.509304, 36.342922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071933, 0.521885, 0.849977,
		0.994778, -0.099402, -0.023155,
		0.072405, 0.847204, -0.526310,
		29.797007, 33.763466, 36.185028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266373, 33.554478, 36.917522>,  <29.746323, 33.170422, 36.553448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266373, 33.554478, 36.917522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014950, 33.791653, 36.716190>,  <29.864096, 33.933956, 36.595390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014950, 33.791653, 36.716190>,  <30.266373, 33.554478, 36.917522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014950, 33.791653, 36.716190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190290, 0.510248, 0.838711,
		0.754126, 0.622957, -0.207890,
		-0.628556, 0.592935, -0.503334,
		29.826384, 33.969532, 36.565189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597891, 34.205048, 36.806629>,  <30.266373, 33.554478, 36.917522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597891, 34.205048, 36.806629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205709, 34.258091, 36.748493>,  <29.970400, 34.289917, 36.713612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205709, 34.258091, 36.748493>,  <30.597891, 34.205048, 36.806629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205709, 34.258091, 36.748493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008128, 0.765373, 0.643536,
		0.196577, 0.629777, -0.751491,
		-0.980455, 0.132613, -0.145336,
		29.911573, 34.297874, 36.704891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535585, 34.871948, 37.052723>,  <30.597891, 34.205048, 36.806629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535585, 34.871948, 37.052723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160538, 34.737343, 37.017780>,  <29.935509, 34.656582, 36.996815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160538, 34.737343, 37.017780>,  <30.535585, 34.871948, 37.052723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160538, 34.737343, 37.017780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305115, 0.676015, 0.670753,
		-0.166660, 0.655565, -0.736518,
		-0.937619, -0.336510, -0.087358,
		29.879251, 34.636391, 36.991573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905781, 35.465961, 37.015076>,  <30.535585, 34.871948, 37.052723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905781, 35.465961, 37.015076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764187, 35.126869, 37.173088>,  <29.679230, 34.923412, 37.267895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764187, 35.126869, 37.173088>,  <29.905781, 35.465961, 37.015076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764187, 35.126869, 37.173088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427829, 0.522372, 0.737625,
		-0.831659, 0.092102, -0.547594,
		-0.353985, -0.847729, 0.395031,
		29.657991, 34.872551, 37.291599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229649, 35.290367, 36.264072>,  <29.905781, 35.465961, 37.015076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229649, 35.290367, 36.264072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332268, 35.658733, 36.381443>,  <30.393839, 35.879753, 36.451866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332268, 35.658733, 36.381443>,  <30.229649, 35.290367, 36.264072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332268, 35.658733, 36.381443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882308, -0.347082, 0.317909,
		0.394610, 0.177331, -0.901575,
		0.256546, 0.920917, 0.293422,
		30.409231, 35.935009, 36.469471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012255, 35.286480, 36.258614>,  <30.229649, 35.290367, 36.264072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012255, 35.286480, 36.258614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884436, 35.557041, 36.524055>,  <30.807745, 35.719379, 36.683319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884436, 35.557041, 36.524055>,  <31.012255, 35.286480, 36.258614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884436, 35.557041, 36.524055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492587, -0.479679, 0.726131,
		0.809474, 0.558914, -0.179908,
		-0.319546, 0.676405, 0.663602,
		30.788572, 35.759964, 36.723137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577824, 35.224392, 36.689342>,  <31.012255, 35.286480, 36.258614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577824, 35.224392, 36.689342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283791, 35.417984, 36.879253>,  <31.107370, 35.534138, 36.993202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283791, 35.417984, 36.879253>,  <31.577824, 35.224392, 36.689342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283791, 35.417984, 36.879253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418873, -0.226442, 0.879357,
		0.533100, 0.845274, -0.036272,
		-0.735085, 0.483979, 0.474779,
		31.063265, 35.563179, 37.021687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829643, 35.722492, 37.133759>,  <31.577824, 35.224392, 36.689342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829643, 35.722492, 37.133759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489420, 35.584755, 37.292744>,  <31.285286, 35.502113, 37.388134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489420, 35.584755, 37.292744>,  <31.829643, 35.722492, 37.133759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489420, 35.584755, 37.292744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443823, -0.064623, 0.893781,
		-0.282084, 0.936616, 0.207794,
		-0.850559, -0.344346, 0.397462,
		31.234253, 35.481453, 37.411983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411549, 36.256130, 37.615730>,  <31.829643, 35.722492, 37.133759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411549, 36.256130, 37.615730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403500, 35.861320, 37.679451>,  <31.398670, 35.624435, 37.717686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403500, 35.861320, 37.679451>,  <31.411549, 36.256130, 37.615730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403500, 35.861320, 37.679451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483078, 0.129905, 0.865887,
		-0.875346, 0.094382, 0.474195,
		-0.020124, -0.987024, 0.159306,
		31.397463, 35.565212, 37.727242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260542, 36.277634, 38.323795>,  <31.411549, 36.256130, 37.615730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260542, 36.277634, 38.323795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453053, 35.953671, 38.189682>,  <31.568560, 35.759293, 38.109215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453053, 35.953671, 38.189682>,  <31.260542, 36.277634, 38.323795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453053, 35.953671, 38.189682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690438, 0.114594, 0.714257,
		-0.540064, -0.575249, 0.614345,
		0.481276, -0.809912, -0.335286,
		31.597435, 35.710697, 38.089096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382996, 35.846973, 38.931030>,  <31.260542, 36.277634, 38.323795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382996, 35.846973, 38.931030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644285, 35.721016, 38.655602>,  <31.801060, 35.645439, 38.490345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644285, 35.721016, 38.655602>,  <31.382996, 35.846973, 38.931030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644285, 35.721016, 38.655602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729465, 0.018002, 0.683782,
		-0.202925, -0.948955, 0.241466,
		0.653225, -0.314897, -0.688576,
		31.840252, 35.626549, 38.449028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752489, 35.268032, 39.249989>,  <31.382996, 35.846973, 38.931030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752489, 35.268032, 39.249989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972738, 35.441998, 38.964985>,  <32.104889, 35.546375, 38.793983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972738, 35.441998, 38.964985>,  <31.752489, 35.268032, 39.249989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972738, 35.441998, 38.964985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783235, 0.026046, 0.621180,
		0.288715, -0.900097, -0.326296,
		0.550624, 0.434910, -0.712507,
		32.137924, 35.572472, 38.751232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305935, 34.987602, 39.418396>,  <31.752489, 35.268032, 39.249989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305935, 34.987602, 39.418396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423462, 35.279934, 39.171963>,  <32.493980, 35.455334, 39.024101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423462, 35.279934, 39.171963>,  <32.305935, 34.987602, 39.418396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423462, 35.279934, 39.171963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902605, 0.000003, 0.430469,
		0.314601, -0.682560, -0.659650,
		0.293819, 0.730829, -0.616083,
		32.511608, 35.499184, 38.987137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883553, 34.758022, 39.051876>,  <32.305935, 34.987602, 39.418396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883553, 34.758022, 39.051876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896568, 35.157776, 39.057068>,  <32.904377, 35.397629, 39.060184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896568, 35.157776, 39.057068>,  <32.883553, 34.758022, 39.051876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896568, 35.157776, 39.057068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911947, -0.035004, 0.408812,
		0.409016, -0.001466, -0.912526,
		0.032541, 0.999386, 0.012980,
		32.906330, 35.457592, 39.060963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511871, 34.892868, 39.012691>,  <32.883553, 34.758022, 39.051876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511871, 34.892868, 39.012691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405926, 35.260330, 39.129932>,  <33.342358, 35.480808, 39.200275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405926, 35.260330, 39.129932>,  <33.511871, 34.892868, 39.012691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405926, 35.260330, 39.129932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858333, 0.086090, 0.505820,
		0.439443, 0.385555, -0.811318,
		-0.264868, 0.918660, 0.293103,
		33.326466, 35.535927, 39.217865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122330, 35.338627, 39.024559>,  <33.511871, 34.892868, 39.012691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122330, 35.338627, 39.024559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874214, 35.539871, 39.265263>,  <33.725346, 35.660618, 39.409687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874214, 35.539871, 39.265263>,  <34.122330, 35.338627, 39.024559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874214, 35.539871, 39.265263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758338, 0.188646, 0.623968,
		0.200404, 0.843382, -0.498542,
		-0.620292, 0.503109, 0.601763,
		33.688126, 35.690804, 39.445793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428001, 35.938393, 39.202835>,  <34.122330, 35.338627, 39.024559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428001, 35.938393, 39.202835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156231, 35.881878, 39.490841>,  <33.993168, 35.847969, 39.663643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156231, 35.881878, 39.490841>,  <34.428001, 35.938393, 39.202835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156231, 35.881878, 39.490841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724864, 0.022951, 0.688510,
		-0.113803, 0.989703, 0.086820,
		-0.679428, -0.141287, 0.720011,
		33.952404, 35.839493, 39.706844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550625, 36.512119, 39.724125>,  <34.428001, 35.938393, 39.202835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550625, 36.512119, 39.724125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337791, 36.229973, 39.911465>,  <34.210091, 36.060684, 40.023869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337791, 36.229973, 39.911465>,  <34.550625, 36.512119, 39.724125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337791, 36.229973, 39.911465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523237, 0.160955, 0.836849,
		-0.665669, 0.690326, 0.283433,
		-0.532079, -0.705367, 0.468347,
		34.178169, 36.018364, 40.051968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335815, 36.817005, 40.371361>,  <34.550625, 36.512119, 39.724125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335815, 36.817005, 40.371361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306522, 36.423180, 40.434959>,  <34.288948, 36.186886, 40.473118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306522, 36.423180, 40.434959>,  <34.335815, 36.817005, 40.371361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306522, 36.423180, 40.434959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407707, 0.115939, 0.905722,
		-0.910172, 0.131149, 0.392921,
		-0.073230, -0.984560, 0.158995,
		34.284554, 36.127811, 40.482658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064980, 36.737141, 41.040302>,  <34.335815, 36.817005, 40.371361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064980, 36.737141, 41.040302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229050, 36.386353, 40.940166>,  <34.327492, 36.175880, 40.880085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229050, 36.386353, 40.940166>,  <34.064980, 36.737141, 41.040302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229050, 36.386353, 40.940166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516146, -0.003082, 0.856495,
		-0.751896, -0.480526, 0.451383,
		0.410177, -0.876975, -0.250339,
		34.352104, 36.123260, 40.865067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995544, 36.391033, 41.621586>,  <34.064980, 36.737141, 41.040302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995544, 36.391033, 41.621586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282806, 36.177364, 41.443188>,  <34.455166, 36.049164, 41.336151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282806, 36.177364, 41.443188>,  <33.995544, 36.391033, 41.621586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282806, 36.177364, 41.443188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460512, -0.115676, 0.880084,
		-0.521708, -0.837423, 0.162920,
		0.718157, -0.534173, -0.445993,
		34.498253, 36.017113, 41.309391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256950, 35.770706, 41.955845>,  <33.995544, 36.391033, 41.621586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256950, 35.770706, 41.955845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564957, 35.861385, 41.717289>,  <34.749760, 35.915794, 41.574154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564957, 35.861385, 41.717289>,  <34.256950, 35.770706, 41.955845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564957, 35.861385, 41.717289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635732, -0.193456, 0.747275,
		0.054032, -0.954558, -0.293085,
		0.770017, 0.226700, -0.596390,
		34.795963, 35.929394, 41.538372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655376, 35.244102, 41.937477>,  <34.256950, 35.770706, 41.955845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655376, 35.244102, 41.937477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901951, 35.539799, 41.829014>,  <35.049896, 35.717216, 41.763935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901951, 35.539799, 41.829014>,  <34.655376, 35.244102, 41.937477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901951, 35.539799, 41.829014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727873, -0.403624, 0.554337,
		0.300346, -0.539079, -0.786884,
		0.616436, 0.739244, -0.271154,
		35.086884, 35.761570, 41.747669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331367, 34.927181, 41.773460>,  <34.655376, 35.244102, 41.937477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331367, 34.927181, 41.773460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454903, 35.307617, 41.770638>,  <35.529026, 35.535877, 41.768944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454903, 35.307617, 41.770638>,  <35.331367, 34.927181, 41.773460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454903, 35.307617, 41.770638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729786, -0.232209, 0.643033,
		0.609943, -0.203743, -0.765806,
		0.308841, 0.951088, -0.007054,
		35.547554, 35.592945, 41.768520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034832, 34.898567, 41.753086>,  <35.331367, 34.927181, 41.773460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034832, 34.898567, 41.753086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936783, 35.250420, 41.916142>,  <35.877953, 35.461529, 42.013973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936783, 35.250420, 41.916142>,  <36.034832, 34.898567, 41.753086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936783, 35.250420, 41.916142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586294, -0.200372, 0.784927,
		0.772123, 0.431398, -0.466606,
		-0.245121, 0.879629, 0.407638,
		35.863247, 35.514309, 42.038433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698307, 35.167652, 42.058670>,  <36.034832, 34.898567, 41.753086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698307, 35.167652, 42.058670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416210, 35.399906, 42.221394>,  <36.246952, 35.539261, 42.319027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416210, 35.399906, 42.221394>,  <36.698307, 35.167652, 42.058670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416210, 35.399906, 42.221394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528079, 0.047368, 0.847873,
		0.473037, 0.812784, -0.340028,
		-0.705244, 0.580637, 0.406808,
		36.204636, 35.574097, 42.343437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034031, 35.903484, 42.310169>,  <36.698307, 35.167652, 42.058670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034031, 35.903484, 42.310169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702934, 35.808746, 42.513638>,  <36.504276, 35.751904, 42.635719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702934, 35.808746, 42.513638>,  <37.034031, 35.903484, 42.310169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702934, 35.808746, 42.513638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540161, -0.090973, 0.836630,
		-0.151876, 0.967279, 0.203236,
		-0.827744, -0.236845, 0.508669,
		36.454613, 35.737694, 42.666237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183064, 36.250294, 42.911648>,  <37.034031, 35.903484, 42.310169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183064, 36.250294, 42.911648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880928, 36.015190, 43.027584>,  <36.699646, 35.874126, 43.097145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880928, 36.015190, 43.027584>,  <37.183064, 36.250294, 42.911648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880928, 36.015190, 43.027584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294002, 0.091354, 0.951429,
		-0.585689, 0.803862, 0.103799,
		-0.755335, -0.587759, 0.289842,
		36.654327, 35.838863, 43.114536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001976, 36.473850, 43.599556>,  <37.183064, 36.250294, 42.911648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001976, 36.473850, 43.599556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804073, 36.126316, 43.592094>,  <36.685333, 35.917797, 43.587616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804073, 36.126316, 43.592094>,  <37.001976, 36.473850, 43.599556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804073, 36.126316, 43.592094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114283, -0.086331, 0.989690,
		-0.861487, 0.487520, 0.142006,
		-0.494753, -0.868834, -0.018657,
		36.655647, 35.865665, 43.586498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638302, 36.517101, 44.169182>,  <37.001976, 36.473850, 43.599556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638302, 36.517101, 44.169182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649536, 36.126350, 44.084404>,  <36.656277, 35.891899, 44.033539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649536, 36.126350, 44.084404>,  <36.638302, 36.517101, 44.169182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649536, 36.126350, 44.084404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242387, -0.199042, 0.949542,
		-0.969773, -0.078042, 0.231192,
		0.028087, -0.976878, -0.211942,
		36.657963, 35.833286, 44.020821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258018, 36.089466, 44.664288>,  <36.638302, 36.517101, 44.169182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258018, 36.089466, 44.664288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517574, 35.820797, 44.521290>,  <36.673309, 35.659595, 44.435493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517574, 35.820797, 44.521290>,  <36.258018, 36.089466, 44.664288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517574, 35.820797, 44.521290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198987, -0.303683, 0.931762,
		-0.734399, -0.675749, -0.063405,
		0.648893, -0.671669, -0.357491,
		36.712242, 35.619297, 44.414043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090019, 35.484848, 45.058231>,  <36.258018, 36.089466, 44.664288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090019, 35.484848, 45.058231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461811, 35.461124, 44.912601>,  <36.684887, 35.446892, 44.825222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461811, 35.461124, 44.912601>,  <36.090019, 35.484848, 45.058231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461811, 35.461124, 44.912601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340023, -0.244931, 0.907961,
		-0.143020, -0.967725, -0.207494,
		0.929478, -0.059304, -0.364079,
		36.740654, 35.443333, 44.803379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312096, 34.861816, 45.202099>,  <36.090019, 35.484848, 45.058231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312096, 34.861816, 45.202099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644897, 35.079052, 45.156807>,  <36.844578, 35.209393, 45.129631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644897, 35.079052, 45.156807>,  <36.312096, 34.861816, 45.202099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644897, 35.079052, 45.156807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323786, -0.309631, 0.894031,
		0.450478, -0.780502, -0.433459,
		0.832005, 0.543089, -0.113233,
		36.894501, 35.241978, 45.122837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845085, 34.438419, 45.615101>,  <36.312096, 34.861816, 45.202099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845085, 34.438419, 45.615101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038391, 34.775787, 45.521202>,  <37.154373, 34.978207, 45.464863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038391, 34.775787, 45.521202>,  <36.845085, 34.438419, 45.615101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038391, 34.775787, 45.521202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575068, -0.103641, 0.811514,
		0.660115, -0.527170, -0.535107,
		0.483265, 0.843416, -0.234744,
		37.183372, 35.028812, 45.450779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544846, 34.240826, 45.783127>,  <36.845085, 34.438419, 45.615101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544846, 34.240826, 45.783127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541897, 34.640774, 45.777290>,  <37.540127, 34.880741, 45.773788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541897, 34.640774, 45.777290>,  <37.544846, 34.240826, 45.783127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541897, 34.640774, 45.777290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574637, 0.016177, 0.818249,
		0.818375, -0.002351, -0.574679,
		-0.007373, 0.999866, -0.014590,
		37.539684, 34.940735, 45.772915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242729, 34.503296, 45.906052>,  <37.544846, 34.240826, 45.783127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242729, 34.503296, 45.906052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983871, 34.785587, 46.021393>,  <37.828556, 34.954964, 46.090599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983871, 34.785587, 46.021393>,  <38.242729, 34.503296, 45.906052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983871, 34.785587, 46.021393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480352, 0.083749, 0.873068,
		0.591999, 0.703515, -0.393197,
		-0.647146, 0.705729, 0.288355,
		37.789726, 34.997307, 46.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647648, 34.939285, 46.289520>,  <38.242729, 34.503296, 45.906052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647648, 34.939285, 46.289520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280941, 35.045212, 46.409130>,  <38.060917, 35.108768, 46.480896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280941, 35.045212, 46.409130>,  <38.647648, 34.939285, 46.289520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280941, 35.045212, 46.409130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336163, 0.107200, 0.935683,
		0.215726, 0.958322, -0.187298,
		-0.916764, 0.264814, 0.299027,
		38.005913, 35.124657, 46.498837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776554, 35.267593, 46.831978>,  <38.647648, 34.939285, 46.289520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776554, 35.267593, 46.831978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382587, 35.266132, 46.901184>,  <38.146210, 35.265255, 46.942707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382587, 35.266132, 46.901184>,  <38.776554, 35.267593, 46.831978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382587, 35.266132, 46.901184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170167, 0.161382, 0.972111,
		-0.031475, 0.986885, -0.158325,
		-0.984913, -0.003656, 0.173015,
		38.087112, 35.265034, 46.953087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613056, 35.896206, 47.223255>,  <38.776554, 35.267593, 46.831978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613056, 35.896206, 47.223255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328114, 35.623306, 47.289070>,  <38.157146, 35.459564, 47.328560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328114, 35.623306, 47.289070>,  <38.613056, 35.896206, 47.223255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328114, 35.623306, 47.289070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122732, 0.109735, 0.986355,
		-0.690999, 0.722835, 0.005563,
		-0.712361, -0.682253, 0.164541,
		38.114407, 35.418629, 47.338432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162788, 36.221405, 47.674137>,  <38.613056, 35.896206, 47.223255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162788, 36.221405, 47.674137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087212, 35.830498, 47.712589>,  <38.041866, 35.595951, 47.735661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087212, 35.830498, 47.712589>,  <38.162788, 36.221405, 47.674137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087212, 35.830498, 47.712589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137194, 0.123208, 0.982852,
		-0.972358, 0.172508, -0.157354,
		-0.188937, -0.977272, 0.096135,
		38.030529, 35.537315, 47.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649117, 36.237701, 48.149162>,  <38.162788, 36.221405, 47.674137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649117, 36.237701, 48.149162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793884, 35.865810, 48.176369>,  <37.880745, 35.642677, 48.192692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793884, 35.865810, 48.176369>,  <37.649117, 36.237701, 48.149162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793884, 35.865810, 48.176369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067945, 0.099073, 0.992758,
		-0.929729, -0.354679, 0.099027,
		0.361921, -0.929724, 0.068013,
		37.902462, 35.586891, 48.196774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163280, 35.807240, 48.570206>,  <37.649117, 36.237701, 48.149162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163280, 35.807240, 48.570206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526356, 35.640572, 48.590164>,  <37.744202, 35.540569, 48.602139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526356, 35.640572, 48.590164>,  <37.163280, 35.807240, 48.570206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526356, 35.640572, 48.590164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079183, -0.053300, 0.995434,
		-0.412110, -0.907493, -0.081373,
		0.907687, -0.416671, 0.049892,
		37.798660, 35.515572, 48.605133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118050, 35.316463, 49.077133>,  <37.163280, 35.807240, 48.570206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118050, 35.316463, 49.077133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514812, 35.363113, 49.057087>,  <37.752872, 35.391106, 49.045059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514812, 35.363113, 49.057087>,  <37.118050, 35.316463, 49.077133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514812, 35.363113, 49.057087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054028, -0.030635, 0.998069,
		0.114869, -0.992703, -0.036688,
		0.991910, 0.116629, -0.050115,
		37.812386, 35.398102, 49.042053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364758, 34.803814, 49.521175>,  <37.118050, 35.316463, 49.077133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364758, 34.803814, 49.521175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683212, 35.040146, 49.468906>,  <37.874287, 35.181946, 49.437546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683212, 35.040146, 49.468906>,  <37.364758, 34.803814, 49.521175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683212, 35.040146, 49.468906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234768, -0.102563, 0.966626,
		0.557713, -0.800248, -0.220363,
		0.796141, 0.590834, -0.130672,
		37.922054, 35.217396, 49.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886826, 34.344673, 49.695827>,  <37.364758, 34.803814, 49.521175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886826, 34.344673, 49.695827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005741, 34.721397, 49.758587>,  <38.077091, 34.947430, 49.796242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005741, 34.721397, 49.758587>,  <37.886826, 34.344673, 49.695827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005741, 34.721397, 49.758587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296005, -0.247147, 0.922659,
		0.907746, -0.227850, -0.352253,
		0.297286, 0.941808, 0.156902,
		38.094929, 35.003941, 49.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415077, 34.321194, 50.135365>,  <37.886826, 34.344673, 49.695827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415077, 34.321194, 50.135365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345505, 34.713894, 50.166134>,  <38.303761, 34.949512, 50.184597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345505, 34.713894, 50.166134>,  <38.415077, 34.321194, 50.135365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345505, 34.713894, 50.166134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384060, -0.004302, 0.923298,
		0.906777, 0.190137, -0.376302,
		-0.173934, 0.981748, 0.076924,
		38.293324, 35.008419, 50.189213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952614, 34.616711, 50.466328>,  <38.415077, 34.321194, 50.135365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952614, 34.616711, 50.466328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662968, 34.885506, 50.528419>,  <38.489182, 35.046783, 50.565674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662968, 34.885506, 50.528419>,  <38.952614, 34.616711, 50.466328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662968, 34.885506, 50.528419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294652, 0.097931, 0.950573,
		0.623570, 0.734061, -0.268915,
		-0.724114, 0.671985, 0.155225,
		38.445732, 35.087101, 50.574986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295067, 35.161777, 50.787422>,  <38.952614, 34.616711, 50.466328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295067, 35.161777, 50.787422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900978, 35.194130, 50.847824>,  <38.664524, 35.213539, 50.884064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900978, 35.194130, 50.847824>,  <39.295067, 35.161777, 50.787422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900978, 35.194130, 50.847824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151779, 0.003461, 0.988408,
		0.079416, 0.996718, -0.015685,
		-0.985219, 0.080877, 0.151006,
		38.605412, 35.218391, 50.893127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302841, 35.482006, 51.344261>,  <39.295067, 35.161777, 50.787422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302841, 35.482006, 51.344261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926083, 35.349911, 51.319714>,  <38.700027, 35.270653, 51.304985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926083, 35.349911, 51.319714>,  <39.302841, 35.482006, 51.344261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926083, 35.349911, 51.319714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027901, -0.105146, 0.994065,
		-0.334735, 0.938021, 0.089823,
		-0.941899, -0.330243, -0.061368,
		38.643513, 35.250839, 51.301304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901413, 35.834682, 51.857395>,  <39.302841, 35.482006, 51.344261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901413, 35.834682, 51.857395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703487, 35.494125, 51.787781>,  <38.584732, 35.289791, 51.746014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703487, 35.494125, 51.787781>,  <38.901413, 35.834682, 51.857395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703487, 35.494125, 51.787781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064225, -0.163892, 0.984385,
		-0.866621, 0.498267, 0.026416,
		-0.494816, -0.851393, -0.174034,
		38.555042, 35.238708, 51.735569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495560, 35.833061, 52.416302>,  <38.901413, 35.834682, 51.857395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495560, 35.833061, 52.416302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453751, 35.462883, 52.270630>,  <38.428665, 35.240776, 52.183228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453751, 35.462883, 52.270630>,  <38.495560, 35.833061, 52.416302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453751, 35.462883, 52.270630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099624, -0.354602, 0.929695,
		-0.989520, 0.133455, -0.055132,
		-0.104522, -0.925444, -0.364181,
		38.422394, 35.185249, 52.161377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052528, 35.582363, 52.893616>,  <38.495560, 35.833061, 52.416302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052528, 35.582363, 52.893616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198727, 35.270138, 52.690784>,  <38.286446, 35.082802, 52.569084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198727, 35.270138, 52.690784>,  <38.052528, 35.582363, 52.893616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198727, 35.270138, 52.690784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196184, -0.467936, 0.861712,
		-0.909905, -0.414431, -0.017893,
		0.365493, -0.780566, -0.507082,
		38.308376, 35.035969, 52.538658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620995, 34.934700, 53.083698>,  <38.052528, 35.582363, 52.893616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620995, 34.934700, 53.083698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000828, 34.877914, 52.971882>,  <38.228725, 34.843845, 52.904793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000828, 34.877914, 52.971882>,  <37.620995, 34.934700, 53.083698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000828, 34.877914, 52.971882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180284, -0.482221, 0.857298,
		-0.256503, -0.864471, -0.432315,
		0.949581, -0.141960, -0.279541,
		38.285702, 34.835327, 52.888020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751675, 34.266220, 53.186623>,  <37.620995, 34.934700, 53.083698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751675, 34.266220, 53.186623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117661, 34.427494, 53.179958>,  <38.337254, 34.524258, 53.175961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117661, 34.427494, 53.179958>,  <37.751675, 34.266220, 53.186623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117661, 34.427494, 53.179958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232054, -0.491943, 0.839132,
		0.330129, -0.771644, -0.543672,
		0.914968, 0.403184, -0.016659,
		38.392151, 34.548450, 53.174961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439610, 33.802734, 53.003948>,  <37.751675, 34.266220, 53.186623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439610, 33.802734, 53.003948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463902, 34.094669, 53.276318>,  <38.478477, 34.269829, 53.439739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463902, 34.094669, 53.276318>,  <38.439610, 33.802734, 53.003948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463902, 34.094669, 53.276318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154809, -0.680811, 0.715913,
		0.986076, 0.061936, -0.154330,
		0.060729, 0.729836, 0.680920,
		38.482121, 34.313622, 53.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073803, 33.888245, 53.287010>,  <38.439610, 33.802734, 53.003948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073803, 33.888245, 53.287010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814709, 33.994881, 53.572491>,  <38.659252, 34.058861, 53.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814709, 33.994881, 53.572491>,  <39.073803, 33.888245, 53.287010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814709, 33.994881, 53.572491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396660, -0.681794, 0.614669,
		0.650459, 0.681240, 0.335880,
		-0.647738, 0.266587, 0.713700,
		38.620388, 34.074856, 53.786602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203712, 33.157158, 53.411366>,  <39.073803, 33.888245, 53.287010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203712, 33.157158, 53.411366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461979, 33.058247, 53.122375>,  <39.616940, 32.998901, 52.948982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461979, 33.058247, 53.122375>,  <39.203712, 33.157158, 53.411366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461979, 33.058247, 53.122375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678864, -0.619098, -0.394793,
		-0.349662, 0.745367, -0.567595,
		0.645663, -0.247276, -0.722478,
		39.655678, 32.984062, 52.905632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884346, 33.193817, 52.683941>,  <39.203712, 33.157158, 53.411366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884346, 33.193817, 52.683941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186050, 32.931595, 52.669262>,  <39.367073, 32.774261, 52.660454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186050, 32.931595, 52.669262>,  <38.884346, 33.193817, 52.683941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186050, 32.931595, 52.669262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602644, -0.669035, -0.434985,
		0.260606, 0.350204, -0.899690,
		0.754257, -0.655553, -0.036694,
		39.412327, 32.734928, 52.658253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104980, 32.879543, 51.968094>,  <38.884346, 33.193817, 52.683941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104980, 32.879543, 51.968094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172028, 32.625797, 52.269951>,  <39.212257, 32.473549, 52.451065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172028, 32.625797, 52.269951>,  <39.104980, 32.879543, 51.968094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172028, 32.625797, 52.269951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521575, -0.706633, -0.478153,
		0.836579, -0.313458, -0.449311,
		0.167617, -0.634361, 0.754646,
		39.222313, 32.435490, 52.496346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453262, 32.299572, 51.724289>,  <39.104980, 32.879543, 51.968094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453262, 32.299572, 51.724289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183971, 32.232941, 52.012459>,  <39.022396, 32.192963, 52.185360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183971, 32.232941, 52.012459>,  <39.453262, 32.299572, 51.724289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183971, 32.232941, 52.012459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547838, -0.541997, -0.637270,
		0.496625, -0.823705, 0.273628,
		-0.673228, -0.166580, 0.720426,
		38.982002, 32.182968, 52.228588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216431, 31.589886, 51.741302>,  <39.453262, 32.299572, 51.724289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216431, 31.589886, 51.741302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938763, 31.852041, 51.860359>,  <38.772160, 32.009335, 51.931793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938763, 31.852041, 51.860359>,  <39.216431, 31.589886, 51.741302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938763, 31.852041, 51.860359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611469, -0.318752, -0.724226,
		-0.379778, -0.684734, 0.622019,
		-0.694172, 0.655390, 0.297639,
		38.730511, 32.048656, 51.949650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545692, 31.262150, 51.842262>,  <39.216431, 31.589886, 51.741302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545692, 31.262150, 51.842262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487194, 31.650265, 51.765163>,  <38.452095, 31.883135, 51.718903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487194, 31.650265, 51.765163>,  <38.545692, 31.262150, 51.842262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487194, 31.650265, 51.765163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648851, -0.241161, -0.721688,
		-0.746729, 0.019521, 0.664842,
		-0.146246, 0.970289, -0.192748,
		38.443321, 31.941351, 51.707340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921242, 31.352589, 51.728321>,  <38.545692, 31.262150, 51.842262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921242, 31.352589, 51.728321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072571, 31.678396, 51.552399>,  <38.163368, 31.873880, 51.446846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072571, 31.678396, 51.552399>,  <37.921242, 31.352589, 51.728321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072571, 31.678396, 51.552399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752711, -0.005859, -0.658325,
		-0.538795, 0.580108, 0.610881,
		0.378320, 0.814519, -0.439810,
		38.186066, 31.922752, 51.420456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332287, 31.658358, 51.491776>,  <37.921242, 31.352589, 51.728321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332287, 31.658358, 51.491776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639515, 31.810688, 51.285847>,  <37.823853, 31.902086, 51.162289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639515, 31.810688, 51.285847>,  <37.332287, 31.658358, 51.491776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639515, 31.810688, 51.285847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537720, -0.053037, -0.841453,
		-0.347751, 0.923125, 0.164041,
		0.768066, 0.380825, -0.514827,
		37.869934, 31.924936, 51.131397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068890, 32.279247, 51.242535>,  <37.332287, 31.658358, 51.491776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068890, 32.279247, 51.242535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355892, 32.145298, 50.998226>,  <37.528095, 32.064930, 50.851643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355892, 32.145298, 50.998226>,  <37.068890, 32.279247, 51.242535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355892, 32.145298, 50.998226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622884, 0.083995, -0.777792,
		0.311763, 0.938512, -0.148320,
		0.717509, -0.334873, -0.610770,
		37.571144, 32.044834, 50.814995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921455, 32.565426, 50.653103>,  <37.068890, 32.279247, 51.242535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921455, 32.565426, 50.653103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207199, 32.318844, 50.520634>,  <37.378647, 32.170895, 50.441151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207199, 32.318844, 50.520634>,  <36.921455, 32.565426, 50.653103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207199, 32.318844, 50.520634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207936, 0.264887, -0.941593,
		0.668170, 0.741500, 0.061043,
		0.714361, -0.616451, -0.331174,
		37.421509, 32.133907, 50.421280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227287, 32.892624, 50.245956>,  <36.921455, 32.565426, 50.653103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227287, 32.892624, 50.245956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335388, 32.525444, 50.129799>,  <37.400249, 32.305134, 50.060104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335388, 32.525444, 50.129799>,  <37.227287, 32.892624, 50.245956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335388, 32.525444, 50.129799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082485, 0.278434, -0.956907,
		0.959251, 0.282555, -0.000471,
		0.270248, -0.917953, -0.290395,
		37.416462, 32.250057, 50.042679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809792, 33.011230, 49.766460>,  <37.227287, 32.892624, 50.245956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809792, 33.011230, 49.766460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621040, 32.663242, 49.709206>,  <37.507790, 32.454449, 49.674854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621040, 32.663242, 49.709206>,  <37.809792, 33.011230, 49.766460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621040, 32.663242, 49.709206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086382, 0.207187, -0.974480,
		0.877424, -0.447468, -0.172915,
		-0.471875, -0.869969, -0.143138,
		37.479477, 32.402252, 49.666264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123962, 32.701096, 49.198627>,  <37.809792, 33.011230, 49.766460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123962, 32.701096, 49.198627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777664, 32.501347, 49.211975>,  <37.569885, 32.381496, 49.219986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777664, 32.501347, 49.211975>,  <38.123962, 32.701096, 49.198627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777664, 32.501347, 49.211975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111493, 0.127426, -0.985562,
		0.487911, -0.856965, -0.165995,
		-0.865743, -0.499374, 0.033373,
		37.517941, 32.351536, 49.221989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122353, 32.374947, 48.584957>,  <38.123962, 32.701096, 49.198627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122353, 32.374947, 48.584957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741447, 32.333084, 48.699673>,  <37.512905, 32.307964, 48.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741447, 32.333084, 48.699673>,  <38.122353, 32.374947, 48.584957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741447, 32.333084, 48.699673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300203, 0.150228, -0.941971,
		0.055497, -0.983097, -0.174473,
		-0.952260, -0.104654, 0.286792,
		37.455769, 32.301685, 48.785709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802982, 32.078426, 48.027611>,  <38.122353, 32.374947, 48.584957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802982, 32.078426, 48.027611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492813, 32.235321, 48.225548>,  <37.306713, 32.329456, 48.344311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492813, 32.235321, 48.225548>,  <37.802982, 32.078426, 48.027611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492813, 32.235321, 48.225548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426685, 0.252210, -0.868522,
		-0.465469, -0.884614, -0.028209,
		-0.775422, 0.392234, 0.494847,
		37.260185, 32.352993, 48.374001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312874, 31.787889, 47.737556>,  <37.802982, 32.078426, 48.027611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312874, 31.787889, 47.737556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131226, 32.092655, 47.922279>,  <37.022236, 32.275517, 48.033112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131226, 32.092655, 47.922279>,  <37.312874, 31.787889, 47.737556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131226, 32.092655, 47.922279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456129, 0.246430, -0.855113,
		-0.765327, -0.598963, 0.235624,
		-0.454116, 0.761916, 0.461803,
		36.994991, 32.321232, 48.060822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639847, 31.655090, 47.617470>,  <37.312874, 31.787889, 47.737556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639847, 31.655090, 47.617470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654720, 32.043087, 47.713577>,  <36.663643, 32.275887, 47.771244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654720, 32.043087, 47.713577>,  <36.639847, 31.655090, 47.617470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654720, 32.043087, 47.713577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601177, 0.213775, -0.769991,
		-0.798250, -0.115815, 0.591087,
		0.037183, 0.969993, 0.240271,
		36.665874, 32.334084, 47.785660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033901, 31.913267, 47.595673>,  <36.639847, 31.655090, 47.617470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033901, 31.913267, 47.595673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240273, 32.253101, 47.551807>,  <36.364094, 32.457001, 47.525490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240273, 32.253101, 47.551807>,  <36.033901, 31.913267, 47.595673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240273, 32.253101, 47.551807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621813, 0.283366, -0.730105,
		-0.589211, 0.444869, 0.674479,
		0.515925, 0.849585, -0.109663,
		36.395050, 32.507977, 47.518909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539967, 32.486656, 47.574677>,  <36.033901, 31.913267, 47.595673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539967, 32.486656, 47.574677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876762, 32.625351, 47.409355>,  <36.078842, 32.708569, 47.310162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876762, 32.625351, 47.409355>,  <35.539967, 32.486656, 47.574677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876762, 32.625351, 47.409355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533357, 0.419833, -0.734351,
		-0.081106, 0.838758, 0.538430,
		0.841993, 0.346735, -0.413307,
		36.129360, 32.729370, 47.285362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461731, 33.226376, 47.494926>,  <35.539967, 32.486656, 47.574677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461731, 33.226376, 47.494926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744095, 33.121311, 47.231808>,  <35.913513, 33.058273, 47.073936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744095, 33.121311, 47.231808>,  <35.461731, 33.226376, 47.494926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744095, 33.121311, 47.231808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425061, 0.585789, -0.690054,
		0.566581, 0.766721, 0.301868,
		0.705910, -0.262659, -0.657800,
		35.955868, 33.042515, 47.034470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686592, 33.812828, 47.322540>,  <35.461731, 33.226376, 47.494926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686592, 33.812828, 47.322540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797871, 33.564278, 47.029552>,  <35.864635, 33.415150, 46.853760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797871, 33.564278, 47.029552>,  <35.686592, 33.812828, 47.322540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797871, 33.564278, 47.029552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449930, 0.589434, -0.670917,
		0.848630, 0.516202, -0.115598,
		0.278192, -0.621371, -0.732466,
		35.881329, 33.377865, 46.809814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971889, 34.248066, 46.854912>,  <35.686592, 33.812828, 47.322540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971889, 34.248066, 46.854912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912834, 33.916885, 46.638504>,  <35.877403, 33.718178, 46.508659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912834, 33.916885, 46.638504>,  <35.971889, 34.248066, 46.854912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912834, 33.916885, 46.638504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375081, 0.553023, -0.743962,
		0.915160, 0.093092, -0.392194,
		-0.147636, -0.827948, -0.541022,
		35.868542, 33.668499, 46.476196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229408, 34.280788, 46.161377>,  <35.971889, 34.248066, 46.854912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229408, 34.280788, 46.161377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938786, 34.009216, 46.119118>,  <35.764412, 33.846272, 46.093761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938786, 34.009216, 46.119118>,  <36.229408, 34.280788, 46.161377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938786, 34.009216, 46.119118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240799, 0.395605, -0.886291,
		0.643525, -0.618505, -0.450917,
		-0.726561, -0.678931, -0.105646,
		35.720818, 33.805538, 46.087425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188736, 34.091015, 45.419407>,  <36.229408, 34.280788, 46.161377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188736, 34.091015, 45.419407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836292, 33.966934, 45.562191>,  <35.624825, 33.892487, 45.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836292, 33.966934, 45.562191>,  <36.188736, 34.091015, 45.419407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836292, 33.966934, 45.562191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425042, 0.188539, -0.885321,
		0.207336, -0.931784, -0.297976,
		-0.881108, -0.310211, 0.356956,
		35.571960, 33.873875, 45.669277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027775, 33.582275, 44.969891>,  <36.188736, 34.091015, 45.419407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027775, 33.582275, 44.969891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693638, 33.725563, 45.136688>,  <35.493156, 33.811535, 45.236767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693638, 33.725563, 45.136688>,  <36.027775, 33.582275, 44.969891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693638, 33.725563, 45.136688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421351, 0.069992, -0.904193,
		-0.353087, -0.931009, 0.092470,
		-0.835340, 0.358221, 0.416995,
		35.443035, 33.833031, 45.261787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503983, 33.091724, 44.747692>,  <36.027775, 33.582275, 44.969891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503983, 33.091724, 44.747692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296558, 33.411911, 44.867920>,  <35.172104, 33.604023, 44.940056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296558, 33.411911, 44.867920>,  <35.503983, 33.091724, 44.747692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296558, 33.411911, 44.867920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579639, -0.070674, -0.811803,
		-0.628580, -0.595194, 0.500631,
		-0.518562, 0.800468, 0.300573,
		35.140991, 33.652050, 44.958092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837978, 32.877048, 44.736614>,  <35.503983, 33.091724, 44.747692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837978, 32.877048, 44.736614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845150, 33.276196, 44.711540>,  <34.849453, 33.515686, 44.696495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845150, 33.276196, 44.711540>,  <34.837978, 32.877048, 44.736614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845150, 33.276196, 44.711540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471204, -0.046864, -0.880778,
		-0.881842, 0.045331, 0.469361,
		0.017931, 0.997872, -0.062687,
		34.850529, 33.575558, 44.692734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188850, 33.052769, 44.482639>,  <34.837978, 32.877048, 44.736614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188850, 33.052769, 44.482639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401844, 33.383892, 44.411983>,  <34.529640, 33.582565, 44.369591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401844, 33.383892, 44.411983>,  <34.188850, 33.052769, 44.482639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401844, 33.383892, 44.411983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461511, 0.109000, -0.880412,
		-0.709556, 0.550326, 0.440082,
		0.532483, 0.827804, -0.176640,
		34.561588, 33.632233, 44.358990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737633, 33.542820, 44.166073>,  <34.188850, 33.052769, 44.482639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737633, 33.542820, 44.166073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099792, 33.686840, 44.076080>,  <34.317089, 33.773254, 44.022087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099792, 33.686840, 44.076080>,  <33.737633, 33.542820, 44.166073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099792, 33.686840, 44.076080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271354, 0.083200, -0.958877,
		-0.326528, 0.929214, 0.173031,
		0.905398, 0.360053, -0.224979,
		34.371410, 33.794857, 44.008587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636505, 34.130840, 43.707012>,  <33.737633, 33.542820, 44.166073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636505, 34.130840, 43.707012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010441, 34.008186, 43.635403>,  <34.234802, 33.934593, 43.592438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010441, 34.008186, 43.635403>,  <33.636505, 34.130840, 43.707012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010441, 34.008186, 43.635403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180905, 0.022518, -0.983243,
		0.305523, 0.951562, -0.034420,
		0.934842, -0.306630, -0.179023,
		34.290894, 33.916199, 43.581696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897903, 34.642620, 43.241520>,  <33.636505, 34.130840, 43.707012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897903, 34.642620, 43.241520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114235, 34.306404, 43.228889>,  <34.244034, 34.104675, 43.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114235, 34.306404, 43.228889>,  <33.897903, 34.642620, 43.241520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114235, 34.306404, 43.228889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130317, -0.046648, -0.990374,
		0.830977, 0.539737, -0.134765,
		0.540828, -0.840541, -0.031574,
		34.276482, 34.054241, 43.219418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355724, 34.680897, 42.697781>,  <33.897903, 34.642620, 43.241520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355724, 34.680897, 42.697781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311794, 34.286850, 42.750675>,  <34.285435, 34.050423, 42.782413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311794, 34.286850, 42.750675>,  <34.355724, 34.680897, 42.697781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311794, 34.286850, 42.750675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032903, -0.129369, -0.991050,
		0.993406, -0.113196, -0.018205,
		-0.109828, -0.985114, 0.132240,
		34.278847, 33.991314, 42.790348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903336, 34.384449, 42.312641>,  <34.355724, 34.680897, 42.697781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903336, 34.384449, 42.312641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580479, 34.150124, 42.341873>,  <34.386765, 34.009529, 42.359413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580479, 34.150124, 42.341873>,  <34.903336, 34.384449, 42.312641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580479, 34.150124, 42.341873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011726, -0.139681, -0.990127,
		0.590239, -0.798318, 0.119612,
		-0.807144, -0.585814, 0.073084,
		34.338337, 33.974380, 42.363800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071835, 33.952961, 41.703976>,  <34.903336, 34.384449, 42.312641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071835, 33.952961, 41.703976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714275, 33.820461, 41.824787>,  <34.499741, 33.740963, 41.897274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714275, 33.820461, 41.824787>,  <35.071835, 33.952961, 41.703976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714275, 33.820461, 41.824787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177528, -0.357075, -0.917050,
		0.411615, -0.873369, 0.260383,
		-0.893900, -0.331246, 0.302025,
		34.446106, 33.721088, 41.915394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987682, 33.279301, 41.499550>,  <35.071835, 33.952961, 41.703976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987682, 33.279301, 41.499550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599567, 33.373444, 41.521988>,  <34.366699, 33.429928, 41.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599567, 33.373444, 41.521988>,  <34.987682, 33.279301, 41.499550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599567, 33.373444, 41.521988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140758, -0.360519, -0.922070,
		-0.196787, -0.902571, 0.382936,
		-0.970289, 0.235353, 0.056098,
		34.308479, 33.444050, 41.538818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549000, 32.708855, 41.222702>,  <34.987682, 33.279301, 41.499550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549000, 32.708855, 41.222702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315777, 33.033520, 41.208565>,  <34.175842, 33.228317, 41.200081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315777, 33.033520, 41.208565>,  <34.549000, 32.708855, 41.222702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315777, 33.033520, 41.208565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312154, -0.263974, -0.912621,
		-0.750071, -0.521076, 0.407276,
		-0.583055, 0.811663, -0.035344,
		34.140862, 33.277020, 41.197960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920200, 32.508060, 41.084171>,  <34.549000, 32.708855, 41.222702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920200, 32.508060, 41.084171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863708, 32.885834, 40.965446>,  <33.829811, 33.112499, 40.894211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863708, 32.885834, 40.965446>,  <33.920200, 32.508060, 41.084171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863708, 32.885834, 40.965446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363370, -0.328341, -0.871869,
		-0.920878, -0.015286, 0.389552,
		-0.141233, 0.944436, -0.296808,
		33.821339, 33.169163, 40.876404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252598, 32.434040, 40.713219>,  <33.920200, 32.508060, 41.084171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252598, 32.434040, 40.713219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381599, 32.794243, 40.596546>,  <33.459000, 33.010365, 40.526543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381599, 32.794243, 40.596546>,  <33.252598, 32.434040, 40.713219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381599, 32.794243, 40.596546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514464, -0.091911, -0.852572,
		-0.794555, 0.425020, 0.433637,
		0.322504, 0.900506, -0.291685,
		33.478352, 33.064396, 40.509041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601307, 32.805359, 40.356800>,  <33.252598, 32.434040, 40.713219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601307, 32.805359, 40.356800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931484, 32.997654, 40.238453>,  <33.129593, 33.113029, 40.167446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931484, 32.997654, 40.238453>,  <32.601307, 32.805359, 40.356800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931484, 32.997654, 40.238453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379966, 0.085579, -0.921033,
		-0.417452, 0.872681, 0.253303,
		0.825445, 0.480734, -0.295864,
		33.179119, 33.141872, 40.149693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346745, 33.375198, 39.884552>,  <32.601307, 32.805359, 40.356800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346745, 33.375198, 39.884552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733868, 33.314823, 39.803993>,  <32.966141, 33.278599, 39.755657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733868, 33.314823, 39.803993>,  <32.346745, 33.375198, 39.884552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733868, 33.314823, 39.803993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188135, 0.097643, -0.977277,
		0.167176, 0.983709, 0.066103,
		0.967811, -0.150941, -0.201393,
		33.024212, 33.269543, 39.743576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486801, 33.864414, 39.355869>,  <32.346745, 33.375198, 39.884552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486801, 33.864414, 39.355869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791756, 33.607452, 39.324661>,  <32.974728, 33.453278, 39.305935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791756, 33.607452, 39.324661>,  <32.486801, 33.864414, 39.355869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791756, 33.607452, 39.324661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001064, 0.121809, -0.992553,
		0.647121, 0.756626, 0.093549,
		0.762387, -0.642401, -0.078020,
		33.020473, 33.414734, 39.301254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771149, 34.088890, 38.823460>,  <32.486801, 33.864414, 39.355869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771149, 34.088890, 38.823460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933704, 33.723499, 38.831512>,  <33.031239, 33.504265, 38.836346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933704, 33.723499, 38.831512>,  <32.771149, 34.088890, 38.823460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933704, 33.723499, 38.831512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081684, -0.058266, -0.994954,
		0.910041, 0.402696, -0.098295,
		0.406391, -0.913477, 0.020131,
		33.055622, 33.449455, 38.837551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444031, 34.036819, 38.442463>,  <32.771149, 34.088890, 38.823460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444031, 34.036819, 38.442463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294506, 33.665897, 38.434822>,  <33.204792, 33.443344, 38.430237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294506, 33.665897, 38.434822>,  <33.444031, 34.036819, 38.442463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294506, 33.665897, 38.434822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223323, -0.069997, -0.972228,
		0.900217, -0.367698, 0.233255,
		-0.373813, -0.927307, -0.019103,
		33.182362, 33.387707, 38.429092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903728, 33.761936, 38.011478>,  <33.444031, 34.036819, 38.442463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903728, 33.761936, 38.011478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591255, 33.512657, 37.996590>,  <33.403770, 33.363091, 37.987656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591255, 33.512657, 37.996590>,  <33.903728, 33.761936, 38.011478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591255, 33.512657, 37.996590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011488, 0.073958, -0.997195,
		0.624202, -0.778560, -0.064934,
		-0.781178, -0.623197, -0.037221,
		33.356903, 33.325699, 37.985424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933830, 33.285465, 37.402580>,  <33.903728, 33.761936, 38.011478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933830, 33.285465, 37.402580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543766, 33.320282, 37.484051>,  <33.309727, 33.341171, 37.532932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543766, 33.320282, 37.484051>,  <33.933830, 33.285465, 37.402580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543766, 33.320282, 37.484051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169376, 0.299486, -0.938946,
		-0.142729, -0.950122, -0.277303,
		-0.975162, 0.087046, 0.203673,
		33.251217, 33.346397, 37.545155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611656, 33.568924, 37.007660>,  <33.933830, 33.285465, 37.402580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611656, 33.568924, 37.007660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897232, 33.355755, 36.825989>,  <35.068577, 33.227852, 36.716988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897232, 33.355755, 36.825989>,  <34.611656, 33.568924, 37.007660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897232, 33.355755, 36.825989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535990, -0.001430, 0.844223,
		-0.450559, -0.846160, 0.284623,
		0.713941, -0.532928, -0.454178,
		35.111416, 33.195877, 36.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793648, 32.864540, 37.207775>,  <34.611656, 33.568924, 37.007660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793648, 32.864540, 37.207775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104050, 33.070778, 37.062458>,  <35.290291, 33.194519, 36.975266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104050, 33.070778, 37.062458>,  <34.793648, 32.864540, 37.207775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104050, 33.070778, 37.062458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469180, -0.086918, 0.878815,
		0.421535, -0.852413, -0.309355,
		0.776001, 0.515595, -0.363296,
		35.336849, 33.225456, 36.953468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301849, 32.478443, 37.350739>,  <34.793648, 32.864540, 37.207775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301849, 32.478443, 37.350739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455002, 32.845997, 37.312698>,  <35.546894, 33.066528, 37.289875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455002, 32.845997, 37.312698>,  <35.301849, 32.478443, 37.350739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455002, 32.845997, 37.312698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469924, -0.105100, 0.876428,
		0.795344, -0.380260, -0.472049,
		0.382882, 0.918889, -0.095102,
		35.569866, 33.121662, 37.284168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036816, 32.393047, 37.499744>,  <35.301849, 32.478443, 37.350739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036816, 32.393047, 37.499744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927940, 32.770988, 37.572586>,  <35.862614, 32.997753, 37.616291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927940, 32.770988, 37.572586>,  <36.036816, 32.393047, 37.499744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927940, 32.770988, 37.572586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580686, 0.010383, 0.814062,
		0.767278, 0.327329, -0.551489,
		-0.272192, 0.944853, 0.182109,
		35.846283, 33.054443, 37.627220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585682, 32.640797, 37.782616>,  <36.036816, 32.393047, 37.499744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585682, 32.640797, 37.782616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324768, 32.924129, 37.890533>,  <36.168221, 33.094128, 37.955284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324768, 32.924129, 37.890533>,  <36.585682, 32.640797, 37.782616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324768, 32.924129, 37.890533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418165, 0.039414, 0.907515,
		0.632189, 0.704778, -0.321909,
		-0.652285, 0.708332, 0.269797,
		36.129082, 33.136631, 37.971474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983894, 33.120117, 38.081013>,  <36.585682, 32.640797, 37.782616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983894, 33.120117, 38.081013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623947, 33.258545, 38.187202>,  <36.407978, 33.341602, 38.250916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623947, 33.258545, 38.187202>,  <36.983894, 33.120117, 38.081013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623947, 33.258545, 38.187202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330774, 0.144737, 0.932545,
		0.284298, 0.926979, -0.244714,
		-0.899869, 0.346065, 0.265472,
		36.353985, 33.362366, 38.266846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090569, 33.682217, 38.387489>,  <36.983894, 33.120117, 38.081013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090569, 33.682217, 38.387489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753410, 33.542446, 38.551159>,  <36.551113, 33.458584, 38.649361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753410, 33.542446, 38.551159>,  <37.090569, 33.682217, 38.387489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753410, 33.542446, 38.551159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445647, -0.027217, 0.894795,
		-0.301531, 0.936568, 0.178663,
		-0.842899, -0.349429, 0.409172,
		36.500542, 33.437618, 38.673912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993809, 34.070599, 38.947803>,  <37.090569, 33.682217, 38.387489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993809, 34.070599, 38.947803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793053, 33.732567, 39.021500>,  <36.672600, 33.529747, 39.065716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793053, 33.732567, 39.021500>,  <36.993809, 34.070599, 38.947803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793053, 33.732567, 39.021500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435356, -0.062768, 0.898068,
		-0.747373, 0.530945, 0.399413,
		-0.501895, -0.845079, 0.184239,
		36.642483, 33.479042, 39.076771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487099, 34.150116, 39.554302>,  <36.993809, 34.070599, 38.947803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487099, 34.150116, 39.554302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569176, 33.760773, 39.513393>,  <36.618423, 33.527164, 39.488850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569176, 33.760773, 39.513393>,  <36.487099, 34.150116, 39.554302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569176, 33.760773, 39.513393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234373, -0.052587, 0.970724,
		-0.950244, -0.223159, 0.217339,
		0.205197, -0.973363, -0.102273,
		36.630733, 33.468765, 39.482712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083530, 33.769115, 40.092319>,  <36.487099, 34.150116, 39.554302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083530, 33.769115, 40.092319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353912, 33.487000, 40.006847>,  <36.516140, 33.317730, 39.955566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353912, 33.487000, 40.006847>,  <36.083530, 33.769115, 40.092319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353912, 33.487000, 40.006847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178178, -0.124938, 0.976034,
		-0.715080, -0.697827, 0.041214,
		0.675954, -0.705286, -0.213678,
		36.556698, 33.275414, 39.942745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114697, 33.324242, 40.691036>,  <36.083530, 33.769115, 40.092319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114697, 33.324242, 40.691036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455883, 33.217514, 40.511593>,  <36.660595, 33.153477, 40.403927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455883, 33.217514, 40.511593>,  <36.114697, 33.324242, 40.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455883, 33.217514, 40.511593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367868, -0.302420, 0.879326,
		-0.370291, -0.915067, -0.159800,
		0.852970, -0.266822, -0.448608,
		36.711773, 33.137466, 40.377010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322487, 32.623302, 40.949738>,  <36.114697, 33.324242, 40.691036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322487, 32.623302, 40.949738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648811, 32.784950, 40.784260>,  <36.844608, 32.881939, 40.684975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648811, 32.784950, 40.784260>,  <36.322487, 32.623302, 40.949738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648811, 32.784950, 40.784260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551487, -0.328281, 0.766872,
		0.174099, -0.853769, -0.490680,
		0.815813, 0.404116, -0.413690,
		36.893555, 32.906185, 40.660152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892555, 32.126339, 40.766888>,  <36.322487, 32.623302, 40.949738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892555, 32.126339, 40.766888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063786, 32.485619, 40.806877>,  <37.166523, 32.701187, 40.830872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063786, 32.485619, 40.806877>,  <36.892555, 32.126339, 40.766888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063786, 32.485619, 40.806877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330502, -0.258547, 0.907701,
		0.841140, -0.355527, -0.407534,
		0.428079, 0.898195, 0.099972,
		37.192207, 32.755077, 40.836868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567715, 31.988781, 41.111240>,  <36.892555, 32.126339, 40.766888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567715, 31.988781, 41.111240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509464, 32.376019, 41.192810>,  <37.474514, 32.608360, 41.241753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509464, 32.376019, 41.192810>,  <37.567715, 31.988781, 41.111240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509464, 32.376019, 41.192810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257609, -0.161909, 0.952587,
		0.955212, 0.191258, -0.225811,
		-0.145629, 0.968094, 0.203927,
		37.465775, 32.666447, 41.253986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993790, 32.066750, 41.662144>,  <37.567715, 31.988781, 41.111240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993790, 32.066750, 41.662144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781994, 32.406063, 41.659061>,  <37.654915, 32.609650, 41.657211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781994, 32.406063, 41.659061>,  <37.993790, 32.066750, 41.662144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781994, 32.406063, 41.659061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185456, 0.124612, 0.974720,
		0.827794, 0.514679, -0.223299,
		-0.529493, 0.848279, -0.007703,
		37.623146, 32.660545, 41.656750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477905, 32.613815, 41.897583>,  <37.993790, 32.066750, 41.662144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477905, 32.613815, 41.897583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100601, 32.735935, 41.949825>,  <37.874218, 32.809208, 41.981171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100601, 32.735935, 41.949825>,  <38.477905, 32.613815, 41.897583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100601, 32.735935, 41.949825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178875, 0.135798, 0.974455,
		0.279768, 0.942523, -0.182704,
		-0.943257, 0.305303, 0.130602,
		37.817623, 32.827526, 41.989006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463238, 33.205238, 42.285351>,  <38.477905, 32.613815, 41.897583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463238, 33.205238, 42.285351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091373, 33.067909, 42.338818>,  <37.868256, 32.985512, 42.370895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091373, 33.067909, 42.338818>,  <38.463238, 33.205238, 42.285351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091373, 33.067909, 42.338818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127060, 0.041771, 0.991015,
		-0.345825, 0.938287, 0.004790,
		-0.929656, -0.343327, 0.133664,
		37.812477, 32.964912, 42.378918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211670, 33.590466, 42.808292>,  <38.463238, 33.205238, 42.285351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211670, 33.590466, 42.808292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998512, 33.252312, 42.793644>,  <37.870617, 33.049419, 42.784855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998512, 33.252312, 42.793644>,  <38.211670, 33.590466, 42.808292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998512, 33.252312, 42.793644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054815, -0.077671, 0.995471,
		-0.844403, 0.528476, 0.087731,
		-0.532897, -0.845388, -0.036617,
		37.838642, 32.998695, 42.782658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810261, 33.672482, 43.341888>,  <38.211670, 33.590466, 42.808292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810261, 33.672482, 43.341888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756008, 33.282207, 43.273026>,  <37.723457, 33.048042, 43.231709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756008, 33.282207, 43.273026>,  <37.810261, 33.672482, 43.341888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756008, 33.282207, 43.273026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156554, -0.192689, 0.968691,
		-0.978313, 0.104431, 0.178882,
		-0.135630, -0.975687, -0.172161,
		37.715321, 32.989502, 43.221378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301453, 33.403797, 43.831478>,  <37.810261, 33.672482, 43.341888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301453, 33.403797, 43.831478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530445, 33.099216, 43.709850>,  <37.667839, 32.916470, 43.636871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530445, 33.099216, 43.709850>,  <37.301453, 33.403797, 43.831478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530445, 33.099216, 43.709850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238687, -0.200023, 0.950273,
		-0.784408, -0.616590, 0.067240,
		0.572479, -0.761451, -0.304071,
		37.702190, 32.870781, 43.618629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158779, 32.937412, 44.355316>,  <37.301453, 33.403797, 43.831478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158779, 32.937412, 44.355316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473225, 32.763657, 44.179436>,  <37.661892, 32.659405, 44.073906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473225, 32.763657, 44.179436>,  <37.158779, 32.937412, 44.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473225, 32.763657, 44.179436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372457, -0.234807, 0.897854,
		-0.493261, -0.869583, -0.022794,
		0.786110, -0.434387, -0.439703,
		37.709057, 32.633339, 44.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180954, 32.278191, 44.675968>,  <37.158779, 32.937412, 44.355316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180954, 32.278191, 44.675968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556313, 32.343231, 44.554008>,  <37.781528, 32.382256, 44.480831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556313, 32.343231, 44.554008>,  <37.180954, 32.278191, 44.675968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556313, 32.343231, 44.554008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329881, -0.158849, 0.930562,
		0.102879, -0.973821, -0.202704,
		0.938400, 0.162603, -0.304903,
		37.837833, 32.392014, 44.462536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624603, 31.849579, 45.101475>,  <37.180954, 32.278191, 44.675968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624603, 31.849579, 45.101475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837090, 32.154743, 44.954086>,  <37.964581, 32.337841, 44.865654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837090, 32.154743, 44.954086>,  <37.624603, 31.849579, 45.101475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837090, 32.154743, 44.954086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545127, 0.025151, 0.837976,
		0.648569, -0.646013, -0.402523,
		0.531220, 0.762912, -0.368471,
		37.996456, 32.383617, 44.843544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289158, 31.730667, 45.342884>,  <37.624603, 31.849579, 45.101475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289158, 31.730667, 45.342884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259438, 32.121880, 45.264977>,  <38.241604, 32.356606, 45.218231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259438, 32.121880, 45.264977>,  <38.289158, 31.730667, 45.342884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259438, 32.121880, 45.264977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513724, 0.204941, 0.833119,
		0.854732, -0.038156, -0.517665,
		-0.074302, 0.978030, -0.194771,
		38.237148, 32.415287, 45.206547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972683, 32.138966, 45.384506>,  <38.289158, 31.730667, 45.342884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972683, 32.138966, 45.384506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700996, 32.427395, 45.439217>,  <38.537983, 32.600452, 45.472042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700996, 32.427395, 45.439217>,  <38.972683, 32.138966, 45.384506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700996, 32.427395, 45.439217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536790, 0.360977, 0.762595,
		0.500515, 0.591392, -0.632250,
		-0.679221, 0.721076, 0.136779,
		38.497231, 32.643719, 45.480251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407829, 32.673225, 45.581470>,  <38.972683, 32.138966, 45.384506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407829, 32.673225, 45.581470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036610, 32.779415, 45.685966>,  <38.813877, 32.843128, 45.748665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036610, 32.779415, 45.685966>,  <39.407829, 32.673225, 45.581470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036610, 32.779415, 45.685966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368852, 0.557723, 0.743568,
		0.051697, 0.786428, -0.615515,
		-0.928049, 0.265474, 0.261243,
		38.758194, 32.859058, 45.764339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444397, 33.326939, 45.682011>,  <39.407829, 32.673225, 45.581470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444397, 33.326939, 45.682011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116283, 33.243279, 45.894947>,  <38.919415, 33.193081, 46.022709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116283, 33.243279, 45.894947>,  <39.444397, 33.326939, 45.682011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116283, 33.243279, 45.894947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362385, 0.530037, 0.766640,
		-0.442508, 0.821776, -0.358986,
		-0.820283, -0.209154, 0.532345,
		38.870197, 33.180531, 46.054649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220966, 33.876251, 46.095005>,  <39.444397, 33.326939, 45.682011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220966, 33.876251, 46.095005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082905, 33.554962, 46.289204>,  <39.000069, 33.362190, 46.405724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082905, 33.554962, 46.289204>,  <39.220966, 33.876251, 46.095005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082905, 33.554962, 46.289204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269651, 0.410612, 0.871026,
		-0.898977, 0.431550, 0.074867,
		-0.345150, -0.803220, 0.485498,
		38.979359, 33.313995, 46.434853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005302, 34.161415, 46.674931>,  <39.220966, 33.876251, 46.095005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005302, 34.161415, 46.674931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032162, 33.775284, 46.775829>,  <39.048279, 33.543606, 46.836369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032162, 33.775284, 46.775829>,  <39.005302, 34.161415, 46.674931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032162, 33.775284, 46.775829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318592, 0.260329, 0.911443,
		-0.945510, 0.019160, 0.325028,
		0.067151, -0.965330, 0.252248,
		39.052307, 33.485683, 46.851505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741291, 34.036480, 47.338322>,  <39.005302, 34.161415, 46.674931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741291, 34.036480, 47.338322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982643, 33.718353, 47.314995>,  <39.127457, 33.527477, 47.300999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982643, 33.718353, 47.314995>,  <38.741291, 34.036480, 47.338322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982643, 33.718353, 47.314995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097033, 0.000638, 0.995281,
		-0.791526, -0.606195, 0.077557,
		0.603384, -0.795316, -0.058317,
		39.163658, 33.479759, 47.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577568, 33.577347, 47.824314>,  <38.741291, 34.036480, 47.338322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577568, 33.577347, 47.824314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952656, 33.458683, 47.752007>,  <39.177708, 33.387486, 47.708622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952656, 33.458683, 47.752007>,  <38.577568, 33.577347, 47.824314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952656, 33.458683, 47.752007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162983, -0.083834, 0.983061,
		-0.306790, -0.951296, -0.030262,
		0.937719, -0.296661, -0.180765,
		39.233971, 33.369686, 47.697777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649246, 33.030441, 48.294399>,  <38.577568, 33.577347, 47.824314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649246, 33.030441, 48.294399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021317, 33.127083, 48.183842>,  <39.244560, 33.185066, 48.117508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021317, 33.127083, 48.183842>,  <38.649246, 33.030441, 48.294399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021317, 33.127083, 48.183842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336966, -0.263143, 0.903997,
		0.145678, -0.934014, -0.326182,
		0.930179, 0.241605, -0.276396,
		39.300369, 33.199566, 48.100922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910103, 32.580746, 48.673012>,  <38.649246, 33.030441, 48.294399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910103, 32.580746, 48.673012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214951, 32.827644, 48.594860>,  <39.397861, 32.975784, 48.547970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214951, 32.827644, 48.594860>,  <38.910103, 32.580746, 48.673012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214951, 32.827644, 48.594860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371925, -0.170384, 0.912492,
		0.529943, -0.768099, -0.359423,
		0.762124, 0.617247, -0.195381,
		39.443588, 33.012817, 48.536247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456314, 32.281548, 48.975227>,  <38.910103, 32.580746, 48.673012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456314, 32.281548, 48.975227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555134, 32.665211, 48.920128>,  <39.614426, 32.895409, 48.887070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555134, 32.665211, 48.920128>,  <39.456314, 32.281548, 48.975227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555134, 32.665211, 48.920128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443199, 0.014570, 0.896305,
		0.861709, -0.282480, -0.421500,
		0.247047, 0.959163, -0.137750,
		39.629250, 32.952961, 48.878803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143753, 32.270565, 49.214722>,  <39.456314, 32.281548, 48.975227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143753, 32.270565, 49.214722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015808, 32.649544, 49.212685>,  <39.939041, 32.876930, 49.211460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015808, 32.649544, 49.212685>,  <40.143753, 32.270565, 49.214722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015808, 32.649544, 49.212685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529942, 0.183364, 0.827973,
		0.785397, 0.262138, -0.560745,
		-0.319864, 0.947450, -0.005095,
		39.919849, 32.933777, 49.211155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690403, 32.577000, 49.569351>,  <40.143753, 32.270565, 49.214722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690403, 32.577000, 49.569351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412933, 32.863010, 49.534576>,  <40.246452, 33.034618, 49.513710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412933, 32.863010, 49.534576>,  <40.690403, 32.577000, 49.569351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412933, 32.863010, 49.534576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422161, 0.501380, 0.755248,
		0.583609, 0.487193, -0.649649,
		-0.693672, 0.715025, -0.086936,
		40.204830, 33.077518, 49.508495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000980, 33.320816, 49.431702>,  <40.690403, 32.577000, 49.569351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000980, 33.320816, 49.431702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650528, 33.408566, 49.603409>,  <40.440258, 33.461216, 49.706432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650528, 33.408566, 49.603409>,  <41.000980, 33.320816, 49.431702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650528, 33.408566, 49.603409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472424, 0.567981, 0.673953,
		-0.095966, 0.793266, -0.601264,
		-0.876131, 0.219375, 0.429265,
		40.387688, 33.474377, 49.732189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207764, 34.008717, 49.721390>,  <41.000980, 33.320816, 49.431702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207764, 34.008717, 49.721390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884777, 33.872845, 49.914310>,  <40.690983, 33.791321, 50.030064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884777, 33.872845, 49.914310>,  <41.207764, 34.008717, 49.721390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884777, 33.872845, 49.914310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385983, 0.314052, 0.867403,
		-0.446104, 0.886561, -0.122478,
		-0.807470, -0.339678, 0.482297,
		40.642536, 33.770943, 50.058998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223328, 34.469250, 50.264668>,  <41.207764, 34.008717, 49.721390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223328, 34.469250, 50.264668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515858, 34.726856, 50.174858>,  <41.691376, 34.881420, 50.120972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515858, 34.726856, 50.174858>,  <41.223328, 34.469250, 50.264668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515858, 34.726856, 50.174858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468428, 0.235013, -0.851672,
		-0.495724, 0.728020, 0.473545,
		0.731323, 0.644015, -0.224523,
		41.735256, 34.920059, 50.107502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914879, 35.022591, 50.091698>,  <41.223328, 34.469250, 50.264668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914879, 35.022591, 50.091698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265877, 35.069637, 49.905724>,  <41.476475, 35.097866, 49.794140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265877, 35.069637, 49.905724>,  <40.914879, 35.022591, 50.091698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265877, 35.069637, 49.905724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479174, 0.174970, -0.860103,
		-0.019813, 0.977523, 0.209894,
		0.877496, 0.117617, -0.464938,
		41.529125, 35.104923, 49.766243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835255, 35.587505, 49.743267>,  <40.914879, 35.022591, 50.091698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835255, 35.587505, 49.743267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146591, 35.442833, 49.537987>,  <41.333393, 35.356030, 49.414818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146591, 35.442833, 49.537987>,  <40.835255, 35.587505, 49.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146591, 35.442833, 49.537987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371614, 0.393444, -0.840895,
		0.506054, 0.845213, 0.171825,
		0.778339, -0.361686, -0.513197,
		41.380093, 35.334328, 49.384029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834835, 35.919022, 49.074093>,  <40.835255, 35.587505, 49.743267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834835, 35.919022, 49.074093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139774, 35.674179, 48.990044>,  <41.322739, 35.527275, 48.939613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139774, 35.674179, 48.990044>,  <40.834835, 35.919022, 49.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139774, 35.674179, 48.990044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144554, 0.155416, -0.977215,
		0.630812, 0.775356, 0.030000,
		0.762352, -0.612102, -0.210119,
		41.368481, 35.490547, 48.927010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329475, 36.296272, 48.626141>,  <40.834835, 35.919022, 49.074093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329475, 36.296272, 48.626141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349609, 35.898876, 48.585255>,  <41.361691, 35.660439, 48.560722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349609, 35.898876, 48.585255>,  <41.329475, 36.296272, 48.626141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349609, 35.898876, 48.585255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106099, 0.096451, -0.989667,
		0.993081, 0.060657, -0.100554,
		0.050332, -0.993488, -0.102219,
		41.364708, 35.600830, 48.554588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764431, 36.256306, 48.074371>,  <41.329475, 36.296272, 48.626141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764431, 36.256306, 48.074371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564125, 35.910954, 48.099060>,  <41.443943, 35.703743, 48.113873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564125, 35.910954, 48.099060>,  <41.764431, 36.256306, 48.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564125, 35.910954, 48.099060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101019, -0.012529, -0.994806,
		0.859668, -0.504400, -0.080943,
		-0.500766, -0.863379, 0.061725,
		41.413895, 35.651939, 48.117577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031845, 35.866863, 47.522724>,  <41.764431, 36.256306, 48.074371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031845, 35.866863, 47.522724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691803, 35.685871, 47.630493>,  <41.487778, 35.577274, 47.695152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691803, 35.685871, 47.630493>,  <42.031845, 35.866863, 47.522724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691803, 35.685871, 47.630493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179512, -0.231977, -0.956014,
		0.495079, -0.861072, 0.115978,
		-0.850101, -0.452483, 0.269420,
		41.436771, 35.550125, 47.711319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949181, 35.185040, 47.075184>,  <42.031845, 35.866863, 47.522724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949181, 35.185040, 47.075184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589222, 35.261486, 47.231979>,  <41.373245, 35.307354, 47.326057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589222, 35.261486, 47.231979>,  <41.949181, 35.185040, 47.075184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589222, 35.261486, 47.231979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432731, -0.279920, -0.856965,
		-0.054052, -0.940809, 0.334601,
		-0.899901, 0.191113, 0.391986,
		41.319252, 35.318821, 47.349575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523956, 34.554428, 46.920959>,  <41.949181, 35.185040, 47.075184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523956, 34.554428, 46.920959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254028, 34.846264, 46.965351>,  <41.092072, 35.021366, 46.991985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254028, 34.846264, 46.965351>,  <41.523956, 34.554428, 46.920959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254028, 34.846264, 46.965351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444192, -0.281468, -0.850570,
		-0.589334, -0.623274, 0.514019,
		-0.674817, 0.729593, 0.110975,
		41.051582, 35.065144, 46.998642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946133, 34.244068, 46.719807>,  <41.523956, 34.554428, 46.920959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946133, 34.244068, 46.719807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842178, 34.630322, 46.718197>,  <40.779804, 34.862072, 46.717232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842178, 34.630322, 46.718197>,  <40.946133, 34.244068, 46.719807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842178, 34.630322, 46.718197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518930, -0.143173, -0.842741,
		-0.814354, -0.216928, 0.538303,
		-0.259885, 0.965631, -0.004023,
		40.764214, 34.920010, 46.716991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198383, 34.393440, 46.794872>,  <40.946133, 34.244068, 46.719807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198383, 34.393440, 46.794872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365768, 34.705154, 46.608280>,  <40.466202, 34.892181, 46.496323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365768, 34.705154, 46.608280>,  <40.198383, 34.393440, 46.794872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365768, 34.705154, 46.608280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644405, -0.107186, -0.757134,
		-0.640021, 0.617440, 0.457319,
		0.418467, 0.779281, -0.466484,
		40.491310, 34.938938, 46.468334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680996, 34.634686, 46.372959>,  <40.198383, 34.393440, 46.794872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680996, 34.634686, 46.372959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994370, 34.826767, 46.215157>,  <40.182392, 34.942017, 46.120476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994370, 34.826767, 46.215157>,  <39.680996, 34.634686, 46.372959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994370, 34.826767, 46.215157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380972, -0.130453, -0.915337,
		-0.491014, 0.867402, 0.080744,
		0.783432, 0.480204, -0.394510,
		40.229401, 34.970829, 46.096802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454895, 35.207951, 46.014996>,  <39.680996, 34.634686, 46.372959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454895, 35.207951, 46.014996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805115, 35.102688, 45.852932>,  <40.015247, 35.039532, 45.755692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805115, 35.102688, 45.852932>,  <39.454895, 35.207951, 46.014996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805115, 35.102688, 45.852932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429725, -0.040954, -0.902031,
		0.220780, 0.963884, -0.148942,
		0.875553, -0.263155, -0.405163,
		40.067780, 35.023743, 45.731384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423676, 35.647961, 45.481056>,  <39.454895, 35.207951, 46.014996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423676, 35.647961, 45.481056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685471, 35.359547, 45.390060>,  <39.842548, 35.186497, 45.335464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685471, 35.359547, 45.390060>,  <39.423676, 35.647961, 45.481056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685471, 35.359547, 45.390060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392168, -0.066501, -0.917487,
		0.646415, 0.689696, -0.326293,
		0.654486, -0.721039, -0.227489,
		39.881817, 35.143234, 45.321815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759258, 35.886784, 44.920612>,  <39.423676, 35.647961, 45.481056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759258, 35.886784, 44.920612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823601, 35.492641, 44.897972>,  <39.862206, 35.256157, 44.884388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823601, 35.492641, 44.897972>,  <39.759258, 35.886784, 44.920612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823601, 35.492641, 44.897972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238759, 0.016796, -0.970933,
		0.957663, 0.169699, -0.232560,
		0.160860, -0.985353, -0.056602,
		39.871861, 35.197037, 44.880993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323612, 35.794003, 44.423710>,  <39.759258, 35.886784, 44.920612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323612, 35.794003, 44.423710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116951, 35.452049, 44.442696>,  <39.992954, 35.246880, 44.454086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116951, 35.452049, 44.442696>,  <40.323612, 35.794003, 44.423710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116951, 35.452049, 44.442696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121002, 0.018021, -0.992489,
		0.847604, -0.518512, -0.112753,
		-0.516649, -0.854880, 0.047466,
		39.961956, 35.195583, 44.456936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462799, 35.535561, 43.788826>,  <40.323612, 35.794003, 44.423710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462799, 35.535561, 43.788826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165031, 35.283306, 43.876587>,  <39.986370, 35.131954, 43.929245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165031, 35.283306, 43.876587>,  <40.462799, 35.535561, 43.788826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165031, 35.283306, 43.876587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147543, -0.165109, -0.975177,
		0.651206, -0.758313, 0.029865,
		-0.744421, -0.630635, 0.219404,
		39.941704, 35.094116, 43.942410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554749, 34.920658, 43.339771>,  <40.462799, 35.535561, 43.788826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554749, 34.920658, 43.339771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172012, 34.908024, 43.455326>,  <39.942371, 34.900444, 43.524658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172012, 34.908024, 43.455326>,  <40.554749, 34.920658, 43.339771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172012, 34.908024, 43.455326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264596, -0.316369, -0.910988,
		0.120169, -0.948110, 0.294358,
		-0.956843, -0.031587, 0.288884,
		39.884960, 34.898548, 43.541992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210796, 34.328011, 43.006142>,  <40.554749, 34.920658, 43.339771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210796, 34.328011, 43.006142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876720, 34.535915, 43.078049>,  <39.676277, 34.660656, 43.121193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876720, 34.535915, 43.078049>,  <40.210796, 34.328011, 43.006142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876720, 34.535915, 43.078049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299398, -0.155510, -0.941370,
		-0.461330, -0.840040, 0.285494,
		-0.835186, 0.519759, 0.179765,
		39.626163, 34.691841, 43.131977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626453, 33.933056, 42.774082>,  <40.210796, 34.328011, 43.006142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626453, 33.933056, 42.774082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492588, 34.308983, 42.801620>,  <39.412270, 34.534538, 42.818142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492588, 34.308983, 42.801620>,  <39.626453, 33.933056, 42.774082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492588, 34.308983, 42.801620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480659, -0.107408, -0.870305,
		-0.810535, -0.324349, 0.487678,
		-0.334663, 0.939820, 0.068843,
		39.392189, 34.590927, 42.822273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902771, 33.935104, 42.672226>,  <39.626453, 33.933056, 42.774082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902771, 33.935104, 42.672226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045612, 34.297226, 42.580223>,  <39.131317, 34.514500, 42.525021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045612, 34.297226, 42.580223>,  <38.902771, 33.935104, 42.672226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045612, 34.297226, 42.580223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379008, -0.084625, -0.921516,
		-0.853717, 0.416248, 0.312898,
		0.357100, 0.905305, -0.230007,
		39.152740, 34.568817, 42.511219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371391, 34.311623, 42.350647>,  <38.902771, 33.935104, 42.672226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371391, 34.311623, 42.350647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703579, 34.502666, 42.235958>,  <38.902893, 34.617294, 42.167145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703579, 34.502666, 42.235958>,  <38.371391, 34.311623, 42.350647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703579, 34.502666, 42.235958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356116, 0.059377, -0.932554,
		-0.428371, 0.876564, 0.219395,
		0.830470, 0.477609, -0.286723,
		38.952721, 34.645950, 42.149940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164333, 34.929279, 42.027786>,  <38.371391, 34.311623, 42.350647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164333, 34.929279, 42.027786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536247, 34.857906, 41.898998>,  <38.759396, 34.815083, 41.821724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536247, 34.857906, 41.898998>,  <38.164333, 34.929279, 42.027786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536247, 34.857906, 41.898998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295809, 0.158422, -0.942019,
		0.219095, 0.971115, 0.094516,
		0.929782, -0.178433, -0.321974,
		38.815182, 34.804375, 41.802406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255661, 35.332199, 41.411255>,  <38.164333, 34.929279, 42.027786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255661, 35.332199, 41.411255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574486, 35.095268, 41.364208>,  <38.765781, 34.953110, 41.335979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574486, 35.095268, 41.364208>,  <38.255661, 35.332199, 41.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574486, 35.095268, 41.364208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067105, 0.106680, -0.992026,
		0.600155, 0.798601, 0.045283,
		0.797064, -0.592331, -0.117614,
		38.813606, 34.917568, 41.328922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535206, 35.565327, 40.875008>,  <38.255661, 35.332199, 41.411255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535206, 35.565327, 40.875008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741169, 35.223129, 40.896923>,  <38.864746, 35.017811, 40.910072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741169, 35.223129, 40.896923>,  <38.535206, 35.565327, 40.875008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741169, 35.223129, 40.896923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094358, -0.006968, -0.995514,
		0.852037, 0.517767, 0.077135,
		0.514907, -0.855493, 0.054793,
		38.895641, 34.966480, 40.913361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180309, 35.673798, 40.600658>,  <38.535206, 35.565327, 40.875008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180309, 35.673798, 40.600658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102856, 35.283531, 40.559525>,  <39.056385, 35.049370, 40.534843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102856, 35.283531, 40.559525>,  <39.180309, 35.673798, 40.600658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102856, 35.283531, 40.559525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119610, 0.080556, -0.989547,
		0.973755, -0.203911, 0.101101,
		-0.193635, -0.975669, -0.102832,
		39.044765, 34.990829, 40.528675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624649, 35.385319, 40.103607>,  <39.180309, 35.673798, 40.600658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624649, 35.385319, 40.103607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299274, 35.153099, 40.117973>,  <39.104050, 35.013767, 40.126595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299274, 35.153099, 40.117973>,  <39.624649, 35.385319, 40.103607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299274, 35.153099, 40.117973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052544, -0.134838, -0.989473,
		0.579283, -0.802982, 0.140186,
		-0.813431, -0.580551, 0.035917,
		39.055244, 34.978935, 40.128750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805923, 34.826942, 39.681076>,  <39.624649, 35.385319, 40.103607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805923, 34.826942, 39.681076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406879, 34.807777, 39.700962>,  <39.167454, 34.796276, 39.712894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406879, 34.807777, 39.700962>,  <39.805923, 34.826942, 39.681076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406879, 34.807777, 39.700962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045082, -0.093320, -0.994615,
		0.052298, -0.994482, 0.090938,
		-0.997614, -0.047916, 0.049714,
		39.107594, 34.793404, 39.715878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496925, 34.304626, 39.255764>,  <39.805923, 34.826942, 39.681076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496925, 34.304626, 39.255764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192341, 34.560364, 39.298512>,  <39.009590, 34.713806, 39.324162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192341, 34.560364, 39.298512>,  <39.496925, 34.304626, 39.255764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192341, 34.560364, 39.298512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151533, -0.015273, -0.988334,
		-0.630253, -0.768769, 0.108512,
		-0.761458, 0.639344, 0.106868,
		38.963902, 34.752167, 39.330570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993855, 34.080002, 38.720951>,  <39.496925, 34.304626, 39.255764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993855, 34.080002, 38.720951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865196, 34.440544, 38.836945>,  <38.788002, 34.656872, 38.906540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865196, 34.440544, 38.836945>,  <38.993855, 34.080002, 38.720951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865196, 34.440544, 38.836945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230558, 0.222486, -0.947282,
		-0.918360, -0.371550, 0.136253,
		-0.321648, 0.901360, 0.289986,
		38.768703, 34.710953, 38.923939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345745, 34.199379, 38.418770>,  <38.993855, 34.080002, 38.720951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345745, 34.199379, 38.418770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492062, 34.565243, 38.487587>,  <38.579853, 34.784760, 38.528877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492062, 34.565243, 38.487587>,  <38.345745, 34.199379, 38.418770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492062, 34.565243, 38.487587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159841, 0.243848, -0.956551,
		-0.916868, 0.322399, 0.235397,
		0.365792, 0.914657, 0.172044,
		38.601799, 34.839642, 38.539200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103687, 34.620872, 37.848450>,  <38.345745, 34.199379, 38.418770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103687, 34.620872, 37.848450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374664, 34.864197, 38.013874>,  <38.537251, 35.010189, 38.113129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374664, 34.864197, 38.013874>,  <38.103687, 34.620872, 37.848450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374664, 34.864197, 38.013874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065528, 0.510089, -0.857622,
		-0.732652, 0.608089, 0.305694,
		0.677441, 0.608307, 0.413564,
		38.577896, 35.046688, 38.137943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858360, 35.264008, 37.726780>,  <38.103687, 34.620872, 37.848450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858360, 35.264008, 37.726780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249664, 35.312263, 37.794250>,  <38.484447, 35.341217, 37.834732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249664, 35.312263, 37.794250>,  <37.858360, 35.264008, 37.726780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249664, 35.312263, 37.794250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065477, 0.592093, -0.803205,
		-0.196771, 0.796789, 0.571322,
		0.978261, 0.120640, 0.168678,
		38.543144, 35.348454, 37.844852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921234, 35.944366, 37.525078>,  <37.858360, 35.264008, 37.726780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921234, 35.944366, 37.525078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290134, 35.789989, 37.516148>,  <38.511475, 35.697365, 37.510788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290134, 35.789989, 37.516148>,  <37.921234, 35.944366, 37.525078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290134, 35.789989, 37.516148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216709, 0.563949, -0.796868,
		0.320134, 0.730077, 0.603741,
		0.922254, -0.385940, -0.022325,
		38.566811, 35.674206, 37.509449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322773, 36.489162, 37.380688>,  <37.921234, 35.944366, 37.525078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322773, 36.489162, 37.380688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564381, 36.180286, 37.301804>,  <38.709347, 35.994961, 37.254475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564381, 36.180286, 37.301804>,  <38.322773, 36.489162, 37.380688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564381, 36.180286, 37.301804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430906, 0.524583, -0.734256,
		0.670434, 0.358526, 0.649597,
		0.604018, -0.772186, -0.197207,
		38.745586, 35.948631, 37.242641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913944, 36.781727, 37.314751>,  <38.322773, 36.489162, 37.380688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913944, 36.781727, 37.314751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953270, 36.439049, 37.112206>,  <38.976864, 36.233440, 36.990677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953270, 36.439049, 37.112206>,  <38.913944, 36.781727, 37.314751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953270, 36.439049, 37.112206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322235, 0.508820, -0.798290,
		0.941541, -0.084686, 0.326082,
		0.098313, -0.856697, -0.506363,
		38.982765, 36.182041, 36.960297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504169, 36.935532, 36.971508>,  <38.913944, 36.781727, 37.314751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504169, 36.935532, 36.971508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309029, 36.631950, 36.799004>,  <39.191944, 36.449802, 36.695499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309029, 36.631950, 36.799004>,  <39.504169, 36.935532, 36.971508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309029, 36.631950, 36.799004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302123, 0.316703, -0.899122,
		0.818976, -0.568933, 0.074793,
		-0.487853, -0.758956, -0.431259,
		39.162674, 36.404263, 36.669624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871311, 36.735664, 36.477955>,  <39.504169, 36.935532, 36.971508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871311, 36.735664, 36.477955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528561, 36.573898, 36.350071>,  <39.322910, 36.476837, 36.273338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528561, 36.573898, 36.350071>,  <39.871311, 36.735664, 36.477955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528561, 36.573898, 36.350071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214709, 0.283862, -0.934517,
		0.468691, -0.869406, -0.156401,
		-0.856872, -0.404419, -0.319713,
		39.271500, 36.452572, 36.254158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105061, 36.377636, 36.030876>,  <39.871311, 36.735664, 36.477955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105061, 36.377636, 36.030876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723793, 36.400024, 35.911987>,  <39.495033, 36.413456, 35.840652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723793, 36.400024, 35.911987>,  <40.105061, 36.377636, 36.030876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723793, 36.400024, 35.911987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296239, -0.025280, -0.954779,
		-0.060957, -0.998112, 0.007514,
		-0.953166, 0.055975, -0.297221,
		39.437843, 36.416817, 35.822823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874924, 35.877785, 35.586147>,  <40.105061, 36.377636, 36.030876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874924, 35.877785, 35.586147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667076, 36.210800, 35.509331>,  <39.542366, 36.410610, 35.463242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667076, 36.210800, 35.509331>,  <39.874924, 35.877785, 35.586147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667076, 36.210800, 35.509331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371466, 0.017721, -0.928277,
		-0.769419, -0.553690, -0.318467,
		-0.519621, 0.832534, -0.192042,
		39.511189, 36.460560, 35.451717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317196, 35.808079, 35.138172>,  <39.874924, 35.877785, 35.586147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317196, 35.808079, 35.138172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525391, 36.149353, 35.124546>,  <39.650307, 36.354118, 35.116371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525391, 36.149353, 35.124546>,  <39.317196, 35.808079, 35.138172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525391, 36.149353, 35.124546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145864, -0.128156, -0.980969,
		-0.841316, 0.505616, -0.191153,
		0.520491, 0.853187, -0.034069,
		39.681538, 36.405308, 35.114326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997612, 36.192554, 34.577251>,  <39.317196, 35.808079, 35.138172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997612, 36.192554, 34.577251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376484, 36.299522, 34.648048>,  <39.603809, 36.363705, 34.690525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376484, 36.299522, 34.648048>,  <38.997612, 36.192554, 34.577251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376484, 36.299522, 34.648048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195865, -0.045400, -0.979579,
		-0.253928, 0.962508, -0.095382,
		0.947184, 0.267425, 0.176994,
		39.660641, 36.379749, 34.701145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187359, 36.744465, 34.149197>,  <38.997612, 36.192554, 34.577251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187359, 36.744465, 34.149197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504555, 36.527866, 34.260876>,  <39.694870, 36.397907, 34.327881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504555, 36.527866, 34.260876>,  <39.187359, 36.744465, 34.149197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504555, 36.527866, 34.260876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309630, -0.036463, -0.950158,
		0.524689, 0.839910, 0.138750,
		0.792988, -0.541499, 0.279194,
		39.742451, 36.365417, 34.344635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620564, 36.959637, 33.650723>,  <39.187359, 36.744465, 34.149197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620564, 36.959637, 33.650723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791771, 36.640934, 33.821358>,  <39.894497, 36.449711, 33.923740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791771, 36.640934, 33.821358>,  <39.620564, 36.959637, 33.650723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791771, 36.640934, 33.821358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502790, -0.182298, -0.844967,
		0.751000, 0.576146, 0.322575,
		0.428019, -0.796758, 0.426587,
		39.920177, 36.401905, 33.949333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329720, 37.021389, 33.647751>,  <39.620564, 36.959637, 33.650723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329720, 37.021389, 33.647751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231842, 36.633801, 33.633797>,  <40.173115, 36.401249, 33.625423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231842, 36.633801, 33.633797>,  <40.329720, 37.021389, 33.647751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231842, 36.633801, 33.633797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705344, -0.153206, -0.692111,
		0.665291, -0.193964, 0.720948,
		-0.244698, -0.968971, -0.034885,
		40.158432, 36.343109, 33.623333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963451, 36.643719, 33.626362>,  <40.329720, 37.021389, 33.647751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963451, 36.643719, 33.626362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669891, 36.439590, 33.447048>,  <40.493755, 36.317116, 33.339458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669891, 36.439590, 33.447048>,  <40.963451, 36.643719, 33.626362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669891, 36.439590, 33.447048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602665, -0.184763, -0.776310,
		0.313337, -0.839904, 0.443149,
		-0.733904, -0.510317, -0.448287,
		40.449718, 36.286495, 33.312561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206036, 36.054119, 33.379421>,  <40.963451, 36.643719, 33.626362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206036, 36.054119, 33.379421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883167, 36.123814, 33.153816>,  <40.689445, 36.165630, 33.018452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883167, 36.123814, 33.153816>,  <41.206036, 36.054119, 33.379421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883167, 36.123814, 33.153816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568917, -0.025311, -0.822005,
		-0.157503, -0.984378, -0.078698,
		-0.807172, 0.174241, -0.564016,
		40.641014, 36.176086, 32.984612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726059, 36.526218, 33.713013>,  <41.206036, 36.054119, 33.379421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726059, 36.526218, 33.713013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075829, 36.667202, 33.846375>,  <42.285690, 36.751793, 33.926392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075829, 36.667202, 33.846375>,  <41.726059, 36.526218, 33.713013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075829, 36.667202, 33.846375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003175, -0.683022, 0.730391,
		0.485154, -0.639729, -0.596131,
		0.874423, 0.352460, 0.333402,
		42.338154, 36.772942, 33.946396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237221, 35.991325, 33.843109>,  <41.726059, 36.526218, 33.713013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237221, 35.991325, 33.843109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337212, 36.297386, 34.080444>,  <42.397205, 36.481022, 34.222843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337212, 36.297386, 34.080444>,  <42.237221, 35.991325, 33.843109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337212, 36.297386, 34.080444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155846, -0.636597, 0.755286,
		0.955627, -0.096337, -0.278382,
		0.249979, 0.765156, 0.593335,
		42.412205, 36.526932, 34.258446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708992, 35.706322, 34.309456>,  <42.237221, 35.991325, 33.843109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708992, 35.706322, 34.309456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654961, 36.060841, 34.486652>,  <42.622543, 36.273552, 34.592968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654961, 36.060841, 34.486652>,  <42.708992, 35.706322, 34.309456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654961, 36.060841, 34.486652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402163, -0.359561, 0.842010,
		0.905550, 0.291886, -0.307867,
		-0.135074, 0.886295, 0.442987,
		42.614437, 36.326729, 34.619549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387985, 35.943291, 34.696426>,  <42.708992, 35.706322, 34.309456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387985, 35.943291, 34.696426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073647, 36.124382, 34.864941>,  <42.885044, 36.233036, 34.966049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073647, 36.124382, 34.864941>,  <43.387985, 35.943291, 34.696426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073647, 36.124382, 34.864941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276895, -0.351534, 0.894289,
		0.552965, 0.819427, 0.150895,
		-0.785849, 0.452729, 0.421281,
		42.837891, 36.260201, 34.991325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573669, 36.317024, 35.245609>,  <43.387985, 35.943291, 34.696426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573669, 36.317024, 35.245609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189774, 36.235317, 35.322731>,  <42.959435, 36.186291, 35.369003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189774, 36.235317, 35.322731>,  <43.573669, 36.317024, 35.245609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189774, 36.235317, 35.322731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276338, -0.563597, 0.778457,
		-0.050354, 0.800395, 0.597355,
		-0.959740, -0.204271, 0.192800,
		42.901852, 36.174034, 35.380569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493912, 36.400078, 35.962692>,  <43.573669, 36.317024, 35.245609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493912, 36.400078, 35.962692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193573, 36.167019, 35.838272>,  <43.013371, 36.027184, 35.763622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193573, 36.167019, 35.838272>,  <43.493912, 36.400078, 35.962692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193573, 36.167019, 35.838272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084426, -0.551752, 0.829724,
		-0.655054, 0.596738, 0.463474,
		-0.750851, -0.582643, -0.311047,
		42.968319, 35.992226, 35.744957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067459, 36.250130, 36.463867>,  <43.493912, 36.400078, 35.962692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067459, 36.250130, 36.463867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969059, 35.936859, 36.235439>,  <42.910019, 35.748898, 36.098385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969059, 35.936859, 36.235439>,  <43.067459, 36.250130, 36.463867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969059, 35.936859, 36.235439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058570, -0.600108, 0.797772,
		-0.967497, 0.162808, 0.193500,
		-0.246004, -0.783175, -0.571067,
		42.895256, 35.701908, 36.064117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518230, 35.898716, 36.804173>,  <43.067459, 36.250130, 36.463867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518230, 35.898716, 36.804173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677567, 35.632381, 36.551826>,  <42.773170, 35.472580, 36.400421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677567, 35.632381, 36.551826>,  <42.518230, 35.898716, 36.804173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677567, 35.632381, 36.551826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050785, -0.702741, 0.709631,
		-0.915829, -0.250639, -0.313747,
		0.398344, -0.665834, -0.630862,
		42.797070, 35.432632, 36.362568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000992, 35.316746, 36.810730>,  <42.518230, 35.898716, 36.804173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000992, 35.316746, 36.810730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343697, 35.169502, 36.666252>,  <42.549320, 35.081158, 36.579563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343697, 35.169502, 36.666252>,  <42.000992, 35.316746, 36.810730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343697, 35.169502, 36.666252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025391, -0.669421, 0.742449,
		-0.515092, -0.645271, -0.564185,
		0.856759, -0.368105, -0.361197,
		42.600723, 35.059071, 36.557892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917641, 34.582123, 36.865356>,  <42.000992, 35.316746, 36.810730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917641, 34.582123, 36.865356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305988, 34.676880, 36.879791>,  <42.538998, 34.733734, 36.888454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305988, 34.676880, 36.879791>,  <41.917641, 34.582123, 36.865356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305988, 34.676880, 36.879791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074322, -0.440880, 0.894484,
		0.227806, -0.865741, -0.445642,
		0.970866, 0.236890, 0.036092,
		42.597248, 34.747948, 36.890617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237572, 33.940460, 37.093243>,  <41.917641, 34.582123, 36.865356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237572, 33.940460, 37.093243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537579, 34.199898, 37.145103>,  <42.717583, 34.355560, 37.176220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537579, 34.199898, 37.145103>,  <42.237572, 33.940460, 37.093243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537579, 34.199898, 37.145103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246747, -0.456239, 0.854963,
		0.613673, -0.609244, -0.502223,
		0.750014, 0.648590, 0.129652,
		42.762585, 34.394474, 37.183998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863300, 33.555893, 37.184559>,  <42.237572, 33.940460, 37.093243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863300, 33.555893, 37.184559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970188, 33.910328, 37.336056>,  <43.034321, 34.122990, 37.426956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970188, 33.910328, 37.336056>,  <42.863300, 33.555893, 37.184559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970188, 33.910328, 37.336056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462740, -0.462750, 0.756131,
		0.845261, -0.026792, -0.533682,
		0.267220, 0.886084, 0.378747,
		43.050354, 34.176151, 37.449680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567554, 33.421917, 37.480251>,  <42.863300, 33.555893, 37.184559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567554, 33.421917, 37.480251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432991, 33.749538, 37.666149>,  <43.352253, 33.946110, 37.777687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432991, 33.749538, 37.666149>,  <43.567554, 33.421917, 37.480251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432991, 33.749538, 37.666149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384418, -0.331074, 0.861750,
		0.859680, 0.468557, -0.203481,
		-0.336412, 0.819051, 0.464740,
		43.332066, 33.995255, 37.805573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074375, 33.635387, 37.881702>,  <43.567554, 33.421917, 37.480251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074375, 33.635387, 37.881702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767197, 33.821209, 38.058090>,  <43.582890, 33.932701, 38.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767197, 33.821209, 38.058090>,  <44.074375, 33.635387, 37.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767197, 33.821209, 38.058090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317572, -0.321725, 0.891987,
		0.556247, 0.825034, 0.099537,
		-0.767943, 0.464555, 0.440966,
		43.536812, 33.960575, 38.190380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385101, 34.165848, 38.428642>,  <44.074375, 33.635387, 37.881702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385101, 34.165848, 38.428642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011356, 34.057293, 38.521011>,  <43.787109, 33.992161, 38.576431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011356, 34.057293, 38.521011>,  <44.385101, 34.165848, 38.428642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011356, 34.057293, 38.521011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291701, -0.210328, 0.933099,
		-0.204657, 0.939209, 0.275684,
		-0.934359, -0.271383, 0.230923,
		43.731049, 33.975880, 38.590290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343224, 34.564686, 39.036602>,  <44.385101, 34.165848, 38.428642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343224, 34.564686, 39.036602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044594, 34.298679, 39.028763>,  <43.865417, 34.139076, 39.024059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044594, 34.298679, 39.028763>,  <44.343224, 34.564686, 39.036602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044594, 34.298679, 39.028763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244231, -0.301344, 0.921706,
		-0.618854, 0.683335, 0.387393,
		-0.746573, -0.665015, -0.019596,
		43.820621, 34.099174, 39.022884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128670, 34.669273, 39.642616>,  <44.343224, 34.564686, 39.036602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128670, 34.669273, 39.642616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936283, 34.328716, 39.558899>,  <43.820850, 34.124382, 39.508667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936283, 34.328716, 39.558899>,  <44.128670, 34.669273, 39.642616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936283, 34.328716, 39.558899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270440, -0.371149, 0.888319,
		-0.833984, 0.370653, 0.408761,
		-0.480970, -0.851390, -0.209293,
		43.791992, 34.073299, 39.496113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637127, 34.547817, 40.197639>,  <44.128670, 34.669273, 39.642616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637127, 34.547817, 40.197639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730530, 34.193832, 40.036484>,  <43.786572, 33.981441, 39.939789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730530, 34.193832, 40.036484>,  <43.637127, 34.547817, 40.197639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730530, 34.193832, 40.036484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257060, -0.343421, 0.903317,
		-0.937761, -0.314494, 0.147298,
		0.233503, -0.884960, -0.402891,
		43.800579, 33.928345, 39.915615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402828, 34.180012, 40.748356>,  <43.637127, 34.547817, 40.197639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402828, 34.180012, 40.748356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643944, 33.942963, 40.534649>,  <43.788612, 33.800732, 40.406425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643944, 33.942963, 40.534649>,  <43.402828, 34.180012, 40.748356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643944, 33.942963, 40.534649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370628, -0.385012, 0.845222,
		-0.706598, -0.707506, -0.012439,
		0.602789, -0.592622, -0.534270,
		43.824780, 33.765175, 40.374367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183022, 33.456356, 40.902584>,  <43.402828, 34.180012, 40.748356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183022, 33.456356, 40.902584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565804, 33.457634, 40.786491>,  <43.795471, 33.458401, 40.716835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565804, 33.457634, 40.786491>,  <43.183022, 33.456356, 40.902584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565804, 33.457634, 40.786491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287893, -0.137613, 0.947724,
		-0.036911, -0.990481, -0.132609,
		0.956951, 0.003196, -0.290232,
		43.852890, 33.458591, 40.699421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451988, 32.822559, 41.078194>,  <43.183022, 33.456356, 40.902584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451988, 32.822559, 41.078194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697044, 33.138699, 41.076206>,  <43.844078, 33.328381, 41.075012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697044, 33.138699, 41.076206>,  <43.451988, 32.822559, 41.078194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697044, 33.138699, 41.076206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295543, -0.223249, 0.928878,
		0.733023, -0.570540, -0.370352,
		0.612643, 0.790344, -0.004973,
		43.880836, 33.375801, 41.074715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035343, 32.683167, 41.561512>,  <43.451988, 32.822559, 41.078194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035343, 32.683167, 41.561512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104805, 33.073185, 41.506184>,  <44.146481, 33.307198, 41.472988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104805, 33.073185, 41.506184>,  <44.035343, 32.683167, 41.561512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104805, 33.073185, 41.506184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530702, 0.025664, 0.847170,
		0.829578, -0.220518, -0.513002,
		0.173651, 0.975045, -0.138320,
		44.156898, 33.365700, 41.464687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720303, 32.793320, 41.735966>,  <44.035343, 32.683167, 41.561512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720303, 32.793320, 41.735966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504509, 33.126366, 41.786102>,  <44.375034, 33.326195, 41.816185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504509, 33.126366, 41.786102>,  <44.720303, 32.793320, 41.735966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504509, 33.126366, 41.786102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378730, 0.106999, 0.919301,
		0.752013, 0.543416, -0.373061,
		-0.539480, 0.832616, 0.125344,
		44.342667, 33.376152, 41.823704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822330, 32.565750, 42.424919>,  <44.720303, 32.793320, 41.735966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822330, 32.565750, 42.424919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175190, 32.753078, 42.444885>,  <45.386906, 32.865475, 42.456863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175190, 32.753078, 42.444885>,  <44.822330, 32.565750, 42.424919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175190, 32.753078, 42.444885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418044, 0.827417, -0.374993,
		-0.216914, 0.309934, 0.925683,
		0.882149, 0.468318, 0.049913,
		45.439835, 32.893574, 42.459858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889221, 33.203091, 42.948029>,  <44.822330, 32.565750, 42.424919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889221, 33.203091, 42.948029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063683, 33.217583, 42.588371>,  <45.168358, 33.226276, 42.372578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063683, 33.217583, 42.588371>,  <44.889221, 33.203091, 42.948029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063683, 33.217583, 42.588371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741490, 0.580606, -0.336288,
		0.509865, 0.813378, 0.280096,
		0.436154, 0.036226, -0.899142,
		45.194530, 33.228451, 42.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961357, 33.947010, 42.644047>,  <44.889221, 33.203091, 42.948029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961357, 33.947010, 42.644047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923424, 33.679096, 42.349457>,  <44.900661, 33.518349, 42.172703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923424, 33.679096, 42.349457>,  <44.961357, 33.947010, 42.644047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923424, 33.679096, 42.349457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693298, 0.575336, -0.433967,
		0.714384, 0.469439, -0.518925,
		-0.094835, -0.669788, -0.736471,
		44.894974, 33.478161, 42.128517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039886, 34.332401, 41.998341>,  <44.961357, 33.947010, 42.644047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039886, 34.332401, 41.998341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821304, 33.997425, 41.994926>,  <44.690155, 33.796440, 41.992878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821304, 33.997425, 41.994926>,  <45.039886, 34.332401, 41.998341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821304, 33.997425, 41.994926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800521, 0.525306, -0.288479,
		0.246070, -0.150807, -0.957448,
		-0.546457, -0.837443, -0.008538,
		44.657368, 33.746193, 41.992363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330788, 34.631962, 41.796646>,  <45.039886, 34.332401, 41.998341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330788, 34.631962, 41.796646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188282, 34.264198, 41.863285>,  <44.102779, 34.043541, 41.903271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188282, 34.264198, 41.863285>,  <44.330788, 34.631962, 41.796646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188282, 34.264198, 41.863285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913534, 0.305277, -0.268816,
		0.196293, -0.247965, -0.948674,
		-0.356265, -0.919412, 0.166600,
		44.081402, 33.988373, 41.913265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492962, 35.380535, 41.903908>,  <44.330788, 34.631962, 41.796646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492962, 35.380535, 41.903908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806057, 35.131916, 41.891205>,  <44.993912, 34.982746, 41.883583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806057, 35.131916, 41.891205>,  <44.492962, 35.380535, 41.903908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806057, 35.131916, 41.891205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298949, 0.420250, -0.856749,
		0.545851, 0.661116, 0.514755,
		0.782736, -0.621543, -0.031754,
		45.040878, 34.945454, 41.881680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061478, 35.777107, 41.767464>,  <44.492962, 35.380535, 41.903908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061478, 35.777107, 41.767464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137997, 35.401985, 41.651588>,  <45.183907, 35.176910, 41.582062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137997, 35.401985, 41.651588>,  <45.061478, 35.777107, 41.767464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137997, 35.401985, 41.651588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363977, 0.341876, -0.866396,
		0.911552, 0.060296, 0.406740,
		0.191295, -0.937809, -0.289691,
		45.195385, 35.120644, 41.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740463, 36.329304, 41.478539>,  <45.061478, 35.777107, 41.767464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740463, 36.329304, 41.478539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342812, 36.286209, 41.474522>,  <45.104221, 36.260353, 41.472111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342812, 36.286209, 41.474522>,  <45.740463, 36.329304, 41.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342812, 36.286209, 41.474522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001574, 0.078359, -0.996924,
		0.108200, -0.991086, -0.077730,
		-0.994128, -0.107745, -0.010038,
		45.044575, 36.253887, 41.471512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573914, 35.774780, 40.978718>,  <45.740463, 36.329304, 41.478539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573914, 35.774780, 40.978718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253685, 36.013184, 41.003586>,  <45.061550, 36.156227, 41.018509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253685, 36.013184, 41.003586>,  <45.573914, 35.774780, 40.978718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253685, 36.013184, 41.003586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137399, 0.283560, -0.949060,
		-0.583277, -0.751245, -0.308900,
		-0.800568, 0.596008, 0.062174,
		45.013515, 36.191986, 41.022240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267883, 35.631596, 40.334293>,  <45.573914, 35.774780, 40.978718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267883, 35.631596, 40.334293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077927, 35.963673, 40.451088>,  <44.963951, 36.162918, 40.521164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077927, 35.963673, 40.451088>,  <45.267883, 35.631596, 40.334293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077927, 35.963673, 40.451088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114195, 0.270853, -0.955823,
		-0.872602, -0.487259, -0.033823,
		-0.474894, 0.830191, 0.291990,
		44.935459, 36.212730, 40.538685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687737, 35.691391, 39.880363>,  <45.267883, 35.631596, 40.334293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687737, 35.691391, 39.880363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764465, 36.054962, 40.028446>,  <44.810501, 36.273106, 40.117298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764465, 36.054962, 40.028446>,  <44.687737, 35.691391, 39.880363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764465, 36.054962, 40.028446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161901, 0.401352, -0.901501,
		-0.967984, 0.112991, 0.224145,
		0.191822, 0.908928, 0.370209,
		44.822014, 36.327641, 40.139507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080616, 36.208199, 39.664356>,  <44.687737, 35.691391, 39.880363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080616, 36.208199, 39.664356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429832, 36.388489, 39.738800>,  <44.639362, 36.496662, 39.783466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429832, 36.388489, 39.738800>,  <44.080616, 36.208199, 39.664356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429832, 36.388489, 39.738800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101794, 0.541694, -0.834389,
		-0.476897, 0.709515, 0.518805,
		0.873045, 0.450729, 0.186108,
		44.691746, 36.523708, 39.794632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904938, 36.931541, 39.556015>,  <44.080616, 36.208199, 39.664356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904938, 36.931541, 39.556015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301643, 36.895332, 39.519753>,  <44.539665, 36.873608, 39.497993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301643, 36.895332, 39.519753>,  <43.904938, 36.931541, 39.556015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301643, 36.895332, 39.519753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027205, 0.542719, -0.839473,
		0.125192, 0.835022, 0.535784,
		0.991759, -0.090520, -0.090661,
		44.599171, 36.868176, 39.492554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064217, 37.532867, 39.212296>,  <43.904938, 36.931541, 39.556015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064217, 37.532867, 39.212296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388947, 37.306892, 39.153259>,  <44.583786, 37.171307, 39.117836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388947, 37.306892, 39.153259>,  <44.064217, 37.532867, 39.212296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388947, 37.306892, 39.153259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162194, 0.461011, -0.872446,
		0.560919, 0.684337, 0.465890,
		0.811827, -0.564936, -0.147594,
		44.632496, 37.137413, 39.108982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323269, 37.921429, 38.742310>,  <44.064217, 37.532867, 39.212296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323269, 37.921429, 38.742310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550568, 37.594017, 38.708580>,  <44.686947, 37.397572, 38.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550568, 37.594017, 38.708580>,  <44.323269, 37.921429, 38.742310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550568, 37.594017, 38.708580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377315, 0.350263, -0.857292,
		0.731252, 0.455335, 0.507878,
		0.568246, -0.818527, -0.084326,
		44.721043, 37.348457, 38.683281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899090, 38.209637, 38.499607>,  <44.323269, 37.921429, 38.742310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899090, 38.209637, 38.499607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911430, 37.817577, 38.421272>,  <44.918835, 37.582340, 38.374271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911430, 37.817577, 38.421272>,  <44.899090, 38.209637, 38.499607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911430, 37.817577, 38.421272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284054, 0.196446, -0.938468,
		0.958312, -0.026677, 0.284476,
		0.030849, -0.980152, -0.195834,
		44.920685, 37.523533, 38.362522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525291, 38.135826, 38.157650>,  <44.899090, 38.209637, 38.499607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525291, 38.135826, 38.157650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275696, 37.841774, 38.051655>,  <45.125938, 37.665344, 37.988056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275696, 37.841774, 38.051655>,  <45.525291, 38.135826, 38.157650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275696, 37.841774, 38.051655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151595, 0.218783, -0.963926,
		0.766584, -0.641654, -0.025078,
		-0.623994, -0.735128, -0.264987,
		45.088497, 37.621235, 37.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749908, 38.029194, 37.546810>,  <45.525291, 38.135826, 38.157650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749908, 38.029194, 37.546810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394127, 37.846828, 37.559502>,  <45.180656, 37.737408, 37.567116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394127, 37.846828, 37.559502>,  <45.749908, 38.029194, 37.546810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394127, 37.846828, 37.559502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008541, -0.052832, -0.998567,
		0.456941, -0.888452, 0.043098,
		-0.889456, -0.455918, 0.031729,
		45.127289, 37.710052, 37.569019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790726, 37.488434, 37.144840>,  <45.749908, 38.029194, 37.546810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790726, 37.488434, 37.144840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400665, 37.575325, 37.162262>,  <45.166630, 37.627460, 37.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400665, 37.575325, 37.162262>,  <45.790726, 37.488434, 37.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400665, 37.575325, 37.162262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033318, 0.050571, -0.998165,
		-0.219030, -0.974810, -0.042077,
		-0.975149, 0.217227, 0.043555,
		45.108120, 37.640491, 37.175327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558254, 37.112049, 36.707886>,  <45.790726, 37.488434, 37.144840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558254, 37.112049, 36.707886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272182, 37.387093, 36.758026>,  <45.100540, 37.552120, 36.788109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272182, 37.387093, 36.758026>,  <45.558254, 37.112049, 36.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272182, 37.387093, 36.758026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080251, 0.097371, -0.992007,
		-0.694322, -0.719519, -0.014455,
		-0.715176, 0.687612, 0.125349,
		45.057629, 37.593376, 36.795631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164429, 36.919533, 36.081005>,  <45.558254, 37.112049, 36.707886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164429, 36.919533, 36.081005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020954, 37.261730, 36.230389>,  <44.934872, 37.467049, 36.320019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020954, 37.261730, 36.230389>,  <45.164429, 36.919533, 36.081005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020954, 37.261730, 36.230389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247424, 0.298638, -0.921736,
		-0.900072, -0.423013, 0.104554,
		-0.358682, 0.855498, 0.373459,
		44.913349, 37.518379, 36.342426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407333, 37.067211, 35.852028>,  <45.164429, 36.919533, 36.081005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407333, 37.067211, 35.852028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607189, 37.404888, 35.929695>,  <44.727104, 37.607494, 35.976295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607189, 37.404888, 35.929695>,  <44.407333, 37.067211, 35.852028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607189, 37.404888, 35.929695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009965, 0.218532, -0.975779,
		-0.866174, 0.489476, 0.100776,
		0.499643, 0.844190, 0.194164,
		44.757084, 37.658146, 35.987946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109741, 37.507187, 35.410027>,  <44.407333, 37.067211, 35.852028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109741, 37.507187, 35.410027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434566, 37.707863, 35.529263>,  <44.629463, 37.828266, 35.600803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434566, 37.707863, 35.529263>,  <44.109741, 37.507187, 35.410027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434566, 37.707863, 35.529263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162148, 0.296717, -0.941099,
		-0.560587, 0.812569, 0.159606,
		0.812065, 0.501688, 0.298092,
		44.678185, 37.858368, 35.618690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107700, 38.143074, 34.964016>,  <44.109741, 37.507187, 35.410027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107700, 38.143074, 34.964016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470997, 38.077408, 35.117973>,  <44.688976, 38.038010, 35.210350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470997, 38.077408, 35.117973>,  <44.107700, 38.143074, 34.964016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470997, 38.077408, 35.117973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395324, 0.035113, -0.917870,
		0.137165, 0.985808, 0.096789,
		0.908243, -0.164163, 0.384897,
		44.743469, 38.028160, 35.233444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501122, 38.546787, 34.539562>,  <44.107700, 38.143074, 34.964016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501122, 38.546787, 34.539562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744144, 38.275459, 34.704853>,  <44.889957, 38.112663, 34.804028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744144, 38.275459, 34.704853>,  <44.501122, 38.546787, 34.539562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744144, 38.275459, 34.704853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390017, -0.198437, -0.899172,
		0.691922, 0.707468, 0.143992,
		0.607561, -0.678316, 0.413227,
		44.926414, 38.071964, 34.828819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004162, 38.538582, 34.092335>,  <44.501122, 38.546787, 34.539562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004162, 38.538582, 34.092335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093872, 38.201225, 34.287640>,  <45.147697, 37.998814, 34.404823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093872, 38.201225, 34.287640>,  <45.004162, 38.538582, 34.092335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093872, 38.201225, 34.287640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315616, -0.411160, -0.855181,
		0.922002, 0.345900, 0.173973,
		0.224276, -0.843387, 0.488261,
		45.161156, 37.948208, 34.434116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685116, 38.351967, 33.922894>,  <45.004162, 38.538582, 34.092335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685116, 38.351967, 33.922894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507038, 38.010143, 34.029877>,  <45.400192, 37.805050, 34.094067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507038, 38.010143, 34.029877>,  <45.685116, 38.351967, 33.922894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507038, 38.010143, 34.029877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282928, -0.417629, -0.863445,
		0.849562, -0.308729, 0.427704,
		-0.445193, -0.854560, 0.267454,
		45.373482, 37.753777, 34.110111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084736, 37.785221, 33.647469>,  <45.685116, 38.351967, 33.922894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084736, 37.785221, 33.647469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743439, 37.592419, 33.727123>,  <45.538662, 37.476738, 33.774918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743439, 37.592419, 33.727123>,  <46.084736, 37.785221, 33.647469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743439, 37.592419, 33.727123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207359, -0.663907, -0.718491,
		0.478525, -0.571751, 0.666419,
		-0.853239, -0.482004, 0.199138,
		45.487469, 37.447819, 33.786865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169376, 37.048363, 33.916477>,  <46.084736, 37.785221, 33.647469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169376, 37.048363, 33.916477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840542, 37.112114, 33.697834>,  <45.643242, 37.150364, 33.566647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840542, 37.112114, 33.697834>,  <46.169376, 37.048363, 33.916477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840542, 37.112114, 33.697834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242640, -0.770421, -0.589557,
		-0.515080, -0.617293, 0.594678,
		-0.822082, 0.159376, -0.546608,
		45.593918, 37.159927, 33.533852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423607, 36.402744, 34.181808>,  <46.169376, 37.048363, 33.916477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423607, 36.402744, 34.181808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411804, 36.005169, 34.224186>,  <46.404724, 35.766624, 34.249611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411804, 36.005169, 34.224186>,  <46.423607, 36.402744, 34.181808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411804, 36.005169, 34.224186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991886, -0.016003, 0.126119,
		-0.123659, 0.108801, 0.986342,
		-0.029507, -0.993935, 0.105939,
		46.402954, 35.706989, 34.255966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670990, 36.160507, 34.761440>,  <46.423607, 36.402744, 34.181808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670990, 36.160507, 34.761440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739807, 35.859901, 34.506687>,  <46.781097, 35.679539, 34.353836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739807, 35.859901, 34.506687>,  <46.670990, 36.160507, 34.761440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739807, 35.859901, 34.506687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984822, 0.116140, 0.128988,
		-0.022969, -0.649408, 0.760093,
		0.172043, -0.751519, -0.636883,
		46.791420, 35.634445, 34.315620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094681, 35.595566, 35.056854>,  <46.670990, 36.160507, 34.761440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094681, 35.595566, 35.056854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174740, 35.553402, 34.667225>,  <47.222775, 35.528103, 34.433445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174740, 35.553402, 34.667225>,  <47.094681, 35.595566, 35.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174740, 35.553402, 34.667225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979079, -0.015691, 0.202877,
		-0.036669, -0.994305, 0.100064,
		0.200152, -0.105410, -0.974078,
		47.234787, 35.521778, 34.375000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.840622, 35.484249, 35.249363>,  <47.094681, 35.595566, 35.056854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.840622, 35.484249, 35.249363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791058, 35.133781, 35.063046>,  <47.761318, 34.923500, 34.951256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791058, 35.133781, 35.063046>,  <47.840622, 35.484249, 35.249363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.791058, 35.133781, 35.063046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968062, -0.209839, 0.137196,
		-0.217950, -0.433922, 0.874191,
		-0.123907, -0.876173, -0.465798,
		47.753887, 34.870930, 34.923306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.094688, 38.790581, 44.601845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894253, 38.451263, 44.670315>,  <37.773991, 38.247673, 44.711395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894253, 38.451263, 44.670315>,  <38.094688, 38.790581, 44.601845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894253, 38.451263, 44.670315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167514, -0.098979, -0.980889,
		0.849027, -0.520188, -0.092504,
		-0.501091, -0.848297, 0.171174,
		37.743927, 38.196774, 44.721668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283836, 38.439079, 44.023121>,  <38.094688, 38.790581, 44.601845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283836, 38.439079, 44.023121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971436, 38.237518, 44.170696>,  <37.783993, 38.116581, 44.259243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971436, 38.237518, 44.170696>,  <38.283836, 38.439079, 44.023121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971436, 38.237518, 44.170696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334968, -0.160598, -0.928442,
		0.527093, -0.848701, -0.043362,
		-0.781006, -0.503900, 0.368937,
		37.737133, 38.086349, 44.281376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282711, 37.694374, 43.690693>,  <38.283836, 38.439079, 44.023121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282711, 37.694374, 43.690693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914242, 37.804184, 43.801014>,  <37.693161, 37.870071, 43.867207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914242, 37.804184, 43.801014>,  <38.282711, 37.694374, 43.690693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914242, 37.804184, 43.801014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278538, 0.029795, -0.959963,
		-0.271755, -0.961117, 0.049020,
		-0.921177, 0.274529, 0.275805,
		37.637890, 37.886543, 43.883755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820892, 37.329414, 43.236496>,  <38.282711, 37.694374, 43.690693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820892, 37.329414, 43.236496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579826, 37.609619, 43.389378>,  <37.435184, 37.777740, 43.481106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579826, 37.609619, 43.389378>,  <37.820892, 37.329414, 43.236496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579826, 37.609619, 43.389378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424105, 0.124548, -0.897008,
		-0.675963, -0.702693, 0.222028,
		-0.602668, 0.700508, 0.382206,
		37.399025, 37.819771, 43.504040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057480, 37.104530, 43.189487>,  <37.820892, 37.329414, 43.236496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057480, 37.104530, 43.189487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086971, 37.502949, 43.169697>,  <37.104668, 37.742001, 43.157822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086971, 37.502949, 43.169697>,  <37.057480, 37.104530, 43.189487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086971, 37.502949, 43.169697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477906, -0.008258, -0.878372,
		-0.875311, 0.088408, 0.475409,
		0.073730, 0.996050, -0.049479,
		37.109089, 37.801765, 43.154854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484882, 37.253517, 42.807892>,  <37.057480, 37.104530, 43.189487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484882, 37.253517, 42.807892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.693333, 37.594173, 42.830303>,  <36.818405, 37.798565, 42.843750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.693333, 37.594173, 42.830303>,  <36.484882, 37.253517, 42.807892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693333, 37.594173, 42.830303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209656, 0.191377, -0.958863,
		-0.827325, 0.487946, 0.278283,
		0.521130, 0.851636, 0.056030,
		36.849670, 37.849663, 42.847111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957249, 37.768791, 42.612045>,  <36.484882, 37.253517, 42.807892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957249, 37.768791, 42.612045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321712, 37.926529, 42.564247>,  <36.540390, 38.021172, 42.535568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321712, 37.926529, 42.564247>,  <35.957249, 37.768791, 42.612045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321712, 37.926529, 42.564247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237149, 0.264712, -0.934713,
		-0.336965, 0.880012, 0.334713,
		0.911161, 0.394342, -0.119495,
		36.595062, 38.044830, 42.528400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797234, 38.348091, 42.332432>,  <35.957249, 37.768791, 42.612045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797234, 38.348091, 42.332432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179436, 38.282501, 42.234352>,  <36.408756, 38.243145, 42.175507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179436, 38.282501, 42.234352>,  <35.797234, 38.348091, 42.332432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179436, 38.282501, 42.234352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190242, 0.292688, -0.937092,
		0.225427, 0.942043, 0.248470,
		0.955506, -0.163976, -0.245196,
		36.466087, 38.233307, 42.160793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901257, 38.938831, 41.788013>,  <35.797234, 38.348091, 42.332432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901257, 38.938831, 41.788013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201927, 38.678165, 41.747395>,  <36.382332, 38.521767, 41.723022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201927, 38.678165, 41.747395>,  <35.901257, 38.938831, 41.788013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201927, 38.678165, 41.747395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028952, 0.121221, -0.992203,
		0.658892, 0.748759, 0.072252,
		0.751680, -0.651663, -0.101549,
		36.427433, 38.482666, 41.716930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406235, 39.185810, 41.284122>,  <35.901257, 38.938831, 41.788013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406235, 39.185810, 41.284122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443150, 38.787868, 41.300827>,  <36.465298, 38.549103, 41.310852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443150, 38.787868, 41.300827>,  <36.406235, 39.185810, 41.284122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443150, 38.787868, 41.300827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060178, -0.047439, -0.997060,
		0.993913, 0.089499, -0.064246,
		0.092284, -0.994857, 0.041764,
		36.470833, 38.489410, 41.313354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878788, 39.033966, 40.811802>,  <36.406235, 39.185810, 41.284122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878788, 39.033966, 40.811802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679668, 38.693550, 40.878651>,  <36.560196, 38.489300, 40.918762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679668, 38.693550, 40.878651>,  <36.878788, 39.033966, 40.811802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679668, 38.693550, 40.878651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149458, -0.273991, -0.950048,
		0.854317, -0.447956, 0.263587,
		-0.497800, -0.851037, 0.167124,
		36.530327, 38.438240, 40.928787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307129, 38.520882, 40.579212>,  <36.878788, 39.033966, 40.811802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307129, 38.520882, 40.579212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938328, 38.367249, 40.559669>,  <36.717049, 38.275066, 40.547943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938328, 38.367249, 40.559669>,  <37.307129, 38.520882, 40.579212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938328, 38.367249, 40.559669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136311, -0.203901, -0.969455,
		0.362394, -0.900501, 0.240353,
		-0.922003, -0.384087, -0.048855,
		36.661728, 38.252022, 40.545013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360096, 37.885708, 40.233822>,  <37.307129, 38.520882, 40.579212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360096, 37.885708, 40.233822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968311, 37.959290, 40.200790>,  <36.733242, 38.003437, 40.180969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968311, 37.959290, 40.200790>,  <37.360096, 37.885708, 40.233822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968311, 37.959290, 40.200790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026019, -0.290837, -0.956419,
		-0.199949, -0.938923, 0.280077,
		-0.979461, 0.183948, -0.082582,
		36.674473, 38.014473, 40.176014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984035, 37.277302, 39.879421>,  <37.360096, 37.885708, 40.233822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984035, 37.277302, 39.879421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774696, 37.612705, 39.818741>,  <36.649094, 37.813946, 39.782333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774696, 37.612705, 39.818741>,  <36.984035, 37.277302, 39.879421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774696, 37.612705, 39.818741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013246, -0.186007, -0.982459,
		-0.852017, -0.512157, 0.108453,
		-0.523346, 0.838509, -0.151697,
		36.617691, 37.864258, 39.773232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586384, 37.082375, 39.412140>,  <36.984035, 37.277302, 39.879421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586384, 37.082375, 39.412140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558800, 37.480358, 39.383007>,  <36.542248, 37.719147, 39.365528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558800, 37.480358, 39.383007>,  <36.586384, 37.082375, 39.412140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558800, 37.480358, 39.383007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084532, -0.078571, -0.993318,
		-0.994031, -0.062345, 0.089524,
		-0.068963, 0.994957, -0.072832,
		36.538113, 37.778847, 39.361156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960476, 37.215775, 39.069691>,  <36.586384, 37.082375, 39.412140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960476, 37.215775, 39.069691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192444, 37.537937, 39.020676>,  <36.331627, 37.731236, 38.991268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192444, 37.537937, 39.020676>,  <35.960476, 37.215775, 39.069691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192444, 37.537937, 39.020676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165008, -0.031171, -0.985800,
		-0.797787, 0.591906, 0.114821,
		0.579921, 0.805404, -0.122537,
		36.366421, 37.779560, 38.983913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682610, 37.589455, 38.542587>,  <35.960476, 37.215775, 39.069691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682610, 37.589455, 38.542587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.046421, 37.750961, 38.582039>,  <36.264709, 37.847866, 38.605709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.046421, 37.750961, 38.582039>,  <35.682610, 37.589455, 38.542587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046421, 37.750961, 38.582039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036112, 0.159628, -0.986516,
		-0.414063, 0.900829, 0.130606,
		0.909531, 0.403764, 0.098627,
		36.319279, 37.872089, 38.611626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565952, 38.112000, 38.075245>,  <35.682610, 37.589455, 38.542587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565952, 38.112000, 38.075245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961926, 38.111595, 38.131859>,  <36.199509, 38.111351, 38.165829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961926, 38.111595, 38.131859>,  <35.565952, 38.112000, 38.075245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961926, 38.111595, 38.131859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139842, 0.161564, -0.976904,
		-0.021876, 0.986862, 0.160079,
		0.989932, -0.001015, 0.141540,
		36.258904, 38.111290, 38.174320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916897, 38.698990, 37.655029>,  <35.565952, 38.112000, 38.075245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916897, 38.698990, 37.655029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216606, 38.442448, 37.721054>,  <36.396431, 38.288521, 37.760670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216606, 38.442448, 37.721054>,  <35.916897, 38.698990, 37.655029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216606, 38.442448, 37.721054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061074, -0.181254, -0.981538,
		0.659437, 0.745523, -0.096639,
		0.749275, -0.641360, 0.165058,
		36.441387, 38.250038, 37.770573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440193, 39.063354, 37.307419>,  <35.916897, 38.698990, 37.655029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440193, 39.063354, 37.307419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555443, 38.684212, 37.361897>,  <36.624592, 38.456726, 37.394585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555443, 38.684212, 37.361897>,  <36.440193, 39.063354, 37.307419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555443, 38.684212, 37.361897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157604, -0.093350, -0.983080,
		0.944536, 0.304711, 0.122490,
		0.288121, -0.947859, 0.136196,
		36.641880, 38.399853, 37.402756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147011, 39.007843, 37.132851>,  <36.440193, 39.063354, 37.307419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147011, 39.007843, 37.132851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982746, 38.645275, 37.093319>,  <36.884190, 38.427734, 37.069599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982746, 38.645275, 37.093319>,  <37.147011, 39.007843, 37.132851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982746, 38.645275, 37.093319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346333, -0.054793, -0.936510,
		0.843453, -0.418815, 0.336424,
		-0.410659, -0.906417, -0.098834,
		36.859547, 38.373348, 37.063667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625397, 38.488712, 36.894375>,  <37.147011, 39.007843, 37.132851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625397, 38.488712, 36.894375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264568, 38.359886, 36.779461>,  <37.048069, 38.282589, 36.710510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264568, 38.359886, 36.779461>,  <37.625397, 38.488712, 36.894375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264568, 38.359886, 36.779461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335299, -0.103887, -0.936366,
		0.271728, -0.941000, 0.201703,
		-0.902075, -0.322067, -0.287287,
		36.993946, 38.263268, 36.693275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353809, 38.675598, 36.953400>,  <37.625397, 38.488712, 36.894375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353809, 38.675598, 36.953400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666409, 38.471043, 36.810440>,  <38.853970, 38.348309, 36.724663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666409, 38.471043, 36.810440>,  <38.353809, 38.675598, 36.953400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666409, 38.471043, 36.810440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459332, 0.083933, 0.884290,
		-0.422219, -0.855240, 0.300491,
		0.781502, -0.511389, -0.357401,
		38.900860, 38.317627, 36.703220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504227, 38.163605, 37.479179>,  <38.353809, 38.675598, 36.953400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504227, 38.163605, 37.479179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844215, 38.138439, 37.269958>,  <39.048210, 38.123341, 37.144424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844215, 38.138439, 37.269958>,  <38.504227, 38.163605, 37.479179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844215, 38.138439, 37.269958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526801, 0.110611, 0.842761,
		0.004833, -0.991871, 0.127160,
		0.849975, -0.062915, -0.523052,
		39.099209, 38.119564, 37.113041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870110, 37.779465, 37.864918>,  <38.504227, 38.163605, 37.479179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870110, 37.779465, 37.864918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147064, 37.958977, 37.638931>,  <39.313236, 38.066685, 37.503338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147064, 37.958977, 37.638931>,  <38.870110, 37.779465, 37.864918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147064, 37.958977, 37.638931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594725, 0.088373, 0.799057,
		0.408532, -0.889260, -0.205714,
		0.692390, 0.448783, -0.564968,
		39.354782, 38.093613, 37.469440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533504, 37.383980, 37.842491>,  <38.870110, 37.779465, 37.864918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533504, 37.383980, 37.842491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.641865, 37.755783, 37.742393>,  <39.706882, 37.978867, 37.682335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.641865, 37.755783, 37.742393>,  <39.533504, 37.383980, 37.842491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641865, 37.755783, 37.742393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658549, 0.010645, 0.752463,
		0.702087, -0.368638, -0.609245,
		0.270901, 0.929512, -0.250239,
		39.723137, 38.034637, 37.667320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258617, 37.434273, 37.945435>,  <39.533504, 37.383980, 37.842491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258617, 37.434273, 37.945435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159023, 37.821671, 37.947750>,  <40.099266, 38.054108, 37.949139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159023, 37.821671, 37.947750>,  <40.258617, 37.434273, 37.945435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159023, 37.821671, 37.947750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695235, 0.174569, 0.697262,
		0.674281, 0.177632, -0.716793,
		-0.248986, 0.968490, 0.005788,
		40.084328, 38.112217, 37.949486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938213, 37.921803, 37.912403>,  <40.258617, 37.434273, 37.945435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938213, 37.921803, 37.912403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.621815, 38.093250, 38.087036>,  <40.431976, 38.196117, 38.191814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.621815, 38.093250, 38.087036>,  <40.938213, 37.921803, 37.912403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621815, 38.093250, 38.087036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587558, 0.333242, 0.737377,
		0.170567, 0.839782, -0.515434,
		-0.791001, 0.428620, 0.436581,
		40.384514, 38.221836, 38.218010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071079, 38.700748, 38.128090>,  <40.938213, 37.921803, 37.912403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071079, 38.700748, 38.128090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751122, 38.597343, 38.344734>,  <40.559147, 38.535301, 38.474720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751122, 38.597343, 38.344734>,  <41.071079, 38.700748, 38.128090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751122, 38.597343, 38.344734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358002, 0.518777, 0.776341,
		-0.481664, 0.814889, -0.322422,
		-0.799896, -0.258508, 0.541608,
		40.511154, 38.519791, 38.507217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074539, 39.194199, 38.767220>,  <41.071079, 38.700748, 38.128090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074539, 39.194199, 38.767220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.792591, 38.927460, 38.863945>,  <40.623425, 38.767418, 38.921982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.792591, 38.927460, 38.863945>,  <41.074539, 39.194199, 38.767220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792591, 38.927460, 38.863945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015168, 0.354994, 0.934745,
		-0.709176, 0.655205, -0.260339,
		-0.704869, -0.666848, 0.241815,
		40.581131, 38.727406, 38.936489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708313, 39.557213, 39.321640>,  <41.074539, 39.194199, 38.767220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708313, 39.557213, 39.321640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638962, 39.163731, 39.340637>,  <40.597351, 38.927639, 39.352036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.638962, 39.163731, 39.340637>,  <40.708313, 39.557213, 39.321640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638962, 39.163731, 39.340637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077798, 0.061756, 0.995054,
		-0.981778, 0.168822, -0.087238,
		-0.173375, -0.983710, 0.047496,
		40.586948, 38.868618, 39.354885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159767, 39.431416, 39.727409>,  <40.708313, 39.557213, 39.321640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159767, 39.431416, 39.727409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.330387, 39.069630, 39.728054>,  <40.432758, 38.852558, 39.728439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.330387, 39.069630, 39.728054>,  <40.159767, 39.431416, 39.727409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330387, 39.069630, 39.728054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134603, -0.061715, 0.988976,
		-0.894394, -0.422061, -0.148068,
		0.426546, -0.904464, 0.001613,
		40.458351, 38.798290, 39.728539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716625, 38.985909, 40.184261>,  <40.159767, 39.431416, 39.727409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716625, 38.985909, 40.184261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.056145, 38.774822, 40.171246>,  <40.259857, 38.648170, 40.163437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.056145, 38.774822, 40.171246>,  <39.716625, 38.985909, 40.184261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056145, 38.774822, 40.171246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062458, -0.161184, 0.984946,
		-0.525014, -0.833989, -0.169772,
		0.848799, -0.527714, -0.032535,
		40.310783, 38.616508, 40.161484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540077, 38.269943, 40.538094>,  <39.716625, 38.985909, 40.184261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540077, 38.269943, 40.538094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934677, 38.334663, 40.548229>,  <40.171436, 38.373497, 40.554310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934677, 38.334663, 40.548229>,  <39.540077, 38.269943, 40.538094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934677, 38.334663, 40.548229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029974, -0.330510, 0.943326,
		0.161007, -0.929830, -0.330897,
		0.986498, 0.161801, 0.025344,
		40.230625, 38.383205, 40.555832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966496, 37.672558, 40.630192>,  <39.540077, 38.269943, 40.538094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966496, 37.672558, 40.630192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183392, 37.975319, 40.776112>,  <40.313530, 38.156975, 40.863663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183392, 37.975319, 40.776112>,  <39.966496, 37.672558, 40.630192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183392, 37.975319, 40.776112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024506, -0.419735, 0.907316,
		0.839869, -0.500919, -0.209046,
		0.542236, 0.756904, 0.364798,
		40.346062, 38.202389, 40.885551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291012, 37.309277, 41.125156>,  <39.966496, 37.672558, 40.630192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291012, 37.309277, 41.125156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380180, 37.687237, 41.221043>,  <40.433681, 37.914013, 41.278572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380180, 37.687237, 41.221043>,  <40.291012, 37.309277, 41.125156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380180, 37.687237, 41.221043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102519, -0.267262, 0.958155,
		0.969430, -0.189019, -0.156449,
		0.222923, 0.944903, 0.239713,
		40.447056, 37.970707, 41.292957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890751, 37.339996, 41.567886>,  <40.291012, 37.309277, 41.125156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890751, 37.339996, 41.567886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751778, 37.707321, 41.643776>,  <40.668392, 37.927715, 41.689312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751778, 37.707321, 41.643776>,  <40.890751, 37.339996, 41.567886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751778, 37.707321, 41.643776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137190, -0.150376, 0.979064,
		0.927615, 0.366186, -0.073737,
		-0.347432, 0.918311, 0.189728,
		40.647549, 37.982815, 41.700695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322628, 37.629230, 42.037434>,  <40.890751, 37.339996, 41.567886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322628, 37.629230, 42.037434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009743, 37.873924, 42.084629>,  <40.822014, 38.020741, 42.112946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009743, 37.873924, 42.084629>,  <41.322628, 37.629230, 42.037434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009743, 37.873924, 42.084629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188282, 0.051580, 0.980760,
		0.593883, 0.789376, -0.155526,
		-0.782210, 0.611739, 0.117993,
		40.775078, 38.057446, 42.120026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521355, 38.179146, 42.560139>,  <41.322628, 37.629230, 42.037434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521355, 38.179146, 42.560139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.122704, 38.209381, 42.547413>,  <40.883511, 38.227524, 42.539776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.122704, 38.209381, 42.547413>,  <41.521355, 38.179146, 42.560139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122704, 38.209381, 42.547413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011524, 0.255030, 0.966865,
		0.081198, 0.963974, -0.253300,
		-0.996631, 0.075589, -0.031817,
		40.823715, 38.232059, 42.537868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366203, 38.750412, 42.943752>,  <41.521355, 38.179146, 42.560139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366203, 38.750412, 42.943752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.013210, 38.562908, 42.928337>,  <40.801414, 38.450405, 42.919086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.013210, 38.562908, 42.928337>,  <41.366203, 38.750412, 42.943752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013210, 38.562908, 42.928337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075374, 0.060064, 0.995345,
		-0.464265, 0.881280, -0.088338,
		-0.882483, -0.468763, -0.038540,
		40.748466, 38.422279, 42.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.930286, 39.148361, 43.405544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.747223, 38.793205, 43.386780>,  <40.637383, 38.580112, 43.375519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.747223, 38.793205, 43.386780>,  <40.930286, 39.148361, 43.405544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747223, 38.793205, 43.386780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081836, -0.010476, 0.996591,
		-0.885352, 0.459941, -0.067867,
		-0.457662, -0.887888, -0.046915,
		40.609924, 38.526840, 43.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368248, 39.166595, 43.906784>,  <40.930286, 39.148361, 43.405544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368248, 39.166595, 43.906784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.470474, 38.788723, 43.824543>,  <40.531811, 38.562000, 43.775200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.470474, 38.788723, 43.824543>,  <40.368248, 39.166595, 43.906784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470474, 38.788723, 43.824543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002530, -0.213314, 0.976980,
		-0.966788, -0.249164, -0.056906,
		0.255567, -0.944677, -0.205599,
		40.547146, 38.505322, 43.762863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877605, 38.782513, 44.228218>,  <40.368248, 39.166595, 43.906784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877605, 38.782513, 44.228218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.189739, 38.534649, 44.194519>,  <40.377018, 38.385929, 44.174301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.189739, 38.534649, 44.194519>,  <39.877605, 38.782513, 44.228218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189739, 38.534649, 44.194519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113231, -0.272492, 0.955472,
		-0.615025, -0.736049, -0.282800,
		0.780335, -0.619661, -0.084246,
		40.423840, 38.348751, 44.169247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641022, 38.061852, 44.433002>,  <39.877605, 38.782513, 44.228218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641022, 38.061852, 44.433002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039654, 38.032486, 44.448196>,  <40.278831, 38.014866, 44.457314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039654, 38.032486, 44.448196>,  <39.641022, 38.061852, 44.433002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039654, 38.032486, 44.448196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055457, -0.253067, 0.965858,
		-0.061299, -0.964659, -0.256273,
		0.996577, -0.073418, 0.037984,
		40.338627, 38.010460, 44.459591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828239, 37.342621, 44.717934>,  <39.641022, 38.061852, 44.433002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828239, 37.342621, 44.717934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127411, 37.603668, 44.766434>,  <40.306911, 37.760296, 44.795536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127411, 37.603668, 44.766434>,  <39.828239, 37.342621, 44.717934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127411, 37.603668, 44.766434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004449, -0.187593, 0.982237,
		0.663769, -0.734099, -0.143209,
		0.747924, 0.652616, 0.121252,
		40.351788, 37.799454, 44.802811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221809, 37.086552, 45.308853>,  <39.828239, 37.342621, 44.717934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221809, 37.086552, 45.308853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341476, 37.466637, 45.273975>,  <40.413277, 37.694687, 45.253048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341476, 37.466637, 45.273975>,  <40.221809, 37.086552, 45.308853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341476, 37.466637, 45.273975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143339, 0.045591, 0.988623,
		0.943374, -0.308261, -0.122562,
		0.299166, 0.950209, -0.087195,
		40.431225, 37.751698, 45.247818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751099, 37.100277, 45.776123>,  <40.221809, 37.086552, 45.308853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751099, 37.100277, 45.776123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.636833, 37.476936, 45.704906>,  <40.568275, 37.702930, 45.662178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.636833, 37.476936, 45.704906>,  <40.751099, 37.100277, 45.776123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636833, 37.476936, 45.704906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027938, 0.193885, 0.980626,
		0.957923, 0.275156, -0.081693,
		-0.285664, 0.941646, -0.178040,
		40.551132, 37.759430, 45.651493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239521, 37.448425, 46.084587>,  <40.751099, 37.100277, 45.776123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239521, 37.448425, 46.084587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899044, 37.656727, 46.058380>,  <40.694759, 37.781708, 46.042656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899044, 37.656727, 46.058380>,  <41.239521, 37.448425, 46.084587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899044, 37.656727, 46.058380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041035, 0.190474, 0.980834,
		0.523250, 0.832189, -0.183499,
		-0.851191, 0.520751, -0.065517,
		40.643688, 37.812954, 46.038727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363289, 38.036514, 46.453163>,  <41.239521, 37.448425, 46.084587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363289, 38.036514, 46.453163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974689, 37.944981, 46.428398>,  <40.741531, 37.890060, 46.413540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974689, 37.944981, 46.428398>,  <41.363289, 38.036514, 46.453163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974689, 37.944981, 46.428398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121309, 0.255501, 0.959168,
		-0.203670, 0.939337, -0.275977,
		-0.971495, -0.228833, -0.061913,
		40.683243, 37.876331, 46.409824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088783, 38.488098, 46.930176>,  <41.363289, 38.036514, 46.453163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088783, 38.488098, 46.930176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805840, 38.208855, 46.885838>,  <40.636074, 38.041309, 46.859234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805840, 38.208855, 46.885838>,  <41.088783, 38.488098, 46.930176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805840, 38.208855, 46.885838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065874, -0.091025, 0.993668,
		-0.703778, 0.710182, 0.018400,
		-0.707359, -0.698109, -0.110844,
		40.593632, 37.999420, 46.852585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576954, 38.785286, 47.352169>,  <41.088783, 38.488098, 46.930176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576954, 38.785286, 47.352169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535366, 38.389069, 47.316341>,  <40.510414, 38.151340, 47.294846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535366, 38.389069, 47.316341>,  <40.576954, 38.785286, 47.352169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535366, 38.389069, 47.316341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203849, -0.066918, 0.976713,
		-0.973466, 0.119806, -0.194963,
		-0.103969, -0.990539, -0.089565,
		40.504177, 38.091908, 47.289471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978062, 38.646782, 47.753593>,  <40.576954, 38.785286, 47.352169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978062, 38.646782, 47.753593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.175083, 38.306156, 47.681786>,  <40.293297, 38.101780, 47.638702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.175083, 38.306156, 47.681786>,  <39.978062, 38.646782, 47.753593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175083, 38.306156, 47.681786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139574, -0.126311, 0.982122,
		-0.859016, -0.508805, 0.056641,
		0.492555, -0.851565, -0.179519,
		40.322849, 38.050686, 47.627930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086720, 38.446590, 48.419399>,  <39.978062, 38.646782, 47.753593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086720, 38.446590, 48.419399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.335011, 38.173553, 48.265121>,  <40.483986, 38.009731, 48.172554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.335011, 38.173553, 48.265121>,  <40.086720, 38.446590, 48.419399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335011, 38.173553, 48.265121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393812, -0.153934, 0.906210,
		-0.677946, -0.714401, 0.173263,
		0.620726, -0.682595, -0.385698,
		40.521229, 37.968777, 48.149410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032524, 37.917961, 48.936798>,  <40.086720, 38.446590, 48.419399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032524, 37.917961, 48.936798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.360634, 37.834724, 48.723690>,  <40.557499, 37.784782, 48.595825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.360634, 37.834724, 48.723690>,  <40.032524, 37.917961, 48.936798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360634, 37.834724, 48.723690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415526, -0.423286, 0.805088,
		-0.393041, -0.881776, -0.260748,
		0.820279, -0.208086, -0.532769,
		40.606716, 37.772297, 48.563858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175346, 37.246281, 49.182369>,  <40.032524, 37.917961, 48.936798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175346, 37.246281, 49.182369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506771, 37.398045, 49.017673>,  <40.705627, 37.489101, 48.918854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506771, 37.398045, 49.017673>,  <40.175346, 37.246281, 49.182369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506771, 37.398045, 49.017673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537520, -0.333210, 0.774625,
		0.156705, -0.863144, -0.480026,
		0.828562, 0.379412, -0.411742,
		40.755341, 37.511868, 48.894150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759003, 36.674980, 49.151981>,  <40.175346, 37.246281, 49.182369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759003, 36.674980, 49.151981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930473, 37.036057, 49.166878>,  <41.033356, 37.252701, 49.175816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930473, 37.036057, 49.166878>,  <40.759003, 36.674980, 49.151981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930473, 37.036057, 49.166878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525384, -0.282611, 0.802560,
		0.734986, -0.324476, -0.595408,
		0.428680, 0.902689, 0.037241,
		41.059078, 37.306862, 49.178051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394775, 36.487125, 49.453106>,  <40.759003, 36.674980, 49.151981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394775, 36.487125, 49.453106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.373966, 36.883305, 49.504173>,  <41.361481, 37.121014, 49.534813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.373966, 36.883305, 49.504173>,  <41.394775, 36.487125, 49.453106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373966, 36.883305, 49.504173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518811, -0.082432, 0.850905,
		0.853304, 0.110505, -0.509569,
		-0.052024, 0.990451, 0.127670,
		41.358360, 37.180439, 49.542473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099522, 36.735661, 49.743931>,  <41.394775, 36.487125, 49.453106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099522, 36.735661, 49.743931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840275, 37.023014, 49.845024>,  <41.684727, 37.195427, 49.905682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840275, 37.023014, 49.845024>,  <42.099522, 36.735661, 49.743931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840275, 37.023014, 49.845024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303021, -0.061197, 0.951017,
		0.698658, 0.692954, -0.178021,
		-0.648117, 0.718380, 0.252735,
		41.645840, 37.238529, 49.920845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491882, 37.224800, 50.218998>,  <42.099522, 36.735661, 49.743931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491882, 37.224800, 50.218998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105301, 37.309715, 50.276825>,  <41.873352, 37.360664, 50.311520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105301, 37.309715, 50.276825>,  <42.491882, 37.224800, 50.218998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105301, 37.309715, 50.276825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156354, 0.039735, 0.986902,
		0.203766, 0.976398, -0.071595,
		-0.966454, 0.212291, 0.144567,
		41.815365, 37.373402, 50.320194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400452, 37.775246, 50.650688>,  <42.491882, 37.224800, 50.218998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400452, 37.775246, 50.650688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063705, 37.560440, 50.672176>,  <41.861660, 37.431557, 50.685070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063705, 37.560440, 50.672176>,  <42.400452, 37.775246, 50.650688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063705, 37.560440, 50.672176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047141, 0.025992, 0.998550,
		-0.537629, 0.843175, 0.003434,
		-0.841863, -0.537011, 0.053722,
		41.811146, 37.399338, 50.688293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171585, 38.074528, 51.207844>,  <42.400452, 37.775246, 50.650688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171585, 38.074528, 51.207844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.952618, 37.741615, 51.172863>,  <41.821239, 37.541870, 51.151875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.952618, 37.741615, 51.172863>,  <42.171585, 38.074528, 51.207844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952618, 37.741615, 51.172863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038072, -0.129155, 0.990893,
		-0.835994, 0.539101, 0.102388,
		-0.547416, -0.832279, -0.087448,
		41.788391, 37.491932, 51.146629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606941, 38.145069, 51.633972>,  <42.171585, 38.074528, 51.207844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606941, 38.145069, 51.633972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641216, 37.753586, 51.559357>,  <41.661781, 37.518696, 51.514587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641216, 37.753586, 51.559357>,  <41.606941, 38.145069, 51.633972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641216, 37.753586, 51.559357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060627, -0.191999, 0.979521,
		-0.994476, -0.072626, -0.075788,
		0.085690, -0.978705, -0.186535,
		41.666924, 37.459976, 51.503395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962566, 38.415279, 51.597500>,  <41.606941, 38.145069, 51.633972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962566, 38.415279, 51.597500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.569447, 38.402985, 51.670334>,  <40.333572, 38.395607, 51.714035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.569447, 38.402985, 51.670334>,  <40.962566, 38.415279, 51.597500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569447, 38.402985, 51.670334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184617, -0.140890, 0.972660,
		-0.004242, 0.989548, 0.144141,
		-0.982801, -0.030737, 0.182090,
		40.274605, 38.393764, 51.724960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582050, 38.983440, 51.996933>,  <40.962566, 38.415279, 51.597500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582050, 38.983440, 51.996933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.949787, 38.826462, 51.985714>,  <41.170429, 38.732273, 51.978985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.949787, 38.826462, 51.985714>,  <40.582050, 38.983440, 51.996933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949787, 38.826462, 51.985714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266607, -0.568956, -0.777952,
		0.289350, 0.722684, -0.627697,
		0.919346, -0.392449, -0.028045,
		41.225590, 38.708729, 51.977299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228371, 38.719662, 52.597431>,  <40.582050, 38.983440, 51.996933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228371, 38.719662, 52.597431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888218, 38.532173, 52.693054>,  <39.684128, 38.419682, 52.750427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888218, 38.532173, 52.693054>,  <40.228371, 38.719662, 52.597431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888218, 38.532173, 52.693054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148245, -0.222506, -0.963595,
		0.504848, -0.854864, 0.119730,
		-0.850383, -0.468720, 0.239061,
		39.633102, 38.391556, 52.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323009, 38.068882, 52.285168>,  <40.228371, 38.719662, 52.597431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323009, 38.068882, 52.285168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.929081, 38.121216, 52.330799>,  <39.692726, 38.152615, 52.358177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.929081, 38.121216, 52.330799>,  <40.323009, 38.068882, 52.285168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929081, 38.121216, 52.330799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144039, -0.249216, -0.957677,
		-0.096866, -0.959570, 0.264277,
		-0.984820, 0.130832, 0.114075,
		39.633636, 38.160465, 52.365021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032539, 37.478672, 52.014366>,  <40.323009, 38.068882, 52.285168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032539, 37.478672, 52.014366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716541, 37.723770, 52.022949>,  <39.526943, 37.870827, 52.028099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716541, 37.723770, 52.022949>,  <40.032539, 37.478672, 52.014366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716541, 37.723770, 52.022949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249089, -0.288775, -0.924426,
		-0.560240, -0.735632, 0.380758,
		-0.789990, 0.612744, 0.021454,
		39.479546, 37.907593, 52.029385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434910, 37.105160, 51.838741>,  <40.032539, 37.478672, 52.014366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434910, 37.105160, 51.838741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341541, 37.485962, 51.759544>,  <39.285519, 37.714443, 51.712025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341541, 37.485962, 51.759544>,  <39.434910, 37.105160, 51.838741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341541, 37.485962, 51.759544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256895, -0.256763, -0.931707,
		-0.937827, -0.166616, 0.304499,
		-0.233421, 0.952004, -0.197997,
		39.271515, 37.771564, 51.700146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791309, 37.030544, 51.526569>,  <39.434910, 37.105160, 51.838741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791309, 37.030544, 51.526569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939308, 37.382069, 51.406040>,  <39.028107, 37.592983, 51.333725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939308, 37.382069, 51.406040>,  <38.791309, 37.030544, 51.526569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939308, 37.382069, 51.406040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206268, -0.238535, -0.948975,
		-0.905845, 0.413271, 0.093013,
		0.369997, 0.878810, -0.301321,
		39.050308, 37.645710, 51.315643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237301, 37.384186, 51.168884>,  <38.791309, 37.030544, 51.526569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237301, 37.384186, 51.168884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560474, 37.571552, 51.025867>,  <38.754379, 37.683971, 50.940056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560474, 37.571552, 51.025867>,  <38.237301, 37.384186, 51.168884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560474, 37.571552, 51.025867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442442, 0.081435, -0.893092,
		-0.389219, 0.879749, 0.273039,
		0.807932, 0.468413, -0.357542,
		38.802853, 37.712074, 50.918606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994183, 37.901505, 50.722000>,  <38.237301, 37.384186, 51.168884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994183, 37.901505, 50.722000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369850, 37.869102, 50.588493>,  <38.595249, 37.849663, 50.508389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369850, 37.869102, 50.588493>,  <37.994183, 37.901505, 50.722000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369850, 37.869102, 50.588493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322061, 0.129888, -0.937766,
		0.119312, 0.988214, 0.095900,
		0.939170, -0.081001, -0.333763,
		38.651600, 37.844803, 50.488365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917007, 38.331036, 50.129971>,  <37.994183, 37.901505, 50.722000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917007, 38.331036, 50.129971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238312, 38.096184, 50.089855>,  <38.431095, 37.955273, 50.065788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238312, 38.096184, 50.089855>,  <37.917007, 38.331036, 50.129971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238312, 38.096184, 50.089855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176195, -0.073390, -0.981616,
		0.568976, 0.806159, -0.162400,
		0.803257, -0.587130, -0.100284,
		38.479290, 37.920044, 50.059769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248447, 38.582527, 49.533005>,  <37.917007, 38.331036, 50.129971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248447, 38.582527, 49.533005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424950, 38.224785, 49.562477>,  <38.530849, 38.010139, 49.580158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424950, 38.224785, 49.562477>,  <38.248447, 38.582527, 49.533005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424950, 38.224785, 49.562477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041414, -0.102310, -0.993890,
		0.896425, 0.435510, -0.082184,
		0.441257, -0.894351, 0.073677,
		38.557327, 37.956478, 49.584579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928539, 38.529102, 49.061749>,  <38.248447, 38.582527, 49.533005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928539, 38.529102, 49.061749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798775, 38.151825, 49.090435>,  <38.720917, 37.925457, 49.107647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798775, 38.151825, 49.090435>,  <38.928539, 38.529102, 49.061749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798775, 38.151825, 49.090435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013007, -0.080255, -0.996689,
		0.945826, -0.322405, 0.038304,
		-0.324412, -0.943193, 0.071714,
		38.701450, 37.868866, 49.111950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294373, 38.206112, 48.575737>,  <38.928539, 38.529102, 49.061749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294373, 38.206112, 48.575737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980572, 37.967541, 48.643661>,  <38.792294, 37.824398, 48.684418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980572, 37.967541, 48.643661>,  <39.294373, 38.206112, 48.575737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980572, 37.967541, 48.643661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112743, -0.132097, -0.984804,
		0.609798, -0.791721, 0.036386,
		-0.784497, -0.596429, 0.169814,
		38.745224, 37.788612, 48.694607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473045, 37.630554, 48.185585>,  <39.294373, 38.206112, 48.575737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473045, 37.630554, 48.185585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076561, 37.612507, 48.235325>,  <38.838669, 37.601677, 48.265167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076561, 37.612507, 48.235325>,  <39.473045, 37.630554, 48.185585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076561, 37.612507, 48.235325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112722, -0.203813, -0.972499,
		0.069221, -0.977970, 0.196936,
		-0.991213, -0.045118, 0.124347,
		38.779198, 37.598972, 48.272629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268101, 37.053867, 47.826748>,  <39.473045, 37.630554, 48.185585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268101, 37.053867, 47.826748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942276, 37.285789, 47.833878>,  <38.746780, 37.424942, 47.838154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942276, 37.285789, 47.833878>,  <39.268101, 37.053867, 47.826748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942276, 37.285789, 47.833878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157858, -0.191998, -0.968616,
		-0.558186, -0.791811, 0.247921,
		-0.814561, 0.579804, 0.017823,
		38.697906, 37.459732, 47.839226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764076, 36.734196, 47.406139>,  <39.268101, 37.053867, 47.826748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764076, 36.734196, 47.406139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639149, 37.113976, 47.418835>,  <38.564194, 37.341843, 47.426453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639149, 37.113976, 47.418835>,  <38.764076, 36.734196, 47.406139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639149, 37.113976, 47.418835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353345, -0.085094, -0.931615,
		-0.881819, -0.302174, 0.362058,
		-0.312319, 0.949448, 0.031734,
		38.545452, 37.398811, 47.428356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304272, 36.668213, 47.038597>,  <38.764076, 36.734196, 47.406139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304272, 36.668213, 47.038597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329109, 37.067417, 47.042961>,  <38.344013, 37.306938, 47.045578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329109, 37.067417, 47.042961>,  <38.304272, 36.668213, 47.038597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329109, 37.067417, 47.042961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426192, 0.036397, -0.903901,
		-0.902499, 0.051481, 0.427604,
		0.062097, 0.998011, 0.010907,
		38.347736, 37.366821, 47.046234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835728, 36.808071, 46.489269>,  <38.304272, 36.668213, 47.038597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835728, 36.808071, 46.489269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008175, 37.158577, 46.575340>,  <38.111645, 37.368881, 46.626984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008175, 37.158577, 46.575340>,  <37.835728, 36.808071, 46.489269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008175, 37.158577, 46.575340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475906, 0.423440, -0.770851,
		-0.766582, 0.229925, 0.599572,
		0.431120, 0.876261, 0.215179,
		38.137512, 37.421455, 46.639893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313171, 37.409405, 46.557713>,  <37.835728, 36.808071, 46.489269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313171, 37.409405, 46.557713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675461, 37.537125, 46.446209>,  <37.892834, 37.613758, 46.379307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675461, 37.537125, 46.446209>,  <37.313171, 37.409405, 46.557713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675461, 37.537125, 46.446209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390892, 0.374910, -0.840622,
		-0.163904, 0.870338, 0.464379,
		0.905726, 0.319303, -0.278760,
		37.947178, 37.632915, 46.362579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232021, 38.100780, 46.323513>,  <37.313171, 37.409405, 46.557713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232021, 38.100780, 46.323513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562519, 37.956402, 46.150520>,  <37.760818, 37.869774, 46.046726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562519, 37.956402, 46.150520>,  <37.232021, 38.100780, 46.323513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562519, 37.956402, 46.150520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341561, 0.289503, -0.894161,
		0.447947, 0.886514, 0.115915,
		0.826244, -0.360945, -0.432481,
		37.810390, 37.848118, 46.020775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319016, 38.535416, 45.886078>,  <37.232021, 38.100780, 46.323513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319016, 38.535416, 45.886078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529739, 38.226791, 45.743439>,  <37.656174, 38.041618, 45.657856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529739, 38.226791, 45.743439>,  <37.319016, 38.535416, 45.886078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529739, 38.226791, 45.743439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416671, 0.131251, -0.899532,
		0.740849, 0.622468, -0.252343,
		0.526810, -0.771561, -0.356602,
		37.687782, 37.995323, 45.636459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670525, 38.850281, 45.332333>,  <37.319016, 38.535416, 45.886078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670525, 38.850281, 45.332333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716007, 38.460323, 45.255749>,  <37.743298, 38.226349, 45.209801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.716007, 38.460323, 45.255749>,  <37.670525, 38.850281, 45.332333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716007, 38.460323, 45.255749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303059, 0.149489, -0.941174,
		0.946164, 0.165038, -0.278453,
		0.113703, -0.974892, -0.191458,
		37.750118, 38.167854, 45.198311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.831291, 33.977127, 40.998386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643257, 33.626949, 40.953457>,  <44.530437, 33.416843, 40.926498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643257, 33.626949, 40.953457>,  <44.831291, 33.977127, 40.998386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643257, 33.626949, 40.953457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047179, 0.151999, -0.987254,
		0.881358, -0.458796, -0.112756,
		-0.470087, -0.875444, -0.112320,
		44.502232, 33.364315, 40.919762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100586, 33.591396, 40.280964>,  <44.831291, 33.977127, 40.998386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100586, 33.591396, 40.280964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725590, 33.529476, 40.405643>,  <44.500591, 33.492325, 40.480450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725590, 33.529476, 40.405643>,  <45.100586, 33.591396, 40.280964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725590, 33.529476, 40.405643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342395, 0.249836, -0.905730,
		0.062332, -0.955834, -0.287220,
		-0.937486, -0.154798, 0.311700,
		44.444344, 33.483036, 40.499153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786655, 33.105328, 39.812401>,  <45.100586, 33.591396, 40.280964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786655, 33.105328, 39.812401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499699, 33.317986, 39.992493>,  <44.327526, 33.445580, 40.100548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499699, 33.317986, 39.992493>,  <44.786655, 33.105328, 39.812401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499699, 33.317986, 39.992493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299932, 0.347613, -0.888373,
		-0.628805, -0.772346, -0.089916,
		-0.717387, 0.531645, 0.450232,
		44.284481, 33.477478, 40.127563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212162, 32.813919, 39.348392>,  <44.786655, 33.105328, 39.812401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212162, 32.813919, 39.348392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066132, 33.148026, 39.512856>,  <43.978516, 33.348488, 39.611534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066132, 33.148026, 39.512856>,  <44.212162, 32.813919, 39.348392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066132, 33.148026, 39.512856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444851, 0.231451, -0.865181,
		-0.817820, -0.498759, 0.287072,
		-0.365073, 0.835266, 0.411159,
		43.956608, 33.398605, 39.636204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428970, 32.895374, 39.183022>,  <44.212162, 32.813919, 39.348392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428970, 32.895374, 39.183022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522797, 33.269932, 39.287441>,  <43.579090, 33.494667, 39.350094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522797, 33.269932, 39.287441>,  <43.428970, 32.895374, 39.183022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522797, 33.269932, 39.287441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486758, 0.345587, -0.802269,
		-0.841456, 0.061114, 0.536859,
		0.234561, 0.936394, 0.261049,
		43.593166, 33.550850, 39.365757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826748, 33.260830, 39.203953>,  <43.428970, 32.895374, 39.183022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826748, 33.260830, 39.203953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.129154, 33.511806, 39.129383>,  <43.310600, 33.662392, 39.084641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.129154, 33.511806, 39.129383>,  <42.826748, 33.260830, 39.203953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129154, 33.511806, 39.129383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500474, 0.370552, -0.782443,
		-0.421855, 0.684844, 0.594161,
		0.756019, 0.627440, -0.186427,
		43.355961, 33.700039, 39.073456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427940, 33.927040, 38.919731>,  <42.826748, 33.260830, 39.203953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427940, 33.927040, 38.919731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814224, 33.950741, 38.818626>,  <43.045994, 33.964962, 38.757965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814224, 33.950741, 38.818626>,  <42.427940, 33.927040, 38.919731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814224, 33.950741, 38.818626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242524, 0.553305, -0.796892,
		0.092633, 0.830869, 0.548704,
		0.965713, 0.059255, -0.252760,
		43.103939, 33.968517, 38.742798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581436, 34.622303, 38.707996>,  <42.427940, 33.927040, 38.919731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581436, 34.622303, 38.707996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882412, 34.424747, 38.533684>,  <43.063000, 34.306213, 38.429096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882412, 34.424747, 38.533684>,  <42.581436, 34.622303, 38.707996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882412, 34.424747, 38.533684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171410, 0.491993, -0.853558,
		0.635961, 0.716952, 0.285540,
		0.752444, -0.493886, -0.435781,
		43.108147, 34.276581, 38.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941544, 35.116909, 38.262665>,  <42.581436, 34.622303, 38.707996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941544, 35.116909, 38.262665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067379, 34.760426, 38.131958>,  <43.142879, 34.546535, 38.053535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067379, 34.760426, 38.131958>,  <42.941544, 35.116909, 38.262665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067379, 34.760426, 38.131958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022710, 0.337077, -0.941203,
		0.948956, 0.303514, 0.085802,
		0.314590, -0.891212, -0.326764,
		43.161755, 34.493061, 38.033928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440731, 35.347488, 37.861031>,  <42.941544, 35.116909, 38.262665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440731, 35.347488, 37.861031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341583, 34.981682, 37.733139>,  <43.282093, 34.762199, 37.656406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341583, 34.981682, 37.733139>,  <43.440731, 35.347488, 37.861031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341583, 34.981682, 37.733139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273079, 0.382598, -0.882636,
		0.929509, -0.131471, -0.344570,
		-0.247873, -0.914513, -0.319726,
		43.267220, 34.707329, 37.637222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691074, 35.261753, 37.284466>,  <43.440731, 35.347488, 37.861031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691074, 35.261753, 37.284466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437355, 34.955578, 37.241066>,  <43.285122, 34.771873, 37.215027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437355, 34.955578, 37.241066>,  <43.691074, 35.261753, 37.284466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437355, 34.955578, 37.241066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110203, 0.228432, -0.967303,
		0.765194, -0.601601, -0.229247,
		-0.634298, -0.765438, -0.108497,
		43.247066, 34.725948, 37.208515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814987, 34.991207, 36.631775>,  <43.691074, 35.261753, 37.284466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814987, 34.991207, 36.631775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441334, 34.872257, 36.710735>,  <43.217140, 34.800888, 36.758110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441334, 34.872257, 36.710735>,  <43.814987, 34.991207, 36.631775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441334, 34.872257, 36.710735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258714, 0.183107, -0.948440,
		0.245900, -0.937037, -0.247982,
		-0.934131, -0.297377, 0.197398,
		43.161095, 34.783047, 36.769955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593731, 34.504158, 35.996807>,  <43.814987, 34.991207, 36.631775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593731, 34.504158, 35.996807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291557, 34.688648, 36.182961>,  <43.110252, 34.799343, 36.294651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291557, 34.688648, 36.182961>,  <43.593731, 34.504158, 35.996807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291557, 34.688648, 36.182961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368971, 0.287492, -0.883860,
		-0.541455, -0.839415, -0.047003,
		-0.755438, 0.461228, 0.465384,
		43.064926, 34.827015, 36.322575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926079, 34.380539, 35.562645>,  <43.593731, 34.504158, 35.996807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926079, 34.380539, 35.562645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.889168, 34.702099, 35.797668>,  <42.867023, 34.895035, 35.938683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.889168, 34.702099, 35.797668>,  <42.926079, 34.380539, 35.562645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889168, 34.702099, 35.797668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256284, 0.551026, -0.794159,
		-0.962187, -0.223865, 0.155180,
		-0.092276, 0.803899, 0.587563,
		42.861485, 34.943268, 35.973938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527576, 34.794331, 35.198231>,  <42.926079, 34.380539, 35.562645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527576, 34.794331, 35.198231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640846, 35.059490, 35.475468>,  <42.708809, 35.218586, 35.641811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640846, 35.059490, 35.475468>,  <42.527576, 34.794331, 35.198231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640846, 35.059490, 35.475468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202592, 0.747714, -0.632361,
		-0.937426, 0.038655, 0.346032,
		0.283177, 0.662895, 0.693096,
		42.725800, 35.258358, 35.683395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982742, 35.207619, 35.304752>,  <42.527576, 34.794331, 35.198231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982742, 35.207619, 35.304752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302921, 35.422703, 35.410698>,  <42.495029, 35.551754, 35.474266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302921, 35.422703, 35.410698>,  <41.982742, 35.207619, 35.304752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302921, 35.422703, 35.410698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320814, 0.757575, -0.568471,
		-0.506327, 0.370058, 0.778903,
		0.800444, 0.537715, 0.264861,
		42.543056, 35.584019, 35.490158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656494, 35.860722, 35.392586>,  <41.982742, 35.207619, 35.304752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656494, 35.860722, 35.392586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047218, 35.943909, 35.372196>,  <42.281651, 35.993820, 35.359962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047218, 35.943909, 35.372196>,  <41.656494, 35.860722, 35.392586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047218, 35.943909, 35.372196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200795, 0.807022, -0.555334,
		-0.074353, 0.552690, 0.830064,
		0.976808, 0.207964, -0.050973,
		42.340260, 36.006298, 35.356903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724804, 36.595387, 35.568844>,  <41.656494, 35.860722, 35.392586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724804, 36.595387, 35.568844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061665, 36.484463, 35.383854>,  <42.263783, 36.417908, 35.272861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061665, 36.484463, 35.383854>,  <41.724804, 36.595387, 35.568844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061665, 36.484463, 35.383854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046355, 0.817236, -0.574436,
		0.537244, 0.505201, 0.675382,
		0.842152, -0.277305, -0.462474,
		42.314312, 36.401272, 35.245113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162762, 37.194450, 35.401863>,  <41.724804, 36.595387, 35.568844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162762, 37.194450, 35.401863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336555, 36.933998, 35.152943>,  <42.440834, 36.777729, 35.003590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336555, 36.933998, 35.152943>,  <42.162762, 37.194450, 35.401863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336555, 36.933998, 35.152943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178192, 0.739407, -0.649250,
		0.882875, 0.171202, 0.437288,
		0.434487, -0.651128, -0.622297,
		42.466900, 36.738659, 34.966255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816490, 37.425465, 35.081779>,  <42.162762, 37.194450, 35.401863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816490, 37.425465, 35.081779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.716084, 37.146206, 34.813576>,  <42.655838, 36.978649, 34.652653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.716084, 37.146206, 34.813576>,  <42.816490, 37.425465, 35.081779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716084, 37.146206, 34.813576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289597, 0.606794, -0.740225,
		0.923647, -0.379986, 0.049867,
		-0.251016, -0.698149, -0.670507,
		42.640778, 36.936760, 34.612423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441307, 37.331093, 34.565544>,  <42.816490, 37.425465, 35.081779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441307, 37.331093, 34.565544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.107807, 37.179424, 34.405003>,  <42.907707, 37.088425, 34.308678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.107807, 37.179424, 34.405003>,  <43.441307, 37.331093, 34.565544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107807, 37.179424, 34.405003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213938, 0.448267, -0.867921,
		0.509005, -0.809496, -0.292625,
		-0.833753, -0.379173, -0.401353,
		42.857681, 37.065674, 34.284595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622471, 37.159393, 33.847664>,  <43.441307, 37.331093, 34.565544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622471, 37.159393, 33.847664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224712, 37.201591, 33.844913>,  <42.986057, 37.226910, 33.843262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224712, 37.201591, 33.844913>,  <43.622471, 37.159393, 33.847664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224712, 37.201591, 33.844913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044408, 0.357816, -0.932736,
		-0.095936, -0.927814, -0.360496,
		-0.994396, 0.105492, -0.006875,
		42.926392, 37.233238, 33.842850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323864, 36.956638, 33.965878>,  <43.622471, 37.159393, 33.847664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323864, 36.956638, 33.965878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705673, 37.070465, 33.930313>,  <44.934761, 37.138760, 33.908974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705673, 37.070465, 33.930313>,  <44.323864, 36.956638, 33.965878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705673, 37.070465, 33.930313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035200, 0.403725, 0.914203,
		0.296043, -0.869500, 0.395383,
		0.954525, 0.284561, -0.088913,
		44.992031, 37.155834, 33.903637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769032, 36.649094, 34.490623>,  <44.323864, 36.956638, 33.965878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769032, 36.649094, 34.490623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954220, 36.985592, 34.378937>,  <45.065331, 37.187492, 34.311924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954220, 36.985592, 34.378937>,  <44.769032, 36.649094, 34.490623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954220, 36.985592, 34.378937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021741, 0.325698, 0.945224,
		0.886108, -0.431538, 0.169077,
		0.462968, 0.841247, -0.279222,
		45.093109, 37.237965, 34.295170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369701, 36.801109, 35.047794>,  <44.769032, 36.649094, 34.490623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369701, 36.801109, 35.047794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301018, 37.143356, 34.852478>,  <45.259808, 37.348705, 34.735287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301018, 37.143356, 34.852478>,  <45.369701, 36.801109, 35.047794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301018, 37.143356, 34.852478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015326, 0.497912, 0.867092,
		0.985029, 0.141401, -0.098607,
		-0.171705, 0.855622, -0.488291,
		45.249508, 37.400043, 34.705990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747005, 37.243073, 35.419212>,  <45.369701, 36.801109, 35.047794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747005, 37.243073, 35.419212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493961, 37.491756, 35.234482>,  <45.342136, 37.640968, 35.123646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493961, 37.491756, 35.234482>,  <45.747005, 37.243073, 35.419212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493961, 37.491756, 35.234482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190031, 0.453473, 0.870776,
		0.750793, 0.638624, -0.168728,
		-0.632612, 0.621709, -0.461823,
		45.304176, 37.678268, 35.095936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958931, 37.815208, 35.700153>,  <45.747005, 37.243073, 35.419212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958931, 37.815208, 35.700153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598370, 37.907429, 35.553555>,  <45.382034, 37.962761, 35.465595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598370, 37.907429, 35.553555>,  <45.958931, 37.815208, 35.700153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598370, 37.907429, 35.553555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259703, 0.389394, 0.883701,
		0.346450, 0.891750, -0.291125,
		-0.901402, 0.230552, -0.366496,
		45.327950, 37.976593, 35.443607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776562, 38.497570, 35.929028>,  <45.958931, 37.815208, 35.700153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776562, 38.497570, 35.929028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454243, 38.273563, 35.852009>,  <45.260853, 38.139160, 35.805798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454243, 38.273563, 35.852009>,  <45.776562, 38.497570, 35.929028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454243, 38.273563, 35.852009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416912, 0.305563, 0.856047,
		-0.420568, 0.770072, -0.479700,
		-0.805796, -0.560018, -0.192542,
		45.212505, 38.105556, 35.794247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119122, 38.900841, 36.217941>,  <45.776562, 38.497570, 35.929028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119122, 38.900841, 36.217941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031738, 38.513428, 36.170227>,  <44.979309, 38.280979, 36.141598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031738, 38.513428, 36.170227>,  <45.119122, 38.900841, 36.217941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031738, 38.513428, 36.170227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482169, 0.000860, 0.876078,
		-0.848404, 0.248898, -0.467183,
		-0.218456, -0.968529, -0.119281,
		44.966202, 38.222870, 36.134441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462574, 38.800804, 36.664852>,  <45.119122, 38.900841, 36.217941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462574, 38.800804, 36.664852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579060, 38.430267, 36.569283>,  <44.648952, 38.207947, 36.511940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579060, 38.430267, 36.569283>,  <44.462574, 38.800804, 36.664852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579060, 38.430267, 36.569283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179748, -0.298285, 0.937399,
		-0.939618, -0.230041, -0.253374,
		0.291218, -0.926341, -0.238925,
		44.666424, 38.152367, 36.497604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997349, 38.280037, 36.840851>,  <44.462574, 38.800804, 36.664852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997349, 38.280037, 36.840851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346279, 38.084633, 36.832848>,  <44.555637, 37.967392, 36.828045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346279, 38.084633, 36.832848>,  <43.997349, 38.280037, 36.840851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346279, 38.084633, 36.832848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233313, -0.451895, 0.861021,
		-0.429652, -0.746429, -0.508177,
		0.872333, -0.488503, -0.020006,
		44.607979, 37.938080, 36.826843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912430, 37.845993, 37.369019>,  <43.997349, 38.280037, 36.840851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912430, 37.845993, 37.369019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284302, 37.722176, 37.289139>,  <44.507423, 37.647884, 37.241211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284302, 37.722176, 37.289139>,  <43.912430, 37.845993, 37.369019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284302, 37.722176, 37.289139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052692, -0.424791, 0.903756,
		-0.364582, -0.850726, -0.378609,
		0.929679, -0.309544, -0.199698,
		44.563206, 37.629311, 37.229229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924576, 37.089287, 37.480762>,  <43.912430, 37.845993, 37.369019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924576, 37.089287, 37.480762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.288734, 37.252121, 37.510323>,  <44.507229, 37.349823, 37.528057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.288734, 37.252121, 37.510323>,  <43.924576, 37.089287, 37.480762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288734, 37.252121, 37.510323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089999, -0.369180, 0.924990,
		0.403832, -0.835456, -0.372737,
		0.910395, 0.407087, 0.073896,
		44.561852, 37.374249, 37.532490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341476, 36.683910, 37.691044>,  <43.924576, 37.089287, 37.480762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341476, 36.683910, 37.691044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555122, 37.011375, 37.775433>,  <44.683311, 37.207855, 37.826065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555122, 37.011375, 37.775433>,  <44.341476, 36.683910, 37.691044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555122, 37.011375, 37.775433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385323, -0.457857, 0.801182,
		0.752494, -0.346633, -0.559999,
		0.534115, 0.818665, 0.210968,
		44.715359, 37.256973, 37.838722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735970, 36.261566, 38.007298>,  <44.341476, 36.683910, 37.691044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735970, 36.261566, 38.007298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821709, 36.636463, 38.117302>,  <44.873154, 36.861401, 38.183304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821709, 36.636463, 38.117302>,  <44.735970, 36.261566, 38.007298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821709, 36.636463, 38.117302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108862, -0.302720, 0.946842,
		0.970672, -0.173016, -0.166917,
		0.214348, 0.937244, 0.275007,
		44.886013, 36.917637, 38.199802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318108, 36.246857, 38.405552>,  <44.735970, 36.261566, 38.007298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318108, 36.246857, 38.405552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143318, 36.592155, 38.506630>,  <45.038445, 36.799335, 38.567276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143318, 36.592155, 38.506630>,  <45.318108, 36.246857, 38.405552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143318, 36.592155, 38.506630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062635, -0.251047, 0.965946,
		0.897292, 0.437918, 0.055631,
		-0.436971, 0.863252, 0.252692,
		45.012226, 36.851131, 38.582436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726044, 36.436901, 38.914848>,  <45.318108, 36.246857, 38.405552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726044, 36.436901, 38.914848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404144, 36.665436, 38.979286>,  <45.211002, 36.802555, 39.017948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404144, 36.665436, 38.979286>,  <45.726044, 36.436901, 38.914848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404144, 36.665436, 38.979286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107263, -0.126960, 0.986091,
		0.583840, 0.810839, 0.040889,
		-0.804752, 0.571333, 0.161098,
		45.162720, 36.836834, 39.027615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892277, 36.956299, 39.470352>,  <45.726044, 36.436901, 38.914848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892277, 36.956299, 39.470352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495197, 36.910015, 39.483997>,  <45.256950, 36.882244, 39.492184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495197, 36.910015, 39.483997>,  <45.892277, 36.956299, 39.470352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495197, 36.910015, 39.483997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061321, -0.240475, 0.968716,
		-0.103886, 0.963734, 0.245814,
		-0.992697, -0.115709, 0.034116,
		45.197388, 36.875301, 39.494232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673683, 37.207611, 40.147770>,  <45.892277, 36.956299, 39.470352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673683, 37.207611, 40.147770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347939, 37.002541, 40.038971>,  <45.152493, 36.879498, 39.973694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347939, 37.002541, 40.038971>,  <45.673683, 37.207611, 40.147770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347939, 37.002541, 40.038971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105130, -0.330594, 0.937899,
		-0.570762, 0.792380, 0.215324,
		-0.814357, -0.512681, -0.271994,
		45.103630, 36.848736, 39.957375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168427, 37.458828, 40.546085>,  <45.673683, 37.207611, 40.147770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168427, 37.458828, 40.546085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030720, 37.104813, 40.420742>,  <44.948093, 36.892403, 40.345535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030720, 37.104813, 40.420742>,  <45.168427, 37.458828, 40.546085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030720, 37.104813, 40.420742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163345, -0.272209, 0.948273,
		-0.924552, 0.377647, -0.050853,
		-0.344270, -0.885034, -0.313358,
		44.927441, 36.839302, 40.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533546, 37.395725, 40.904015>,  <45.168427, 37.458828, 40.546085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533546, 37.395725, 40.904015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661686, 37.032227, 40.797016>,  <44.738567, 36.814125, 40.732819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661686, 37.032227, 40.797016>,  <44.533546, 37.395725, 40.904015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661686, 37.032227, 40.797016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171487, -0.333339, 0.927080,
		-0.931649, -0.251115, -0.262623,
		0.320346, -0.908750, -0.267492,
		44.757790, 36.759602, 40.716770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005726, 36.965050, 41.057335>,  <44.533546, 37.395725, 40.904015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005726, 36.965050, 41.057335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342758, 36.749714, 41.051071>,  <44.544979, 36.620514, 41.047314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342758, 36.749714, 41.051071>,  <44.005726, 36.965050, 41.057335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342758, 36.749714, 41.051071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278761, -0.460813, 0.842582,
		-0.460813, -0.705578, -0.538341,
		-0.842582, 0.538341, 0.015661,
		44.595531, 36.588211, 41.046371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.499825, 38.624203, 40.536148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109238, 38.539055, 40.549961>,  <40.874886, 38.487965, 40.558250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109238, 38.539055, 40.549961>,  <41.499825, 38.624203, 40.536148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109238, 38.539055, 40.549961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039660, 0.019857, -0.999016,
		0.211979, -0.976878, -0.027833,
		-0.976469, -0.212874, 0.034533,
		40.816296, 38.475193, 40.560322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459648, 38.035404, 40.064789>,  <41.499825, 38.624203, 40.536148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459648, 38.035404, 40.064789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101887, 38.207775, 40.112686>,  <40.887230, 38.311199, 40.141426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101887, 38.207775, 40.112686>,  <41.459648, 38.035404, 40.064789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101887, 38.207775, 40.112686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151174, -0.039307, -0.987725,
		-0.420930, -0.901530, 0.100302,
		-0.894407, 0.430927, 0.119743,
		40.833565, 38.337051, 40.148609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964680, 37.578926, 39.725002>,  <41.459648, 38.035404, 40.064789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964680, 37.578926, 39.725002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805897, 37.944878, 39.754482>,  <40.710629, 38.164448, 39.772171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805897, 37.944878, 39.754482>,  <40.964680, 37.578926, 39.725002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805897, 37.944878, 39.754482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239381, -0.025679, -0.970586,
		-0.886073, -0.402920, 0.229197,
		-0.396954, 0.914875, 0.073698,
		40.686810, 38.219341, 39.776592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372456, 37.610695, 39.425903>,  <40.964680, 37.578926, 39.725002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372456, 37.610695, 39.425903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434631, 38.005791, 39.420120>,  <40.471935, 38.242847, 39.416649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434631, 38.005791, 39.420120>,  <40.372456, 37.610695, 39.425903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434631, 38.005791, 39.420120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444771, 0.056910, -0.893835,
		-0.882054, 0.145364, 0.448164,
		0.155437, 0.987740, -0.014456,
		40.481262, 38.302113, 39.415783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637032, 37.852627, 39.383301>,  <40.372456, 37.610695, 39.425903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637032, 37.852627, 39.383301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920658, 38.102947, 39.253319>,  <40.090836, 38.253139, 39.175327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920658, 38.102947, 39.253319>,  <39.637032, 37.852627, 39.383301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920658, 38.102947, 39.253319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430403, 0.019064, -0.902435,
		-0.558551, 0.779749, 0.282865,
		0.709066, 0.625802, -0.324958,
		40.133377, 38.290688, 39.155830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257030, 38.447655, 38.998276>,  <39.637032, 37.852627, 39.383301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257030, 38.447655, 38.998276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640812, 38.426849, 38.887459>,  <39.871078, 38.414368, 38.820969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640812, 38.426849, 38.887459>,  <39.257030, 38.447655, 38.998276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640812, 38.426849, 38.887459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275451, 0.035697, -0.960652,
		0.059852, 0.998008, 0.019924,
		0.959450, -0.052009, -0.277039,
		39.928646, 38.411247, 38.804348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444412, 39.018932, 38.552078>,  <39.257030, 38.447655, 38.998276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444412, 39.018932, 38.552078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721699, 38.749237, 38.450214>,  <39.888069, 38.587418, 38.389095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721699, 38.749237, 38.450214>,  <39.444412, 39.018932, 38.552078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721699, 38.749237, 38.450214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336330, 0.009881, -0.941693,
		0.637446, 0.738444, -0.219918,
		0.693214, -0.674243, -0.254660,
		39.929665, 38.546963, 38.373817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747536, 39.292595, 37.991646>,  <39.444412, 39.018932, 38.552078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747536, 39.292595, 37.991646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814983, 38.898342, 37.987743>,  <39.855450, 38.661789, 37.985401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814983, 38.898342, 37.987743>,  <39.747536, 39.292595, 37.991646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814983, 38.898342, 37.987743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323790, -0.046036, -0.945009,
		0.930983, 0.162504, -0.326900,
		0.168617, -0.985633, -0.009758,
		39.865570, 38.602654, 37.984818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169575, 39.198921, 37.458111>,  <39.747536, 39.292595, 37.991646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169575, 39.198921, 37.458111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983501, 38.851055, 37.524181>,  <39.871857, 38.642334, 37.563824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983501, 38.851055, 37.524181>,  <40.169575, 39.198921, 37.458111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983501, 38.851055, 37.524181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279750, -0.032605, -0.959519,
		0.839848, -0.492561, -0.228122,
		-0.465183, -0.869667, 0.165177,
		39.843945, 38.590157, 37.573734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146843, 38.899250, 36.759602>,  <40.169575, 39.198921, 37.458111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146843, 38.899250, 36.759602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905060, 38.646873, 36.954140>,  <39.759991, 38.495445, 37.070862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905060, 38.646873, 36.954140>,  <40.146843, 38.899250, 36.759602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905060, 38.646873, 36.954140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505262, -0.168362, -0.846383,
		0.615904, -0.757340, -0.217024,
		-0.604461, -0.630944, 0.486350,
		39.723721, 38.457592, 37.100044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208714, 38.257751, 36.494827>,  <40.146843, 38.899250, 36.759602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208714, 38.257751, 36.494827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847561, 38.257961, 36.666782>,  <39.630867, 38.258087, 36.769955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847561, 38.257961, 36.666782>,  <40.208714, 38.257751, 36.494827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847561, 38.257961, 36.666782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418038, -0.234214, -0.877717,
		0.100225, -0.972185, 0.211687,
		-0.902884, 0.000524, 0.429885,
		39.576694, 38.258118, 36.795746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908714, 37.624588, 36.253311>,  <40.208714, 38.257751, 36.494827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908714, 37.624588, 36.253311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605339, 37.842007, 36.397163>,  <39.423313, 37.972458, 36.483475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605339, 37.842007, 36.397163>,  <39.908714, 37.624588, 36.253311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605339, 37.842007, 36.397163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501803, -0.134887, -0.854400,
		-0.415896, -0.828471, 0.375055,
		-0.758436, 0.543545, 0.359630,
		39.377808, 38.005070, 36.505051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223557, 37.292782, 36.204735>,  <39.908714, 37.624588, 36.253311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223557, 37.292782, 36.204735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114059, 37.676937, 36.225586>,  <39.048363, 37.907433, 36.238094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114059, 37.676937, 36.225586>,  <39.223557, 37.292782, 36.204735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114059, 37.676937, 36.225586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355487, -0.050671, -0.933307,
		-0.893697, -0.274014, 0.355277,
		-0.273741, 0.960390, 0.052124,
		39.031937, 37.965054, 36.241222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496826, 37.475571, 36.129059>,  <39.223557, 37.292782, 36.204735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496826, 37.475571, 36.129059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777164, 37.713264, 35.971226>,  <38.945366, 37.855881, 35.876526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777164, 37.713264, 35.971226>,  <38.496826, 37.475571, 36.129059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777164, 37.713264, 35.971226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314974, -0.238508, -0.918643,
		-0.640004, 0.768111, 0.020012,
		0.700847, 0.594239, -0.394580,
		38.987419, 37.891537, 35.852852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467178, 37.252884, 35.450516>,  <38.496826, 37.475571, 36.129059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467178, 37.252884, 35.450516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691822, 36.924179, 35.411934>,  <38.826611, 36.726955, 35.388786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691822, 36.924179, 35.411934>,  <38.467178, 37.252884, 35.450516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691822, 36.924179, 35.411934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305164, -0.314076, 0.899017,
		-0.769068, -0.475467, -0.427161,
		0.561614, -0.821759, -0.096451,
		38.860306, 36.677650, 35.382999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103802, 36.598721, 35.589367>,  <38.467178, 37.252884, 35.450516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103802, 36.598721, 35.589367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489254, 36.525806, 35.667530>,  <38.720528, 36.482056, 35.714428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489254, 36.525806, 35.667530>,  <38.103802, 36.598721, 35.589367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489254, 36.525806, 35.667530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260291, -0.474729, 0.840762,
		-0.060497, -0.861048, -0.504912,
		0.963633, -0.182288, 0.195403,
		38.778343, 36.471119, 35.726151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171600, 35.861492, 35.760303>,  <38.103802, 36.598721, 35.589367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171600, 35.861492, 35.760303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485069, 36.053757, 35.917690>,  <38.673153, 36.169117, 36.012123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485069, 36.053757, 35.917690>,  <38.171600, 35.861492, 35.760303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485069, 36.053757, 35.917690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084584, -0.544960, 0.834185,
		0.615386, -0.687011, -0.386414,
		0.783674, 0.480661, 0.393471,
		38.720173, 36.197956, 36.035732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530491, 35.422295, 36.098080>,  <38.171600, 35.861492, 35.760303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530491, 35.422295, 36.098080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710358, 35.728645, 36.281925>,  <38.818275, 35.912457, 36.392231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710358, 35.728645, 36.281925>,  <38.530491, 35.422295, 36.098080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710358, 35.728645, 36.281925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153235, -0.573085, 0.805042,
		0.879956, -0.291570, -0.375054,
		0.449664, 0.765873, 0.459610,
		38.845257, 35.958408, 36.419807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188522, 35.120953, 36.294201>,  <38.530491, 35.422295, 36.098080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188522, 35.120953, 36.294201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133472, 35.450535, 36.514076>,  <39.100445, 35.648285, 36.646000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133472, 35.450535, 36.514076>,  <39.188522, 35.120953, 36.294201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133472, 35.450535, 36.514076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141305, -0.532960, 0.834258,
		0.980354, 0.192485, -0.043083,
		-0.137620, 0.823956, 0.549688,
		39.092186, 35.697723, 36.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696053, 35.212769, 36.805386>,  <39.188522, 35.120953, 36.294201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696053, 35.212769, 36.805386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399250, 35.434467, 36.956242>,  <39.221169, 35.567486, 37.046757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399250, 35.434467, 36.956242>,  <39.696053, 35.212769, 36.805386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399250, 35.434467, 36.956242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190543, -0.365004, 0.911299,
		0.642741, 0.748053, 0.165229,
		-0.742009, 0.554246, 0.377139,
		39.176647, 35.600742, 37.069382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861557, 35.330219, 37.466152>,  <39.696053, 35.212769, 36.805386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861557, 35.330219, 37.466152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466923, 35.392212, 37.486626>,  <39.230141, 35.429409, 37.498909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466923, 35.392212, 37.486626>,  <39.861557, 35.330219, 37.466152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466923, 35.392212, 37.486626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001520, -0.304842, 0.952402,
		0.163211, 0.939708, 0.300518,
		-0.986590, 0.154986, 0.051182,
		39.170944, 35.438709, 37.501980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832355, 35.459126, 38.096508>,  <39.861557, 35.330219, 37.466152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832355, 35.459126, 38.096508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445641, 35.422939, 38.000889>,  <39.213612, 35.401230, 37.943520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445641, 35.422939, 38.000889>,  <39.832355, 35.459126, 38.096508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445641, 35.422939, 38.000889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200068, -0.314178, 0.928044,
		-0.159054, 0.945045, 0.285644,
		-0.966785, -0.090461, -0.239045,
		39.155605, 35.395802, 37.929176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429707, 35.891548, 38.548611>,  <39.832355, 35.459126, 38.096508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429707, 35.891548, 38.548611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158184, 35.626083, 38.422894>,  <38.995270, 35.466805, 38.347466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158184, 35.626083, 38.422894>,  <39.429707, 35.891548, 38.548611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158184, 35.626083, 38.422894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269710, -0.172757, 0.947318,
		-0.682991, 0.727814, -0.061727,
		-0.678808, -0.663658, -0.314290,
		38.954540, 35.426987, 38.328606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922466, 36.051090, 39.010956>,  <39.429707, 35.891548, 38.548611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922466, 36.051090, 39.010956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863228, 35.690273, 38.848774>,  <38.827686, 35.473785, 38.751465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863228, 35.690273, 38.848774>,  <38.922466, 36.051090, 39.010956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863228, 35.690273, 38.848774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298339, -0.350127, 0.887922,
		-0.942901, 0.252458, -0.217262,
		-0.148094, -0.902040, -0.405453,
		38.818798, 35.419662, 38.727139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333099, 35.871304, 39.232925>,  <38.922466, 36.051090, 39.010956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333099, 35.871304, 39.232925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467884, 35.508194, 39.133007>,  <38.548756, 35.290329, 39.073055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467884, 35.508194, 39.133007>,  <38.333099, 35.871304, 39.232925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467884, 35.508194, 39.133007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144011, -0.311882, 0.939143,
		-0.930440, -0.280481, -0.235822,
		0.336961, -0.907777, -0.249795,
		38.568974, 35.235859, 39.058067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932762, 35.507507, 39.599834>,  <38.333099, 35.871304, 39.232925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932762, 35.507507, 39.599834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260353, 35.291325, 39.522701>,  <38.456909, 35.161617, 39.476421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260353, 35.291325, 39.522701>,  <37.932762, 35.507507, 39.599834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260353, 35.291325, 39.522701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008509, -0.347443, 0.937663,
		-0.573762, -0.766284, -0.289146,
		0.818978, -0.540455, -0.192829,
		38.506046, 35.129189, 39.464851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798630, 34.832031, 39.855904>,  <37.932762, 35.507507, 39.599834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798630, 34.832031, 39.855904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196480, 34.842175, 39.815731>,  <38.435188, 34.848263, 39.791626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196480, 34.842175, 39.815731>,  <37.798630, 34.832031, 39.855904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196480, 34.842175, 39.815731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103551, -0.219320, 0.970142,
		0.002579, -0.975324, -0.220766,
		0.994621, 0.025362, -0.100430,
		38.494865, 34.849781, 39.785603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034004, 34.257748, 40.280212>,  <37.798630, 34.832031, 39.855904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034004, 34.257748, 40.280212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362690, 34.479286, 40.226494>,  <38.559902, 34.612209, 40.194263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362690, 34.479286, 40.226494>,  <38.034004, 34.257748, 40.280212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362690, 34.479286, 40.226494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235461, -0.115353, 0.965014,
		0.518982, -0.824587, -0.225197,
		0.821715, 0.553851, -0.134292,
		38.609203, 34.645443, 40.186207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964130, 33.509151, 40.277935>,  <38.034004, 34.257748, 40.280212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964130, 33.509151, 40.277935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635742, 33.316383, 40.400414>,  <37.438709, 33.200722, 40.473900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635742, 33.316383, 40.400414>,  <37.964130, 33.509151, 40.277935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635742, 33.316383, 40.400414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397788, 0.098042, -0.912224,
		0.409603, -0.870710, -0.272194,
		-0.820969, -0.481925, 0.306200,
		37.389450, 33.171806, 40.492275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817486, 32.963772, 39.795639>,  <37.964130, 33.509151, 40.277935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817486, 32.963772, 39.795639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460220, 32.980995, 39.974705>,  <37.245861, 32.991329, 40.082146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460220, 32.980995, 39.974705>,  <37.817486, 32.963772, 39.795639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460220, 32.980995, 39.974705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442223, 0.097074, -0.891636,
		-0.081850, -0.994345, -0.067661,
		-0.893163, 0.043059, 0.447668,
		37.192272, 32.993912, 40.109005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415997, 32.448589, 39.420033>,  <37.817486, 32.963772, 39.795639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415997, 32.448589, 39.420033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165264, 32.699188, 39.605320>,  <37.014824, 32.849548, 39.716492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165264, 32.699188, 39.605320>,  <37.415997, 32.448589, 39.420033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165264, 32.699188, 39.605320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492866, 0.141629, -0.858501,
		-0.603458, -0.766444, 0.220003,
		-0.626834, 0.626502, 0.463222,
		36.977215, 32.887138, 39.744286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722595, 32.158619, 39.279106>,  <37.415997, 32.448589, 39.420033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722595, 32.158619, 39.279106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687313, 32.548859, 39.359539>,  <36.666145, 32.783001, 39.407799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687313, 32.548859, 39.359539>,  <36.722595, 32.158619, 39.279106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687313, 32.548859, 39.359539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596873, 0.109847, -0.794781,
		-0.797473, -0.190124, 0.572617,
		-0.088207, 0.975596, 0.201080,
		36.660851, 32.841537, 39.419865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988045, 32.345985, 39.239796>,  <36.722595, 32.158619, 39.279106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988045, 32.345985, 39.239796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181129, 32.693226, 39.193508>,  <36.296982, 32.901569, 39.165733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181129, 32.693226, 39.193508>,  <35.988045, 32.345985, 39.239796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181129, 32.693226, 39.193508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620069, 0.245458, -0.745161,
		-0.618468, 0.431455, 0.656768,
		0.482712, 0.868100, -0.115724,
		36.325943, 32.953655, 39.158791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470089, 32.956280, 39.148830>,  <35.988045, 32.345985, 39.239796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470089, 32.956280, 39.148830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801533, 33.094082, 38.972321>,  <36.000401, 33.176765, 38.866417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801533, 33.094082, 38.972321>,  <35.470089, 32.956280, 39.148830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801533, 33.094082, 38.972321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544827, 0.315004, -0.777133,
		-0.128728, 0.884356, 0.448714,
		0.828609, 0.344510, -0.441271,
		36.050114, 33.197433, 38.839939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149979, 33.503094, 38.821232>,  <35.470089, 32.956280, 39.148830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149979, 33.503094, 38.821232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503033, 33.450386, 38.640747>,  <35.714867, 33.418762, 38.532455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503033, 33.450386, 38.640747>,  <35.149979, 33.503094, 38.821232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503033, 33.450386, 38.640747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423196, 0.195047, -0.884795,
		0.204597, 0.971902, 0.116392,
		0.882636, -0.131769, -0.451211,
		35.767822, 33.410854, 38.505383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249107, 34.021877, 38.312569>,  <35.149979, 33.503094, 38.821232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249107, 34.021877, 38.312569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523556, 33.760593, 38.184467>,  <35.688225, 33.603825, 38.107605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523556, 33.760593, 38.184467>,  <35.249107, 34.021877, 38.312569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523556, 33.760593, 38.184467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237659, 0.214807, -0.947299,
		0.687574, 0.726072, -0.007857,
		0.686120, -0.653206, -0.320253,
		35.729393, 33.564632, 38.088390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646580, 34.310627, 37.772388>,  <35.249107, 34.021877, 38.312569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646580, 34.310627, 37.772388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705971, 33.918106, 37.723389>,  <35.741608, 33.682594, 37.693989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705971, 33.918106, 37.723389>,  <35.646580, 34.310627, 37.772388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705971, 33.918106, 37.723389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178429, 0.095259, -0.979331,
		0.972685, 0.167270, -0.160948,
		0.148481, -0.981298, -0.122503,
		35.750515, 33.623718, 37.686638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104061, 34.280357, 37.272175>,  <35.646580, 34.310627, 37.772388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104061, 34.280357, 37.272175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933075, 33.919456, 37.249474>,  <35.830482, 33.702915, 37.235851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933075, 33.919456, 37.249474>,  <36.104061, 34.280357, 37.272175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933075, 33.919456, 37.249474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191968, 0.151941, -0.969568,
		0.883414, -0.403563, -0.238152,
		-0.427467, -0.902248, -0.056756,
		35.804836, 33.648781, 37.232449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340645, 34.000111, 36.635891>,  <36.104061, 34.280357, 37.272175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340645, 34.000111, 36.635891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023827, 33.776802, 36.734684>,  <35.833736, 33.642818, 36.793961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023827, 33.776802, 36.734684>,  <36.340645, 34.000111, 36.635891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023827, 33.776802, 36.734684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282953, -0.022772, -0.958863,
		0.540929, -0.829347, -0.139928,
		-0.792044, -0.558270, 0.246984,
		35.786213, 33.609322, 36.808781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288071, 33.350300, 36.107704>,  <36.340645, 34.000111, 36.635891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288071, 33.350300, 36.107704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959854, 33.494259, 36.285324>,  <35.762924, 33.580635, 36.391895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959854, 33.494259, 36.285324>,  <36.288071, 33.350300, 36.107704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959854, 33.494259, 36.285324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442738, 0.091171, -0.892004,
		-0.361518, -0.928525, 0.084533,
		-0.820541, 0.359901, 0.444054,
		35.713692, 33.602230, 36.418541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.869095, 32.248093, 43.628101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.511971, 32.381374, 43.749340>,  <38.297695, 32.461342, 43.822083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.511971, 32.381374, 43.749340>,  <38.869095, 32.248093, 43.628101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511971, 32.381374, 43.749340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313879, 0.022409, -0.949199,
		-0.323069, -0.942588, 0.084579,
		-0.892808, 0.333204, 0.303098,
		38.244129, 32.481335, 43.840271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421082, 31.861280, 43.251011>,  <38.869095, 32.248093, 43.628101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421082, 31.861280, 43.251011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.219200, 32.185585, 43.369633>,  <38.098072, 32.380169, 43.440804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.219200, 32.185585, 43.369633>,  <38.421082, 31.861280, 43.251011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219200, 32.185585, 43.369633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408558, 0.078292, -0.909368,
		-0.760499, -0.580116, 0.291730,
		-0.504699, 0.810763, 0.296552,
		38.067791, 32.428814, 43.458599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723236, 31.733891, 43.079201>,  <38.421082, 31.861280, 43.251011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723236, 31.733891, 43.079201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746296, 32.132389, 43.105042>,  <37.760132, 32.371487, 43.120544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746296, 32.132389, 43.105042>,  <37.723236, 31.733891, 43.079201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746296, 32.132389, 43.105042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308548, 0.079323, -0.947896,
		-0.949460, 0.034713, 0.311963,
		0.057650, 0.996244, 0.064604,
		37.763592, 32.431263, 43.124424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027889, 32.001869, 42.764683>,  <37.723236, 31.733891, 43.079201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027889, 32.001869, 42.764683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274471, 32.316818, 42.766479>,  <37.422421, 32.505787, 42.767559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274471, 32.316818, 42.766479>,  <37.027889, 32.001869, 42.764683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274471, 32.316818, 42.766479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377612, 0.300640, -0.875800,
		-0.690934, 0.538197, 0.482653,
		0.616458, 0.787375, 0.004492,
		37.459408, 32.553032, 42.767826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577377, 32.563221, 42.493160>,  <37.027889, 32.001869, 42.764683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577377, 32.563221, 42.493160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950165, 32.705437, 42.464794>,  <37.173836, 32.790768, 42.447773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950165, 32.705437, 42.464794>,  <36.577377, 32.563221, 42.493160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950165, 32.705437, 42.464794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206442, 0.359646, -0.909965,
		-0.298023, 0.862698, 0.408577,
		0.931968, 0.355538, -0.070915,
		37.229755, 32.812099, 42.443520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624424, 33.238140, 42.205116>,  <36.577377, 32.563221, 42.493160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624424, 33.238140, 42.205116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.999008, 33.109364, 42.149399>,  <37.223759, 33.032097, 42.115971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.999008, 33.109364, 42.149399>,  <36.624424, 33.238140, 42.205116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999008, 33.109364, 42.149399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009968, 0.372494, -0.927981,
		0.350644, 0.870402, 0.345615,
		0.936456, -0.321946, -0.139289,
		37.279945, 33.012779, 42.107613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900040, 33.748894, 41.841824>,  <36.624424, 33.238140, 42.205116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900040, 33.748894, 41.841824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112885, 33.416168, 41.778660>,  <37.240593, 33.216534, 41.740761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112885, 33.416168, 41.778660>,  <36.900040, 33.748894, 41.841824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112885, 33.416168, 41.778660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053733, 0.152950, -0.986772,
		0.844967, 0.533558, 0.036691,
		0.532112, -0.831818, -0.157908,
		37.272518, 33.166622, 41.731289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436775, 33.936184, 41.472202>,  <36.900040, 33.748894, 41.841824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436775, 33.936184, 41.472202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379047, 33.546028, 41.405533>,  <37.344410, 33.311935, 41.365532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379047, 33.546028, 41.405533>,  <37.436775, 33.936184, 41.472202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379047, 33.546028, 41.405533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184502, 0.138960, -0.972959,
		0.972179, -0.171168, 0.159908,
		-0.144319, -0.975393, -0.166675,
		37.335751, 33.253410, 41.355530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969528, 33.853104, 40.924782>,  <37.436775, 33.936184, 41.472202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969528, 33.853104, 40.924782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707169, 33.551224, 40.930786>,  <37.549751, 33.370094, 40.934391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707169, 33.551224, 40.930786>,  <37.969528, 33.853104, 40.924782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707169, 33.551224, 40.930786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058898, 0.031338, -0.997772,
		0.752548, -0.655322, -0.065005,
		-0.655899, -0.754700, 0.015014,
		37.510399, 33.324814, 40.935291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562458, 33.802601, 40.571690>,  <37.969528, 33.853104, 40.924782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562458, 33.802601, 40.571690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699303, 34.177433, 40.543846>,  <38.781410, 34.402332, 40.527142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699303, 34.177433, 40.543846>,  <38.562458, 33.802601, 40.571690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699303, 34.177433, 40.543846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324108, -0.048143, 0.944794,
		0.881996, -0.345782, -0.320185,
		0.342108, 0.937079, -0.069609,
		38.801933, 34.458557, 40.522964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255814, 33.709435, 40.842327>,  <38.562458, 33.802601, 40.571690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255814, 33.709435, 40.842327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149216, 34.092613, 40.884876>,  <39.085255, 34.322521, 40.910404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.149216, 34.092613, 40.884876>,  <39.255814, 33.709435, 40.842327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149216, 34.092613, 40.884876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369585, -0.000362, 0.929197,
		0.890161, 0.286941, -0.353947,
		-0.266497, 0.957948, 0.106372,
		39.069267, 34.379997, 40.916786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810204, 34.118786, 41.210148>,  <39.255814, 33.709435, 40.842327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810204, 34.118786, 41.210148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509998, 34.379803, 41.251945>,  <39.329876, 34.536411, 41.277023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509998, 34.379803, 41.251945>,  <39.810204, 34.118786, 41.210148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509998, 34.379803, 41.251945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339912, 0.245574, 0.907829,
		0.566735, 0.716857, -0.406113,
		-0.750514, 0.652541, 0.104493,
		39.284843, 34.575565, 41.283295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083248, 34.755962, 41.389297>,  <39.810204, 34.118786, 41.210148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083248, 34.755962, 41.389297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700020, 34.778622, 41.501644>,  <39.470081, 34.792217, 41.569050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700020, 34.778622, 41.501644>,  <40.083248, 34.755962, 41.389297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700020, 34.778622, 41.501644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284192, 0.312544, 0.906394,
		-0.036435, 0.948212, -0.315540,
		-0.958075, 0.056649, 0.280862,
		39.412598, 34.795616, 41.585903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065178, 35.278515, 41.763596>,  <40.083248, 34.755962, 41.389297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065178, 35.278515, 41.763596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734325, 35.084286, 41.876778>,  <39.535812, 34.967747, 41.944687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734325, 35.084286, 41.876778>,  <40.065178, 35.278515, 41.763596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734325, 35.084286, 41.876778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224754, 0.175660, 0.958451,
		-0.515104, 0.856364, -0.036159,
		-0.827136, -0.485575, 0.282955,
		39.486183, 34.938614, 41.961662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668884, 35.741959, 42.243435>,  <40.065178, 35.278515, 41.763596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668884, 35.741959, 42.243435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488831, 35.399410, 42.344631>,  <39.380798, 35.193882, 42.405350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488831, 35.399410, 42.344631>,  <39.668884, 35.741959, 42.243435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488831, 35.399410, 42.344631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053316, 0.257039, 0.964929,
		-0.891368, 0.447835, -0.070043,
		-0.450133, -0.856373, 0.252993,
		39.353790, 35.142498, 42.420528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212425, 35.866806, 42.881275>,  <39.668884, 35.741959, 42.243435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212425, 35.866806, 42.881275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.225952, 35.467491, 42.862221>,  <39.234070, 35.227901, 42.850788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.225952, 35.467491, 42.862221>,  <39.212425, 35.866806, 42.881275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225952, 35.467491, 42.862221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141755, -0.042394, 0.988993,
		-0.989324, -0.040199, 0.140080,
		0.033818, -0.998292, -0.047640,
		39.236099, 35.168003, 42.847927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681015, 35.538799, 43.454964>,  <39.212425, 35.866806, 42.881275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681015, 35.538799, 43.454964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.962749, 35.273308, 43.354263>,  <39.131790, 35.114014, 43.293842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.962749, 35.273308, 43.354263>,  <38.681015, 35.538799, 43.454964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962749, 35.273308, 43.354263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304846, -0.037463, 0.951665,
		-0.641077, -0.747036, 0.175947,
		0.704336, -0.663727, -0.251747,
		39.174049, 35.074188, 43.278740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675514, 35.076462, 43.977303>,  <38.681015, 35.538799, 43.454964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675514, 35.076462, 43.977303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038685, 34.996861, 43.829754>,  <39.256588, 34.949100, 43.741226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038685, 34.996861, 43.829754>,  <38.675514, 35.076462, 43.977303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038685, 34.996861, 43.829754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331777, -0.196537, 0.922658,
		-0.256116, -0.960087, -0.112414,
		0.907925, -0.199011, -0.368871,
		39.311062, 34.937157, 43.719093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861107, 34.489826, 44.263439>,  <38.675514, 35.076462, 43.977303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861107, 34.489826, 44.263439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207668, 34.667297, 44.171795>,  <39.415604, 34.773781, 44.116806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207668, 34.667297, 44.171795>,  <38.861107, 34.489826, 44.263439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207668, 34.667297, 44.171795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303635, -0.103842, 0.947113,
		0.396424, -0.890149, -0.224686,
		0.866403, 0.443681, -0.229115,
		39.467590, 34.800400, 44.103062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426540, 33.967911, 44.407272>,  <38.861107, 34.489826, 44.263439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426540, 33.967911, 44.407272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550838, 34.346519, 44.441975>,  <39.625416, 34.573685, 44.462795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550838, 34.346519, 44.441975>,  <39.426540, 33.967911, 44.407272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550838, 34.346519, 44.441975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375125, -0.205996, 0.903796,
		0.873337, -0.248306, -0.419078,
		0.310746, 0.946525, 0.086758,
		39.644062, 34.630478, 44.468002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095013, 33.946636, 44.742512>,  <39.426540, 33.967911, 44.407272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095013, 33.946636, 44.742512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.006733, 34.331734, 44.805023>,  <39.953766, 34.562790, 44.842529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.006733, 34.331734, 44.805023>,  <40.095013, 33.946636, 44.742512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006733, 34.331734, 44.805023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458045, -0.039150, 0.888066,
		0.861095, 0.267581, -0.432338,
		-0.220703, 0.962740, 0.156276,
		39.940521, 34.620556, 44.851906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737152, 34.261848, 44.969498>,  <40.095013, 33.946636, 44.742512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737152, 34.261848, 44.969498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466957, 34.537971, 45.073189>,  <40.304840, 34.703644, 45.135403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466957, 34.537971, 45.073189>,  <40.737152, 34.261848, 44.969498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466957, 34.537971, 45.073189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479418, 0.144042, 0.865685,
		0.560249, 0.709034, -0.428243,
		-0.675485, 0.690306, 0.259224,
		40.264313, 34.745064, 45.150955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263008, 34.757454, 45.309635>,  <40.737152, 34.261848, 44.969498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263008, 34.757454, 45.309635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.893555, 34.849007, 45.432602>,  <40.671883, 34.903938, 45.506382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.893555, 34.849007, 45.432602>,  <41.263008, 34.757454, 45.309635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893555, 34.849007, 45.432602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365813, 0.287144, 0.885285,
		0.114354, 0.930140, -0.348946,
		-0.923636, 0.228884, 0.307421,
		40.616463, 34.917671, 45.524830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.833817, 35.596230, 46.714954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215401, 35.481617, 46.679493>,  <37.444351, 35.412849, 46.658215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215401, 35.481617, 46.679493>,  <36.833817, 35.596230, 46.714954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215401, 35.481617, 46.679493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036095, 0.183756, -0.982309,
		0.297754, 0.940284, 0.164953,
		0.953960, -0.286533, -0.088653,
		37.501587, 35.395657, 46.652897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252151, 36.110607, 46.408428>,  <36.833817, 35.596230, 46.714954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252151, 36.110607, 46.408428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.395782, 35.747765, 46.320595>,  <37.481960, 35.530060, 46.267895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.395782, 35.747765, 46.320595>,  <37.252151, 36.110607, 46.408428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395782, 35.747765, 46.320595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292781, 0.113916, -0.949369,
		0.886195, 0.405189, -0.224678,
		0.359080, -0.907108, -0.219584,
		37.503506, 35.475632, 46.254719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399326, 36.218872, 45.796555>,  <37.252151, 36.110607, 46.408428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399326, 36.218872, 45.796555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420689, 35.819458, 45.799976>,  <37.433506, 35.579811, 45.802029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420689, 35.819458, 45.799976>,  <37.399326, 36.218872, 45.796555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420689, 35.819458, 45.799976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126201, -0.015249, -0.991888,
		0.990566, 0.051897, -0.126831,
		0.053410, -0.998536, 0.008556,
		37.436710, 35.519897, 45.802544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886608, 36.117367, 45.317059>,  <37.399326, 36.218872, 45.796555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886608, 36.117367, 45.317059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673790, 35.780758, 45.354511>,  <37.546097, 35.578793, 45.376984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673790, 35.780758, 45.354511>,  <37.886608, 36.117367, 45.317059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673790, 35.780758, 45.354511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169267, -0.002642, -0.985567,
		0.829622, -0.540219, -0.141036,
		-0.532049, -0.841520, 0.093633,
		37.514175, 35.528301, 45.382603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957863, 35.875366, 44.744385>,  <37.886608, 36.117367, 45.317059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957863, 35.875366, 44.744385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653500, 35.647640, 44.868904>,  <37.470882, 35.511005, 44.943615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653500, 35.647640, 44.868904>,  <37.957863, 35.875366, 44.744385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653500, 35.647640, 44.868904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230017, -0.211932, -0.949830,
		0.606723, -0.794335, 0.030309,
		-0.760907, -0.569312, 0.311294,
		37.425228, 35.476849, 44.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874134, 35.363537, 44.220848>,  <37.957863, 35.875366, 44.744385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874134, 35.363537, 44.220848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522053, 35.382507, 44.409733>,  <37.310802, 35.393890, 44.523064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522053, 35.382507, 44.409733>,  <37.874134, 35.363537, 44.220848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522053, 35.382507, 44.409733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469832, -0.227639, -0.852900,
		0.067045, -0.972590, 0.222651,
		-0.880206, 0.047426, 0.472216,
		37.257992, 35.396736, 44.551399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520424, 34.772160, 43.976238>,  <37.874134, 35.363537, 44.220848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520424, 34.772160, 43.976238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.252155, 35.032997, 44.117649>,  <37.091194, 35.189499, 44.202496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.252155, 35.032997, 44.117649>,  <37.520424, 34.772160, 43.976238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252155, 35.032997, 44.117649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512801, -0.063247, -0.856175,
		-0.535946, -0.755497, 0.376811,
		-0.670670, 0.652092, 0.353522,
		37.050953, 35.228626, 44.223705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786900, 34.539616, 43.796940>,  <37.520424, 34.772160, 43.976238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786900, 34.539616, 43.796940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745049, 34.932934, 43.856525>,  <36.719940, 35.168922, 43.892277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745049, 34.932934, 43.856525>,  <36.786900, 34.539616, 43.796940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745049, 34.932934, 43.856525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631523, 0.050023, -0.773741,
		-0.768266, -0.175027, 0.615738,
		-0.104624, 0.983292, 0.148965,
		36.713661, 35.227921, 43.901215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172638, 34.650711, 43.552956>,  <36.786900, 34.539616, 43.796940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172638, 34.650711, 43.552956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296902, 35.030167, 43.576897>,  <36.371460, 35.257839, 43.591259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296902, 35.030167, 43.576897>,  <36.172638, 34.650711, 43.552956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296902, 35.030167, 43.576897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445329, 0.200885, -0.872541,
		-0.839745, 0.244413, 0.484862,
		0.310661, 0.948635, 0.059848,
		36.390099, 35.314758, 43.594852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605881, 35.005131, 43.495296>,  <36.172638, 34.650711, 43.552956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605881, 35.005131, 43.495296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899490, 35.246346, 43.370369>,  <36.075657, 35.391075, 43.295410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899490, 35.246346, 43.370369>,  <35.605881, 35.005131, 43.495296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899490, 35.246346, 43.370369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566111, 0.289303, -0.771895,
		-0.375128, 0.743402, 0.553744,
		0.734028, 0.603040, -0.312322,
		36.119698, 35.427258, 43.276672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289543, 35.612072, 43.265488>,  <35.605881, 35.005131, 43.495296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289543, 35.612072, 43.265488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646900, 35.621887, 43.086048>,  <35.861317, 35.627777, 42.978386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646900, 35.621887, 43.086048>,  <35.289543, 35.612072, 43.265488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646900, 35.621887, 43.086048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420463, 0.397462, -0.815619,
		0.158289, 0.917291, 0.365408,
		0.893396, 0.024537, -0.448600,
		35.914921, 35.629250, 42.951469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276985, 36.263424, 42.844601>,  <35.289543, 35.612072, 43.265488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276985, 36.263424, 42.844601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562614, 36.030396, 42.689312>,  <35.733994, 35.890579, 42.596138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562614, 36.030396, 42.689312>,  <35.276985, 36.263424, 42.844601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562614, 36.030396, 42.689312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342150, 0.193387, -0.919530,
		0.610766, 0.789440, -0.061234,
		0.714072, -0.582568, -0.388221,
		35.776836, 35.855625, 42.572845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594456, 36.688721, 42.441708>,  <35.276985, 36.263424, 42.844601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594456, 36.688721, 42.441708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670166, 36.317364, 42.313793>,  <35.715591, 36.094551, 42.237045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670166, 36.317364, 42.313793>,  <35.594456, 36.688721, 42.441708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670166, 36.317364, 42.313793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446852, 0.208559, -0.869957,
		0.874356, 0.307557, -0.375379,
		0.189273, -0.928392, -0.319787,
		35.726948, 36.038845, 42.217857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929653, 36.827969, 41.843975>,  <35.594456, 36.688721, 42.441708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929653, 36.827969, 41.843975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786404, 36.454552, 41.837715>,  <35.700455, 36.230503, 41.833958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786404, 36.454552, 41.837715>,  <35.929653, 36.827969, 41.843975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786404, 36.454552, 41.837715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483131, 0.199634, -0.852485,
		0.798956, -0.297734, -0.522517,
		-0.358126, -0.933542, -0.015654,
		35.678967, 36.174488, 41.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477238, 37.198261, 41.401764>,  <35.929653, 36.827969, 41.843975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477238, 37.198261, 41.401764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460129, 37.596615, 41.369801>,  <36.449863, 37.835629, 41.350620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460129, 37.596615, 41.369801>,  <36.477238, 37.198261, 41.401764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460129, 37.596615, 41.369801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342863, 0.089760, 0.935087,
		0.938411, 0.012596, -0.345291,
		-0.042771, 0.995884, -0.079913,
		36.447296, 37.895378, 41.345825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179729, 37.403023, 41.450195>,  <36.477238, 37.198261, 41.401764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179729, 37.403023, 41.450195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987125, 37.741043, 41.543175>,  <36.871563, 37.943855, 41.598961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987125, 37.741043, 41.543175>,  <37.179729, 37.403023, 41.450195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987125, 37.741043, 41.543175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518915, 0.061138, 0.852637,
		0.706314, 0.531172, -0.467951,
		-0.481506, 0.845055, 0.232450,
		36.842674, 37.994560, 41.612911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632793, 37.995132, 41.697113>,  <37.179729, 37.403023, 41.450195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632793, 37.995132, 41.697113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.273487, 38.058746, 41.860981>,  <37.057903, 38.096916, 41.959301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.273487, 38.058746, 41.860981>,  <37.632793, 37.995132, 41.697113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273487, 38.058746, 41.860981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367244, -0.240333, 0.898539,
		0.241356, 0.957574, 0.157478,
		-0.898264, 0.159035, 0.409670,
		37.004009, 38.106457, 41.983883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841698, 38.433224, 42.300602>,  <37.632793, 37.995132, 41.697113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841698, 38.433224, 42.300602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463135, 38.319763, 42.362373>,  <37.235996, 38.251686, 42.399437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463135, 38.319763, 42.362373>,  <37.841698, 38.433224, 42.300602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463135, 38.319763, 42.362373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154290, 0.022988, 0.987758,
		-0.283731, 0.958651, 0.022009,
		-0.946410, -0.283653, 0.154433,
		37.179211, 38.234669, 42.408703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662838, 38.862797, 42.829483>,  <37.841698, 38.433224, 42.300602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662838, 38.862797, 42.829483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388840, 38.571602, 42.840904>,  <37.224442, 38.396885, 42.847759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388840, 38.571602, 42.840904>,  <37.662838, 38.862797, 42.829483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388840, 38.571602, 42.840904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054265, 0.090071, 0.994456,
		-0.726523, 0.679649, -0.101202,
		-0.684996, -0.727986, 0.028557,
		37.183342, 38.353207, 42.849472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032764, 39.074039, 43.333908>,  <37.662838, 38.862797, 42.829483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032764, 39.074039, 43.333908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.053238, 38.678646, 43.276943>,  <37.065521, 38.441410, 43.242764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.053238, 38.678646, 43.276943>,  <37.032764, 39.074039, 43.333908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053238, 38.678646, 43.276943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181619, -0.131006, 0.974603,
		-0.982036, -0.075746, 0.172822,
		0.051182, -0.988484, -0.142409,
		37.068592, 38.382099, 43.234219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698521, 38.770489, 43.983189>,  <37.032764, 39.074039, 43.333908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698521, 38.770489, 43.983189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911667, 38.475334, 43.817501>,  <37.039555, 38.298241, 43.718090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911667, 38.475334, 43.817501>,  <36.698521, 38.770489, 43.983189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911667, 38.475334, 43.817501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199471, -0.366175, 0.908915,
		-0.822354, -0.566953, -0.047935,
		0.532865, -0.737888, -0.414217,
		37.071526, 38.253967, 43.693237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470707, 38.183868, 44.396561>,  <36.698521, 38.770489, 43.983189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470707, 38.183868, 44.396561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830463, 38.099384, 44.243465>,  <37.046318, 38.048695, 44.151608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830463, 38.099384, 44.243465>,  <36.470707, 38.183868, 44.396561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830463, 38.099384, 44.243465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288166, -0.371940, 0.882395,
		-0.328723, -0.903910, -0.273657,
		0.899389, -0.211205, -0.382741,
		37.100281, 38.036022, 44.128643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644566, 37.606667, 44.776665>,  <36.470707, 38.183868, 44.396561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644566, 37.606667, 44.776665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.991814, 37.738644, 44.628342>,  <37.200165, 37.817829, 44.539349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.991814, 37.738644, 44.628342>,  <36.644566, 37.606667, 44.776665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991814, 37.738644, 44.628342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455157, -0.231215, 0.859867,
		0.197973, -0.915246, -0.350900,
		0.868123, 0.329946, -0.370807,
		37.252251, 37.837627, 44.517101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111164, 37.035748, 44.938309>,  <36.644566, 37.606667, 44.776665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111164, 37.035748, 44.938309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304001, 37.381950, 44.883919>,  <37.419701, 37.589672, 44.851284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304001, 37.381950, 44.883919>,  <37.111164, 37.035748, 44.938309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304001, 37.381950, 44.883919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476950, -0.129073, 0.869402,
		0.734921, -0.483983, -0.475028,
		0.482089, 0.865506, -0.135977,
		37.448627, 37.641602, 44.843124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775623, 36.853889, 45.054470>,  <37.111164, 37.035748, 44.938309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775623, 36.853889, 45.054470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760433, 37.252029, 45.089874>,  <37.751320, 37.490913, 45.111118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760433, 37.252029, 45.089874>,  <37.775623, 36.853889, 45.054470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760433, 37.252029, 45.089874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530298, -0.054999, 0.846026,
		0.846960, 0.079067, -0.525744,
		-0.037977, 0.995351, 0.088511,
		37.749039, 37.550636, 45.116428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539360, 37.102482, 45.192387>,  <37.775623, 36.853889, 45.054470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539360, 37.102482, 45.192387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.292652, 37.385582, 45.330181>,  <38.144627, 37.555443, 45.412857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.292652, 37.385582, 45.330181>,  <38.539360, 37.102482, 45.192387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292652, 37.385582, 45.330181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528796, 0.048374, 0.847369,
		0.583065, 0.704800, -0.404094,
		-0.616774, 0.707755, 0.344490,
		38.107620, 37.597908, 45.433529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959816, 37.566261, 45.557590>,  <38.539360, 37.102482, 45.192387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959816, 37.566261, 45.557590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605663, 37.681519, 45.703506>,  <38.393173, 37.750671, 45.791058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605663, 37.681519, 45.703506>,  <38.959816, 37.566261, 45.557590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605663, 37.681519, 45.703506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375454, -0.019472, 0.926637,
		0.274108, 0.957389, -0.090945,
		-0.885381, 0.288144, 0.364793,
		38.340050, 37.767963, 45.812943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075142, 38.146744, 45.929401>,  <38.959816, 37.566261, 45.557590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075142, 38.146744, 45.929401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726379, 37.998905, 46.057884>,  <38.517120, 37.910202, 46.134975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726379, 37.998905, 46.057884>,  <39.075142, 38.146744, 45.929401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726379, 37.998905, 46.057884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397718, -0.151855, 0.904854,
		-0.285650, 0.916701, 0.279398,
		-0.871908, -0.369593, 0.321211,
		38.464806, 37.888027, 46.154247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614613, 38.607113, 45.947723>,  <39.075142, 38.146744, 45.929401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614613, 38.607113, 45.947723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938614, 38.377800, 45.997097>,  <40.133015, 38.240211, 46.026722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938614, 38.377800, 45.997097>,  <39.614613, 38.607113, 45.947723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938614, 38.377800, 45.997097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151335, 0.000988, -0.988482,
		0.566559, 0.819356, 0.087559,
		0.810005, -0.573284, 0.123438,
		40.181614, 38.205814, 46.034130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098312, 38.950993, 45.568859>,  <39.614613, 38.607113, 45.947723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098312, 38.950993, 45.568859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247120, 38.580410, 45.591770>,  <40.336403, 38.358059, 45.605518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247120, 38.580410, 45.591770>,  <40.098312, 38.950993, 45.568859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247120, 38.580410, 45.591770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214996, 0.025971, -0.976270,
		0.902985, 0.375502, 0.208846,
		0.372015, -0.926458, 0.057280,
		40.358723, 38.302471, 45.608955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783680, 38.987720, 45.166622>,  <40.098312, 38.950993, 45.568859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783680, 38.987720, 45.166622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.671028, 38.604595, 45.189541>,  <40.603436, 38.374722, 45.203293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.671028, 38.604595, 45.189541>,  <40.783680, 38.987720, 45.166622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671028, 38.604595, 45.189541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141467, -0.100508, -0.984828,
		0.949037, -0.269253, 0.163804,
		-0.281631, -0.957810, 0.057295,
		40.586540, 38.317253, 45.206730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365360, 38.641747, 44.963783>,  <40.783680, 38.987720, 45.166622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365360, 38.641747, 44.963783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045094, 38.408386, 44.909271>,  <40.852932, 38.268372, 44.876564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045094, 38.408386, 44.909271>,  <41.365360, 38.641747, 44.963783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045094, 38.408386, 44.909271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194592, -0.038103, -0.980144,
		0.566624, -0.811290, 0.144033,
		-0.800669, -0.583401, -0.136281,
		40.804893, 38.233368, 44.868385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631336, 37.984650, 44.588947>,  <41.365360, 38.641747, 44.963783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631336, 37.984650, 44.588947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234440, 38.011608, 44.547157>,  <40.996304, 38.027782, 44.522083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234440, 38.011608, 44.547157>,  <41.631336, 37.984650, 44.588947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234440, 38.011608, 44.547157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100582, -0.058815, -0.993189,
		-0.073098, -0.995990, 0.051578,
		-0.992239, 0.067412, -0.104478,
		40.936768, 38.031826, 44.515816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442459, 37.575188, 44.102390>,  <41.631336, 37.984650, 44.588947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442459, 37.575188, 44.102390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.105019, 37.789360, 44.118629>,  <40.902554, 37.917866, 44.128372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.105019, 37.789360, 44.118629>,  <41.442459, 37.575188, 44.102390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105019, 37.789360, 44.118629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024536, 0.113960, -0.993182,
		-0.536411, -0.836853, -0.109274,
		-0.843600, 0.535435, 0.040597,
		40.851940, 37.949989, 44.130810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921574, 37.241871, 43.598202>,  <41.442459, 37.575188, 44.102390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921574, 37.241871, 43.598202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.806141, 37.618736, 43.666382>,  <40.736881, 37.844856, 43.707291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.806141, 37.618736, 43.666382>,  <40.921574, 37.241871, 43.598202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806141, 37.618736, 43.666382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083425, 0.152608, -0.984759,
		-0.953814, -0.298404, 0.034560,
		-0.288582, 0.942160, 0.170454,
		40.719566, 37.901386, 43.717518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285316, 37.307068, 43.284367>,  <40.921574, 37.241871, 43.598202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285316, 37.307068, 43.284367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404827, 37.688431, 43.301102>,  <40.476532, 37.917248, 43.311142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404827, 37.688431, 43.301102>,  <40.285316, 37.307068, 43.284367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404827, 37.688431, 43.301102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080100, 0.068739, -0.994414,
		-0.950956, 0.293754, 0.096905,
		0.298774, 0.953406, 0.041838,
		40.494461, 37.974453, 43.313652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806107, 37.614128, 42.787540>,  <40.285316, 37.307068, 43.284367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806107, 37.614128, 42.787540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078106, 37.900188, 42.852245>,  <40.241306, 38.071823, 42.891068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078106, 37.900188, 42.852245>,  <39.806107, 37.614128, 42.787540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078106, 37.900188, 42.852245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042030, 0.258274, -0.965157,
		-0.732011, 0.649504, 0.205683,
		0.679995, 0.715150, 0.161760,
		40.282104, 38.114735, 42.900772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507271, 38.106148, 42.396358>,  <39.806107, 37.614128, 42.787540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507271, 38.106148, 42.396358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901329, 38.154015, 42.445618>,  <40.137764, 38.182735, 42.475174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901329, 38.154015, 42.445618>,  <39.507271, 38.106148, 42.396358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901329, 38.154015, 42.445618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104787, 0.149191, -0.983240,
		-0.136032, 0.981541, 0.134436,
		0.985147, 0.119665, 0.123148,
		40.196873, 38.189915, 42.482563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753735, 38.786510, 42.059246>,  <39.507271, 38.106148, 42.396358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753735, 38.786510, 42.059246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073448, 38.550388, 42.104298>,  <40.265274, 38.408714, 42.131329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073448, 38.550388, 42.104298>,  <39.753735, 38.786510, 42.059246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073448, 38.550388, 42.104298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306330, 0.238956, -0.921445,
		0.517023, 0.770996, 0.371822,
		0.799280, -0.590309, 0.112634,
		40.313232, 38.373295, 42.138088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329510, 39.193554, 42.024788>,  <39.753735, 38.786510, 42.059246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329510, 39.193554, 42.024788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430096, 38.820534, 41.921165>,  <40.490448, 38.596722, 41.858994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430096, 38.820534, 41.921165>,  <40.329510, 39.193554, 42.024788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430096, 38.820534, 41.921165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212914, 0.314400, -0.925106,
		0.944156, 0.177479, 0.277615,
		0.251469, -0.932552, -0.259055,
		40.505535, 38.540768, 41.843449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949554, 39.224892, 41.633499>,  <40.329510, 39.193554, 42.024788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949554, 39.224892, 41.633499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.760349, 38.883297, 41.546806>,  <40.646828, 38.678341, 41.494789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.760349, 38.883297, 41.546806>,  <40.949554, 39.224892, 41.633499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760349, 38.883297, 41.546806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153705, 0.162236, -0.974707,
		0.867545, -0.494361, 0.054522,
		-0.473012, -0.853983, -0.216733,
		40.618446, 38.627102, 41.481785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260532, 39.083473, 41.105373>,  <40.949554, 39.224892, 41.633499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260532, 39.083473, 41.105373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961040, 38.823410, 41.053677>,  <40.781345, 38.667374, 41.022659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961040, 38.823410, 41.053677>,  <41.260532, 39.083473, 41.105373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961040, 38.823410, 41.053677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090917, 0.092403, -0.991562,
		0.656615, -0.754159, -0.010074,
		-0.748726, -0.650159, -0.129239,
		40.736423, 38.628361, 41.014904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.384573, 36.514851, 30.182333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276304, 36.145576, 30.073183>,  <29.211342, 35.924011, 30.007694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276304, 36.145576, 30.073183>,  <29.384573, 36.514851, 30.182333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276304, 36.145576, 30.073183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233061, -0.212180, 0.949032,
		-0.934033, 0.320474, -0.157728,
		-0.270674, -0.923188, -0.272873,
		29.195103, 35.868622, 29.991322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634327, 36.358936, 30.247913>,  <29.384573, 36.514851, 30.182333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634327, 36.358936, 30.247913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842838, 36.019466, 30.283749>,  <28.967945, 35.815784, 30.305250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842838, 36.019466, 30.283749>,  <28.634327, 36.358936, 30.247913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842838, 36.019466, 30.283749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447134, -0.182199, 0.875714,
		-0.726870, -0.496549, -0.474447,
		0.521279, -0.848670, 0.089589,
		28.999222, 35.764866, 30.310625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093388, 35.719082, 30.380796>,  <28.634327, 36.358936, 30.247913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093388, 35.719082, 30.380796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.446920, 35.568645, 30.492075>,  <28.659040, 35.478386, 30.558842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.446920, 35.568645, 30.492075>,  <28.093388, 35.719082, 30.380796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446920, 35.568645, 30.492075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399876, -0.298766, 0.866509,
		-0.242763, -0.877098, -0.414446,
		0.883836, -0.376083, 0.278201,
		28.712070, 35.455818, 30.575535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089483, 34.998569, 30.351194>,  <28.093388, 35.719082, 30.380796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089483, 34.998569, 30.351194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.382545, 35.090313, 30.607512>,  <28.558382, 35.145359, 30.761301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.382545, 35.090313, 30.607512>,  <28.089483, 34.998569, 30.351194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382545, 35.090313, 30.607512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576903, -0.290259, 0.763500,
		0.361112, -0.929055, -0.080341,
		0.732653, 0.229361, 0.640791,
		28.602341, 35.159122, 30.799749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034048, 34.392536, 30.759396>,  <28.089483, 34.998569, 30.351194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034048, 34.392536, 30.759396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263229, 34.647247, 30.965790>,  <28.400738, 34.800072, 31.089626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263229, 34.647247, 30.965790>,  <28.034048, 34.392536, 30.759396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263229, 34.647247, 30.965790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543728, -0.175753, 0.820652,
		0.613257, -0.750753, 0.245534,
		0.572954, 0.636774, 0.515987,
		28.435116, 34.838280, 31.120586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262270, 34.059685, 31.364273>,  <28.034048, 34.392536, 30.759396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262270, 34.059685, 31.364273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297939, 34.449318, 31.447430>,  <28.319342, 34.683098, 31.497324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297939, 34.449318, 31.447430>,  <28.262270, 34.059685, 31.364273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297939, 34.449318, 31.447430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365654, -0.162134, 0.916520,
		0.926469, -0.157746, 0.341718,
		0.089173, 0.974078, 0.207892,
		28.324692, 34.741543, 31.509798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691504, 34.130966, 31.910017>,  <28.262270, 34.059685, 31.364273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691504, 34.130966, 31.910017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485308, 34.472549, 31.938356>,  <28.361589, 34.677502, 31.955360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485308, 34.472549, 31.938356>,  <28.691504, 34.130966, 31.910017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485308, 34.472549, 31.938356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133387, -0.161641, 0.977793,
		0.846450, 0.494592, 0.197232,
		-0.515490, 0.853962, 0.070849,
		28.330660, 34.728737, 31.959612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885427, 34.480743, 32.592735>,  <28.691504, 34.130966, 31.910017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885427, 34.480743, 32.592735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538275, 34.650055, 32.488720>,  <28.329983, 34.751640, 32.426311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538275, 34.650055, 32.488720>,  <28.885427, 34.480743, 32.592735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538275, 34.650055, 32.488720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287608, -0.001318, 0.957747,
		0.405047, 0.906001, 0.122881,
		-0.867881, 0.423274, -0.260040,
		28.277910, 34.777039, 32.410709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858610, 35.044529, 33.047073>,  <28.885427, 34.480743, 32.592735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858610, 35.044529, 33.047073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480923, 34.989487, 32.927395>,  <28.254311, 34.956463, 32.855587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480923, 34.989487, 32.927395>,  <28.858610, 35.044529, 33.047073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480923, 34.989487, 32.927395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265158, -0.221118, 0.938508,
		-0.195299, 0.965491, 0.172297,
		-0.944219, -0.137604, -0.299192,
		28.197657, 34.948204, 32.837639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465746, 35.424881, 33.462711>,  <28.858610, 35.044529, 33.047073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465746, 35.424881, 33.462711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195726, 35.170940, 33.312366>,  <28.033714, 35.018578, 33.222160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195726, 35.170940, 33.312366>,  <28.465746, 35.424881, 33.462711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195726, 35.170940, 33.312366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364426, -0.156041, 0.918066,
		-0.641485, 0.756714, -0.126021,
		-0.675049, -0.634851, -0.375864,
		27.993212, 34.980484, 33.199608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869850, 35.589996, 33.791759>,  <28.465746, 35.424881, 33.462711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869850, 35.589996, 33.791759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830448, 35.212711, 33.664856>,  <27.806807, 34.986340, 33.588715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830448, 35.212711, 33.664856>,  <27.869850, 35.589996, 33.791759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830448, 35.212711, 33.664856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273058, -0.280950, 0.920058,
		-0.956941, 0.177257, -0.229877,
		-0.098503, -0.943211, -0.317254,
		27.800898, 34.929749, 33.569679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231825, 35.419651, 34.058014>,  <27.869850, 35.589996, 33.791759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231825, 35.419651, 34.058014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391756, 35.064510, 33.966930>,  <27.487715, 34.851425, 33.912281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391756, 35.064510, 33.966930>,  <27.231825, 35.419651, 34.058014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391756, 35.064510, 33.966930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355273, -0.379123, 0.854428,
		-0.844937, -0.260726, -0.467015,
		0.399827, -0.887856, -0.227706,
		27.511703, 34.798153, 33.898617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738855, 34.945438, 34.230591>,  <27.231825, 35.419651, 34.058014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738855, 34.945438, 34.230591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074543, 34.727932, 34.228264>,  <27.275955, 34.597427, 34.226868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074543, 34.727932, 34.228264>,  <26.738855, 34.945438, 34.230591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074543, 34.727932, 34.228264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274271, -0.432487, 0.858912,
		-0.469564, -0.719218, -0.512089,
		0.839218, -0.543765, -0.005820,
		27.326309, 34.564804, 34.226521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626509, 34.264439, 34.452637>,  <26.738855, 34.945438, 34.230591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626509, 34.264439, 34.452637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017487, 34.305397, 34.526520>,  <27.252073, 34.329971, 34.570850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017487, 34.305397, 34.526520>,  <26.626509, 34.264439, 34.452637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017487, 34.305397, 34.526520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111873, -0.490779, 0.864072,
		0.179131, -0.865246, -0.468254,
		0.977444, 0.102397, 0.184711,
		27.310720, 34.336117, 34.581932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822931, 33.614986, 34.550541>,  <26.626509, 34.264439, 34.452637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822931, 33.614986, 34.550541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.096134, 33.850121, 34.723953>,  <27.260056, 33.991199, 34.827999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.096134, 33.850121, 34.723953>,  <26.822931, 33.614986, 34.550541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096134, 33.850121, 34.723953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005264, -0.597492, 0.801858,
		0.730392, -0.545393, -0.411186,
		0.683007, 0.587835, 0.433532,
		27.301037, 34.026470, 34.854012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363018, 33.129402, 34.735844>,  <26.822931, 33.614986, 34.550541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363018, 33.129402, 34.735844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.436995, 33.468521, 34.934650>,  <27.481380, 33.671993, 35.053936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.436995, 33.468521, 34.934650>,  <27.363018, 33.129402, 34.735844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436995, 33.468521, 34.934650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000684, -0.505633, 0.862748,
		0.982749, -0.159898, -0.092933,
		0.184942, 0.847802, 0.497020,
		27.492477, 33.722862, 35.083755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874260, 32.963402, 35.201618>,  <27.363018, 33.129402, 34.735844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874260, 32.963402, 35.201618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719437, 33.287586, 35.377495>,  <27.626543, 33.482098, 35.483021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719437, 33.287586, 35.377495>,  <27.874260, 32.963402, 35.201618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719437, 33.287586, 35.377495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228938, -0.546405, 0.805623,
		0.893181, 0.211162, 0.397038,
		-0.387060, 0.810465, 0.439695,
		27.603319, 33.530727, 35.509403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236147, 33.139130, 35.822094>,  <27.874260, 32.963402, 35.201618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236147, 33.139130, 35.822094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872892, 33.300747, 35.865990>,  <27.654940, 33.397717, 35.892326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872892, 33.300747, 35.865990>,  <28.236147, 33.139130, 35.822094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872892, 33.300747, 35.865990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039386, -0.343381, 0.938370,
		0.416821, 0.847845, 0.327750,
		-0.908135, 0.404041, 0.109735,
		27.600452, 33.421959, 35.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221991, 33.459064, 36.462612>,  <28.236147, 33.139130, 35.822094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221991, 33.459064, 36.462612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833935, 33.399548, 36.385998>,  <27.601101, 33.363838, 36.340031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833935, 33.399548, 36.385998>,  <28.221991, 33.459064, 36.462612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833935, 33.399548, 36.385998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129447, -0.350179, 0.927695,
		-0.205106, 0.924789, 0.320463,
		-0.970142, -0.148793, -0.191536,
		27.542892, 33.354908, 36.328537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973682, 33.769001, 36.992809>,  <28.221991, 33.459064, 36.462612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973682, 33.769001, 36.992809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723867, 33.487583, 36.857178>,  <27.573978, 33.318733, 36.775799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723867, 33.487583, 36.857178>,  <27.973682, 33.769001, 36.992809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723867, 33.487583, 36.857178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112568, -0.348545, 0.930508,
		-0.772838, 0.619309, 0.138484,
		-0.624540, -0.703543, -0.339083,
		27.536505, 33.276520, 36.755451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661217, 34.021751, 36.782150>,  <27.973682, 33.769001, 36.992809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661217, 34.021751, 36.782150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969193, 34.256672, 36.881966>,  <29.153978, 34.397625, 36.941856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969193, 34.256672, 36.881966>,  <28.661217, 34.021751, 36.782150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969193, 34.256672, 36.881966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380704, -0.108938, -0.918257,
		-0.512109, 0.802004, -0.307464,
		0.769941, 0.587301, 0.249538,
		29.200174, 34.432861, 36.956825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653097, 34.636066, 36.362072>,  <28.661217, 34.021751, 36.782150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653097, 34.636066, 36.362072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018011, 34.529964, 36.486897>,  <29.236959, 34.466305, 36.561790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018011, 34.529964, 36.486897>,  <28.653097, 34.636066, 36.362072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018011, 34.529964, 36.486897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242213, -0.264985, -0.933336,
		0.330260, 0.927051, -0.177494,
		0.912283, -0.265252, 0.312058,
		29.291697, 34.450390, 36.580513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098595, 34.881859, 35.830353>,  <28.653097, 34.636066, 36.362072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098595, 34.881859, 35.830353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313162, 34.616184, 36.038628>,  <29.441902, 34.456779, 36.163593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313162, 34.616184, 36.038628>,  <29.098595, 34.881859, 35.830353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313162, 34.616184, 36.038628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367735, -0.371369, -0.852559,
		0.759622, 0.648804, 0.045034,
		0.536419, -0.664183, 0.520688,
		29.474087, 34.416931, 36.194836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728207, 34.765194, 35.424335>,  <29.098595, 34.881859, 35.830353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728207, 34.765194, 35.424335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745422, 34.443489, 35.661423>,  <29.755753, 34.250465, 35.803673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745422, 34.443489, 35.661423>,  <29.728207, 34.765194, 35.424335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745422, 34.443489, 35.661423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524649, -0.486684, -0.698485,
		0.850230, 0.341030, 0.401008,
		0.043040, -0.804262, 0.592714,
		29.758335, 34.202209, 35.839237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333364, 34.534782, 35.210873>,  <29.728207, 34.765194, 35.424335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333364, 34.534782, 35.210873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154270, 34.230106, 35.398216>,  <30.046814, 34.047302, 35.510624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154270, 34.230106, 35.398216>,  <30.333364, 34.534782, 35.210873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154270, 34.230106, 35.398216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545031, -0.647720, -0.532353,
		0.708853, 0.016916, 0.705153,
		-0.447737, -0.761690, 0.468359,
		30.019949, 34.001598, 35.538723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886248, 34.122196, 35.430202>,  <30.333364, 34.534782, 35.210873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886248, 34.122196, 35.430202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.561398, 33.889591, 35.411045>,  <30.366488, 33.750027, 35.399551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.561398, 33.889591, 35.411045>,  <30.886248, 34.122196, 35.430202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561398, 33.889591, 35.411045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460965, -0.589109, -0.663673,
		0.357716, -0.561066, 0.746488,
		-0.812127, -0.581511, -0.047898,
		30.317759, 33.715137, 35.396675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161844, 33.508160, 35.444214>,  <30.886248, 34.122196, 35.430202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161844, 33.508160, 35.444214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809717, 33.474865, 35.257404>,  <30.598440, 33.454887, 35.145321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809717, 33.474865, 35.257404>,  <31.161844, 33.508160, 35.444214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809717, 33.474865, 35.257404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457799, -0.407082, -0.790382,
		-0.124328, -0.909591, 0.396467,
		-0.880320, -0.083235, -0.467022,
		30.545622, 33.449894, 35.117298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144592, 32.827221, 35.103825>,  <31.161844, 33.508160, 35.444214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144592, 32.827221, 35.103825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871481, 33.054737, 34.920395>,  <30.707615, 33.191246, 34.810337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871481, 33.054737, 34.920395>,  <31.144592, 32.827221, 35.103825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871481, 33.054737, 34.920395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328800, -0.321293, -0.888066,
		-0.652461, -0.757131, 0.032352,
		-0.682777, 0.568791, -0.458576,
		30.666647, 33.225376, 34.782822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819792, 32.452869, 34.554348>,  <31.144592, 32.827221, 35.103825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819792, 32.452869, 34.554348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682215, 32.798904, 34.408295>,  <30.599669, 33.006527, 34.320663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682215, 32.798904, 34.408295>,  <30.819792, 32.452869, 34.554348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682215, 32.798904, 34.408295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161815, -0.328430, -0.930564,
		-0.924943, -0.379144, -0.027023,
		-0.343942, 0.865092, -0.365130,
		30.579033, 33.058434, 34.298756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622900, 32.306488, 33.897385>,  <30.819792, 32.452869, 34.554348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622900, 32.306488, 33.897385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592318, 32.702850, 33.853096>,  <30.573969, 32.940666, 33.826523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592318, 32.702850, 33.853096>,  <30.622900, 32.306488, 33.897385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592318, 32.702850, 33.853096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018987, -0.112476, -0.993473,
		-0.996892, -0.073854, 0.027414,
		-0.076455, 0.990906, -0.110724,
		30.569382, 33.000122, 33.819878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243120, 32.543190, 33.320061>,  <30.622900, 32.306488, 33.897385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243120, 32.543190, 33.320061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.486639, 32.853783, 33.385101>,  <30.632751, 33.040138, 33.424126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.486639, 32.853783, 33.385101>,  <30.243120, 32.543190, 33.320061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486639, 32.853783, 33.385101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152837, 0.086322, -0.984474,
		-0.778464, 0.624197, -0.066123,
		0.608798, 0.776484, 0.162599,
		30.669279, 33.086727, 33.433880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027159, 33.016258, 32.895111>,  <30.243120, 32.543190, 33.320061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027159, 33.016258, 32.895111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393854, 33.157879, 32.969120>,  <30.613873, 33.242851, 33.013527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393854, 33.157879, 32.969120>,  <30.027159, 33.016258, 32.895111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393854, 33.157879, 32.969120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174597, 0.061484, -0.982718,
		-0.359308, 0.933203, -0.005451,
		0.916740, 0.354051, 0.185027,
		30.668877, 33.264095, 33.024628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081833, 33.564598, 32.490200>,  <30.027159, 33.016258, 32.895111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081833, 33.564598, 32.490200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.453808, 33.434780, 32.559349>,  <30.676992, 33.356892, 32.600838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.453808, 33.434780, 32.559349>,  <30.081833, 33.564598, 32.490200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453808, 33.434780, 32.559349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226359, 0.134753, -0.964678,
		0.289784, 0.936223, 0.198775,
		0.929939, -0.324543, 0.172873,
		30.732790, 33.337418, 32.611210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498566, 34.077488, 32.151867>,  <30.081833, 33.564598, 32.490200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498566, 34.077488, 32.151867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723463, 33.752567, 32.213909>,  <30.858400, 33.557617, 32.251133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723463, 33.752567, 32.213909>,  <30.498566, 34.077488, 32.151867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723463, 33.752567, 32.213909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316709, 0.038243, -0.947752,
		0.763924, 0.581989, 0.278763,
		0.562241, -0.812297, 0.155107,
		30.892136, 33.508877, 32.260441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084429, 34.267403, 31.852901>,  <30.498566, 34.077488, 32.151867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084429, 34.267403, 31.852901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.133055, 33.872540, 31.894363>,  <31.162230, 33.635620, 31.919241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.133055, 33.872540, 31.894363>,  <31.084429, 34.267403, 31.852901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133055, 33.872540, 31.894363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243026, -0.071649, -0.967370,
		0.962373, 0.142787, 0.231195,
		0.121563, -0.987157, 0.103654,
		31.169523, 33.576393, 31.925459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710234, 34.174660, 31.637383>,  <31.084429, 34.267403, 31.852901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710234, 34.174660, 31.637383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540083, 33.814579, 31.600098>,  <31.437992, 33.598530, 31.577726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540083, 33.814579, 31.600098>,  <31.710234, 34.174660, 31.637383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540083, 33.814579, 31.600098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071766, 0.069120, -0.995024,
		0.902166, -0.429951, 0.035202,
		-0.425378, -0.900203, -0.093213,
		31.412470, 33.544518, 31.572134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095646, 33.839958, 31.128817>,  <31.710234, 34.174660, 31.637383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095646, 33.839958, 31.128817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.768208, 33.610325, 31.136154>,  <31.571745, 33.472546, 31.140556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.768208, 33.610325, 31.136154>,  <32.095646, 33.839958, 31.128817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768208, 33.610325, 31.136154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034500, -0.081022, -0.996115,
		0.573339, -0.814778, 0.086130,
		-0.818591, -0.574083, 0.018343,
		31.522631, 33.438099, 31.141657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153610, 33.106731, 30.877457>,  <32.095646, 33.839958, 31.128817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153610, 33.106731, 30.877457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.771809, 33.187611, 30.789778>,  <31.542728, 33.236137, 30.737171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.771809, 33.187611, 30.789778>,  <32.153610, 33.106731, 30.877457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771809, 33.187611, 30.789778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128401, -0.384753, -0.914045,
		-0.269153, -0.900600, 0.341285,
		-0.954500, 0.202197, -0.219195,
		31.485458, 33.248272, 30.724018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053883, 32.736614, 30.274666>,  <32.153610, 33.106731, 30.877457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053883, 32.736614, 30.274666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.738764, 32.982101, 30.295563>,  <31.549692, 33.129395, 30.308100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.738764, 32.982101, 30.295563>,  <32.053883, 32.736614, 30.274666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738764, 32.982101, 30.295563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199828, -0.174433, -0.964179,
		-0.582623, -0.770014, 0.260056,
		-0.787794, 0.613719, 0.052241,
		31.502426, 33.166218, 30.311235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451900, 32.364292, 30.066088>,  <32.053883, 32.736614, 30.274666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451900, 32.364292, 30.066088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.365786, 32.751770, 30.016647>,  <31.314117, 32.984257, 29.986982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.365786, 32.751770, 30.016647>,  <31.451900, 32.364292, 30.066088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365786, 32.751770, 30.016647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228416, -0.173010, -0.958068,
		-0.949462, -0.178025, 0.258512,
		-0.215285, 0.968698, -0.123603,
		31.301201, 33.042377, 29.979567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819710, 32.356926, 29.862629>,  <31.451900, 32.364292, 30.066088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819710, 32.356926, 29.862629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974686, 32.696419, 29.718658>,  <31.067671, 32.900116, 29.632277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974686, 32.696419, 29.718658>,  <30.819710, 32.356926, 29.862629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974686, 32.696419, 29.718658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354530, -0.223223, -0.908009,
		-0.851000, 0.479401, 0.214416,
		0.387438, 0.848732, -0.359924,
		31.090918, 32.951038, 29.610682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236563, 32.703293, 29.543165>,  <30.819710, 32.356926, 29.862629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236563, 32.703293, 29.543165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572859, 32.842113, 29.376928>,  <30.774635, 32.925404, 29.277185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572859, 32.842113, 29.376928>,  <30.236563, 32.703293, 29.543165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572859, 32.842113, 29.376928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443936, 0.002422, -0.896055,
		-0.309969, 0.937844, 0.156104,
		0.840738, 0.347049, -0.415592,
		30.825081, 32.946228, 29.252251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.335854, 35.470905, 45.630016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.975918, 35.339500, 45.744823>,  <40.759956, 35.260658, 45.813709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.975918, 35.339500, 45.744823>,  <41.335854, 35.470905, 45.630016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975918, 35.339500, 45.744823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214494, 0.239734, 0.946847,
		-0.379855, 0.913570, -0.145258,
		-0.899835, -0.328508, 0.287020,
		40.705967, 35.240948, 45.830929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942883, 36.063835, 45.964447>,  <41.335854, 35.470905, 45.630016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942883, 36.063835, 45.964447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.838860, 35.702423, 46.100685>,  <40.776447, 35.485577, 46.182430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.838860, 35.702423, 46.100685>,  <40.942883, 36.063835, 45.964447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838860, 35.702423, 46.100685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198315, 0.295236, 0.934616,
		-0.945009, 0.310596, 0.102406,
		-0.260054, -0.903529, 0.340597,
		40.760845, 35.431366, 46.202866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798717, 36.260975, 46.597027>,  <40.942883, 36.063835, 45.964447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798717, 36.260975, 46.597027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.767727, 35.863270, 46.626541>,  <40.749134, 35.624649, 46.644249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.767727, 35.863270, 46.626541>,  <40.798717, 36.260975, 46.597027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767727, 35.863270, 46.626541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038878, 0.070937, 0.996723,
		-0.996236, 0.080088, 0.033159,
		-0.077473, -0.994260, 0.073784,
		40.744484, 35.564991, 46.648678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236942, 36.062920, 47.213558>,  <40.798717, 36.260975, 46.597027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236942, 36.062920, 47.213558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.473145, 35.744286, 47.161785>,  <40.614864, 35.553104, 47.130722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.473145, 35.744286, 47.161785>,  <40.236942, 36.062920, 47.213558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473145, 35.744286, 47.161785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228704, 0.011370, 0.973430,
		-0.773950, -0.604416, 0.188897,
		0.590504, -0.796588, -0.129432,
		40.650295, 35.505310, 47.122955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102638, 35.532948, 47.808418>,  <40.236942, 36.062920, 47.213558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102638, 35.532948, 47.808418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471149, 35.493420, 47.657959>,  <40.692257, 35.469704, 47.567684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471149, 35.493420, 47.657959>,  <40.102638, 35.532948, 47.808418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471149, 35.493420, 47.657959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379900, 0.021710, 0.924773,
		-0.083219, -0.994868, 0.057542,
		0.921276, -0.098819, -0.376144,
		40.747532, 35.463776, 47.545116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316578, 34.882133, 48.012497>,  <40.102638, 35.532948, 47.808418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316578, 34.882133, 48.012497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.651886, 35.084908, 47.932178>,  <40.853073, 35.206573, 47.883987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.651886, 35.084908, 47.932178>,  <40.316578, 34.882133, 48.012497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651886, 35.084908, 47.932178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281086, -0.086223, 0.955801,
		0.467216, -0.857662, -0.214771,
		0.838272, 0.506934, -0.200792,
		40.903366, 35.236988, 47.871941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900932, 34.449577, 48.205563>,  <40.316578, 34.882133, 48.012497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900932, 34.449577, 48.205563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.039146, 34.824364, 48.184795>,  <41.122074, 35.049236, 48.172333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.039146, 34.824364, 48.184795>,  <40.900932, 34.449577, 48.205563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039146, 34.824364, 48.184795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555829, -0.159770, 0.815799,
		0.756084, -0.310742, -0.576000,
		0.345531, 0.936970, -0.051920,
		41.142807, 35.105453, 48.169220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663898, 34.511292, 48.148056>,  <40.900932, 34.449577, 48.205563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663898, 34.511292, 48.148056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.522522, 34.837543, 48.331284>,  <41.437695, 35.033295, 48.441219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.522522, 34.837543, 48.331284>,  <41.663898, 34.511292, 48.148056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522522, 34.837543, 48.331284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503795, -0.246630, 0.827867,
		0.788206, 0.523378, -0.323739,
		-0.353444, 0.815628, 0.458071,
		41.416489, 35.082233, 48.468704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098263, 34.478611, 48.645603>,  <41.663898, 34.511292, 48.148056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098263, 34.478611, 48.645603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.880562, 34.801414, 48.737274>,  <41.749939, 34.995098, 48.792278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.880562, 34.801414, 48.737274>,  <42.098263, 34.478611, 48.645603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880562, 34.801414, 48.737274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457020, 0.056126, 0.887684,
		0.703505, 0.587867, -0.399366,
		-0.544255, 0.807008, 0.229182,
		41.717285, 35.043518, 48.806030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503998, 34.997307, 48.817539>,  <42.098263, 34.478611, 48.645603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503998, 34.997307, 48.817539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.161880, 35.075306, 49.009560>,  <41.956608, 35.122105, 49.124771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.161880, 35.075306, 49.009560>,  <42.503998, 34.997307, 48.817539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161880, 35.075306, 49.009560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511195, 0.166378, 0.843207,
		0.084552, 0.966590, -0.241983,
		-0.855296, 0.194995, 0.480048,
		41.905293, 35.133804, 49.153576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731869, 35.412270, 49.311131>,  <42.503998, 34.997307, 48.817539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731869, 35.412270, 49.311131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.367489, 35.329376, 49.453800>,  <42.148861, 35.279640, 49.539402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.367489, 35.329376, 49.453800>,  <42.731869, 35.412270, 49.311131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367489, 35.329376, 49.453800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372158, -0.039920, 0.927310,
		-0.177935, 0.977476, 0.113490,
		-0.910954, -0.207237, 0.356673,
		42.094204, 35.267204, 49.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763527, 35.676575, 49.923588>,  <42.731869, 35.412270, 49.311131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763527, 35.676575, 49.923588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.452267, 35.428802, 49.965122>,  <42.265511, 35.280140, 49.990044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.452267, 35.428802, 49.965122>,  <42.763527, 35.676575, 49.923588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452267, 35.428802, 49.965122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110689, 0.027485, 0.993475,
		-0.618244, 0.784569, 0.047177,
		-0.778153, -0.619432, 0.103835,
		42.218822, 35.242973, 49.996273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274807, 35.925652, 50.474499>,  <42.763527, 35.676575, 49.923588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274807, 35.925652, 50.474499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.226578, 35.531963, 50.422710>,  <42.197639, 35.295750, 50.391636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.226578, 35.531963, 50.422710>,  <42.274807, 35.925652, 50.474499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226578, 35.531963, 50.422710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043571, -0.135544, 0.989813,
		-0.991748, 0.113703, 0.059227,
		-0.120572, -0.984225, -0.129472,
		42.190407, 35.236694, 50.383869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797829, 35.574623, 50.988918>,  <42.274807, 35.925652, 50.474499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797829, 35.574623, 50.988918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.039963, 35.273876, 50.884407>,  <42.185242, 35.093426, 50.821701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.039963, 35.273876, 50.884407>,  <41.797829, 35.574623, 50.988918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039963, 35.273876, 50.884407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150311, -0.214364, 0.965119,
		-0.781653, -0.623489, -0.016747,
		0.605331, -0.751870, -0.261275,
		42.221561, 35.048317, 50.806023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836948, 36.162083, 51.247650>,  <41.797829, 35.574623, 50.988918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836948, 36.162083, 51.247650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.755100, 36.536625, 51.361752>,  <41.705994, 36.761349, 51.430214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.755100, 36.536625, 51.361752>,  <41.836948, 36.162083, 51.247650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755100, 36.536625, 51.361752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269743, 0.226197, -0.935988,
		-0.940941, -0.268466, 0.206291,
		-0.204618, 0.936355, 0.285255,
		41.693714, 36.817532, 51.447327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112862, 36.374573, 51.161514>,  <41.836948, 36.162083, 51.247650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112862, 36.374573, 51.161514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.325840, 36.712776, 51.145416>,  <41.453629, 36.915699, 51.135757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.325840, 36.712776, 51.145416>,  <41.112862, 36.374573, 51.161514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325840, 36.712776, 51.145416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359830, 0.183052, -0.914885,
		-0.766174, 0.501609, 0.401704,
		0.532448, 0.845506, -0.040245,
		41.485573, 36.966427, 51.133343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653118, 36.893761, 50.860317>,  <41.112862, 36.374573, 51.161514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653118, 36.893761, 50.860317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.028400, 37.025635, 50.818207>,  <41.253571, 37.104759, 50.792942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.028400, 37.025635, 50.818207>,  <40.653118, 36.893761, 50.860317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028400, 37.025635, 50.818207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209864, 0.300086, -0.930540,
		-0.275194, 0.895129, 0.350731,
		0.938203, 0.329685, -0.105274,
		41.309860, 37.124538, 50.786625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517548, 37.459988, 50.480019>,  <40.653118, 36.893761, 50.860317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517548, 37.459988, 50.480019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.912376, 37.440308, 50.419003>,  <41.149273, 37.428497, 50.382393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.912376, 37.440308, 50.419003>,  <40.517548, 37.459988, 50.480019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912376, 37.440308, 50.419003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137423, 0.230046, -0.963428,
		0.082496, 0.971935, 0.220310,
		0.987071, -0.049203, -0.152544,
		41.208496, 37.425549, 50.373238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599369, 38.036789, 50.063274>,  <40.517548, 37.459988, 50.480019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599369, 38.036789, 50.063274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.921791, 37.801651, 50.035828>,  <41.115246, 37.660568, 50.019360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.921791, 37.801651, 50.035828>,  <40.599369, 38.036789, 50.063274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921791, 37.801651, 50.035828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057928, 0.193744, -0.979340,
		0.588995, 0.785430, 0.190222,
		0.806058, -0.587846, -0.068616,
		41.163609, 37.625298, 50.015244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106892, 38.445499, 49.732410>,  <40.599369, 38.036789, 50.063274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106892, 38.445499, 49.732410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.193836, 38.061489, 49.661869>,  <41.246002, 37.831081, 49.619545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.193836, 38.061489, 49.661869>,  <41.106892, 38.445499, 49.732410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193836, 38.061489, 49.661869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070670, 0.164725, -0.983805,
		0.973529, 0.226308, -0.032040,
		0.217365, -0.960027, -0.176357,
		41.259045, 37.773479, 49.608963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556992, 38.476917, 49.099464>,  <41.106892, 38.445499, 49.732410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556992, 38.476917, 49.099464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.399761, 38.109634, 49.118984>,  <41.305424, 37.889263, 49.130695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.399761, 38.109634, 49.118984>,  <41.556992, 38.476917, 49.099464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399761, 38.109634, 49.118984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231037, 0.047257, -0.971797,
		0.890009, -0.393261, -0.230716,
		-0.393073, -0.918212, 0.048799,
		41.281837, 37.834171, 49.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877316, 38.043877, 48.435822>,  <41.556992, 38.476917, 49.099464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877316, 38.043877, 48.435822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.534763, 37.904449, 48.588200>,  <41.329231, 37.820793, 48.679626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.534763, 37.904449, 48.588200>,  <41.877316, 38.043877, 48.435822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534763, 37.904449, 48.588200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410927, 0.013335, -0.911571,
		0.312663, -0.937189, -0.154655,
		-0.856376, -0.348566, 0.380947,
		41.277851, 37.799881, 48.702484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683907, 37.574108, 47.873562>,  <41.877316, 38.043877, 48.435822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683907, 37.574108, 47.873562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.343571, 37.628242, 48.076641>,  <41.139370, 37.660725, 48.198490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.343571, 37.628242, 48.076641>,  <41.683907, 37.574108, 47.873562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343571, 37.628242, 48.076641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518718, -0.062423, -0.852664,
		-0.083729, -0.988827, 0.123328,
		-0.850836, 0.135365, 0.507696,
		41.088318, 37.668842, 48.228951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259735, 36.976048, 47.647659>,  <41.683907, 37.574108, 47.873562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259735, 36.976048, 47.647659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.030712, 37.273186, 47.786427>,  <40.893299, 37.451469, 47.869686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.030712, 37.273186, 47.786427>,  <41.259735, 36.976048, 47.647659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030712, 37.273186, 47.786427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504090, 0.014746, -0.863525,
		-0.646584, -0.669297, 0.366020,
		-0.572557, 0.742849, 0.346920,
		40.858944, 37.496040, 47.890503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697765, 36.909023, 47.180981>,  <41.259735, 36.976048, 47.647659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697765, 36.909023, 47.180981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621662, 37.263393, 47.350189>,  <40.576000, 37.476013, 47.451714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621662, 37.263393, 47.350189>,  <40.697765, 36.909023, 47.180981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621662, 37.263393, 47.350189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655379, 0.206205, -0.726607,
		-0.730946, -0.415479, 0.541383,
		-0.190254, 0.885921, 0.423021,
		40.564587, 37.529171, 47.477097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029976, 36.919796, 47.287796>,  <40.697765, 36.909023, 47.180981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029976, 36.919796, 47.287796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200794, 37.280083, 47.255936>,  <40.303288, 37.496254, 47.236820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200794, 37.280083, 47.255936>,  <40.029976, 36.919796, 47.287796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200794, 37.280083, 47.255936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253320, 0.034610, -0.966763,
		-0.868019, 0.433035, 0.242948,
		0.427051, 0.900713, -0.079654,
		40.328911, 37.550297, 47.232040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533470, 37.235744, 46.931416>,  <40.029976, 36.919796, 47.287796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533470, 37.235744, 46.931416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.876823, 37.436558, 46.889191>,  <40.082836, 37.557045, 46.863857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.876823, 37.436558, 46.889191>,  <39.533470, 37.235744, 46.931416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876823, 37.436558, 46.889191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190031, 0.120029, -0.974413,
		-0.476515, 0.856480, 0.198433,
		0.858383, 0.502031, -0.105562,
		40.134338, 37.587166, 46.857521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321732, 37.730522, 46.503632>,  <39.533470, 37.235744, 46.931416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321732, 37.730522, 46.503632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719521, 37.751019, 46.466965>,  <39.958195, 37.763317, 46.444965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719521, 37.751019, 46.466965>,  <39.321732, 37.730522, 46.503632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719521, 37.751019, 46.466965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103048, 0.307893, -0.945824,
		-0.020237, 0.950040, 0.311470,
		0.994470, 0.051237, -0.091669,
		40.017860, 37.766388, 46.439465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921455, 38.410725, 46.593513>,  <39.321732, 37.730522, 46.503632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921455, 38.410725, 46.593513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666466, 38.102642, 46.601524>,  <38.513470, 37.917793, 46.606331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666466, 38.102642, 46.601524>,  <38.921455, 38.410725, 46.593513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666466, 38.102642, 46.601524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227034, -0.162942, 0.960159,
		-0.736259, 0.616627, 0.278735,
		-0.637478, -0.770208, 0.020028,
		38.475224, 37.871578, 46.607533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382095, 38.682316, 47.090084>,  <38.921455, 38.410725, 46.593513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382095, 38.682316, 47.090084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373154, 38.282425, 47.087154>,  <38.367790, 38.042492, 47.085396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373154, 38.282425, 47.087154>,  <38.382095, 38.682316, 47.090084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373154, 38.282425, 47.087154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074310, -0.008971, 0.997195,
		-0.996985, 0.021744, 0.074490,
		-0.022351, -0.999723, -0.007328,
		38.366447, 37.982510, 47.084957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883408, 38.495796, 47.581413>,  <38.382095, 38.682316, 47.090084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883408, 38.495796, 47.581413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100494, 38.163589, 47.531281>,  <38.230747, 37.964268, 47.501202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100494, 38.163589, 47.531281>,  <37.883408, 38.495796, 47.581413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100494, 38.163589, 47.531281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037012, -0.125424, 0.991413,
		-0.839102, -0.542691, -0.037330,
		0.542713, -0.830515, -0.125330,
		38.263309, 37.914436, 47.493683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502472, 37.923279, 48.015068>,  <37.883408, 38.495796, 47.581413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502472, 37.923279, 48.015068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.870186, 37.778198, 47.953918>,  <38.090813, 37.691151, 47.917229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.870186, 37.778198, 47.953918>,  <37.502472, 37.923279, 48.015068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870186, 37.778198, 47.953918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065406, -0.242243, 0.968009,
		-0.388130, -0.899871, -0.198967,
		0.919281, -0.362699, -0.152878,
		38.145969, 37.669388, 47.908054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503128, 37.333820, 48.339619>,  <37.502472, 37.923279, 48.015068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503128, 37.333820, 48.339619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887611, 37.443935, 48.332790>,  <38.118301, 37.510002, 48.328693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887611, 37.443935, 48.332790>,  <37.503128, 37.333820, 48.339619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887611, 37.443935, 48.332790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050593, -0.115131, 0.992061,
		0.271134, -0.954444, -0.124593,
		0.961211, 0.275285, -0.017072,
		38.175976, 37.526520, 48.327667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870895, 36.898060, 48.913860>,  <37.503128, 37.333820, 48.339619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870895, 36.898060, 48.913860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157852, 37.166729, 48.839886>,  <38.330025, 37.327930, 48.795502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157852, 37.166729, 48.839886>,  <37.870895, 36.898060, 48.913860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157852, 37.166729, 48.839886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141896, 0.119025, 0.982700,
		0.682070, -0.731220, -0.009921,
		0.717389, 0.671677, -0.184940,
		38.373070, 37.368233, 48.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519299, 36.631977, 49.113766>,  <37.870895, 36.898060, 48.913860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519299, 36.631977, 49.113766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541992, 37.030605, 49.137856>,  <38.555607, 37.269783, 49.152309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541992, 37.030605, 49.137856>,  <38.519299, 36.631977, 49.113766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541992, 37.030605, 49.137856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171874, -0.069170, 0.982688,
		0.983484, -0.045396, -0.175209,
		0.056729, 0.996572, 0.060225,
		38.559010, 37.329578, 49.155922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983906, 35.921730, 49.358360>,  <38.519299, 36.631977, 49.113766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983906, 35.921730, 49.358360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658604, 35.691540, 49.392872>,  <38.463425, 35.553425, 49.413578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658604, 35.691540, 49.392872>,  <38.983906, 35.921730, 49.358360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658604, 35.691540, 49.392872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035984, -0.197711, -0.979600,
		0.580798, -0.793557, 0.181497,
		-0.813252, -0.575480, 0.086275,
		38.414627, 35.518894, 49.418755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127850, 35.373322, 48.953144>,  <38.983906, 35.921730, 49.358360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127850, 35.373322, 48.953144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.728748, 35.375660, 48.979824>,  <38.489288, 35.377064, 48.995831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.728748, 35.375660, 48.979824>,  <39.127850, 35.373322, 48.953144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728748, 35.375660, 48.979824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066853, -0.142555, -0.987527,
		0.003733, -0.989770, 0.142626,
		-0.997756, 0.005849, 0.066701,
		38.429420, 35.377415, 48.999836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870190, 34.785069, 48.591633>,  <39.127850, 35.373322, 48.953144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870190, 34.785069, 48.591633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534100, 35.000820, 48.613842>,  <38.332443, 35.130272, 48.627167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534100, 35.000820, 48.613842>,  <38.870190, 34.785069, 48.591633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534100, 35.000820, 48.613842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155874, -0.142197, -0.977488,
		-0.519344, -0.829968, 0.203554,
		-0.840229, 0.539382, 0.055522,
		38.282032, 35.162636, 48.630497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382454, 34.376816, 48.321918>,  <38.870190, 34.785069, 48.591633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382454, 34.376816, 48.321918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.255314, 34.750599, 48.257713>,  <38.179031, 34.974869, 48.219193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.255314, 34.750599, 48.257713>,  <38.382454, 34.376816, 48.321918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255314, 34.750599, 48.257713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164118, -0.220958, -0.961376,
		-0.933830, -0.279228, 0.223592,
		-0.317847, 0.934457, -0.160511,
		38.159958, 35.030937, 48.209560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833416, 34.271080, 47.980198>,  <38.382454, 34.376816, 48.321918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833416, 34.271080, 47.980198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908634, 34.655968, 47.901440>,  <37.953766, 34.886902, 47.854183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908634, 34.655968, 47.901440>,  <37.833416, 34.271080, 47.980198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908634, 34.655968, 47.901440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225652, -0.152784, -0.962153,
		-0.955888, 0.225356, 0.188398,
		0.188042, 0.962222, -0.196896,
		37.965046, 34.944633, 47.842369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273808, 34.451607, 47.516705>,  <37.833416, 34.271080, 47.980198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273808, 34.451607, 47.516705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534119, 34.752163, 47.473087>,  <37.690308, 34.932499, 47.446918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534119, 34.752163, 47.473087>,  <37.273808, 34.451607, 47.516705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534119, 34.752163, 47.473087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238136, 0.065624, -0.969012,
		-0.720955, 0.656582, 0.221641,
		0.650781, 0.751395, -0.109044,
		37.729351, 34.977581, 47.440372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852993, 34.948654, 47.161064>,  <37.273808, 34.451607, 47.516705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852993, 34.948654, 47.161064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230385, 35.066158, 47.099686>,  <37.456821, 35.136662, 47.062859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230385, 35.066158, 47.099686>,  <36.852993, 34.948654, 47.161064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230385, 35.066158, 47.099686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193958, 0.113976, -0.974366,
		-0.268737, 0.949061, 0.164511,
		0.943483, 0.293756, -0.153449,
		37.513432, 35.154285, 47.053650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.605545, 33.418499, 50.737507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.883289, 33.577961, 50.497860>,  <40.049934, 33.673637, 50.354073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.883289, 33.577961, 50.497860>,  <39.605545, 33.418499, 50.737507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883289, 33.577961, 50.497860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432895, -0.433664, -0.790277,
		-0.574862, 0.808091, -0.128543,
		0.694360, 0.398654, -0.599115,
		40.091599, 33.697556, 50.318127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251789, 33.725586, 50.233593>,  <39.605545, 33.418499, 50.737507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251789, 33.725586, 50.233593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.616566, 33.654316, 50.085751>,  <39.835434, 33.611553, 49.997044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.616566, 33.654316, 50.085751>,  <39.251789, 33.725586, 50.233593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616566, 33.654316, 50.085751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410313, -0.398154, -0.820437,
		-0.000983, 0.899849, -0.436201,
		0.911944, -0.178172, -0.369611,
		39.890148, 33.600864, 49.974869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232414, 34.041168, 49.601841>,  <39.251789, 33.725586, 50.233593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232414, 34.041168, 49.601841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.507832, 33.752029, 49.578487>,  <39.673080, 33.578548, 49.564476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.507832, 33.752029, 49.578487>,  <39.232414, 34.041168, 49.601841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507832, 33.752029, 49.578487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418807, -0.330625, -0.845747,
		0.592042, 0.606780, -0.530381,
		0.688540, -0.722845, -0.058379,
		39.714394, 33.535175, 49.560974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374287, 34.123714, 49.000416>,  <39.232414, 34.041168, 49.601841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374287, 34.123714, 49.000416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.566147, 33.784576, 49.090824>,  <39.681263, 33.581093, 49.145069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.566147, 33.784576, 49.090824>,  <39.374287, 34.123714, 49.000416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566147, 33.784576, 49.090824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082409, -0.299980, -0.950379,
		0.873580, 0.437225, -0.213757,
		0.479652, -0.847848, 0.226025,
		39.710041, 33.530220, 49.158630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100727, 34.133240, 48.625191>,  <39.374287, 34.123714, 49.000416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100727, 34.133240, 48.625191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.958351, 33.765488, 48.692188>,  <39.872925, 33.544838, 48.732388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.958351, 33.765488, 48.692188>,  <40.100727, 34.133240, 48.625191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958351, 33.765488, 48.692188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121881, -0.223370, -0.967084,
		0.926526, -0.323812, 0.191561,
		-0.355942, -0.919376, 0.167491,
		39.851570, 33.489674, 48.742435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598083, 33.708199, 48.347229>,  <40.100727, 34.133240, 48.625191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598083, 33.708199, 48.347229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.239754, 33.532841, 48.376385>,  <40.024757, 33.427628, 48.393879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.239754, 33.532841, 48.376385>,  <40.598083, 33.708199, 48.347229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239754, 33.532841, 48.376385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017738, -0.128619, -0.991535,
		0.444055, -0.889534, 0.107444,
		-0.895824, -0.438391, 0.072892,
		39.971008, 33.401325, 48.398251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511654, 33.228489, 47.706806>,  <40.598083, 33.708199, 48.347229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511654, 33.228489, 47.706806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.144447, 33.216599, 47.864971>,  <39.924122, 33.209465, 47.959869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.144447, 33.216599, 47.864971>,  <40.511654, 33.228489, 47.706806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144447, 33.216599, 47.864971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391462, -0.090994, -0.915684,
		0.063201, -0.995408, 0.071898,
		-0.918021, -0.029727, 0.395416,
		39.869041, 33.207680, 47.983597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218689, 32.630898, 47.484882>,  <40.511654, 33.228489, 47.706806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218689, 32.630898, 47.484882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.922565, 32.884571, 47.574100>,  <39.744892, 33.036777, 47.627632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.922565, 32.884571, 47.574100>,  <40.218689, 32.630898, 47.484882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922565, 32.884571, 47.574100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426013, -0.185902, -0.885411,
		-0.520053, -0.750497, 0.407797,
		-0.740309, 0.634188, 0.223042,
		39.700474, 33.074829, 47.641014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700653, 32.298092, 47.142044>,  <40.218689, 32.630898, 47.484882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700653, 32.298092, 47.142044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.529503, 32.654835, 47.200714>,  <39.426815, 32.868881, 47.235916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.529503, 32.654835, 47.200714>,  <39.700653, 32.298092, 47.142044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529503, 32.654835, 47.200714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539897, -0.122047, -0.832836,
		-0.724870, -0.435538, 0.533732,
		-0.427872, 0.891858, 0.146677,
		39.401142, 32.922394, 47.244717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981449, 32.210320, 47.111115>,  <39.700653, 32.298092, 47.142044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981449, 32.210320, 47.111115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.984726, 32.603374, 47.036972>,  <38.986694, 32.839207, 46.992485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.984726, 32.603374, 47.036972>,  <38.981449, 32.210320, 47.111115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984726, 32.603374, 47.036972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609644, -0.142021, -0.779848,
		-0.792633, 0.119394, 0.597895,
		0.008196, 0.982637, -0.185358,
		38.987186, 32.898167, 46.981365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359528, 32.388058, 47.013416>,  <38.981449, 32.210320, 47.111115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359528, 32.388058, 47.013416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.565536, 32.681511, 46.836086>,  <38.689140, 32.857582, 46.729691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.565536, 32.681511, 46.836086>,  <38.359528, 32.388058, 47.013416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565536, 32.681511, 46.836086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560231, -0.103347, -0.821864,
		-0.648763, 0.671640, 0.357779,
		0.515021, 0.733634, -0.443322,
		38.720043, 32.901600, 46.703091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848991, 32.806454, 46.809799>,  <38.359528, 32.388058, 47.013416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848991, 32.806454, 46.809799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.152039, 32.934807, 46.582451>,  <38.333866, 33.011818, 46.446041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.152039, 32.934807, 46.582451>,  <37.848991, 32.806454, 46.809799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152039, 32.934807, 46.582451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551135, -0.151996, -0.820455,
		-0.349658, 0.934844, 0.061693,
		0.757621, 0.320880, -0.568372,
		38.379326, 33.031071, 46.411938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186687, 33.258240, 46.777737>,  <37.848991, 32.806454, 46.809799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186687, 33.258240, 46.777737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.857838, 33.089436, 46.930588>,  <36.660530, 32.988152, 47.022301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.857838, 33.089436, 46.930588>,  <37.186687, 33.258240, 46.777737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857838, 33.089436, 46.930588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459302, -0.095046, 0.883181,
		-0.336394, 0.901594, 0.271970,
		-0.822120, -0.422013, 0.382131,
		36.611202, 32.962833, 47.045227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234169, 33.509087, 47.454563>,  <37.186687, 33.258240, 46.777737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234169, 33.509087, 47.454563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.968998, 33.209618, 47.452888>,  <36.809895, 33.029938, 47.451885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.968998, 33.209618, 47.452888>,  <37.234169, 33.509087, 47.454563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968998, 33.209618, 47.452888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259702, -0.235193, 0.936610,
		-0.702197, 0.619819, 0.350348,
		-0.662928, -0.748671, -0.004184,
		36.770119, 32.985016, 47.451633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777672, 33.608669, 47.948540>,  <37.234169, 33.509087, 47.454563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777672, 33.608669, 47.948540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.775803, 33.214066, 47.883087>,  <36.774681, 32.977303, 47.843815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.775803, 33.214066, 47.883087>,  <36.777672, 33.608669, 47.948540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775803, 33.214066, 47.883087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260708, -0.159179, 0.952205,
		-0.965407, -0.038212, 0.257934,
		-0.004673, -0.986510, -0.163635,
		36.774403, 32.918114, 47.833996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617046, 33.402901, 48.567440>,  <36.777672, 33.608669, 47.948540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617046, 33.402901, 48.567440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.695770, 33.042782, 48.412140>,  <36.743004, 32.826710, 48.318958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.695770, 33.042782, 48.412140>,  <36.617046, 33.402901, 48.567440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695770, 33.042782, 48.412140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193393, -0.352569, 0.915584,
		-0.961179, -0.255280, 0.104721,
		0.196809, -0.900293, -0.388252,
		36.754814, 32.772694, 48.295666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241661, 32.883106, 48.938999>,  <36.617046, 33.402901, 48.567440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241661, 32.883106, 48.938999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562122, 32.715565, 48.768013>,  <36.754398, 32.615040, 48.665421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562122, 32.715565, 48.768013>,  <36.241661, 32.883106, 48.938999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562122, 32.715565, 48.768013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262966, -0.395244, 0.880131,
		-0.537597, -0.817524, -0.206505,
		0.801148, -0.418852, -0.427463,
		36.802467, 32.589909, 48.639774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224113, 32.218994, 49.195705>,  <36.241661, 32.883106, 48.938999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224113, 32.218994, 49.195705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.600407, 32.224377, 49.060154>,  <36.826183, 32.227608, 48.978825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.600407, 32.224377, 49.060154>,  <36.224113, 32.218994, 49.195705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600407, 32.224377, 49.060154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305406, -0.468089, 0.829229,
		-0.147465, -0.883579, -0.444457,
		0.940734, 0.013458, -0.338877,
		36.882626, 32.228413, 48.958492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487282, 31.595001, 49.258530>,  <36.224113, 32.218994, 49.195705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487282, 31.595001, 49.258530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805256, 31.837675, 49.257683>,  <36.996040, 31.983280, 49.257175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805256, 31.837675, 49.257683>,  <36.487282, 31.595001, 49.258530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805256, 31.837675, 49.257683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386799, -0.504132, 0.772164,
		0.467395, -0.614641, -0.635420,
		0.794939, 0.606686, -0.002114,
		37.043739, 32.019680, 49.257050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005196, 31.136803, 49.463413>,  <36.487282, 31.595001, 49.258530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005196, 31.136803, 49.463413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.185139, 31.491592, 49.505188>,  <37.293102, 31.704466, 49.530254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.185139, 31.491592, 49.505188>,  <37.005196, 31.136803, 49.463413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185139, 31.491592, 49.505188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436922, -0.320558, 0.840441,
		0.778928, -0.332445, -0.531743,
		0.449856, 0.886974, 0.104439,
		37.320095, 31.757685, 49.536518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752262, 31.097134, 49.588596>,  <37.005196, 31.136803, 49.463413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752262, 31.097134, 49.588596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.628773, 31.448898, 49.733555>,  <37.554680, 31.659956, 49.820530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.628773, 31.448898, 49.733555>,  <37.752262, 31.097134, 49.588596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628773, 31.448898, 49.733555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543445, -0.149608, 0.826006,
		0.780615, 0.451946, -0.431724,
		-0.308721, 0.879410, 0.362394,
		37.536156, 31.712721, 49.842274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214245, 31.196962, 49.975956>,  <37.752262, 31.097134, 49.588596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214245, 31.196962, 49.975956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.986042, 31.490530, 50.123405>,  <37.849121, 31.666670, 50.211876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.986042, 31.490530, 50.123405>,  <38.214245, 31.196962, 49.975956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986042, 31.490530, 50.123405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653046, 0.133199, 0.745512,
		0.498046, 0.666048, -0.555275,
		-0.570509, 0.733919, 0.368621,
		37.814888, 31.710707, 50.233994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612179, 31.767542, 50.094608>,  <38.214245, 31.196962, 49.975956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612179, 31.767542, 50.094608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.296246, 31.846510, 50.326881>,  <38.106686, 31.893890, 50.466244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.296246, 31.846510, 50.326881>,  <38.612179, 31.767542, 50.094608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296246, 31.846510, 50.326881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611167, 0.332639, 0.718210,
		-0.051367, 0.922158, -0.383387,
		-0.789833, 0.197421, 0.580680,
		38.059296, 31.905737, 50.501087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675564, 32.492157, 50.335468>,  <38.612179, 31.767542, 50.094608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675564, 32.492157, 50.335468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.438656, 32.283543, 50.581142>,  <38.296513, 32.158375, 50.728546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.438656, 32.283543, 50.581142>,  <38.675564, 32.492157, 50.335468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438656, 32.283543, 50.581142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498533, 0.361641, 0.787833,
		-0.632994, 0.772800, 0.045812,
		-0.592270, -0.521533, 0.614182,
		38.260975, 32.127083, 50.765396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513866, 33.004570, 50.823093>,  <38.675564, 32.492157, 50.335468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513866, 33.004570, 50.823093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.430687, 32.664028, 51.015739>,  <38.380779, 32.459702, 51.131325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.430687, 32.664028, 51.015739>,  <38.513866, 33.004570, 50.823093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430687, 32.664028, 51.015739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326151, 0.403847, 0.854712,
		-0.922162, 0.334813, 0.193693,
		-0.207947, -0.851357, 0.481612,
		38.368301, 32.408623, 51.160225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362888, 33.243298, 51.480839>,  <38.513866, 33.004570, 50.823093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362888, 33.243298, 51.480839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.398369, 32.848259, 51.532658>,  <38.419659, 32.611237, 51.563747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.398369, 32.848259, 51.532658>,  <38.362888, 33.243298, 51.480839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398369, 32.848259, 51.532658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235245, 0.147149, 0.960733,
		-0.967880, -0.054742, 0.245380,
		0.088700, -0.987598, 0.129545,
		38.424980, 32.551979, 51.571522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530758, 33.969234, 51.827778>,  <38.362888, 33.243298, 51.480839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530758, 33.969234, 51.827778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.461437, 34.354336, 51.910786>,  <38.419846, 34.585396, 51.960590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.461437, 34.354336, 51.910786>,  <38.530758, 33.969234, 51.827778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461437, 34.354336, 51.910786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378473, 0.129421, -0.916520,
		-0.909243, -0.237378, 0.341948,
		-0.173306, 0.962757, 0.207516,
		38.409447, 34.643162, 51.973042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884449, 34.177692, 51.530876>,  <38.530758, 33.969234, 51.827778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884449, 34.177692, 51.530876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.099400, 34.511131, 51.582005>,  <38.228371, 34.711197, 51.612682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.099400, 34.511131, 51.582005>,  <37.884449, 34.177692, 51.530876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099400, 34.511131, 51.582005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343948, 0.355015, -0.869289,
		-0.770017, 0.423173, 0.477492,
		0.537377, 0.833600, 0.127818,
		38.260612, 34.761211, 51.620350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469604, 34.686256, 51.225224>,  <37.884449, 34.177692, 51.530876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469604, 34.686256, 51.225224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.820080, 34.875580, 51.261581>,  <38.030365, 34.989174, 51.283398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.820080, 34.875580, 51.261581>,  <37.469604, 34.686256, 51.225224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820080, 34.875580, 51.261581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213022, 0.549500, -0.807881,
		-0.432328, 0.688496, 0.582293,
		0.876193, 0.473311, 0.090899,
		38.082939, 35.017574, 51.288853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329842, 35.436569, 51.252930>,  <37.469604, 34.686256, 51.225224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329842, 35.436569, 51.252930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.711143, 35.381126, 51.145523>,  <37.939922, 35.347862, 51.081078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.711143, 35.381126, 51.145523>,  <37.329842, 35.436569, 51.252930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711143, 35.381126, 51.145523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145839, 0.567234, -0.810541,
		0.264656, 0.811810, 0.520502,
		0.953251, -0.138605, -0.268515,
		37.997120, 35.339546, 51.064968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657425, 36.018509, 50.885227>,  <37.329842, 35.436569, 51.252930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657425, 36.018509, 50.885227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.870384, 35.705242, 50.756725>,  <37.998161, 35.517284, 50.679623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.870384, 35.705242, 50.756725>,  <37.657425, 36.018509, 50.885227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870384, 35.705242, 50.756725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086678, 0.327085, -0.941012,
		0.842045, 0.528839, 0.106256,
		0.532398, -0.783163, -0.321259,
		38.030102, 35.470295, 50.660347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064575, 36.270592, 50.368896>,  <37.657425, 36.018509, 50.885227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064575, 36.270592, 50.368896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.098850, 35.877747, 50.301826>,  <38.119415, 35.642040, 50.261585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.098850, 35.877747, 50.301826>,  <38.064575, 36.270592, 50.368896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098850, 35.877747, 50.301826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014668, 0.167030, -0.985842,
		0.996214, 0.086937, -0.000092,
		0.085691, -0.982111, -0.167672,
		38.124557, 35.583115, 50.251526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642578, 36.237774, 49.911457>,  <38.064575, 36.270592, 50.368896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642578, 36.237774, 49.911457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.434460, 35.897133, 49.885929>,  <38.309589, 35.692749, 49.870613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.434460, 35.897133, 49.885929>,  <38.642578, 36.237774, 49.911457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434460, 35.897133, 49.885929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198038, -0.047621, -0.979037,
		0.830707, -0.522028, 0.193426,
		-0.520296, -0.851598, -0.063822,
		38.278370, 35.641655, 49.866783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041897, 36.761543, 49.663498>,  <38.642578, 36.237774, 49.911457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041897, 36.761543, 49.663498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.895313, 37.133015, 49.640652>,  <38.807362, 37.355896, 49.626945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.895313, 37.133015, 49.640652>,  <39.041897, 36.761543, 49.663498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895313, 37.133015, 49.640652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268735, 0.164412, 0.949078,
		0.890779, 0.332453, -0.309820,
		-0.366463, 0.928678, -0.057113,
		38.785374, 37.411617, 49.623516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515697, 37.202065, 49.943138>,  <39.041897, 36.761543, 49.663498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515697, 37.202065, 49.943138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.189560, 37.431248, 49.976448>,  <38.993877, 37.568756, 49.996433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.189560, 37.431248, 49.976448>,  <39.515697, 37.202065, 49.943138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189560, 37.431248, 49.976448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286819, 0.274776, 0.917733,
		0.502941, 0.772152, -0.388372,
		-0.815344, 0.572957, 0.083272,
		38.944958, 37.603134, 50.001431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821583, 37.916447, 50.002254>,  <39.515697, 37.202065, 49.943138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821583, 37.916447, 50.002254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.459339, 37.878021, 50.167492>,  <39.241993, 37.854965, 50.266632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.459339, 37.878021, 50.167492>,  <39.821583, 37.916447, 50.002254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459339, 37.878021, 50.167492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384851, 0.223164, 0.895593,
		-0.178219, 0.970036, -0.165131,
		-0.905609, -0.096061, 0.413092,
		39.187656, 37.849201, 50.291420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789894, 38.461178, 50.535198>,  <39.821583, 37.916447, 50.002254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789894, 38.461178, 50.535198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.472733, 38.244495, 50.646805>,  <39.282436, 38.114487, 50.713768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.472733, 38.244495, 50.646805>,  <39.789894, 38.461178, 50.535198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472733, 38.244495, 50.646805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208249, 0.189420, 0.959558,
		-0.572652, 0.818946, -0.037383,
		-0.792907, -0.541708, 0.279017,
		39.234859, 38.081982, 50.730511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354130, 38.835640, 50.867741>,  <39.789894, 38.461178, 50.535198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354130, 38.835640, 50.867741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.258991, 38.469669, 50.998173>,  <39.201908, 38.250088, 51.076431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.258991, 38.469669, 50.998173>,  <39.354130, 38.835640, 50.867741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258991, 38.469669, 50.998173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083647, 0.353765, 0.931587,
		-0.967694, 0.194301, -0.160673,
		-0.237848, -0.914930, 0.326083,
		39.187637, 38.195190, 51.095997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837986, 38.901939, 51.335968>,  <39.354130, 38.835640, 50.867741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837986, 38.901939, 51.335968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.990639, 38.551113, 51.452660>,  <39.082230, 38.340618, 51.522675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.990639, 38.551113, 51.452660>,  <38.837986, 38.901939, 51.335968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990639, 38.551113, 51.452660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150977, 0.252230, 0.955817,
		-0.911901, -0.408814, -0.036158,
		0.381631, -0.877070, 0.291730,
		39.105129, 38.287991, 51.540180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412857, 38.658970, 51.980545>,  <38.837986, 38.901939, 51.335968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412857, 38.658970, 51.980545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.744343, 38.436886, 52.008766>,  <38.943233, 38.303635, 52.025700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.744343, 38.436886, 52.008766>,  <38.412857, 38.658970, 51.980545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744343, 38.436886, 52.008766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035954, 0.178613, 0.983262,
		-0.558519, -0.812305, 0.167980,
		0.828712, -0.555210, 0.070553,
		38.992958, 38.270325, 52.029934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323883, 38.337399, 52.594013>,  <38.412857, 38.658970, 51.980545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323883, 38.337399, 52.594013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.711666, 38.267517, 52.525158>,  <38.944336, 38.225586, 52.483845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.711666, 38.267517, 52.525158>,  <38.323883, 38.337399, 52.594013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711666, 38.267517, 52.525158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153637, -0.114501, 0.981471,
		-0.191184, -0.977940, -0.084161,
		0.969456, -0.174711, -0.172139,
		39.002502, 38.215103, 52.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551003, 37.703327, 52.939243>,  <38.323883, 38.337399, 52.594013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551003, 37.703327, 52.939243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.865761, 37.945053, 52.889301>,  <39.054615, 38.090088, 52.859337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.865761, 37.945053, 52.889301>,  <38.551003, 37.703327, 52.939243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865761, 37.945053, 52.889301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199459, -0.057621, 0.978211,
		0.583957, -0.794656, -0.165879,
		0.786899, 0.604319, -0.124853,
		39.101830, 38.126350, 52.851845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.959694, 37.851025, 37.009979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315231, 37.866764, 36.827374>,  <36.528553, 37.876205, 36.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315231, 37.866764, 36.827374>,  <35.959694, 37.851025, 37.009979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315231, 37.866764, 36.827374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448300, -0.280734, 0.848655,
		-0.094767, -0.958979, -0.267169,
		0.888846, 0.039347, -0.456514,
		36.581886, 37.878567, 36.690418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318394, 37.156216, 37.012993>,  <35.959694, 37.851025, 37.009979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318394, 37.156216, 37.012993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500423, 37.512390, 37.010845>,  <36.609642, 37.726093, 37.009556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500423, 37.512390, 37.010845>,  <36.318394, 37.156216, 37.012993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500423, 37.512390, 37.010845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191948, -0.092212, 0.977063,
		0.869517, -0.445670, -0.212881,
		0.455078, 0.890435, -0.005366,
		36.636948, 37.779522, 37.009235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951241, 37.144440, 37.397587>,  <36.318394, 37.156216, 37.012993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951241, 37.144440, 37.397587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846195, 37.529705, 37.420746>,  <36.783169, 37.760864, 37.434639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846195, 37.529705, 37.420746>,  <36.951241, 37.144440, 37.397587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846195, 37.529705, 37.420746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333315, 0.034248, 0.942193,
		0.905502, 0.266730, -0.330031,
		-0.262615, 0.963162, 0.057893,
		36.767410, 37.818653, 37.438114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464214, 37.471378, 37.872818>,  <36.951241, 37.144440, 37.397587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464214, 37.471378, 37.872818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130253, 37.691208, 37.860802>,  <36.929874, 37.823105, 37.853592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130253, 37.691208, 37.860802>,  <37.464214, 37.471378, 37.872818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130253, 37.691208, 37.860802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168504, 0.307193, 0.936610,
		0.523966, 0.776918, -0.349083,
		-0.834905, 0.549574, -0.030045,
		36.879780, 37.856079, 37.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591679, 37.974667, 38.292171>,  <37.464214, 37.471378, 37.872818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591679, 37.974667, 38.292171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193050, 37.980717, 38.259651>,  <36.953873, 37.984344, 38.240139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193050, 37.980717, 38.259651>,  <37.591679, 37.974667, 38.292171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193050, 37.980717, 38.259651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077618, 0.168248, 0.982684,
		0.028540, 0.985629, -0.166498,
		-0.996575, 0.015122, -0.081305,
		36.894077, 37.985252, 38.235260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451424, 38.527962, 38.746307>,  <37.591679, 37.974667, 38.292171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451424, 38.527962, 38.746307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113976, 38.319786, 38.693474>,  <36.911507, 38.194881, 38.661774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113976, 38.319786, 38.693474>,  <37.451424, 38.527962, 38.746307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113976, 38.319786, 38.693474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168395, 0.022873, 0.985454,
		-0.509843, 0.853595, -0.106935,
		-0.843625, -0.520435, -0.132079,
		36.860889, 38.163654, 38.653851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027061, 38.929550, 39.047638>,  <37.451424, 38.527962, 38.746307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027061, 38.929550, 39.047638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836311, 38.579945, 39.010345>,  <36.721863, 38.370182, 38.987968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836311, 38.579945, 39.010345>,  <37.027061, 38.929550, 39.047638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836311, 38.579945, 39.010345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438931, 0.144892, 0.886762,
		-0.761534, 0.463794, -0.452727,
		-0.476871, -0.874015, -0.093233,
		36.693249, 38.317741, 38.982376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305759, 39.082050, 39.252396>,  <37.027061, 38.929550, 39.047638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305759, 39.082050, 39.252396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385239, 38.691460, 39.285892>,  <36.432926, 38.457104, 39.305988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385239, 38.691460, 39.285892>,  <36.305759, 39.082050, 39.252396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385239, 38.691460, 39.285892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290655, 0.022888, 0.956554,
		-0.935969, -0.214405, -0.279270,
		0.198698, -0.976477, 0.083740,
		36.444847, 38.398518, 39.311016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728859, 38.806980, 39.640511>,  <36.305759, 39.082050, 39.252396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728859, 38.806980, 39.640511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999813, 38.514103, 39.668896>,  <36.162388, 38.338375, 39.685928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999813, 38.514103, 39.668896>,  <35.728859, 38.806980, 39.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999813, 38.514103, 39.668896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184929, -0.076129, 0.979799,
		-0.712001, -0.676828, -0.186973,
		0.677389, -0.732194, 0.070962,
		36.203030, 38.294445, 39.690186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412216, 38.225891, 40.055481>,  <35.728859, 38.806980, 39.640511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412216, 38.225891, 40.055481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803131, 38.153721, 40.099953>,  <36.037678, 38.110416, 40.126637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803131, 38.153721, 40.099953>,  <35.412216, 38.225891, 40.055481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803131, 38.153721, 40.099953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122539, -0.053074, 0.991043,
		-0.172915, -0.982155, -0.073978,
		0.977284, -0.180431, 0.111175,
		36.096317, 38.099590, 40.133305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461693, 37.784393, 40.645084>,  <35.412216, 38.225891, 40.055481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461693, 37.784393, 40.645084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834206, 37.925003, 40.606831>,  <36.057713, 38.009369, 40.583878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834206, 37.925003, 40.606831>,  <35.461693, 37.784393, 40.645084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834206, 37.925003, 40.606831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107025, -0.013060, 0.994171,
		0.348223, -0.936089, -0.049784,
		0.931282, 0.351521, -0.095637,
		36.113590, 38.030460, 40.578140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794800, 37.367428, 41.122280>,  <35.461693, 37.784393, 40.645084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794800, 37.367428, 41.122280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046097, 37.672928, 41.062950>,  <36.196877, 37.856228, 41.027351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046097, 37.672928, 41.062950>,  <35.794800, 37.367428, 41.122280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046097, 37.672928, 41.062950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249381, -0.017092, 0.968254,
		0.736968, -0.645287, -0.201203,
		0.628241, 0.763749, -0.148326,
		36.234570, 37.902054, 41.018452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809143, 36.677124, 41.164818>,  <35.794800, 37.367428, 41.122280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809143, 36.677124, 41.164818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596012, 36.380783, 41.328392>,  <35.468132, 36.202980, 41.426537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596012, 36.380783, 41.328392>,  <35.809143, 36.677124, 41.164818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596012, 36.380783, 41.328392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620476, 0.013436, -0.784110,
		0.575416, -0.671532, -0.466841,
		-0.532828, -0.740854, 0.408939,
		35.436165, 36.158527, 41.451073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716042, 36.157967, 40.698303>,  <35.809143, 36.677124, 41.164818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716042, 36.157967, 40.698303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430748, 36.094498, 40.971397>,  <35.259571, 36.056416, 41.135254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430748, 36.094498, 40.971397>,  <35.716042, 36.157967, 40.698303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430748, 36.094498, 40.971397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645562, -0.230719, -0.728024,
		0.273035, -0.959996, 0.062125,
		-0.713234, -0.158670, 0.682731,
		35.216778, 36.046898, 41.176216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431591, 35.487526, 40.612091>,  <35.716042, 36.157967, 40.698303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431591, 35.487526, 40.612091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148754, 35.629570, 40.856686>,  <34.979053, 35.714798, 41.003445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148754, 35.629570, 40.856686>,  <35.431591, 35.487526, 40.612091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148754, 35.629570, 40.856686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707098, -0.347911, -0.615606,
		-0.005865, -0.867672, 0.497103,
		-0.707091, 0.355111, 0.611489,
		34.936626, 35.736103, 41.040131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815571, 35.011257, 40.612518>,  <35.431591, 35.487526, 40.612091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815571, 35.011257, 40.612518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713474, 35.378815, 40.732845>,  <34.652218, 35.599350, 40.805042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713474, 35.378815, 40.732845>,  <34.815571, 35.011257, 40.612518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713474, 35.378815, 40.732845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722754, 0.025332, -0.690641,
		-0.642244, -0.393696, 0.657667,
		-0.255243, 0.918891, 0.300815,
		34.636902, 35.654484, 40.823090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100315, 34.900433, 40.875050>,  <34.815571, 35.011257, 40.612518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100315, 34.900433, 40.875050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174702, 35.269482, 40.739883>,  <34.219334, 35.490910, 40.658783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174702, 35.269482, 40.739883>,  <34.100315, 34.900433, 40.875050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174702, 35.269482, 40.739883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808506, -0.051737, -0.586209,
		-0.558332, 0.382220, 0.736324,
		0.185966, 0.922621, -0.337914,
		34.230492, 35.546268, 40.638508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423306, 35.197853, 40.701637>,  <34.100315, 34.900433, 40.875050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423306, 35.197853, 40.701637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664516, 35.457069, 40.515564>,  <33.809242, 35.612598, 40.403919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664516, 35.457069, 40.515564>,  <33.423306, 35.197853, 40.701637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664516, 35.457069, 40.515564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722594, 0.196698, -0.662698,
		-0.337954, 0.735768, 0.586885,
		0.603031, 0.648040, -0.465186,
		33.845425, 35.651482, 40.376007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039509, 35.823227, 40.609718>,  <33.423306, 35.197853, 40.701637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039509, 35.823227, 40.609718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320839, 35.823597, 40.325371>,  <33.489635, 35.823818, 40.154762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320839, 35.823597, 40.325371>,  <33.039509, 35.823227, 40.609718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320839, 35.823597, 40.325371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697828, 0.191591, -0.690166,
		0.135557, 0.981474, 0.135397,
		0.703321, 0.000927, -0.710872,
		33.531834, 35.823875, 40.112110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784267, 36.287334, 40.213978>,  <33.039509, 35.823227, 40.609718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784267, 36.287334, 40.213978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064854, 36.112377, 39.988899>,  <33.233208, 36.007401, 39.853851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064854, 36.112377, 39.988899>,  <32.784267, 36.287334, 40.213978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064854, 36.112377, 39.988899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620557, 0.013442, -0.784046,
		0.350502, 0.899168, -0.262000,
		0.701467, -0.437396, -0.562697,
		33.275295, 35.981159, 39.820091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954659, 36.724659, 39.675106>,  <32.784267, 36.287334, 40.213978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954659, 36.724659, 39.675106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061325, 36.362667, 39.542500>,  <33.125324, 36.145473, 39.462936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061325, 36.362667, 39.542500>,  <32.954659, 36.724659, 39.675106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061325, 36.362667, 39.542500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608296, 0.108772, -0.786222,
		0.747573, 0.411319, -0.521489,
		0.266665, -0.904978, -0.331519,
		33.141323, 36.091175, 39.443043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981068, 36.730469, 39.007484>,  <32.954659, 36.724659, 39.675106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981068, 36.730469, 39.007484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953751, 36.337795, 39.078629>,  <32.937363, 36.102192, 39.121315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953751, 36.337795, 39.078629>,  <32.981068, 36.730469, 39.007484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953751, 36.337795, 39.078629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656359, -0.090057, -0.749055,
		0.751352, -0.167895, -0.638186,
		-0.068290, -0.981683, 0.177864,
		32.933262, 36.043289, 39.131989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943043, 36.517422, 38.290859>,  <32.981068, 36.730469, 39.007484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943043, 36.517422, 38.290859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794815, 36.217663, 38.510345>,  <32.705879, 36.037807, 38.642036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794815, 36.217663, 38.510345>,  <32.943043, 36.517422, 38.290859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794815, 36.217663, 38.510345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653770, -0.209185, -0.727205,
		0.659745, -0.628213, -0.412413,
		-0.370569, -0.749393, 0.548715,
		32.683643, 35.992844, 38.674961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909691, 35.909534, 37.779537>,  <32.943043, 36.517422, 38.290859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909691, 35.909534, 37.779537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670105, 35.805832, 38.082596>,  <32.526352, 35.743610, 38.264431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670105, 35.805832, 38.082596>,  <32.909691, 35.909534, 37.779537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670105, 35.805832, 38.082596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681718, -0.331302, -0.652303,
		0.420123, -0.907208, 0.021699,
		-0.598963, -0.259255, 0.757648,
		32.490417, 35.728054, 38.309891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711224, 35.308071, 37.510265>,  <32.909691, 35.909534, 37.779537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711224, 35.308071, 37.510265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443314, 35.404251, 37.791290>,  <32.282570, 35.461960, 37.959904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443314, 35.404251, 37.791290>,  <32.711224, 35.308071, 37.510265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443314, 35.404251, 37.791290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727471, -0.402268, -0.555847,
		0.148967, -0.883383, 0.444345,
		-0.669771, 0.240445, 0.702561,
		32.242382, 35.476383, 38.002060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214249, 34.664108, 37.624306>,  <32.711224, 35.308071, 37.510265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214249, 34.664108, 37.624306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033092, 34.998661, 37.747818>,  <31.924398, 35.199394, 37.821926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033092, 34.998661, 37.747818>,  <32.214249, 34.664108, 37.624306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033092, 34.998661, 37.747818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833578, -0.274362, -0.479450,
		-0.316289, -0.474531, 0.821451,
		-0.452889, 0.836388, 0.308782,
		31.897224, 35.249577, 37.840454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610685, 34.507656, 37.919445>,  <32.214249, 34.664108, 37.624306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610685, 34.507656, 37.919445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580425, 34.866009, 37.744324>,  <31.562269, 35.081020, 37.639252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580425, 34.866009, 37.744324>,  <31.610685, 34.507656, 37.919445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580425, 34.866009, 37.744324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846940, -0.289464, -0.445985,
		-0.526278, 0.337055, 0.780657,
		-0.075651, 0.895882, -0.437804,
		31.557730, 35.134773, 37.612984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027817, 33.953392, 37.702988>,  <31.610685, 34.507656, 37.919445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027817, 33.953392, 37.702988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274334, 33.695774, 37.521713>,  <32.422245, 33.541203, 37.412949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274334, 33.695774, 37.521713>,  <32.027817, 33.953392, 37.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274334, 33.695774, 37.521713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410333, -0.228560, 0.882829,
		-0.672167, -0.730042, 0.123415,
		0.616295, -0.644050, -0.453190,
		32.459221, 33.502560, 37.385757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000214, 33.265289, 37.936726>,  <32.027817, 33.953392, 37.702988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000214, 33.265289, 37.936726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379421, 33.316364, 37.820137>,  <32.606945, 33.347012, 37.750183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379421, 33.316364, 37.820137>,  <32.000214, 33.265289, 37.936726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379421, 33.316364, 37.820137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318013, -0.347842, 0.881971,
		0.011235, -0.928817, -0.370369,
		0.948020, 0.127691, -0.291468,
		32.663826, 33.354671, 37.732697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297737, 32.626648, 38.041496>,  <32.000214, 33.265289, 37.936726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297737, 32.626648, 38.041496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616577, 32.867352, 38.021404>,  <32.807880, 33.011772, 38.009350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616577, 32.867352, 38.021404>,  <32.297737, 32.626648, 38.041496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616577, 32.867352, 38.021404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236051, -0.233945, 0.943159,
		0.555802, -0.763647, -0.328522,
		0.797097, 0.601757, -0.050233,
		32.855705, 33.047878, 38.006336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839230, 32.176682, 38.342640>,  <32.297737, 32.626648, 38.041496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839230, 32.176682, 38.342640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945095, 32.561405, 38.370567>,  <33.008614, 32.792240, 38.387325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945095, 32.561405, 38.370567>,  <32.839230, 32.176682, 38.342640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945095, 32.561405, 38.370567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158964, -0.114928, 0.980572,
		0.951148, -0.248424, -0.183310,
		0.264665, 0.961809, 0.069823,
		33.024494, 32.849949, 38.391514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422676, 32.185364, 38.894619>,  <32.839230, 32.176682, 38.342640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422676, 32.185364, 38.894619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313187, 32.569191, 38.868359>,  <33.247494, 32.799488, 38.852600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313187, 32.569191, 38.868359>,  <33.422676, 32.185364, 38.894619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313187, 32.569191, 38.868359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296238, 0.149052, 0.943412,
		0.915052, 0.238782, -0.325058,
		-0.273720, 0.959566, -0.065654,
		33.231071, 32.857059, 38.848663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001690, 32.572327, 39.185387>,  <33.422676, 32.185364, 38.894619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001690, 32.572327, 39.185387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715378, 32.849487, 39.220131>,  <33.543591, 33.015785, 39.240978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715378, 32.849487, 39.220131>,  <34.001690, 32.572327, 39.185387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715378, 32.849487, 39.220131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272497, 0.162616, 0.948315,
		0.642967, 0.702452, -0.305212,
		-0.715778, 0.692905, 0.086860,
		33.500645, 33.057358, 39.246189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280933, 33.116108, 39.406544>,  <34.001690, 32.572327, 39.185387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280933, 33.116108, 39.406544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895405, 33.131454, 39.512058>,  <33.664089, 33.140663, 39.575367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895405, 33.131454, 39.512058>,  <34.280933, 33.116108, 39.406544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895405, 33.131454, 39.512058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264365, 0.264235, 0.927519,
		-0.034118, 0.963695, -0.264817,
		-0.963819, 0.038364, 0.263783,
		33.606258, 33.142963, 39.591194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200562, 33.713612, 39.615833>,  <34.280933, 33.116108, 39.406544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200562, 33.713612, 39.615833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888645, 33.542168, 39.798359>,  <33.701496, 33.439301, 39.907875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888645, 33.542168, 39.798359>,  <34.200562, 33.713612, 39.615833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888645, 33.542168, 39.798359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284138, 0.407182, 0.868026,
		-0.557846, 0.806534, -0.195732,
		-0.779791, -0.428609, 0.456312,
		33.654709, 33.413586, 39.935253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052410, 34.151718, 40.088486>,  <34.200562, 33.713612, 39.615833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052410, 34.151718, 40.088486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854813, 33.828636, 40.217220>,  <33.736256, 33.634785, 40.294460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854813, 33.828636, 40.217220>,  <34.052410, 34.151718, 40.088486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854813, 33.828636, 40.217220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143406, 0.289395, 0.946406,
		-0.857558, 0.513671, -0.027129,
		-0.493993, -0.807708, 0.321837,
		33.706615, 33.586323, 40.313770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627876, 34.429012, 40.528763>,  <34.052410, 34.151718, 40.088486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627876, 34.429012, 40.528763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677475, 34.043217, 40.622044>,  <33.707233, 33.811741, 40.678013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677475, 34.043217, 40.622044>,  <33.627876, 34.429012, 40.528763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677475, 34.043217, 40.622044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085824, 0.244564, 0.965828,
		-0.988564, -0.099743, 0.113101,
		0.123995, -0.964490, 0.233206,
		33.714672, 33.753868, 40.692005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315098, 34.339119, 41.261166>,  <33.627876, 34.429012, 40.528763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315098, 34.339119, 41.261166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548527, 34.017380, 41.216511>,  <33.688583, 33.824337, 41.189720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548527, 34.017380, 41.216511>,  <33.315098, 34.339119, 41.261166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548527, 34.017380, 41.216511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119462, -0.050938, 0.991531,
		-0.803223, -0.591970, 0.066362,
		0.583577, -0.804349, -0.111633,
		33.723598, 33.776073, 41.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143963, 33.834988, 41.855453>,  <33.315098, 34.339119, 41.261166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143963, 33.834988, 41.855453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507519, 33.705570, 41.750202>,  <33.725651, 33.627918, 41.687050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507519, 33.705570, 41.750202>,  <33.143963, 33.834988, 41.855453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507519, 33.705570, 41.750202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207957, -0.195293, 0.958444,
		-0.361490, -0.925839, -0.110216,
		0.908889, -0.323548, -0.263131,
		33.780186, 33.608505, 41.671265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257103, 33.336594, 42.215462>,  <33.143963, 33.834988, 41.855453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257103, 33.336594, 42.215462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629299, 33.453297, 42.126865>,  <33.852619, 33.523319, 42.073708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629299, 33.453297, 42.126865>,  <33.257103, 33.336594, 42.215462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629299, 33.453297, 42.126865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248536, -0.058642, 0.966846,
		0.269094, -0.954693, -0.127078,
		0.930494, 0.291756, -0.221495,
		33.908447, 33.540825, 42.060417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642738, 32.825954, 42.525036>,  <33.257103, 33.336594, 42.215462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642738, 32.825954, 42.525036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849319, 33.163860, 42.468967>,  <33.973267, 33.366604, 42.435326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849319, 33.163860, 42.468967>,  <33.642738, 32.825954, 42.525036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849319, 33.163860, 42.468967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267686, -0.003779, 0.963499,
		0.813403, -0.535119, -0.228085,
		0.516448, 0.844768, -0.140170,
		34.004253, 33.417290, 42.426918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252773, 32.737732, 42.904301>,  <33.642738, 32.825954, 42.525036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252773, 32.737732, 42.904301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261200, 33.136520, 42.874359>,  <34.266254, 33.375793, 42.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261200, 33.136520, 42.874359>,  <34.252773, 32.737732, 42.904301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261200, 33.136520, 42.874359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532216, 0.052198, 0.844998,
		0.846347, -0.057634, -0.529505,
		0.021062, 0.996972, -0.074851,
		34.267517, 33.435612, 42.851902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940250, 32.938179, 43.130089>,  <34.252773, 32.737732, 42.904301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940250, 32.938179, 43.130089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755108, 33.292336, 43.147236>,  <34.644020, 33.504829, 43.157524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755108, 33.292336, 43.147236>,  <34.940250, 32.938179, 43.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755108, 33.292336, 43.147236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481360, 0.210445, 0.850885,
		0.744349, 0.414473, -0.523600,
		-0.462858, 0.885395, 0.042866,
		34.616249, 33.557953, 43.160095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449173, 33.540375, 43.168526>,  <34.940250, 32.938179, 43.130089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449173, 33.540375, 43.168526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100716, 33.660564, 43.323872>,  <34.891644, 33.732677, 43.417080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100716, 33.660564, 43.323872>,  <35.449173, 33.540375, 43.168526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100716, 33.660564, 43.323872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472683, 0.298961, 0.828971,
		0.132981, 0.905724, -0.402468,
		-0.871141, 0.300478, 0.388364,
		34.839375, 33.750710, 43.440380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610344, 34.094204, 43.671288>,  <35.449173, 33.540375, 43.168526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610344, 34.094204, 43.671288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227047, 34.041355, 43.772732>,  <34.997070, 34.009644, 43.833599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227047, 34.041355, 43.772732>,  <35.610344, 34.094204, 43.671288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227047, 34.041355, 43.772732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228403, 0.180012, 0.956780,
		-0.172067, 0.974751, -0.142317,
		-0.958241, -0.132125, 0.253610,
		34.939575, 34.001717, 43.848816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363750, 34.643780, 44.177982>,  <35.610344, 34.094204, 43.671288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363750, 34.643780, 44.177982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089630, 34.357220, 44.230339>,  <34.925156, 34.185284, 44.261753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089630, 34.357220, 44.230339>,  <35.363750, 34.643780, 44.177982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089630, 34.357220, 44.230339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087850, 0.097097, 0.991390,
		-0.722939, 0.690902, -0.003606,
		-0.685303, -0.716398, 0.130891,
		34.884041, 34.142300, 44.269608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718933, 34.860115, 44.638611>,  <35.363750, 34.643780, 44.177982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718933, 34.860115, 44.638611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752956, 34.463055, 44.673042>,  <34.773369, 34.224819, 44.693699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752956, 34.463055, 44.673042>,  <34.718933, 34.860115, 44.638611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752956, 34.463055, 44.673042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203895, 0.101902, 0.973675,
		-0.975291, -0.065267, 0.211064,
		0.085056, -0.992651, 0.086077,
		34.778473, 34.165260, 44.698864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329609, 34.590870, 45.286526>,  <34.718933, 34.860115, 44.638611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329609, 34.590870, 45.286526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615463, 34.322979, 45.205761>,  <34.786976, 34.162243, 45.157303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615463, 34.322979, 45.205761>,  <34.329609, 34.590870, 45.286526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615463, 34.322979, 45.205761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248590, -0.026646, 0.968242,
		-0.653838, -0.742129, 0.147445,
		0.714632, -0.669727, -0.201908,
		34.829853, 34.122063, 45.145187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347359, 34.104771, 45.888626>,  <34.329609, 34.590870, 45.286526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347359, 34.104771, 45.888626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690952, 34.035923, 45.695740>,  <34.897106, 33.994614, 45.580009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690952, 34.035923, 45.695740>,  <34.347359, 34.104771, 45.888626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690952, 34.035923, 45.695740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407839, -0.339385, 0.847635,
		-0.309542, -0.924768, -0.221333,
		0.858983, -0.172110, -0.482211,
		34.948647, 33.984287, 45.551075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469601, 33.348747, 46.022751>,  <34.347359, 34.104771, 45.888626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469601, 33.348747, 46.022751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825142, 33.493614, 45.910484>,  <35.038467, 33.580532, 45.843124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825142, 33.493614, 45.910484>,  <34.469601, 33.348747, 46.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825142, 33.493614, 45.910484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449572, -0.571125, 0.686805,
		0.088439, -0.736650, -0.670466,
		0.888855, 0.362163, -0.280668,
		35.091797, 33.602264, 45.826283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967510, 32.784660, 45.809700>,  <34.469601, 33.348747, 46.022751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967510, 32.784660, 45.809700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198711, 33.093174, 45.916306>,  <35.337433, 33.278282, 45.980270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198711, 33.093174, 45.916306>,  <34.967510, 32.784660, 45.809700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198711, 33.093174, 45.916306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523414, -0.600973, 0.604043,
		0.626059, -0.209640, -0.751066,
		0.578003, 0.771286, 0.266516,
		35.372112, 33.324558, 45.996262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653862, 32.478462, 45.822960>,  <34.967510, 32.784660, 45.809700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653862, 32.478462, 45.822960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728622, 32.836395, 45.985115>,  <35.773479, 33.051155, 46.082409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728622, 32.836395, 45.985115>,  <35.653862, 32.478462, 45.822960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728622, 32.836395, 45.985115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730966, -0.402374, 0.551167,
		0.656320, 0.193310, -0.729298,
		0.186904, 0.894833, 0.405389,
		35.784695, 33.104847, 46.106731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385815, 32.604523, 45.869125>,  <35.653862, 32.478462, 45.822960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385815, 32.604523, 45.869125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239971, 32.851643, 46.147804>,  <36.152466, 32.999916, 46.315010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239971, 32.851643, 46.147804>,  <36.385815, 32.604523, 45.869125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239971, 32.851643, 46.147804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656858, -0.359669, 0.662704,
		0.659997, 0.699258, -0.274667,
		-0.364612, 0.617800, 0.696694,
		36.130589, 33.036983, 46.356812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968014, 32.708725, 46.323208>,  <36.385815, 32.604523, 45.869125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968014, 32.708725, 46.323208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663940, 32.870564, 46.526546>,  <36.481495, 32.967667, 46.648552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663940, 32.870564, 46.526546>,  <36.968014, 32.708725, 46.323208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663940, 32.870564, 46.526546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565998, 0.028235, 0.823923,
		0.319001, 0.914060, -0.250464,
		-0.760187, 0.404594, 0.508349,
		36.435883, 32.991943, 46.679050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567188, 33.163746, 46.132023>,  <36.968014, 32.708725, 46.323208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567188, 33.163746, 46.132023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946838, 33.101631, 46.022446>,  <38.174629, 33.064362, 45.956699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946838, 33.101631, 46.022446>,  <37.567188, 33.163746, 46.132023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946838, 33.101631, 46.022446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287888, -0.075435, -0.954689,
		0.127587, 0.984985, -0.116303,
		0.949127, -0.155288, -0.273940,
		38.231575, 33.055046, 45.940262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647247, 33.589588, 45.528587>,  <37.567188, 33.163746, 46.132023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647247, 33.589588, 45.528587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926472, 33.303940, 45.507656>,  <38.094006, 33.132549, 45.495098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926472, 33.303940, 45.507656>,  <37.647247, 33.589588, 45.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926472, 33.303940, 45.507656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177550, -0.101836, -0.978829,
		0.693677, 0.692572, -0.197880,
		0.698061, -0.714124, -0.052325,
		38.135891, 33.089703, 45.491959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115383, 33.653984, 45.039635>,  <37.647247, 33.589588, 45.528587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115383, 33.653984, 45.039635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152233, 33.258419, 45.086216>,  <38.174343, 33.021080, 45.114162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152233, 33.258419, 45.086216>,  <38.115383, 33.653984, 45.039635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152233, 33.258419, 45.086216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103070, -0.106849, -0.988919,
		0.990399, 0.103108, 0.092084,
		0.092127, -0.988915, 0.116450,
		38.179871, 32.961746, 45.121151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760830, 33.408596, 44.647663>,  <38.115383, 33.653984, 45.039635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760830, 33.408596, 44.647663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493229, 33.114006, 44.687744>,  <38.332668, 32.937252, 44.711792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493229, 33.114006, 44.687744>,  <38.760830, 33.408596, 44.647663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493229, 33.114006, 44.687744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073786, -0.199961, -0.977022,
		0.739585, -0.646240, 0.188117,
		-0.669006, -0.736471, 0.100204,
		38.292526, 32.893066, 44.717804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033981, 32.868492, 44.145401>,  <38.760830, 33.408596, 44.647663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033981, 32.868492, 44.145401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662849, 32.742516, 44.225353>,  <38.440170, 32.666931, 44.273323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662849, 32.742516, 44.225353>,  <39.033981, 32.868492, 44.145401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662849, 32.742516, 44.225353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196116, -0.043946, -0.979595,
		0.317298, -0.948093, -0.020991,
		-0.927826, -0.314941, 0.199880,
		38.384502, 32.648033, 44.285316>
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
