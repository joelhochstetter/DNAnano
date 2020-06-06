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
	<23.891275, 35.454876, 35.287617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174402, 35.186760, 35.198433>,  <24.344278, 35.025890, 35.144924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174402, 35.186760, 35.198433>,  <23.891275, 35.454876, 35.287617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.174402, 35.186760, 35.198433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375808, 0.090058, 0.922311,
		-0.598133, -0.736618, 0.315644,
		0.707817, -0.670286, -0.222961,
		24.386747, 34.985676, 35.131546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855644, 34.843689, 35.795269>,  <23.891275, 35.454876, 35.287617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855644, 34.843689, 35.795269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209909, 34.918674, 35.625343>,  <24.422468, 34.963665, 35.523388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209909, 34.918674, 35.625343>,  <23.855644, 34.843689, 35.795269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209909, 34.918674, 35.625343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409529, 0.115826, 0.904914,
		0.218841, -0.975419, 0.025811,
		0.885660, 0.187462, -0.424810,
		24.475607, 34.974911, 35.497902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364870, 34.346672, 36.096581>,  <23.855644, 34.843689, 35.795269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364870, 34.346672, 36.096581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.558254, 34.676361, 35.978649>,  <24.674286, 34.874172, 35.907890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.558254, 34.676361, 35.978649>,  <24.364870, 34.346672, 36.096581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.558254, 34.676361, 35.978649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456566, 0.049938, 0.888287,
		0.746868, -0.564063, -0.352168,
		0.483463, 0.824221, -0.294829,
		24.703293, 34.923626, 35.890202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988766, 34.346710, 36.381649>,  <24.364870, 34.346672, 36.096581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988766, 34.346710, 36.381649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965851, 34.737270, 36.298355>,  <24.952101, 34.971607, 36.248379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965851, 34.737270, 36.298355>,  <24.988766, 34.346710, 36.381649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965851, 34.737270, 36.298355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299447, 0.215775, 0.929394,
		0.952392, -0.009111, -0.304742,
		-0.057288, 0.976400, -0.208231,
		24.948664, 35.030190, 36.235886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619350, 34.582348, 36.605186>,  <24.988766, 34.346710, 36.381649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619350, 34.582348, 36.605186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351658, 34.878967, 36.586292>,  <25.191042, 35.056938, 36.574955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351658, 34.878967, 36.586292>,  <25.619350, 34.582348, 36.605186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351658, 34.878967, 36.586292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038615, 0.098186, 0.994419,
		0.742050, 0.663672, -0.094344,
		-0.669231, 0.741552, -0.047231,
		25.150888, 35.101433, 36.572124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759619, 35.171257, 37.091652>,  <25.619350, 34.582348, 36.605186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759619, 35.171257, 37.091652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367949, 35.175987, 37.010578>,  <25.132946, 35.178825, 36.961933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367949, 35.175987, 37.010578>,  <25.759619, 35.171257, 37.091652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367949, 35.175987, 37.010578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203022, -0.051673, 0.977810,
		0.001091, 0.998594, 0.052997,
		-0.979174, 0.011826, -0.202681,
		25.074196, 35.179535, 36.949776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569708, 35.896332, 37.161373>,  <25.759619, 35.171257, 37.091652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569708, 35.896332, 37.161373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330370, 35.596901, 37.275642>,  <25.186768, 35.417240, 37.344204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330370, 35.596901, 37.275642>,  <25.569708, 35.896332, 37.161373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330370, 35.596901, 37.275642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032307, 0.378785, 0.924921,
		-0.800586, 0.544194, -0.250829,
		-0.598347, -0.748581, 0.285669,
		25.150866, 35.372326, 37.361343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055481, 36.188118, 37.572021>,  <25.569708, 35.896332, 37.161373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055481, 36.188118, 37.572021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132586, 35.813740, 37.689896>,  <25.178848, 35.589111, 37.760620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132586, 35.813740, 37.689896>,  <25.055481, 36.188118, 37.572021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132586, 35.813740, 37.689896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293211, 0.341542, 0.892959,
		-0.936413, -0.085722, 0.340267,
		0.192762, -0.935949, 0.294690,
		25.190414, 35.532955, 37.778301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.624716, 36.052864, 38.230038>,  <25.055481, 36.188118, 37.572021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.624716, 36.052864, 38.230038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958370, 35.833447, 38.206982>,  <25.158564, 35.701797, 38.193150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958370, 35.833447, 38.206982>,  <24.624716, 36.052864, 38.230038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958370, 35.833447, 38.206982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259208, 0.297621, 0.918821,
		-0.486856, -0.781361, 0.390442,
		0.834136, -0.548540, -0.057637,
		25.208611, 35.668884, 38.189690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718700, 35.762440, 38.875824>,  <24.624716, 36.052864, 38.230038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718700, 35.762440, 38.875824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089355, 35.732227, 38.728508>,  <25.311749, 35.714100, 38.640118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089355, 35.732227, 38.728508>,  <24.718700, 35.762440, 38.875824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089355, 35.732227, 38.728508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354859, 0.499237, 0.790466,
		0.124158, -0.863167, 0.489416,
		0.926639, -0.075531, -0.368287,
		25.367348, 35.709568, 38.618023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087051, 35.467808, 39.456009>,  <24.718700, 35.762440, 38.875824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087051, 35.467808, 39.456009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337025, 35.660187, 39.210033>,  <25.487009, 35.775616, 39.062450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337025, 35.660187, 39.210033>,  <25.087051, 35.467808, 39.456009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337025, 35.660187, 39.210033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426120, 0.449858, 0.784889,
		0.654126, -0.752539, 0.076188,
		0.624933, 0.480951, -0.614935,
		25.524504, 35.804474, 39.025555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768444, 35.530975, 39.878132>,  <25.087051, 35.467808, 39.456009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768444, 35.530975, 39.878132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768679, 35.800873, 39.582912>,  <25.768820, 35.962811, 39.405781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768679, 35.800873, 39.582912>,  <25.768444, 35.530975, 39.878132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768679, 35.800873, 39.582912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469875, 0.651317, 0.595822,
		0.882733, -0.347140, -0.316665,
		0.000584, 0.674744, -0.738051,
		25.768854, 36.003296, 39.361496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614679, 36.209522, 40.109810>,  <25.768444, 35.530975, 39.878132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614679, 36.209522, 40.109810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641741, 36.568573, 39.935600>,  <25.657978, 36.784004, 39.831074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641741, 36.568573, 39.935600>,  <25.614679, 36.209522, 40.109810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641741, 36.568573, 39.935600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439503, -0.418702, -0.794686,
		-0.895690, -0.137652, -0.422837,
		0.067652, 0.897631, -0.435526,
		25.662037, 36.837864, 39.804943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189644, 36.381741, 39.467903>,  <25.614679, 36.209522, 40.109810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189644, 36.381741, 39.467903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557878, 36.525391, 39.529282>,  <25.778820, 36.611580, 39.566109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557878, 36.525391, 39.529282>,  <25.189644, 36.381741, 39.467903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557878, 36.525391, 39.529282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369316, -0.672792, -0.641059,
		-0.126981, 0.646823, -0.751995,
		0.920588, 0.359126, 0.153450,
		25.834055, 36.633129, 39.575317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377432, 36.690578, 38.845543>,  <25.189644, 36.381741, 39.467903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377432, 36.690578, 38.845543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673014, 36.528175, 39.060619>,  <25.850363, 36.430733, 39.189663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673014, 36.528175, 39.060619>,  <25.377432, 36.690578, 38.845543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673014, 36.528175, 39.060619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288914, -0.530002, -0.797262,
		0.608669, 0.744484, -0.274345,
		0.738952, -0.406006, 0.537688,
		25.894699, 36.406372, 39.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064865, 36.809261, 38.500629>,  <25.377432, 36.690578, 38.845543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064865, 36.809261, 38.500629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052147, 36.495026, 38.747803>,  <26.044516, 36.306484, 38.896107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052147, 36.495026, 38.747803>,  <26.064865, 36.809261, 38.500629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052147, 36.495026, 38.747803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008309, -0.618019, -0.786119,
		0.999460, -0.030130, 0.013123,
		-0.031796, -0.785585, 0.617936,
		26.042608, 36.259350, 38.933182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402325, 36.333370, 38.167587>,  <26.064865, 36.809261, 38.500629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402325, 36.333370, 38.167587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157705, 36.150063, 38.425579>,  <26.010935, 36.040077, 38.580376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157705, 36.150063, 38.425579>,  <26.402325, 36.333370, 38.167587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157705, 36.150063, 38.425579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102174, -0.762614, -0.638733,
		0.784583, -0.456515, 0.419551,
		-0.611547, -0.458272, 0.644978,
		25.974241, 36.012581, 38.619072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520586, 35.594692, 38.056038>,  <26.402325, 36.333370, 38.167587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520586, 35.594692, 38.056038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165253, 35.634258, 38.235405>,  <25.952053, 35.657997, 38.343025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165253, 35.634258, 38.235405>,  <26.520586, 35.594692, 38.056038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165253, 35.634258, 38.235405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350950, -0.776006, -0.524070,
		0.296132, -0.622921, 0.724068,
		-0.888335, 0.098918, 0.448415,
		25.898752, 35.663933, 38.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277079, 34.947735, 38.295547>,  <26.520586, 35.594692, 38.056038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277079, 34.947735, 38.295547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953377, 35.175648, 38.238342>,  <25.759155, 35.312397, 38.204021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953377, 35.175648, 38.238342>,  <26.277079, 34.947735, 38.295547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953377, 35.175648, 38.238342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362685, -0.676097, -0.641368,
		-0.462128, -0.467164, 0.753787,
		-0.809257, 0.569782, -0.143010,
		25.710600, 35.346581, 38.195438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709904, 34.526493, 38.431786>,  <26.277079, 34.947735, 38.295547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709904, 34.526493, 38.431786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564327, 34.832874, 38.219803>,  <25.476982, 35.016705, 38.092613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564327, 34.832874, 38.219803>,  <25.709904, 34.526493, 38.431786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564327, 34.832874, 38.219803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285051, -0.633272, -0.719522,
		-0.886732, -0.110797, 0.448810,
		-0.363940, 0.765957, -0.529960,
		25.455145, 35.062660, 38.060814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132221, 34.279888, 38.160934>,  <25.709904, 34.526493, 38.431786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132221, 34.279888, 38.160934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244205, 34.569561, 37.908844>,  <25.311396, 34.743362, 37.757591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244205, 34.569561, 37.908844>,  <25.132221, 34.279888, 38.160934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244205, 34.569561, 37.908844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212000, -0.593635, -0.776307,
		-0.936311, 0.350944, -0.012668,
		0.279960, 0.724179, -0.630227,
		25.328194, 34.786816, 37.719776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610077, 34.455284, 37.601982>,  <25.132221, 34.279888, 38.160934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610077, 34.455284, 37.601982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964527, 34.572929, 37.458717>,  <25.177197, 34.643517, 37.372757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964527, 34.572929, 37.458717>,  <24.610077, 34.455284, 37.601982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964527, 34.572929, 37.458717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108593, -0.619539, -0.777418,
		-0.450547, 0.727783, -0.517049,
		0.886123, 0.294115, -0.358164,
		25.230364, 34.661163, 37.351269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628735, 34.777081, 36.933590>,  <24.610077, 34.455284, 37.601982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628735, 34.777081, 36.933590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945478, 34.548065, 37.018589>,  <25.135525, 34.410656, 37.069588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945478, 34.548065, 37.018589>,  <24.628735, 34.777081, 36.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945478, 34.548065, 37.018589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197624, -0.569475, -0.797899,
		0.577841, 0.589830, -0.564093,
		0.791862, -0.572536, 0.212502,
		25.183037, 34.376305, 37.082340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.432388, 35.599880, 37.034489>,  <24.628735, 34.777081, 36.933590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.432388, 35.599880, 37.034489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461006, 35.543728, 37.429493>,  <24.478176, 35.510036, 37.666496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461006, 35.543728, 37.429493>,  <24.432388, 35.599880, 37.034489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461006, 35.543728, 37.429493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273205, -0.954942, -0.115955,
		0.959292, -0.261497, -0.106671,
		0.071542, -0.140378, 0.987510,
		24.482470, 35.501614, 37.725746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460321, 36.187431, 36.520870>,  <24.432388, 35.599880, 37.034489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460321, 36.187431, 36.520870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681671, 35.854275, 36.517479>,  <24.814480, 35.654381, 36.515446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681671, 35.854275, 36.517479>,  <24.460321, 36.187431, 36.520870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681671, 35.854275, 36.517479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118867, 0.089041, -0.988910,
		0.824409, 0.546228, 0.148276,
		0.553373, -0.832891, -0.008478,
		24.847683, 35.604408, 36.514935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922367, 36.303116, 35.951302>,  <24.460321, 36.187431, 36.520870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922367, 36.303116, 35.951302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916922, 35.909756, 36.023682>,  <24.913654, 35.673740, 36.067108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916922, 35.909756, 36.023682>,  <24.922367, 36.303116, 35.951302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916922, 35.909756, 36.023682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005069, -0.181030, -0.983464,
		0.999894, -0.012472, 0.007449,
		-0.013614, -0.983399, 0.180948,
		24.912838, 35.614735, 36.077965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387348, 36.006866, 35.515793>,  <24.922367, 36.303116, 35.951302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387348, 36.006866, 35.515793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157536, 35.695206, 35.616055>,  <25.019648, 35.508209, 35.676212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157536, 35.695206, 35.616055>,  <25.387348, 36.006866, 35.515793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157536, 35.695206, 35.616055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203349, -0.160756, -0.965819,
		0.792818, -0.605865, -0.066081,
		-0.574533, -0.779157, 0.250652,
		24.985176, 35.461460, 35.691250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642756, 35.408363, 35.234905>,  <25.387348, 36.006866, 35.515793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642756, 35.408363, 35.234905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244127, 35.390282, 35.262615>,  <25.004950, 35.379433, 35.279243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244127, 35.390282, 35.262615>,  <25.642756, 35.408363, 35.234905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244127, 35.390282, 35.262615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050680, -0.328292, -0.943216,
		0.065379, -0.943494, 0.324876,
		-0.996573, -0.045201, 0.069279,
		24.945156, 35.376720, 35.283398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039234, 35.293758, 34.564262>,  <25.642756, 35.408363, 35.234905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039234, 35.293758, 34.564262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134609, 34.932106, 34.422447>,  <26.191833, 34.715115, 34.337357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134609, 34.932106, 34.422447>,  <26.039234, 35.293758, 34.564262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134609, 34.932106, 34.422447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385858, 0.423213, -0.819759,
		0.891214, 0.058658, 0.449775,
		0.238436, -0.904129, -0.354540,
		26.206141, 34.660866, 34.316086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725435, 35.342518, 34.415714>,  <26.039234, 35.293758, 34.564262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725435, 35.342518, 34.415714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553802, 35.066967, 34.182018>,  <26.450823, 34.901638, 34.041801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553802, 35.066967, 34.182018>,  <26.725435, 35.342518, 34.415714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553802, 35.066967, 34.182018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485700, 0.369382, -0.792245,
		0.761567, -0.623705, 0.176091,
		-0.429082, -0.688875, -0.584242,
		26.425077, 34.860306, 34.006744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144987, 34.998169, 33.884045>,  <26.725435, 35.342518, 34.415714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144987, 34.998169, 33.884045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459284, 35.183453, 33.720074>,  <27.647861, 35.294624, 33.621689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459284, 35.183453, 33.720074>,  <27.144987, 34.998169, 33.884045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459284, 35.183453, 33.720074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376787, 0.167154, 0.911094,
		0.490551, -0.870342, -0.043192,
		0.785743, 0.463212, -0.409930,
		27.695007, 35.322414, 33.597095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741537, 34.551224, 34.013290>,  <27.144987, 34.998169, 33.884045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741537, 34.551224, 34.013290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797247, 34.946213, 33.983631>,  <27.830673, 35.183205, 33.965836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797247, 34.946213, 33.983631>,  <27.741537, 34.551224, 34.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797247, 34.946213, 33.983631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281349, 0.032333, 0.959061,
		0.949445, -0.154436, -0.273321,
		0.139276, 0.987474, -0.074149,
		27.839029, 35.242455, 33.961388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386761, 34.744549, 34.209587>,  <27.741537, 34.551224, 34.013290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386761, 34.744549, 34.209587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204523, 35.093529, 34.280312>,  <28.095181, 35.302917, 34.322746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204523, 35.093529, 34.280312>,  <28.386761, 34.744549, 34.209587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204523, 35.093529, 34.280312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382563, 0.012548, 0.923844,
		0.803791, 0.488539, -0.339484,
		-0.455593, 0.872452, 0.176811,
		28.067844, 35.355263, 34.333355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899256, 35.149666, 34.559597>,  <28.386761, 34.744549, 34.209587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899256, 35.149666, 34.559597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524311, 35.264809, 34.638073>,  <28.299345, 35.333893, 34.685158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524311, 35.264809, 34.638073>,  <28.899256, 35.149666, 34.559597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524311, 35.264809, 34.638073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214595, 0.033506, 0.976128,
		0.274410, 0.957088, -0.093179,
		-0.937362, 0.287855, 0.196192,
		28.243103, 35.351166, 34.696930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879440, 35.907383, 34.958393>,  <28.899256, 35.149666, 34.559597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879440, 35.907383, 34.958393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585814, 35.661716, 35.074284>,  <28.409637, 35.514317, 35.143818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585814, 35.661716, 35.074284>,  <28.879440, 35.907383, 34.958393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585814, 35.661716, 35.074284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243256, 0.160509, 0.956589,
		-0.634010, 0.772680, 0.031576,
		-0.734069, -0.614168, 0.289724,
		28.365593, 35.477467, 35.161201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522865, 36.255554, 35.558018>,  <28.879440, 35.907383, 34.958393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522865, 36.255554, 35.558018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482460, 35.857719, 35.548252>,  <28.458216, 35.619019, 35.542393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482460, 35.857719, 35.548252>,  <28.522865, 36.255554, 35.558018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482460, 35.857719, 35.548252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209005, -0.045207, 0.976869,
		-0.972684, 0.093575, 0.212440,
		-0.101014, -0.994585, -0.024414,
		28.452156, 35.559345, 35.540928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590996, 36.914749, 35.156227>,  <28.522865, 36.255554, 35.558018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590996, 36.914749, 35.156227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327625, 36.615261, 35.125504>,  <28.169603, 36.435570, 35.107067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327625, 36.615261, 35.125504>,  <28.590996, 36.914749, 35.156227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327625, 36.615261, 35.125504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362005, 0.225558, 0.904475,
		-0.659870, 0.623336, -0.419552,
		-0.658425, -0.748716, -0.076813,
		28.130098, 36.390648, 35.102459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971012, 37.198387, 35.211731>,  <28.590996, 36.914749, 35.156227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971012, 37.198387, 35.211731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916704, 36.818073, 35.323143>,  <27.884119, 36.589886, 35.389988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916704, 36.818073, 35.323143>,  <27.971012, 37.198387, 35.211731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916704, 36.818073, 35.323143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026246, 0.284483, 0.958322,
		-0.990392, 0.122803, -0.063579,
		-0.135771, -0.950783, 0.278526,
		27.875973, 36.532837, 35.406700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416275, 37.179745, 35.670238>,  <27.971012, 37.198387, 35.211731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416275, 37.179745, 35.670238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649269, 36.860947, 35.734116>,  <27.789066, 36.669666, 35.772442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649269, 36.860947, 35.734116>,  <27.416275, 37.179745, 35.670238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649269, 36.860947, 35.734116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004609, 0.193226, 0.981143,
		-0.812828, -0.572237, 0.108878,
		0.582485, -0.796999, 0.159697,
		27.824015, 36.621845, 35.782024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117586, 36.808319, 36.121983>,  <27.416275, 37.179745, 35.670238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117586, 36.808319, 36.121983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500696, 36.707291, 36.176933>,  <27.730562, 36.646675, 36.209904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500696, 36.707291, 36.176933>,  <27.117586, 36.808319, 36.121983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500696, 36.707291, 36.176933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094265, 0.175562, 0.979945,
		-0.271625, -0.951518, 0.144340,
		0.957775, -0.252572, 0.137382,
		27.788029, 36.631519, 36.218147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356451, 36.123638, 36.473160>,  <27.117586, 36.808319, 36.121983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356451, 36.123638, 36.473160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622168, 36.418339, 36.523613>,  <27.781597, 36.595161, 36.553886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622168, 36.418339, 36.523613>,  <27.356451, 36.123638, 36.473160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622168, 36.418339, 36.523613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071890, -0.104988, 0.991872,
		0.744009, -0.667959, -0.016778,
		0.664291, 0.736756, 0.126132,
		27.821455, 36.639366, 36.561451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779934, 36.006771, 37.124252>,  <27.356451, 36.123638, 36.473160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779934, 36.006771, 37.124252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790615, 36.398453, 37.043800>,  <27.797024, 36.633461, 36.995529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790615, 36.398453, 37.043800>,  <27.779934, 36.006771, 37.124252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790615, 36.398453, 37.043800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345740, 0.197830, 0.917239,
		0.937950, 0.045043, 0.343832,
		0.026705, 0.979201, -0.201128,
		27.798626, 36.692215, 36.983463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881783, 35.291100, 36.989559>,  <27.779934, 36.006771, 37.124252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881783, 35.291100, 36.989559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575682, 35.070229, 37.121918>,  <27.392021, 34.937706, 37.201332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575682, 35.070229, 37.121918>,  <27.881783, 35.291100, 36.989559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575682, 35.070229, 37.121918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641495, 0.696953, -0.320530,
		-0.053630, -0.457555, -0.887563,
		-0.765250, -0.552177, 0.330897,
		27.346107, 34.904575, 37.221188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934935, 35.542114, 36.291702>,  <27.881783, 35.291100, 36.989559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934935, 35.542114, 36.291702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843723, 35.882202, 36.101913>,  <27.788996, 36.086254, 35.988041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843723, 35.882202, 36.101913>,  <27.934935, 35.542114, 36.291702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843723, 35.882202, 36.101913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246519, -0.421018, -0.872910,
		-0.941930, -0.316015, -0.113592,
		-0.228028, 0.850223, -0.474473,
		27.775314, 36.137268, 35.959572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707636, 35.303917, 35.703819>,  <27.934935, 35.542114, 36.291702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707636, 35.303917, 35.703819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762997, 35.688988, 35.610790>,  <27.796213, 35.920033, 35.554974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762997, 35.688988, 35.610790>,  <27.707636, 35.303917, 35.703819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762997, 35.688988, 35.610790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216591, -0.258568, -0.941398,
		-0.966402, 0.079918, -0.244295,
		0.138401, 0.962681, -0.232572,
		27.804518, 35.977791, 35.541019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338955, 35.367428, 35.084679>,  <27.707636, 35.303917, 35.703819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338955, 35.367428, 35.084679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603495, 35.667187, 35.097404>,  <27.762218, 35.847042, 35.105042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603495, 35.667187, 35.097404>,  <27.338955, 35.367428, 35.084679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603495, 35.667187, 35.097404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075842, -0.024607, -0.996816,
		-0.746232, 0.661659, -0.073110,
		0.661352, 0.749401, 0.031819,
		27.801901, 35.892006, 35.106949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165398, 35.860821, 34.644367>,  <27.338955, 35.367428, 35.084679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165398, 35.860821, 34.644367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562733, 35.889252, 34.680641>,  <27.801134, 35.906311, 34.702408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562733, 35.889252, 34.680641>,  <27.165398, 35.860821, 34.644367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562733, 35.889252, 34.680641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090272, 0.009065, -0.995876,
		-0.071604, 0.997430, 0.002589,
		0.993340, 0.071075, 0.090689,
		27.860735, 35.910576, 34.707848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550556, 36.499729, 34.329914>,  <27.165398, 35.860821, 34.644367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550556, 36.499729, 34.329914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746815, 36.151199, 34.333054>,  <27.864569, 35.942081, 34.334938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746815, 36.151199, 34.333054>,  <27.550556, 36.499729, 34.329914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746815, 36.151199, 34.333054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098176, -0.064224, -0.993095,
		0.865812, 0.486486, -0.117054,
		0.490644, -0.871325, 0.007845,
		27.894009, 35.889801, 34.335407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195206, 36.513489, 33.923340>,  <27.550556, 36.499729, 34.329914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195206, 36.513489, 33.923340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046740, 36.142529, 33.941933>,  <27.957661, 35.919952, 33.953091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046740, 36.142529, 33.941933>,  <28.195206, 36.513489, 33.923340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046740, 36.142529, 33.941933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153069, 0.011732, -0.988146,
		0.915864, -0.373880, -0.146311,
		-0.371165, -0.927403, 0.046484,
		27.935390, 35.864307, 33.955879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600765, 36.111576, 33.467266>,  <28.195206, 36.513489, 33.923340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600765, 36.111576, 33.467266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242098, 35.946648, 33.531738>,  <28.026897, 35.847691, 33.570423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242098, 35.946648, 33.531738>,  <28.600765, 36.111576, 33.467266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242098, 35.946648, 33.531738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213846, 0.084617, -0.973196,
		0.387629, -0.907101, -0.164046,
		-0.896668, -0.412319, 0.161179,
		27.973097, 35.822952, 33.580093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174669, 35.722401, 33.820587>,  <28.600765, 36.111576, 33.467266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174669, 35.722401, 33.820587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239143, 35.975151, 33.517338>,  <29.277828, 36.126801, 33.335388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239143, 35.975151, 33.517338>,  <29.174669, 35.722401, 33.820587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239143, 35.975151, 33.517338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941898, -0.327869, -0.073014,
		-0.294700, -0.702303, -0.648014,
		0.161186, 0.631880, -0.758120,
		29.287498, 36.164715, 33.289902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568052, 35.286686, 33.340202>,  <29.174669, 35.722401, 33.820587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568052, 35.286686, 33.340202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633944, 35.673832, 33.264191>,  <29.673477, 35.906120, 33.218586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633944, 35.673832, 33.264191>,  <29.568052, 35.286686, 33.340202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633944, 35.673832, 33.264191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982807, -0.177352, -0.051349,
		-0.083400, -0.178299, -0.980436,
		0.164727, 0.967861, -0.190025,
		29.683361, 35.964191, 33.207184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865002, 35.405499, 32.721703>,  <29.568052, 35.286686, 33.340202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865002, 35.405499, 32.721703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990257, 35.647007, 33.014935>,  <30.065411, 35.791912, 33.190872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990257, 35.647007, 33.014935>,  <29.865002, 35.405499, 32.721703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990257, 35.647007, 33.014935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948266, -0.156255, -0.276363,
		-0.052314, 0.781690, -0.621469,
		0.313138, 0.603775, 0.733076,
		30.084198, 35.828140, 33.234856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369053, 35.886066, 32.528488>,  <29.865002, 35.405499, 32.721703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369053, 35.886066, 32.528488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461807, 35.837769, 32.914577>,  <30.517460, 35.808792, 33.146229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461807, 35.837769, 32.914577>,  <30.369053, 35.886066, 32.528488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461807, 35.837769, 32.914577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959750, -0.133238, -0.247240,
		0.158456, 0.983702, 0.084986,
		0.231887, -0.120741, 0.965220,
		30.531374, 35.801544, 33.204144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965370, 36.401932, 32.774738>,  <30.369053, 35.886066, 32.528488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965370, 36.401932, 32.774738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940245, 36.043587, 32.950684>,  <30.925169, 35.828579, 33.056252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940245, 36.043587, 32.950684>,  <30.965370, 36.401932, 32.774738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940245, 36.043587, 32.950684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989821, -0.112314, -0.087404,
		0.127705, 0.429895, 0.893802,
		-0.062812, -0.895866, 0.439863,
		30.921402, 35.774826, 33.082642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398703, 36.324184, 33.348545>,  <30.965370, 36.401932, 32.774738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398703, 36.324184, 33.348545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373917, 35.946075, 33.220409>,  <31.359045, 35.719208, 33.143528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373917, 35.946075, 33.220409>,  <31.398703, 36.324184, 33.348545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373917, 35.946075, 33.220409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996481, -0.040442, -0.073416,
		0.056443, -0.323760, 0.944454,
		-0.061964, -0.945275, -0.320338,
		31.355328, 35.662495, 33.124310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843317, 35.756145, 33.697357>,  <31.398703, 36.324184, 33.348545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843317, 35.756145, 33.697357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791765, 35.735897, 33.301208>,  <31.760834, 35.723747, 33.063519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791765, 35.735897, 33.301208>,  <31.843317, 35.756145, 33.697357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791765, 35.735897, 33.301208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983147, 0.124060, -0.134283,
		0.129662, -0.990982, 0.033781,
		-0.128882, -0.050623, -0.990367,
		31.753101, 35.720711, 33.004097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261204, 35.236916, 33.245140>,  <31.843317, 35.756145, 33.697357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261204, 35.236916, 33.245140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193356, 35.573574, 33.040062>,  <32.152645, 35.775570, 32.917015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193356, 35.573574, 33.040062>,  <32.261204, 35.236916, 33.245140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193356, 35.573574, 33.040062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979587, 0.200939, 0.005771,
		0.107877, -0.501251, -0.858551,
		-0.169624, 0.841648, -0.512695,
		32.142467, 35.826069, 32.886253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665321, 35.392284, 32.523968>,  <32.261204, 35.236916, 33.245140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665321, 35.392284, 32.523968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616104, 35.752285, 32.691227>,  <32.586575, 35.968285, 32.791584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616104, 35.752285, 32.691227>,  <32.665321, 35.392284, 32.523968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616104, 35.752285, 32.691227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991057, 0.133359, 0.004586,
		-0.051637, 0.414975, -0.908366,
		-0.123042, 0.900006, 0.418151,
		32.579193, 36.022285, 32.816673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391266, 34.766090, 32.191376>,  <32.665321, 35.392284, 32.523968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391266, 34.766090, 32.191376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790798, 34.746788, 32.189888>,  <33.030518, 34.735207, 32.188995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790798, 34.746788, 32.189888>,  <32.391266, 34.766090, 32.191376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790798, 34.746788, 32.189888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048296, -0.998774, -0.010894,
		-0.003190, 0.011061, -0.999934,
		0.998828, -0.048258, -0.003721,
		33.090446, 34.732311, 32.188770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749928, 34.293705, 31.604931>,  <32.391266, 34.766090, 32.191376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749928, 34.293705, 31.604931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980434, 34.303902, 31.931675>,  <33.118740, 34.310020, 32.127724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980434, 34.303902, 31.931675>,  <32.749928, 34.293705, 31.604931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980434, 34.303902, 31.931675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040112, -0.999191, 0.002880,
		0.816275, 0.031106, -0.576826,
		0.576270, 0.025489, 0.816862,
		33.153316, 34.311550, 32.176735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299099, 33.811970, 31.452719>,  <32.749928, 34.293705, 31.604931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299099, 33.811970, 31.452719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270908, 33.840405, 31.850710>,  <33.253994, 33.857464, 32.089504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270908, 33.840405, 31.850710>,  <33.299099, 33.811970, 31.452719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270908, 33.840405, 31.850710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234807, -0.968247, 0.085808,
		0.969483, 0.239675, 0.051551,
		-0.070480, 0.071085, 0.994977,
		33.249763, 33.861729, 32.149204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995255, 33.616753, 31.772339>,  <33.299099, 33.811970, 31.452719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995255, 33.616753, 31.772339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688950, 33.551140, 32.021080>,  <33.505165, 33.511772, 32.170326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688950, 33.551140, 32.021080>,  <33.995255, 33.616753, 31.772339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688950, 33.551140, 32.021080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307600, -0.942572, 0.130153,
		0.564794, 0.290949, 0.772241,
		-0.765761, -0.164031, 0.621855,
		33.459221, 33.501930, 32.207638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119247, 33.376526, 32.494839>,  <33.995255, 33.616753, 31.772339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119247, 33.376526, 32.494839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106842, 33.197269, 32.852207>,  <34.099400, 33.089714, 33.066628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106842, 33.197269, 32.852207>,  <34.119247, 33.376526, 32.494839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106842, 33.197269, 32.852207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285231, 0.860654, 0.421803,
		-0.957957, -0.241753, -0.154512,
		-0.031009, -0.448141, 0.893425,
		34.097538, 33.062828, 33.120235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960396, 33.367630, 32.389263>,  <34.119247, 33.376526, 32.494839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960396, 33.367630, 32.389263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895554, 33.112648, 32.087967>,  <34.856647, 32.959660, 31.907188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895554, 33.112648, 32.087967>,  <34.960396, 33.367630, 32.389263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895554, 33.112648, 32.087967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613573, 0.532719, -0.582871,
		0.772821, -0.556655, 0.304768,
		-0.162102, -0.637452, -0.753245,
		34.846924, 32.921413, 31.861994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616909, 33.127991, 32.186314>,  <34.960396, 33.367630, 32.389263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616909, 33.127991, 32.186314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354240, 33.122379, 31.884693>,  <35.196640, 33.119015, 31.703722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354240, 33.122379, 31.884693>,  <35.616909, 33.127991, 32.186314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354240, 33.122379, 31.884693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575989, 0.636099, -0.513435,
		0.486850, -0.771480, -0.409629,
		-0.656669, -0.014024, -0.754048,
		35.157238, 33.118172, 31.658478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933861, 32.772900, 31.535007>,  <35.616909, 33.127991, 32.186314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933861, 32.772900, 31.535007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662041, 33.064705, 31.503967>,  <35.498947, 33.239788, 31.485344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662041, 33.064705, 31.503967>,  <35.933861, 32.772900, 31.535007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662041, 33.064705, 31.503967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604414, 0.496771, -0.622818,
		-0.415803, -0.470140, -0.778509,
		-0.679553, 0.729511, -0.077600,
		35.458176, 33.283558, 31.480688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720383, 32.782463, 30.849411>,  <35.933861, 32.772900, 31.535007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720383, 32.782463, 30.849411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696793, 33.144485, 31.017883>,  <35.682640, 33.361698, 31.118967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696793, 33.144485, 31.017883>,  <35.720383, 32.782463, 30.849411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696793, 33.144485, 31.017883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490093, 0.393819, -0.777634,
		-0.869673, 0.160557, -0.466788,
		-0.058975, 0.905057, 0.421181,
		35.679100, 33.416004, 31.144238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424667, 33.148129, 30.334614>,  <35.720383, 32.782463, 30.849411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424667, 33.148129, 30.334614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602425, 33.410904, 30.578236>,  <35.709080, 33.568569, 30.724409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602425, 33.410904, 30.578236>,  <35.424667, 33.148129, 30.334614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602425, 33.410904, 30.578236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433870, 0.436985, -0.787909,
		-0.783756, 0.614390, -0.090834,
		0.444390, 0.656939, 0.609055,
		35.735741, 33.607986, 30.760952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269650, 33.688160, 29.957903>,  <35.424667, 33.148129, 30.334614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269650, 33.688160, 29.957903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562824, 33.795677, 30.207880>,  <35.738728, 33.860188, 30.357866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562824, 33.795677, 30.207880>,  <35.269650, 33.688160, 29.957903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562824, 33.795677, 30.207880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518856, 0.373266, -0.769065,
		-0.439990, 0.887931, 0.134115,
		0.732937, 0.268794, 0.624942,
		35.782707, 33.876316, 30.395363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263824, 34.344955, 30.082319>,  <35.269650, 33.688160, 29.957903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263824, 34.344955, 30.082319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637585, 34.207615, 30.120270>,  <35.861843, 34.125210, 30.143040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637585, 34.207615, 30.120270>,  <35.263824, 34.344955, 30.082319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637585, 34.207615, 30.120270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249757, 0.441565, -0.861766,
		0.253996, 0.828932, 0.498354,
		0.934402, -0.343353, 0.094876,
		35.917904, 34.104610, 30.148733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579113, 34.834282, 29.782778>,  <35.263824, 34.344955, 30.082319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579113, 34.834282, 29.782778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868996, 34.562973, 29.831360>,  <36.042923, 34.400188, 29.860510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868996, 34.562973, 29.831360>,  <35.579113, 34.834282, 29.782778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868996, 34.562973, 29.831360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559392, 0.476198, -0.678466,
		0.402347, 0.559629, 0.724522,
		0.724705, -0.678271, 0.121455,
		36.086407, 34.359493, 29.867796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128975, 35.178417, 30.010403>,  <35.579113, 34.834282, 29.782778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128975, 35.178417, 30.010403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297752, 34.845898, 29.865679>,  <36.399021, 34.646385, 29.778845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297752, 34.845898, 29.865679>,  <36.128975, 35.178417, 30.010403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297752, 34.845898, 29.865679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551049, 0.552053, -0.625765,
		0.719935, 0.064665, 0.691023,
		0.421947, -0.831297, -0.361809,
		36.424335, 34.596508, 29.757135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752090, 35.365463, 29.824522>,  <36.128975, 35.178417, 30.010403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752090, 35.365463, 29.824522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705170, 35.035305, 29.603626>,  <36.677017, 34.837212, 29.471088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705170, 35.035305, 29.603626>,  <36.752090, 35.365463, 29.824522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705170, 35.035305, 29.603626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640895, 0.361862, -0.676985,
		0.758612, -0.433340, 0.486542,
		-0.117304, -0.825392, -0.552239,
		36.669979, 34.787689, 29.437954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502449, 35.244701, 29.415943>,  <36.752090, 35.365463, 29.824522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502449, 35.244701, 29.415943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230206, 35.018867, 29.229176>,  <37.066860, 34.883366, 29.117115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230206, 35.018867, 29.229176>,  <37.502449, 35.244701, 29.415943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230206, 35.018867, 29.229176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335185, 0.326745, -0.883679,
		0.651475, -0.757946, -0.033146,
		-0.680611, -0.564585, -0.466918,
		37.026024, 34.849491, 29.089100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823063, 34.992634, 28.840189>,  <37.502449, 35.244701, 29.415943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823063, 34.992634, 28.840189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437263, 34.959801, 28.739792>,  <37.205784, 34.940102, 28.679554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437263, 34.959801, 28.739792>,  <37.823063, 34.992634, 28.840189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437263, 34.959801, 28.739792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209313, 0.341862, -0.916143,
		0.161006, -0.936158, -0.312546,
		-0.964503, -0.082085, -0.250992,
		37.147911, 34.935173, 28.664494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741810, 34.567440, 28.172895>,  <37.823063, 34.992634, 28.840189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741810, 34.567440, 28.172895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396843, 34.767811, 28.202021>,  <37.189861, 34.888035, 28.219496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396843, 34.767811, 28.202021>,  <37.741810, 34.567440, 28.172895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396843, 34.767811, 28.202021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058573, 0.241634, -0.968598,
		-0.502794, -0.831073, -0.237731,
		-0.862419, 0.500930, 0.072814,
		37.138119, 34.918091, 28.223866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340263, 34.375366, 27.569445>,  <37.741810, 34.567440, 28.172895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340263, 34.375366, 27.569445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207748, 34.719547, 27.724297>,  <37.128239, 34.926056, 27.817207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207748, 34.719547, 27.724297>,  <37.340263, 34.375366, 27.569445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207748, 34.719547, 27.724297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227093, 0.325522, -0.917858,
		-0.915794, -0.391988, 0.087562,
		-0.331286, 0.860454, 0.387129,
		37.108364, 34.977684, 27.840435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707371, 34.498436, 27.183052>,  <37.340263, 34.375366, 27.569445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707371, 34.498436, 27.183052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815044, 34.850937, 27.338453>,  <36.879646, 35.062439, 27.431694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815044, 34.850937, 27.338453>,  <36.707371, 34.498436, 27.183052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815044, 34.850937, 27.338453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062821, 0.418601, -0.905995,
		-0.961039, 0.219470, 0.168040,
		0.269180, 0.881253, 0.388505,
		36.895798, 35.115314, 27.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298218, 34.836765, 26.883192>,  <36.707371, 34.498436, 27.183052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298218, 34.836765, 26.883192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537071, 35.122433, 27.029284>,  <36.680382, 35.293835, 27.116938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537071, 35.122433, 27.029284>,  <36.298218, 34.836765, 26.883192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537071, 35.122433, 27.029284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273589, 0.609342, -0.744212,
		-0.754043, 0.344472, 0.559248,
		0.597133, 0.714172, 0.365227,
		36.716209, 35.336685, 27.138851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855354, 35.340050, 26.720486>,  <36.298218, 34.836765, 26.883192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855354, 35.340050, 26.720486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184589, 35.517906, 26.861807>,  <36.382130, 35.624622, 26.946600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184589, 35.517906, 26.861807>,  <35.855354, 35.340050, 26.720486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184589, 35.517906, 26.861807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268906, 0.853075, -0.447161,
		-0.500223, 0.273046, 0.821720,
		0.823084, 0.444645, 0.353304,
		36.431515, 35.651299, 26.967798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650681, 35.976017, 27.026716>,  <35.855354, 35.340050, 26.720486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650681, 35.976017, 27.026716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022247, 35.985085, 26.878881>,  <36.245190, 35.990524, 26.790180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022247, 35.985085, 26.878881>,  <35.650681, 35.976017, 27.026716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022247, 35.985085, 26.878881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252525, 0.768785, -0.587538,
		0.270814, 0.639106, 0.719864,
		0.928919, 0.022670, -0.369588,
		36.300922, 35.991886, 26.768005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769596, 36.638103, 27.096745>,  <35.650681, 35.976017, 27.026716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769596, 36.638103, 27.096745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025372, 36.487545, 26.828581>,  <36.178837, 36.397209, 26.667683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025372, 36.487545, 26.828581>,  <35.769596, 36.638103, 27.096745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025372, 36.487545, 26.828581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135001, 0.803457, -0.579855,
		0.756900, 0.461286, 0.462944,
		0.639435, -0.376395, -0.670411,
		36.217201, 36.374626, 26.627457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120934, 37.256889, 26.816782>,  <35.769596, 36.638103, 27.096745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120934, 37.256889, 26.816782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152855, 36.936092, 26.579990>,  <36.172009, 36.743614, 26.437916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152855, 36.936092, 26.579990>,  <36.120934, 37.256889, 26.816782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152855, 36.936092, 26.579990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278734, 0.552227, -0.785718,
		0.957047, 0.227711, -0.179470,
		0.079808, -0.801993, -0.591978,
		36.176796, 36.695496, 26.402397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689388, 37.443920, 26.202158>,  <36.120934, 37.256889, 26.816782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689388, 37.443920, 26.202158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462696, 37.137177, 26.081669>,  <36.326679, 36.953129, 26.009377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462696, 37.137177, 26.081669>,  <36.689388, 37.443920, 26.202158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462696, 37.137177, 26.081669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156076, 0.458911, -0.874666,
		0.808984, -0.448689, -0.379768,
		-0.566733, -0.766864, -0.301222,
		36.292675, 36.907116, 25.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816628, 37.304966, 25.505754>,  <36.689388, 37.443920, 26.202158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816628, 37.304966, 25.505754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447567, 37.162849, 25.565731>,  <36.226131, 37.077579, 25.601717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447567, 37.162849, 25.565731>,  <36.816628, 37.304966, 25.505754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447567, 37.162849, 25.565731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294584, 0.398428, -0.868605,
		0.248865, -0.845591, -0.472273,
		-0.922652, -0.355290, 0.149943,
		36.170773, 37.056263, 25.610714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637650, 37.220043, 24.887276>,  <36.816628, 37.304966, 25.505754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637650, 37.220043, 24.887276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286064, 37.154701, 25.066492>,  <36.075111, 37.115498, 25.174023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286064, 37.154701, 25.066492>,  <36.637650, 37.220043, 24.887276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286064, 37.154701, 25.066492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453750, 0.575579, -0.680309,
		-0.146756, -0.801265, -0.580032,
		-0.878962, -0.163350, 0.448043,
		36.022377, 37.105698, 25.200905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165852, 37.118683, 24.331242>,  <36.637650, 37.220043, 24.887276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165852, 37.118683, 24.331242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962101, 37.249844, 24.649490>,  <35.839851, 37.328541, 24.840439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962101, 37.249844, 24.649490>,  <36.165852, 37.118683, 24.331242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962101, 37.249844, 24.649490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627480, 0.491180, -0.604161,
		-0.588902, -0.806982, -0.044441,
		-0.509375, 0.327906, 0.795622,
		35.809288, 37.348217, 24.888178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497536, 37.010685, 24.121143>,  <36.165852, 37.118683, 24.331242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497536, 37.010685, 24.121143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460117, 37.262825, 24.429405>,  <35.437668, 37.414108, 24.614363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460117, 37.262825, 24.429405>,  <35.497536, 37.010685, 24.121143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460117, 37.262825, 24.429405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635018, 0.558388, -0.533812,
		-0.766812, -0.539314, 0.348051,
		-0.093545, 0.630352, 0.770653,
		35.432053, 37.451931, 24.660601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925873, 37.301533, 24.049246>,  <35.497536, 37.010685, 24.121143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925873, 37.301533, 24.049246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051811, 37.578762, 24.308636>,  <35.127373, 37.745102, 24.464270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051811, 37.578762, 24.308636>,  <34.925873, 37.301533, 24.049246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051811, 37.578762, 24.308636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502651, 0.701301, -0.505489,
		-0.805117, -0.166805, 0.569177,
		0.314847, 0.693076, 0.648474,
		35.146267, 37.786686, 24.503178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349163, 37.703251, 24.168314>,  <34.925873, 37.301533, 24.049246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349163, 37.703251, 24.168314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661755, 37.936363, 24.257456>,  <34.849308, 38.076229, 24.310942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661755, 37.936363, 24.257456>,  <34.349163, 37.703251, 24.168314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661755, 37.936363, 24.257456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439950, 0.767959, -0.465492,
		-0.442423, 0.265725, 0.856535,
		0.781476, 0.582777, 0.222857,
		34.896198, 38.111195, 24.324312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067791, 38.374287, 24.348677>,  <34.349163, 37.703251, 24.168314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067791, 38.374287, 24.348677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451393, 38.454182, 24.268265>,  <34.681553, 38.502117, 24.220016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451393, 38.454182, 24.268265>,  <34.067791, 38.374287, 24.348677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451393, 38.454182, 24.268265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276142, 0.818043, -0.504531,
		0.063679, 0.539361, 0.839664,
		0.959005, 0.199739, -0.201032,
		34.739094, 38.514103, 24.207954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051865, 39.022480, 24.475084>,  <34.067791, 38.374287, 24.348677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051865, 39.022480, 24.475084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348896, 38.961262, 24.214268>,  <34.527115, 38.924530, 24.057777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348896, 38.961262, 24.214268>,  <34.051865, 39.022480, 24.475084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348896, 38.961262, 24.214268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315503, 0.778826, -0.542115,
		0.590798, 0.608282, 0.530048,
		0.742574, -0.153048, -0.652043,
		34.571667, 38.915348, 24.018654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489151, 39.663754, 24.319963>,  <34.051865, 39.022480, 24.475084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489151, 39.663754, 24.319963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535564, 39.429176, 23.999310>,  <34.563412, 39.288429, 23.806917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535564, 39.429176, 23.999310>,  <34.489151, 39.663754, 24.319963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535564, 39.429176, 23.999310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270058, 0.758054, -0.593652,
		0.955827, 0.285369, -0.070418,
		0.116030, -0.586446, -0.801635,
		34.570374, 39.253242, 23.758820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925354, 40.016068, 23.901001>,  <34.489151, 39.663754, 24.319963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925354, 40.016068, 23.901001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719128, 39.769901, 23.662523>,  <34.595390, 39.622200, 23.519436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719128, 39.769901, 23.662523>,  <34.925354, 40.016068, 23.901001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719128, 39.769901, 23.662523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243282, 0.772303, -0.586824,
		0.821589, -0.157500, -0.547892,
		-0.515563, -0.615420, -0.596198,
		34.564457, 39.585274, 23.483664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097153, 40.255344, 23.251287>,  <34.925354, 40.016068, 23.901001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097153, 40.255344, 23.251287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790863, 40.020916, 23.145315>,  <34.607090, 39.880260, 23.081732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790863, 40.020916, 23.145315>,  <35.097153, 40.255344, 23.251287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790863, 40.020916, 23.145315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173990, 0.585312, -0.791920,
		0.619186, -0.560299, -0.550159,
		-0.765726, -0.586068, -0.264930,
		34.561146, 39.845097, 23.065836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103676, 40.164951, 22.587364>,  <35.097153, 40.255344, 23.251287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103676, 40.164951, 22.587364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725098, 40.056091, 22.656843>,  <34.497952, 39.990776, 22.698530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725098, 40.056091, 22.656843>,  <35.103676, 40.164951, 22.587364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725098, 40.056091, 22.656843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311244, 0.626091, -0.714939,
		0.085822, -0.730714, -0.677268,
		-0.946447, -0.272153, 0.173698,
		34.441162, 39.974445, 22.708952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768730, 39.964714, 21.879196>,  <35.103676, 40.164951, 22.587364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768730, 39.964714, 21.879196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487667, 40.043224, 22.152763>,  <34.319031, 40.090332, 22.316904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487667, 40.043224, 22.152763>,  <34.768730, 39.964714, 21.879196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487667, 40.043224, 22.152763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421074, 0.660110, -0.622054,
		-0.573557, -0.725072, -0.381185,
		-0.702659, 0.196277, 0.683920,
		34.276871, 40.102108, 22.357939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142036, 40.037388, 21.490646>,  <34.768730, 39.964714, 21.879196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142036, 40.037388, 21.490646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090878, 40.233467, 21.835516>,  <34.060184, 40.351116, 22.042439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090878, 40.233467, 21.835516>,  <34.142036, 40.037388, 21.490646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090878, 40.233467, 21.835516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403868, 0.768233, -0.496698,
		-0.905833, -0.411730, 0.099724,
		-0.127895, 0.490201, 0.862175,
		34.052509, 40.380527, 22.094168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457214, 40.386608, 21.479723>,  <34.142036, 40.037388, 21.490646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457214, 40.386608, 21.479723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678616, 40.568413, 21.758879>,  <33.811459, 40.677498, 21.926373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678616, 40.568413, 21.758879>,  <33.457214, 40.386608, 21.479723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678616, 40.568413, 21.758879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246027, 0.889793, -0.384368,
		-0.795676, 0.041051, 0.604329,
		0.553507, 0.454514, 0.697888,
		33.844669, 40.704765, 21.968245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131367, 40.916100, 21.666994>,  <33.457214, 40.386608, 21.479723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131367, 40.916100, 21.666994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492992, 41.027908, 21.796324>,  <33.709969, 41.094994, 21.873922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492992, 41.027908, 21.796324>,  <33.131367, 40.916100, 21.666994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492992, 41.027908, 21.796324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136056, 0.905355, -0.402270,
		-0.405168, 0.319687, 0.856527,
		0.904061, 0.279523, 0.323326,
		33.764210, 41.111767, 21.893322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067772, 41.597958, 22.016001>,  <33.131367, 40.916100, 21.666994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067772, 41.597958, 22.016001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456478, 41.579380, 21.923462>,  <33.689701, 41.568233, 21.867939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456478, 41.579380, 21.923462>,  <33.067772, 41.597958, 22.016001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456478, 41.579380, 21.923462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005283, 0.975908, -0.218119,
		0.235902, 0.213182, 0.948105,
		0.971762, -0.046446, -0.231345,
		33.748009, 41.565445, 21.854059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490074, 42.118176, 22.373589>,  <33.067772, 41.597958, 22.016001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490074, 42.118176, 22.373589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709305, 42.028271, 22.051323>,  <33.840843, 41.974327, 21.857964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709305, 42.028271, 22.051323>,  <33.490074, 42.118176, 22.373589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709305, 42.028271, 22.051323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191506, 0.971353, -0.140707,
		0.814210, -0.077172, 0.575419,
		0.548076, -0.224761, -0.805664,
		33.873726, 41.960842, 21.809624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096596, 42.454586, 22.565413>,  <33.490074, 42.118176, 22.373589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096596, 42.454586, 22.565413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118160, 42.380260, 22.172970>,  <34.131100, 42.335667, 21.937504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118160, 42.380260, 22.172970>,  <34.096596, 42.454586, 22.565413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118160, 42.380260, 22.172970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263666, 0.950312, -0.165492,
		0.963107, -0.249763, 0.100220,
		0.053907, -0.185811, -0.981106,
		34.134331, 42.324516, 21.878637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840630, 42.732365, 22.355513>,  <34.096596, 42.454586, 22.565413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840630, 42.732365, 22.355513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641605, 42.704380, 22.009670>,  <34.522190, 42.687588, 21.802166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641605, 42.704380, 22.009670>,  <34.840630, 42.732365, 22.355513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641605, 42.704380, 22.009670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226261, 0.951768, -0.207227,
		0.837402, -0.298734, -0.457729,
		-0.497557, -0.069966, -0.864605,
		34.492340, 42.683392, 21.750288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196049, 43.169853, 21.842413>,  <34.840630, 42.732365, 22.355513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196049, 43.169853, 21.842413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825130, 43.124821, 21.699615>,  <34.602577, 43.097801, 21.613937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825130, 43.124821, 21.699615>,  <35.196049, 43.169853, 21.842413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825130, 43.124821, 21.699615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042321, 0.979115, -0.198855,
		0.371925, -0.169289, -0.912696,
		-0.927298, -0.112585, -0.356993,
		34.546940, 43.091045, 21.592518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157597, 43.519501, 21.153751>,  <35.196049, 43.169853, 21.842413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157597, 43.519501, 21.153751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780819, 43.514580, 21.287966>,  <34.554752, 43.511627, 21.368494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780819, 43.514580, 21.287966>,  <35.157597, 43.519501, 21.153751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780819, 43.514580, 21.287966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129597, 0.935207, -0.329532,
		-0.309740, -0.353887, -0.882511,
		-0.941948, -0.012302, 0.335534,
		34.498234, 43.510891, 21.388626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813301, 43.843357, 20.627426>,  <35.157597, 43.519501, 21.153751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813301, 43.843357, 20.627426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572380, 43.869347, 20.945675>,  <34.427830, 43.884941, 21.136623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572380, 43.869347, 20.945675>,  <34.813301, 43.843357, 20.627426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572380, 43.869347, 20.945675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090685, 0.984661, -0.149058,
		-0.793103, -0.161928, -0.587168,
		-0.602298, 0.064971, 0.795622,
		34.391689, 43.888840, 21.184362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176888, 44.038147, 20.391399>,  <34.813301, 43.843357, 20.627426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176888, 44.038147, 20.391399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172394, 44.135101, 20.779446>,  <34.169697, 44.193275, 21.012274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172394, 44.135101, 20.779446>,  <34.176888, 44.038147, 20.391399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172394, 44.135101, 20.779446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163052, 0.956746, -0.240937,
		-0.986553, -0.160886, 0.028772,
		-0.011236, 0.242388, 0.970114,
		34.169022, 44.207817, 21.070480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617611, 44.359169, 20.404797>,  <34.176888, 44.038147, 20.391399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617611, 44.359169, 20.404797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824192, 44.468781, 20.729311>,  <33.948139, 44.534546, 20.924019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824192, 44.468781, 20.729311>,  <33.617611, 44.359169, 20.404797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824192, 44.468781, 20.729311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051670, 0.955661, -0.289900,
		-0.854756, 0.107800, 0.507712,
		0.516452, 0.274027, 0.811287,
		33.979126, 44.550987, 20.972696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293842, 44.964809, 20.698360>,  <33.617611, 44.359169, 20.404797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293842, 44.964809, 20.698360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668255, 44.971233, 20.838985>,  <33.892902, 44.975086, 20.923361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668255, 44.971233, 20.838985>,  <33.293842, 44.964809, 20.698360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668255, 44.971233, 20.838985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073831, 0.967766, -0.240786,
		-0.344097, 0.251338, 0.904669,
		0.936027, 0.016061, 0.351562,
		33.949062, 44.976051, 20.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375298, 45.566639, 21.067822>,  <33.293842, 44.964809, 20.698360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375298, 45.566639, 21.067822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756020, 45.490116, 20.971935>,  <33.984455, 45.444202, 20.914404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756020, 45.490116, 20.971935>,  <33.375298, 45.566639, 21.067822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756020, 45.490116, 20.971935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157350, 0.975502, -0.153744,
		0.263256, 0.108615, 0.958592,
		0.951807, -0.191308, -0.239716,
		34.041561, 45.432724, 20.900021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766895, 45.925999, 21.455320>,  <33.375298, 45.566639, 21.067822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766895, 45.925999, 21.455320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967472, 45.844391, 21.119005>,  <34.087818, 45.795425, 20.917215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967472, 45.844391, 21.119005>,  <33.766895, 45.925999, 21.455320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967472, 45.844391, 21.119005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035372, 0.975820, -0.215695,
		0.864466, 0.078419, 0.496537,
		0.501445, -0.204024, -0.840789,
		34.117905, 45.783184, 20.866768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367661, 46.561832, 21.436659>,  <33.766895, 45.925999, 21.455320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367661, 46.561832, 21.436659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735020, 46.673798, 21.548513>,  <33.955433, 46.740978, 21.615625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735020, 46.673798, 21.548513>,  <33.367661, 46.561832, 21.436659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735020, 46.673798, 21.548513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357955, -0.286690, -0.888638,
		-0.168575, 0.916218, -0.363492,
		0.918396, 0.279916, 0.279636,
		34.010540, 46.757771, 21.632404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697376, 47.020565, 20.939547>,  <33.367661, 46.561832, 21.436659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697376, 47.020565, 20.939547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947407, 46.767971, 21.123070>,  <34.097424, 46.616413, 21.233183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947407, 46.767971, 21.123070>,  <33.697376, 47.020565, 20.939547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947407, 46.767971, 21.123070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385869, -0.260957, -0.884877,
		0.678516, 0.730156, 0.080553,
		0.625077, -0.631486, 0.458808,
		34.134930, 46.578526, 21.260712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290245, 47.073948, 20.576303>,  <33.697376, 47.020565, 20.939547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290245, 47.073948, 20.576303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350082, 46.746937, 20.798754>,  <34.385983, 46.550732, 20.932224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350082, 46.746937, 20.798754>,  <34.290245, 47.073948, 20.576303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350082, 46.746937, 20.798754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624954, -0.357679, -0.693901,
		0.766195, 0.451355, 0.457409,
		0.149591, -0.817523, 0.556128,
		34.394958, 46.501678, 20.965591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212948, 47.748043, 20.761086>,  <34.290245, 47.073948, 20.576303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212948, 47.748043, 20.761086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380695, 47.600006, 21.092667>,  <34.481346, 47.511185, 21.291615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380695, 47.600006, 21.092667>,  <34.212948, 47.748043, 20.761086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380695, 47.600006, 21.092667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354107, -0.774109, -0.524751,
		0.835905, 0.513603, -0.193586,
		0.419371, -0.370091, 0.828951,
		34.506508, 47.488979, 21.341352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931694, 47.603279, 20.822104>,  <34.212948, 47.748043, 20.761086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931694, 47.603279, 20.822104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738205, 47.335934, 21.048134>,  <34.622112, 47.175526, 21.183752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738205, 47.335934, 21.048134>,  <34.931694, 47.603279, 20.822104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738205, 47.335934, 21.048134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377598, -0.741824, -0.554181,
		0.789579, -0.054697, 0.611206,
		-0.483720, -0.668360, 0.565075,
		34.593090, 47.135426, 21.217657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146961, 47.372154, 21.507599>,  <34.931694, 47.603279, 20.822104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146961, 47.372154, 21.507599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825600, 47.158314, 21.612473>,  <34.632782, 47.030010, 21.675396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825600, 47.158314, 21.612473>,  <35.146961, 47.372154, 21.507599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825600, 47.158314, 21.612473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518029, -0.410456, 0.750447,
		-0.293577, 0.738732, 0.606703,
		-0.803404, -0.534603, 0.262184,
		34.584579, 46.997932, 21.691128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922878, 47.571728, 22.230444>,  <35.146961, 47.372154, 21.507599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922878, 47.571728, 22.230444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813972, 47.194035, 22.156357>,  <34.748631, 46.967419, 22.111904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813972, 47.194035, 22.156357>,  <34.922878, 47.571728, 22.230444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813972, 47.194035, 22.156357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338130, -0.274095, 0.900300,
		-0.900857, 0.182489, 0.393897,
		-0.272261, -0.944230, -0.185215,
		34.732296, 46.910767, 22.100792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466488, 47.425217, 22.687901>,  <34.922878, 47.571728, 22.230444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466488, 47.425217, 22.687901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590488, 47.059586, 22.583311>,  <34.664886, 46.840206, 22.520557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590488, 47.059586, 22.583311>,  <34.466488, 47.425217, 22.687901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590488, 47.059586, 22.583311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159575, -0.221094, 0.962109,
		-0.937250, -0.339975, 0.077325,
		0.309997, -0.914076, -0.261472,
		34.683487, 46.785362, 22.504869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195969, 46.954144, 23.117592>,  <34.466488, 47.425217, 22.687901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195969, 46.954144, 23.117592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513409, 46.758717, 22.972542>,  <34.703873, 46.641460, 22.885511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513409, 46.758717, 22.972542>,  <34.195969, 46.954144, 23.117592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513409, 46.758717, 22.972542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202462, -0.349977, 0.914618,
		-0.573761, -0.799261, -0.178827,
		0.793604, -0.488567, -0.362623,
		34.751492, 46.612148, 22.863754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215580, 46.356995, 23.397392>,  <34.195969, 46.954144, 23.117592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215580, 46.356995, 23.397392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593536, 46.357948, 23.266441>,  <34.820309, 46.358521, 23.187870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593536, 46.357948, 23.266441>,  <34.215580, 46.356995, 23.397392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593536, 46.357948, 23.266441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255475, -0.630714, 0.732757,
		-0.204732, -0.776012, -0.596565,
		0.944890, 0.002389, -0.327379,
		34.877003, 46.358665, 23.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358700, 45.655270, 23.403265>,  <34.215580, 46.356995, 23.397392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358700, 45.655270, 23.403265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673637, 45.900383, 23.430355>,  <34.862598, 46.047451, 23.446609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673637, 45.900383, 23.430355>,  <34.358700, 45.655270, 23.403265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673637, 45.900383, 23.430355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422989, -0.616841, 0.663768,
		0.448523, -0.493965, -0.744866,
		0.787342, 0.612786, 0.067726,
		34.909840, 46.084217, 23.450672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843666, 45.239109, 23.551102>,  <34.358700, 45.655270, 23.403265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843666, 45.239109, 23.551102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036781, 45.575211, 23.649811>,  <35.152649, 45.776871, 23.709036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036781, 45.575211, 23.649811>,  <34.843666, 45.239109, 23.551102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036781, 45.575211, 23.649811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424156, -0.470886, 0.773536,
		0.766166, -0.268782, -0.583735,
		0.482785, 0.840251, 0.246772,
		35.181618, 45.827286, 23.723843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558826, 45.129704, 23.507193>,  <34.843666, 45.239109, 23.551102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558826, 45.129704, 23.507193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516602, 45.454159, 23.737289>,  <35.491264, 45.648834, 23.875347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516602, 45.454159, 23.737289>,  <35.558826, 45.129704, 23.507193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516602, 45.454159, 23.737289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491139, -0.460466, 0.739428,
		0.864661, 0.360583, -0.349774,
		-0.105566, 0.811142, 0.575243,
		35.484932, 45.697502, 23.909863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186459, 45.252663, 23.889349>,  <35.558826, 45.129704, 23.507193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186459, 45.252663, 23.889349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920494, 45.457962, 24.106411>,  <35.760918, 45.581142, 24.236649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920494, 45.457962, 24.106411>,  <36.186459, 45.252663, 23.889349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920494, 45.457962, 24.106411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422610, -0.340542, 0.839900,
		0.615873, 0.787788, 0.009526,
		-0.664907, 0.513246, 0.542657,
		35.721024, 45.611935, 24.269209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562202, 45.502747, 24.355524>,  <36.186459, 45.252663, 23.889349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562202, 45.502747, 24.355524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206406, 45.551453, 24.531693>,  <35.992928, 45.580677, 24.637394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206406, 45.551453, 24.531693>,  <36.562202, 45.502747, 24.355524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206406, 45.551453, 24.531693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326019, -0.506226, 0.798403,
		0.320169, 0.853761, 0.410589,
		-0.889496, 0.121764, 0.440420,
		35.939556, 45.587982, 24.663818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742306, 45.757969, 24.930893>,  <36.562202, 45.502747, 24.355524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742306, 45.757969, 24.930893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397362, 45.557259, 24.957888>,  <36.190395, 45.436832, 24.974085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397362, 45.557259, 24.957888>,  <36.742306, 45.757969, 24.930893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397362, 45.557259, 24.957888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352367, -0.499101, 0.791667,
		-0.363558, 0.706482, 0.607214,
		-0.862359, -0.501779, 0.067488,
		36.138653, 45.406723, 24.978134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693466, 45.429703, 25.610001>,  <36.742306, 45.757969, 24.930893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693466, 45.429703, 25.610001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368027, 45.245556, 25.467953>,  <36.172764, 45.135067, 25.382725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368027, 45.245556, 25.467953>,  <36.693466, 45.429703, 25.610001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368027, 45.245556, 25.467953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089992, -0.703131, 0.705343,
		-0.574414, 0.541911, 0.613499,
		-0.813603, -0.460369, -0.355120,
		36.123947, 45.107445, 25.361416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379768, 45.049522, 26.218517>,  <36.693466, 45.429703, 25.610001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379768, 45.049522, 26.218517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190708, 44.902264, 25.898251>,  <36.077274, 44.813908, 25.706091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190708, 44.902264, 25.898251>,  <36.379768, 45.049522, 26.218517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190708, 44.902264, 25.898251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146529, -0.863080, 0.483344,
		-0.868984, 0.345773, 0.353989,
		-0.472649, -0.368148, -0.800668,
		36.048912, 44.791821, 25.658051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772907, 44.724674, 26.385929>,  <36.379768, 45.049522, 26.218517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772907, 44.724674, 26.385929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877708, 44.554024, 26.039671>,  <35.940590, 44.451633, 25.831917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877708, 44.554024, 26.039671>,  <35.772907, 44.724674, 26.385929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877708, 44.554024, 26.039671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037100, -0.900769, 0.432710,
		-0.964354, -0.081255, -0.251831,
		0.262002, -0.426629, -0.865646,
		35.956310, 44.426037, 25.779978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327587, 44.076965, 26.329823>,  <35.772907, 44.724674, 26.385929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327587, 44.076965, 26.329823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647156, 44.032814, 26.093336>,  <35.838898, 44.006325, 25.951445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647156, 44.032814, 26.093336>,  <35.327587, 44.076965, 26.329823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647156, 44.032814, 26.093336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111583, -0.938745, 0.326046,
		-0.590990, -0.326456, -0.737670,
		0.798924, -0.110378, -0.591216,
		35.886833, 43.999699, 25.915972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214874, 43.483475, 25.817450>,  <35.327587, 44.076965, 26.329823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214874, 43.483475, 25.817450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602474, 43.557720, 25.882660>,  <35.835033, 43.602268, 25.921787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602474, 43.557720, 25.882660>,  <35.214874, 43.483475, 25.817450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602474, 43.557720, 25.882660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142405, -0.958916, 0.245359,
		0.201872, -0.214538, -0.955626,
		0.969004, 0.185618, 0.163027,
		35.893177, 43.613407, 25.931568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605808, 42.846840, 25.573729>,  <35.214874, 43.483475, 25.817450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605808, 42.846840, 25.573729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870113, 43.043175, 25.800875>,  <36.028698, 43.160976, 25.937162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870113, 43.043175, 25.800875>,  <35.605808, 42.846840, 25.573729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870113, 43.043175, 25.800875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280876, -0.863276, 0.419360,
		0.696062, -0.117597, -0.708285,
		0.660761, 0.490841, 0.567863,
		36.068340, 43.190426, 25.971233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169273, 42.390331, 25.541548>,  <35.605808, 42.846840, 25.573729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169273, 42.390331, 25.541548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246124, 42.612511, 25.865168>,  <36.292236, 42.745819, 26.059340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246124, 42.612511, 25.865168>,  <36.169273, 42.390331, 25.541548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246124, 42.612511, 25.865168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094729, -0.831054, 0.548065,
		0.976788, -0.028657, -0.212285,
		0.192127, 0.555452, 0.809049,
		36.303761, 42.779148, 26.107882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787426, 42.114132, 25.937864>,  <36.169273, 42.390331, 25.541548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787426, 42.114132, 25.937864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556240, 42.315418, 26.194839>,  <36.417526, 42.436192, 26.349024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556240, 42.315418, 26.194839>,  <36.787426, 42.114132, 25.937864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556240, 42.315418, 26.194839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017446, -0.779444, 0.626230,
		0.815872, 0.373149, 0.441715,
		-0.577969, 0.503217, 0.642437,
		36.382851, 42.466385, 26.387571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010941, 41.941010, 26.613440>,  <36.787426, 42.114132, 25.937864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010941, 41.941010, 26.613440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642956, 42.074162, 26.696245>,  <36.422165, 42.154053, 26.745928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642956, 42.074162, 26.696245>,  <37.010941, 41.941010, 26.613440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642956, 42.074162, 26.696245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032556, -0.591148, 0.805906,
		0.390650, 0.734664, 0.554672,
		-0.919963, 0.332884, 0.207014,
		36.366966, 42.174026, 26.758350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980442, 41.997452, 27.353491>,  <37.010941, 41.941010, 26.613440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980442, 41.997452, 27.353491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600590, 42.015209, 27.229412>,  <36.372677, 42.025864, 27.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600590, 42.015209, 27.229412>,  <36.980442, 41.997452, 27.353491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600590, 42.015209, 27.229412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288063, -0.513322, 0.808406,
		-0.123342, 0.857047, 0.500257,
		-0.949635, 0.044395, -0.310197,
		36.315701, 42.028526, 27.136353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599739, 42.152294, 27.928066>,  <36.980442, 41.997452, 27.353491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599739, 42.152294, 27.928066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323696, 41.979832, 27.695562>,  <36.158070, 41.876354, 27.556061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323696, 41.979832, 27.695562>,  <36.599739, 42.152294, 27.928066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323696, 41.979832, 27.695562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402312, -0.439077, 0.803341,
		-0.601582, 0.788236, 0.129550,
		-0.690104, -0.431156, -0.581258,
		36.116665, 41.850487, 27.521185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925072, 42.258072, 28.195965>,  <36.599739, 42.152294, 27.928066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925072, 42.258072, 28.195965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868504, 41.936714, 27.964602>,  <35.834564, 41.743900, 27.825783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868504, 41.936714, 27.964602>,  <35.925072, 42.258072, 28.195965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868504, 41.936714, 27.964602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383286, -0.494275, 0.780246,
		-0.912739, 0.332036, -0.238032,
		-0.141417, -0.803395, -0.578409,
		35.826080, 41.695694, 27.791079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229263, 41.947052, 28.366972>,  <35.925072, 42.258072, 28.195965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229263, 41.947052, 28.366972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416012, 41.656525, 28.165184>,  <35.528061, 41.482208, 28.044111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416012, 41.656525, 28.165184>,  <35.229263, 41.947052, 28.366972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416012, 41.656525, 28.165184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262267, -0.658515, 0.705389,
		-0.844538, -0.197022, -0.497933,
		0.466874, -0.726320, -0.504469,
		35.556072, 41.438629, 28.013844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898270, 41.353180, 28.508604>,  <35.229263, 41.947052, 28.366972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898270, 41.353180, 28.508604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232189, 41.181683, 28.370449>,  <35.432541, 41.078785, 28.287556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232189, 41.181683, 28.370449>,  <34.898270, 41.353180, 28.508604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232189, 41.181683, 28.370449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123442, -0.757124, 0.641502,
		-0.536543, -0.492887, -0.684969,
		0.834795, -0.428748, -0.345387,
		35.482628, 41.053059, 28.266832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711872, 40.694450, 28.354118>,  <34.898270, 41.353180, 28.508604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711872, 40.694450, 28.354118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108646, 40.698750, 28.404629>,  <35.346710, 40.701328, 28.434935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108646, 40.698750, 28.404629>,  <34.711872, 40.694450, 28.354118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108646, 40.698750, 28.404629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054071, -0.865267, 0.498387,
		0.114617, -0.501196, -0.857709,
		0.991937, 0.010746, 0.126275,
		35.406227, 40.701973, 28.442511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869041, 40.067139, 28.175547>,  <34.711872, 40.694450, 28.354118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869041, 40.067139, 28.175547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178719, 40.206863, 28.386677>,  <35.364525, 40.290699, 28.513355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178719, 40.206863, 28.386677>,  <34.869041, 40.067139, 28.175547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178719, 40.206863, 28.386677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019111, -0.820638, 0.571129,
		0.632656, -0.452254, -0.628659,
		0.774197, 0.349314, 0.527825,
		35.410976, 40.311657, 28.545025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295185, 39.562393, 28.298288>,  <34.869041, 40.067139, 28.175547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295185, 39.562393, 28.298288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430698, 39.785816, 28.601139>,  <35.512005, 39.919872, 28.782848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430698, 39.785816, 28.601139>,  <35.295185, 39.562393, 28.298288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430698, 39.785816, 28.601139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128479, -0.824637, 0.550878,
		0.932052, -0.089351, -0.351134,
		0.338780, 0.558560, 0.757125,
		35.532333, 39.953384, 28.828276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799675, 39.085163, 28.654915>,  <35.295185, 39.562393, 28.298288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799675, 39.085163, 28.654915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696251, 39.358658, 28.927870>,  <35.634197, 39.522755, 29.091642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696251, 39.358658, 28.927870>,  <35.799675, 39.085163, 28.654915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696251, 39.358658, 28.927870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288769, -0.619400, 0.730039,
		0.921825, 0.385808, -0.037292,
		-0.258557, 0.683737, 0.682387,
		35.618683, 39.563778, 29.132586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336224, 39.034336, 29.200836>,  <35.799675, 39.085163, 28.654915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336224, 39.034336, 29.200836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027279, 39.218784, 29.375568>,  <35.841911, 39.329453, 29.480408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027279, 39.218784, 29.375568>,  <36.336224, 39.034336, 29.200836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027279, 39.218784, 29.375568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105815, -0.584708, 0.804313,
		0.626306, 0.667445, 0.402813,
		-0.772362, 0.461123, 0.436831,
		35.795570, 39.357121, 29.506618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521301, 39.154144, 29.930088>,  <36.336224, 39.034336, 29.200836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521301, 39.154144, 29.930088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121796, 39.159702, 29.911024>,  <35.882092, 39.163036, 29.899586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121796, 39.159702, 29.911024>,  <36.521301, 39.154144, 29.930088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121796, 39.159702, 29.911024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047258, -0.560087, 0.827085,
		-0.015200, 0.828317, 0.560053,
		-0.998767, 0.013895, -0.047658,
		35.822166, 39.163872, 29.896727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412464, 39.318241, 30.557613>,  <36.521301, 39.154144, 29.930088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412464, 39.318241, 30.557613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056747, 39.188484, 30.428665>,  <35.843315, 39.110630, 30.351295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056747, 39.188484, 30.428665>,  <36.412464, 39.318241, 30.557613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056747, 39.188484, 30.428665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126395, -0.503105, 0.854933,
		-0.439519, 0.801034, 0.406407,
		-0.889296, -0.324392, -0.322371,
		35.789959, 39.091167, 30.331953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022308, 39.292946, 31.120554>,  <36.412464, 39.318241, 30.557613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022308, 39.292946, 31.120554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795567, 39.073963, 30.874311>,  <35.659523, 38.942574, 30.726566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795567, 39.073963, 30.874311>,  <36.022308, 39.292946, 31.120554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795567, 39.073963, 30.874311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233246, -0.610030, 0.757271,
		-0.790108, 0.572851, 0.218108,
		-0.566856, -0.547454, -0.615605,
		35.625511, 38.909725, 30.689631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386791, 39.077473, 31.463209>,  <36.022308, 39.292946, 31.120554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386791, 39.077473, 31.463209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439491, 38.818977, 31.162539>,  <35.471111, 38.663879, 30.982136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439491, 38.818977, 31.162539>,  <35.386791, 39.077473, 31.463209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439491, 38.818977, 31.162539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252248, -0.755183, 0.605038,
		-0.958652, 0.109897, -0.262504,
		0.131746, -0.646237, -0.751679,
		35.479015, 38.625107, 30.937035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874809, 38.534443, 31.586218>,  <35.386791, 39.077473, 31.463209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874809, 38.534443, 31.586218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148533, 38.374016, 31.342623>,  <35.312767, 38.277760, 31.196466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148533, 38.374016, 31.342623>,  <34.874809, 38.534443, 31.586218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148533, 38.374016, 31.342623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036982, -0.814991, 0.578293,
		-0.728254, -0.418252, -0.542873,
		0.684309, -0.401068, -0.608988,
		35.353825, 38.253696, 31.159927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654953, 37.772762, 31.395319>,  <34.874809, 38.534443, 31.586218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654953, 37.772762, 31.395319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049290, 37.810909, 31.340158>,  <35.285892, 37.833797, 31.307062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049290, 37.810909, 31.340158>,  <34.654953, 37.772762, 31.395319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049290, 37.810909, 31.340158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156132, -0.821952, 0.547739,
		-0.061111, -0.561516, -0.825206,
		0.985844, 0.095369, -0.137901,
		35.345043, 37.839520, 31.298788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837799, 37.093517, 31.204882>,  <34.654953, 37.772762, 31.395319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837799, 37.093517, 31.204882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182934, 37.265160, 31.311758>,  <35.390015, 37.368145, 31.375883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182934, 37.265160, 31.311758>,  <34.837799, 37.093517, 31.204882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182934, 37.265160, 31.311758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317727, -0.871492, 0.373564,
		0.393153, -0.237430, -0.888289,
		0.862833, 0.429101, 0.267192,
		35.441784, 37.393890, 31.391916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359066, 36.673740, 30.935530>,  <34.837799, 37.093517, 31.204882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359066, 36.673740, 30.935530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537300, 36.870716, 31.234585>,  <35.644241, 36.988899, 31.414017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537300, 36.870716, 31.234585>,  <35.359066, 36.673740, 30.935530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537300, 36.870716, 31.234585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246965, -0.870332, 0.426063,
		0.860501, -0.005207, -0.509421,
		0.445584, 0.492437, 0.747636,
		35.670975, 37.018448, 31.458876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077942, 36.317497, 30.898664>,  <35.359066, 36.673740, 30.935530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077942, 36.317497, 30.898664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987377, 36.492840, 31.246592>,  <35.933037, 36.598045, 31.455347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987377, 36.492840, 31.246592>,  <36.077942, 36.317497, 30.898664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987377, 36.492840, 31.246592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086729, -0.880386, 0.466260,
		0.970162, 0.181006, 0.161313,
		-0.226414, 0.438357, 0.869816,
		35.919453, 36.624348, 31.507536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532169, 35.937782, 31.353468>,  <36.077942, 36.317497, 30.898664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532169, 35.937782, 31.353468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300457, 36.139801, 31.609392>,  <36.161430, 36.261013, 31.762947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300457, 36.139801, 31.609392>,  <36.532169, 35.937782, 31.353468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300457, 36.139801, 31.609392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277126, -0.616144, 0.737271,
		0.766571, 0.604398, 0.216961,
		-0.579284, 0.505045, 0.639812,
		36.126671, 36.291313, 31.801336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920776, 36.057816, 31.952721>,  <36.532169, 35.937782, 31.353468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920776, 36.057816, 31.952721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527084, 36.058155, 32.023472>,  <36.290867, 36.058357, 32.065922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527084, 36.058155, 32.023472>,  <36.920776, 36.057816, 31.952721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527084, 36.058155, 32.023472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125771, -0.699773, 0.703206,
		0.124367, 0.714365, 0.688633,
		-0.984233, 0.000846, 0.176876,
		36.231815, 36.058407, 32.076534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239601, 36.389805, 31.459278>,  <36.920776, 36.057816, 31.952721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239601, 36.389805, 31.459278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620472, 36.432556, 31.573780>,  <37.848995, 36.458206, 31.642481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620472, 36.432556, 31.573780>,  <37.239601, 36.389805, 31.459278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620472, 36.432556, 31.573780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142697, 0.672855, -0.725881,
		-0.270189, 0.732013, 0.625424,
		0.952174, 0.106879, 0.286254,
		37.906124, 36.464619, 31.659657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315140, 37.152767, 31.680464>,  <37.239601, 36.389805, 31.459278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315140, 37.152767, 31.680464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684135, 37.013962, 31.612814>,  <37.905533, 36.930679, 31.572224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684135, 37.013962, 31.612814>,  <37.315140, 37.152767, 31.680464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684135, 37.013962, 31.612814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098860, 0.635863, -0.765444,
		0.373158, 0.689392, 0.620880,
		0.922486, -0.347011, -0.169124,
		37.960880, 36.909859, 31.562077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746872, 37.769962, 31.763605>,  <37.315140, 37.152767, 31.680464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746872, 37.769962, 31.763605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957382, 37.502495, 31.553495>,  <38.083691, 37.342014, 31.427429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957382, 37.502495, 31.553495>,  <37.746872, 37.769962, 31.763605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957382, 37.502495, 31.553495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247920, 0.711566, -0.657426,
		0.813367, 0.215764, 0.540259,
		0.526279, -0.668670, -0.525273,
		38.115265, 37.301895, 31.395914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302181, 38.094952, 31.701387>,  <37.746872, 37.769962, 31.763605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302181, 38.094952, 31.701387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318115, 37.826962, 31.404863>,  <38.327675, 37.666168, 31.226948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318115, 37.826962, 31.404863>,  <38.302181, 38.094952, 31.701387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318115, 37.826962, 31.404863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228519, 0.728347, -0.645980,
		0.972724, -0.143669, 0.182119,
		0.039838, -0.669978, -0.741312,
		38.330067, 37.625969, 31.182470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980778, 38.204533, 31.350128>,  <38.302181, 38.094952, 31.701387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980778, 38.204533, 31.350128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740139, 38.032501, 31.080873>,  <38.595757, 37.929283, 30.919321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740139, 38.032501, 31.080873>,  <38.980778, 38.204533, 31.350128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740139, 38.032501, 31.080873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230692, 0.713238, -0.661871,
		0.764760, -0.553470, -0.329869,
		-0.601600, -0.430074, -0.673137,
		38.559658, 37.903481, 30.878933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373238, 38.411533, 30.884083>,  <38.980778, 38.204533, 31.350128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373238, 38.411533, 30.884083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027317, 38.312309, 30.709463>,  <38.819763, 38.252773, 30.604691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027317, 38.312309, 30.709463>,  <39.373238, 38.411533, 30.884083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027317, 38.312309, 30.709463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191314, 0.641064, -0.743260,
		0.464229, -0.726295, -0.506939,
		-0.864807, -0.248058, -0.436551,
		38.767876, 38.237892, 30.578497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545612, 38.347397, 30.224188>,  <39.373238, 38.411533, 30.884083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545612, 38.347397, 30.224188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149685, 38.404331, 30.224360>,  <38.912128, 38.438492, 30.224463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149685, 38.404331, 30.224360>,  <39.545612, 38.347397, 30.224188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149685, 38.404331, 30.224360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096610, 0.674032, -0.732358,
		-0.104531, -0.724860, -0.680920,
		-0.989818, 0.142337, 0.000428,
		38.852741, 38.447033, 30.224487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338772, 38.435169, 29.562401>,  <39.545612, 38.347397, 30.224188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338772, 38.435169, 29.562401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019333, 38.578957, 29.755491>,  <38.827671, 38.665230, 29.871346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019333, 38.578957, 29.755491>,  <39.338772, 38.435169, 29.562401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019333, 38.578957, 29.755491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054463, 0.755597, -0.652769,
		-0.599396, -0.547590, -0.583840,
		-0.798598, 0.359470, 0.482725,
		38.779755, 38.686798, 29.900309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747517, 38.459667, 29.036104>,  <39.338772, 38.435169, 29.562401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747517, 38.459667, 29.036104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657059, 38.726196, 29.320324>,  <38.602783, 38.886112, 29.490856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657059, 38.726196, 29.320324>,  <38.747517, 38.459667, 29.036104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657059, 38.726196, 29.320324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181221, 0.687933, -0.702786,
		-0.957089, -0.287696, -0.034820,
		-0.226142, 0.666318, 0.710549,
		38.589214, 38.926090, 29.533489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094410, 38.843479, 28.741110>,  <38.747517, 38.459667, 29.036104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094410, 38.843479, 28.741110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285378, 39.057590, 29.019835>,  <38.399960, 39.186058, 29.187069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285378, 39.057590, 29.019835>,  <38.094410, 38.843479, 28.741110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285378, 39.057590, 29.019835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169058, 0.834169, -0.524959,
		-0.862257, 0.132826, 0.488744,
		0.477423, 0.535275, 0.696812,
		38.428604, 39.218174, 29.228878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651672, 39.447872, 28.819273>,  <38.094410, 38.843479, 28.741110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651672, 39.447872, 28.819273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002228, 39.569477, 28.968685>,  <38.212559, 39.642441, 29.058332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002228, 39.569477, 28.968685>,  <37.651672, 39.447872, 28.819273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002228, 39.569477, 28.968685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028264, 0.741778, -0.670050,
		-0.480782, 0.597779, 0.641490,
		0.876385, 0.304016, 0.373529,
		38.265144, 39.660683, 29.080744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606937, 40.247478, 28.785534>,  <37.651672, 39.447872, 28.819273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606937, 40.247478, 28.785534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989830, 40.140297, 28.829178>,  <38.219566, 40.075989, 28.855364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989830, 40.140297, 28.829178>,  <37.606937, 40.247478, 28.785534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989830, 40.140297, 28.829178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282357, 0.783007, -0.554233,
		0.063077, 0.561338, 0.825179,
		0.957233, -0.267955, 0.109108,
		38.277000, 40.059910, 28.861910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071255, 40.837852, 29.014627>,  <37.606937, 40.247478, 28.785534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071255, 40.837852, 29.014627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315998, 40.578732, 28.833086>,  <38.462845, 40.423260, 28.724161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315998, 40.578732, 28.833086>,  <38.071255, 40.837852, 29.014627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315998, 40.578732, 28.833086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412140, 0.750855, -0.516098,
		0.675105, 0.128729, 0.726403,
		0.611861, -0.647800, -0.453852,
		38.499557, 40.384392, 28.696930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645939, 41.164120, 28.986181>,  <38.071255, 40.837852, 29.014627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645939, 41.164120, 28.986181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710739, 40.893448, 28.698889>,  <38.749619, 40.731045, 28.526514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710739, 40.893448, 28.698889>,  <38.645939, 41.164120, 28.986181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710739, 40.893448, 28.698889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355881, 0.718929, -0.597067,
		0.920382, -0.158878, 0.357287,
		0.162003, -0.676682, -0.718232,
		38.759338, 40.690445, 28.483419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339558, 41.155579, 28.808723>,  <38.645939, 41.164120, 28.986181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339558, 41.155579, 28.808723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107597, 41.019962, 28.512409>,  <38.968422, 40.938591, 28.334620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107597, 41.019962, 28.512409>,  <39.339558, 41.155579, 28.808723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107597, 41.019962, 28.512409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338830, 0.726548, -0.597765,
		0.740884, -0.597645, -0.306448,
		-0.579901, -0.339041, -0.740788,
		38.933628, 40.918251, 28.290173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713207, 41.388660, 28.319578>,  <39.339558, 41.155579, 28.808723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713207, 41.388660, 28.319578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374794, 41.284885, 28.133278>,  <39.171745, 41.222622, 28.021498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374794, 41.284885, 28.133278>,  <39.713207, 41.388660, 28.319578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374794, 41.284885, 28.133278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037388, 0.842590, -0.537256,
		0.531818, -0.471950, -0.703160,
		-0.846033, -0.259433, -0.465749,
		39.120983, 41.207054, 27.993553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785709, 41.428905, 27.665472>,  <39.713207, 41.388660, 28.319578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785709, 41.428905, 27.665472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386024, 41.440849, 27.675999>,  <39.146214, 41.448013, 27.682314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386024, 41.440849, 27.675999>,  <39.785709, 41.428905, 27.665472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386024, 41.440849, 27.675999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005638, 0.760748, -0.649023,
		-0.039396, -0.648360, -0.760314,
		-0.999208, 0.029856, 0.026315,
		39.086262, 41.449806, 27.683893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582397, 41.545979, 26.966198>,  <39.785709, 41.428905, 27.665472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582397, 41.545979, 26.966198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261337, 41.643646, 27.183872>,  <39.068703, 41.702248, 27.314476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261337, 41.643646, 27.183872>,  <39.582397, 41.545979, 26.966198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261337, 41.643646, 27.183872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066426, 0.870101, -0.488377,
		-0.592740, -0.428144, -0.682167,
		-0.802650, 0.244167, 0.544184,
		39.020542, 41.716896, 27.347128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100613, 41.683258, 26.409443>,  <39.582397, 41.545979, 26.966198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100613, 41.683258, 26.409443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982208, 41.853283, 26.751600>,  <38.911167, 41.955299, 26.956894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982208, 41.853283, 26.751600>,  <39.100613, 41.683258, 26.409443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982208, 41.853283, 26.751600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211305, 0.844198, -0.492626,
		-0.931520, -0.326570, -0.160071,
		-0.296008, 0.425067, 0.855393,
		38.893406, 41.980804, 27.008219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376717, 41.952515, 26.282511>,  <39.100613, 41.683258, 26.409443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376717, 41.952515, 26.282511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517872, 42.159248, 26.594498>,  <38.602566, 42.283291, 26.781691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517872, 42.159248, 26.594498>,  <38.376717, 41.952515, 26.282511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517872, 42.159248, 26.594498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397702, 0.837401, -0.374956,
		-0.846937, -0.177876, 0.501057,
		0.352890, 0.516836, 0.779968,
		38.623737, 42.314301, 26.828487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830486, 42.427826, 26.586439>,  <38.376717, 41.952515, 26.282511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830486, 42.427826, 26.586439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192009, 42.586308, 26.651127>,  <38.408924, 42.681396, 26.689939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192009, 42.586308, 26.651127>,  <37.830486, 42.427826, 26.586439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192009, 42.586308, 26.651127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326051, 0.882312, -0.339435,
		-0.277175, 0.254055, 0.926623,
		0.903806, 0.396209, 0.161720,
		38.463150, 42.705170, 26.699642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729683, 43.137791, 26.667353>,  <37.830486, 42.427826, 26.586439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729683, 43.137791, 26.667353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124313, 43.185844, 26.623114>,  <38.361092, 43.214676, 26.596569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124313, 43.185844, 26.623114>,  <37.729683, 43.137791, 26.667353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124313, 43.185844, 26.623114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152649, 0.919027, -0.363438,
		0.057984, 0.375443, 0.925030,
		0.986578, 0.120132, -0.110600,
		38.420288, 43.221886, 26.589933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743908, 43.695511, 26.851425>,  <37.729683, 43.137791, 26.667353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743908, 43.695511, 26.851425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082226, 43.630741, 26.648088>,  <38.285217, 43.591881, 26.526087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082226, 43.630741, 26.648088>,  <37.743908, 43.695511, 26.851425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082226, 43.630741, 26.648088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090118, 0.895777, -0.435272,
		0.525840, 0.413962, 0.743053,
		0.845796, -0.161921, -0.508341,
		38.335964, 43.582165, 26.495586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011600, 44.381466, 26.822050>,  <37.743908, 43.695511, 26.851425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011600, 44.381466, 26.822050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176327, 44.157917, 26.534142>,  <38.275162, 44.023788, 26.361397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176327, 44.157917, 26.534142>,  <38.011600, 44.381466, 26.822050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176327, 44.157917, 26.534142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160803, 0.732894, -0.661066,
		0.896967, 0.387979, 0.211949,
		0.411816, -0.558872, -0.719770,
		38.299873, 43.990253, 26.318211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230225, 44.891380, 26.380039>,  <38.011600, 44.381466, 26.822050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230225, 44.891380, 26.380039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253540, 44.553844, 26.166670>,  <38.267529, 44.351322, 26.038649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253540, 44.553844, 26.166670>,  <38.230225, 44.891380, 26.380039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253540, 44.553844, 26.166670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202215, 0.513274, -0.834061,
		0.977605, 0.156480, -0.140720,
		0.058286, -0.843839, -0.533422,
		38.271027, 44.300694, 26.006643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779865, 45.037876, 25.737089>,  <38.230225, 44.891380, 26.380039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779865, 45.037876, 25.737089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537323, 44.731159, 25.652843>,  <38.391796, 44.547131, 25.602295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537323, 44.731159, 25.652843>,  <38.779865, 45.037876, 25.737089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537323, 44.731159, 25.652843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090794, 0.329890, -0.939643,
		0.789991, -0.550638, -0.269652,
		-0.606359, -0.766792, -0.210616,
		38.355415, 44.501122, 25.589659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011688, 44.875690, 25.089680>,  <38.779865, 45.037876, 25.737089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011688, 44.875690, 25.089680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641369, 44.735428, 25.146151>,  <38.419178, 44.651272, 25.180033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641369, 44.735428, 25.146151>,  <39.011688, 44.875690, 25.089680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641369, 44.735428, 25.146151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219815, 0.195573, -0.955737,
		0.307527, -0.915855, -0.258142,
		-0.925801, -0.350658, 0.141175,
		38.363628, 44.630230, 25.188503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864082, 44.426712, 24.535877>,  <39.011688, 44.875690, 25.089680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864082, 44.426712, 24.535877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512829, 44.559361, 24.673809>,  <38.302078, 44.638950, 24.756567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512829, 44.559361, 24.673809>,  <38.864082, 44.426712, 24.535877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512829, 44.559361, 24.673809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234159, 0.330613, -0.914256,
		-0.417191, -0.883585, -0.212671,
		-0.878135, 0.331621, 0.344828,
		38.249390, 44.658848, 24.777258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414547, 44.154533, 24.049614>,  <38.864082, 44.426712, 24.535877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414547, 44.154533, 24.049614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231667, 44.456264, 24.238062>,  <38.121937, 44.637302, 24.351131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231667, 44.456264, 24.238062>,  <38.414547, 44.154533, 24.049614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231667, 44.456264, 24.238062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344883, 0.337898, -0.875717,
		-0.819769, -0.562862, 0.105667,
		-0.457203, 0.754329, 0.471120,
		38.094505, 44.682564, 24.379398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702621, 44.156982, 23.788290>,  <38.414547, 44.154533, 24.049614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702621, 44.156982, 23.788290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790176, 44.516083, 23.941195>,  <37.842709, 44.731544, 24.032938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790176, 44.516083, 23.941195>,  <37.702621, 44.156982, 23.788290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790176, 44.516083, 23.941195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331536, 0.436883, -0.836192,
		-0.917700, 0.056298, 0.393266,
		0.218887, 0.897755, 0.382262,
		37.855843, 44.785408, 24.055874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201843, 44.540447, 23.564970>,  <37.702621, 44.156982, 23.788290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201843, 44.540447, 23.564970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499821, 44.789154, 23.661690>,  <37.678608, 44.938377, 23.719723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499821, 44.789154, 23.661690>,  <37.201843, 44.540447, 23.564970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499821, 44.789154, 23.661690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053395, 0.416855, -0.907403,
		-0.664991, 0.663050, 0.343731,
		0.744940, 0.621769, 0.241801,
		37.723301, 44.975685, 23.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970608, 45.113667, 23.234686>,  <37.201843, 44.540447, 23.564970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970608, 45.113667, 23.234686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353336, 45.200176, 23.312366>,  <37.582973, 45.252083, 23.358974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353336, 45.200176, 23.312366>,  <36.970608, 45.113667, 23.234686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353336, 45.200176, 23.312366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041397, 0.559912, -0.827517,
		-0.287707, 0.799827, 0.526784,
		0.956823, 0.216276, 0.194201,
		37.640385, 45.265060, 23.370626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962471, 45.759583, 23.139418>,  <36.970608, 45.113667, 23.234686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962471, 45.759583, 23.139418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349155, 45.667229, 23.095318>,  <37.581165, 45.611816, 23.068857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349155, 45.667229, 23.095318>,  <36.962471, 45.759583, 23.139418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349155, 45.667229, 23.095318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002109, 0.423692, -0.905804,
		0.255851, 0.875885, 0.409102,
		0.966714, -0.230888, -0.110249,
		37.639168, 45.597961, 23.062243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252434, 46.331387, 22.819595>,  <36.962471, 45.759583, 23.139418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252434, 46.331387, 22.819595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546703, 46.075768, 22.729788>,  <37.723263, 45.922398, 22.675903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546703, 46.075768, 22.729788>,  <37.252434, 46.331387, 22.819595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546703, 46.075768, 22.729788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031818, 0.298503, -0.953878,
		0.676591, 0.708885, 0.199267,
		0.735672, -0.639045, -0.224520,
		37.767406, 45.884052, 22.662432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809772, 46.727188, 22.400333>,  <37.252434, 46.331387, 22.819595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809772, 46.727188, 22.400333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852917, 46.333866, 22.341719>,  <37.878803, 46.097874, 22.306551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852917, 46.333866, 22.341719>,  <37.809772, 46.727188, 22.400333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852917, 46.333866, 22.341719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120323, 0.159224, -0.979883,
		0.986858, 0.088059, 0.135489,
		0.107861, -0.983307, -0.146536,
		37.885277, 46.038876, 22.297758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475101, 46.602169, 22.002514>,  <37.809772, 46.727188, 22.400333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475101, 46.602169, 22.002514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234680, 46.286697, 21.950794>,  <38.090427, 46.097416, 21.919762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234680, 46.286697, 21.950794>,  <38.475101, 46.602169, 22.002514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234680, 46.286697, 21.950794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152162, 0.045898, -0.987289,
		0.784588, -0.613091, 0.092419,
		-0.601056, -0.788678, -0.129300,
		38.054363, 46.050095, 21.912004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903324, 46.248959, 21.507822>,  <38.475101, 46.602169, 22.002514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903324, 46.248959, 21.507822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534897, 46.098248, 21.468477>,  <38.313839, 46.007820, 21.444870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534897, 46.098248, 21.468477>,  <38.903324, 46.248959, 21.507822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534897, 46.098248, 21.468477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145758, -0.099350, -0.984319,
		0.361097, -0.920960, 0.146426,
		-0.921066, -0.376777, -0.098362,
		38.258575, 45.985214, 21.438969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001987, 45.681831, 21.142019>,  <38.903324, 46.248959, 21.507822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001987, 45.681831, 21.142019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617104, 45.786373, 21.111425>,  <38.386173, 45.849098, 21.093069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617104, 45.786373, 21.111425>,  <39.001987, 45.681831, 21.142019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617104, 45.786373, 21.111425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119894, 0.154411, -0.980705,
		-0.244499, -0.952813, -0.179911,
		-0.962209, 0.261351, -0.076483,
		38.328442, 45.864780, 21.088480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205311, 45.584511, 20.439817>,  <39.001987, 45.681831, 21.142019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205311, 45.584511, 20.439817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311649, 45.383739, 20.110603>,  <39.375454, 45.263275, 19.913074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311649, 45.383739, 20.110603>,  <39.205311, 45.584511, 20.439817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311649, 45.383739, 20.110603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371686, -0.734380, 0.567923,
		-0.889479, -0.456893, -0.008674,
		0.265850, -0.501932, -0.823036,
		39.391403, 45.233158, 19.863693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806046, 45.043339, 20.386894>,  <39.205311, 45.584511, 20.439817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806046, 45.043339, 20.386894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127647, 44.941608, 20.171896>,  <39.320606, 44.880569, 20.042898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127647, 44.941608, 20.171896>,  <38.806046, 45.043339, 20.386894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127647, 44.941608, 20.171896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163775, -0.774246, 0.611327,
		-0.571626, -0.579537, -0.580845,
		0.804003, -0.254322, -0.537493,
		39.368847, 44.865311, 20.010649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759594, 44.368950, 20.361450>,  <38.806046, 45.043339, 20.386894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759594, 44.368950, 20.361450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146015, 44.439777, 20.286213>,  <39.377869, 44.482273, 20.241070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146015, 44.439777, 20.286213>,  <38.759594, 44.368950, 20.361450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146015, 44.439777, 20.286213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258308, -0.671064, 0.694946,
		-0.003168, -0.719944, -0.694025,
		0.966058, 0.177070, -0.188093,
		39.435833, 44.492897, 20.229786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108650, 43.695919, 20.211988>,  <38.759594, 44.368950, 20.361450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108650, 43.695919, 20.211988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379963, 43.958454, 20.344143>,  <39.542751, 44.115974, 20.423435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379963, 43.958454, 20.344143>,  <39.108650, 43.695919, 20.211988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379963, 43.958454, 20.344143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352887, -0.685342, 0.637007,
		0.644517, -0.315482, -0.696468,
		0.678283, 0.656336, 0.330385,
		39.583447, 44.155354, 20.443258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709721, 43.296886, 20.354019>,  <39.108650, 43.695919, 20.211988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709721, 43.296886, 20.354019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787594, 43.639927, 20.544436>,  <39.834316, 43.845753, 20.658686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787594, 43.639927, 20.544436>,  <39.709721, 43.296886, 20.354019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787594, 43.639927, 20.544436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311775, -0.514260, 0.798957,
		0.929997, -0.007126, -0.367497,
		0.194683, 0.857605, 0.476039,
		39.845997, 43.897209, 20.687246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361702, 43.148548, 20.695496>,  <39.709721, 43.296886, 20.354019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361702, 43.148548, 20.695496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231247, 43.470867, 20.893209>,  <40.152973, 43.664261, 21.011837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231247, 43.470867, 20.893209>,  <40.361702, 43.148548, 20.695496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231247, 43.470867, 20.893209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307261, -0.404123, 0.861554,
		0.893992, 0.432863, -0.115789,
		-0.326141, 0.805800, 0.494285,
		40.133404, 43.712608, 21.041494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849388, 43.351475, 21.100075>,  <40.361702, 43.148548, 20.695496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849388, 43.351475, 21.100075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506840, 43.491997, 21.251446>,  <40.301311, 43.576309, 21.342268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506840, 43.491997, 21.251446>,  <40.849388, 43.351475, 21.100075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506840, 43.491997, 21.251446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151083, -0.530333, 0.834219,
		0.493760, 0.771577, 0.401087,
		-0.856373, 0.351306, 0.378429,
		40.249928, 43.597389, 21.364975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025387, 43.388680, 21.727081>,  <40.849388, 43.351475, 21.100075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025387, 43.388680, 21.727081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626179, 43.412411, 21.735441>,  <40.386654, 43.426651, 21.740458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626179, 43.412411, 21.735441>,  <41.025387, 43.388680, 21.727081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626179, 43.412411, 21.735441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006938, -0.434096, 0.900840,
		0.062518, 0.898911, 0.433648,
		-0.998020, 0.059327, 0.020902,
		40.326775, 43.430210, 21.741713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867352, 43.497875, 22.369484>,  <41.025387, 43.388680, 21.727081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867352, 43.497875, 22.369484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525078, 43.338791, 22.237045>,  <40.319714, 43.243340, 22.157581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525078, 43.338791, 22.237045>,  <40.867352, 43.497875, 22.369484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525078, 43.338791, 22.237045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069739, -0.545351, 0.835302,
		-0.512771, 0.737848, 0.438915,
		-0.855688, -0.397709, -0.331097,
		40.268372, 43.219479, 22.137716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263817, 43.621967, 22.819244>,  <40.867352, 43.497875, 22.369484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263817, 43.621967, 22.819244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189789, 43.293915, 22.602678>,  <40.145374, 43.097084, 22.472738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189789, 43.293915, 22.602678>,  <40.263817, 43.621967, 22.819244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189789, 43.293915, 22.602678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167785, -0.516474, 0.839704,
		-0.968297, 0.246243, -0.042024,
		-0.185067, -0.820134, -0.541416,
		40.134270, 43.047874, 22.440254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637978, 43.215343, 23.217234>,  <40.263817, 43.621967, 22.819244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637978, 43.215343, 23.217234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764629, 42.943268, 22.952782>,  <39.840622, 42.780022, 22.794111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764629, 42.943268, 22.952782>,  <39.637978, 43.215343, 23.217234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764629, 42.943268, 22.952782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294239, -0.733039, 0.613251,
		-0.901757, 0.000354, -0.432243,
		0.316634, -0.680186, -0.661128,
		39.859619, 42.739212, 22.754444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129601, 42.630653, 23.113539>,  <39.637978, 43.215343, 23.217234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129601, 42.630653, 23.113539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481663, 42.469360, 23.013348>,  <39.692898, 42.372585, 22.953234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481663, 42.469360, 23.013348>,  <39.129601, 42.630653, 23.113539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481663, 42.469360, 23.013348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142882, -0.728232, 0.670270,
		-0.452677, -0.554152, -0.698570,
		0.880152, -0.403229, -0.250476,
		39.745708, 42.348392, 22.938206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086044, 41.887699, 22.950813>,  <39.129601, 42.630653, 23.113539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086044, 41.887699, 22.950813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440029, 41.996410, 23.102060>,  <39.652420, 42.061638, 23.192808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440029, 41.996410, 23.102060>,  <39.086044, 41.887699, 22.950813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440029, 41.996410, 23.102060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112738, -0.662799, 0.740262,
		0.451806, -0.697733, -0.555913,
		0.884964, 0.271783, 0.378118,
		39.705517, 42.077946, 23.215496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406822, 41.253571, 23.197517>,  <39.086044, 41.887699, 22.950813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406822, 41.253571, 23.197517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604939, 41.523792, 23.415989>,  <39.723808, 41.685925, 23.547071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604939, 41.523792, 23.415989>,  <39.406822, 41.253571, 23.197517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604939, 41.523792, 23.415989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056059, -0.652256, 0.755923,
		0.866918, -0.343782, -0.360926,
		0.495289, 0.675556, 0.546180,
		39.753525, 41.726460, 23.579844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770844, 40.827019, 23.615107>,  <39.406822, 41.253571, 23.197517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770844, 40.827019, 23.615107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844158, 41.180302, 23.787779>,  <39.888149, 41.392273, 23.891382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844158, 41.180302, 23.787779>,  <39.770844, 40.827019, 23.615107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844158, 41.180302, 23.787779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137458, -0.457832, 0.878348,
		0.973402, -0.101654, -0.205320,
		0.183289, 0.883208, 0.431682,
		39.899143, 41.445263, 23.917284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440002, 40.828354, 23.884888>,  <39.770844, 40.827019, 23.615107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440002, 40.828354, 23.884888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226761, 41.088745, 24.101049>,  <40.098816, 41.244980, 24.230745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226761, 41.088745, 24.101049>,  <40.440002, 40.828354, 23.884888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226761, 41.088745, 24.101049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221866, -0.508817, 0.831794,
		0.816442, 0.563328, 0.126823,
		-0.533103, 0.650973, 0.540403,
		40.066830, 41.284039, 24.263170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830566, 40.921856, 24.551815>,  <40.440002, 40.828354, 23.884888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830566, 40.921856, 24.551815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455925, 41.044106, 24.620363>,  <40.231140, 41.117455, 24.661493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455925, 41.044106, 24.620363>,  <40.830566, 40.921856, 24.551815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455925, 41.044106, 24.620363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002915, -0.482275, 0.876015,
		0.350378, 0.820979, 0.450809,
		-0.936604, 0.305623, 0.171371,
		40.174942, 41.135792, 24.671774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796112, 41.180027, 25.170864>,  <40.830566, 40.921856, 24.551815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796112, 41.180027, 25.170864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403233, 41.108177, 25.148851>,  <40.167507, 41.065067, 25.135645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403233, 41.108177, 25.148851>,  <40.796112, 41.180027, 25.170864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403233, 41.108177, 25.148851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032135, -0.449246, 0.892830,
		-0.185094, 0.875165, 0.447020,
		-0.982195, -0.179623, -0.055029,
		40.108574, 41.054291, 25.132343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495502, 41.364586, 25.809473>,  <40.796112, 41.180027, 25.170864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495502, 41.364586, 25.809473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248257, 41.103245, 25.634634>,  <40.099907, 40.946438, 25.529730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248257, 41.103245, 25.634634>,  <40.495502, 41.364586, 25.809473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248257, 41.103245, 25.634634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066820, -0.510361, 0.857360,
		-0.783240, 0.559157, 0.271806,
		-0.618119, -0.653357, -0.437098,
		40.062820, 40.907238, 25.503504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959366, 41.297409, 26.303959>,  <40.495502, 41.364586, 25.809473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959366, 41.297409, 26.303959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917469, 40.980679, 26.063282>,  <39.892330, 40.790638, 25.918877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917469, 40.980679, 26.063282>,  <39.959366, 41.297409, 26.303959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917469, 40.980679, 26.063282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052742, -0.608592, 0.791729,
		-0.993100, 0.051191, 0.105507,
		-0.104740, -0.791831, -0.601692,
		39.886047, 40.743130, 25.882774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410126, 40.853310, 26.639656>,  <39.959366, 41.297409, 26.303959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410126, 40.853310, 26.639656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605396, 40.611778, 26.387602>,  <39.722561, 40.466858, 26.236370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605396, 40.611778, 26.387602>,  <39.410126, 40.853310, 26.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605396, 40.611778, 26.387602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001206, -0.722484, 0.691387,
		-0.872742, -0.336760, -0.353430,
		0.488179, -0.603829, -0.630136,
		39.751850, 40.430630, 26.198561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134956, 40.294212, 26.867073>,  <39.410126, 40.853310, 26.639656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134956, 40.294212, 26.867073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462471, 40.183151, 26.666077>,  <39.658981, 40.116516, 26.545479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462471, 40.183151, 26.666077>,  <39.134956, 40.294212, 26.867073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462471, 40.183151, 26.666077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273527, -0.580871, 0.766663,
		-0.504748, -0.765178, -0.399665,
		0.818788, -0.277652, -0.502490,
		39.708107, 40.099854, 26.515329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162659, 39.540695, 26.795418>,  <39.134956, 40.294212, 26.867073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162659, 39.540695, 26.795418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542095, 39.657639, 26.746914>,  <39.769756, 39.727806, 26.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542095, 39.657639, 26.746914>,  <39.162659, 39.540695, 26.795418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542095, 39.657639, 26.746914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298032, -0.696068, 0.653197,
		0.106563, -0.655755, -0.747415,
		0.948589, 0.292360, -0.121261,
		39.826672, 39.745346, 26.710535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558002, 38.914150, 26.901041>,  <39.162659, 39.540695, 26.795418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558002, 38.914150, 26.901041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837551, 39.199837, 26.916382>,  <40.005280, 39.371250, 26.925587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837551, 39.199837, 26.916382>,  <39.558002, 38.914150, 26.901041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837551, 39.199837, 26.916382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496327, -0.522880, 0.693005,
		0.515009, -0.465288, -0.719912,
		0.698875, 0.714215, 0.038353,
		40.047215, 39.414101, 26.927887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337074, 38.627407, 26.781597>,  <39.558002, 38.914150, 26.901041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337074, 38.627407, 26.781597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342525, 38.965637, 26.995070>,  <40.345798, 39.168575, 27.123152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342525, 38.965637, 26.995070>,  <40.337074, 38.627407, 26.781597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342525, 38.965637, 26.995070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583406, -0.440188, 0.682548,
		0.812066, 0.302049, -0.499315,
		0.013630, 0.845577, 0.533679,
		40.346615, 39.219311, 27.155174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000076, 38.711250, 26.963228>,  <40.337074, 38.627407, 26.781597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000076, 38.711250, 26.963228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791008, 38.923431, 27.230192>,  <40.665565, 39.050739, 27.390369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791008, 38.923431, 27.230192>,  <41.000076, 38.711250, 26.963228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791008, 38.923431, 27.230192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425190, -0.516346, 0.743371,
		0.738935, 0.672317, 0.044339,
		-0.522675, 0.530450, 0.667408,
		40.634205, 39.082565, 27.430414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457127, 39.069630, 27.351044>,  <41.000076, 38.711250, 26.963228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457127, 39.069630, 27.351044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133446, 39.049793, 27.585217>,  <40.939236, 39.037891, 27.725721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133446, 39.049793, 27.585217>,  <41.457127, 39.069630, 27.351044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133446, 39.049793, 27.585217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544251, -0.438616, 0.715127,
		0.221319, 0.897305, 0.381917,
		-0.809202, -0.049587, 0.585434,
		40.890686, 39.034916, 27.760847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807323, 39.174358, 27.985134>,  <41.457127, 39.069630, 27.351044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807323, 39.174358, 27.985134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443039, 39.023632, 28.052809>,  <41.224468, 38.933197, 28.093412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443039, 39.023632, 28.052809>,  <41.807323, 39.174358, 27.985134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443039, 39.023632, 28.052809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369068, -0.558414, 0.742941,
		-0.185477, 0.739042, 0.647622,
		-0.910707, -0.376815, 0.169184,
		41.169827, 38.910587, 28.103563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776482, 39.189899, 28.714956>,  <41.807323, 39.174358, 27.985134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776482, 39.189899, 28.714956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489014, 38.928764, 28.619196>,  <41.316532, 38.772083, 28.561739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489014, 38.928764, 28.619196>,  <41.776482, 39.189899, 28.714956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489014, 38.928764, 28.619196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271526, -0.580434, 0.767704,
		-0.640141, 0.486726, 0.594405,
		-0.718674, -0.652836, -0.239401,
		41.273411, 38.732914, 28.547375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509106, 39.016941, 29.289301>,  <41.776482, 39.189899, 28.714956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509106, 39.016941, 29.289301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345577, 38.711521, 29.089357>,  <41.247459, 38.528271, 28.969391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345577, 38.711521, 29.089357>,  <41.509106, 39.016941, 29.289301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345577, 38.711521, 29.089357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124506, -0.589266, 0.798288,
		-0.904082, 0.264120, 0.335970,
		-0.408820, -0.763548, -0.499861,
		41.222931, 38.482456, 28.939400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036037, 38.755733, 29.725323>,  <41.509106, 39.016941, 29.289301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036037, 38.755733, 29.725323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131584, 38.474598, 29.457304>,  <41.188911, 38.305916, 29.296494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131584, 38.474598, 29.457304>,  <41.036037, 38.755733, 29.725323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131584, 38.474598, 29.457304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146843, -0.655941, 0.740391,
		-0.959885, -0.275247, -0.053476,
		0.238868, -0.702838, -0.670046,
		41.203243, 38.263748, 29.256290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765480, 38.159031, 29.981319>,  <41.036037, 38.755733, 29.725323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765480, 38.159031, 29.981319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036167, 38.008900, 29.727964>,  <41.198582, 37.918823, 29.575951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036167, 38.008900, 29.727964>,  <40.765480, 38.159031, 29.981319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036167, 38.008900, 29.727964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249141, -0.692805, 0.676720,
		-0.692805, -0.615753, -0.375326,
		-0.676720, 0.375326, 0.633388,
		41.239182, 37.896301, 29.537949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654594, 37.438717, 29.920389>,  <40.765480, 38.159031, 29.981319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654594, 37.438717, 29.920389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032612, 37.496464, 29.803045>,  <41.259422, 37.531113, 29.732639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032612, 37.496464, 29.803045>,  <40.654594, 37.438717, 29.920389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032612, 37.496464, 29.803045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288157, -0.791716, 0.538656,
		-0.154490, -0.593584, -0.789805,
		0.945039, 0.144371, -0.293357,
		41.316124, 37.539776, 29.715038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957401, 36.715885, 29.644224>,  <40.654594, 37.438717, 29.920389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957401, 36.715885, 29.644224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266468, 36.957489, 29.722364>,  <41.451908, 37.102451, 29.769249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266468, 36.957489, 29.722364>,  <40.957401, 36.715885, 29.644224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266468, 36.957489, 29.722364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459219, -0.744284, 0.484932,
		0.438298, -0.284983, -0.852455,
		0.772666, 0.604008, 0.195349,
		41.498268, 37.138691, 29.780970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583469, 36.262470, 29.529993>,  <40.957401, 36.715885, 29.644224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583469, 36.262470, 29.529993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687706, 36.570736, 29.762602>,  <41.750248, 36.755695, 29.902168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687706, 36.570736, 29.762602>,  <41.583469, 36.262470, 29.529993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687706, 36.570736, 29.762602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614553, -0.596958, 0.515720,
		0.744590, 0.222982, -0.629177,
		0.260596, 0.770662, 0.581523,
		41.765884, 36.801933, 29.937059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242882, 36.321568, 29.534105>,  <41.583469, 36.262470, 29.529993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242882, 36.321568, 29.534105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157864, 36.518806, 29.871550>,  <42.106853, 36.637150, 30.074017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157864, 36.518806, 29.871550>,  <42.242882, 36.321568, 29.534105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157864, 36.518806, 29.871550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598002, -0.617145, 0.511396,
		0.772798, 0.613177, -0.163700,
		-0.212550, 0.493099, 0.843609,
		42.094097, 36.666737, 30.124632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894676, 36.406864, 29.837811>,  <42.242882, 36.321568, 29.534105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894676, 36.406864, 29.837811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630348, 36.440563, 30.136129>,  <42.471752, 36.460785, 30.315121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630348, 36.440563, 30.136129>,  <42.894676, 36.406864, 29.837811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630348, 36.440563, 30.136129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612750, -0.513263, 0.600915,
		0.433419, 0.854086, 0.287551,
		-0.660822, 0.084251, 0.745799,
		42.432102, 36.465839, 30.359869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279045, 36.702564, 30.388594>,  <42.894676, 36.406864, 29.837811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279045, 36.702564, 30.388594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967312, 36.520016, 30.560347>,  <42.780273, 36.410484, 30.663399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967312, 36.520016, 30.560347>,  <43.279045, 36.702564, 30.388594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967312, 36.520016, 30.560347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622045, -0.480871, 0.617918,
		-0.075525, 0.748656, 0.658643,
		-0.779330, -0.456374, 0.429380,
		42.733513, 36.383102, 30.689161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550381, 36.627670, 31.010635>,  <43.279045, 36.702564, 30.388594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550381, 36.627670, 31.010635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261063, 36.353493, 31.044125>,  <43.087471, 36.188988, 31.064219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261063, 36.353493, 31.044125>,  <43.550381, 36.627670, 31.010635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261063, 36.353493, 31.044125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630930, -0.606716, 0.483552,
		-0.280650, 0.402575, 0.871303,
		-0.723300, -0.685440, 0.083722,
		43.044071, 36.147861, 31.069241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511143, 36.279430, 31.646780>,  <43.550381, 36.627670, 31.010635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511143, 36.279430, 31.646780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327740, 35.999870, 31.427210>,  <43.217697, 35.832134, 31.295467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327740, 35.999870, 31.427210>,  <43.511143, 36.279430, 31.646780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327740, 35.999870, 31.427210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533945, -0.710406, 0.458505,
		-0.710406, -0.082868, 0.698897,
		-0.458505, -0.698897, -0.548923,
		43.190189, 35.790203, 31.262533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151337, 35.880165, 32.069077>,  <43.511143, 36.279430, 31.646780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151337, 35.880165, 32.069077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242287, 35.655239, 31.751057>,  <43.296856, 35.520283, 31.560246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242287, 35.655239, 31.751057>,  <43.151337, 35.880165, 32.069077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242287, 35.655239, 31.751057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420909, -0.679477, 0.600955,
		-0.878143, -0.471286, 0.082186,
		0.227379, -0.562317, -0.795046,
		43.310501, 35.486546, 31.512543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899506, 35.193897, 32.246578>,  <43.151337, 35.880165, 32.069077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899506, 35.193897, 32.246578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166073, 35.138668, 31.953505>,  <43.326012, 35.105530, 31.777660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166073, 35.138668, 31.953505>,  <42.899506, 35.193897, 32.246578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166073, 35.138668, 31.953505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392229, -0.770809, 0.502006,
		-0.634073, -0.621924, -0.459523,
		0.666414, -0.138070, -0.732686,
		43.365997, 35.097248, 31.733698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869751, 34.412071, 32.136211>,  <42.899506, 35.193897, 32.246578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869751, 34.412071, 32.136211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216717, 34.581818, 32.032284>,  <43.424896, 34.683666, 31.969927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216717, 34.581818, 32.032284>,  <42.869751, 34.412071, 32.136211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216717, 34.581818, 32.032284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494987, -0.682620, 0.537605,
		0.050783, -0.594933, -0.802169,
		0.867416, 0.424364, -0.259819,
		43.476940, 34.709126, 31.954338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285732, 33.861530, 31.975454>,  <42.869751, 34.412071, 32.136211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285732, 33.861530, 31.975454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563595, 34.139194, 32.050915>,  <43.730312, 34.305794, 32.096191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563595, 34.139194, 32.050915>,  <43.285732, 33.861530, 31.975454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563595, 34.139194, 32.050915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615452, -0.709296, 0.343683,
		0.372380, -0.122638, -0.919942,
		0.694659, 0.694161, 0.188650,
		43.771992, 34.347443, 32.107510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879589, 33.466789, 31.984211>,  <43.285732, 33.861530, 31.975454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879589, 33.466789, 31.984211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998238, 33.826752, 32.112080>,  <44.069427, 34.042728, 32.188801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998238, 33.826752, 32.112080>,  <43.879589, 33.466789, 31.984211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998238, 33.826752, 32.112080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855055, -0.399340, 0.330770,
		0.425319, 0.175225, -0.887919,
		0.296622, 0.899902, 0.319674,
		44.087223, 34.096722, 32.207981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515568, 33.593506, 31.784576>,  <43.879589, 33.466789, 31.984211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515568, 33.593506, 31.784576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479275, 33.830822, 32.104519>,  <44.457500, 33.973213, 32.296486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479275, 33.830822, 32.104519>,  <44.515568, 33.593506, 31.784576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479275, 33.830822, 32.104519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925011, -0.247349, 0.288398,
		0.368948, 0.766044, -0.526359,
		-0.090731, 0.593292, 0.799858,
		44.452057, 34.008808, 32.344475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247822, 33.787437, 31.861143>,  <44.515568, 33.593506, 31.784576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247822, 33.787437, 31.861143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079666, 33.874069, 32.213589>,  <44.978771, 33.926048, 32.425056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079666, 33.874069, 32.213589>,  <45.247822, 33.787437, 31.861143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079666, 33.874069, 32.213589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823922, -0.315612, 0.470682,
		0.380030, 0.923841, -0.045762,
		-0.420392, 0.216578, 0.881115,
		44.953548, 33.939041, 32.477924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730770, 34.122398, 32.329063>,  <45.247822, 33.787437, 31.861143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730770, 34.122398, 32.329063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448196, 33.963764, 32.563560>,  <45.278652, 33.868584, 32.704258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448196, 33.963764, 32.563560>,  <45.730770, 34.122398, 32.329063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448196, 33.963764, 32.563560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706828, -0.438281, 0.555252,
		0.036735, 0.806618, 0.589931,
		-0.706431, -0.396582, 0.586240,
		45.236267, 33.844788, 32.739433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032619, 34.063797, 32.949852>,  <45.730770, 34.122398, 32.329063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032619, 34.063797, 32.949852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740990, 33.790585, 32.967361>,  <45.566010, 33.626659, 32.977867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740990, 33.790585, 32.967361>,  <46.032619, 34.063797, 32.949852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740990, 33.790585, 32.967361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548799, -0.545189, 0.633710,
		-0.408979, 0.486046, 0.772331,
		-0.729079, -0.683029, 0.043771,
		45.522266, 33.585674, 32.980492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799114, 34.022331, 33.650253>,  <46.032619, 34.063797, 32.949852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799114, 34.022331, 33.650253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555046, 33.705574, 33.640560>,  <45.408604, 33.515518, 33.634743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555046, 33.705574, 33.640560>,  <45.799114, 34.022331, 33.650253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555046, 33.705574, 33.640560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594934, -0.478180, 0.646063,
		-0.523202, 0.379794, 0.762900,
		-0.610174, -0.791896, -0.024233,
		45.371994, 33.468006, 33.633289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614944, 33.764153, 34.403786>,  <45.799114, 34.022331, 33.650253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614944, 33.764153, 34.403786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607170, 33.469318, 34.133579>,  <45.602505, 33.292419, 33.971455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607170, 33.469318, 34.133579>,  <45.614944, 33.764153, 34.403786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607170, 33.469318, 34.133579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516098, -0.586070, 0.624631,
		-0.856309, -0.336492, 0.391802,
		-0.019440, -0.737086, -0.675520,
		45.601337, 33.248192, 33.930923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309669, 33.145599, 34.669327>,  <45.614944, 33.764153, 34.403786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309669, 33.145599, 34.669327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484699, 32.992573, 34.343834>,  <45.589718, 32.900757, 34.148537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484699, 32.992573, 34.343834>,  <45.309669, 33.145599, 34.669327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484699, 32.992573, 34.343834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625078, -0.521120, 0.581129,
		-0.646377, -0.762937, 0.011106,
		0.437577, -0.382570, -0.813736,
		45.615971, 32.877800, 34.099712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348003, 32.357285, 34.740215>,  <45.309669, 33.145599, 34.669327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348003, 32.357285, 34.740215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622097, 32.461617, 34.468208>,  <45.786552, 32.524216, 34.305004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622097, 32.461617, 34.468208>,  <45.348003, 32.357285, 34.740215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622097, 32.461617, 34.468208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702759, -0.481980, 0.523284,
		-0.191262, -0.836458, -0.513573,
		0.685236, 0.260833, -0.680013,
		45.827667, 32.539867, 34.264206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387054, 31.819878, 34.222660>,  <45.348003, 32.357285, 34.740215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387054, 31.819878, 34.222660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710964, 32.028004, 34.331131>,  <45.905312, 32.152878, 34.396214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710964, 32.028004, 34.331131>,  <45.387054, 31.819878, 34.222660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710964, 32.028004, 34.331131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256820, -0.729870, 0.633508,
		0.527549, -0.443354, -0.724658,
		0.809775, 0.520313, 0.271180,
		45.953896, 32.184097, 34.412483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874561, 31.370592, 34.208611>,  <45.387054, 31.819878, 34.222660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874561, 31.370592, 34.208611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007080, 31.658140, 34.453056>,  <46.086594, 31.830669, 34.599724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007080, 31.658140, 34.453056>,  <45.874561, 31.370592, 34.208611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007080, 31.658140, 34.453056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393604, -0.693944, 0.602924,
		0.857506, 0.040790, -0.512854,
		0.331299, 0.718872, 0.611116,
		46.106468, 31.873802, 34.636391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582230, 31.275898, 34.289478>,  <45.874561, 31.370592, 34.208611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582230, 31.275898, 34.289478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471825, 31.474228, 34.618835>,  <46.405582, 31.593225, 34.816448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471825, 31.474228, 34.618835>,  <46.582230, 31.275898, 34.289478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471825, 31.474228, 34.618835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433000, -0.700673, 0.567071,
		0.858096, 0.513048, -0.021298,
		-0.276012, 0.495823, 0.823394,
		46.389023, 31.622974, 34.865852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132099, 31.162477, 34.814445>,  <46.582230, 31.275898, 34.289478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132099, 31.162477, 34.814445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857445, 31.338688, 35.045780>,  <46.692654, 31.444414, 35.184582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857445, 31.338688, 35.045780>,  <47.132099, 31.162477, 34.814445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857445, 31.338688, 35.045780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131571, -0.707068, 0.694797,
		0.714997, 0.553165, 0.427538,
		-0.686636, 0.440526, 0.578332,
		46.651455, 31.470846, 35.219280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.497021, 31.297356, 35.507927>,  <47.132099, 31.162477, 34.814445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.497021, 31.297356, 35.507927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098759, 31.307611, 35.543736>,  <46.859802, 31.313765, 35.565220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098759, 31.307611, 35.543736>,  <47.497021, 31.297356, 35.507927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098759, 31.307611, 35.543736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032789, -0.803229, 0.594767,
		0.087153, 0.595118, 0.798899,
		-0.995655, 0.025641, 0.089517,
		46.800060, 31.315304, 35.570591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.319801, 31.234100, 36.221603>,  <47.497021, 31.297356, 35.507927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.319801, 31.234100, 36.221603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975346, 31.117123, 36.055271>,  <46.768673, 31.046936, 35.955471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975346, 31.117123, 36.055271>,  <47.319801, 31.234100, 36.221603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975346, 31.117123, 36.055271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043464, -0.857330, 0.512929,
		-0.506508, 0.423629, 0.750991,
		-0.861139, -0.292444, -0.415832,
		46.717003, 31.029390, 35.930523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.792767, 31.042732, 36.711651>,  <47.319801, 31.234100, 36.221603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.792767, 31.042732, 36.711651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744961, 30.823139, 36.380753>,  <46.716278, 30.691383, 36.182213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744961, 30.823139, 36.380753>,  <46.792767, 31.042732, 36.711651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744961, 30.823139, 36.380753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159601, -0.833004, 0.529747,
		-0.979920, -0.068717, 0.187173,
		-0.119513, -0.548983, -0.827245,
		46.709106, 30.658443, 36.132580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344128, 30.483183, 36.789898>,  <46.792767, 31.042732, 36.711651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344128, 30.483183, 36.789898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578751, 30.373432, 36.485092>,  <46.719524, 30.307581, 36.302208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578751, 30.373432, 36.485092>,  <46.344128, 30.483183, 36.789898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578751, 30.373432, 36.485092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085488, -0.914636, 0.395136,
		-0.805383, -0.296914, -0.513031,
		0.586558, -0.274378, -0.762015,
		46.754719, 30.291119, 36.256489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025341, 29.933651, 36.403809>,  <46.344128, 30.483183, 36.789898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025341, 29.933651, 36.403809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425243, 29.925350, 36.400726>,  <46.665184, 29.920370, 36.398876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425243, 29.925350, 36.400726>,  <46.025341, 29.933651, 36.403809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.425243, 29.925350, 36.400726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016546, -0.931792, 0.362616,
		-0.014707, -0.362400, -0.931907,
		0.999755, -0.020752, -0.007708,
		46.725170, 29.919125, 36.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.383476, 29.498930, 35.982933>,  <46.025341, 29.933651, 36.403809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.383476, 29.498930, 35.982933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588417, 29.560329, 36.320911>,  <46.711384, 29.597170, 36.523697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588417, 29.560329, 36.320911>,  <46.383476, 29.498930, 35.982933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588417, 29.560329, 36.320911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227829, -0.924343, 0.306076,
		0.828001, -0.349323, -0.438620,
		0.512355, 0.153501, 0.844943,
		46.742123, 29.606380, 36.574394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006592, 29.413240, 35.707516>,  <46.383476, 29.498930, 35.982933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006592, 29.413240, 35.707516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085548, 29.127920, 35.438522>,  <47.132923, 28.956728, 35.277126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085548, 29.127920, 35.438522>,  <47.006592, 29.413240, 35.707516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085548, 29.127920, 35.438522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731590, -0.563801, 0.383282,
		-0.652545, 0.416329, -0.633132,
		0.197389, -0.713302, -0.672487,
		47.144764, 28.913929, 35.236774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933987, 30.044182, 35.367256>,  <47.006592, 29.413240, 35.707516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933987, 30.044182, 35.367256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630554, 30.073629, 35.626221>,  <46.448494, 30.091297, 35.781597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630554, 30.073629, 35.626221>,  <46.933987, 30.044182, 35.367256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630554, 30.073629, 35.626221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077291, 0.976415, -0.201593,
		-0.646979, -0.202964, -0.734999,
		-0.758581, 0.073617, 0.647407,
		46.402981, 30.095715, 35.820442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181293, 30.292677, 35.036221>,  <46.933987, 30.044182, 35.367256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181293, 30.292677, 35.036221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276482, 30.393499, 35.411419>,  <46.333595, 30.453993, 35.636539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276482, 30.393499, 35.411419>,  <46.181293, 30.292677, 35.036221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276482, 30.393499, 35.411419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199008, 0.957904, -0.206918,
		-0.950667, -0.137429, 0.278110,
		0.237966, 0.252056, 0.937998,
		46.347870, 30.469116, 35.692818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627445, 30.640594, 35.308033>,  <46.181293, 30.292677, 35.036221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627445, 30.640594, 35.308033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.949192, 30.756220, 35.515663>,  <46.142239, 30.825596, 35.640240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.949192, 30.756220, 35.515663>,  <45.627445, 30.640594, 35.308033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949192, 30.756220, 35.515663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115557, 0.933096, -0.340556,
		-0.582789, 0.213949, 0.783954,
		0.804366, 0.289064, 0.519074,
		46.190502, 30.842939, 35.671387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468281, 31.285774, 35.731285>,  <45.627445, 30.640594, 35.308033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468281, 31.285774, 35.731285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865360, 31.308838, 35.688911>,  <46.103607, 31.322676, 35.663486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865360, 31.308838, 35.688911>,  <45.468281, 31.285774, 35.731285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865360, 31.308838, 35.688911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098881, 0.892013, -0.441062,
		0.069065, 0.448317, 0.891202,
		0.992700, 0.057661, -0.105937,
		46.163170, 31.326136, 35.657131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671001, 31.965694, 35.924854>,  <45.468281, 31.285774, 35.731285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671001, 31.965694, 35.924854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947254, 31.813238, 35.679005>,  <46.113007, 31.721766, 35.531494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947254, 31.813238, 35.679005>,  <45.671001, 31.965694, 35.924854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947254, 31.813238, 35.679005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021902, 0.860492, -0.508994,
		0.722876, 0.338064, 0.602629,
		0.690630, -0.381138, -0.614625,
		46.154442, 31.698896, 35.494617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197212, 32.554253, 35.792763>,  <45.671001, 31.965694, 35.924854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197212, 32.554253, 35.792763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216305, 32.282925, 35.499474>,  <46.227760, 32.120129, 35.323502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216305, 32.282925, 35.499474>,  <46.197212, 32.554253, 35.792763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216305, 32.282925, 35.499474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161324, 0.729654, -0.664515,
		0.985747, -0.086566, 0.144257,
		0.047733, -0.678316, -0.733219,
		46.230625, 32.079430, 35.279507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675205, 32.841660, 35.297279>,  <46.197212, 32.554253, 35.792763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675205, 32.841660, 35.297279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502632, 32.550694, 35.083839>,  <46.399086, 32.376114, 34.955776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502632, 32.550694, 35.083839>,  <46.675205, 32.841660, 35.297279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502632, 32.550694, 35.083839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073827, 0.617968, -0.782729,
		0.899117, -0.298304, -0.320318,
		-0.431437, -0.727413, -0.533603,
		46.373199, 32.332470, 34.923759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.108574, 32.787621, 34.753277>,  <46.675205, 32.841660, 35.297279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.108574, 32.787621, 34.753277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760502, 32.616974, 34.654655>,  <46.551659, 32.514587, 34.595482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760502, 32.616974, 34.654655>,  <47.108574, 32.787621, 34.753277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760502, 32.616974, 34.654655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109107, 0.654777, -0.747905,
		0.480502, -0.623912, -0.616321,
		-0.870180, -0.426615, -0.246549,
		46.499447, 32.488991, 34.580692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.098488, 32.771507, 34.091820>,  <47.108574, 32.787621, 34.753277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.098488, 32.771507, 34.091820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714729, 32.694237, 34.174030>,  <46.484474, 32.647873, 34.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714729, 32.694237, 34.174030>,  <47.098488, 32.771507, 34.091820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714729, 32.694237, 34.174030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281892, 0.631421, -0.722388,
		0.009773, -0.750993, -0.660237,
		-0.959396, -0.193176, 0.205528,
		46.426910, 32.636284, 34.235687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761803, 32.917782, 33.473564>,  <47.098488, 32.771507, 34.091820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761803, 32.917782, 33.473564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468903, 32.810421, 33.723930>,  <46.293163, 32.746002, 33.874149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468903, 32.810421, 33.723930>,  <46.761803, 32.917782, 33.473564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468903, 32.810421, 33.723930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680692, 0.317761, -0.660065,
		-0.021729, -0.909388, -0.415380,
		-0.732247, -0.268403, 0.625918,
		46.249229, 32.729900, 33.911705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321392, 32.429405, 33.141483>,  <46.761803, 32.917782, 33.473564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321392, 32.429405, 33.141483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132355, 32.610825, 33.443729>,  <46.018932, 32.719677, 33.625076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132355, 32.610825, 33.443729>,  <46.321392, 32.429405, 33.141483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132355, 32.610825, 33.443729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794499, 0.151746, -0.588000,
		-0.381347, -0.878218, 0.288630,
		-0.472594, 0.453548, 0.755612,
		45.990578, 32.746887, 33.670414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653378, 32.264294, 33.036858>,  <46.321392, 32.429405, 33.141483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653378, 32.264294, 33.036858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647060, 32.582279, 33.279438>,  <45.643269, 32.773071, 33.424988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647060, 32.582279, 33.279438>,  <45.653378, 32.264294, 33.036858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647060, 32.582279, 33.279438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735927, 0.401353, -0.545277,
		-0.676876, -0.454917, 0.578696,
		-0.015794, 0.794963, 0.606452,
		45.642323, 32.820766, 33.461372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003967, 32.450298, 33.176624>,  <45.653378, 32.264294, 33.036858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003967, 32.450298, 33.176624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185890, 32.792202, 33.276649>,  <45.295044, 32.997345, 33.336666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185890, 32.792202, 33.276649>,  <45.003967, 32.450298, 33.176624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185890, 32.792202, 33.276649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758673, 0.518914, -0.393882,
		-0.466438, -0.010577, 0.884491,
		0.454808, 0.854761, 0.250066,
		45.322334, 33.048630, 33.351669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535992, 32.915653, 33.265919>,  <45.003967, 32.450298, 33.176624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535992, 32.915653, 33.265919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856564, 33.153736, 33.242447>,  <45.048904, 33.296585, 33.228363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856564, 33.153736, 33.242447>,  <44.535992, 32.915653, 33.265919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856564, 33.153736, 33.242447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515155, 0.637115, -0.573323,
		-0.303857, 0.489708, 0.817225,
		0.801428, 0.595206, -0.058683,
		45.096992, 33.332298, 33.224842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274979, 33.458961, 33.513172>,  <44.535992, 32.915653, 33.265919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274979, 33.458961, 33.513172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584713, 33.586842, 33.294743>,  <44.770554, 33.663570, 33.163685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584713, 33.586842, 33.294743>,  <44.274979, 33.458961, 33.513172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584713, 33.586842, 33.294743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604291, 0.629612, -0.488285,
		0.187712, 0.708084, 0.680721,
		0.774336, 0.319697, -0.546075,
		44.817013, 33.682751, 33.130920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232376, 34.113823, 33.646118>,  <44.274979, 33.458961, 33.513172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232376, 34.113823, 33.646118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424187, 34.045620, 33.301796>,  <44.539272, 34.004696, 33.095203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424187, 34.045620, 33.301796>,  <44.232376, 34.113823, 33.646118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424187, 34.045620, 33.301796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531506, 0.724103, -0.439518,
		0.698253, 0.668282, 0.256597,
		0.479524, -0.170512, -0.860803,
		44.568043, 33.994465, 33.043556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439186, 34.754864, 33.372337>,  <44.232376, 34.113823, 33.646118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439186, 34.754864, 33.372337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408154, 34.504059, 33.062283>,  <44.389534, 34.353577, 32.876251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408154, 34.504059, 33.062283>,  <44.439186, 34.754864, 33.372337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408154, 34.504059, 33.062283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499339, 0.697369, -0.514136,
		0.862926, 0.347169, -0.367195,
		-0.077578, -0.627017, -0.775133,
		44.384880, 34.315952, 32.829742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638374, 35.201675, 32.742783>,  <44.439186, 34.754864, 33.372337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638374, 35.201675, 32.742783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431892, 34.886818, 32.607769>,  <44.308002, 34.697903, 32.526760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431892, 34.886818, 32.607769>,  <44.638374, 35.201675, 32.742783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431892, 34.886818, 32.607769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375800, 0.562306, -0.736605,
		0.769613, -0.253396, -0.586077,
		-0.516207, -0.787149, -0.337532,
		44.277031, 34.650673, 32.506508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642654, 35.399342, 32.139534>,  <44.638374, 35.201675, 32.742783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642654, 35.399342, 32.139534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386364, 35.092236, 32.140995>,  <44.232590, 34.907970, 32.141872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386364, 35.092236, 32.140995>,  <44.642654, 35.399342, 32.139534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386364, 35.092236, 32.140995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395031, 0.325574, -0.859042,
		0.658351, -0.551851, -0.511892,
		-0.640721, -0.767764, 0.003656,
		44.194149, 34.861908, 32.142094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638180, 35.056553, 31.451366>,  <44.642654, 35.399342, 32.139534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638180, 35.056553, 31.451366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283684, 34.994701, 31.626026>,  <44.070984, 34.957592, 31.730822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283684, 34.994701, 31.626026>,  <44.638180, 35.056553, 31.451366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283684, 34.994701, 31.626026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460000, 0.404703, -0.790326,
		-0.054508, -0.901280, -0.429794,
		-0.886245, -0.154626, 0.436648,
		44.017811, 34.948315, 31.757021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297203, 34.891613, 30.809408>,  <44.638180, 35.056553, 31.451366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297203, 34.891613, 30.809408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020531, 34.942734, 31.093731>,  <43.854527, 34.973408, 31.264324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020531, 34.942734, 31.093731>,  <44.297203, 34.891613, 30.809408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020531, 34.942734, 31.093731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670760, 0.251136, -0.697863,
		-0.267699, -0.959477, -0.087980,
		-0.691678, 0.127803, 0.710807,
		43.813026, 34.981075, 31.306973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641792, 34.678898, 30.515598>,  <44.297203, 34.891613, 30.809408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641792, 34.678898, 30.515598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535110, 34.934525, 30.804171>,  <43.471100, 35.087902, 30.977314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535110, 34.934525, 30.804171>,  <43.641792, 34.678898, 30.515598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535110, 34.934525, 30.804171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807196, 0.260878, -0.529506,
		-0.526596, -0.723557, 0.446276,
		-0.266704, 0.639068, 0.721430,
		43.455101, 35.126244, 31.020599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002369, 34.358063, 30.713993>,  <43.641792, 34.678898, 30.515598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002369, 34.358063, 30.713993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098301, 34.743809, 30.758667>,  <43.155861, 34.975258, 30.785471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098301, 34.743809, 30.758667>,  <43.002369, 34.358063, 30.713993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098301, 34.743809, 30.758667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688444, 0.250057, -0.680821,
		-0.684490, 0.086394, 0.723885,
		0.239831, 0.964369, 0.111684,
		43.170250, 35.033119, 30.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976509, 33.610939, 30.559303>,  <43.002369, 34.358063, 30.713993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976509, 33.610939, 30.559303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071655, 33.443516, 30.208710>,  <43.128742, 33.343063, 29.998354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071655, 33.443516, 30.208710>,  <42.976509, 33.610939, 30.559303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071655, 33.443516, 30.208710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967285, 0.020145, 0.252892,
		-0.088194, -0.907966, 0.409658,
		0.237870, -0.418559, -0.876485,
		43.143017, 33.317947, 29.945765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433395, 33.052174, 30.791498>,  <42.976509, 33.610939, 30.559303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433395, 33.052174, 30.791498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501812, 33.158272, 30.411943>,  <43.542862, 33.221931, 30.184210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501812, 33.158272, 30.411943>,  <43.433395, 33.052174, 30.791498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501812, 33.158272, 30.411943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974787, 0.094507, 0.202133,
		0.143292, -0.959537, -0.242396,
		0.171046, 0.265249, -0.948887,
		43.553127, 33.237846, 30.127277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948887, 32.646973, 30.467293>,  <43.433395, 33.052174, 30.791498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948887, 32.646973, 30.467293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942974, 33.029541, 30.350649>,  <43.939426, 33.259083, 30.280663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942974, 33.029541, 30.350649>,  <43.948887, 32.646973, 30.467293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942974, 33.029541, 30.350649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937533, 0.114635, 0.328468,
		0.347583, -0.268537, -0.898373,
		-0.014779, 0.956424, -0.291607,
		43.938541, 33.316467, 30.263166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570118, 32.782898, 30.084387>,  <43.948887, 32.646973, 30.467293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570118, 32.782898, 30.084387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439693, 33.103329, 30.285168>,  <44.361439, 33.295589, 30.405636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439693, 33.103329, 30.285168>,  <44.570118, 32.782898, 30.084387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439693, 33.103329, 30.285168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907448, 0.116385, 0.403723,
		0.264996, 0.587132, -0.764888,
		-0.326060, 0.801081, 0.501950,
		44.341877, 33.343655, 30.435753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881870, 32.194962, 30.265123>,  <44.570118, 32.782898, 30.084387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881870, 32.194962, 30.265123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223145, 32.393356, 30.200548>,  <45.427910, 32.512394, 30.161804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223145, 32.393356, 30.200548>,  <44.881870, 32.194962, 30.265123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223145, 32.393356, 30.200548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438711, -0.849780, -0.292242,
		-0.282134, 0.178514, -0.942620,
		0.853190, 0.495990, -0.161436,
		45.479103, 32.542152, 30.152117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204983, 31.900988, 29.572290>,  <44.881870, 32.194962, 30.265123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204983, 31.900988, 29.572290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484322, 32.003128, 29.839754>,  <45.651924, 32.064411, 30.000233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484322, 32.003128, 29.839754>,  <45.204983, 31.900988, 29.572290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484322, 32.003128, 29.839754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504269, -0.838507, -0.206443,
		0.507960, 0.481353, -0.714336,
		0.698348, 0.255353, 0.668659,
		45.693825, 32.079735, 30.040352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986034, 32.124306, 29.380762>,  <45.204983, 31.900988, 29.572290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986034, 32.124306, 29.380762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959698, 31.921289, 29.724405>,  <45.943893, 31.799479, 29.930592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959698, 31.921289, 29.724405>,  <45.986034, 32.124306, 29.380762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.959698, 31.921289, 29.724405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501191, -0.761312, -0.411354,
		0.862828, 0.403490, 0.304505,
		-0.065846, -0.507543, 0.859107,
		45.939945, 31.769026, 29.982138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119392, 32.756760, 29.802235>,  <45.986034, 32.124306, 29.380762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119392, 32.756760, 29.802235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451416, 32.702900, 30.018705>,  <46.650631, 32.670586, 30.148588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451416, 32.702900, 30.018705>,  <46.119392, 32.756760, 29.802235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451416, 32.702900, 30.018705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118805, 0.905442, 0.407506,
		-0.544872, -0.402549, 0.735574,
		0.830060, -0.134648, 0.541175,
		46.700436, 32.662506, 30.181057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981701, 32.735703, 30.560120>,  <46.119392, 32.756760, 29.802235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981701, 32.735703, 30.560120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351372, 32.871025, 30.489187>,  <46.573174, 32.952221, 30.446629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351372, 32.871025, 30.489187>,  <45.981701, 32.735703, 30.560120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351372, 32.871025, 30.489187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274390, 0.910976, 0.307949,
		0.265725, -0.235941, 0.934731,
		0.924176, 0.338311, -0.177329,
		46.628624, 32.972519, 30.435989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194920, 33.176094, 31.105844>,  <45.981701, 32.735703, 30.560120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194920, 33.176094, 31.105844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435371, 33.266823, 30.799332>,  <46.579643, 33.321259, 30.615423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435371, 33.266823, 30.799332>,  <46.194920, 33.176094, 31.105844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435371, 33.266823, 30.799332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063500, 0.969401, 0.237129,
		0.796621, -0.093888, 0.597143,
		0.601134, 0.226820, -0.766283,
		46.615711, 33.334869, 30.569447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888012, 33.387428, 31.161882>,  <46.194920, 33.176094, 31.105844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888012, 33.387428, 31.161882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678970, 33.561367, 30.868544>,  <46.553547, 33.665730, 30.692541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678970, 33.561367, 30.868544>,  <46.888012, 33.387428, 31.161882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678970, 33.561367, 30.868544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024690, 0.867510, 0.496806,
		0.852221, 0.241524, -0.464097,
		-0.522600, 0.434847, -0.733347,
		46.522190, 33.691822, 30.648540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.900837, 34.020206, 31.455814>,  <46.888012, 33.387428, 31.161882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.900837, 34.020206, 31.455814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756962, 34.093079, 31.089769>,  <46.670635, 34.136803, 30.870142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756962, 34.093079, 31.089769>,  <46.900837, 34.020206, 31.455814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756962, 34.093079, 31.089769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032149, 0.977752, 0.207286,
		0.932518, 0.103978, -0.345831,
		-0.359690, 0.182180, -0.915114,
		46.649055, 34.147732, 30.815235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419731, 34.319057, 31.827164>,  <46.900837, 34.020206, 31.455814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419731, 34.319057, 31.827164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624958, 34.429314, 32.152317>,  <46.748096, 34.495468, 32.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624958, 34.429314, 32.152317>,  <46.419731, 34.319057, 31.827164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624958, 34.429314, 32.152317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360210, -0.790462, 0.495398,
		0.779106, -0.546983, -0.306273,
		0.513071, 0.275645, 0.812883,
		46.778881, 34.512009, 32.396183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793255, 33.823376, 32.135723>,  <46.419731, 34.319057, 31.827164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793255, 33.823376, 32.135723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779415, 34.064754, 32.454384>,  <46.771111, 34.209583, 32.645580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779415, 34.064754, 32.454384>,  <46.793255, 33.823376, 32.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779415, 34.064754, 32.454384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124605, -0.793511, 0.595662,
		0.991603, -0.078655, 0.102649,
		-0.034601, 0.603451, 0.796649,
		46.769035, 34.245789, 32.693378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.439693, 33.736248, 32.579655>,  <46.793255, 33.823376, 32.135723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.439693, 33.736248, 32.579655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092651, 33.832771, 32.753563>,  <46.884426, 33.890686, 32.857906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092651, 33.832771, 32.753563>,  <47.439693, 33.736248, 32.579655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092651, 33.832771, 32.753563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048700, -0.828913, 0.557254,
		0.494858, 0.504652, 0.707420,
		-0.867608, 0.241310, 0.434771,
		46.832371, 33.905163, 32.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.510143, 33.966526, 33.309292>,  <47.439693, 33.736248, 32.579655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.510143, 33.966526, 33.309292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155991, 33.798454, 33.229740>,  <46.943501, 33.697613, 33.182011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155991, 33.798454, 33.229740>,  <47.510143, 33.966526, 33.309292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.155991, 33.798454, 33.229740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179627, -0.703815, 0.687298,
		-0.428757, 0.572798, 0.698620,
		-0.885382, -0.420175, -0.198875,
		46.890377, 33.672401, 33.170078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455284, 34.684223, 33.250759>,  <47.510143, 33.966526, 33.309292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455284, 34.684223, 33.250759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606838, 34.461292, 33.546284>,  <47.697769, 34.327534, 33.723598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606838, 34.461292, 33.546284>,  <47.455284, 34.684223, 33.250759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.606838, 34.461292, 33.546284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224401, 0.719176, 0.657594,
		-0.897825, -0.414942, 0.147422,
		0.378886, -0.557323, 0.738808,
		47.720505, 34.294094, 33.767925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016468, 34.651104, 33.821327>,  <47.455284, 34.684223, 33.250759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016468, 34.651104, 33.821327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369556, 34.557625, 33.984394>,  <47.581409, 34.501537, 34.082233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369556, 34.557625, 33.984394>,  <47.016468, 34.651104, 33.821327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369556, 34.557625, 33.984394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048816, 0.817260, 0.574198,
		-0.467357, -0.526757, 0.710004,
		0.882720, -0.233696, 0.407666,
		47.634373, 34.487514, 34.106693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009312, 34.670681, 34.584816>,  <47.016468, 34.651104, 33.821327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009312, 34.670681, 34.584816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380749, 34.746010, 34.456913>,  <47.603611, 34.791206, 34.380173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380749, 34.746010, 34.456913>,  <47.009312, 34.670681, 34.584816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.380749, 34.746010, 34.456913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064500, 0.766637, 0.638833,
		0.365441, -0.613842, 0.699750,
		0.928597, 0.188322, -0.319753,
		47.659328, 34.802505, 34.360989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.383091, 34.600040, 35.188637>,  <47.009312, 34.670681, 34.584816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.383091, 34.600040, 35.188637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527626, 34.841522, 34.904388>,  <47.614346, 34.986412, 34.733841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527626, 34.841522, 34.904388>,  <47.383091, 34.600040, 35.188637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.527626, 34.841522, 34.904388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182565, 0.701552, 0.688836,
		0.914390, -0.378633, 0.143279,
		0.361334, 0.603707, -0.710617,
		47.636024, 35.022633, 34.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.623096, 37.517124, 22.487537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337875, 37.660229, 22.728724>,  <38.166744, 37.746090, 22.873436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.337875, 37.660229, 22.728724>,  <38.623096, 37.517124, 22.487537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337875, 37.660229, 22.728724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280412, -0.642710, 0.712946,
		0.642596, 0.677445, 0.357965,
		-0.713050, 0.357759, 0.602967,
		38.123959, 37.767555, 22.909613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971962, 37.519154, 23.114580>,  <38.623096, 37.517124, 22.487537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971962, 37.519154, 23.114580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589756, 37.537933, 23.231054>,  <38.360432, 37.549202, 23.300940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589756, 37.537933, 23.231054>,  <38.971962, 37.519154, 23.114580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589756, 37.537933, 23.231054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218704, -0.549620, 0.806279,
		0.197893, 0.834095, 0.514902,
		-0.955514, 0.046945, 0.291186,
		38.303101, 37.552017, 23.318411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988285, 37.668633, 23.781624>,  <38.971962, 37.519154, 23.114580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988285, 37.668633, 23.781624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642544, 37.476334, 23.722586>,  <38.435101, 37.360954, 23.687162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642544, 37.476334, 23.722586>,  <38.988285, 37.668633, 23.781624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642544, 37.476334, 23.722586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186639, -0.579194, 0.793536,
		-0.466973, 0.658347, 0.590352,
		-0.864351, -0.480743, -0.147595,
		38.383240, 37.332111, 23.678307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636364, 37.552235, 24.492493>,  <38.988285, 37.668633, 23.781624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636364, 37.552235, 24.492493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485123, 37.277115, 24.244633>,  <38.394379, 37.112041, 24.095917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485123, 37.277115, 24.244633>,  <38.636364, 37.552235, 24.492493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485123, 37.277115, 24.244633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101123, -0.634649, 0.766156,
		-0.920225, 0.352344, 0.170408,
		-0.378100, -0.687804, -0.619650,
		38.371693, 37.070774, 24.058737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202736, 37.245441, 24.893572>,  <38.636364, 37.552235, 24.492493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202736, 37.245441, 24.893572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200706, 36.987938, 24.587488>,  <38.199490, 36.833435, 24.403837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200706, 36.987938, 24.587488>,  <38.202736, 37.245441, 24.893572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200706, 36.987938, 24.587488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131013, -0.758197, 0.638727,
		-0.991368, 0.103494, -0.080493,
		-0.005075, -0.643759, -0.765211,
		38.199184, 36.794811, 24.357925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626411, 36.767704, 24.912476>,  <38.202736, 37.245441, 24.893572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626411, 36.767704, 24.912476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912106, 36.591042, 24.695290>,  <38.083523, 36.485043, 24.564978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912106, 36.591042, 24.695290>,  <37.626411, 36.767704, 24.912476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912106, 36.591042, 24.695290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003501, -0.778011, 0.628241,
		-0.699897, -0.446811, -0.557229,
		0.714235, -0.441655, -0.542964,
		38.126377, 36.458546, 24.532400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311119, 36.171280, 24.880178>,  <37.626411, 36.767704, 24.912476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311119, 36.171280, 24.880178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691223, 36.096718, 24.780369>,  <37.919285, 36.051983, 24.720484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691223, 36.096718, 24.780369>,  <37.311119, 36.171280, 24.880178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691223, 36.096718, 24.780369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002060, -0.804883, 0.593430,
		-0.311452, -0.563399, -0.765232,
		0.950260, -0.186401, -0.249522,
		37.976299, 36.040798, 24.705513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321125, 35.432076, 24.800163>,  <37.311119, 36.171280, 24.880178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321125, 35.432076, 24.800163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699005, 35.553265, 24.850353>,  <37.925735, 35.625980, 24.880466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699005, 35.553265, 24.850353>,  <37.321125, 35.432076, 24.800163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699005, 35.553265, 24.850353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187852, -0.813607, 0.550233,
		0.268794, -0.496235, -0.825530,
		0.944702, 0.302977, 0.125473,
		37.982414, 35.644157, 24.887995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686729, 34.799480, 24.840219>,  <37.321125, 35.432076, 24.800163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686729, 34.799480, 24.840219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940823, 35.074863, 24.980223>,  <38.093277, 35.240093, 25.064224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940823, 35.074863, 24.980223>,  <37.686729, 34.799480, 24.840219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940823, 35.074863, 24.980223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311345, -0.643007, 0.699719,
		0.706785, -0.335511, -0.622807,
		0.635232, 0.688458, 0.350008,
		38.131393, 35.281403, 25.085226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283379, 34.451183, 24.936193>,  <37.686729, 34.799480, 24.840219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283379, 34.451183, 24.936193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352646, 34.771500, 25.165541>,  <38.394207, 34.963688, 25.303148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352646, 34.771500, 25.165541>,  <38.283379, 34.451183, 24.936193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352646, 34.771500, 25.165541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418748, -0.586786, 0.693060,
		0.891438, 0.120077, -0.436943,
		0.173171, 0.800789, 0.573366,
		38.404598, 35.011738, 25.337551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066494, 34.388325, 25.243910>,  <38.283379, 34.451183, 24.936193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066494, 34.388325, 25.243910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859032, 34.634903, 25.480888>,  <38.734554, 34.782848, 25.623075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859032, 34.634903, 25.480888>,  <39.066494, 34.388325, 25.243910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859032, 34.634903, 25.480888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432067, -0.408964, 0.803783,
		0.737778, 0.672861, -0.054236,
		-0.518653, 0.616447, 0.592446,
		38.703434, 34.819836, 25.658623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566658, 34.804752, 25.590578>,  <39.066494, 34.388325, 25.243910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566658, 34.804752, 25.590578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225304, 34.782169, 25.797861>,  <39.020489, 34.768620, 25.922230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225304, 34.782169, 25.797861>,  <39.566658, 34.804752, 25.590578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225304, 34.782169, 25.797861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494508, -0.402131, 0.770553,
		0.164885, 0.913840, 0.371093,
		-0.853390, -0.056455, 0.518206,
		38.969288, 34.765232, 25.953323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847256, 34.951210, 26.214605>,  <39.566658, 34.804752, 25.590578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847256, 34.951210, 26.214605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494797, 34.785618, 26.305986>,  <39.283321, 34.686260, 26.360815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494797, 34.785618, 26.305986>,  <39.847256, 34.951210, 26.214605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494797, 34.785618, 26.305986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408161, -0.422048, 0.809493,
		-0.238698, 0.806532, 0.540860,
		-0.881151, -0.413982, 0.228453,
		39.230450, 34.661423, 26.374523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729164, 35.185692, 26.818228>,  <39.847256, 34.951210, 26.214605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729164, 35.185692, 26.818228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499268, 34.858406, 26.823858>,  <39.361328, 34.662033, 26.827236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499268, 34.858406, 26.823858>,  <39.729164, 35.185692, 26.818228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499268, 34.858406, 26.823858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256189, -0.163564, 0.952688,
		-0.777201, 0.551154, 0.303625,
		-0.574740, -0.818215, 0.014078,
		39.326847, 34.612942, 26.828081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302540, 35.284828, 27.394703>,  <39.729164, 35.185692, 26.818228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302540, 35.284828, 27.394703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266029, 34.890423, 27.338924>,  <39.244122, 34.653778, 27.305458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266029, 34.890423, 27.338924>,  <39.302540, 35.284828, 27.394703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266029, 34.890423, 27.338924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171864, -0.153527, 0.973084,
		-0.980883, 0.064858, 0.183475,
		-0.091280, -0.986014, -0.139445,
		39.238644, 34.594620, 27.297091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767014, 35.091770, 27.926655>,  <39.302540, 35.284828, 27.394703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767014, 35.091770, 27.926655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999672, 34.785511, 27.816772>,  <39.139267, 34.601753, 27.750843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999672, 34.785511, 27.816772>,  <38.767014, 35.091770, 27.926655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999672, 34.785511, 27.816772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213464, -0.182206, 0.959809,
		-0.784934, -0.616909, 0.057460,
		0.581646, -0.765653, -0.274708,
		39.174164, 34.555817, 27.734360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533260, 34.501064, 28.317078>,  <38.767014, 35.091770, 27.926655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533260, 34.501064, 28.317078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905312, 34.392784, 28.217810>,  <39.128544, 34.327816, 28.158249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905312, 34.392784, 28.217810>,  <38.533260, 34.501064, 28.317078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905312, 34.392784, 28.217810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256144, -0.006048, 0.966620,
		-0.263163, -0.962645, 0.063712,
		0.930126, -0.270698, -0.248168,
		39.184349, 34.311577, 28.143360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709515, 33.883053, 28.686100>,  <38.533260, 34.501064, 28.317078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709515, 33.883053, 28.686100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070770, 34.030289, 28.597698>,  <39.287525, 34.118629, 28.544657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070770, 34.030289, 28.597698>,  <38.709515, 33.883053, 28.686100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070770, 34.030289, 28.597698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189499, 0.120143, 0.974503,
		0.385262, -0.921993, 0.038752,
		0.903141, 0.368095, -0.221003,
		39.341713, 34.140717, 28.531397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878735, 33.955616, 29.277969>,  <38.709515, 33.883053, 28.686100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878735, 33.955616, 29.277969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190319, 34.110535, 29.080700>,  <39.377270, 34.203487, 28.962337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190319, 34.110535, 29.080700>,  <38.878735, 33.955616, 29.277969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190319, 34.110535, 29.080700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465289, 0.170268, 0.868628,
		0.420389, -0.906096, -0.047573,
		0.778960, 0.387297, -0.493175,
		39.424007, 34.226723, 28.932747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416256, 33.695869, 29.586935>,  <38.878735, 33.955616, 29.277969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416256, 33.695869, 29.586935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609592, 34.000584, 29.414392>,  <39.725594, 34.183411, 29.310867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609592, 34.000584, 29.414392>,  <39.416256, 33.695869, 29.586935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609592, 34.000584, 29.414392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569966, 0.100161, 0.815541,
		0.664472, -0.640040, -0.385780,
		0.483339, 0.761785, -0.431355,
		39.754593, 34.229118, 29.284986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102058, 33.586708, 29.610033>,  <39.416256, 33.695869, 29.586935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102058, 33.586708, 29.610033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048199, 33.982178, 29.583500>,  <40.015884, 34.219460, 29.567579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048199, 33.982178, 29.583500>,  <40.102058, 33.586708, 29.610033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048199, 33.982178, 29.583500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565817, 0.131671, 0.813949,
		0.813462, 0.072067, -0.577136,
		-0.134650, 0.988670, -0.066333,
		40.007805, 34.278778, 29.563601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774616, 33.850704, 29.787001>,  <40.102058, 33.586708, 29.610033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774616, 33.850704, 29.787001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.524834, 34.158840, 29.838593>,  <40.374966, 34.343723, 29.869547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.524834, 34.158840, 29.838593>,  <40.774616, 33.850704, 29.787001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524834, 34.158840, 29.838593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543282, 0.309747, 0.780322,
		0.561162, 0.557346, -0.611934,
		-0.624454, 0.770339, 0.128977,
		40.337498, 34.389942, 29.877285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076607, 34.252522, 29.117184>,  <40.774616, 33.850704, 29.787001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076607, 34.252522, 29.117184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.475658, 34.259911, 29.090637>,  <41.715088, 34.264343, 29.074709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.475658, 34.259911, 29.090637>,  <41.076607, 34.252522, 29.117184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475658, 34.259911, 29.090637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060346, 0.699000, -0.712571,
		0.033225, 0.714883, 0.698454,
		0.997624, 0.018473, -0.066365,
		41.774944, 34.265453, 29.070728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295094, 34.931137, 29.162457>,  <41.076607, 34.252522, 29.117184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295094, 34.931137, 29.162457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.604866, 34.758335, 28.977577>,  <41.790730, 34.654652, 28.866650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.604866, 34.758335, 28.977577>,  <41.295094, 34.931137, 29.162457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604866, 34.758335, 28.977577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047357, 0.768099, -0.638577,
		0.630886, 0.472644, 0.615297,
		0.774429, -0.432008, -0.462200,
		41.837196, 34.628735, 28.838917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838722, 35.486752, 29.043270>,  <41.295094, 34.931137, 29.162457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838722, 35.486752, 29.043270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.928986, 35.194050, 28.786016>,  <41.983143, 35.018429, 28.631664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.928986, 35.194050, 28.786016>,  <41.838722, 35.486752, 29.043270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928986, 35.194050, 28.786016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143854, 0.677952, -0.720894,
		0.963528, 0.070156, 0.258248,
		0.225654, -0.731751, -0.643133,
		41.996681, 34.974525, 28.593077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341732, 35.760452, 28.707836>,  <41.838722, 35.486752, 29.043270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341732, 35.760452, 28.707836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.190079, 35.479576, 28.466778>,  <42.099087, 35.311050, 28.322142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.190079, 35.479576, 28.466778>,  <42.341732, 35.760452, 28.707836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190079, 35.479576, 28.466778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054574, 0.633170, -0.772087,
		0.923730, -0.325615, -0.201736,
		-0.379136, -0.702190, -0.602648,
		42.076340, 35.268921, 28.285984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763561, 35.820480, 28.117056>,  <42.341732, 35.760452, 28.707836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763561, 35.820480, 28.117056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.415161, 35.648304, 28.022329>,  <42.206120, 35.544998, 27.965494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.415161, 35.648304, 28.022329>,  <42.763561, 35.820480, 28.117056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415161, 35.648304, 28.022329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054698, 0.564005, -0.823958,
		0.488224, -0.704716, -0.514793,
		-0.871002, -0.430435, -0.236814,
		42.153862, 35.519173, 27.951284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807785, 35.726864, 27.425337>,  <42.763561, 35.820480, 28.117056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807785, 35.726864, 27.425337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.412655, 35.689846, 27.475359>,  <42.175575, 35.667633, 27.505371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.412655, 35.689846, 27.475359>,  <42.807785, 35.726864, 27.425337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412655, 35.689846, 27.475359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153546, 0.450560, -0.879443,
		0.025046, -0.887936, -0.459285,
		-0.987824, -0.092548, 0.125054,
		42.116306, 35.662083, 27.512875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534248, 35.448433, 26.810503>,  <42.807785, 35.726864, 27.425337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534248, 35.448433, 26.810503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.234295, 35.639545, 26.993542>,  <42.054321, 35.754211, 27.103365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.234295, 35.639545, 26.993542>,  <42.534248, 35.448433, 26.810503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234295, 35.639545, 26.993542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295617, 0.376794, -0.877859,
		-0.591845, -0.793568, -0.141312,
		-0.749886, 0.477783, 0.457596,
		42.009331, 35.782879, 27.130821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940567, 35.304100, 26.358910>,  <42.534248, 35.448433, 26.810503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940567, 35.304100, 26.358910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.823738, 35.613163, 26.584368>,  <41.753639, 35.798599, 26.719643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.823738, 35.613163, 26.584368>,  <41.940567, 35.304100, 26.358910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823738, 35.613163, 26.584368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455415, 0.405878, -0.792376,
		-0.841005, -0.488126, 0.233332,
		-0.292076, 0.772655, 0.563646,
		41.736115, 35.844959, 26.753462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305691, 35.425289, 26.083292>,  <41.940567, 35.304100, 26.358910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305691, 35.425289, 26.083292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399139, 35.765163, 26.272379>,  <41.455208, 35.969086, 26.385832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.399139, 35.765163, 26.272379>,  <41.305691, 35.425289, 26.083292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399139, 35.765163, 26.272379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373927, 0.527295, -0.762980,
		-0.897552, 0.001487, 0.440907,
		0.233623, 0.849681, 0.472718,
		41.469227, 36.020069, 26.414194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789814, 35.839722, 25.944815>,  <41.305691, 35.425289, 26.083292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789814, 35.839722, 25.944815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051178, 36.112392, 26.076502>,  <41.207996, 36.275993, 26.155514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051178, 36.112392, 26.076502>,  <40.789814, 35.839722, 25.944815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051178, 36.112392, 26.076502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324195, 0.644971, -0.692033,
		-0.684076, 0.345448, 0.642422,
		0.653405, 0.681673, 0.329217,
		41.247200, 36.316895, 26.175266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396492, 36.488441, 26.198812>,  <40.789814, 35.839722, 25.944815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396492, 36.488441, 26.198812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764645, 36.581108, 26.072813>,  <40.985535, 36.636707, 25.997213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764645, 36.581108, 26.072813>,  <40.396492, 36.488441, 26.198812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764645, 36.581108, 26.072813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372904, 0.762403, -0.528852,
		0.117636, 0.604210, 0.788094,
		0.920383, 0.231671, -0.314999,
		41.040760, 36.650608, 25.978313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355377, 37.224609, 26.032120>,  <40.396492, 36.488441, 26.198812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355377, 37.224609, 26.032120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724251, 37.160404, 25.891373>,  <40.945576, 37.121883, 25.806925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724251, 37.160404, 25.891373>,  <40.355377, 37.224609, 26.032120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724251, 37.160404, 25.891373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173041, 0.642423, -0.746558,
		0.345878, 0.749352, 0.564658,
		0.922185, -0.160509, -0.351869,
		41.000908, 37.112251, 25.785812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631187, 37.915119, 25.909269>,  <40.355377, 37.224609, 26.032120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631187, 37.915119, 25.909269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.860260, 37.684055, 25.676601>,  <40.997704, 37.545418, 25.537001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.860260, 37.684055, 25.676601>,  <40.631187, 37.915119, 25.909269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860260, 37.684055, 25.676601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112462, 0.647478, -0.753741,
		0.812027, 0.497070, 0.305834,
		0.572682, -0.577663, -0.581671,
		41.032066, 37.510757, 25.502100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328163, 38.273003, 25.629591>,  <40.631187, 37.915119, 25.909269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328163, 38.273003, 25.629591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.195503, 37.994446, 25.375019>,  <41.115906, 37.827312, 25.222275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.195503, 37.994446, 25.375019>,  <41.328163, 38.273003, 25.629591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195503, 37.994446, 25.375019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094572, 0.695757, -0.712023,
		0.938650, -0.175956, -0.296608,
		-0.331652, -0.696391, -0.636432,
		41.096008, 37.785530, 25.184090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471668, 38.488750, 24.958603>,  <41.328163, 38.273003, 25.629591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471668, 38.488750, 24.958603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248436, 38.174850, 24.850737>,  <41.114498, 37.986511, 24.786016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248436, 38.174850, 24.850737>,  <41.471668, 38.488750, 24.958603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248436, 38.174850, 24.850737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150176, 0.415136, -0.897279,
		0.816086, -0.460254, -0.349528,
		-0.558079, -0.784747, -0.269667,
		41.081013, 37.939426, 24.769836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748745, 38.454002, 24.336334>,  <41.471668, 38.488750, 24.958603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748745, 38.454002, 24.336334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.397411, 38.263500, 24.352842>,  <41.186611, 38.149200, 24.362747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.397411, 38.263500, 24.352842>,  <41.748745, 38.454002, 24.336334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397411, 38.263500, 24.352842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226143, 0.337894, -0.913612,
		0.421169, -0.811792, -0.404487,
		-0.878337, -0.476257, 0.041271,
		41.133911, 38.120625, 24.365223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690704, 38.291756, 23.692595>,  <41.748745, 38.454002, 24.336334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690704, 38.291756, 23.692595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.319141, 38.233585, 23.828821>,  <41.096203, 38.198681, 23.910557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.319141, 38.233585, 23.828821>,  <41.690704, 38.291756, 23.692595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319141, 38.233585, 23.828821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362317, 0.547059, -0.754621,
		-0.076569, -0.824365, -0.560856,
		-0.928905, -0.145427, 0.340569,
		41.040470, 38.189957, 23.930992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290348, 37.848183, 23.206512>,  <41.690704, 38.291756, 23.692595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290348, 37.848183, 23.206512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.048923, 38.094440, 23.409170>,  <40.904068, 38.242195, 23.530766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.048923, 38.094440, 23.409170>,  <41.290348, 37.848183, 23.206512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048923, 38.094440, 23.409170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359105, 0.357439, -0.862138,
		-0.711868, -0.702293, 0.005346,
		-0.603563, 0.615648, 0.506646,
		40.867855, 38.279137, 23.561165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.636223, 37.782776, 22.806883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.605000, 38.116657, 23.024940>,  <40.586266, 38.316986, 23.155775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.605000, 38.116657, 23.024940>,  <40.636223, 37.782776, 22.806883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605000, 38.116657, 23.024940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482194, 0.446991, -0.753451,
		-0.872580, -0.321676, 0.367598,
		-0.078054, 0.834700, 0.545146,
		40.581585, 38.367065, 23.188484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910511, 37.933498, 22.756334>,  <40.636223, 37.782776, 22.806883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910511, 37.933498, 22.756334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.085682, 38.274296, 22.871109>,  <40.190784, 38.478775, 22.939974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.085682, 38.274296, 22.871109>,  <39.910511, 37.933498, 22.756334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085682, 38.274296, 22.871109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615884, 0.516828, -0.594622,
		-0.654908, 0.083683, 0.751060,
		0.437929, 0.851989, 0.286936,
		40.217060, 38.529892, 22.957190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434017, 38.395866, 22.680008>,  <39.910511, 37.933498, 22.756334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434017, 38.395866, 22.680008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742344, 38.646423, 22.726450>,  <39.927338, 38.796757, 22.754314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742344, 38.646423, 22.726450>,  <39.434017, 38.395866, 22.680008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742344, 38.646423, 22.726450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428088, 0.644260, -0.633775,
		-0.471792, 0.438820, 0.764755,
		0.770813, 0.626392, 0.116103,
		39.973587, 38.834339, 22.761280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230530, 39.076534, 22.845766>,  <39.434017, 38.395866, 22.680008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230530, 39.076534, 22.845766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.592186, 39.151230, 22.692057>,  <39.809177, 39.196049, 22.599831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.592186, 39.151230, 22.692057>,  <39.230530, 39.076534, 22.845766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592186, 39.151230, 22.692057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408746, 0.639857, -0.650776,
		0.124354, 0.745460, 0.654847,
		0.904136, 0.186739, -0.384273,
		39.863426, 39.207253, 22.576775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135235, 39.671555, 22.684763>,  <39.230530, 39.076534, 22.845766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135235, 39.671555, 22.684763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477398, 39.614746, 22.485518>,  <39.682693, 39.580662, 22.365971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477398, 39.614746, 22.485518>,  <39.135235, 39.671555, 22.684763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477398, 39.614746, 22.485518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304184, 0.640632, -0.705026,
		0.419234, 0.754600, 0.504799,
		0.855403, -0.142020, -0.498112,
		39.734020, 39.572140, 22.336084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330067, 40.333145, 22.345823>,  <39.135235, 39.671555, 22.684763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330067, 40.333145, 22.345823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.502972, 40.042549, 22.132147>,  <39.606716, 39.868191, 22.003941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.502972, 40.042549, 22.132147>,  <39.330067, 40.333145, 22.345823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502972, 40.042549, 22.132147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277746, 0.456329, -0.845352,
		0.857908, 0.513782, -0.004526,
		0.432262, -0.726492, -0.534190,
		39.632648, 39.824600, 21.971889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815422, 40.724186, 21.920591>,  <39.330067, 40.333145, 22.345823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815422, 40.724186, 21.920591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767609, 40.370461, 21.740059>,  <39.738922, 40.158226, 21.631739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767609, 40.370461, 21.740059>,  <39.815422, 40.724186, 21.920591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767609, 40.370461, 21.740059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014421, 0.456089, -0.889817,
		0.992725, -0.099854, -0.067270,
		-0.119533, -0.884314, -0.451332,
		39.731750, 40.105167, 21.604660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225403, 40.642654, 21.308613>,  <39.815422, 40.724186, 21.920591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225403, 40.642654, 21.308613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907127, 40.407379, 21.250763>,  <39.716164, 40.266216, 21.216053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907127, 40.407379, 21.250763>,  <40.225403, 40.642654, 21.308613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907127, 40.407379, 21.250763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060982, 0.315349, -0.947014,
		0.602627, -0.744710, -0.286789,
		-0.795690, -0.588185, -0.144624,
		39.668419, 40.230923, 21.207376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263947, 40.508675, 20.649424>,  <40.225403, 40.642654, 21.308613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263947, 40.508675, 20.649424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890236, 40.389103, 20.727160>,  <39.666008, 40.317360, 20.773802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890236, 40.389103, 20.727160>,  <40.263947, 40.508675, 20.649424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890236, 40.389103, 20.727160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248019, 0.153291, -0.956550,
		0.256149, -0.941883, -0.217356,
		-0.934277, -0.298928, 0.194340,
		39.609951, 40.299427, 20.785461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130898, 40.047337, 20.157145>,  <40.263947, 40.508675, 20.649424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130898, 40.047337, 20.157145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776997, 40.173820, 20.294102>,  <39.564655, 40.249710, 20.376276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776997, 40.173820, 20.294102>,  <40.130898, 40.047337, 20.157145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776997, 40.173820, 20.294102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269648, 0.251914, -0.929424,
		-0.380143, -0.914633, -0.137616,
		-0.884749, 0.316207, 0.342392,
		39.511574, 40.268681, 20.396820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634789, 39.923409, 19.606262>,  <40.130898, 40.047337, 20.157145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634789, 39.923409, 19.606262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439198, 40.181175, 19.841423>,  <39.321842, 40.335835, 19.982519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439198, 40.181175, 19.841423>,  <39.634789, 39.923409, 19.606262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439198, 40.181175, 19.841423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240934, 0.547973, -0.801047,
		-0.838362, -0.533340, -0.112685,
		-0.488979, 0.644417, 0.587900,
		39.292503, 40.374500, 20.017794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975529, 39.984512, 19.334698>,  <39.634789, 39.923409, 19.606262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975529, 39.984512, 19.334698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019100, 40.307430, 19.566702>,  <39.045242, 40.501179, 19.705904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019100, 40.307430, 19.566702>,  <38.975529, 39.984512, 19.334698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019100, 40.307430, 19.566702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486462, 0.552134, -0.677128,
		-0.866885, -0.208394, 0.452861,
		0.108931, 0.807292, 0.580012,
		39.051781, 40.549618, 19.740705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301117, 40.390640, 19.402639>,  <38.975529, 39.984512, 19.334698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301117, 40.390640, 19.402639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606201, 40.637413, 19.480286>,  <38.789249, 40.785477, 19.526873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606201, 40.637413, 19.480286>,  <38.301117, 40.390640, 19.402639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606201, 40.637413, 19.480286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479695, 0.740933, -0.470012,
		-0.433788, 0.265366, 0.861051,
		0.762706, 0.616928, 0.194113,
		38.835014, 40.822491, 19.538519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992584, 41.037140, 19.472078>,  <38.301117, 40.390640, 19.402639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992584, 41.037140, 19.472078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375858, 41.150616, 19.457157>,  <38.605824, 41.218700, 19.448204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375858, 41.150616, 19.457157>,  <37.992584, 41.037140, 19.472078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375858, 41.150616, 19.457157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270543, 0.855796, -0.440931,
		-0.093167, 0.432587, 0.896765,
		0.958189, 0.283693, -0.037301,
		38.663315, 41.235725, 19.445967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987225, 41.705429, 19.848783>,  <37.992584, 41.037140, 19.472078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987225, 41.705429, 19.848783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289749, 41.662231, 19.590691>,  <38.471264, 41.636311, 19.435835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289749, 41.662231, 19.590691>,  <37.987225, 41.705429, 19.848783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289749, 41.662231, 19.590691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293122, 0.825799, -0.481804,
		0.584866, 0.553527, 0.592907,
		0.756314, -0.107996, -0.645233,
		38.516644, 41.629833, 19.397121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282921, 42.312679, 19.793736>,  <37.987225, 41.705429, 19.848783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282921, 42.312679, 19.793736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436527, 42.128963, 19.473339>,  <38.528690, 42.018734, 19.281101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436527, 42.128963, 19.473339>,  <38.282921, 42.312679, 19.793736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436527, 42.128963, 19.473339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140187, 0.828448, -0.542237,
		0.912623, 0.320516, 0.253751,
		0.384015, -0.459285, -0.800993,
		38.551731, 41.991177, 19.233042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758694, 42.811272, 19.519714>,  <38.282921, 42.312679, 19.793736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758694, 42.811272, 19.519714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650887, 42.555717, 19.231499>,  <38.586201, 42.402386, 19.058569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650887, 42.555717, 19.231499>,  <38.758694, 42.811272, 19.519714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650887, 42.555717, 19.231499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150226, 0.766964, -0.623859,
		0.951205, -0.059900, -0.302691,
		-0.269522, -0.638889, -0.720541,
		38.570030, 42.364052, 19.015337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017490, 43.034302, 18.947515>,  <38.758694, 42.811272, 19.519714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017490, 43.034302, 18.947515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702072, 42.820850, 18.825241>,  <38.512821, 42.692780, 18.751877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702072, 42.820850, 18.825241>,  <39.017490, 43.034302, 18.947515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702072, 42.820850, 18.825241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322579, 0.782101, -0.533162,
		0.523585, -0.321813, -0.788857,
		-0.788544, -0.533624, -0.305686,
		38.465508, 42.660763, 18.733536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114864, 43.093468, 18.263823>,  <39.017490, 43.034302, 18.947515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114864, 43.093468, 18.263823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741379, 42.965786, 18.328676>,  <38.517288, 42.889179, 18.367588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741379, 42.965786, 18.328676>,  <39.114864, 43.093468, 18.263823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741379, 42.965786, 18.328676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340800, 0.653697, -0.675674,
		0.109690, -0.686142, -0.719150,
		-0.933715, -0.319201, 0.162134,
		38.461266, 42.870026, 18.377316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757229, 43.067375, 17.639357>,  <39.114864, 43.093468, 18.263823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757229, 43.067375, 17.639357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431583, 43.038410, 17.869823>,  <38.236195, 43.021030, 18.008104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431583, 43.038410, 17.869823>,  <38.757229, 43.067375, 17.639357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431583, 43.038410, 17.869823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444486, 0.716206, -0.538034,
		-0.373692, -0.694122, -0.615263,
		-0.814117, -0.072417, 0.576168,
		38.187347, 43.016685, 18.042673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202305, 42.852200, 17.126234>,  <38.757229, 43.067375, 17.639357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202305, 42.852200, 17.126234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093254, 43.051826, 17.455259>,  <38.027824, 43.171600, 17.652674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093254, 43.051826, 17.455259>,  <38.202305, 42.852200, 17.126234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093254, 43.051826, 17.455259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157519, 0.820260, -0.549873,
		-0.949138, -0.279479, -0.145012,
		-0.272625, 0.499063, 0.822564,
		38.011467, 43.201546, 17.702028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555195, 43.096634, 17.024862>,  <38.202305, 42.852200, 17.126234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555195, 43.096634, 17.024862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782001, 43.312893, 17.273439>,  <37.918087, 43.442646, 17.422586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782001, 43.312893, 17.273439>,  <37.555195, 43.096634, 17.024862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782001, 43.312893, 17.273439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181283, 0.817859, -0.546116,
		-0.803507, 0.197003, 0.561753,
		0.567021, 0.540644, 0.621442,
		37.952106, 43.475086, 17.459871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908104, 43.161163, 17.050867>,  <37.555195, 43.096634, 17.024862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908104, 43.161163, 17.050867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084358, 43.134987, 17.408985>,  <37.190109, 43.119282, 17.623856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084358, 43.134987, 17.408985>,  <36.908104, 43.161163, 17.050867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084358, 43.134987, 17.408985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853643, 0.278012, 0.440458,
		-0.277729, -0.958346, 0.066635,
		0.440636, -0.065445, 0.895297,
		37.216549, 43.115353, 17.677574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387901, 43.229431, 17.521147>,  <36.908104, 43.161163, 17.050867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387901, 43.229431, 17.521147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.690609, 43.372066, 17.740290>,  <36.872234, 43.457649, 17.871775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.690609, 43.372066, 17.740290>,  <36.387901, 43.229431, 17.521147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690609, 43.372066, 17.740290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604351, 0.701081, 0.378478,
		-0.249130, -0.617517, 0.746061,
		0.756766, 0.356592, 0.547857,
		36.917637, 43.479046, 17.904646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070538, 43.540810, 18.086323>,  <36.387901, 43.229431, 17.521147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070538, 43.540810, 18.086323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424057, 43.712921, 18.012823>,  <36.636169, 43.816189, 17.968723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424057, 43.712921, 18.012823>,  <36.070538, 43.540810, 18.086323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424057, 43.712921, 18.012823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454628, 0.882562, -0.119987,
		0.110541, 0.189581, 0.975623,
		0.883795, 0.430282, -0.183749,
		36.689194, 43.842007, 17.957699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635441, 43.089344, 18.529230>,  <36.070538, 43.540810, 18.086323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635441, 43.089344, 18.529230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264114, 42.957729, 18.459984>,  <35.041321, 42.878761, 18.418436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264114, 42.957729, 18.459984>,  <35.635441, 43.089344, 18.529230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264114, 42.957729, 18.459984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112710, -0.692758, 0.712308,
		-0.354303, 0.641733, 0.680182,
		-0.928314, -0.329036, -0.173116,
		34.985619, 42.859020, 18.408049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208229, 43.118248, 19.146971>,  <35.635441, 43.089344, 18.529230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208229, 43.118248, 19.146971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019855, 42.846054, 18.922413>,  <34.906830, 42.682739, 18.787678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019855, 42.846054, 18.922413>,  <35.208229, 43.118248, 19.146971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019855, 42.846054, 18.922413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035372, -0.650434, 0.758739,
		-0.881457, 0.337461, 0.330383,
		-0.470938, -0.680482, -0.561393,
		34.878574, 42.641911, 18.753996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779293, 42.792553, 19.671074>,  <35.208229, 43.118248, 19.146971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779293, 42.792553, 19.671074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780338, 42.526081, 19.372759>,  <34.780964, 42.366199, 19.193769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780338, 42.526081, 19.372759>,  <34.779293, 42.792553, 19.671074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780338, 42.526081, 19.372759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157077, -0.736257, 0.658219,
		-0.987583, -0.118865, 0.102719,
		0.002611, -0.666181, -0.745786,
		34.781120, 42.326225, 19.149023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290203, 42.194668, 19.870724>,  <34.779293, 42.792553, 19.671074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290203, 42.194668, 19.870724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551746, 42.078705, 19.591175>,  <34.708672, 42.009129, 19.423447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551746, 42.078705, 19.591175>,  <34.290203, 42.194668, 19.870724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551746, 42.078705, 19.591175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394453, -0.657608, 0.641840,
		-0.645651, -0.695348, -0.315635,
		0.653867, -0.289902, -0.698867,
		34.747906, 41.991734, 19.381514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293968, 41.397072, 19.901869>,  <34.290203, 42.194668, 19.870724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293968, 41.397072, 19.901869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624840, 41.490063, 19.697231>,  <34.823364, 41.545856, 19.574448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624840, 41.490063, 19.697231>,  <34.293968, 41.397072, 19.901869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624840, 41.490063, 19.697231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505664, -0.705045, 0.497208,
		-0.245109, -0.669976, -0.700753,
		0.827180, 0.232475, -0.511595,
		34.872993, 41.559807, 19.543753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517681, 40.770927, 19.737755>,  <34.293968, 41.397072, 19.901869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517681, 40.770927, 19.737755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846962, 40.996269, 19.709551>,  <35.044533, 41.131474, 19.692629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846962, 40.996269, 19.709551>,  <34.517681, 40.770927, 19.737755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846962, 40.996269, 19.709551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526847, -0.711703, 0.464661,
		0.211584, -0.419659, -0.882677,
		0.823204, 0.563351, -0.070511,
		35.093922, 41.165276, 19.688398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107594, 40.277191, 19.424019>,  <34.517681, 40.770927, 19.737755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107594, 40.277191, 19.424019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267071, 40.588833, 19.617529>,  <35.362759, 40.775818, 19.733635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267071, 40.588833, 19.617529>,  <35.107594, 40.277191, 19.424019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267071, 40.588833, 19.617529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592225, -0.621506, 0.512836,
		0.700221, 0.082039, -0.709197,
		0.398697, 0.779102, 0.483777,
		35.386681, 40.822563, 19.762661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805706, 40.058346, 19.621746>,  <35.107594, 40.277191, 19.424019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805706, 40.058346, 19.621746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744640, 40.392067, 19.833643>,  <35.708000, 40.592300, 19.960781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744640, 40.392067, 19.833643>,  <35.805706, 40.058346, 19.621746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744640, 40.392067, 19.833643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476859, -0.407312, 0.778911,
		0.865621, 0.371521, -0.335667,
		-0.152660, 0.834307, 0.529741,
		35.698841, 40.642361, 19.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368999, 40.271526, 19.764486>,  <35.805706, 40.058346, 19.621746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368999, 40.271526, 19.764486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106991, 40.408527, 20.033897>,  <35.949787, 40.490726, 20.195545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106991, 40.408527, 20.033897>,  <36.368999, 40.271526, 19.764486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106991, 40.408527, 20.033897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501344, -0.469910, 0.726525,
		0.565332, 0.813559, 0.136091,
		-0.655022, 0.342499, 0.673529,
		35.910484, 40.511276, 20.235956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723164, 40.676792, 20.179235>,  <36.368999, 40.271526, 19.764486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723164, 40.676792, 20.179235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396866, 40.590073, 20.393732>,  <36.201088, 40.538040, 20.522430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396866, 40.590073, 20.393732>,  <36.723164, 40.676792, 20.179235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396866, 40.590073, 20.393732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577443, -0.251707, 0.776662,
		-0.033406, 0.943208, 0.330520,
		-0.815747, -0.216801, 0.536240,
		36.152142, 40.525032, 20.554604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894661, 40.980312, 20.809040>,  <36.723164, 40.676792, 20.179235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894661, 40.980312, 20.809040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612183, 40.699741, 20.847599>,  <36.442696, 40.531399, 20.870733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612183, 40.699741, 20.847599>,  <36.894661, 40.980312, 20.809040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612183, 40.699741, 20.847599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533619, -0.437808, 0.723585,
		-0.465336, 0.562432, 0.683471,
		-0.706196, -0.701423, 0.096396,
		36.400322, 40.489315, 20.876518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745514, 40.931591, 21.461622>,  <36.894661, 40.980312, 20.809040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745514, 40.931591, 21.461622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648609, 40.572361, 21.314774>,  <36.590466, 40.356823, 21.226664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648609, 40.572361, 21.314774>,  <36.745514, 40.931591, 21.461622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648609, 40.572361, 21.314774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588443, -0.436860, 0.680360,
		-0.771392, -0.051207, 0.634297,
		-0.242260, -0.898071, -0.367122,
		36.575932, 40.302940, 21.204638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980705, 40.556202, 22.002436>,  <36.745514, 40.931591, 21.461622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980705, 40.556202, 22.002436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870808, 40.258797, 21.758564>,  <36.804871, 40.080353, 21.612242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870808, 40.258797, 21.758564>,  <36.980705, 40.556202, 22.002436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870808, 40.258797, 21.758564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450725, -0.659686, 0.601384,
		-0.849331, -0.109570, 0.516364,
		-0.274744, -0.743511, -0.609677,
		36.788383, 40.035744, 21.575661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669823, 40.053047, 22.383108>,  <36.980705, 40.556202, 22.002436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669823, 40.053047, 22.383108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796749, 39.852757, 22.060970>,  <36.872906, 39.732582, 21.867687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796749, 39.852757, 22.060970>,  <36.669823, 40.053047, 22.383108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796749, 39.852757, 22.060970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372665, -0.715071, 0.591434,
		-0.872028, -0.487794, -0.040297,
		0.317313, -0.500730, -0.805346,
		36.891945, 39.702538, 21.819366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440262, 39.395760, 22.546551>,  <36.669823, 40.053047, 22.383108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440262, 39.395760, 22.546551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744137, 39.348312, 22.290798>,  <36.926460, 39.319843, 22.137348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744137, 39.348312, 22.290798>,  <36.440262, 39.395760, 22.546551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744137, 39.348312, 22.290798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391271, -0.701952, 0.595123,
		-0.519406, -0.702278, -0.486851,
		0.759687, -0.118619, -0.639379,
		36.972042, 39.312725, 22.098984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395657, 38.736889, 22.322363>,  <36.440262, 39.395760, 22.546551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395657, 38.736889, 22.322363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777962, 38.813557, 22.233114>,  <37.007343, 38.859558, 22.179565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777962, 38.813557, 22.233114>,  <36.395657, 38.736889, 22.322363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777962, 38.813557, 22.233114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284245, -0.796981, 0.532941,
		-0.075671, -0.572785, -0.816206,
		0.955761, 0.191674, -0.223119,
		37.064690, 38.871059, 22.166178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746552, 38.115025, 21.988823>,  <36.395657, 38.736889, 22.322363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746552, 38.115025, 21.988823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045471, 38.339443, 22.131247>,  <37.224823, 38.474094, 22.216702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045471, 38.339443, 22.131247>,  <36.746552, 38.115025, 21.988823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045471, 38.339443, 22.131247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409267, -0.810756, 0.418540,
		0.523496, -0.167050, -0.835492,
		0.747296, 0.561043, 0.356060,
		37.269661, 38.507755, 22.238064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318184, 37.667233, 21.985453>,  <36.746552, 38.115025, 21.988823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318184, 37.667233, 21.985453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.441631, 37.967663, 22.218910>,  <37.515697, 38.147923, 22.358984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.441631, 37.967663, 22.218910>,  <37.318184, 37.667233, 21.985453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441631, 37.967663, 22.218910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474811, -0.653325, 0.589679,
		0.824203, 0.095135, -0.558247,
		0.308617, 0.751077, 0.583643,
		37.534218, 38.192986, 22.394003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032780, 37.618496, 22.058441>,  <37.318184, 37.667233, 21.985453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032780, 37.618496, 22.058441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929249, 37.836964, 22.377115>,  <37.867130, 37.968044, 22.568319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929249, 37.836964, 22.377115>,  <38.032780, 37.618496, 22.058441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929249, 37.836964, 22.377115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427854, -0.674640, 0.601499,
		0.865995, 0.496552, -0.059062,
		-0.258830, 0.546166, 0.796687,
		37.851601, 38.000813, 22.616121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.095707, 36.785133, 25.130514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761387, 36.890385, 25.323263>,  <41.560795, 36.953537, 25.438913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761387, 36.890385, 25.323263>,  <42.095707, 36.785133, 25.130514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761387, 36.890385, 25.323263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312059, -0.494453, 0.811256,
		0.451727, 0.828420, 0.331153,
		-0.835800, 0.263127, 0.481874,
		41.510647, 36.969322, 25.467825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361698, 36.942165, 25.740084>,  <42.095707, 36.785133, 25.130514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361698, 36.942165, 25.740084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973392, 36.871037, 25.804567>,  <41.740410, 36.828362, 25.843258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973392, 36.871037, 25.804567>,  <42.361698, 36.942165, 25.740084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973392, 36.871037, 25.804567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231719, -0.519251, 0.822609,
		-0.062566, 0.835918, 0.545276,
		-0.970769, -0.177818, 0.161210,
		41.682163, 36.817692, 25.852930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200848, 37.163208, 26.437859>,  <42.361698, 36.942165, 25.740084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200848, 37.163208, 26.437859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899014, 36.909630, 26.370075>,  <41.717915, 36.757484, 26.329405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899014, 36.909630, 26.370075>,  <42.200848, 37.163208, 26.437859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899014, 36.909630, 26.370075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113537, -0.380479, 0.917794,
		-0.646307, 0.673312, 0.359080,
		-0.754584, -0.633945, -0.169460,
		41.672638, 36.719444, 26.319237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865623, 37.092880, 27.112146>,  <42.200848, 37.163208, 26.437859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865623, 37.092880, 27.112146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747543, 36.784340, 26.886621>,  <41.676697, 36.599216, 26.751307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747543, 36.784340, 26.886621>,  <41.865623, 37.092880, 27.112146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747543, 36.784340, 26.886621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087878, -0.609528, 0.787879,
		-0.951387, 0.183032, 0.247714,
		-0.295196, -0.771346, -0.563813,
		41.658985, 36.552937, 26.717478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407715, 36.770168, 27.615725>,  <41.865623, 37.092880, 27.112146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407715, 36.770168, 27.615725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528423, 36.509682, 27.337202>,  <41.600849, 36.353390, 27.170088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528423, 36.509682, 27.337202>,  <41.407715, 36.770168, 27.615725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528423, 36.509682, 27.337202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128682, -0.751497, 0.647065,
		-0.944655, -0.105666, -0.310583,
		0.301775, -0.651220, -0.696308,
		41.618958, 36.314316, 27.128309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014179, 36.245113, 27.761131>,  <41.407715, 36.770168, 27.615725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014179, 36.245113, 27.761131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316189, 36.097839, 27.544106>,  <41.497395, 36.009476, 27.413891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316189, 36.097839, 27.544106>,  <41.014179, 36.245113, 27.761131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316189, 36.097839, 27.544106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000215, -0.827602, 0.561316,
		-0.655697, -0.423690, -0.624938,
		0.755024, -0.368187, -0.542564,
		41.542698, 35.987385, 27.381336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825642, 35.599705, 27.703873>,  <41.014179, 36.245113, 27.761131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825642, 35.599705, 27.703873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221413, 35.635792, 27.658449>,  <41.458874, 35.657444, 27.631195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221413, 35.635792, 27.658449>,  <40.825642, 35.599705, 27.703873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221413, 35.635792, 27.658449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136719, -0.841508, 0.522659,
		-0.048407, -0.532658, -0.844945,
		0.989427, 0.090219, -0.113559,
		41.518242, 35.662857, 27.624382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069862, 34.920353, 27.486994>,  <40.825642, 35.599705, 27.703873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069862, 34.920353, 27.486994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374451, 35.120434, 27.651897>,  <41.557201, 35.240482, 27.750839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374451, 35.120434, 27.651897>,  <41.069862, 34.920353, 27.486994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374451, 35.120434, 27.651897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285888, -0.829971, 0.478974,
		0.581750, -0.246863, -0.775000,
		0.761469, 0.500207, 0.412261,
		41.602890, 35.270496, 27.775576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622089, 34.396736, 27.455790>,  <41.069862, 34.920353, 27.486994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622089, 34.396736, 27.455790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760849, 34.662525, 27.720558>,  <41.844105, 34.821999, 27.879419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760849, 34.662525, 27.720558>,  <41.622089, 34.396736, 27.455790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760849, 34.662525, 27.720558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270153, -0.746625, 0.607921,
		0.898154, -0.032066, -0.438511,
		0.346897, 0.664472, 0.661921,
		41.864918, 34.861866, 27.919134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157284, 34.063774, 27.699429>,  <41.622089, 34.396736, 27.455790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157284, 34.063774, 27.699429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119652, 34.355583, 27.970409>,  <42.097073, 34.530670, 28.132998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119652, 34.355583, 27.970409>,  <42.157284, 34.063774, 27.699429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119652, 34.355583, 27.970409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361441, -0.609013, 0.706020,
		0.927637, 0.311280, -0.206387,
		-0.094077, 0.729526, 0.677452,
		42.091427, 34.574440, 28.173645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838905, 34.125000, 28.203238>,  <42.157284, 34.063774, 27.699429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838905, 34.125000, 28.203238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506531, 34.249390, 28.387777>,  <42.307106, 34.324024, 28.498501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506531, 34.249390, 28.387777>,  <42.838905, 34.125000, 28.203238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506531, 34.249390, 28.387777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231884, -0.560195, 0.795243,
		0.505746, 0.767774, 0.393375,
		-0.830934, 0.310974, 0.461351,
		42.257252, 34.342682, 28.526182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130798, 34.355614, 28.896898>,  <42.838905, 34.125000, 28.203238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130798, 34.355614, 28.896898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734535, 34.329185, 28.944605>,  <42.496777, 34.313328, 28.973228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734535, 34.329185, 28.944605>,  <43.130798, 34.355614, 28.896898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734535, 34.329185, 28.944605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135108, -0.358249, 0.923799,
		-0.018308, 0.931286, 0.363830,
		-0.990662, -0.066069, 0.119265,
		42.437336, 34.309364, 28.980385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081112, 34.639423, 29.534130>,  <43.130798, 34.355614, 28.896898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081112, 34.639423, 29.534130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817173, 34.359615, 29.424383>,  <42.658810, 34.191730, 29.358534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817173, 34.359615, 29.424383>,  <43.081112, 34.639423, 29.534130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817173, 34.359615, 29.424383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063400, -0.415671, 0.907302,
		-0.748722, 0.581284, 0.318628,
		-0.659846, -0.699518, -0.274368,
		42.619221, 34.149761, 29.342073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688675, 34.544270, 30.098728>,  <43.081112, 34.639423, 29.534130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688675, 34.544270, 30.098728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.655773, 34.198509, 29.900314>,  <42.636032, 33.991055, 29.781267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.655773, 34.198509, 29.900314>,  <42.688675, 34.544270, 30.098728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655773, 34.198509, 29.900314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159111, -0.502727, 0.849676,
		-0.983828, -0.009033, 0.178888,
		-0.082257, -0.864398, -0.496034,
		42.631096, 33.939190, 29.751505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472672, 34.895641, 30.740707>,  <42.688675, 34.544270, 30.098728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472672, 34.895641, 30.740707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692688, 35.189888, 30.898859>,  <42.824699, 35.366436, 30.993750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692688, 35.189888, 30.898859>,  <42.472672, 34.895641, 30.740707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692688, 35.189888, 30.898859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635611, 0.675833, -0.373160,
		-0.541711, -0.046052, 0.839302,
		0.550043, 0.735615, 0.395377,
		42.857700, 35.410572, 31.017471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060238, 35.279755, 31.030216>,  <42.472672, 34.895641, 30.740707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060238, 35.279755, 31.030216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347393, 35.556847, 31.002636>,  <42.519688, 35.723103, 30.986088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347393, 35.556847, 31.002636>,  <42.060238, 35.279755, 31.030216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347393, 35.556847, 31.002636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691697, 0.698591, -0.183101,
		-0.078673, 0.179139, 0.980673,
		0.717890, 0.692734, -0.068950,
		42.562759, 35.764668, 30.981951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787971, 35.865482, 31.424358>,  <42.060238, 35.279755, 31.030216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787971, 35.865482, 31.424358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063572, 36.006901, 31.171288>,  <42.228931, 36.091751, 31.019445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063572, 36.006901, 31.171288>,  <41.787971, 35.865482, 31.424358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063572, 36.006901, 31.171288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669561, 0.644656, -0.368927,
		0.277426, 0.677808, 0.680890,
		0.689001, 0.353548, -0.632678,
		42.270271, 36.112965, 30.981483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703808, 36.605579, 31.433851>,  <41.787971, 35.865482, 31.424358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703808, 36.605579, 31.433851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.904106, 36.557220, 31.091007>,  <42.024284, 36.528206, 30.885302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.904106, 36.557220, 31.091007>,  <41.703808, 36.605579, 31.433851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904106, 36.557220, 31.091007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550929, 0.719223, -0.423314,
		0.667629, 0.684180, 0.293546,
		0.500748, -0.120894, -0.857109,
		42.054329, 36.520950, 30.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914185, 37.355442, 31.256399>,  <41.703808, 36.605579, 31.433851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914185, 37.355442, 31.256399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.959080, 37.135563, 30.925283>,  <41.986015, 37.003635, 30.726614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.959080, 37.135563, 30.925283>,  <41.914185, 37.355442, 31.256399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959080, 37.135563, 30.925283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395201, 0.739640, -0.544745,
		0.911712, 0.388284, -0.134227,
		0.112236, -0.549697, -0.827790,
		41.992752, 36.970654, 30.676947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012360, 37.858429, 30.676451>,  <41.914185, 37.355442, 31.256399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012360, 37.858429, 30.676451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962109, 37.531189, 30.451975>,  <41.931957, 37.334846, 30.317289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962109, 37.531189, 30.451975>,  <42.012360, 37.858429, 30.676451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962109, 37.531189, 30.451975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322706, 0.568606, -0.756670,
		0.938125, 0.086039, -0.335438,
		-0.125629, -0.818098, -0.561188,
		41.924419, 37.285759, 30.283619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516991, 37.912876, 30.089191>,  <42.012360, 37.858429, 30.676451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516991, 37.912876, 30.089191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222942, 37.660538, 29.989895>,  <42.046513, 37.509132, 29.930317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222942, 37.660538, 29.989895>,  <42.516991, 37.912876, 30.089191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222942, 37.660538, 29.989895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237484, 0.582604, -0.777287,
		0.634979, -0.512446, -0.578101,
		-0.735121, -0.630850, -0.248243,
		42.002403, 37.471283, 29.915422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566269, 37.779911, 29.369915>,  <42.516991, 37.912876, 30.089191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566269, 37.779911, 29.369915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189587, 37.673843, 29.452736>,  <41.963577, 37.610203, 29.502428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189587, 37.673843, 29.452736>,  <42.566269, 37.779911, 29.369915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189587, 37.673843, 29.452736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297078, 0.366591, -0.881678,
		0.157891, -0.891794, -0.423998,
		-0.941709, -0.265170, 0.207051,
		41.907074, 37.594292, 29.514851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241165, 37.630157, 28.731289>,  <42.566269, 37.779911, 29.369915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241165, 37.630157, 28.731289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934158, 37.701649, 28.977535>,  <41.749954, 37.744541, 29.125282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934158, 37.701649, 28.977535>,  <42.241165, 37.630157, 28.731289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934158, 37.701649, 28.977535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498465, 0.437435, -0.748454,
		-0.403059, -0.881310, -0.246649,
		-0.767513, 0.178725, 0.615615,
		41.703903, 37.755264, 29.162220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541271, 37.344799, 28.435064>,  <42.241165, 37.630157, 28.731289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541271, 37.344799, 28.435064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.457653, 37.637333, 28.694740>,  <41.407482, 37.812855, 28.850546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.457653, 37.637333, 28.694740>,  <41.541271, 37.344799, 28.435064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457653, 37.637333, 28.694740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565001, 0.451515, -0.690586,
		-0.798170, -0.511153, 0.318821,
		-0.209042, 0.731339, 0.649188,
		41.394939, 37.856735, 28.889496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916954, 37.434803, 28.206509>,  <41.541271, 37.344799, 28.435064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916954, 37.434803, 28.206509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973015, 37.752247, 28.443335>,  <41.006653, 37.942715, 28.585430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.973015, 37.752247, 28.443335>,  <40.916954, 37.434803, 28.206509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973015, 37.752247, 28.443335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694139, 0.505168, -0.512812,
		-0.706065, -0.339104, 0.621676,
		0.140154, 0.793608, 0.592067,
		41.015060, 37.990330, 28.620955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301220, 37.821266, 28.216524>,  <40.916954, 37.434803, 28.206509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301220, 37.821266, 28.216524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589035, 38.074585, 28.330505>,  <40.761726, 38.226574, 28.398895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589035, 38.074585, 28.330505>,  <40.301220, 37.821266, 28.216524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589035, 38.074585, 28.330505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442711, 0.734453, -0.514379,
		-0.535039, 0.243965, 0.808835,
		0.719542, 0.633293, 0.284955,
		40.804897, 38.264572, 28.415993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933937, 38.403667, 28.383907>,  <40.301220, 37.821266, 28.216524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933937, 38.403667, 28.383907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.300209, 38.547298, 28.311691>,  <40.519974, 38.633476, 28.268362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.300209, 38.547298, 28.311691>,  <39.933937, 38.403667, 28.383907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300209, 38.547298, 28.311691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401144, 0.844188, -0.355571,
		0.024734, 0.398012, 0.917047,
		0.915681, 0.359073, -0.180540,
		40.574913, 38.655022, 28.257528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904247, 39.108578, 28.633289>,  <39.933937, 38.403667, 28.383907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904247, 39.108578, 28.633289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.203751, 39.087437, 28.368996>,  <40.383453, 39.074753, 28.210421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.203751, 39.087437, 28.368996>,  <39.904247, 39.108578, 28.633289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203751, 39.087437, 28.368996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453100, 0.686748, -0.568399,
		0.483799, 0.724971, 0.490260,
		0.748759, -0.052854, -0.660732,
		40.428379, 39.071579, 28.170776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464684, 39.645245, 28.987648>,  <39.904247, 39.108578, 28.633289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464684, 39.645245, 28.987648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093845, 39.787613, 28.940634>,  <38.871342, 39.873035, 28.912426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093845, 39.787613, 28.940634>,  <39.464684, 39.645245, 28.987648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093845, 39.787613, 28.940634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284341, -0.463503, 0.839235,
		0.244224, 0.811470, 0.530915,
		-0.927095, 0.355922, -0.117536,
		38.815716, 39.894390, 28.905373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361202, 40.042973, 29.668369>,  <39.464684, 39.645245, 28.987648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361202, 40.042973, 29.668369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040001, 39.913452, 29.468235>,  <38.847279, 39.835739, 29.348154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040001, 39.913452, 29.468235>,  <39.361202, 40.042973, 29.668369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040001, 39.913452, 29.468235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168073, -0.682417, 0.711378,
		-0.571783, 0.655333, 0.493562,
		-0.803004, -0.323799, -0.500338,
		38.799099, 39.816311, 29.318134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961117, 39.983360, 30.182135>,  <39.361202, 40.042973, 29.668369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961117, 39.983360, 30.182135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.796814, 39.759594, 29.894152>,  <38.698231, 39.625336, 29.721363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.796814, 39.759594, 29.894152>,  <38.961117, 39.983360, 30.182135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796814, 39.759594, 29.894152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103732, -0.755845, 0.646482,
		-0.905825, 0.340229, 0.252439,
		-0.410756, -0.559413, -0.719955,
		38.673588, 39.591770, 29.678165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311893, 39.757530, 30.444786>,  <38.961117, 39.983360, 30.182135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311893, 39.757530, 30.444786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415176, 39.493877, 30.162264>,  <38.477146, 39.335686, 29.992750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415176, 39.493877, 30.162264>,  <38.311893, 39.757530, 30.444786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415176, 39.493877, 30.162264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252623, -0.751728, 0.609169,
		-0.932475, 0.021136, -0.360616,
		0.258210, -0.659134, -0.706307,
		38.492638, 39.296139, 29.950373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771030, 39.235767, 30.550053>,  <38.311893, 39.757530, 30.444786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771030, 39.235767, 30.550053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079685, 39.065964, 30.360586>,  <38.264877, 38.964081, 30.246906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079685, 39.065964, 30.360586>,  <37.771030, 39.235767, 30.550053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079685, 39.065964, 30.360586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208843, -0.872498, 0.441737,
		-0.600796, -0.241940, -0.761912,
		0.771641, -0.424514, -0.473666,
		38.311176, 38.938610, 30.218487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581863, 38.619553, 30.295650>,  <37.771030, 39.235767, 30.550053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581863, 38.619553, 30.295650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979561, 38.576958, 30.290880>,  <38.218178, 38.551403, 30.288017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979561, 38.576958, 30.290880>,  <37.581863, 38.619553, 30.295650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979561, 38.576958, 30.290880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093444, -0.916144, 0.389807,
		-0.052434, -0.386448, -0.920819,
		0.994243, -0.106484, -0.011926,
		38.277832, 38.545013, 30.287302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609985, 37.872112, 30.045948>,  <37.581863, 38.619553, 30.295650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609985, 37.872112, 30.045948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.954815, 37.995731, 30.206606>,  <38.161713, 38.069901, 30.302999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.954815, 37.995731, 30.206606>,  <37.609985, 37.872112, 30.045948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954815, 37.995731, 30.206606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149681, -0.912455, 0.380818,
		0.484171, -0.268175, -0.832863,
		0.862076, 0.309044, 0.401643,
		38.213436, 38.088444, 30.327099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865566, 37.240265, 29.958422>,  <37.609985, 37.872112, 30.045948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865566, 37.240265, 29.958422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057903, 37.444260, 30.243717>,  <38.173306, 37.566658, 30.414894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057903, 37.444260, 30.243717>,  <37.865566, 37.240265, 29.958422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057903, 37.444260, 30.243717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106009, -0.841294, 0.530082,
		0.870377, -0.179274, -0.458591,
		0.480839, 0.509985, 0.713238,
		38.202156, 37.597256, 30.457689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276787, 36.690060, 30.216778>,  <37.865566, 37.240265, 29.958422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276787, 36.690060, 30.216778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289474, 36.980209, 30.491829>,  <38.297089, 37.154297, 30.656860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289474, 36.980209, 30.491829>,  <38.276787, 36.690060, 30.216778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289474, 36.980209, 30.491829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064528, -0.688024, 0.722813,
		0.997412, 0.021445, -0.068629,
		0.031718, 0.725371, 0.687627,
		38.298988, 37.197819, 30.698116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815659, 36.463997, 30.694944>,  <38.276787, 36.690060, 30.216778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815659, 36.463997, 30.694944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601337, 36.718300, 30.917196>,  <38.472744, 36.870880, 31.050549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601337, 36.718300, 30.917196>,  <38.815659, 36.463997, 30.694944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601337, 36.718300, 30.917196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045482, -0.635377, 0.770862,
		0.843115, 0.438304, 0.311523,
		-0.535807, 0.635756, 0.555631,
		38.440594, 36.909027, 31.083885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188171, 36.592804, 31.347660>,  <38.815659, 36.463997, 30.694944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188171, 36.592804, 31.347660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806034, 36.680210, 31.427229>,  <38.576752, 36.732655, 31.474970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806034, 36.680210, 31.427229>,  <39.188171, 36.592804, 31.347660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806034, 36.680210, 31.427229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055759, -0.527776, 0.847552,
		0.290194, 0.820793, 0.492022,
		-0.955342, 0.218520, 0.198924,
		38.519432, 36.745766, 31.486906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157276, 36.717438, 32.071381>,  <39.188171, 36.592804, 31.347660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157276, 36.717438, 32.071381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791340, 36.625000, 31.938925>,  <38.571777, 36.569538, 31.859451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791340, 36.625000, 31.938925>,  <39.157276, 36.717438, 32.071381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791340, 36.625000, 31.938925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133581, -0.600685, 0.788248,
		-0.381072, 0.765358, 0.518663,
		-0.914845, -0.231095, -0.331141,
		38.516888, 36.555672, 31.839582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.520725, 43.269901, 27.227541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205578, 43.101803, 27.047468>,  <39.016491, 43.000942, 26.939425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205578, 43.101803, 27.047468>,  <39.520725, 43.269901, 27.227541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205578, 43.101803, 27.047468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034316, -0.759815, 0.649233,
		-0.614892, 0.496059, 0.613052,
		-0.787864, -0.420245, -0.450182,
		38.969219, 42.975731, 26.912415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075157, 43.047771, 27.823528>,  <39.520725, 43.269901, 27.227541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075157, 43.047771, 27.823528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953648, 42.821213, 27.517086>,  <38.880741, 42.685280, 27.333220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953648, 42.821213, 27.517086>,  <39.075157, 43.047771, 27.823528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953648, 42.821213, 27.517086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123624, -0.820740, 0.557766,
		-0.944690, 0.074725, 0.319338,
		-0.303772, -0.566394, -0.766107,
		38.862514, 42.651295, 27.287254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499432, 42.582531, 28.113171>,  <39.075157, 43.047771, 27.823528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499432, 42.582531, 28.113171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593719, 42.396156, 27.772034>,  <38.650291, 42.284332, 27.567352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593719, 42.396156, 27.772034>,  <38.499432, 42.582531, 28.113171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593719, 42.396156, 27.772034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259560, -0.875876, 0.406780,
		-0.936517, 0.125477, -0.327400,
		0.235721, -0.465936, -0.852842,
		38.664436, 42.256374, 27.516182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990967, 42.042309, 27.972916>,  <38.499432, 42.582531, 28.113171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990967, 42.042309, 27.972916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319859, 41.930569, 27.774561>,  <38.517193, 41.863525, 27.655548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319859, 41.930569, 27.774561>,  <37.990967, 42.042309, 27.972916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319859, 41.930569, 27.774561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057192, -0.907405, 0.416347,
		-0.566276, -0.313972, -0.762071,
		0.822229, -0.279351, -0.495885,
		38.566528, 41.846764, 27.625795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798439, 41.401165, 27.679384>,  <37.990967, 42.042309, 27.972916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798439, 41.401165, 27.679384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196087, 41.442299, 27.692919>,  <38.434677, 41.466980, 27.701040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196087, 41.442299, 27.692919>,  <37.798439, 41.401165, 27.679384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196087, 41.442299, 27.692919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077142, -0.892198, 0.445008,
		0.075951, -0.439783, -0.894887,
		0.994123, 0.102832, 0.033837,
		38.494324, 41.473148, 27.703070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053303, 40.778912, 27.398355>,  <37.798439, 41.401165, 27.679384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053303, 40.778912, 27.398355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359287, 40.924492, 27.610912>,  <38.542877, 41.011841, 27.738445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359287, 40.924492, 27.610912>,  <38.053303, 40.778912, 27.398355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359287, 40.924492, 27.610912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145087, -0.901210, 0.408375,
		0.627522, -0.235293, -0.742195,
		0.764961, 0.363948, 0.531391,
		38.588776, 41.033676, 27.770330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522484, 40.320297, 27.266718>,  <38.053303, 40.778912, 27.398355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522484, 40.320297, 27.266718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632706, 40.513569, 27.599129>,  <38.698841, 40.629532, 27.798574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632706, 40.513569, 27.599129>,  <38.522484, 40.320297, 27.266718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632706, 40.513569, 27.599129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057530, -0.871234, 0.487486,
		0.959562, -0.086521, -0.267872,
		0.275557, 0.483183, 0.831025,
		38.715374, 40.658524, 27.848436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969921, 39.831364, 27.547932>,  <38.522484, 40.320297, 27.266718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969921, 39.831364, 27.547932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895260, 40.083748, 27.849142>,  <38.850464, 40.235180, 28.029869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895260, 40.083748, 27.849142>,  <38.969921, 39.831364, 27.547932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895260, 40.083748, 27.849142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104379, -0.749423, 0.653812,
		0.976866, 0.200635, 0.074022,
		-0.186651, 0.630960, 0.753028,
		38.839264, 40.273037, 28.075050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357052, 39.658730, 28.117348>,  <38.969921, 39.831364, 27.547932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357052, 39.658730, 28.117348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061245, 39.877094, 28.274878>,  <38.883762, 40.008114, 28.369396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061245, 39.877094, 28.274878>,  <39.357052, 39.658730, 28.117348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061245, 39.877094, 28.274878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100478, -0.668022, 0.737327,
		0.665599, 0.505693, 0.548865,
		-0.739515, 0.545913, 0.393824,
		38.839390, 40.040867, 28.393024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990078, 39.886433, 28.271198>,  <39.357052, 39.658730, 28.117348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990078, 39.886433, 28.271198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193890, 39.645950, 28.024969>,  <40.316177, 39.501659, 27.877232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193890, 39.645950, 28.024969>,  <39.990078, 39.886433, 28.271198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193890, 39.645950, 28.024969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182925, 0.623367, -0.760232,
		0.840786, 0.499961, 0.207646,
		0.509526, -0.601209, -0.615574,
		40.346748, 39.465588, 27.840298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236549, 40.325562, 27.796635>,  <39.990078, 39.886433, 28.271198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236549, 40.325562, 27.796635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296658, 39.981441, 27.601782>,  <40.332722, 39.774967, 27.484871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296658, 39.981441, 27.601782>,  <40.236549, 40.325562, 27.796635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296658, 39.981441, 27.601782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177524, 0.461237, -0.869336,
		0.972576, 0.217111, -0.083415,
		0.150268, -0.860304, -0.487130,
		40.341740, 39.723351, 27.455643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781101, 40.457882, 27.258196>,  <40.236549, 40.325562, 27.796635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781101, 40.457882, 27.258196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549236, 40.152832, 27.143375>,  <40.410118, 39.969803, 27.074482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549236, 40.152832, 27.143375>,  <40.781101, 40.457882, 27.258196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549236, 40.152832, 27.143375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034505, 0.374930, -0.926411,
		0.814127, -0.527098, -0.243646,
		-0.579660, -0.762624, -0.287053,
		40.375340, 39.924046, 27.057259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005116, 40.280918, 26.536907>,  <40.781101, 40.457882, 27.258196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005116, 40.280918, 26.536907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650616, 40.110447, 26.609493>,  <40.437916, 40.008163, 26.653044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650616, 40.110447, 26.609493>,  <41.005116, 40.280918, 26.536907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650616, 40.110447, 26.609493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279936, 0.180675, -0.942864,
		0.369038, -0.886415, -0.279426,
		-0.886254, -0.426174, 0.181464,
		40.384739, 39.982594, 26.663933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940369, 39.864265, 26.012407>,  <41.005116, 40.280918, 26.536907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940369, 39.864265, 26.012407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570847, 39.912804, 26.157661>,  <40.349133, 39.941925, 26.244814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570847, 39.912804, 26.157661>,  <40.940369, 39.864265, 26.012407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570847, 39.912804, 26.157661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277068, 0.442706, -0.852787,
		-0.264241, -0.888419, -0.375352,
		-0.923802, 0.121344, 0.363134,
		40.293705, 39.949207, 26.266602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522335, 39.675034, 25.411293>,  <40.940369, 39.864265, 26.012407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522335, 39.675034, 25.411293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304867, 39.896923, 25.663233>,  <40.174385, 40.030056, 25.814396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304867, 39.896923, 25.663233>,  <40.522335, 39.675034, 25.411293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304867, 39.896923, 25.663233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443787, 0.446962, -0.776710,
		-0.712377, -0.701790, 0.003180,
		-0.543666, 0.554721, 0.629850,
		40.141766, 40.063339, 25.852188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778866, 39.707909, 25.094801>,  <40.522335, 39.675034, 25.411293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778866, 39.707909, 25.094801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811291, 40.016083, 25.347738>,  <39.830746, 40.200989, 25.499500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811291, 40.016083, 25.347738>,  <39.778866, 39.707909, 25.094801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811291, 40.016083, 25.347738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382656, 0.609870, -0.693998,
		-0.920328, -0.185712, 0.344250,
		0.081064, 0.770435, 0.632344,
		39.835609, 40.247211, 25.537441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194828, 40.122913, 24.898556>,  <39.778866, 39.707909, 25.094801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194828, 40.122913, 24.898556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431248, 40.367916, 25.108507>,  <39.573101, 40.514919, 25.234478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431248, 40.367916, 25.108507>,  <39.194828, 40.122913, 24.898556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431248, 40.367916, 25.108507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306510, 0.772432, -0.556238,
		-0.746133, 0.167883, 0.644283,
		0.591048, 0.612507, 0.524879,
		39.608562, 40.551666, 25.265970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853168, 40.781181, 24.920069>,  <39.194828, 40.122913, 24.898556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853168, 40.781181, 24.920069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237415, 40.863163, 24.995129>,  <39.467964, 40.912354, 25.040165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237415, 40.863163, 24.995129>,  <38.853168, 40.781181, 24.920069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237415, 40.863163, 24.995129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026913, 0.740736, -0.671257,
		-0.276576, 0.639770, 0.717078,
		0.960615, 0.204953, 0.187652,
		39.525600, 40.924648, 25.051424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900921, 41.507660, 24.924690>,  <38.853168, 40.781181, 24.920069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900921, 41.507660, 24.924690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274757, 41.398060, 24.833941>,  <39.499058, 41.332302, 24.779490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274757, 41.398060, 24.833941>,  <38.900921, 41.507660, 24.924690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274757, 41.398060, 24.833941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052022, 0.736182, -0.674781,
		0.351909, 0.618839, 0.702281,
		0.934588, -0.273995, -0.226876,
		39.555134, 41.315861, 24.765879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402161, 42.138096, 24.962606>,  <38.900921, 41.507660, 24.924690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402161, 42.138096, 24.962606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554955, 41.863686, 24.714911>,  <39.646633, 41.699039, 24.566292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554955, 41.863686, 24.714911>,  <39.402161, 42.138096, 24.962606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554955, 41.863686, 24.714911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169565, 0.710705, -0.682750,
		0.908478, 0.155801, 0.387806,
		0.381989, -0.686021, -0.619241,
		39.669552, 41.657879, 24.529139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012085, 42.417847, 24.728094>,  <39.402161, 42.138096, 24.962606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012085, 42.417847, 24.728094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946774, 42.132263, 24.455742>,  <39.907585, 41.960911, 24.292330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946774, 42.132263, 24.455742>,  <40.012085, 42.417847, 24.728094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946774, 42.132263, 24.455742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162515, 0.661250, -0.732350,
		0.973103, -0.230230, 0.008062,
		-0.163278, -0.713962, -0.680880,
		39.897789, 41.918076, 24.251478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545883, 42.516708, 24.256992>,  <40.012085, 42.417847, 24.728094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545883, 42.516708, 24.256992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279358, 42.298679, 24.053452>,  <40.119442, 42.167862, 23.931326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279358, 42.298679, 24.053452>,  <40.545883, 42.516708, 24.256992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279358, 42.298679, 24.053452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200636, 0.526190, -0.826359,
		0.718176, -0.652705, -0.241245,
		-0.666309, -0.545069, -0.508853,
		40.079464, 42.135159, 23.900795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878628, 42.232582, 23.663290>,  <40.545883, 42.516708, 24.256992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878628, 42.232582, 23.663290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490685, 42.243671, 23.566454>,  <40.257919, 42.250324, 23.508352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490685, 42.243671, 23.566454>,  <40.878628, 42.232582, 23.663290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490685, 42.243671, 23.566454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222287, 0.507642, -0.832399,
		0.099819, -0.861122, -0.498502,
		-0.969858, 0.027721, -0.242088,
		40.199726, 42.251987, 23.493828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.241497, 38.437439, 22.884214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341236, 38.803219, 23.011717>,  <34.401077, 39.022686, 23.088219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341236, 38.803219, 23.011717>,  <34.241497, 38.437439, 22.884214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341236, 38.803219, 23.011717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741105, -0.392062, 0.545024,
		0.623370, 0.100333, -0.775463,
		0.249346, 0.914451, 0.318757,
		34.416039, 39.077553, 23.107344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952221, 38.364338, 22.884764>,  <34.241497, 38.437439, 22.884214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952221, 38.364338, 22.884764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852444, 38.662392, 23.132166>,  <34.792576, 38.841225, 23.280607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852444, 38.662392, 23.132166>,  <34.952221, 38.364338, 22.884764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852444, 38.662392, 23.132166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467864, -0.466473, 0.750670,
		0.847868, 0.476627, -0.232263,
		-0.249446, 0.745137, 0.618504,
		34.777611, 38.885933, 23.317717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534283, 38.603626, 23.178274>,  <34.952221, 38.364338, 22.884764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534283, 38.603626, 23.178274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.253433, 38.717739, 23.439240>,  <35.084923, 38.786209, 23.595818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.253433, 38.717739, 23.439240>,  <35.534283, 38.603626, 23.178274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253433, 38.717739, 23.439240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423084, -0.569821, 0.704489,
		0.572737, 0.770660, 0.279383,
		-0.702119, 0.285285, 0.652412,
		35.042797, 38.803326, 23.634964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958954, 38.784302, 23.913046>,  <35.534283, 38.603626, 23.178274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958954, 38.784302, 23.913046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.576870, 38.706856, 24.002575>,  <35.347622, 38.660389, 24.056292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.576870, 38.706856, 24.002575>,  <35.958954, 38.784302, 23.913046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576870, 38.706856, 24.002575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295842, -0.604937, 0.739276,
		-0.007735, 0.772376, 0.635118,
		-0.955206, -0.193613, 0.223822,
		35.290310, 38.648773, 24.069721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969105, 38.863358, 24.600407>,  <35.958954, 38.784302, 23.913046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969105, 38.863358, 24.600407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670254, 38.627148, 24.478371>,  <35.490944, 38.485424, 24.405149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670254, 38.627148, 24.478371>,  <35.969105, 38.863358, 24.600407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670254, 38.627148, 24.478371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303692, -0.711574, 0.633588,
		-0.591242, 0.380720, 0.710975,
		-0.747130, -0.590521, -0.305091,
		35.446114, 38.449989, 24.386843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634346, 38.674847, 25.221321>,  <35.969105, 38.863358, 24.600407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634346, 38.674847, 25.221321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533173, 38.384411, 24.965567>,  <35.472469, 38.210148, 24.812113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533173, 38.384411, 24.965567>,  <35.634346, 38.674847, 25.221321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533173, 38.384411, 24.965567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349227, -0.684841, 0.639556,
		-0.902255, -0.061525, 0.426792,
		-0.252936, -0.726090, -0.639388,
		35.457291, 38.166584, 24.773750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207870, 38.260643, 25.619240>,  <35.634346, 38.674847, 25.221321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207870, 38.260643, 25.619240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316166, 38.022610, 25.316565>,  <35.381142, 37.879791, 25.134960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316166, 38.022610, 25.316565>,  <35.207870, 38.260643, 25.619240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316166, 38.022610, 25.316565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212769, -0.729614, 0.649918,
		-0.938846, -0.336956, -0.070918,
		0.270737, -0.595083, -0.756688,
		35.397388, 37.844086, 25.089558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111851, 37.668221, 25.897945>,  <35.207870, 38.260643, 25.619240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111851, 37.668221, 25.897945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.340908, 37.580540, 25.581964>,  <35.478344, 37.527931, 25.392376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.340908, 37.580540, 25.581964>,  <35.111851, 37.668221, 25.897945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340908, 37.580540, 25.581964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272298, -0.858026, 0.435484,
		-0.773259, -0.464481, -0.431657,
		0.572647, -0.219202, -0.789953,
		35.512703, 37.514778, 25.344978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888233, 36.991245, 25.804264>,  <35.111851, 37.668221, 25.897945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888233, 36.991245, 25.804264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.245529, 37.062164, 25.639006>,  <35.459908, 37.104713, 25.539850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.245529, 37.062164, 25.639006>,  <34.888233, 36.991245, 25.804264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245529, 37.062164, 25.639006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398382, -0.738035, 0.544607,
		-0.208358, -0.651054, -0.729874,
		0.893240, 0.177295, -0.413144,
		35.513500, 37.115353, 25.515062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177517, 36.319595, 25.826307>,  <34.888233, 36.991245, 25.804264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177517, 36.319595, 25.826307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488174, 36.563694, 25.763809>,  <35.674568, 36.710155, 25.726311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488174, 36.563694, 25.763809>,  <35.177517, 36.319595, 25.826307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488174, 36.563694, 25.763809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599222, -0.639187, 0.482050,
		0.194301, -0.468009, -0.862099,
		0.776646, 0.610251, -0.156247,
		35.721169, 36.746769, 25.716934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695591, 35.953720, 25.415295>,  <35.177517, 36.319595, 25.826307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695591, 35.953720, 25.415295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879673, 36.258308, 25.597887>,  <35.990124, 36.441063, 25.707443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879673, 36.258308, 25.597887>,  <35.695591, 35.953720, 25.415295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879673, 36.258308, 25.597887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540122, -0.648201, 0.536753,
		0.704612, -0.000461, -0.709592,
		0.460206, 0.761469, 0.456481,
		36.017735, 36.486748, 25.734831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398464, 35.722179, 25.577772>,  <35.695591, 35.953720, 25.415295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398464, 35.722179, 25.577772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.339581, 36.031528, 25.824423>,  <36.304249, 36.217136, 25.972412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.339581, 36.031528, 25.824423>,  <36.398464, 35.722179, 25.577772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339581, 36.031528, 25.824423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538658, -0.460178, 0.705751,
		0.829564, 0.436044, -0.348839,
		-0.147210, 0.773371, 0.616625,
		36.295418, 36.263538, 26.009411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035637, 35.920944, 25.732542>,  <36.398464, 35.722179, 25.577772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035637, 35.920944, 25.732542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.780457, 36.043999, 26.014925>,  <36.627346, 36.117832, 26.184355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.780457, 36.043999, 26.014925>,  <37.035637, 35.920944, 25.732542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780457, 36.043999, 26.014925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428160, -0.620277, 0.657218,
		0.640075, 0.721536, 0.263989,
		-0.637953, 0.307640, 0.705957,
		36.589069, 36.136292, 26.226711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540848, 36.025856, 26.272966>,  <37.035637, 35.920944, 25.732542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540848, 36.025856, 26.272966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165146, 35.996250, 26.407024>,  <36.939724, 35.978485, 26.487459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165146, 35.996250, 26.407024>,  <37.540848, 36.025856, 26.272966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165146, 35.996250, 26.407024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320993, -0.535124, 0.781413,
		0.121504, 0.841525, 0.526377,
		-0.939255, -0.074019, 0.335143,
		36.883369, 35.974045, 26.507566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370483, 36.039043, 26.123257>,  <37.540848, 36.025856, 26.272966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370483, 36.039043, 26.123257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.400024, 35.716587, 25.888416>,  <38.417747, 35.523113, 25.747513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.400024, 35.716587, 25.888416>,  <38.370483, 36.039043, 26.123257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400024, 35.716587, 25.888416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120328, 0.577204, -0.807686,
		0.989983, 0.130295, -0.054372,
		0.073854, -0.806138, -0.587101,
		38.422180, 35.474747, 25.712286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862080, 36.220383, 25.629755>,  <38.370483, 36.039043, 26.123257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862080, 36.220383, 25.629755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.634293, 35.938946, 25.459738>,  <38.497620, 35.770084, 25.357727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.634293, 35.938946, 25.459738>,  <38.862080, 36.220383, 25.629755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634293, 35.938946, 25.459738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024308, 0.531264, -0.846857,
		0.821652, -0.471928, -0.319642,
		-0.569471, -0.703592, -0.425043,
		38.463451, 35.727867, 25.332226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247204, 35.937290, 25.061352>,  <38.862080, 36.220383, 25.629755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247204, 35.937290, 25.061352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860447, 35.860172, 24.994488>,  <38.628391, 35.813900, 24.954370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860447, 35.860172, 24.994488>,  <39.247204, 35.937290, 25.061352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860447, 35.860172, 24.994488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028593, 0.569096, -0.821774,
		0.253564, -0.799349, -0.544744,
		-0.966896, -0.192797, -0.167158,
		38.570377, 35.802334, 24.944340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226044, 35.880848, 24.370937>,  <39.247204, 35.937290, 25.061352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226044, 35.880848, 24.370937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840343, 35.933826, 24.462751>,  <38.608925, 35.965614, 24.517839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840343, 35.933826, 24.462751>,  <39.226044, 35.880848, 24.370937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840343, 35.933826, 24.462751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119804, 0.554724, -0.823364,
		-0.236381, -0.821425, -0.519022,
		-0.964246, 0.132447, 0.229536,
		38.551071, 35.973560, 24.531612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927895, 35.868000, 23.718016>,  <39.226044, 35.880848, 24.370937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927895, 35.868000, 23.718016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683758, 36.048950, 23.978121>,  <38.537277, 36.157520, 24.134184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683758, 36.048950, 23.978121>,  <38.927895, 35.868000, 23.718016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683758, 36.048950, 23.978121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187182, 0.715284, -0.673299,
		-0.769705, -0.532660, -0.351891,
		-0.610342, 0.452374, 0.650262,
		38.500656, 36.184662, 24.173199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263603, 35.829178, 23.471197>,  <38.927895, 35.868000, 23.718016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263603, 35.829178, 23.471197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265057, 36.139790, 23.723227>,  <38.265930, 36.326157, 23.874445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265057, 36.139790, 23.723227>,  <38.263603, 35.829178, 23.471197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265057, 36.139790, 23.723227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423413, 0.572007, -0.702516,
		-0.905929, -0.264228, 0.330871,
		0.003636, 0.776525, 0.630076,
		38.266148, 36.372746, 23.912249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850689, 36.302933, 23.196098>,  <38.263603, 35.829178, 23.471197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850689, 36.302933, 23.196098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985203, 36.550323, 23.480183>,  <38.065910, 36.698757, 23.650633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985203, 36.550323, 23.480183>,  <37.850689, 36.302933, 23.196098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985203, 36.550323, 23.480183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255532, 0.785764, -0.563275,
		-0.906431, 0.007937, 0.422278,
		0.336282, 0.618476, 0.710213,
		38.086086, 36.735867, 23.693247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251049, 36.806309, 23.406237>,  <37.850689, 36.302933, 23.196098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251049, 36.806309, 23.406237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607109, 36.970798, 23.484753>,  <37.820744, 37.069492, 23.531862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607109, 36.970798, 23.484753>,  <37.251049, 36.806309, 23.406237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607109, 36.970798, 23.484753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278423, 0.831856, -0.480100,
		-0.360712, 0.372709, 0.854970,
		0.890150, 0.411221, 0.196290,
		37.874153, 37.094166, 23.543640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994511, 37.443382, 23.642517>,  <37.251049, 36.806309, 23.406237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994511, 37.443382, 23.642517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382801, 37.492783, 23.560120>,  <37.615776, 37.522423, 23.510681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382801, 37.492783, 23.560120>,  <36.994511, 37.443382, 23.642517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382801, 37.492783, 23.560120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214028, 0.834001, -0.508561,
		0.108987, 0.537763, 0.836022,
		0.970728, 0.123505, -0.205992,
		37.674019, 37.529835, 23.498322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147419, 38.157272, 23.672520>,  <36.994511, 37.443382, 23.642517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147419, 38.157272, 23.672520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454483, 38.039181, 23.444996>,  <37.638721, 37.968327, 23.308481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454483, 38.039181, 23.444996>,  <37.147419, 38.157272, 23.672520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454483, 38.039181, 23.444996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056489, 0.852940, -0.518943,
		0.638368, 0.430501, 0.638087,
		0.767656, -0.295232, -0.568808,
		37.684780, 37.950611, 23.274353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539692, 38.733688, 23.652004>,  <37.147419, 38.157272, 23.672520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539692, 38.733688, 23.652004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625389, 38.506615, 23.334051>,  <37.676807, 38.370373, 23.143280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625389, 38.506615, 23.334051>,  <37.539692, 38.733688, 23.652004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625389, 38.506615, 23.334051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189938, 0.774032, -0.603985,
		0.958135, 0.280379, 0.058008,
		0.214245, -0.567681, -0.794882,
		37.689663, 38.336311, 23.095587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885670, 39.196072, 23.161077>,  <37.539692, 38.733688, 23.652004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885670, 39.196072, 23.161077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773159, 38.882595, 22.939550>,  <37.705654, 38.694508, 22.806635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773159, 38.882595, 22.939550>,  <37.885670, 39.196072, 23.161077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773159, 38.882595, 22.939550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146533, 0.605424, -0.782298,
		0.948374, -0.138888, -0.285127,
		-0.281275, -0.783691, -0.553817,
		37.688778, 38.647488, 22.773405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315907, 39.293480, 22.612183>,  <37.885670, 39.196072, 23.161077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315907, 39.293480, 22.612183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010509, 39.062111, 22.497286>,  <37.827271, 38.923290, 22.428347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010509, 39.062111, 22.497286>,  <38.315907, 39.293480, 22.612183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010509, 39.062111, 22.497286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128441, 0.571886, -0.810216,
		0.632922, -0.581696, -0.510921,
		-0.763488, -0.578426, -0.287246,
		37.781464, 38.888584, 22.411112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341419, 39.138226, 21.918932>,  <38.315907, 39.293480, 22.612183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341419, 39.138226, 21.918932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.954212, 39.068890, 21.991484>,  <37.721889, 39.027290, 22.035015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.954212, 39.068890, 21.991484>,  <38.341419, 39.138226, 21.918932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954212, 39.068890, 21.991484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247817, 0.547911, -0.798987,
		0.039113, -0.818382, -0.573343,
		-0.968017, -0.173335, 0.181378,
		37.663807, 39.016888, 22.045897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838699, 39.164581, 21.168541>,  <38.341419, 39.138226, 21.918932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838699, 39.164581, 21.168541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078075, 39.484348, 21.147369>,  <39.221699, 39.676208, 21.134666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078075, 39.484348, 21.147369>,  <38.838699, 39.164581, 21.168541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078075, 39.484348, 21.147369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477299, -0.302681, 0.824966,
		0.643473, -0.518955, -0.562698,
		0.598438, 0.799419, -0.052930,
		39.257607, 39.724174, 21.131491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526638, 38.908306, 21.137877>,  <38.838699, 39.164581, 21.168541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526638, 38.908306, 21.137877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579811, 39.284340, 21.263464>,  <39.611713, 39.509960, 21.338818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579811, 39.284340, 21.263464>,  <39.526638, 38.908306, 21.137877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579811, 39.284340, 21.263464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474658, -0.338474, 0.812487,
		0.870074, 0.041024, -0.491211,
		0.132931, 0.940081, 0.313969,
		39.619690, 39.566364, 21.357655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121655, 38.817551, 21.303041>,  <39.526638, 38.908306, 21.137877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121655, 38.817551, 21.303041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985760, 39.138905, 21.498652>,  <39.904224, 39.331718, 21.616018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985760, 39.138905, 21.498652>,  <40.121655, 38.817551, 21.303041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985760, 39.138905, 21.498652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578738, -0.231291, 0.782028,
		0.741380, 0.548698, -0.386375,
		-0.339732, 0.803390, 0.489027,
		39.883839, 39.379921, 21.645359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688564, 39.101887, 21.544739>,  <40.121655, 38.817551, 21.303041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688564, 39.101887, 21.544739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389893, 39.228897, 21.778543>,  <40.210690, 39.305103, 21.918827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389893, 39.228897, 21.778543>,  <40.688564, 39.101887, 21.544739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389893, 39.228897, 21.778543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539938, -0.223915, 0.811374,
		0.388512, 0.921434, -0.004251,
		-0.746676, 0.317524, 0.584511,
		40.165890, 39.324154, 21.953897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996384, 39.451740, 22.084724>,  <40.688564, 39.101887, 21.544739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996384, 39.451740, 22.084724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.636917, 39.369858, 22.239899>,  <40.421238, 39.320728, 22.333004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.636917, 39.369858, 22.239899>,  <40.996384, 39.451740, 22.084724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636917, 39.369858, 22.239899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423026, -0.170644, 0.889904,
		-0.115970, 0.963834, 0.239948,
		-0.898666, -0.204707, 0.387937,
		40.367317, 39.308445, 22.356279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954250, 39.690845, 22.788336>,  <40.996384, 39.451740, 22.084724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954250, 39.690845, 22.788336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.682850, 39.398693, 22.756918>,  <40.520008, 39.223400, 22.738068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.682850, 39.398693, 22.756918>,  <40.954250, 39.690845, 22.788336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682850, 39.398693, 22.756918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210416, -0.295679, 0.931826,
		-0.703815, 0.615721, 0.354304,
		-0.678505, -0.730384, -0.078546,
		40.479298, 39.179577, 22.733355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691750, 39.657570, 23.437742>,  <40.954250, 39.690845, 22.788336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691750, 39.657570, 23.437742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528564, 39.318039, 23.303247>,  <40.430653, 39.114319, 23.222551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528564, 39.318039, 23.303247>,  <40.691750, 39.657570, 23.437742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528564, 39.318039, 23.303247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251514, -0.458517, 0.852351,
		-0.877669, 0.263163, 0.400552,
		-0.407968, -0.848827, -0.336237,
		40.406174, 39.063393, 23.202375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355946, 39.386383, 23.939232>,  <40.691750, 39.657570, 23.437742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355946, 39.386383, 23.939232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419968, 39.069008, 23.704338>,  <40.458382, 38.878582, 23.563402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419968, 39.069008, 23.704338>,  <40.355946, 39.386383, 23.939232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419968, 39.069008, 23.704338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238553, -0.546178, 0.802984,
		-0.957850, -0.268606, 0.101859,
		0.160053, -0.793436, -0.587233,
		40.467983, 38.830978, 23.528168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009617, 38.880974, 24.323229>,  <40.355946, 39.386383, 23.939232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009617, 38.880974, 24.323229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.272179, 38.693027, 24.087139>,  <40.429714, 38.580261, 23.945486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.272179, 38.693027, 24.087139>,  <40.009617, 38.880974, 24.323229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272179, 38.693027, 24.087139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098020, -0.722613, 0.684268,
		-0.748022, -0.507005, -0.428263,
		0.656396, -0.469869, -0.590227,
		40.469097, 38.552067, 23.910072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777225, 38.201672, 24.304602>,  <40.009617, 38.880974, 24.323229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777225, 38.201672, 24.304602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169903, 38.205845, 24.228533>,  <40.405510, 38.208347, 24.182892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169903, 38.205845, 24.228533>,  <39.777225, 38.201672, 24.304602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169903, 38.205845, 24.228533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149516, -0.660744, 0.735570,
		-0.117980, -0.750539, -0.650209,
		0.981696, 0.010434, -0.190172,
		40.464413, 38.208977, 24.171482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929375, 37.560070, 24.321318>,  <39.777225, 38.201672, 24.304602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929375, 37.560070, 24.321318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.284023, 37.741306, 24.358456>,  <40.496811, 37.850048, 24.380739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.284023, 37.741306, 24.358456>,  <39.929375, 37.560070, 24.321318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284023, 37.741306, 24.358456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277988, -0.682495, 0.675960,
		0.369636, -0.573509, -0.731066,
		0.886618, 0.453087, 0.092846,
		40.550007, 37.877232, 24.386309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280090, 37.040665, 24.476969>,  <39.929375, 37.560070, 24.321318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280090, 37.040665, 24.476969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535275, 37.334705, 24.568735>,  <40.688385, 37.511131, 24.623795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535275, 37.334705, 24.568735>,  <40.280090, 37.040665, 24.476969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535275, 37.334705, 24.568735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452594, -0.598949, 0.660620,
		0.623033, -0.317616, -0.714808,
		0.637957, 0.735105, 0.229414,
		40.726662, 37.555237, 24.637560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919323, 36.817749, 24.356915>,  <40.280090, 37.040665, 24.476969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919323, 36.817749, 24.356915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940029, 37.117432, 24.621040>,  <40.952454, 37.297241, 24.779516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940029, 37.117432, 24.621040>,  <40.919323, 36.817749, 24.356915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940029, 37.117432, 24.621040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356619, -0.631473, 0.688524,
		0.932815, 0.199841, -0.299866,
		0.051761, 0.749203, 0.660314,
		40.955559, 37.342194, 24.819134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476837, 36.613667, 24.732248>,  <40.919323, 36.817749, 24.356915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476837, 36.613667, 24.732248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317242, 36.900185, 24.961243>,  <41.221485, 37.072094, 25.098639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317242, 36.900185, 24.961243>,  <41.476837, 36.613667, 24.732248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317242, 36.900185, 24.961243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305106, -0.485050, 0.819534,
		0.864708, 0.501651, -0.025017,
		-0.398986, 0.716291, 0.572484,
		41.197544, 37.115070, 25.132988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.885353, 42.054535, 22.409651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.519760, 42.079678, 22.569996>,  <40.300404, 42.094765, 22.666203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.519760, 42.079678, 22.569996>,  <40.885353, 42.054535, 22.409651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519760, 42.079678, 22.569996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279971, 0.617387, -0.735153,
		-0.293701, -0.784144, -0.546679,
		-0.913978, 0.062861, 0.400864,
		40.245567, 42.098537, 22.690256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268597, 41.830074, 21.947893>,  <40.885353, 42.054535, 22.409651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268597, 41.830074, 21.947893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160904, 42.116940, 22.205015>,  <40.096291, 42.289059, 22.359289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160904, 42.116940, 22.205015>,  <40.268597, 41.830074, 21.947893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160904, 42.116940, 22.205015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341920, 0.552792, -0.759942,
		-0.900337, -0.424385, 0.096385,
		-0.269227, 0.717160, 0.642805,
		40.080135, 42.332088, 22.397858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692463, 42.105103, 21.711502>,  <40.268597, 41.830074, 21.947893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692463, 42.105103, 21.711502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.817383, 42.397507, 21.954184>,  <39.892334, 42.572948, 22.099792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.817383, 42.397507, 21.954184>,  <39.692463, 42.105103, 21.711502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817383, 42.397507, 21.954184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148892, 0.668420, -0.728728,
		-0.938243, 0.137248, 0.317589,
		0.312299, 0.731011, 0.606706,
		39.911072, 42.616810, 22.136196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124634, 42.733784, 21.701530>,  <39.692463, 42.105103, 21.711502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124634, 42.733784, 21.701530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.472633, 42.880775, 21.833021>,  <39.681435, 42.968971, 21.911915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.472633, 42.880775, 21.833021>,  <39.124634, 42.733784, 21.701530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472633, 42.880775, 21.833021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123541, 0.807915, -0.576205,
		-0.477326, 0.460686, 0.748284,
		0.869999, 0.367481, 0.328725,
		39.733631, 42.991020, 21.931639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032856, 43.397373, 21.553463>,  <39.124634, 42.733784, 21.701530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032856, 43.397373, 21.553463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.425098, 43.418446, 21.628971>,  <39.660442, 43.431087, 21.674276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.425098, 43.418446, 21.628971>,  <39.032856, 43.397373, 21.553463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425098, 43.418446, 21.628971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033607, 0.903732, -0.426777,
		-0.193079, 0.424845, 0.884436,
		0.980608, 0.052678, 0.188769,
		39.719280, 43.434250, 21.685602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081322, 43.990112, 21.676970>,  <39.032856, 43.397373, 21.553463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081322, 43.990112, 21.676970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467186, 43.900150, 21.622059>,  <39.698704, 43.846172, 21.589113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467186, 43.900150, 21.622059>,  <39.081322, 43.990112, 21.676970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467186, 43.900150, 21.622059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113471, 0.824805, -0.553914,
		0.237801, 0.518764, 0.821179,
		0.964663, -0.224901, -0.137275,
		39.756584, 43.832680, 21.580875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513020, 44.648140, 21.707808>,  <39.081322, 43.990112, 21.676970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513020, 44.648140, 21.707808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.704079, 44.368706, 21.494707>,  <39.818714, 44.201046, 21.366846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.704079, 44.368706, 21.494707>,  <39.513020, 44.648140, 21.707808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704079, 44.368706, 21.494707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128257, 0.655349, -0.744358,
		0.869138, 0.287214, 0.402626,
		0.477650, -0.698589, -0.532751,
		39.847374, 44.159130, 21.334881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108231, 44.924629, 21.442795>,  <39.513020, 44.648140, 21.707808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108231, 44.924629, 21.442795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.029610, 44.617630, 21.198725>,  <39.982437, 44.433430, 21.052282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.029610, 44.617630, 21.198725>,  <40.108231, 44.924629, 21.442795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029610, 44.617630, 21.198725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027961, 0.617672, -0.785938,
		0.980095, -0.171539, -0.099944,
		-0.196552, -0.767499, -0.610174,
		39.970646, 44.387379, 21.015673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570686, 44.908165, 20.845827>,  <40.108231, 44.924629, 21.442795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570686, 44.908165, 20.845827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254093, 44.695038, 20.726055>,  <40.064137, 44.567162, 20.654192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254093, 44.695038, 20.726055>,  <40.570686, 44.908165, 20.845827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254093, 44.695038, 20.726055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039611, 0.444167, -0.895068,
		0.609907, -0.720292, -0.330445,
		-0.791482, -0.532818, -0.299431,
		40.016647, 44.535194, 20.636227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682541, 44.788288, 20.075953>,  <40.570686, 44.908165, 20.845827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682541, 44.788288, 20.075953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297237, 44.693569, 20.126629>,  <40.066055, 44.636738, 20.157034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297237, 44.693569, 20.126629>,  <40.682541, 44.788288, 20.075953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297237, 44.693569, 20.126629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205054, 0.343868, -0.916356,
		0.173426, -0.908670, -0.379792,
		-0.963263, -0.236798, 0.126691,
		40.008259, 44.622528, 20.164637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430347, 44.556992, 19.376930>,  <40.682541, 44.788288, 20.075953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430347, 44.556992, 19.376930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101364, 44.677967, 19.569637>,  <39.903976, 44.750553, 19.685261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101364, 44.677967, 19.569637>,  <40.430347, 44.556992, 19.376930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101364, 44.677967, 19.569637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359833, 0.379332, -0.852424,
		-0.440553, -0.874437, -0.203158,
		-0.822456, 0.302435, 0.481768,
		39.854626, 44.768696, 19.714167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936256, 44.641685, 18.819117>,  <40.430347, 44.556992, 19.376930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936256, 44.641685, 18.819117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.786819, 44.832306, 19.137444>,  <39.697159, 44.946678, 19.328440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.786819, 44.832306, 19.137444>,  <39.936256, 44.641685, 18.819117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786819, 44.832306, 19.137444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512369, 0.609164, -0.605308,
		-0.773245, -0.633890, 0.016593,
		-0.373590, 0.476553, 0.795818,
		39.674744, 44.975273, 19.376188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172813, 44.693893, 18.681017>,  <39.936256, 44.641685, 18.819117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172813, 44.693893, 18.681017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300270, 44.962006, 18.949102>,  <39.376743, 45.122875, 19.109953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300270, 44.962006, 18.949102>,  <39.172813, 44.693893, 18.681017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300270, 44.962006, 18.949102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474411, 0.724911, -0.499437,
		-0.820611, -0.158816, 0.548976,
		0.318641, 0.670284, 0.670214,
		39.395863, 45.163090, 19.150167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847450, 44.165512, 18.959612>,  <39.172813, 44.693893, 18.681017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847450, 44.165512, 18.959612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059475, 44.216225, 18.624239>,  <39.186687, 44.246651, 18.423016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059475, 44.216225, 18.624239>,  <38.847450, 44.165512, 18.959612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059475, 44.216225, 18.624239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667952, -0.671540, 0.320740,
		-0.522377, -0.730042, -0.440636,
		0.530058, 0.126777, -0.838430,
		39.218491, 44.254257, 18.372709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264183, 43.912674, 18.405684>,  <38.847450, 44.165512, 18.959612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264183, 43.912674, 18.405684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991272, 43.804207, 18.134106>,  <37.827526, 43.739128, 17.971159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991272, 43.804207, 18.134106>,  <38.264183, 43.912674, 18.405684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991272, 43.804207, 18.134106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155492, -0.961245, 0.227661,
		-0.714365, 0.049758, 0.698001,
		-0.682279, -0.271167, -0.678943,
		37.786587, 43.722858, 17.930422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590038, 43.703979, 18.746132>,  <38.264183, 43.912674, 18.405684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590038, 43.703979, 18.746132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704865, 43.550217, 18.395172>,  <37.773762, 43.457958, 18.184597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704865, 43.550217, 18.395172>,  <37.590038, 43.703979, 18.746132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704865, 43.550217, 18.395172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028590, -0.912103, 0.408962,
		-0.957484, -0.142484, -0.250844,
		0.287066, -0.384403, -0.877398,
		37.790985, 43.434895, 18.131952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091854, 43.128185, 18.721418>,  <37.590038, 43.703979, 18.746132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091854, 43.128185, 18.721418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426968, 43.098145, 18.505091>,  <37.628036, 43.080120, 18.375294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426968, 43.098145, 18.505091>,  <37.091854, 43.128185, 18.721418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426968, 43.098145, 18.505091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125771, -0.937315, 0.324994,
		-0.531324, -0.340293, -0.775819,
		0.837780, -0.075102, -0.540817,
		37.678303, 43.075615, 18.342846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161182, 42.401894, 18.431675>,  <37.091854, 43.128185, 18.721418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161182, 42.401894, 18.431675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540646, 42.527096, 18.413441>,  <37.768322, 42.602219, 18.402500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540646, 42.527096, 18.413441>,  <37.161182, 42.401894, 18.431675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540646, 42.527096, 18.413441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311574, -0.899862, 0.305238,
		0.054520, -0.303770, -0.951184,
		0.948656, 0.313006, -0.045586,
		37.825241, 42.620998, 18.399765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555279, 41.820602, 18.248734>,  <37.161182, 42.401894, 18.431675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555279, 41.820602, 18.248734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827515, 42.072147, 18.399107>,  <37.990856, 42.223076, 18.489330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827515, 42.072147, 18.399107>,  <37.555279, 41.820602, 18.248734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827515, 42.072147, 18.399107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445648, -0.762596, 0.468876,
		0.581544, -0.151578, -0.799268,
		0.680591, 0.628865, 0.375933,
		38.031693, 42.260807, 18.511887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141273, 41.512642, 18.131561>,  <37.555279, 41.820602, 18.248734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141273, 41.512642, 18.131561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230900, 41.778484, 18.416683>,  <38.284676, 41.937992, 18.587755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230900, 41.778484, 18.416683>,  <38.141273, 41.512642, 18.131561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230900, 41.778484, 18.416683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426062, -0.724606, 0.541680,
		0.876507, 0.182325, -0.445526,
		0.224069, 0.664608, 0.712804,
		38.298122, 41.977867, 18.630524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840958, 41.290283, 18.243980>,  <38.141273, 41.512642, 18.131561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840958, 41.290283, 18.243980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744171, 41.521530, 18.555681>,  <38.686100, 41.660278, 18.742701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744171, 41.521530, 18.555681>,  <38.840958, 41.290283, 18.243980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744171, 41.521530, 18.555681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544597, -0.583764, 0.602191,
		0.803037, 0.570087, -0.173591,
		-0.241965, 0.578119, 0.779251,
		38.671581, 41.694965, 18.789457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495220, 41.536549, 18.599243>,  <38.840958, 41.290283, 18.243980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495220, 41.536549, 18.599243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.214928, 41.582993, 18.880810>,  <39.046753, 41.610859, 19.049749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.214928, 41.582993, 18.880810>,  <39.495220, 41.536549, 18.599243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214928, 41.582993, 18.880810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545221, -0.549193, 0.633341,
		0.460120, 0.827591, 0.321533,
		-0.700731, 0.116106, 0.703915,
		39.004707, 41.617825, 19.091984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819332, 41.580051, 19.195473>,  <39.495220, 41.536549, 18.599243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819332, 41.580051, 19.195473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449429, 41.474419, 19.305073>,  <39.227486, 41.411037, 19.370832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449429, 41.474419, 19.305073>,  <39.819332, 41.580051, 19.195473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449429, 41.474419, 19.305073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375633, -0.518133, 0.768399,
		-0.060956, 0.813509, 0.578349,
		-0.924762, -0.264085, 0.273998,
		39.172001, 41.395191, 19.387272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779491, 41.632702, 20.001434>,  <39.819332, 41.580051, 19.195473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779491, 41.632702, 20.001434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.495140, 41.393192, 19.853853>,  <39.324528, 41.249489, 19.765305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.495140, 41.393192, 19.853853>,  <39.779491, 41.632702, 20.001434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495140, 41.393192, 19.853853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217180, -0.685838, 0.694593,
		-0.668943, 0.413642, 0.617588,
		-0.710878, -0.598771, -0.368952,
		39.281876, 41.213562, 19.743168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190826, 41.578373, 20.528629>,  <39.779491, 41.632702, 20.001434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190826, 41.578373, 20.528629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.168125, 41.268242, 20.277027>,  <39.154507, 41.082165, 20.126066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.168125, 41.268242, 20.277027>,  <39.190826, 41.578373, 20.528629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168125, 41.268242, 20.277027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080541, -0.631521, 0.771164,
		-0.995134, -0.006898, 0.098284,
		-0.056749, -0.775328, -0.629004,
		39.151100, 41.035645, 20.088326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610279, 41.165112, 20.716423>,  <39.190826, 41.578373, 20.528629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610279, 41.165112, 20.716423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847820, 40.918629, 20.509497>,  <38.990345, 40.770737, 20.385340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847820, 40.918629, 20.509497>,  <38.610279, 41.165112, 20.716423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847820, 40.918629, 20.509497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046164, -0.668011, 0.742718,
		-0.803246, -0.417185, -0.425149,
		0.593856, -0.616212, -0.517318,
		39.025978, 40.733765, 20.354301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384815, 40.538536, 21.002518>,  <38.610279, 41.165112, 20.716423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384815, 40.538536, 21.002518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.735725, 40.469875, 20.823223>,  <38.946274, 40.428677, 20.715647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.735725, 40.469875, 20.823223>,  <38.384815, 40.538536, 21.002518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735725, 40.469875, 20.823223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121647, -0.823860, 0.553585,
		-0.464310, -0.540175, -0.701874,
		0.877279, -0.171654, -0.448238,
		38.998909, 40.418381, 20.688751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432571, 39.740009, 20.956820>,  <38.384815, 40.538536, 21.002518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432571, 39.740009, 20.956820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773785, 39.946667, 20.927401>,  <38.978512, 40.070663, 20.909750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773785, 39.946667, 20.927401>,  <38.432571, 39.740009, 20.956820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773785, 39.946667, 20.927401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362652, -0.485539, 0.795447,
		0.375257, -0.705214, -0.601544,
		0.853033, 0.516648, -0.073546,
		39.029694, 40.101662, 20.905336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964958, 39.288601, 21.278425>,  <38.432571, 39.740009, 20.956820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964958, 39.288601, 21.278425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647221, 39.283463, 21.521358>,  <37.456577, 39.280380, 21.667118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647221, 39.283463, 21.521358>,  <37.964958, 39.288601, 21.278425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647221, 39.283463, 21.521358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526243, 0.513984, -0.677413,
		-0.303458, -0.857703, -0.415040,
		-0.794344, -0.012845, 0.607333,
		37.408916, 39.279610, 21.703558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429386, 39.141357, 20.804247>,  <37.964958, 39.288601, 21.278425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429386, 39.141357, 20.804247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.269207, 39.312538, 21.128347>,  <37.173100, 39.415245, 21.322807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.269207, 39.312538, 21.128347>,  <37.429386, 39.141357, 20.804247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269207, 39.312538, 21.128347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530200, 0.612973, -0.585792,
		-0.747350, -0.664171, -0.018563,
		-0.400444, 0.427950, 0.810249,
		37.149075, 39.440922, 21.371422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658550, 39.134892, 20.635763>,  <37.429386, 39.141357, 20.804247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658550, 39.134892, 20.635763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669193, 39.403179, 20.932257>,  <36.675579, 39.564152, 21.110153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669193, 39.403179, 20.932257>,  <36.658550, 39.134892, 20.635763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669193, 39.403179, 20.932257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701644, 0.540686, -0.464064,
		-0.712031, -0.507734, 0.484992,
		0.026607, 0.670720, 0.741233,
		36.677174, 39.604397, 21.154627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958492, 39.281311, 20.668442>,  <36.658550, 39.134892, 20.635763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958492, 39.281311, 20.668442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147793, 39.587910, 20.842112>,  <36.261375, 39.771870, 20.946314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.147793, 39.587910, 20.842112>,  <35.958492, 39.281311, 20.668442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147793, 39.587910, 20.842112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587077, 0.641886, -0.493277,
		-0.656788, -0.021448, 0.753771,
		0.473255, 0.766500, 0.434174,
		36.289768, 39.817860, 20.972364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426739, 39.656494, 20.987432>,  <35.958492, 39.281311, 20.668442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426739, 39.656494, 20.987432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739880, 39.900291, 20.937380>,  <35.927765, 40.046570, 20.907349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739880, 39.900291, 20.937380>,  <35.426739, 39.656494, 20.987432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739880, 39.900291, 20.937380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584448, 0.651323, -0.483941,
		-0.213461, 0.451986, 0.866108,
		0.782851, 0.609497, -0.125130,
		35.974735, 40.083141, 20.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091946, 40.195526, 21.277912>,  <35.426739, 39.656494, 20.987432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091946, 40.195526, 21.277912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412090, 40.295986, 21.060163>,  <35.604179, 40.356262, 20.929514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412090, 40.295986, 21.060163>,  <35.091946, 40.195526, 21.277912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412090, 40.295986, 21.060163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554472, 0.655412, -0.512832,
		0.227987, 0.712290, 0.663826,
		0.800364, 0.251154, -0.544370,
		35.652199, 40.371334, 20.896852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978779, 40.943729, 21.093559>,  <35.091946, 40.195526, 21.277912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978779, 40.943729, 21.093559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266403, 40.826481, 20.841518>,  <35.438976, 40.756130, 20.690294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266403, 40.826481, 20.841518>,  <34.978779, 40.943729, 21.093559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266403, 40.826481, 20.841518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335485, 0.647629, -0.684125,
		0.608608, 0.703317, 0.367345,
		0.719060, -0.293125, -0.630104,
		35.482121, 40.738544, 20.652487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030945, 41.447178, 21.537552>,  <34.978779, 40.943729, 21.093559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030945, 41.447178, 21.537552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647293, 41.505276, 21.634686>,  <34.417103, 41.540134, 21.692965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647293, 41.505276, 21.634686>,  <35.030945, 41.447178, 21.537552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647293, 41.505276, 21.634686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007764, -0.844369, 0.535706,
		0.282849, 0.515698, 0.808734,
		-0.959133, 0.145245, 0.242833,
		34.359554, 41.548847, 21.707535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990017, 41.330379, 22.259743>,  <35.030945, 41.447178, 21.537552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990017, 41.330379, 22.259743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614597, 41.256996, 22.142805>,  <34.389347, 41.212967, 22.072641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614597, 41.256996, 22.142805>,  <34.990017, 41.330379, 22.259743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614597, 41.256996, 22.142805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032544, -0.796210, 0.604145,
		-0.343607, 0.576534, 0.741312,
		-0.938549, -0.183463, -0.292346,
		34.333031, 41.201958, 22.055101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554363, 41.298016, 22.846106>,  <34.990017, 41.330379, 22.259743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554363, 41.298016, 22.846106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325001, 41.116093, 22.573528>,  <34.187386, 41.006939, 22.409983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325001, 41.116093, 22.573528>,  <34.554363, 41.298016, 22.846106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325001, 41.116093, 22.573528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179264, -0.741957, 0.646036,
		-0.799421, 0.492597, 0.343910,
		-0.573402, -0.454805, -0.681442,
		34.152981, 40.979652, 22.369095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756458, 41.100647, 23.170933>,  <34.554363, 41.298016, 22.846106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756458, 41.100647, 23.170933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877708, 40.887295, 22.855055>,  <33.950459, 40.759281, 22.665527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877708, 40.887295, 22.855055>,  <33.756458, 41.100647, 23.170933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877708, 40.887295, 22.855055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197855, -0.845851, 0.495368,
		-0.932186, 0.006088, -0.361930,
		0.303123, -0.533385, -0.789694,
		33.968647, 40.727280, 22.618147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341251, 40.391270, 23.235781>,  <33.756458, 41.100647, 23.170933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341251, 40.391270, 23.235781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625309, 40.303974, 22.968031>,  <33.795746, 40.251598, 22.807381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625309, 40.303974, 22.968031>,  <33.341251, 40.391270, 23.235781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625309, 40.303974, 22.968031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081247, -0.918991, 0.385817,
		-0.699351, -0.328371, -0.634887,
		0.710146, -0.218239, -0.669376,
		33.838352, 40.238503, 22.767218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261997, 39.663200, 23.131990>,  <33.341251, 40.391270, 23.235781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261997, 39.663200, 23.131990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625584, 39.752697, 22.991293>,  <33.843735, 39.806393, 22.906876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.625584, 39.752697, 22.991293>,  <33.261997, 39.663200, 23.131990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625584, 39.752697, 22.991293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384056, -0.777582, 0.497862,
		-0.162117, -0.587628, -0.792724,
		0.908966, 0.223738, -0.351742,
		33.898273, 39.819817, 22.885771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575958, 39.020420, 22.937574>,  <33.261997, 39.663200, 23.131990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575958, 39.020420, 22.937574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877449, 39.274025, 23.006771>,  <34.058342, 39.426186, 23.048290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877449, 39.274025, 23.006771>,  <33.575958, 39.020420, 22.937574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877449, 39.274025, 23.006771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406554, -0.656650, 0.635235,
		0.516341, -0.408463, -0.752695,
		0.753728, 0.634010, 0.172993,
		34.103569, 39.464230, 23.058668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.095993, 46.252811, 20.895330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470955, 46.131855, 20.964422>,  <37.695930, 46.059280, 21.005877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470955, 46.131855, 20.964422>,  <37.095993, 46.252811, 20.895330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470955, 46.131855, 20.964422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239428, -0.199459, 0.950205,
		-0.252884, -0.932081, -0.259375,
		0.937403, -0.302393, 0.172726,
		37.752174, 46.041138, 21.016241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084320, 45.602482, 21.295868>,  <37.095993, 46.252811, 20.895330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084320, 45.602482, 21.295868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.466091, 45.710159, 21.347416>,  <37.695152, 45.774765, 21.378345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.466091, 45.710159, 21.347416>,  <37.084320, 45.602482, 21.295868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466091, 45.710159, 21.347416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006185, -0.413863, 0.910318,
		0.298386, -0.869628, -0.393336,
		0.954425, 0.269193, 0.128870,
		37.752419, 45.790916, 21.386076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398315, 44.977753, 21.705057>,  <37.084320, 45.602482, 21.295868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398315, 44.977753, 21.705057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637672, 45.289204, 21.780605>,  <37.781284, 45.476074, 21.825933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637672, 45.289204, 21.780605>,  <37.398315, 44.977753, 21.705057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637672, 45.289204, 21.780605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041914, -0.265833, 0.963108,
		0.800109, -0.568396, -0.191707,
		0.598388, 0.778626, 0.188871,
		37.817188, 45.522793, 21.837267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061230, 44.793339, 21.974972>,  <37.398315, 44.977753, 21.705057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061230, 44.793339, 21.974972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006664, 45.169552, 22.099413>,  <37.973927, 45.395279, 22.174078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006664, 45.169552, 22.099413>,  <38.061230, 44.793339, 21.974972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006664, 45.169552, 22.099413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277551, -0.265174, 0.923389,
		0.950977, 0.212308, -0.224874,
		-0.136412, 0.940536, 0.311101,
		37.965740, 45.451714, 22.192743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630020, 44.999752, 22.406979>,  <38.061230, 44.793339, 21.974972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630020, 44.999752, 22.406979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360317, 45.282516, 22.492453>,  <38.198494, 45.452175, 22.543737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360317, 45.282516, 22.492453>,  <38.630020, 44.999752, 22.406979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360317, 45.282516, 22.492453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007274, -0.282982, 0.959098,
		0.738462, 0.648232, 0.185660,
		-0.674256, 0.706907, 0.213686,
		38.158039, 45.494587, 22.556559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880146, 45.265743, 22.942207>,  <38.630020, 44.999752, 22.406979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880146, 45.265743, 22.942207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497047, 45.376465, 22.973448>,  <38.267189, 45.442898, 22.992191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497047, 45.376465, 22.973448>,  <38.880146, 45.265743, 22.942207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497047, 45.376465, 22.973448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031949, -0.372270, 0.927575,
		0.285828, 0.885888, 0.365384,
		-0.957748, 0.276800, 0.078102,
		38.209724, 45.459503, 22.996878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897129, 45.524929, 23.633574>,  <38.880146, 45.265743, 22.942207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897129, 45.524929, 23.633574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514648, 45.457355, 23.537962>,  <38.285160, 45.416809, 23.480595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514648, 45.457355, 23.537962>,  <38.897129, 45.524929, 23.633574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514648, 45.457355, 23.537962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170589, -0.341952, 0.924104,
		-0.237852, 0.924407, 0.298157,
		-0.956204, -0.168938, -0.239027,
		38.227787, 45.406673, 23.466253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576138, 45.872547, 24.105572>,  <38.897129, 45.524929, 23.633574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576138, 45.872547, 24.105572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.309540, 45.599808, 23.984999>,  <38.149582, 45.436165, 23.912655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.309540, 45.599808, 23.984999>,  <38.576138, 45.872547, 24.105572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309540, 45.599808, 23.984999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204317, -0.221784, 0.953449,
		-0.716961, 0.697061, 0.008505,
		-0.666499, -0.681849, -0.301432,
		38.109589, 45.395252, 23.894569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979805, 45.973568, 24.592026>,  <38.576138, 45.872547, 24.105572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979805, 45.973568, 24.592026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943413, 45.607525, 24.434904>,  <37.921577, 45.387897, 24.340631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943413, 45.607525, 24.434904>,  <37.979805, 45.973568, 24.592026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943413, 45.607525, 24.434904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105764, -0.383332, 0.917535,
		-0.990221, 0.125018, -0.061912,
		-0.090976, -0.915110, -0.392806,
		37.916119, 45.332993, 24.317062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440456, 45.586143, 25.048058>,  <37.979805, 45.973568, 24.592026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440456, 45.586143, 25.048058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.641582, 45.313362, 24.835598>,  <37.762260, 45.149693, 24.708122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.641582, 45.313362, 24.835598>,  <37.440456, 45.586143, 25.048058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641582, 45.313362, 24.835598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011104, -0.609328, 0.792840,
		-0.864320, -0.404553, -0.298810,
		0.502819, -0.681950, -0.531146,
		37.792427, 45.108776, 24.676254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043045, 44.927025, 25.103830>,  <37.440456, 45.586143, 25.048058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043045, 44.927025, 25.103830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426811, 44.860344, 25.012852>,  <37.657070, 44.820335, 24.958263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426811, 44.860344, 25.012852>,  <37.043045, 44.927025, 25.103830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426811, 44.860344, 25.012852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091080, -0.580145, 0.809405,
		-0.266885, -0.797271, -0.541416,
		0.959415, -0.166706, -0.227447,
		37.714634, 44.810333, 24.944618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113552, 44.336178, 25.315424>,  <37.043045, 44.927025, 25.103830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113552, 44.336178, 25.315424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503555, 44.423714, 25.300058>,  <37.737556, 44.476234, 25.290840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503555, 44.423714, 25.300058>,  <37.113552, 44.336178, 25.315424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503555, 44.423714, 25.300058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195233, -0.761316, 0.618289,
		0.106060, -0.610335, -0.785012,
		0.975006, 0.218836, -0.038412,
		37.796059, 44.489365, 25.288534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881466, 43.688187, 25.075171>,  <37.113552, 44.336178, 25.315424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881466, 43.688187, 25.075171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593853, 43.789528, 25.334032>,  <36.421288, 43.850334, 25.489349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593853, 43.789528, 25.334032>,  <36.881466, 43.688187, 25.075171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593853, 43.789528, 25.334032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229695, 0.792220, -0.565356,
		-0.655926, -0.555155, -0.511433,
		-0.719028, 0.253358, 0.647154,
		36.378143, 43.865536, 25.528179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357693, 43.857651, 24.687725>,  <36.881466, 43.688187, 25.075171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357693, 43.857651, 24.687725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.251541, 44.031445, 25.032003>,  <36.187851, 44.135719, 25.238569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.251541, 44.031445, 25.032003>,  <36.357693, 43.857651, 24.687725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251541, 44.031445, 25.032003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415668, 0.753919, -0.508749,
		-0.869938, -0.492776, -0.019475,
		-0.265382, 0.434485, 0.860694,
		36.171925, 44.161789, 25.290213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703770, 44.100246, 24.601789>,  <36.357693, 43.857651, 24.687725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703770, 44.100246, 24.601789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.800655, 44.304180, 24.931976>,  <35.858788, 44.426540, 25.130089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.800655, 44.304180, 24.931976>,  <35.703770, 44.100246, 24.601789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800655, 44.304180, 24.931976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431904, 0.818512, -0.378810,
		-0.868788, -0.264772, 0.418454,
		0.242211, 0.509837, 0.825469,
		35.873318, 44.457130, 25.179617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087051, 44.446285, 24.904203>,  <35.703770, 44.100246, 24.601789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087051, 44.446285, 24.904203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.401821, 44.658855, 25.029636>,  <35.590683, 44.786396, 25.104897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.401821, 44.658855, 25.029636>,  <35.087051, 44.446285, 24.904203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401821, 44.658855, 25.029636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403973, 0.827853, -0.389185,
		-0.466421, 0.179583, 0.866142,
		0.786929, 0.531422, 0.313581,
		35.637901, 44.818283, 25.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882839, 45.059994, 25.170858>,  <35.087051, 44.446285, 24.904203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882839, 45.059994, 25.170858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.265015, 45.134655, 25.079391>,  <35.494320, 45.179451, 25.024511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.265015, 45.134655, 25.079391>,  <34.882839, 45.059994, 25.170858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265015, 45.134655, 25.079391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268936, 0.869772, -0.413727,
		0.121665, 0.456790, 0.881215,
		0.955443, 0.186654, -0.228668,
		35.551647, 45.190651, 25.010792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682552, 45.701969, 25.070236>,  <34.882839, 45.059994, 25.170858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682552, 45.701969, 25.070236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.064949, 45.664791, 24.958925>,  <35.294388, 45.642483, 24.892139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.064949, 45.664791, 24.958925>,  <34.682552, 45.701969, 25.070236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064949, 45.664791, 24.958925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091768, 0.806170, -0.584524,
		0.278669, 0.584338, 0.762163,
		0.955993, -0.092947, -0.278278,
		35.351746, 45.636906, 24.875443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981384, 46.354954, 25.049803>,  <34.682552, 45.701969, 25.070236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981384, 46.354954, 25.049803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.211658, 46.139053, 24.804119>,  <35.349823, 46.009514, 24.656708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.211658, 46.139053, 24.804119>,  <34.981384, 46.354954, 25.049803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211658, 46.139053, 24.804119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178013, 0.650422, -0.738419,
		0.798058, 0.534435, 0.278356,
		0.575686, -0.539750, -0.614211,
		35.384365, 45.977127, 24.619856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423279, 46.779377, 24.650135>,  <34.981384, 46.354954, 25.049803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423279, 46.779377, 24.650135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435349, 46.447727, 24.426838>,  <35.442589, 46.248737, 24.292860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435349, 46.447727, 24.426838>,  <35.423279, 46.779377, 24.650135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435349, 46.447727, 24.426838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015174, 0.558055, -0.829665,
		0.999429, 0.033506, 0.004258,
		0.030175, -0.829127, -0.558245,
		35.444401, 46.198990, 24.259365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711952, 46.959053, 24.038671>,  <35.423279, 46.779377, 24.650135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711952, 46.959053, 24.038671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.568436, 46.599964, 23.936407>,  <35.482327, 46.384510, 23.875048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.568436, 46.599964, 23.936407>,  <35.711952, 46.959053, 24.038671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568436, 46.599964, 23.936407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004476, 0.275551, -0.961276,
		0.933408, -0.343750, -0.102883,
		-0.358789, -0.897723, -0.255663,
		35.460800, 46.330647, 23.859709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051445, 46.772343, 23.349506>,  <35.711952, 46.959053, 24.038671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051445, 46.772343, 23.349506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710140, 46.566013, 23.380169>,  <35.505360, 46.442215, 23.398567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710140, 46.566013, 23.380169>,  <36.051445, 46.772343, 23.349506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710140, 46.566013, 23.380169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232140, 0.244070, -0.941563,
		0.466972, -0.821190, -0.327998,
		-0.853257, -0.515825, 0.076657,
		35.454163, 46.411266, 23.403166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062805, 46.508560, 22.716988>,  <36.051445, 46.772343, 23.349506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062805, 46.508560, 22.716988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696991, 46.484638, 22.877012>,  <35.477501, 46.470287, 22.973026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696991, 46.484638, 22.877012>,  <36.062805, 46.508560, 22.716988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696991, 46.484638, 22.877012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404480, 0.123868, -0.906120,
		0.004629, -0.990495, -0.137468,
		-0.914535, -0.059798, 0.400062,
		35.422630, 46.466698, 22.997030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765240, 45.995922, 22.306311>,  <36.062805, 46.508560, 22.716988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765240, 45.995922, 22.306311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469479, 46.184353, 22.498713>,  <35.292023, 46.297409, 22.614155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469479, 46.184353, 22.498713>,  <35.765240, 45.995922, 22.306311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469479, 46.184353, 22.498713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543107, 0.004883, -0.839650,
		-0.397887, -0.882080, 0.252233,
		-0.739406, 0.471075, 0.481006,
		35.247658, 46.325676, 22.643015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059441, 45.637363, 22.109037>,  <35.765240, 45.995922, 22.306311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059441, 45.637363, 22.109037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948914, 45.999363, 22.238422>,  <34.882599, 46.216564, 22.316053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948914, 45.999363, 22.238422>,  <35.059441, 45.637363, 22.109037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948914, 45.999363, 22.238422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554296, 0.124878, -0.822898,
		-0.785114, -0.406674, 0.467131,
		-0.276317, 0.904998, 0.323461,
		34.866020, 46.270863, 22.335461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645504, 44.952160, 22.057310>,  <35.059441, 45.637363, 22.109037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645504, 44.952160, 22.057310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457619, 44.822670, 21.728783>,  <34.344887, 44.744976, 21.531666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457619, 44.822670, 21.728783>,  <34.645504, 44.952160, 22.057310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457619, 44.822670, 21.728783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247127, -0.844929, 0.474367,
		-0.847524, 0.425787, 0.316874,
		-0.469715, -0.323729, -0.821320,
		34.316704, 44.725552, 21.482386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021328, 44.559402, 22.291742>,  <34.645504, 44.952160, 22.057310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021328, 44.559402, 22.291742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.093758, 44.446968, 21.914764>,  <34.137215, 44.379505, 21.688578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.093758, 44.446968, 21.914764>,  <34.021328, 44.559402, 22.291742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093758, 44.446968, 21.914764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121911, -0.957309, 0.262102,
		-0.975885, 0.067436, -0.207608,
		0.181070, -0.281091, -0.942444,
		34.148079, 44.362640, 21.632030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607552, 43.987034, 22.239298>,  <34.021328, 44.559402, 22.291742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607552, 43.987034, 22.239298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.850025, 43.961002, 21.922235>,  <33.995510, 43.945381, 21.731998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.850025, 43.961002, 21.922235>,  <33.607552, 43.987034, 22.239298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850025, 43.961002, 21.922235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066324, -0.997311, 0.031164,
		-0.792554, 0.033681, -0.608871,
		0.606184, -0.065082, -0.792657,
		34.031879, 43.941479, 21.684439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278332, 43.527710, 21.775940>,  <33.607552, 43.987034, 22.239298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278332, 43.527710, 21.775940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.663342, 43.522930, 21.667572>,  <33.894348, 43.520061, 21.602551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.663342, 43.522930, 21.667572>,  <33.278332, 43.527710, 21.775940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663342, 43.522930, 21.667572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040210, -0.994273, -0.099015,
		-0.268185, 0.106198, -0.957496,
		0.962528, -0.011947, -0.270920,
		33.952099, 43.519344, 21.586296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316357, 42.959415, 21.294889>,  <33.278332, 43.527710, 21.775940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316357, 42.959415, 21.294889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.710316, 43.000305, 21.350786>,  <33.946690, 43.024837, 21.384325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.710316, 43.000305, 21.350786>,  <33.316357, 42.959415, 21.294889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710316, 43.000305, 21.350786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105605, -0.994263, -0.017006,
		0.137202, 0.031506, -0.990042,
		0.984898, 0.102220, 0.139743,
		34.005783, 43.030972, 21.392710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638187, 42.607616, 20.733809>,  <33.316357, 42.959415, 21.294889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638187, 42.607616, 20.733809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886837, 42.632992, 21.046106>,  <34.036026, 42.648216, 21.233486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886837, 42.632992, 21.046106>,  <33.638187, 42.607616, 20.733809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886837, 42.632992, 21.046106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164363, -0.985090, -0.050826,
		0.765881, 0.159920, -0.622778,
		0.621621, 0.063435, 0.780746,
		34.073322, 42.652023, 21.280331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247231, 42.210625, 20.605627>,  <33.638187, 42.607616, 20.733809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247231, 42.210625, 20.605627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.243000, 42.245514, 21.004080>,  <34.240459, 42.266449, 21.243153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.243000, 42.245514, 21.004080>,  <34.247231, 42.210625, 20.605627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243000, 42.245514, 21.004080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100962, -0.991004, 0.087846,
		0.994834, 0.101501, 0.001679,
		-0.010580, 0.087222, 0.996133,
		34.239826, 42.271679, 21.302919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778595, 41.690868, 20.925552>,  <34.247231, 42.210625, 20.605627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778595, 41.690868, 20.925552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489330, 41.781937, 21.186382>,  <34.315769, 41.836578, 21.342880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489330, 41.781937, 21.186382>,  <34.778595, 41.690868, 20.925552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489330, 41.781937, 21.186382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149119, -0.973310, 0.174448,
		0.674385, 0.028918, 0.737814,
		-0.723166, 0.227667, 0.652073,
		34.272381, 41.850235, 21.382004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530125, 41.584389, 20.844759>,  <34.778595, 41.690868, 20.925552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530125, 41.584389, 20.844759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.605515, 41.310520, 20.563133>,  <35.650749, 41.146198, 20.394157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.605515, 41.310520, 20.563133>,  <35.530125, 41.584389, 20.844759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605515, 41.310520, 20.563133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257774, 0.657288, -0.708185,
		0.947644, 0.314965, -0.052607,
		0.188476, -0.684668, -0.704065,
		35.662056, 41.105122, 20.351913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803085, 41.888496, 20.256767>,  <35.530125, 41.584389, 20.844759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803085, 41.888496, 20.256767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.713821, 41.542950, 20.076130>,  <35.660263, 41.335621, 19.967747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.713821, 41.542950, 20.076130>,  <35.803085, 41.888496, 20.256767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713821, 41.542950, 20.076130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318952, 0.502486, -0.803603,
		0.921124, -0.035296, -0.387666,
		-0.223161, -0.863865, -0.451594,
		35.646873, 41.283791, 19.940651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098846, 41.943817, 19.570900>,  <35.803085, 41.888496, 20.256767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098846, 41.943817, 19.570900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.789841, 41.690811, 19.593344>,  <35.604439, 41.539009, 19.606810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.789841, 41.690811, 19.593344>,  <36.098846, 41.943817, 19.570900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789841, 41.690811, 19.593344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456513, 0.491791, -0.741443,
		0.441377, -0.598391, -0.668666,
		-0.772516, -0.632511, 0.056108,
		35.558086, 41.501057, 19.610176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905579, 41.955975, 18.937401>,  <36.098846, 41.943817, 19.570900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905579, 41.955975, 18.937401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586319, 41.788280, 19.110470>,  <35.394764, 41.687664, 19.214312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586319, 41.788280, 19.110470>,  <35.905579, 41.955975, 18.937401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586319, 41.788280, 19.110470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594984, 0.435680, -0.675409,
		0.094649, -0.796508, -0.597175,
		-0.798145, -0.419236, 0.432673,
		35.346874, 41.662510, 19.240271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461880, 41.565891, 18.382683>,  <35.905579, 41.955975, 18.937401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461880, 41.565891, 18.382683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.241070, 41.684509, 18.694408>,  <35.108585, 41.755680, 18.881443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.241070, 41.684509, 18.694408>,  <35.461880, 41.565891, 18.382683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241070, 41.684509, 18.694408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619365, 0.479913, -0.621346,
		-0.558261, -0.825677, -0.081252,
		-0.552025, 0.296548, 0.779312,
		35.075462, 41.773472, 18.928202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830761, 41.451664, 18.161150>,  <35.461880, 41.565891, 18.382683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830761, 41.451664, 18.161150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.823143, 41.728268, 18.449995>,  <34.818573, 41.894230, 18.623302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.823143, 41.728268, 18.449995>,  <34.830761, 41.451664, 18.161150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823143, 41.728268, 18.449995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428275, 0.646987, -0.630863,
		-0.903448, -0.321279, 0.283835,
		-0.019045, 0.691511, 0.722115,
		34.817429, 41.935722, 18.666630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063087, 41.768864, 18.300547>,  <34.830761, 41.451664, 18.161150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063087, 41.768864, 18.300547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346848, 42.031147, 18.403925>,  <34.517105, 42.188519, 18.465952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346848, 42.031147, 18.403925>,  <34.063087, 41.768864, 18.300547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346848, 42.031147, 18.403925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510013, 0.730668, -0.453884,
		-0.486456, 0.190174, 0.852757,
		0.709399, 0.655712, 0.258446,
		34.559666, 42.227859, 18.481459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717949, 42.477547, 18.275198>,  <34.063087, 41.768864, 18.300547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717949, 42.477547, 18.275198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094845, 42.603333, 18.321335>,  <34.320980, 42.678806, 18.349016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094845, 42.603333, 18.321335>,  <33.717949, 42.477547, 18.275198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094845, 42.603333, 18.321335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248566, 0.887281, -0.388521,
		-0.224516, 0.337408, 0.914193,
		0.942235, 0.314467, 0.115341,
		34.377514, 42.697674, 18.355938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694008, 43.118057, 18.689632>,  <33.717949, 42.477547, 18.275198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694008, 43.118057, 18.689632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.015434, 43.090668, 18.453129>,  <34.208290, 43.074234, 18.311226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.015434, 43.090668, 18.453129>,  <33.694008, 43.118057, 18.689632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015434, 43.090668, 18.453129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191178, 0.911035, -0.365331,
		0.563673, 0.406605, 0.718989,
		0.803569, -0.068472, -0.591260,
		34.256504, 43.070126, 18.275751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.435055, 35.302639, 30.028189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732666, 35.036869, 30.000015>,  <39.911232, 34.877407, 29.983110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732666, 35.036869, 30.000015>,  <39.435055, 35.302639, 30.028189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732666, 35.036869, 30.000015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151285, -0.064848, -0.986361,
		0.650800, 0.744532, -0.148766,
		0.744025, -0.664429, -0.070433,
		39.955872, 34.837540, 29.978886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784092, 35.532207, 29.316397>,  <39.435055, 35.302639, 30.028189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784092, 35.532207, 29.316397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866993, 35.154465, 29.418562>,  <39.916733, 34.927818, 29.479860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866993, 35.154465, 29.418562>,  <39.784092, 35.532207, 29.316397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866993, 35.154465, 29.418562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073034, -0.275287, -0.958584,
		0.975557, 0.180018, -0.126024,
		0.207255, -0.944357, 0.255411,
		39.929169, 34.871159, 29.495186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149639, 35.374413, 28.808180>,  <39.784092, 35.532207, 29.316397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149639, 35.374413, 28.808180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.017807, 35.029877, 28.962824>,  <39.938709, 34.823154, 29.055611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.017807, 35.029877, 28.962824>,  <40.149639, 35.374413, 28.808180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017807, 35.029877, 28.962824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182828, -0.343514, -0.921180,
		0.926258, -0.374283, -0.044263,
		-0.329577, -0.861342, 0.386612,
		39.918934, 34.771473, 29.078808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419807, 34.925011, 28.380182>,  <40.149639, 35.374413, 28.808180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419807, 34.925011, 28.380182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115013, 34.720051, 28.538589>,  <39.932137, 34.597076, 28.633633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115013, 34.720051, 28.538589>,  <40.419807, 34.925011, 28.380182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115013, 34.720051, 28.538589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304595, -0.256078, -0.917413,
		0.571490, -0.819679, 0.039054,
		-0.761985, -0.512397, 0.396016,
		39.886417, 34.566330, 28.657394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518734, 34.307846, 28.150215>,  <40.419807, 34.925011, 28.380182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518734, 34.307846, 28.150215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.133175, 34.291214, 28.255413>,  <39.901840, 34.281235, 28.318531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.133175, 34.291214, 28.255413>,  <40.518734, 34.307846, 28.150215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133175, 34.291214, 28.255413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240539, -0.287573, -0.927061,
		0.114177, -0.956856, 0.267191,
		-0.963901, -0.041579, 0.262995,
		39.844006, 34.278740, 28.334312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293709, 33.910782, 27.652390>,  <40.518734, 34.307846, 28.150215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293709, 33.910782, 27.652390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955917, 34.041229, 27.822332>,  <39.753242, 34.119499, 27.924297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955917, 34.041229, 27.822332>,  <40.293709, 33.910782, 27.652390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955917, 34.041229, 27.822332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490836, -0.153786, -0.857572,
		-0.214341, -0.932733, 0.289944,
		-0.844475, 0.326128, 0.424856,
		39.702576, 34.139065, 27.949789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795452, 33.462662, 27.381317>,  <40.293709, 33.910782, 27.652390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795452, 33.462662, 27.381317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598042, 33.789928, 27.499321>,  <39.479595, 33.986290, 27.570124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598042, 33.789928, 27.499321>,  <39.795452, 33.462662, 27.381317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598042, 33.789928, 27.499321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481883, 0.025146, -0.875875,
		-0.724033, -0.574425, 0.381852,
		-0.493523, 0.818171, 0.295012,
		39.449986, 34.035381, 27.587824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170162, 33.338245, 27.007925>,  <39.795452, 33.462662, 27.381317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170162, 33.338245, 27.007925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203915, 33.727543, 27.093409>,  <39.224167, 33.961121, 27.144699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203915, 33.727543, 27.093409>,  <39.170162, 33.338245, 27.007925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203915, 33.727543, 27.093409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539803, 0.224923, -0.811186,
		-0.837552, -0.046913, 0.544340,
		0.084380, 0.973247, 0.213708,
		39.229229, 34.019516, 27.157520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491409, 33.624222, 26.789330>,  <39.170162, 33.338245, 27.007925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491409, 33.624222, 26.789330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741398, 33.935841, 26.809328>,  <38.891392, 34.122810, 26.821327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741398, 33.935841, 26.809328>,  <38.491409, 33.624222, 26.789330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741398, 33.935841, 26.809328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366125, 0.349074, -0.862612,
		-0.689467, 0.520802, 0.503389,
		0.624970, 0.779046, 0.049997,
		38.928890, 34.169556, 26.824327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100784, 34.136879, 26.727375>,  <38.491409, 33.624222, 26.789330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100784, 34.136879, 26.727375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451912, 34.288811, 26.610641>,  <38.662590, 34.379971, 26.540602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451912, 34.288811, 26.610641>,  <38.100784, 34.136879, 26.727375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451912, 34.288811, 26.610641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470027, 0.565711, -0.677529,
		-0.092250, 0.731917, 0.675120,
		0.877818, 0.379827, -0.291834,
		38.715256, 34.402760, 26.523090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786865, 34.783039, 26.639133>,  <38.100784, 34.136879, 26.727375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786865, 34.783039, 26.639133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145775, 34.784660, 26.462553>,  <38.361122, 34.785633, 26.356606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145775, 34.784660, 26.462553>,  <37.786865, 34.783039, 26.639133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145775, 34.784660, 26.462553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333898, 0.660384, -0.672611,
		0.288803, 0.750918, 0.593899,
		0.897276, 0.004049, -0.441451,
		38.414959, 34.785873, 26.330118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919918, 35.446976, 26.444794>,  <37.786865, 34.783039, 26.639133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919918, 35.446976, 26.444794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178635, 35.256878, 26.206198>,  <38.333866, 35.142818, 26.063040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178635, 35.256878, 26.206198>,  <37.919918, 35.446976, 26.444794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178635, 35.256878, 26.206198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299861, 0.560661, -0.771844,
		0.701244, 0.678087, 0.220124,
		0.646793, -0.475244, -0.596492,
		38.372673, 35.114304, 26.027250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735481, 36.017124, 26.950222>,  <37.919918, 35.446976, 26.444794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735481, 36.017124, 26.950222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339687, 35.964058, 26.973270>,  <37.102211, 35.932220, 26.987099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339687, 35.964058, 26.973270>,  <37.735481, 36.017124, 26.950222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339687, 35.964058, 26.973270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120524, -0.536058, 0.835533,
		-0.079957, 0.833692, 0.546410,
		-0.989485, -0.132662, 0.057619,
		37.042843, 35.924259, 26.990557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559067, 36.210636, 27.571884>,  <37.735481, 36.017124, 26.950222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559067, 36.210636, 27.571884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281208, 35.952576, 27.444603>,  <37.114494, 35.797741, 27.368235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.281208, 35.952576, 27.444603>,  <37.559067, 36.210636, 27.571884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281208, 35.952576, 27.444603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013613, -0.430475, 0.902500,
		-0.719226, 0.631247, 0.290244,
		-0.694643, -0.645150, -0.318202,
		37.072815, 35.759029, 27.349142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974915, 36.299793, 28.049170>,  <37.559067, 36.210636, 27.571884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974915, 36.299793, 28.049170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977806, 35.944641, 27.865164>,  <36.979542, 35.731548, 27.754761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977806, 35.944641, 27.865164>,  <36.974915, 36.299793, 28.049170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977806, 35.944641, 27.865164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100822, -0.458328, 0.883046,
		-0.994878, 0.040000, -0.092830,
		0.007225, -0.887883, -0.460013,
		36.979973, 35.678276, 27.727160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421299, 36.017521, 28.243484>,  <36.974915, 36.299793, 28.049170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421299, 36.017521, 28.243484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640347, 35.703232, 28.128416>,  <36.771774, 35.514660, 28.059374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640347, 35.703232, 28.128416>,  <36.421299, 36.017521, 28.243484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640347, 35.703232, 28.128416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243811, -0.478727, 0.843432,
		-0.800421, -0.391738, -0.453726,
		0.547615, -0.785724, -0.287673,
		36.804630, 35.467514, 28.042114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016682, 35.536224, 28.342932>,  <36.421299, 36.017521, 28.243484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016682, 35.536224, 28.342932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371861, 35.355183, 28.310179>,  <36.584969, 35.246559, 28.290527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371861, 35.355183, 28.310179>,  <36.016682, 35.536224, 28.342932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371861, 35.355183, 28.310179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213041, -0.562483, 0.798891,
		-0.407637, -0.691926, -0.595877,
		0.887945, -0.452604, -0.081881,
		36.638245, 35.219402, 28.285614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917858, 34.812347, 28.259903>,  <36.016682, 35.536224, 28.342932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917858, 34.812347, 28.259903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290409, 34.854317, 28.399345>,  <36.513939, 34.879498, 28.483011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290409, 34.854317, 28.399345>,  <35.917858, 34.812347, 28.259903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290409, 34.854317, 28.399345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212121, -0.621832, 0.753876,
		0.295873, -0.776091, -0.556904,
		0.931377, 0.104921, 0.348609,
		36.569824, 34.885792, 28.503927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071968, 34.212791, 28.533474>,  <35.917858, 34.812347, 28.259903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071968, 34.212791, 28.533474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395069, 34.388943, 28.690247>,  <36.588928, 34.494633, 28.784311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395069, 34.388943, 28.690247>,  <36.071968, 34.212791, 28.533474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395069, 34.388943, 28.690247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096942, -0.556557, 0.825134,
		0.581501, -0.704497, -0.406868,
		0.807750, 0.440374, 0.391934,
		36.637394, 34.521053, 28.807827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584713, 33.641045, 28.835791>,  <36.071968, 34.212791, 28.533474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584713, 33.641045, 28.835791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640614, 33.992397, 29.018623>,  <36.674152, 34.203209, 29.128323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640614, 33.992397, 29.018623>,  <36.584713, 33.641045, 28.835791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640614, 33.992397, 29.018623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154696, -0.436575, 0.886268,
		0.978028, -0.194565, 0.074870,
		0.139751, 0.878378, 0.457081,
		36.682537, 34.255909, 29.155748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010651, 33.496410, 29.351929>,  <36.584713, 33.641045, 28.835791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010651, 33.496410, 29.351929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802460, 33.822643, 29.453062>,  <36.677544, 34.018383, 29.513742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802460, 33.822643, 29.453062>,  <37.010651, 33.496410, 29.351929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802460, 33.822643, 29.453062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124636, -0.365494, 0.922431,
		0.844728, 0.448596, 0.291884,
		-0.520481, 0.815583, 0.252832,
		36.646317, 34.067318, 29.528912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129025, 33.585693, 30.073732>,  <37.010651, 33.496410, 29.351929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129025, 33.585693, 30.073732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818878, 33.833473, 30.024599>,  <36.632790, 33.982143, 29.995119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818878, 33.833473, 30.024599>,  <37.129025, 33.585693, 30.073732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818878, 33.833473, 30.024599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322809, -0.221595, 0.920158,
		0.542774, 0.753110, 0.371781,
		-0.775365, 0.619452, -0.122834,
		36.586269, 34.019310, 29.987749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079525, 34.000477, 30.648973>,  <37.129025, 33.585693, 30.073732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079525, 34.000477, 30.648973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708702, 34.035954, 30.503260>,  <36.486210, 34.057240, 30.415831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708702, 34.035954, 30.503260>,  <37.079525, 34.000477, 30.648973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708702, 34.035954, 30.503260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373992, -0.150170, 0.915193,
		0.026468, 0.984674, 0.172387,
		-0.927054, 0.088694, -0.364286,
		36.430588, 34.062561, 30.393974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734447, 34.161942, 31.251753>,  <37.079525, 34.000477, 30.648973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734447, 34.161942, 31.251753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435539, 34.102505, 30.992674>,  <36.256195, 34.066845, 30.837227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435539, 34.102505, 30.992674>,  <36.734447, 34.161942, 31.251753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435539, 34.102505, 30.992674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601575, -0.262807, 0.754348,
		-0.282306, 0.953338, 0.107000,
		-0.747269, -0.148588, -0.647696,
		36.211357, 34.057930, 30.798365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245213, 34.519814, 31.541039>,  <36.734447, 34.161942, 31.251753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245213, 34.519814, 31.541039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082718, 34.242348, 31.303112>,  <35.985222, 34.075871, 31.160357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082718, 34.242348, 31.303112>,  <36.245213, 34.519814, 31.541039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082718, 34.242348, 31.303112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633867, -0.254947, 0.730216,
		-0.658170, 0.673672, -0.336122,
		-0.406233, -0.693663, -0.594817,
		35.960850, 34.034248, 31.124666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534420, 34.566303, 31.619736>,  <36.245213, 34.519814, 31.541039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534420, 34.566303, 31.619736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592876, 34.196972, 31.477690>,  <35.627953, 33.975372, 31.392462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592876, 34.196972, 31.477690>,  <35.534420, 34.566303, 31.619736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592876, 34.196972, 31.477690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690150, -0.352345, 0.632096,
		-0.708755, 0.152706, -0.688728,
		0.146145, -0.923328, -0.355116,
		35.636719, 33.919975, 31.371155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000252, 35.047977, 31.951227>,  <35.534420, 34.566303, 31.619736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000252, 35.047977, 31.951227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069260, 35.264690, 32.280277>,  <36.110664, 35.394718, 32.477707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069260, 35.264690, 32.280277>,  <36.000252, 35.047977, 31.951227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069260, 35.264690, 32.280277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593768, 0.723551, -0.352014,
		-0.785925, -0.427719, 0.446518,
		0.172515, 0.541784, 0.822623,
		36.121014, 35.427227, 32.527065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380962, 35.444668, 32.208485>,  <36.000252, 35.047977, 31.951227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380962, 35.444668, 32.208485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691910, 35.634644, 32.373470>,  <35.878479, 35.748627, 32.472462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691910, 35.634644, 32.373470>,  <35.380962, 35.444668, 32.208485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691910, 35.634644, 32.373470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358017, 0.873193, -0.330693,
		-0.517222, 0.109401, 0.848831,
		0.777371, 0.474937, 0.412467,
		35.925121, 35.777126, 32.497211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096176, 36.025928, 32.535007>,  <35.380962, 35.444668, 32.208485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096176, 36.025928, 32.535007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.468716, 36.093296, 32.405876>,  <35.692242, 36.133717, 32.328396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.468716, 36.093296, 32.405876>,  <35.096176, 36.025928, 32.535007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468716, 36.093296, 32.405876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314799, 0.818005, -0.481424,
		0.182994, 0.550002, 0.814869,
		0.931351, 0.168422, -0.322830,
		35.748119, 36.143822, 32.309029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155003, 36.794224, 32.565533>,  <35.096176, 36.025928, 32.535007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155003, 36.794224, 32.565533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475128, 36.660702, 32.366306>,  <35.667206, 36.580589, 32.246769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475128, 36.660702, 32.366306>,  <35.155003, 36.794224, 32.565533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475128, 36.660702, 32.366306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034660, 0.855061, -0.517368,
		0.598575, 0.396796, 0.695889,
		0.800316, -0.333803, -0.498065,
		35.715221, 36.560562, 32.216888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875660, 37.161648, 32.667561>,  <35.155003, 36.794224, 32.565533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875660, 37.161648, 32.667561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885098, 37.002369, 32.300762>,  <35.890759, 36.906803, 32.080685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885098, 37.002369, 32.300762>,  <35.875660, 37.161648, 32.667561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885098, 37.002369, 32.300762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292489, 0.879866, -0.374549,
		0.955978, -0.259375, 0.137227,
		0.023593, -0.398197, -0.916996,
		35.892174, 36.882908, 32.025661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268417, 37.657207, 32.376736>,  <35.875660, 37.161648, 32.667561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268417, 37.657207, 32.376736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093483, 37.451515, 32.081627>,  <35.988522, 37.328098, 31.904562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093483, 37.451515, 32.081627>,  <36.268417, 37.657207, 32.376736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093483, 37.451515, 32.081627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054339, 0.803774, -0.592449,
		0.897657, -0.299187, -0.323573,
		-0.437332, -0.514233, -0.737770,
		35.962284, 37.297245, 31.860296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588039, 37.947929, 31.873798>,  <36.268417, 37.657207, 32.376736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588039, 37.947929, 31.873798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255280, 37.790226, 31.717588>,  <36.055626, 37.695606, 31.623863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255280, 37.790226, 31.717588>,  <36.588039, 37.947929, 31.873798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255280, 37.790226, 31.717588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027610, 0.732270, -0.680455,
		0.554241, -0.555287, -0.620059,
		-0.831898, -0.394256, -0.390523,
		36.005711, 37.671947, 31.600431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642548, 37.895653, 31.081459>,  <36.588039, 37.947929, 31.873798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642548, 37.895653, 31.081459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.248203, 37.883022, 31.147295>,  <36.011597, 37.875446, 31.186796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.248203, 37.883022, 31.147295>,  <36.642548, 37.895653, 31.081459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248203, 37.883022, 31.147295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150514, 0.598718, -0.786691,
		-0.073704, -0.800337, -0.595002,
		-0.985856, -0.031574, 0.164590,
		35.952446, 37.873550, 31.196672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332108, 37.684643, 30.455500>,  <36.642548, 37.895653, 31.081459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332108, 37.684643, 30.455500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044125, 37.875500, 30.657093>,  <35.871334, 37.990013, 30.778049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044125, 37.875500, 30.657093>,  <36.332108, 37.684643, 30.455500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044125, 37.875500, 30.657093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069200, 0.673211, -0.736205,
		-0.690559, -0.564912, -0.451666,
		-0.719958, 0.477138, 0.503984,
		35.828136, 38.018642, 30.808289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851646, 37.939560, 29.899050>,  <36.332108, 37.684643, 30.455500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851646, 37.939560, 29.899050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755711, 38.128490, 30.238316>,  <35.698151, 38.241848, 30.441875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755711, 38.128490, 30.238316>,  <35.851646, 37.939560, 29.899050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755711, 38.128490, 30.238316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144969, 0.846446, -0.512361,
		-0.959928, -0.245842, -0.134537,
		-0.239838, 0.472325, 0.848166,
		35.683758, 38.270187, 30.492765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221363, 38.146637, 29.753609>,  <35.851646, 37.939560, 29.899050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221363, 38.146637, 29.753609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351242, 38.378689, 30.052412>,  <35.429169, 38.517918, 30.231695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351242, 38.378689, 30.052412>,  <35.221363, 38.146637, 29.753609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351242, 38.378689, 30.052412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120302, 0.808720, -0.575759,
		-0.938135, 0.097082, 0.332381,
		0.324699, 0.580126, 0.747010,
		35.448650, 38.552727, 30.276516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693604, 38.604473, 29.886864>,  <35.221363, 38.146637, 29.753609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693604, 38.604473, 29.886864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041294, 38.752045, 30.018526>,  <35.249908, 38.840588, 30.097525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041294, 38.752045, 30.018526>,  <34.693604, 38.604473, 29.886864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041294, 38.752045, 30.018526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080554, 0.762522, -0.641928,
		-0.487814, 0.531464, 0.692520,
		0.869223, 0.368926, 0.329158,
		35.302059, 38.862724, 30.117273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558125, 39.257973, 29.779123>,  <34.693604, 38.604473, 29.886864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558125, 39.257973, 29.779123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953194, 39.218346, 29.827602>,  <35.190235, 39.194569, 29.856689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953194, 39.218346, 29.827602>,  <34.558125, 39.257973, 29.779123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953194, 39.218346, 29.827602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154999, 0.727238, -0.668655,
		-0.021898, 0.679198, 0.733629,
		0.987672, -0.099069, 0.121200,
		35.249496, 39.188625, 29.863962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741493, 39.874550, 30.026112>,  <34.558125, 39.257973, 29.779123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741493, 39.874550, 30.026112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081970, 39.719883, 29.884150>,  <35.286259, 39.627083, 29.798973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081970, 39.719883, 29.884150>,  <34.741493, 39.874550, 30.026112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081970, 39.719883, 29.884150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067821, 0.751567, -0.656161,
		0.520448, 0.534451, 0.665955,
		0.851196, -0.386663, -0.354904,
		35.337330, 39.603886, 29.777678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270840, 40.434681, 30.009487>,  <34.741493, 39.874550, 30.026112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270840, 40.434681, 30.009487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381756, 40.165375, 29.735312>,  <35.448303, 40.003792, 29.570807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381756, 40.165375, 29.735312>,  <35.270840, 40.434681, 30.009487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381756, 40.165375, 29.735312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184641, 0.737458, -0.649664,
		0.942878, 0.053583, 0.328800,
		0.277287, -0.673264, -0.685440,
		35.464943, 39.963394, 29.529680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969170, 40.738693, 29.691776>,  <35.270840, 40.434681, 30.009487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969170, 40.738693, 29.691776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823734, 40.484699, 29.419132>,  <35.736473, 40.332302, 29.255545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823734, 40.484699, 29.419132>,  <35.969170, 40.738693, 29.691776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823734, 40.484699, 29.419132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207421, 0.658138, -0.723762,
		0.908176, -0.404529, -0.107579,
		-0.363585, -0.634989, -0.681612,
		35.714657, 40.294201, 29.214649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407494, 40.869057, 29.258890>,  <35.969170, 40.738693, 29.691776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407494, 40.869057, 29.258890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131844, 40.675304, 29.043304>,  <35.966454, 40.559052, 28.913954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131844, 40.675304, 29.043304>,  <36.407494, 40.869057, 29.258890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131844, 40.675304, 29.043304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147317, 0.634587, -0.758681,
		0.709513, -0.602223, -0.365950,
		-0.689122, -0.484384, -0.538966,
		35.925106, 40.529991, 28.881615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714352, 40.782364, 28.632793>,  <36.407494, 40.869057, 29.258890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714352, 40.782364, 28.632793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320110, 40.747120, 28.575064>,  <36.083565, 40.725975, 28.540426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320110, 40.747120, 28.575064>,  <36.714352, 40.782364, 28.632793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320110, 40.747120, 28.575064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078552, 0.517270, -0.852210,
		0.149742, -0.851275, -0.502900,
		-0.985600, -0.088107, -0.144326,
		36.024429, 40.720688, 28.531765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643307, 40.635777, 27.946604>,  <36.714352, 40.782364, 28.632793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643307, 40.635777, 27.946604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286953, 40.789036, 28.044188>,  <36.073139, 40.880993, 28.102737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286953, 40.789036, 28.044188>,  <36.643307, 40.635777, 27.946604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286953, 40.789036, 28.044188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006598, 0.547950, -0.836485,
		-0.454177, -0.743604, -0.490689,
		-0.890887, 0.383150, 0.243960,
		36.019688, 40.903980, 28.117376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252308, 40.557953, 27.377066>,  <36.643307, 40.635777, 27.946604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252308, 40.557953, 27.377066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072247, 40.845245, 27.589291>,  <35.964211, 41.017620, 27.716625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072247, 40.845245, 27.589291>,  <36.252308, 40.557953, 27.377066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072247, 40.845245, 27.589291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002996, 0.592952, -0.805232,
		-0.892945, -0.364070, -0.264770,
		-0.450157, 0.718235, 0.530564,
		35.937199, 41.060715, 27.748459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636803, 40.816154, 26.849863>,  <36.252308, 40.557953, 27.377066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636803, 40.816154, 26.849863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693222, 41.071941, 27.152170>,  <35.727074, 41.225414, 27.333555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693222, 41.071941, 27.152170>,  <35.636803, 40.816154, 26.849863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693222, 41.071941, 27.152170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146148, 0.741586, -0.654745,
		-0.979156, 0.202805, 0.011143,
		0.141049, 0.639468, 0.755768,
		35.735538, 41.263783, 27.378901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340061, 41.414829, 26.583393>,  <35.636803, 40.816154, 26.849863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340061, 41.414829, 26.583393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553558, 41.546925, 26.894793>,  <35.681656, 41.626183, 27.081633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553558, 41.546925, 26.894793>,  <35.340061, 41.414829, 26.583393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553558, 41.546925, 26.894793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133482, 0.876154, -0.463181,
		-0.835045, 0.351136, 0.423561,
		0.533745, 0.330239, 0.778498,
		35.713680, 41.645996, 27.128342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056217, 42.117451, 26.847557>,  <35.340061, 41.414829, 26.583393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056217, 42.117451, 26.847557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441120, 42.103035, 26.955456>,  <35.672062, 42.094383, 27.020195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441120, 42.103035, 26.955456>,  <35.056217, 42.117451, 26.847557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441120, 42.103035, 26.955456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159859, 0.877022, -0.453076,
		-0.220242, 0.479096, 0.849682,
		0.962257, -0.036043, 0.269745,
		35.729797, 42.092220, 27.036379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278793, 42.784039, 27.016678>,  <35.056217, 42.117451, 26.847557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278793, 42.784039, 27.016678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618015, 42.585331, 26.942898>,  <35.821548, 42.466106, 26.898630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618015, 42.585331, 26.942898>,  <35.278793, 42.784039, 27.016678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618015, 42.585331, 26.942898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393774, 0.823704, -0.407988,
		0.354609, 0.273364, 0.894161,
		0.848053, -0.496773, -0.184450,
		35.872433, 42.436298, 26.887564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808304, 43.132637, 27.303160>,  <35.278793, 42.784039, 27.016678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808304, 43.132637, 27.303160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990814, 42.922852, 27.015619>,  <36.100319, 42.796978, 26.843094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990814, 42.922852, 27.015619>,  <35.808304, 43.132637, 27.303160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990814, 42.922852, 27.015619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198199, 0.847450, -0.492489,
		0.867486, 0.082234, 0.490618,
		0.456273, -0.524467, -0.718852,
		36.127697, 42.765511, 26.799963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399242, 43.526402, 27.154894>,  <35.808304, 43.132637, 27.303160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399242, 43.526402, 27.154894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.385586, 43.291027, 26.831764>,  <36.377392, 43.149803, 26.637886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.385586, 43.291027, 26.831764>,  <36.399242, 43.526402, 27.154894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385586, 43.291027, 26.831764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251189, 0.777297, -0.576812,
		0.967336, -0.222611, 0.121268,
		-0.034144, -0.588432, -0.807825,
		36.375343, 43.114498, 26.589417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043209, 43.637085, 26.699780>,  <36.399242, 43.526402, 27.154894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043209, 43.637085, 26.699780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725002, 43.526943, 26.483879>,  <36.534077, 43.460857, 26.354340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.725002, 43.526943, 26.483879>,  <37.043209, 43.637085, 26.699780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725002, 43.526943, 26.483879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066391, 0.845808, -0.529341,
		0.602281, -0.456935, -0.654575,
		-0.795519, -0.275354, -0.539750,
		36.486347, 43.444336, 26.321955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194759, 43.738121, 25.967346>,  <37.043209, 43.637085, 26.699780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194759, 43.738121, 25.967346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796036, 43.725403, 25.996641>,  <36.556801, 43.717773, 26.014217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796036, 43.725403, 25.996641>,  <37.194759, 43.738121, 25.967346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796036, 43.725403, 25.996641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063092, 0.875807, -0.478520,
		-0.048928, -0.481614, -0.875017,
		-0.996808, -0.031794, 0.073237,
		36.496994, 43.715866, 26.018612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555363, 43.559338, 25.250479>,  <37.194759, 43.738121, 25.967346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555363, 43.559338, 25.250479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795353, 43.855507, 25.371677>,  <37.939346, 44.033207, 25.444397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795353, 43.855507, 25.371677>,  <37.555363, 43.559338, 25.250479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795353, 43.855507, 25.371677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452948, -0.626569, 0.634232,
		0.659447, -0.243282, -0.711298,
		0.599974, 0.740423, 0.302995,
		37.975346, 44.077633, 25.462576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253010, 43.334732, 25.130692>,  <37.555363, 43.559338, 25.250479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253010, 43.334732, 25.130692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227093, 43.615185, 25.414722>,  <38.211544, 43.783459, 25.585142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227093, 43.615185, 25.414722>,  <38.253010, 43.334732, 25.130692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227093, 43.615185, 25.414722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459893, -0.610521, 0.644796,
		0.885607, 0.368338, -0.282890,
		-0.064793, 0.701135, 0.710079,
		38.207653, 43.825527, 25.627747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913086, 43.340931, 25.381222>,  <38.253010, 43.334732, 25.130692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913086, 43.340931, 25.381222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.693462, 43.531204, 25.656107>,  <38.561687, 43.645370, 25.821037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.693462, 43.531204, 25.656107>,  <38.913086, 43.340931, 25.381222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693462, 43.531204, 25.656107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453014, -0.521596, 0.722991,
		0.702363, 0.708280, 0.070894,
		-0.549057, 0.475686, 0.687211,
		38.528744, 43.673908, 25.862270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422604, 43.460697, 25.811646>,  <38.913086, 43.340931, 25.381222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422604, 43.460697, 25.811646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091324, 43.476692, 26.035250>,  <38.892555, 43.486290, 26.169413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091324, 43.476692, 26.035250>,  <39.422604, 43.460697, 25.811646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091324, 43.476692, 26.035250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376636, -0.698917, 0.607997,
		0.415012, 0.714084, 0.563781,
		-0.828197, 0.039986, 0.559008,
		38.842865, 43.488689, 26.202951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658749, 43.229721, 26.406500>,  <39.422604, 43.460697, 25.811646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658749, 43.229721, 26.406500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264023, 43.225506, 26.471096>,  <39.027187, 43.222977, 26.509853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264023, 43.225506, 26.471096>,  <39.658749, 43.229721, 26.406500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264023, 43.225506, 26.471096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125088, -0.682813, 0.719805,
		0.102680, 0.730518, 0.675130,
		-0.986818, -0.010541, 0.161491,
		38.967976, 43.222343, 26.519543>
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
