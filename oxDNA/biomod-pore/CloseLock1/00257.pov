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
	<24.402138, 35.073017, 34.936367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311863, 35.439915, 34.805080>,  <24.257698, 35.660053, 34.726311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311863, 35.439915, 34.805080>,  <24.402138, 35.073017, 34.936367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311863, 35.439915, 34.805080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961720, -0.156018, 0.225285,
		0.155435, 0.366493, 0.917346,
		-0.225688, 0.917247, -0.328213,
		24.244156, 35.715088, 34.706615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.078028, 34.831211, 35.521812>,  <24.402138, 35.073017, 34.936367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.078028, 34.831211, 35.521812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259907, 34.606640, 35.798378>,  <24.369034, 34.471897, 35.964317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259907, 34.606640, 35.798378>,  <24.078028, 34.831211, 35.521812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259907, 34.606640, 35.798378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831570, -0.010409, -0.555322,
		0.318970, 0.827461, 0.462133,
		0.454697, -0.561427, 0.691412,
		24.396317, 34.438213, 36.005802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728800, 35.075783, 35.691753>,  <24.078028, 34.831211, 35.521812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728800, 35.075783, 35.691753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777029, 34.694469, 35.802547>,  <24.805967, 34.465683, 35.869022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777029, 34.694469, 35.802547>,  <24.728800, 35.075783, 35.691753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777029, 34.694469, 35.802547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839287, -0.051120, -0.541281,
		0.530151, 0.297735, 0.793911,
		0.120574, -0.953279, 0.276986,
		24.813202, 34.408485, 35.885643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384987, 34.974972, 36.027546>,  <24.728800, 35.075783, 35.691753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384987, 34.974972, 36.027546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245235, 34.665127, 35.816677>,  <25.161385, 34.479221, 35.690155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245235, 34.665127, 35.816677>,  <25.384987, 34.974972, 36.027546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245235, 34.665127, 35.816677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791870, 0.056656, -0.608057,
		0.500875, -0.629894, 0.593597,
		-0.349381, -0.774612, -0.527172,
		25.140421, 34.432743, 35.658527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960220, 34.388092, 35.932270>,  <25.384987, 34.974972, 36.027546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960220, 34.388092, 35.932270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679676, 34.414494, 35.648373>,  <25.511349, 34.430332, 35.478035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679676, 34.414494, 35.648373>,  <25.960220, 34.388092, 35.932270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679676, 34.414494, 35.648373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712497, 0.035645, -0.700769,
		-0.020956, -0.997182, -0.072029,
		-0.701362, 0.066005, -0.709743,
		25.469267, 34.434296, 35.435452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429686, 33.988842, 35.475086>,  <25.960220, 34.388092, 35.932270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429686, 33.988842, 35.475086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704388, 34.207531, 35.283478>,  <26.869209, 34.338745, 35.168510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704388, 34.207531, 35.283478>,  <26.429686, 33.988842, 35.475086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704388, 34.207531, 35.283478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429986, -0.836891, -0.338712,
		-0.586073, 0.026638, -0.809820,
		0.686754, 0.546721, -0.479025,
		26.910414, 34.371548, 35.139771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471697, 33.715626, 34.820995>,  <26.429686, 33.988842, 35.475086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471697, 33.715626, 34.820995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822836, 33.893612, 34.891869>,  <27.033520, 34.000404, 34.934391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822836, 33.893612, 34.891869>,  <26.471697, 33.715626, 34.820995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822836, 33.893612, 34.891869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478697, -0.803278, -0.354392,
		-0.015366, 0.395918, -0.918157,
		0.877845, 0.444965, 0.177182,
		27.086189, 34.027100, 34.945023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838375, 33.526382, 34.242683>,  <26.471697, 33.715626, 34.820995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838375, 33.526382, 34.242683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091614, 33.639816, 34.530785>,  <27.243557, 33.707878, 34.703644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091614, 33.639816, 34.530785>,  <26.838375, 33.526382, 34.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091614, 33.639816, 34.530785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669014, -0.668501, -0.324849,
		0.389368, 0.687521, -0.612949,
		0.633098, 0.283586, 0.720254,
		27.281544, 33.724892, 34.746861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526644, 33.539280, 33.910881>,  <26.838375, 33.526382, 34.242683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526644, 33.539280, 33.910881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600822, 33.508289, 34.302719>,  <27.645330, 33.489697, 34.537823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600822, 33.508289, 34.302719>,  <27.526644, 33.539280, 33.910881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600822, 33.508289, 34.302719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727820, -0.658951, -0.189899,
		0.660218, 0.748185, -0.065816,
		0.185449, -0.077473, 0.979595,
		27.656458, 33.485046, 34.596596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281441, 33.694744, 33.956257>,  <27.526644, 33.539280, 33.910881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281441, 33.694744, 33.956257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122395, 33.472073, 34.248013>,  <28.026966, 33.338470, 34.423065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122395, 33.472073, 34.248013>,  <28.281441, 33.694744, 33.956257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122395, 33.472073, 34.248013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665820, -0.722015, -0.188090,
		0.631336, 0.410854, 0.657734,
		-0.397617, -0.556681, 0.729389,
		28.003109, 33.305069, 34.466827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848591, 33.291130, 34.183895>,  <28.281441, 33.694744, 33.956257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848591, 33.291130, 34.183895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531309, 33.101612, 34.336914>,  <28.340940, 32.987900, 34.428726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531309, 33.101612, 34.336914>,  <28.848591, 33.291130, 34.183895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531309, 33.101612, 34.336914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470114, -0.875742, -0.109858,
		0.387062, 0.092700, 0.917382,
		-0.793206, -0.473796, 0.382546,
		28.293346, 32.959473, 34.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159208, 32.821953, 34.633675>,  <28.848591, 33.291130, 34.183895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159208, 32.821953, 34.633675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793701, 32.662842, 34.600697>,  <28.574396, 32.567375, 34.580910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793701, 32.662842, 34.600697>,  <29.159208, 32.821953, 34.633675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793701, 32.662842, 34.600697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405296, -0.878919, -0.251467,
		0.027562, -0.263199, 0.964348,
		-0.913770, -0.397777, -0.082449,
		28.519569, 32.543510, 34.575962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209637, 32.121601, 34.947941>,  <29.159208, 32.821953, 34.633675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209637, 32.121601, 34.947941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893528, 32.106514, 34.703304>,  <28.703863, 32.097462, 34.556522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893528, 32.106514, 34.703304>,  <29.209637, 32.121601, 34.947941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893528, 32.106514, 34.703304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343669, -0.853623, -0.391432,
		-0.507307, -0.519524, 0.687557,
		-0.790273, -0.037716, -0.611593,
		28.656446, 32.095200, 34.519825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865866, 31.502552, 35.005768>,  <29.209637, 32.121601, 34.947941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865866, 31.502552, 35.005768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766764, 31.607384, 34.632687>,  <28.707302, 31.670282, 34.408840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766764, 31.607384, 34.632687>,  <28.865866, 31.502552, 35.005768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766764, 31.607384, 34.632687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369339, -0.864464, -0.341015,
		-0.895660, -0.428970, 0.117376,
		-0.247752, 0.262082, -0.932702,
		28.692438, 31.686008, 34.352875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437431, 30.976248, 34.718494>,  <28.865866, 31.502552, 35.005768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437431, 30.976248, 34.718494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585579, 31.177799, 34.406357>,  <28.674467, 31.298731, 34.219074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585579, 31.177799, 34.406357>,  <28.437431, 30.976248, 34.718494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585579, 31.177799, 34.406357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287751, -0.860997, -0.419385,
		-0.883191, -0.069218, -0.463878,
		0.370368, 0.503878, -0.780342,
		28.696690, 31.328962, 34.172253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376205, 30.464479, 34.133656>,  <28.437431, 30.976248, 34.718494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376205, 30.464479, 34.133656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629341, 30.735161, 33.983139>,  <28.781221, 30.897570, 33.892830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629341, 30.735161, 33.983139>,  <28.376205, 30.464479, 34.133656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629341, 30.735161, 33.983139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453879, -0.717939, -0.527786,
		-0.627305, 0.163214, -0.761479,
		0.632837, 0.676702, -0.376287,
		28.819193, 30.938171, 33.870255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341225, 30.422033, 33.440510>,  <28.376205, 30.464479, 34.133656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341225, 30.422033, 33.440510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697842, 30.575602, 33.536644>,  <28.911812, 30.667742, 33.594326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697842, 30.575602, 33.536644>,  <28.341225, 30.422033, 33.440510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697842, 30.575602, 33.536644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449564, -0.685376, -0.572845,
		-0.055206, 0.618761, -0.783637,
		0.891541, 0.383919, 0.240336,
		28.965303, 30.690777, 33.608746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916842, 30.154287, 32.897667>,  <28.341225, 30.422033, 33.440510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916842, 30.154287, 32.897667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121248, 30.300924, 33.208656>,  <29.243893, 30.388906, 33.395252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121248, 30.300924, 33.208656>,  <28.916842, 30.154287, 32.897667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121248, 30.300924, 33.208656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794621, -0.546384, -0.264655,
		0.327781, 0.753044, -0.570513,
		0.511016, 0.366593, 0.777478,
		29.274553, 30.410902, 33.441898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491642, 30.415945, 32.575127>,  <28.916842, 30.154287, 32.897667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491642, 30.415945, 32.575127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579981, 30.368135, 32.962311>,  <29.632984, 30.339449, 33.194622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579981, 30.368135, 32.962311>,  <29.491642, 30.415945, 32.575127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579981, 30.368135, 32.962311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819852, -0.514809, -0.250626,
		0.528269, 0.848932, -0.015702,
		0.220848, -0.119525, 0.967957,
		29.646235, 30.332277, 33.252697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126356, 30.724739, 32.593876>,  <29.491642, 30.415945, 32.575127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126356, 30.724739, 32.593876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089090, 30.493477, 32.918110>,  <30.066730, 30.354719, 33.112652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089090, 30.493477, 32.918110>,  <30.126356, 30.724739, 32.593876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089090, 30.493477, 32.918110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946193, -0.304815, -0.108660,
		0.309902, 0.756850, 0.575447,
		-0.093166, -0.578158, 0.810588,
		30.061140, 30.320030, 33.161285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731026, 30.832056, 32.911739>,  <30.126356, 30.724739, 32.593876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731026, 30.832056, 32.911739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596697, 30.484602, 33.057453>,  <30.516100, 30.276131, 33.144882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596697, 30.484602, 33.057453>,  <30.731026, 30.832056, 32.911739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596697, 30.484602, 33.057453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918801, -0.387256, -0.076400,
		0.207435, 0.309046, 0.928149,
		-0.335820, -0.868633, 0.364282,
		30.495951, 30.224012, 33.166737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222511, 30.608171, 33.390678>,  <30.731026, 30.832056, 32.911739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222511, 30.608171, 33.390678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027079, 30.269627, 33.305862>,  <30.909819, 30.066500, 33.254971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027079, 30.269627, 33.305862>,  <31.222511, 30.608171, 33.390678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027079, 30.269627, 33.305862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871976, -0.482212, -0.084443,
		-0.030781, -0.226154, 0.973605,
		-0.488581, -0.846361, -0.212044,
		30.880505, 30.015718, 33.242249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397572, 30.007284, 33.875877>,  <31.222511, 30.608171, 33.390678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397572, 30.007284, 33.875877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252445, 29.837078, 33.544262>,  <31.165369, 29.734955, 33.345295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252445, 29.837078, 33.544262>,  <31.397572, 30.007284, 33.875877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252445, 29.837078, 33.544262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722844, -0.689977, 0.037802,
		-0.588101, -0.585548, 0.557916,
		-0.362814, -0.425517, -0.829036,
		31.143600, 29.709423, 33.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453238, 29.339279, 33.992126>,  <31.397572, 30.007284, 33.875877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453238, 29.339279, 33.992126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434170, 29.338335, 33.592583>,  <31.422729, 29.337769, 33.352856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434170, 29.338335, 33.592583>,  <31.453238, 29.339279, 33.992126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434170, 29.338335, 33.592583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779914, -0.624865, -0.035743,
		-0.624068, -0.780730, 0.031630,
		-0.047670, -0.002362, -0.998860,
		31.419868, 29.337627, 33.292923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613895, 28.550537, 33.791653>,  <31.453238, 29.339279, 33.992126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613895, 28.550537, 33.791653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620541, 28.771793, 33.458485>,  <31.624527, 28.904547, 33.258583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620541, 28.771793, 33.458485>,  <31.613895, 28.550537, 33.791653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620541, 28.771793, 33.458485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615608, -0.662080, -0.427407,
		-0.787877, -0.505653, -0.351518,
		0.016613, 0.553141, -0.832922,
		31.625525, 28.937737, 33.208607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507887, 28.151009, 33.257668>,  <31.613895, 28.550537, 33.791653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507887, 28.151009, 33.257668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719786, 28.460066, 33.117733>,  <31.846926, 28.645500, 33.033772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719786, 28.460066, 33.117733>,  <31.507887, 28.151009, 33.257668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719786, 28.460066, 33.117733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606077, -0.633390, -0.481132,
		-0.593327, 0.042852, -0.803820,
		0.529749, 0.772645, -0.349836,
		31.878710, 28.691860, 33.012783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630964, 28.084066, 32.582233>,  <31.507887, 28.151009, 33.257668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630964, 28.084066, 32.582233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931725, 28.334291, 32.665485>,  <32.112179, 28.484426, 32.715435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931725, 28.334291, 32.665485>,  <31.630964, 28.084066, 32.582233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931725, 28.334291, 32.665485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637029, -0.608054, -0.473777,
		-0.169826, 0.488816, -0.855698,
		0.751900, 0.625564, 0.208127,
		32.157295, 28.521961, 32.727924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287193, 28.096605, 32.146847>,  <31.630964, 28.084066, 32.582233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287193, 28.096605, 32.146847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607895, 28.096666, 31.907784>,  <32.800316, 28.096703, 31.764345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607895, 28.096666, 31.907784>,  <32.287193, 28.096605, 32.146847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607895, 28.096666, 31.907784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438867, 0.678962, -0.588562,
		0.405695, 0.734173, 0.544428,
		0.801752, 0.000155, -0.597656,
		32.848419, 28.096712, 31.728487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462044, 28.692917, 31.859245>,  <32.287193, 28.096605, 32.146847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462044, 28.692917, 31.859245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627724, 28.468262, 31.572748>,  <32.727131, 28.333469, 31.400850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627724, 28.468262, 31.572748>,  <32.462044, 28.692917, 31.859245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627724, 28.468262, 31.572748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194206, 0.714263, -0.672393,
		0.889226, 0.417604, 0.186775,
		0.414200, -0.561636, -0.716242,
		32.751984, 28.299770, 31.357876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080959, 29.001276, 31.498543>,  <32.462044, 28.692917, 31.859245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080959, 29.001276, 31.498543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835018, 28.769182, 31.284895>,  <32.687454, 28.629925, 31.156706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835018, 28.769182, 31.284895>,  <33.080959, 29.001276, 31.498543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835018, 28.769182, 31.284895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195141, 0.768136, -0.609825,
		0.764096, -0.270745, -0.585538,
		-0.614880, -0.580227, -0.534096,
		32.650562, 28.595112, 31.124659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227322, 29.216814, 30.842093>,  <33.080959, 29.001276, 31.498543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227322, 29.216814, 30.842093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884384, 29.012989, 30.812962>,  <32.678619, 28.890694, 30.795483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884384, 29.012989, 30.812962>,  <33.227322, 29.216814, 30.842093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884384, 29.012989, 30.812962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306596, 0.619176, -0.722924,
		0.413466, -0.597469, -0.687078,
		-0.857347, -0.509560, -0.072826,
		32.627178, 28.860121, 30.791113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068718, 29.160831, 30.173462>,  <33.227322, 29.216814, 30.842093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068718, 29.160831, 30.173462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704662, 29.114811, 30.332663>,  <32.486229, 29.087198, 30.428183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704662, 29.114811, 30.332663>,  <33.068718, 29.160831, 30.173462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704662, 29.114811, 30.332663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404448, 0.454966, -0.793365,
		-0.089802, -0.883046, -0.460615,
		-0.910141, -0.115049, 0.398003,
		32.431622, 29.080296, 30.452063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905056, 29.844820, 30.125362>,  <33.068718, 29.160831, 30.173462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905056, 29.844820, 30.125362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738640, 30.207983, 30.104889>,  <32.638790, 30.425880, 30.092604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738640, 30.207983, 30.104889>,  <32.905056, 29.844820, 30.125362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738640, 30.207983, 30.104889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244431, 0.165868, 0.955375,
		0.875881, 0.384959, -0.290928,
		-0.416036, 0.907906, -0.051185,
		32.613831, 30.480354, 30.089533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386284, 30.486124, 30.246582>,  <32.905056, 29.844820, 30.125362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386284, 30.486124, 30.246582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008453, 30.596363, 30.317944>,  <32.781757, 30.662506, 30.360760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008453, 30.596363, 30.317944>,  <33.386284, 30.486124, 30.246582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008453, 30.596363, 30.317944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232511, 0.177930, 0.956180,
		0.231779, 0.944662, -0.232148,
		-0.944573, 0.275599, 0.178404,
		32.725082, 30.679043, 30.371464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869423, 31.089651, 30.170298>,  <33.386284, 30.486124, 30.246582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869423, 31.089651, 30.170298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693848, 31.153118, 29.816538>,  <33.588505, 31.191198, 29.604282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693848, 31.153118, 29.816538>,  <33.869423, 31.089651, 30.170298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693848, 31.153118, 29.816538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320714, 0.891782, 0.319167,
		0.839331, 0.423733, -0.340549,
		-0.438937, 0.158668, -0.884398,
		33.562168, 31.200718, 29.551218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152370, 31.746317, 29.768736>,  <33.869423, 31.089651, 30.170298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152370, 31.746317, 29.768736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769798, 31.644936, 29.710760>,  <33.540257, 31.584106, 29.675974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769798, 31.644936, 29.710760>,  <34.152370, 31.746317, 29.768736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769798, 31.644936, 29.710760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289103, 0.891495, 0.348793,
		0.040811, 0.375498, -0.925924,
		-0.956428, -0.253453, -0.144940,
		33.482868, 31.568899, 29.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807995, 32.254768, 29.382193>,  <34.152370, 31.746317, 29.768736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807995, 32.254768, 29.382193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551037, 32.074074, 29.629824>,  <33.396862, 31.965656, 29.778402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551037, 32.074074, 29.629824>,  <33.807995, 32.254768, 29.382193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551037, 32.074074, 29.629824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255565, 0.887838, 0.382663,
		-0.722506, 0.087606, -0.685791,
		-0.642395, -0.451740, 0.619079,
		33.358318, 31.938551, 29.815548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147614, 32.529900, 29.190809>,  <33.807995, 32.254768, 29.382193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147614, 32.529900, 29.190809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111523, 32.412365, 29.571445>,  <33.089870, 32.341846, 29.799828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111523, 32.412365, 29.571445>,  <33.147614, 32.529900, 29.190809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111523, 32.412365, 29.571445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580262, 0.792063, 0.189558,
		-0.809417, -0.535068, -0.241965,
		-0.090225, -0.293835, 0.951588,
		33.084454, 32.324215, 29.856922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489326, 32.734806, 29.450191>,  <33.147614, 32.529900, 29.190809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489326, 32.734806, 29.450191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674786, 32.679264, 29.800219>,  <32.786060, 32.645939, 30.010235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674786, 32.679264, 29.800219>,  <32.489326, 32.734806, 29.450191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674786, 32.679264, 29.800219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466907, 0.801088, 0.374507,
		-0.753012, -0.582216, 0.306590,
		0.463650, -0.138858, 0.875070,
		32.813881, 32.637608, 30.062740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958937, 32.722824, 29.847296>,  <32.489326, 32.734806, 29.450191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958937, 32.722824, 29.847296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269611, 32.802422, 30.086348>,  <32.456017, 32.850182, 30.229778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269611, 32.802422, 30.086348>,  <31.958937, 32.722824, 29.847296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269611, 32.802422, 30.086348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558824, 0.655482, 0.507995,
		-0.290649, -0.728522, 0.620305,
		0.776684, 0.198993, 0.597631,
		32.502617, 32.862118, 30.265636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630215, 32.775536, 30.539043>,  <31.958937, 32.722824, 29.847296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630215, 32.775536, 30.539043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991205, 32.947300, 30.552546>,  <32.207802, 33.050358, 30.560646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991205, 32.947300, 30.552546>,  <31.630215, 32.775536, 30.539043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991205, 32.947300, 30.552546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364204, 0.718896, 0.592068,
		0.229976, -0.546621, 0.805181,
		0.902478, 0.429412, 0.033753,
		32.261948, 33.076122, 30.562672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802673, 32.900597, 31.230639>,  <31.630215, 32.775536, 30.539043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802673, 32.900597, 31.230639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036472, 33.154739, 31.028772>,  <32.176750, 33.307224, 30.907652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036472, 33.154739, 31.028772>,  <31.802673, 32.900597, 31.230639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036472, 33.154739, 31.028772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255915, 0.734581, 0.628409,
		0.769984, -0.238148, 0.591955,
		0.584493, 0.635355, -0.504670,
		32.211823, 33.345345, 30.877373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347198, 33.192818, 31.719736>,  <31.802673, 32.900597, 31.230639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347198, 33.192818, 31.719736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294849, 33.423889, 31.397453>,  <32.263439, 33.562531, 31.204084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294849, 33.423889, 31.397453>,  <32.347198, 33.192818, 31.719736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294849, 33.423889, 31.397453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327416, 0.741912, 0.585120,
		0.935773, 0.340378, 0.092044,
		-0.130873, 0.577676, -0.805706,
		32.255589, 33.597191, 31.155741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639683, 33.889450, 31.972475>,  <32.347198, 33.192818, 31.719736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639683, 33.889450, 31.972475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370937, 33.882069, 31.676298>,  <32.209690, 33.877640, 31.498592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370937, 33.882069, 31.676298>,  <32.639683, 33.889450, 31.972475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370937, 33.882069, 31.676298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602031, 0.595945, 0.531421,
		0.431456, 0.802813, -0.411506,
		-0.671866, -0.018455, -0.740443,
		32.169376, 33.876534, 31.454165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214928, 34.333878, 32.138714>,  <32.639683, 33.889450, 31.972475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214928, 34.333878, 32.138714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991114, 34.215843, 31.828915>,  <31.856825, 34.145023, 31.643036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991114, 34.215843, 31.828915>,  <32.214928, 34.333878, 32.138714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991114, 34.215843, 31.828915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789745, 0.473328, 0.390210,
		0.251445, 0.829991, -0.497886,
		-0.559534, -0.295087, -0.774497,
		31.823254, 34.127316, 31.596565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887142, 34.831398, 31.912634>,  <32.214928, 34.333878, 32.138714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887142, 34.831398, 31.912634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663803, 34.522606, 31.791119>,  <31.529800, 34.337330, 31.718210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663803, 34.522606, 31.791119>,  <31.887142, 34.831398, 31.912634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663803, 34.522606, 31.791119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795147, 0.393542, 0.461374,
		-0.236621, 0.499163, -0.833575,
		-0.558348, -0.771985, -0.303788,
		31.496298, 34.291012, 31.699982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364080, 35.186954, 31.774679>,  <31.887142, 34.831398, 31.912634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364080, 35.186954, 31.774679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249725, 34.809414, 31.840916>,  <31.181112, 34.582890, 31.880657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249725, 34.809414, 31.840916>,  <31.364080, 35.186954, 31.774679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249725, 34.809414, 31.840916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804467, 0.330288, 0.493703,
		-0.520674, 0.007929, -0.853719,
		-0.285887, -0.943847, 0.165594,
		31.163960, 34.526260, 31.890594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610300, 35.151672, 31.747307>,  <31.364080, 35.186954, 31.774679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610300, 35.151672, 31.747307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698347, 34.806274, 31.928822>,  <30.751175, 34.599037, 32.037731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698347, 34.806274, 31.928822>,  <30.610300, 35.151672, 31.747307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698347, 34.806274, 31.928822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770389, 0.131476, 0.623871,
		-0.598372, -0.486920, -0.636287,
		0.220119, -0.863495, 0.453789,
		30.764383, 34.547226, 32.064957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930597, 34.836845, 31.842173>,  <30.610300, 35.151672, 31.747307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930597, 34.836845, 31.842173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193249, 34.686386, 32.103661>,  <30.350840, 34.596111, 32.260555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193249, 34.686386, 32.103661>,  <29.930597, 34.836845, 31.842173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193249, 34.686386, 32.103661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625530, 0.212638, 0.750664,
		-0.421366, -0.901831, -0.095666,
		0.656630, -0.376147, 0.653721,
		30.390238, 34.573544, 32.299778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464918, 34.496452, 32.292709>,  <29.930597, 34.836845, 31.842173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464918, 34.496452, 32.292709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801985, 34.534988, 32.504608>,  <30.004225, 34.558109, 32.631748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801985, 34.534988, 32.504608>,  <29.464918, 34.496452, 32.292709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801985, 34.534988, 32.504608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521112, 0.393504, 0.757362,
		-0.135498, -0.914261, 0.381794,
		0.842664, 0.096337, 0.529751,
		30.054785, 34.563889, 32.663532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268799, 34.250458, 32.892937>,  <29.464918, 34.496452, 32.292709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268799, 34.250458, 32.892937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598114, 34.451622, 32.998215>,  <29.795704, 34.572323, 33.061382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598114, 34.451622, 32.998215>,  <29.268799, 34.250458, 32.892937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598114, 34.451622, 32.998215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434941, 0.260995, 0.861805,
		0.364723, -0.823988, 0.433613,
		0.823288, 0.502917, 0.263196,
		29.845100, 34.602497, 33.077175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301907, 34.151325, 33.631317>,  <29.268799, 34.250458, 32.892937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301907, 34.151325, 33.631317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550936, 34.450451, 33.539078>,  <29.700354, 34.629929, 33.483734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550936, 34.450451, 33.539078>,  <29.301907, 34.151325, 33.631317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550936, 34.450451, 33.539078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215681, 0.447222, 0.868029,
		0.752254, -0.490676, 0.439717,
		0.622572, 0.747817, -0.230595,
		29.737707, 34.674797, 33.469898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922260, 34.227314, 34.195747>,  <29.301907, 34.151325, 33.631317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922260, 34.227314, 34.195747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883898, 34.589973, 34.031410>,  <29.860880, 34.807568, 33.932808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883898, 34.589973, 34.031410>,  <29.922260, 34.227314, 34.195747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883898, 34.589973, 34.031410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083434, 0.403976, 0.910957,
		0.991887, 0.121646, 0.036901,
		-0.095907, 0.906646, -0.410848,
		29.855125, 34.861969, 33.908157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394384, 34.697750, 34.543953>,  <29.922260, 34.227314, 34.195747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394384, 34.697750, 34.543953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194517, 34.977875, 34.340034>,  <30.074596, 35.145950, 34.217682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194517, 34.977875, 34.340034>,  <30.394384, 34.697750, 34.543953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194517, 34.977875, 34.340034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160370, 0.653149, 0.740052,
		0.851242, 0.288024, -0.438667,
		-0.499668, 0.700313, -0.509798,
		30.044617, 35.187969, 34.187096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826740, 35.291126, 34.585121>,  <30.394384, 34.697750, 34.543953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826740, 35.291126, 34.585121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455187, 35.409203, 34.495644>,  <30.232256, 35.480049, 34.441956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455187, 35.409203, 34.495644>,  <30.826740, 35.291126, 34.585121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455187, 35.409203, 34.495644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022992, 0.648757, 0.760648,
		0.369662, 0.701409, -0.609405,
		-0.928882, 0.295194, -0.223694,
		30.176521, 35.497761, 34.428535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771076, 36.001431, 34.459991>,  <30.826740, 35.291126, 34.585121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771076, 36.001431, 34.459991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398605, 35.901352, 34.566055>,  <30.175123, 35.841305, 34.629692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398605, 35.901352, 34.566055>,  <30.771076, 36.001431, 34.459991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398605, 35.901352, 34.566055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000239, 0.726912, 0.686731,
		-0.364561, 0.639533, -0.676825,
		-0.931179, -0.250194, 0.265157,
		30.119251, 35.826294, 34.645603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366880, 36.650879, 34.547672>,  <30.771076, 36.001431, 34.459991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366880, 36.650879, 34.547672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189501, 36.356892, 34.752876>,  <30.083073, 36.180500, 34.875999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189501, 36.356892, 34.752876>,  <30.366880, 36.650879, 34.547672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189501, 36.356892, 34.752876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130850, 0.619316, 0.774161,
		-0.886698, 0.276172, -0.370804,
		-0.443447, -0.734967, 0.513009,
		30.056467, 36.136402, 34.906780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848652, 36.651539, 35.218357>,  <30.366880, 36.650879, 34.547672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848652, 36.651539, 35.218357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169764, 36.413708, 35.200359>,  <31.362431, 36.271011, 35.189560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169764, 36.413708, 35.200359>,  <30.848652, 36.651539, 35.218357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169764, 36.413708, 35.200359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505165, 0.638086, 0.581081,
		-0.316786, -0.489210, 0.812601,
		0.802780, -0.594576, -0.044995,
		31.410597, 36.235336, 35.186859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939325, 36.521564, 35.844563>,  <30.848652, 36.651539, 35.218357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939325, 36.521564, 35.844563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273184, 36.491879, 35.626259>,  <31.473499, 36.474068, 35.495277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273184, 36.491879, 35.626259>,  <30.939325, 36.521564, 35.844563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273184, 36.491879, 35.626259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517008, 0.447232, 0.729854,
		0.189915, -0.891333, 0.411651,
		0.834647, -0.074217, -0.545762,
		31.523579, 36.469612, 35.462528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438015, 36.229889, 36.182281>,  <30.939325, 36.521564, 35.844563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438015, 36.229889, 36.182281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605785, 36.492542, 35.931549>,  <31.706448, 36.650135, 35.781109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605785, 36.492542, 35.931549>,  <31.438015, 36.229889, 36.182281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605785, 36.492542, 35.931549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364986, 0.510250, 0.778736,
		0.831185, -0.555404, -0.025651,
		0.419425, 0.656636, -0.626827,
		31.731613, 36.689533, 35.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180870, 36.393097, 36.426418>,  <31.438015, 36.229889, 36.182281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180870, 36.393097, 36.426418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027435, 36.713959, 36.243374>,  <31.935375, 36.906475, 36.133545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027435, 36.713959, 36.243374>,  <32.180870, 36.393097, 36.426418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027435, 36.713959, 36.243374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367282, 0.587155, 0.721355,
		0.847328, 0.108629, -0.519841,
		-0.383587, 0.802153, -0.457615,
		31.912359, 36.954605, 36.106091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578972, 37.028790, 36.473511>,  <32.180870, 36.393097, 36.426418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578972, 37.028790, 36.473511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224060, 37.202042, 36.410099>,  <32.011112, 37.305992, 36.372051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224060, 37.202042, 36.410099>,  <32.578972, 37.028790, 36.473511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224060, 37.202042, 36.410099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177497, 0.637882, 0.749401,
		0.425711, 0.636790, -0.642859,
		-0.887280, 0.433134, -0.158525,
		31.957876, 37.331982, 36.362541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703926, 37.758305, 36.398579>,  <32.578972, 37.028790, 36.473511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703926, 37.758305, 36.398579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313877, 37.714138, 36.475471>,  <32.079849, 37.687637, 36.521606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313877, 37.714138, 36.475471>,  <32.703926, 37.758305, 36.398579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313877, 37.714138, 36.475471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034436, 0.781157, 0.623384,
		-0.218997, 0.614493, -0.757917,
		-0.975118, -0.110420, 0.192232,
		32.021343, 37.681011, 36.533142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407356, 38.347767, 36.301292>,  <32.703926, 37.758305, 36.398579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407356, 38.347767, 36.301292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204948, 38.148952, 36.583260>,  <32.083504, 38.029663, 36.752438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204948, 38.148952, 36.583260>,  <32.407356, 38.347767, 36.301292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204948, 38.148952, 36.583260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036452, 0.804216, 0.593218,
		-0.861754, 0.325873, -0.388828,
		-0.506015, -0.497034, 0.704915,
		32.053143, 37.999844, 36.794735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034992, 38.864643, 36.623344>,  <32.407356, 38.347767, 36.301292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034992, 38.864643, 36.623344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059307, 38.552589, 36.872406>,  <32.073895, 38.365356, 37.021843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059307, 38.552589, 36.872406>,  <32.034992, 38.864643, 36.623344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059307, 38.552589, 36.872406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047010, 0.620880, 0.782495,
		-0.997043, -0.076836, 0.001067,
		0.060787, -0.780131, 0.622656,
		32.077541, 38.318550, 37.059204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567314, 39.105984, 37.265961>,  <32.034992, 38.864643, 36.623344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567314, 39.105984, 37.265961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829275, 38.825863, 37.379574>,  <31.986452, 38.657791, 37.447742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829275, 38.825863, 37.379574>,  <31.567314, 39.105984, 37.265961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829275, 38.825863, 37.379574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059565, 0.422510, 0.904399,
		-0.753361, -0.575376, 0.318417,
		0.654904, -0.700306, 0.284030,
		32.025745, 38.615772, 37.464783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380463, 38.809341, 37.993404>,  <31.567314, 39.105984, 37.265961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380463, 38.809341, 37.993404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770294, 38.753902, 37.922997>,  <32.004192, 38.720638, 37.880753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770294, 38.753902, 37.922997>,  <31.380463, 38.809341, 37.993404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770294, 38.753902, 37.922997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201836, 0.202176, 0.958325,
		-0.097232, -0.969493, 0.225010,
		0.974581, -0.138595, -0.176021,
		32.062668, 38.712326, 37.870190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506021, 38.321629, 38.511726>,  <31.380463, 38.809341, 37.993404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506021, 38.321629, 38.511726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851055, 38.486286, 38.394089>,  <32.058075, 38.585079, 38.323505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851055, 38.486286, 38.394089>,  <31.506021, 38.321629, 38.511726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851055, 38.486286, 38.394089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207324, 0.242645, 0.947703,
		0.461478, -0.878449, 0.123958,
		0.862586, 0.411645, -0.294098,
		32.109833, 38.609779, 38.305859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916426, 38.053886, 38.930756>,  <31.506021, 38.321629, 38.511726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916426, 38.053886, 38.930756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123112, 38.366684, 38.791336>,  <32.247124, 38.554363, 38.707684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123112, 38.366684, 38.791336>,  <31.916426, 38.053886, 38.930756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123112, 38.366684, 38.791336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384038, 0.152152, 0.910695,
		0.765193, -0.604425, -0.221698,
		0.516715, 0.781997, -0.348548,
		32.278126, 38.601284, 38.686771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627838, 38.014225, 39.149811>,  <31.916426, 38.053886, 38.930756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627838, 38.014225, 39.149811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588982, 38.400608, 39.053902>,  <32.565666, 38.632439, 38.996357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588982, 38.400608, 39.053902>,  <32.627838, 38.014225, 39.149811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588982, 38.400608, 39.053902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449921, 0.257510, 0.855137,
		0.887769, -0.024811, -0.459619,
		-0.097140, 0.965957, -0.239773,
		32.559841, 38.690395, 38.981968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342861, 38.376453, 39.276558>,  <32.627838, 38.014225, 39.149811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342861, 38.376453, 39.276558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066505, 38.665596, 39.271709>,  <32.900692, 38.839081, 39.268799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066505, 38.665596, 39.271709>,  <33.342861, 38.376453, 39.276558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066505, 38.665596, 39.271709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353275, 0.352186, 0.866696,
		0.630770, 0.594507, -0.498689,
		-0.690888, 0.722860, -0.012124,
		32.859238, 38.882454, 39.268070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831802, 39.049587, 39.368523>,  <33.342861, 38.376453, 39.276558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831802, 39.049587, 39.368523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458073, 39.130795, 39.485710>,  <33.233837, 39.179520, 39.556023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458073, 39.130795, 39.485710>,  <33.831802, 39.049587, 39.368523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458073, 39.130795, 39.485710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354633, 0.446935, 0.821270,
		0.035795, 0.871225, -0.489577,
		-0.934320, 0.203018, 0.292967,
		33.177776, 39.191700, 39.573601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955612, 39.627636, 39.749916>,  <33.831802, 39.049587, 39.368523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955612, 39.627636, 39.749916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583942, 39.524033, 39.855408>,  <33.360943, 39.461872, 39.918705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583942, 39.524033, 39.855408>,  <33.955612, 39.627636, 39.749916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583942, 39.524033, 39.855408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159215, 0.363473, 0.917899,
		-0.333602, 0.894876, -0.296491,
		-0.929172, -0.259007, 0.263733,
		33.305191, 39.446331, 39.934528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604824, 40.235901, 40.012074>,  <33.955612, 39.627636, 39.749916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604824, 40.235901, 40.012074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446541, 39.907520, 40.176735>,  <33.351570, 39.710491, 40.275532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446541, 39.907520, 40.176735>,  <33.604824, 40.235901, 40.012074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446541, 39.907520, 40.176735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270586, 0.324121, 0.906493,
		-0.877610, 0.470093, 0.093880,
		-0.395707, -0.820949, 0.411653,
		33.327827, 39.661236, 40.300232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400902, 40.447865, 40.599926>,  <33.604824, 40.235901, 40.012074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400902, 40.447865, 40.599926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389557, 40.050724, 40.646305>,  <33.382748, 39.812439, 40.674133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389557, 40.050724, 40.646305>,  <33.400902, 40.447865, 40.599926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389557, 40.050724, 40.646305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167475, 0.109634, 0.979761,
		-0.985468, 0.047211, 0.163168,
		-0.028367, -0.992850, 0.115948,
		33.381046, 39.752869, 40.681087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971355, 40.431667, 41.077946>,  <33.400902, 40.447865, 40.599926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971355, 40.431667, 41.077946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159481, 40.080208, 41.110909>,  <33.272354, 39.869331, 41.130688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159481, 40.080208, 41.110909>,  <32.971355, 40.431667, 41.077946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159481, 40.080208, 41.110909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040286, 0.071904, 0.996598,
		-0.881580, -0.472031, -0.001580,
		0.470311, -0.878645, 0.082406,
		33.300575, 39.816616, 41.135632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628899, 39.937614, 41.536148>,  <32.971355, 40.431667, 41.077946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628899, 39.937614, 41.536148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005074, 39.802761, 41.518627>,  <33.230778, 39.721848, 41.508114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005074, 39.802761, 41.518627>,  <32.628899, 39.937614, 41.536148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005074, 39.802761, 41.518627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038933, -0.021200, 0.999017,
		-0.337730, -0.941218, -0.006811,
		0.940438, -0.337133, -0.043804,
		33.287205, 39.701622, 41.505486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759308, 39.371105, 42.003731>,  <32.628899, 39.937614, 41.536148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759308, 39.371105, 42.003731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115021, 39.546398, 41.951374>,  <33.328449, 39.651573, 41.919960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115021, 39.546398, 41.951374>,  <32.759308, 39.371105, 42.003731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115021, 39.546398, 41.951374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162032, -0.034237, 0.986191,
		0.427695, -0.898212, -0.101453,
		0.889282, 0.438228, -0.130896,
		33.381805, 39.677868, 41.912106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206097, 39.151337, 42.514275>,  <32.759308, 39.371105, 42.003731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206097, 39.151337, 42.514275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355770, 39.505440, 42.403790>,  <33.445576, 39.717903, 42.337498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355770, 39.505440, 42.403790>,  <33.206097, 39.151337, 42.514275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355770, 39.505440, 42.403790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284222, 0.174040, 0.942830,
		0.882724, -0.431302, -0.186487,
		0.374188, 0.885262, -0.276215,
		33.468025, 39.771019, 42.320927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861782, 39.209572, 42.781490>,  <33.206097, 39.151337, 42.514275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861782, 39.209572, 42.781490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737640, 39.585331, 42.723236>,  <33.663155, 39.810787, 42.688282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737640, 39.585331, 42.723236>,  <33.861782, 39.209572, 42.781490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737640, 39.585331, 42.723236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133464, 0.194744, 0.971732,
		0.941205, 0.282145, -0.185815,
		-0.310355, 0.939398, -0.145638,
		33.644535, 39.867149, 42.679546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191372, 39.617622, 43.289089>,  <33.861782, 39.209572, 42.781490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191372, 39.617622, 43.289089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923538, 39.887112, 43.164028>,  <33.762836, 40.048805, 43.088993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923538, 39.887112, 43.164028>,  <34.191372, 39.617622, 43.289089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923538, 39.887112, 43.164028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007862, 0.427351, 0.904052,
		0.742696, 0.602880, -0.291444,
		-0.669583, 0.673726, -0.312652,
		33.722664, 40.089230, 43.070232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518852, 40.268005, 43.434464>,  <34.191372, 39.617622, 43.289089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518852, 40.268005, 43.434464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129005, 40.346283, 43.390949>,  <33.895100, 40.393250, 43.364841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129005, 40.346283, 43.390949>,  <34.518852, 40.268005, 43.434464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129005, 40.346283, 43.390949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002056, 0.493664, 0.869650,
		0.223886, 0.847349, -0.481534,
		-0.974613, 0.195692, -0.108782,
		33.836620, 40.404991, 43.358315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541458, 40.993835, 43.619221>,  <34.518852, 40.268005, 43.434464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541458, 40.993835, 43.619221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168766, 40.849628, 43.636650>,  <33.945148, 40.763103, 43.647110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168766, 40.849628, 43.636650>,  <34.541458, 40.993835, 43.619221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168766, 40.849628, 43.636650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132106, 0.448280, 0.884077,
		-0.338262, 0.817967, -0.465305,
		-0.931733, -0.360520, 0.043578,
		33.889248, 40.741474, 43.649723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214008, 41.513519, 43.996849>,  <34.541458, 40.993835, 43.619221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214008, 41.513519, 43.996849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994194, 41.180687, 44.026897>,  <33.862305, 40.980988, 44.044926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994194, 41.180687, 44.026897>,  <34.214008, 41.513519, 43.996849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994194, 41.180687, 44.026897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353026, 0.312763, 0.881789,
		-0.757217, 0.458058, -0.465623,
		-0.549540, -0.832083, 0.075123,
		33.829330, 40.931061, 44.049435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584953, 41.848701, 44.286087>,  <34.214008, 41.513519, 43.996849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584953, 41.848701, 44.286087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548508, 41.454098, 44.340500>,  <33.526642, 41.217335, 44.373150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548508, 41.454098, 44.340500>,  <33.584953, 41.848701, 44.286087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548508, 41.454098, 44.340500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310282, 0.157927, 0.937435,
		-0.946268, 0.043203, -0.320484,
		-0.091113, -0.986505, 0.136036,
		33.521175, 41.158146, 44.381310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995193, 41.726254, 44.660732>,  <33.584953, 41.848701, 44.286087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995193, 41.726254, 44.660732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204857, 41.389378, 44.711285>,  <33.330654, 41.187252, 44.741615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204857, 41.389378, 44.711285>,  <32.995193, 41.726254, 44.660732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204857, 41.389378, 44.711285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320611, -0.057660, 0.945454,
		-0.788964, -0.536090, -0.300238,
		0.524161, -0.842189, 0.126384,
		33.362106, 41.136723, 44.749199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506863, 41.153950, 45.006535>,  <32.995193, 41.726254, 44.660732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506863, 41.153950, 45.006535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901115, 41.119820, 45.064835>,  <33.137669, 41.099342, 45.099815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901115, 41.119820, 45.064835>,  <32.506863, 41.153950, 45.006535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901115, 41.119820, 45.064835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152767, -0.082444, 0.984818,
		-0.072015, -0.992936, -0.094295,
		0.985635, -0.085327, 0.145750,
		33.196804, 41.094223, 45.108559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579643, 40.808033, 45.552265>,  <32.506863, 41.153950, 45.006535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579643, 40.808033, 45.552265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959042, 40.934750, 45.552479>,  <33.186680, 41.010780, 45.552605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959042, 40.934750, 45.552479>,  <32.579643, 40.808033, 45.552265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959042, 40.934750, 45.552479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043137, 0.127494, 0.990901,
		0.313844, -0.939887, 0.134593,
		0.948494, 0.316794, 0.000531,
		33.243591, 41.029789, 45.552639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021931, 40.432178, 46.142918>,  <32.579643, 40.808033, 45.552265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021931, 40.432178, 46.142918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234726, 40.763165, 46.071045>,  <33.362404, 40.961758, 46.027920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234726, 40.763165, 46.071045>,  <33.021931, 40.432178, 46.142918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234726, 40.763165, 46.071045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005353, 0.215483, 0.976493,
		0.846733, -0.518524, 0.119064,
		0.531991, 0.827466, -0.179681,
		33.394321, 41.011406, 46.017139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398266, 40.491955, 46.756836>,  <33.021931, 40.432178, 46.142918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398266, 40.491955, 46.756836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433235, 40.855434, 46.593555>,  <33.454216, 41.073521, 46.495586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433235, 40.855434, 46.593555>,  <33.398266, 40.491955, 46.756836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433235, 40.855434, 46.593555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160831, 0.417272, 0.894437,
		0.983103, -0.012539, 0.182625,
		0.087420, 0.908695, -0.408204,
		33.459461, 41.128044, 46.471096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861832, 40.898273, 47.078518>,  <33.398266, 40.491955, 46.756836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861832, 40.898273, 47.078518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649029, 41.195972, 46.916992>,  <33.521347, 41.374592, 46.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649029, 41.195972, 46.916992>,  <33.861832, 40.898273, 47.078518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649029, 41.195972, 46.916992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068635, 0.513240, 0.855496,
		0.843954, 0.427414, -0.324129,
		-0.532007, 0.744246, -0.403816,
		33.489426, 41.419247, 46.795849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251545, 41.540356, 47.213249>,  <33.861832, 40.898273, 47.078518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251545, 41.540356, 47.213249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867779, 41.624767, 47.138439>,  <33.637520, 41.675415, 47.093552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867779, 41.624767, 47.138439>,  <34.251545, 41.540356, 47.213249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867779, 41.624767, 47.138439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050179, 0.524906, 0.849680,
		0.277481, 0.824584, -0.493016,
		-0.959420, 0.211031, -0.187029,
		33.579952, 41.688076, 47.082329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202732, 42.181091, 47.317955>,  <34.251545, 41.540356, 47.213249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202732, 42.181091, 47.317955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830959, 42.040531, 47.363003>,  <33.607895, 41.956196, 47.390030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830959, 42.040531, 47.363003>,  <34.202732, 42.181091, 47.317955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830959, 42.040531, 47.363003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043421, 0.407221, 0.912297,
		-0.366441, 0.843024, -0.393741,
		-0.929428, -0.351400, 0.112617,
		33.552132, 41.935112, 47.396790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784679, 42.734657, 47.765316>,  <34.202732, 42.181091, 47.317955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784679, 42.734657, 47.765316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539822, 42.418587, 47.777317>,  <33.392906, 42.228943, 47.784519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539822, 42.418587, 47.777317>,  <33.784679, 42.734657, 47.765316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539822, 42.418587, 47.777317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216081, 0.203653, 0.954900,
		-0.760651, 0.578052, -0.295407,
		-0.612142, -0.790178, 0.030003,
		33.356178, 42.181534, 47.786320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160095, 42.885036, 48.080311>,  <33.784679, 42.734657, 47.765316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160095, 42.885036, 48.080311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210194, 42.498169, 48.168758>,  <33.240253, 42.266048, 48.221828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210194, 42.498169, 48.168758>,  <33.160095, 42.885036, 48.080311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210194, 42.498169, 48.168758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056703, 0.215532, 0.974849,
		-0.990505, -0.134629, -0.027848,
		0.125241, -0.967172, 0.221119,
		33.247765, 42.208019, 48.235096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714497, 42.716732, 48.678593>,  <33.160095, 42.885036, 48.080311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714497, 42.716732, 48.678593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972172, 42.410801, 48.681824>,  <33.126778, 42.227242, 48.683762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972172, 42.410801, 48.681824>,  <32.714497, 42.716732, 48.678593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972172, 42.410801, 48.681824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021761, 0.028879, 0.999346,
		-0.764557, -0.643591, 0.035247,
		0.644188, -0.764824, 0.008075,
		33.165428, 42.181355, 48.684246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652153, 42.468521, 49.328518>,  <32.714497, 42.716732, 48.678593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652153, 42.468521, 49.328518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985916, 42.276463, 49.220284>,  <33.186176, 42.161228, 49.155342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985916, 42.276463, 49.220284>,  <32.652153, 42.468521, 49.328518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985916, 42.276463, 49.220284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228180, -0.145938, 0.962619,
		-0.501690, -0.864961, -0.012212,
		0.834410, -0.480150, -0.270583,
		33.236240, 42.132416, 49.139107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617451, 41.770924, 49.637337>,  <32.652153, 42.468521, 49.328518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617451, 41.770924, 49.637337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003250, 41.852627, 49.570374>,  <33.234730, 41.901649, 49.530193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003250, 41.852627, 49.570374>,  <32.617451, 41.770924, 49.637337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003250, 41.852627, 49.570374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167335, 0.017773, 0.985740,
		0.204325, -0.978755, -0.017038,
		0.964495, 0.204262, -0.167411,
		33.292599, 41.913906, 49.520149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084248, 41.324078, 50.051708>,  <32.617451, 41.770924, 49.637337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084248, 41.324078, 50.051708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299271, 41.648441, 49.959221>,  <33.428284, 41.843060, 49.903728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299271, 41.648441, 49.959221>,  <33.084248, 41.324078, 50.051708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299271, 41.648441, 49.959221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383344, 0.009214, 0.923560,
		0.751051, -0.585102, -0.305903,
		0.537558, 0.810907, -0.231216,
		33.460537, 41.891712, 49.889854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738018, 41.072357, 50.125019>,  <33.084248, 41.324078, 50.051708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738018, 41.072357, 50.125019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725414, 41.468941, 50.175629>,  <33.717854, 41.706890, 50.205994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725414, 41.468941, 50.175629>,  <33.738018, 41.072357, 50.125019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725414, 41.468941, 50.175629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527058, -0.091081, 0.844934,
		0.849245, 0.093308, -0.519689,
		-0.031505, 0.991463, 0.126529,
		33.715961, 41.766380, 50.213589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323563, 41.328259, 50.397003>,  <33.738018, 41.072357, 50.125019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323563, 41.328259, 50.397003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143127, 41.673096, 50.489368>,  <34.034866, 41.879997, 50.544788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143127, 41.673096, 50.489368>,  <34.323563, 41.328259, 50.397003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143127, 41.673096, 50.489368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581958, 0.087962, 0.808448,
		0.676645, 0.499058, -0.541380,
		-0.451084, 0.862092, 0.230912,
		34.007801, 41.931725, 50.558643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905300, 41.734642, 50.618347>,  <34.323563, 41.328259, 50.397003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905300, 41.734642, 50.618347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564152, 41.869858, 50.777512>,  <34.359463, 41.950989, 50.873013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564152, 41.869858, 50.777512>,  <34.905300, 41.734642, 50.618347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564152, 41.869858, 50.777512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448539, 0.084285, 0.889780,
		0.267243, 0.937350, -0.223509,
		-0.852874, 0.338040, 0.397913,
		34.308289, 41.971272, 50.896885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130966, 42.263660, 50.969486>,  <34.905300, 41.734642, 50.618347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130966, 42.263660, 50.969486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779411, 42.164337, 51.132412>,  <34.568478, 42.104744, 51.230167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779411, 42.164337, 51.132412>,  <35.130966, 42.263660, 50.969486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779411, 42.164337, 51.132412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405332, 0.061509, 0.912098,
		-0.251535, 0.966726, 0.046587,
		-0.878884, -0.248308, 0.407317,
		34.515747, 42.089844, 51.254608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026012, 42.768993, 51.547676>,  <35.130966, 42.263660, 50.969486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026012, 42.768993, 51.547676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801174, 42.446491, 51.621429>,  <34.666271, 42.252991, 51.665684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801174, 42.446491, 51.621429>,  <35.026012, 42.768993, 51.547676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801174, 42.446491, 51.621429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348953, -0.029063, 0.936689,
		-0.749851, 0.590855, 0.297681,
		-0.562099, -0.806254, 0.184387,
		34.632545, 42.204617, 51.676746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772766, 42.935993, 52.263130>,  <35.026012, 42.768993, 51.547676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772766, 42.935993, 52.263130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703148, 42.548855, 52.190495>,  <34.661377, 42.316570, 52.146912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703148, 42.548855, 52.190495>,  <34.772766, 42.935993, 52.263130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703148, 42.548855, 52.190495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139547, -0.206784, 0.968384,
		-0.974801, 0.143199, 0.171050,
		-0.174041, -0.967850, -0.181590,
		34.650936, 42.258499, 52.136017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187416, 42.557301, 52.780724>,  <34.772766, 42.935993, 52.263130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187416, 42.557301, 52.780724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440712, 42.272686, 52.658924>,  <34.592690, 42.101917, 52.585846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440712, 42.272686, 52.658924>,  <34.187416, 42.557301, 52.780724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440712, 42.272686, 52.658924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144533, -0.277794, 0.949706,
		-0.760338, -0.645405, -0.073071,
		0.633243, -0.711536, -0.304500,
		34.630684, 42.059227, 52.567574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098061, 42.067341, 53.275127>,  <34.187416, 42.557301, 52.780724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098061, 42.067341, 53.275127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457310, 42.012753, 53.107918>,  <34.672859, 41.980000, 53.007591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457310, 42.012753, 53.107918>,  <34.098061, 42.067341, 53.275127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457310, 42.012753, 53.107918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395318, -0.165793, 0.903458,
		-0.192606, -0.976671, -0.094952,
		0.898124, -0.136476, -0.418028,
		34.726746, 41.971809, 52.982510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366112, 41.628159, 53.628372>,  <34.098061, 42.067341, 53.275127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366112, 41.628159, 53.628372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705685, 41.730545, 53.443420>,  <34.909428, 41.791977, 53.332451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705685, 41.730545, 53.443420>,  <34.366112, 41.628159, 53.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705685, 41.730545, 53.443420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520945, -0.257893, 0.813700,
		0.089035, -0.931651, -0.352278,
		0.848934, 0.255965, -0.462377,
		34.960365, 41.807335, 53.304707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869335, 41.124702, 53.762718>,  <34.366112, 41.628159, 53.628372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869335, 41.124702, 53.762718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050064, 41.469326, 53.670132>,  <35.158501, 41.676098, 53.614578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050064, 41.469326, 53.670132>,  <34.869335, 41.124702, 53.762718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050064, 41.469326, 53.670132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536169, -0.054877, 0.842325,
		0.713008, -0.504687, -0.486734,
		0.451821, 0.861556, -0.231470,
		35.185612, 41.727795, 53.600689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544983, 40.986778, 53.870918>,  <34.869335, 41.124702, 53.762718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544983, 40.986778, 53.870918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457470, 41.373024, 53.927086>,  <35.404961, 41.604771, 53.960785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457470, 41.373024, 53.927086>,  <35.544983, 40.986778, 53.870918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457470, 41.373024, 53.927086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657485, 0.039552, 0.752429,
		0.721005, 0.256942, -0.643532,
		-0.218783, 0.965617, 0.140418,
		35.391834, 41.662708, 53.969212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051281, 41.430950, 53.586868>,  <35.544983, 40.986778, 53.870918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051281, 41.430950, 53.586868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860352, 41.575687, 53.907177>,  <35.745792, 41.662529, 54.099361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860352, 41.575687, 53.907177>,  <36.051281, 41.430950, 53.586868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860352, 41.575687, 53.907177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763843, -0.279640, 0.581674,
		0.434401, 0.889310, -0.142911,
		-0.477325, 0.361841, 0.800770,
		35.717155, 41.684238, 54.147408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476192, 41.271870, 54.062626>,  <36.051281, 41.430950, 53.586868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476192, 41.271870, 54.062626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191872, 41.436913, 54.290493>,  <36.021278, 41.535938, 54.427212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191872, 41.436913, 54.290493>,  <36.476192, 41.271870, 54.062626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191872, 41.436913, 54.290493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469358, -0.324992, 0.821026,
		0.523898, 0.850962, 0.037344,
		-0.710799, 0.412606, 0.569668,
		35.978634, 41.560696, 54.461395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960266, 41.036835, 53.459435>,  <36.476192, 41.271870, 54.062626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960266, 41.036835, 53.459435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031250, 40.720978, 53.224495>,  <37.073841, 40.531464, 53.083530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031250, 40.720978, 53.224495>,  <36.960266, 41.036835, 53.459435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031250, 40.720978, 53.224495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466402, -0.593022, 0.656349,
		-0.866590, 0.157468, -0.473524,
		0.177457, -0.789638, -0.587350,
		37.084488, 40.484085, 53.048290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348083, 40.659683, 53.461586>,  <36.960266, 41.036835, 53.459435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348083, 40.659683, 53.461586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641636, 40.398617, 53.386272>,  <36.817768, 40.241978, 53.341084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641636, 40.398617, 53.386272>,  <36.348083, 40.659683, 53.461586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641636, 40.398617, 53.386272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416882, -0.651586, 0.633755,
		-0.536311, -0.386609, -0.750269,
		0.733880, -0.652663, -0.188282,
		36.861801, 40.202816, 53.329788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148270, 40.098457, 53.829098>,  <36.348083, 40.659683, 53.461586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148270, 40.098457, 53.829098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770790, 40.194256, 53.737827>,  <35.544300, 40.251736, 53.683064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770790, 40.194256, 53.737827>,  <36.148270, 40.098457, 53.829098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770790, 40.194256, 53.737827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040247, -0.767787, -0.639439,
		-0.328336, -0.594258, 0.734203,
		-0.943703, 0.239500, -0.228175,
		35.487679, 40.266106, 53.669376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736324, 39.442249, 53.764854>,  <36.148270, 40.098457, 53.829098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736324, 39.442249, 53.764854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566555, 39.726284, 53.540127>,  <35.464695, 39.896706, 53.405289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566555, 39.726284, 53.540127>,  <35.736324, 39.442249, 53.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566555, 39.726284, 53.540127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133439, -0.662757, -0.736849,
		-0.895579, -0.237764, 0.376041,
		-0.424420, 0.710085, -0.561824,
		35.439228, 39.939308, 53.371578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169720, 39.149612, 53.485954>,  <35.736324, 39.442249, 53.764854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169720, 39.149612, 53.485954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278843, 39.461365, 53.260338>,  <35.344315, 39.648415, 53.124969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278843, 39.461365, 53.260338>,  <35.169720, 39.149612, 53.485954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278843, 39.461365, 53.260338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098640, -0.560532, -0.822237,
		-0.956999, 0.279949, -0.076039,
		0.272806, 0.779380, -0.564042,
		35.360683, 39.695179, 53.091125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810566, 39.050949, 52.935200>,  <35.169720, 39.149612, 53.485954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810566, 39.050949, 52.935200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061092, 39.328278, 52.792637>,  <35.211411, 39.494675, 52.707100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061092, 39.328278, 52.792637>,  <34.810566, 39.050949, 52.935200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061092, 39.328278, 52.792637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016852, -0.445044, -0.895350,
		-0.779384, 0.566782, -0.267056,
		0.626320, 0.693321, -0.356412,
		35.248989, 39.536274, 52.685715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661106, 39.081940, 52.160824>,  <34.810566, 39.050949, 52.935200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661106, 39.081940, 52.160824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022766, 39.247913, 52.201488>,  <35.239761, 39.347500, 52.225887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022766, 39.247913, 52.201488>,  <34.661106, 39.081940, 52.160824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022766, 39.247913, 52.201488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183586, -0.162506, -0.969478,
		-0.385751, 0.895220, -0.223107,
		0.904153, 0.414936, 0.101663,
		35.294010, 39.372395, 52.231987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746628, 39.546432, 51.671246>,  <34.661106, 39.081940, 52.160824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746628, 39.546432, 51.671246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108009, 39.404076, 51.766834>,  <35.324841, 39.318661, 51.824188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108009, 39.404076, 51.766834>,  <34.746628, 39.546432, 51.671246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108009, 39.404076, 51.766834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218559, -0.097164, -0.970974,
		0.368777, 0.929464, -0.010001,
		0.903457, -0.355888, 0.238975,
		35.379047, 39.297310, 51.838528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137657, 39.963966, 51.288696>,  <34.746628, 39.546432, 51.671246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137657, 39.963966, 51.288696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332073, 39.627808, 51.384617>,  <35.448723, 39.426113, 51.442169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332073, 39.627808, 51.384617>,  <35.137657, 39.963966, 51.288696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332073, 39.627808, 51.384617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327445, -0.079288, -0.941538,
		0.810275, 0.536147, 0.236645,
		0.486040, -0.840393, 0.239803,
		35.477886, 39.375690, 51.456558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664307, 39.989967, 50.929260>,  <35.137657, 39.963966, 51.288696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664307, 39.989967, 50.929260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672215, 39.600075, 51.018257>,  <35.676960, 39.366138, 51.071655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672215, 39.600075, 51.018257>,  <35.664307, 39.989967, 50.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672215, 39.600075, 51.018257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189586, -0.214842, -0.958071,
		0.981665, 0.061122, 0.180549,
		0.019770, -0.974734, 0.222490,
		35.678146, 39.307655, 51.085003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300671, 39.644184, 50.649540>,  <35.664307, 39.989967, 50.929260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300671, 39.644184, 50.649540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016933, 39.366581, 50.698822>,  <35.846691, 39.200020, 50.728394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016933, 39.366581, 50.698822>,  <36.300671, 39.644184, 50.649540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016933, 39.366581, 50.698822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161594, -0.330264, -0.929953,
		0.686087, -0.639749, 0.346419,
		-0.709347, -0.694008, 0.123210,
		35.804131, 39.158379, 50.735786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640160, 39.142624, 50.304829>,  <36.300671, 39.644184, 50.649540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640160, 39.142624, 50.304829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260334, 39.020786, 50.334637>,  <36.032440, 38.947685, 50.352524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260334, 39.020786, 50.334637>,  <36.640160, 39.142624, 50.304829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260334, 39.020786, 50.334637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040725, -0.355433, -0.933814,
		0.310921, -0.883680, 0.349911,
		-0.949563, -0.304593, 0.074523,
		35.975464, 38.929409, 50.356995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580631, 38.487072, 49.888130>,  <36.640160, 39.142624, 50.304829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580631, 38.487072, 49.888130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192673, 38.580799, 49.914680>,  <35.959900, 38.637035, 49.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192673, 38.580799, 49.914680>,  <36.580631, 38.487072, 49.888130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192673, 38.580799, 49.914680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134914, -0.290071, -0.947448,
		-0.202744, -0.927878, 0.312950,
		-0.969893, 0.234311, 0.066373,
		35.901707, 38.651093, 49.934593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245522, 37.953331, 49.667835>,  <36.580631, 38.487072, 49.888130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245522, 37.953331, 49.667835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967869, 38.238354, 49.626949>,  <35.801277, 38.409367, 49.602417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967869, 38.238354, 49.626949>,  <36.245522, 37.953331, 49.667835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967869, 38.238354, 49.626949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059447, -0.084770, -0.994626,
		-0.717390, -0.696477, 0.016482,
		-0.694131, 0.712555, -0.102216,
		35.759628, 38.452122, 49.596283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686623, 37.675701, 49.354786>,  <36.245522, 37.953331, 49.667835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686623, 37.675701, 49.354786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629059, 38.060146, 49.260502>,  <35.594521, 38.290813, 49.203934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629059, 38.060146, 49.260502>,  <35.686623, 37.675701, 49.354786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629059, 38.060146, 49.260502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032122, -0.233522, -0.971821,
		-0.989070, -0.147424, 0.002733,
		-0.143908, 0.961111, -0.235705,
		35.585888, 38.348480, 49.189789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984226, 37.749969, 48.965633>,  <35.686623, 37.675701, 49.354786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984226, 37.749969, 48.965633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202080, 38.075058, 48.882816>,  <35.332790, 38.270111, 48.833126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202080, 38.075058, 48.882816>,  <34.984226, 37.749969, 48.965633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202080, 38.075058, 48.882816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262322, -0.069407, -0.962481,
		-0.796595, 0.578509, 0.175392,
		0.544631, 0.812717, -0.207045,
		35.365471, 38.318874, 48.820702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546921, 37.942909, 48.471237>,  <34.984226, 37.749969, 48.965633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546921, 37.942909, 48.471237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883427, 38.146362, 48.397957>,  <35.085331, 38.268433, 48.353989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883427, 38.146362, 48.397957>,  <34.546921, 37.942909, 48.471237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883427, 38.146362, 48.397957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156885, -0.094612, -0.983075,
		-0.517354, 0.855771, 0.000202,
		0.841268, 0.508629, -0.183206,
		35.135807, 38.298950, 48.342995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431709, 38.459599, 47.960823>,  <34.546921, 37.942909, 48.471237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431709, 38.459599, 47.960823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825531, 38.391796, 47.943325>,  <35.061825, 38.351112, 47.932827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825531, 38.391796, 47.943325>,  <34.431709, 38.459599, 47.960823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825531, 38.391796, 47.943325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048023, -0.021239, -0.998620,
		0.168347, 0.985300, -0.029052,
		0.984557, -0.169510, -0.043742,
		35.120899, 38.340942, 47.930202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612404, 38.750568, 47.339306>,  <34.431709, 38.459599, 47.960823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612404, 38.750568, 47.339306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927074, 38.523273, 47.435844>,  <35.115875, 38.386898, 47.493767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927074, 38.523273, 47.435844>,  <34.612404, 38.750568, 47.339306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927074, 38.523273, 47.435844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077996, -0.296315, -0.951900,
		0.612418, 0.767662, -0.188784,
		0.786677, -0.568236, 0.241343,
		35.163078, 38.352802, 47.508247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201393, 38.975899, 46.905991>,  <34.612404, 38.750568, 47.339306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201393, 38.975899, 46.905991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291843, 38.606350, 47.029488>,  <35.346115, 38.384621, 47.103584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291843, 38.606350, 47.029488>,  <35.201393, 38.975899, 46.905991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291843, 38.606350, 47.029488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121410, -0.287748, -0.949979,
		0.966502, 0.252303, 0.047099,
		0.226130, -0.923875, 0.308741,
		35.359684, 38.329189, 47.122108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809200, 38.780407, 46.676186>,  <35.201393, 38.975899, 46.905991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809200, 38.780407, 46.676186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622047, 38.430935, 46.729504>,  <35.509754, 38.221252, 46.761494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622047, 38.430935, 46.729504>,  <35.809200, 38.780407, 46.676186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622047, 38.430935, 46.729504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073695, -0.188862, -0.979235,
		0.880711, -0.448348, 0.152752,
		-0.467886, -0.873679, 0.133292,
		35.481682, 38.168831, 46.769489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110397, 38.339653, 46.097866>,  <35.809200, 38.780407, 46.676186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110397, 38.339653, 46.097866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797512, 38.120373, 46.216267>,  <35.609779, 37.988804, 46.287308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797512, 38.120373, 46.216267>,  <36.110397, 38.339653, 46.097866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797512, 38.120373, 46.216267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082699, -0.379549, -0.921468,
		0.617494, -0.745266, 0.251554,
		-0.782215, -0.548198, 0.296002,
		35.562847, 37.955914, 46.305069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195808, 37.722549, 45.744137>,  <36.110397, 38.339653, 46.097866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195808, 37.722549, 45.744137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819912, 37.730946, 45.880634>,  <35.594376, 37.735985, 45.962532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819912, 37.730946, 45.880634>,  <36.195808, 37.722549, 45.744137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819912, 37.730946, 45.880634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326615, -0.350111, -0.877921,
		0.101045, -0.936473, 0.335870,
		-0.939741, 0.020990, 0.341243,
		35.537991, 37.737244, 45.983006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843685, 36.998966, 45.775494>,  <36.195808, 37.722549, 45.744137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843685, 36.998966, 45.775494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555767, 37.270248, 45.716270>,  <35.383015, 37.433018, 45.680737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555767, 37.270248, 45.716270>,  <35.843685, 36.998966, 45.775494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555767, 37.270248, 45.716270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099709, -0.312082, -0.944808,
		-0.686984, -0.665309, 0.292260,
		-0.719799, 0.678210, -0.148059,
		35.339828, 37.473713, 45.671852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329388, 36.704094, 45.269901>,  <35.843685, 36.998966, 45.775494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329388, 36.704094, 45.269901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203487, 37.083759, 45.267963>,  <35.127949, 37.311558, 45.266800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203487, 37.083759, 45.267963>,  <35.329388, 36.704094, 45.269901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203487, 37.083759, 45.267963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320561, -0.111106, -0.940689,
		-0.893405, -0.294529, 0.339235,
		-0.314751, 0.949162, -0.004848,
		35.109062, 37.368507, 45.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517094, 36.750027, 44.970646>,  <35.329388, 36.704094, 45.269901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517094, 36.750027, 44.970646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679230, 37.112225, 44.920406>,  <34.776512, 37.329544, 44.890263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679230, 37.112225, 44.920406>,  <34.517094, 36.750027, 44.970646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679230, 37.112225, 44.920406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396358, 0.050278, -0.916718,
		-0.823770, 0.421365, 0.379280,
		0.405342, 0.905496, -0.125594,
		34.800831, 37.383873, 44.882729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991985, 37.145584, 44.631241>,  <34.517094, 36.750027, 44.970646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991985, 37.145584, 44.631241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322468, 37.363388, 44.573433>,  <34.520760, 37.494072, 44.538750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322468, 37.363388, 44.573433>,  <33.991985, 37.145584, 44.631241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322468, 37.363388, 44.573433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306400, 0.219048, -0.926357,
		-0.472755, 0.809645, 0.347818,
		0.826209, 0.544511, -0.144519,
		34.570332, 37.526741, 44.530079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721886, 37.711826, 44.426971>,  <33.991985, 37.145584, 44.631241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721886, 37.711826, 44.426971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096279, 37.721882, 44.286514>,  <34.320915, 37.727913, 44.202240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096279, 37.721882, 44.286514>,  <33.721886, 37.711826, 44.426971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096279, 37.721882, 44.286514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352031, 0.060263, -0.934046,
		-0.002316, 0.997866, 0.065254,
		0.935985, 0.025134, -0.351140,
		34.377075, 37.729424, 44.181171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744251, 38.228168, 43.883987>,  <33.721886, 37.711826, 44.426971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744251, 38.228168, 43.883987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050430, 37.980431, 43.814129>,  <34.234138, 37.831787, 43.772213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050430, 37.980431, 43.814129>,  <33.744251, 38.228168, 43.883987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050430, 37.980431, 43.814129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298500, -0.101310, -0.949017,
		0.570072, 0.778558, -0.262421,
		0.765451, -0.619341, -0.174646,
		34.280067, 37.794628, 43.761734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982594, 38.271877, 43.131248>,  <33.744251, 38.228168, 43.883987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982594, 38.271877, 43.131248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170166, 37.933228, 43.231911>,  <34.282711, 37.730038, 43.292309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170166, 37.933228, 43.231911>,  <33.982594, 38.271877, 43.131248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170166, 37.933228, 43.231911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202046, -0.380193, -0.902569,
		0.859812, 0.372401, -0.349343,
		0.468936, -0.846623, 0.251653,
		34.310848, 37.679241, 43.307407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397465, 38.100979, 42.603565>,  <33.982594, 38.271877, 43.131248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397465, 38.100979, 42.603565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335064, 37.746490, 42.778049>,  <34.297623, 37.533798, 42.882740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335064, 37.746490, 42.778049>,  <34.397465, 38.100979, 42.603565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335064, 37.746490, 42.778049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050359, -0.448182, -0.892523,
		0.986472, -0.117268, 0.114547,
		-0.156002, -0.886217, 0.436213,
		34.288265, 37.480625, 42.908913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820259, 37.644775, 42.226357>,  <34.397465, 38.100979, 42.603565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820259, 37.644775, 42.226357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511215, 37.462921, 42.403618>,  <34.325790, 37.353809, 42.509975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511215, 37.462921, 42.403618>,  <34.820259, 37.644775, 42.226357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511215, 37.462921, 42.403618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152800, -0.544328, -0.824839,
		0.616224, -0.704989, 0.351082,
		-0.772606, -0.454640, 0.443150,
		34.279434, 37.326530, 42.536564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035526, 36.973595, 42.283119>,  <34.820259, 37.644775, 42.226357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035526, 36.973595, 42.283119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636822, 36.979454, 42.314728>,  <34.397598, 36.982967, 42.333691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636822, 36.979454, 42.314728>,  <35.035526, 36.973595, 42.283119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636822, 36.979454, 42.314728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075951, -0.493032, -0.866689,
		0.026264, -0.869888, 0.492550,
		-0.996766, 0.014646, 0.079018,
		34.337791, 36.983849, 42.338432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902485, 36.292461, 42.052979>,  <35.035526, 36.973595, 42.283119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902485, 36.292461, 42.052979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551590, 36.484482, 42.052113>,  <34.341053, 36.599693, 42.051594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551590, 36.484482, 42.052113>,  <34.902485, 36.292461, 42.052979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551590, 36.484482, 42.052113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215400, -0.397641, -0.891899,
		-0.429021, -0.781940, 0.452229,
		-0.877236, 0.480053, -0.002166,
		34.288418, 36.628498, 42.051464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444740, 35.787964, 42.075378>,  <34.902485, 36.292461, 42.052979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444740, 35.787964, 42.075378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241554, 36.102741, 41.935272>,  <34.119644, 36.291607, 41.851208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241554, 36.102741, 41.935272>,  <34.444740, 35.787964, 42.075378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241554, 36.102741, 41.935272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401600, -0.576099, -0.711918,
		-0.762030, -0.220961, 0.608675,
		-0.507964, 0.786948, -0.350267,
		34.089165, 36.338825, 41.830193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669384, 35.501705, 42.012672>,  <34.444740, 35.787964, 42.075378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669384, 35.501705, 42.012672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780659, 35.819763, 41.797134>,  <33.847424, 36.010597, 41.667812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780659, 35.819763, 41.797134>,  <33.669384, 35.501705, 42.012672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780659, 35.819763, 41.797134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364670, -0.431558, -0.825090,
		-0.888610, 0.426030, 0.169912,
		0.278186, 0.795145, -0.538847,
		33.864113, 36.058308, 41.635479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090778, 35.709393, 41.591206>,  <33.669384, 35.501705, 42.012672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090778, 35.709393, 41.591206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395702, 35.871868, 41.389656>,  <33.578655, 35.969353, 41.268726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395702, 35.871868, 41.389656>,  <33.090778, 35.709393, 41.591206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395702, 35.871868, 41.389656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295216, -0.474601, -0.829217,
		-0.575961, 0.780874, -0.241880,
		0.762310, 0.406190, -0.503878,
		33.624397, 35.993725, 41.238491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762375, 35.816044, 40.992840>,  <33.090778, 35.709393, 41.591206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762375, 35.816044, 40.992840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151489, 35.846207, 40.905209>,  <33.384960, 35.864304, 40.852631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151489, 35.846207, 40.905209>,  <32.762375, 35.816044, 40.992840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151489, 35.846207, 40.905209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190738, -0.276164, -0.941994,
		-0.131532, 0.958148, -0.254267,
		0.972789, 0.075404, -0.219080,
		33.443325, 35.868828, 40.839485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822266, 36.288609, 40.382977>,  <32.762375, 35.816044, 40.992840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822266, 36.288609, 40.382977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174770, 36.099739, 40.391163>,  <33.386272, 35.986416, 40.396076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174770, 36.099739, 40.391163>,  <32.822266, 36.288609, 40.382977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174770, 36.099739, 40.391163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048053, -0.132595, -0.990005,
		0.470172, 0.871474, -0.139541,
		0.881266, -0.472178, 0.020466,
		33.439152, 35.958084, 40.397301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216549, 36.570408, 39.915077>,  <32.822266, 36.288609, 40.382977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216549, 36.570408, 39.915077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409672, 36.224476, 39.970146>,  <33.525547, 36.016914, 40.003189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409672, 36.224476, 39.970146>,  <33.216549, 36.570408, 39.915077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409672, 36.224476, 39.970146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105137, -0.098830, -0.989535,
		0.869390, 0.492233, 0.043210,
		0.482812, -0.864835, 0.137674,
		33.554516, 35.965027, 40.011448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804626, 36.647377, 39.518787>,  <33.216549, 36.570408, 39.915077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804626, 36.647377, 39.518787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758232, 36.250732, 39.541615>,  <33.730396, 36.012745, 39.555309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758232, 36.250732, 39.541615>,  <33.804626, 36.647377, 39.518787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758232, 36.250732, 39.541615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137711, -0.072956, -0.987782,
		0.983658, -0.106711, 0.145018,
		-0.115988, -0.991610, 0.057069,
		33.723434, 35.953251, 39.558735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395336, 36.293564, 39.181118>,  <33.804626, 36.647377, 39.518787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395336, 36.293564, 39.181118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088421, 36.037109, 39.175156>,  <33.904274, 35.883236, 39.171577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088421, 36.037109, 39.175156>,  <34.395336, 36.293564, 39.181118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088421, 36.037109, 39.175156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167593, -0.178031, -0.969648,
		0.619020, -0.746494, 0.244050,
		-0.767285, -0.641133, -0.014903,
		33.858234, 35.844769, 39.170685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639534, 35.668465, 38.809761>,  <34.395336, 36.293564, 39.181118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639534, 35.668465, 38.809761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240433, 35.641975, 38.805702>,  <34.000973, 35.626080, 38.803265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240433, 35.641975, 38.805702>,  <34.639534, 35.668465, 38.809761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240433, 35.641975, 38.805702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021633, -0.175079, -0.984317,
		0.063412, -0.982324, 0.176119,
		-0.997753, -0.066227, -0.010149,
		33.941109, 35.622108, 38.802658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183155, 35.233532, 39.236084>,  <34.639534, 35.668465, 38.809761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183155, 35.233532, 39.236084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482555, 34.993958, 39.122223>,  <35.662193, 34.850212, 39.053905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482555, 34.993958, 39.122223>,  <35.183155, 35.233532, 39.236084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482555, 34.993958, 39.122223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403996, 0.071458, 0.911966,
		-0.525871, -0.797601, 0.295455,
		0.748497, -0.598938, -0.284650,
		35.707104, 34.814278, 39.036827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202408, 34.654968, 39.701546>,  <35.183155, 35.233532, 39.236084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202408, 34.654968, 39.701546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550835, 34.767822, 39.540726>,  <35.759892, 34.835533, 39.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550835, 34.767822, 39.540726>,  <35.202408, 34.654968, 39.701546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550835, 34.767822, 39.540726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318982, 0.297485, 0.899863,
		0.373483, -0.912088, 0.169135,
		0.871069, 0.282132, -0.402046,
		35.812157, 34.852463, 39.420113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841072, 34.247158, 39.948906>,  <35.202408, 34.654968, 39.701546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841072, 34.247158, 39.948906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000137, 34.598618, 39.843197>,  <36.095577, 34.809494, 39.779774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000137, 34.598618, 39.843197>,  <35.841072, 34.247158, 39.948906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000137, 34.598618, 39.843197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385725, 0.101244, 0.917042,
		0.832515, -0.466607, -0.298657,
		0.397661, 0.878651, -0.264269,
		36.119434, 34.862213, 39.763916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526173, 34.120129, 40.030098>,  <35.841072, 34.247158, 39.948906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526173, 34.120129, 40.030098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469872, 34.515854, 40.045326>,  <36.436089, 34.753288, 40.054462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469872, 34.515854, 40.045326>,  <36.526173, 34.120129, 40.030098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469872, 34.515854, 40.045326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377180, 0.018034, 0.925964,
		0.915381, 0.144694, -0.375687,
		-0.140757, 0.989312, 0.038068,
		36.427643, 34.812649, 40.056747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202995, 34.365936, 40.382431>,  <36.526173, 34.120129, 40.030098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202995, 34.365936, 40.382431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934181, 34.661625, 40.399963>,  <36.772892, 34.839039, 40.410484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934181, 34.661625, 40.399963>,  <37.202995, 34.365936, 40.382431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934181, 34.661625, 40.399963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414200, 0.326162, 0.849739,
		0.613851, 0.589207, -0.525378,
		-0.672031, 0.739225, 0.043835,
		36.732571, 34.883392, 40.413113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591297, 34.964966, 40.619347>,  <37.202995, 34.365936, 40.382431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591297, 34.964966, 40.619347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214497, 35.077660, 40.692287>,  <36.988415, 35.145275, 40.736053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214497, 35.077660, 40.692287>,  <37.591297, 34.964966, 40.619347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214497, 35.077660, 40.692287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270440, 0.315534, 0.909561,
		0.198716, 0.906126, -0.373427,
		-0.942005, 0.281734, 0.182352,
		36.931896, 35.162178, 40.746994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653370, 35.601578, 40.832645>,  <37.591297, 34.964966, 40.619347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653370, 35.601578, 40.832645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321327, 35.447697, 40.994102>,  <37.122101, 35.355370, 41.090977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321327, 35.447697, 40.994102>,  <37.653370, 35.601578, 40.832645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321327, 35.447697, 40.994102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251561, 0.387667, 0.886810,
		-0.497639, 0.837686, -0.225027,
		-0.830104, -0.384703, 0.403647,
		37.072296, 35.332287, 41.115196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504719, 36.060932, 41.351036>,  <37.653370, 35.601578, 40.832645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504719, 36.060932, 41.351036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257511, 35.764572, 41.456196>,  <37.109184, 35.586758, 41.519291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257511, 35.764572, 41.456196>,  <37.504719, 36.060932, 41.351036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257511, 35.764572, 41.456196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091323, 0.264490, 0.960055,
		-0.780838, 0.617345, -0.095800,
		-0.618023, -0.740898, 0.262902,
		37.072105, 35.542301, 41.535065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987144, 36.386158, 41.740253>,  <37.504719, 36.060932, 41.351036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987144, 36.386158, 41.740253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991692, 36.000305, 41.845589>,  <36.994419, 35.768791, 41.908791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991692, 36.000305, 41.845589>,  <36.987144, 36.386158, 41.740253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991692, 36.000305, 41.845589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008269, 0.263440, 0.964640,
		-0.999901, -0.008784, 0.010970,
		0.011364, -0.964636, 0.263341,
		36.995102, 35.710915, 41.924591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560032, 36.409431, 42.334930>,  <36.987144, 36.386158, 41.740253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560032, 36.409431, 42.334930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759159, 36.063068, 42.354446>,  <36.878635, 35.855251, 42.366154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759159, 36.063068, 42.354446>,  <36.560032, 36.409431, 42.334930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759159, 36.063068, 42.354446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044217, 0.030841, 0.998546,
		-0.866153, -0.499253, -0.022935,
		0.497820, -0.865907, 0.048788,
		36.908504, 35.803295, 42.369083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362724, 36.134109, 42.922550>,  <36.560032, 36.409431, 42.334930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362724, 36.134109, 42.922550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703781, 35.936928, 42.853268>,  <36.908413, 35.818619, 42.811699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703781, 35.936928, 42.853268>,  <36.362724, 36.134109, 42.922550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703781, 35.936928, 42.853268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176223, -0.040770, 0.983506,
		-0.491887, -0.869098, 0.052108,
		0.852639, -0.492956, -0.173209,
		36.959572, 35.789040, 42.801304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444103, 35.689934, 43.435547>,  <36.362724, 36.134109, 42.922550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444103, 35.689934, 43.435547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817688, 35.739548, 43.301487>,  <37.041840, 35.769318, 43.221050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817688, 35.739548, 43.301487>,  <36.444103, 35.689934, 43.435547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817688, 35.739548, 43.301487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325329, 0.092972, 0.941019,
		0.147884, -0.987912, 0.046478,
		0.933965, 0.124041, -0.335146,
		37.097878, 35.776760, 43.200943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801662, 35.291088, 43.853107>,  <36.444103, 35.689934, 43.435547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801662, 35.291088, 43.853107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096626, 35.527039, 43.721485>,  <37.273605, 35.668610, 43.642513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096626, 35.527039, 43.721485>,  <36.801662, 35.291088, 43.853107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096626, 35.527039, 43.721485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324636, 0.117698, 0.938487,
		0.592318, -0.798872, -0.104702,
		0.737408, 0.589873, -0.329057,
		37.317848, 35.703999, 43.622768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422127, 35.032608, 44.060844>,  <36.801662, 35.291088, 43.853107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422127, 35.032608, 44.060844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514530, 35.415424, 43.990742>,  <37.569973, 35.645115, 43.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514530, 35.415424, 43.990742>,  <37.422127, 35.032608, 44.060844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514530, 35.415424, 43.990742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346588, 0.087366, 0.933940,
		0.909128, -0.276486, -0.311516,
		0.231005, 0.957039, -0.175253,
		37.583832, 35.702538, 43.938168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916306, 35.156254, 44.597507>,  <37.422127, 35.032608, 44.060844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916306, 35.156254, 44.597507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860867, 35.527138, 44.458328>,  <37.827602, 35.749668, 44.374821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860867, 35.527138, 44.458328>,  <37.916306, 35.156254, 44.597507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860867, 35.527138, 44.458328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381074, 0.374223, 0.845423,
		0.914096, -0.015418, -0.405204,
		-0.138602, 0.927211, -0.347951,
		37.819286, 35.805302, 44.353943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598255, 35.595634, 44.614395>,  <37.916306, 35.156254, 44.597507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598255, 35.595634, 44.614395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282990, 35.839176, 44.650360>,  <38.093830, 35.985302, 44.671940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282990, 35.839176, 44.650360>,  <38.598255, 35.595634, 44.614395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282990, 35.839176, 44.650360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408889, 0.408816, 0.815892,
		0.460002, 0.679825, -0.571170,
		-0.788167, 0.608857, 0.089917,
		38.046539, 36.021832, 44.677334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851978, 36.344135, 44.807953>,  <38.598255, 35.595634, 44.614395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851978, 36.344135, 44.807953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469952, 36.305473, 44.920025>,  <38.240734, 36.282276, 44.987267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469952, 36.305473, 44.920025>,  <38.851978, 36.344135, 44.807953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469952, 36.305473, 44.920025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204576, 0.469043, 0.859155,
		-0.214457, 0.877871, -0.428195,
		-0.955069, -0.096654, 0.280181,
		38.183430, 36.276478, 45.004078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709335, 37.033035, 45.044125>,  <38.851978, 36.344135, 44.807953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709335, 37.033035, 45.044125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421993, 36.823978, 45.227779>,  <38.249588, 36.698544, 45.337971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421993, 36.823978, 45.227779>,  <38.709335, 37.033035, 45.044125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421993, 36.823978, 45.227779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131349, 0.546219, 0.827280,
		-0.683163, 0.654589, -0.323730,
		-0.718356, -0.522646, 0.459136,
		38.206486, 36.667183, 45.365520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318760, 37.575878, 45.369827>,  <38.709335, 37.033035, 45.044125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318760, 37.575878, 45.369827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224705, 37.232643, 45.552429>,  <38.168274, 37.026703, 45.661991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224705, 37.232643, 45.552429>,  <38.318760, 37.575878, 45.369827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224705, 37.232643, 45.552429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029745, 0.475805, 0.879048,
		-0.971508, 0.193116, -0.137402,
		-0.235134, -0.858088, 0.456505,
		38.154163, 36.975216, 45.689381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602665, 37.570549, 45.613392>,  <38.318760, 37.575878, 45.369827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602665, 37.570549, 45.613392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780514, 37.292294, 45.839100>,  <37.887222, 37.125340, 45.974525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780514, 37.292294, 45.839100>,  <37.602665, 37.570549, 45.613392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780514, 37.292294, 45.839100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283559, 0.488247, 0.825354,
		-0.849649, -0.526976, 0.019833,
		0.444625, -0.695637, 0.564268,
		37.913902, 37.083603, 46.008381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133980, 37.597897, 46.129951>,  <37.602665, 37.570549, 45.613392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133980, 37.597897, 46.129951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453686, 37.396885, 46.261799>,  <37.645508, 37.276279, 46.340908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453686, 37.396885, 46.261799>,  <37.133980, 37.597897, 46.129951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453686, 37.396885, 46.261799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138491, 0.379693, 0.914688,
		-0.584807, -0.776725, 0.233879,
		0.799263, -0.502526, 0.329617,
		37.693466, 37.246128, 46.360683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940395, 37.293640, 46.710587>,  <37.133980, 37.597897, 46.129951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940395, 37.293640, 46.710587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338421, 37.321594, 46.738743>,  <37.577236, 37.338367, 46.755638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338421, 37.321594, 46.738743>,  <36.940395, 37.293640, 46.710587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338421, 37.321594, 46.738743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089289, 0.321965, 0.942532,
		0.043206, -0.944169, 0.326617,
		0.995068, 0.069886, 0.070394,
		37.636940, 37.342560, 46.759861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103619, 37.055279, 47.459160>,  <36.940395, 37.293640, 46.710587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103619, 37.055279, 47.459160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404797, 37.283806, 47.328526>,  <37.585503, 37.420921, 47.250145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404797, 37.283806, 47.328526>,  <37.103619, 37.055279, 47.459160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404797, 37.283806, 47.328526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071818, 0.421970, 0.903761,
		0.654148, -0.703941, 0.276690,
		0.752949, 0.571322, -0.326586,
		37.630680, 37.455204, 47.230549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574898, 36.992077, 47.942207>,  <37.103619, 37.055279, 47.459160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574898, 36.992077, 47.942207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673702, 37.313274, 47.725250>,  <37.732983, 37.505993, 47.595074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673702, 37.313274, 47.725250>,  <37.574898, 36.992077, 47.942207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673702, 37.313274, 47.725250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247039, 0.489060, 0.836535,
		0.936994, -0.340624, -0.077568,
		0.247009, 0.802991, -0.542394,
		37.747807, 37.554173, 47.562531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165131, 37.163586, 48.293636>,  <37.574898, 36.992077, 47.942207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165131, 37.163586, 48.293636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017921, 37.473267, 48.087654>,  <37.929596, 37.659073, 47.964066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017921, 37.473267, 48.087654>,  <38.165131, 37.163586, 48.293636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017921, 37.473267, 48.087654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302114, 0.623335, 0.721235,
		0.879368, 0.109856, -0.463297,
		-0.368021, 0.774199, -0.514952,
		37.907516, 37.705528, 47.933170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615723, 37.756332, 48.411194>,  <38.165131, 37.163586, 48.293636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615723, 37.756332, 48.411194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273872, 37.936447, 48.307770>,  <38.068760, 38.044514, 48.245716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273872, 37.936447, 48.307770>,  <38.615723, 37.756332, 48.411194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273872, 37.936447, 48.307770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175081, 0.718703, 0.672914,
		0.488831, 0.529822, -0.693060,
		-0.854629, 0.450283, -0.258563,
		38.017483, 38.071533, 48.230202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832108, 38.483009, 48.324539>,  <38.615723, 37.756332, 48.411194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832108, 38.483009, 48.324539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436760, 38.450619, 48.376026>,  <38.199551, 38.431183, 48.406918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436760, 38.450619, 48.376026>,  <38.832108, 38.483009, 48.324539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436760, 38.450619, 48.376026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040336, 0.676508, 0.735330,
		-0.146624, 0.731970, -0.665373,
		-0.988369, -0.080979, 0.128718,
		38.140247, 38.426327, 48.414642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537842, 39.200157, 48.280720>,  <38.832108, 38.483009, 48.324539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537842, 39.200157, 48.280720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251114, 38.992191, 48.466564>,  <38.079079, 38.867413, 48.578072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251114, 38.992191, 48.466564>,  <38.537842, 39.200157, 48.280720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251114, 38.992191, 48.466564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108389, 0.741323, 0.662338,
		-0.688782, 0.424419, -0.587748,
		-0.716820, -0.519912, 0.464608,
		38.036068, 38.836216, 48.605946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179543, 39.729786, 48.396683>,  <38.537842, 39.200157, 48.280720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179543, 39.729786, 48.396683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067871, 39.440155, 48.648960>,  <38.000870, 39.266376, 48.800327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067871, 39.440155, 48.648960>,  <38.179543, 39.729786, 48.396683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067871, 39.440155, 48.648960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238342, 0.688505, 0.684948,
		-0.930190, 0.040900, -0.364792,
		-0.279176, -0.724077, 0.630692,
		37.984119, 39.222931, 48.838169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602669, 39.957531, 48.737831>,  <38.179543, 39.729786, 48.396683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602669, 39.957531, 48.737831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734428, 39.675625, 48.989166>,  <37.813484, 39.506481, 49.139969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734428, 39.675625, 48.989166>,  <37.602669, 39.957531, 48.737831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734428, 39.675625, 48.989166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202043, 0.597450, 0.776036,
		-0.922321, -0.382576, 0.054407,
		0.329398, -0.704761, 0.628338,
		37.833248, 39.464195, 49.177666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208897, 40.037464, 49.407669>,  <37.602669, 39.957531, 48.737831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208897, 40.037464, 49.407669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532749, 39.823372, 49.504025>,  <37.727058, 39.694916, 49.561836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532749, 39.823372, 49.504025>,  <37.208897, 40.037464, 49.407669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532749, 39.823372, 49.504025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100846, 0.531161, 0.841248,
		-0.578214, -0.656806, 0.484019,
		0.809629, -0.535233, 0.240888,
		37.775639, 39.662804, 49.576290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087910, 39.814457, 50.054356>,  <37.208897, 40.037464, 49.407669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087910, 39.814457, 50.054356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485664, 39.789780, 50.019970>,  <37.724316, 39.774975, 49.999336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485664, 39.789780, 50.019970>,  <37.087910, 39.814457, 50.054356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485664, 39.789780, 50.019970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105811, 0.573917, 0.812048,
		-0.000761, -0.816586, 0.577223,
		0.994386, -0.061695, -0.085967,
		37.783981, 39.771271, 49.994179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306515, 39.622463, 50.648663>,  <37.087910, 39.814457, 50.054356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306515, 39.622463, 50.648663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618217, 39.816326, 50.489731>,  <37.805241, 39.932644, 50.394371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618217, 39.816326, 50.489731>,  <37.306515, 39.622463, 50.648663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618217, 39.816326, 50.489731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056552, 0.577025, 0.814766,
		0.624151, -0.657380, 0.422240,
		0.779254, 0.484659, -0.397327,
		37.851994, 39.961723, 50.370533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847847, 39.758377, 51.169876>,  <37.306515, 39.622463, 50.648663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847847, 39.758377, 51.169876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949356, 40.004356, 50.871227>,  <38.010262, 40.151943, 50.692039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949356, 40.004356, 50.871227>,  <37.847847, 39.758377, 51.169876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949356, 40.004356, 50.871227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175899, 0.729679, 0.660779,
		0.951135, -0.299018, 0.077006,
		0.253774, 0.614945, -0.746621,
		38.025490, 40.188839, 50.647240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403973, 40.167908, 51.456711>,  <37.847847, 39.758377, 51.169876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403973, 40.167908, 51.456711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254784, 40.386719, 51.156937>,  <38.165272, 40.518005, 50.977070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254784, 40.386719, 51.156937>,  <38.403973, 40.167908, 51.456711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254784, 40.386719, 51.156937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130882, 0.768627, 0.626165,
		0.918565, 0.331631, -0.215082,
		-0.372973, 0.547023, -0.749438,
		38.142891, 40.550827, 50.932106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596973, 40.787750, 51.655220>,  <38.403973, 40.167908, 51.456711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596973, 40.787750, 51.655220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361423, 40.910431, 51.356110>,  <38.220093, 40.984039, 51.176643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361423, 40.910431, 51.356110>,  <38.596973, 40.787750, 51.655220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361423, 40.910431, 51.356110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231140, 0.822655, 0.519436,
		0.774469, 0.478722, -0.413549,
		-0.588873, 0.306699, -0.747773,
		38.184761, 41.002441, 51.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882381, 41.338573, 51.443573>,  <38.596973, 40.787750, 51.655220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882381, 41.338573, 51.443573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497726, 41.361492, 51.336258>,  <38.266933, 41.375244, 51.271870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497726, 41.361492, 51.336258>,  <38.882381, 41.338573, 51.443573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497726, 41.361492, 51.336258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121254, 0.788462, 0.603013,
		0.246086, 0.612408, -0.751264,
		-0.961634, 0.057299, -0.268286,
		38.209236, 41.378681, 51.255772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558006, 41.463940, 51.218555>,  <38.882381, 41.338573, 51.443573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558006, 41.463940, 51.218555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414162, 41.834953, 51.177834>,  <39.327854, 42.057560, 51.153400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414162, 41.834953, 51.177834>,  <39.558006, 41.463940, 51.218555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414162, 41.834953, 51.177834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370544, 0.041820, -0.927873,
		-0.856372, -0.371402, -0.358730,
		-0.359616, 0.927530, -0.101807,
		39.306278, 42.113213, 51.147293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002918, 41.517330, 50.671982>,  <39.558006, 41.463940, 51.218555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002918, 41.517330, 50.671982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248493, 41.832520, 50.690662>,  <39.395836, 42.021633, 50.701870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248493, 41.832520, 50.690662>,  <39.002918, 41.517330, 50.671982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248493, 41.832520, 50.690662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481171, -0.326685, -0.813480,
		-0.625745, 0.521894, -0.579714,
		0.613935, 0.787974, 0.046699,
		39.432674, 42.068913, 50.704674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986748, 41.895699, 50.021687>,  <39.002918, 41.517330, 50.671982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986748, 41.895699, 50.021687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340401, 42.007664, 50.171329>,  <39.552593, 42.074841, 50.261116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340401, 42.007664, 50.171329>,  <38.986748, 41.895699, 50.021687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340401, 42.007664, 50.171329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448451, -0.283672, -0.847598,
		-0.131129, 0.917159, -0.376331,
		0.884136, 0.279910, 0.374103,
		39.605640, 42.091637, 50.283562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417160, 42.203064, 49.475586>,  <38.986748, 41.895699, 50.021687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417160, 42.203064, 49.475586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705009, 42.121532, 49.741096>,  <39.877720, 42.072613, 49.900402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705009, 42.121532, 49.741096>,  <39.417160, 42.203064, 49.475586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705009, 42.121532, 49.741096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620509, -0.240246, -0.746492,
		0.311625, 0.949071, -0.046409,
		0.719623, -0.203829, 0.663774,
		39.920895, 42.060383, 49.940228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062836, 42.440762, 49.149345>,  <39.417160, 42.203064, 49.475586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062836, 42.440762, 49.149345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163033, 42.182133, 49.437565>,  <40.223148, 42.026955, 49.610497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163033, 42.182133, 49.437565>,  <40.062836, 42.440762, 49.149345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163033, 42.182133, 49.437565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693413, -0.399570, -0.599602,
		0.675599, 0.649834, 0.348256,
		0.250489, -0.646575, 0.720552,
		40.238178, 41.988159, 49.653732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799915, 42.447010, 49.240124>,  <40.062836, 42.440762, 49.149345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799915, 42.447010, 49.240124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688244, 42.074581, 49.334068>,  <40.621239, 41.851124, 49.390434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688244, 42.074581, 49.334068>,  <40.799915, 42.447010, 49.240124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688244, 42.074581, 49.334068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665065, -0.363913, -0.652117,
		0.692637, -0.025862, 0.720822,
		-0.279181, -0.931074, 0.234860,
		40.604488, 41.795258, 49.404526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478638, 42.083210, 49.304882>,  <40.799915, 42.447010, 49.240124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478638, 42.083210, 49.304882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187538, 41.810642, 49.273769>,  <41.012878, 41.647102, 49.255100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187538, 41.810642, 49.273769>,  <41.478638, 42.083210, 49.304882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187538, 41.810642, 49.273769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504321, -0.454822, -0.734028,
		0.464805, -0.573414, 0.674650,
		-0.727748, -0.681420, -0.077781,
		40.969215, 41.606216, 49.250435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830547, 41.518158, 49.057480>,  <41.478638, 42.083210, 49.304882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830547, 41.518158, 49.057480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451351, 41.414379, 48.983711>,  <41.223835, 41.352112, 48.939449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451351, 41.414379, 48.983711>,  <41.830547, 41.518158, 49.057480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451351, 41.414379, 48.983711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286426, -0.442522, -0.849785,
		0.138861, -0.858408, 0.493816,
		-0.947987, -0.259443, -0.184421,
		41.166954, 41.336548, 48.928387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808384, 40.823257, 48.878197>,  <41.830547, 41.518158, 49.057480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808384, 40.823257, 48.878197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451702, 40.945927, 48.745041>,  <41.237694, 41.019527, 48.665146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451702, 40.945927, 48.745041>,  <41.808384, 40.823257, 48.878197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451702, 40.945927, 48.745041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064904, -0.641241, -0.764590,
		-0.447946, -0.703392, 0.551891,
		-0.891702, 0.306675, -0.332894,
		41.184193, 41.037930, 48.645172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415558, 40.167988, 48.586708>,  <41.808384, 40.823257, 48.878197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415558, 40.167988, 48.586708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213142, 40.464611, 48.410522>,  <41.091694, 40.642586, 48.304810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213142, 40.464611, 48.410522>,  <41.415558, 40.167988, 48.586708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213142, 40.464611, 48.410522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046731, -0.486355, -0.872511,
		-0.861243, -0.462108, 0.211461,
		-0.506040, 0.741562, -0.440465,
		41.061329, 40.687080, 48.278381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738022, 39.921604, 48.341656>,  <41.415558, 40.167988, 48.586708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738022, 39.921604, 48.341656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825260, 40.241425, 48.117817>,  <40.877605, 40.433315, 47.983513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825260, 40.241425, 48.117817>,  <40.738022, 39.921604, 48.341656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825260, 40.241425, 48.117817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056790, -0.582828, -0.810609,
		-0.974273, 0.145012, -0.172520,
		0.218098, 0.799552, -0.559598,
		40.890690, 40.481289, 47.949936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299576, 39.869579, 47.736298>,  <40.738022, 39.921604, 48.341656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299576, 39.869579, 47.736298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593353, 40.109249, 47.608807>,  <40.769619, 40.253052, 47.532314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593353, 40.109249, 47.608807>,  <40.299576, 39.869579, 47.736298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593353, 40.109249, 47.608807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090452, -0.379022, -0.920957,
		-0.672618, 0.705217, -0.224172,
		0.734441, 0.599175, -0.318725,
		40.813686, 40.289001, 47.513187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009571, 40.208843, 47.050453>,  <40.299576, 39.869579, 47.736298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009571, 40.208843, 47.050453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408024, 40.238594, 47.031765>,  <40.647095, 40.256447, 47.020550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408024, 40.238594, 47.031765>,  <40.009571, 40.208843, 47.050453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408024, 40.238594, 47.031765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022355, -0.299747, -0.953757,
		-0.084945, 0.951115, -0.296926,
		0.996135, 0.074379, -0.046724,
		40.706863, 40.260906, 47.017746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360149, 40.634853, 46.375511>,  <40.009571, 40.208843, 47.050453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360149, 40.634853, 46.375511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624245, 40.365803, 46.509171>,  <40.782703, 40.204372, 46.589367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624245, 40.365803, 46.509171>,  <40.360149, 40.634853, 46.375511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624245, 40.365803, 46.509171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019415, -0.429476, -0.902870,
		0.750802, 0.602599, -0.270499,
		0.660242, -0.672625, 0.334151,
		40.822319, 40.164017, 46.609417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777386, 40.558472, 45.775440>,  <40.360149, 40.634853, 46.375511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777386, 40.558472, 45.775440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843380, 40.243824, 46.013435>,  <40.882977, 40.055035, 46.156235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843380, 40.243824, 46.013435>,  <40.777386, 40.558472, 45.775440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843380, 40.243824, 46.013435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064213, -0.610544, -0.789375,
		0.984203, 0.092031, -0.151243,
		0.164988, -0.786617, 0.594990,
		40.892876, 40.007839, 46.191933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210808, 40.214031, 45.360668>,  <40.777386, 40.558472, 45.775440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210808, 40.214031, 45.360668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135662, 39.942482, 45.644596>,  <41.090576, 39.779552, 45.814953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135662, 39.942482, 45.644596>,  <41.210808, 40.214031, 45.360668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135662, 39.942482, 45.644596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104919, -0.704682, -0.701723,
		0.976576, -0.206300, 0.061156,
		-0.187861, -0.678869, 0.709820,
		41.079304, 39.738823, 45.857544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612617, 39.653893, 45.280403>,  <41.210808, 40.214031, 45.360668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612617, 39.653893, 45.280403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315456, 39.484852, 45.488060>,  <41.137161, 39.383427, 45.612652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315456, 39.484852, 45.488060>,  <41.612617, 39.653893, 45.280403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315456, 39.484852, 45.488060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007600, -0.770154, -0.637813,
		0.669358, -0.477777, 0.568936,
		-0.742901, -0.422602, 0.519140,
		41.092587, 39.358070, 45.643803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767456, 38.982052, 45.409462>,  <41.612617, 39.653893, 45.280403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767456, 38.982052, 45.409462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368610, 39.002560, 45.431858>,  <41.129303, 39.014862, 45.445293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368610, 39.002560, 45.431858>,  <41.767456, 38.982052, 45.409462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368610, 39.002560, 45.431858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073515, -0.836037, -0.543726,
		0.018931, -0.546273, 0.837394,
		-0.997115, 0.051267, 0.055986,
		41.069477, 39.017941, 45.448654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535671, 38.281940, 45.409485>,  <41.767456, 38.982052, 45.409462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535671, 38.281940, 45.409485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200089, 38.478695, 45.316364>,  <40.998737, 38.596748, 45.260494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200089, 38.478695, 45.316364>,  <41.535671, 38.281940, 45.409485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200089, 38.478695, 45.316364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216541, -0.694203, -0.686435,
		-0.499257, -0.525481, 0.688921,
		-0.838959, 0.491887, -0.232797,
		40.948402, 38.626263, 45.246525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997395, 37.852306, 45.300755>,  <41.535671, 38.281940, 45.409485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997395, 37.852306, 45.300755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841305, 38.167126, 45.109642>,  <40.747650, 38.356018, 44.994972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841305, 38.167126, 45.109642>,  <40.997395, 37.852306, 45.300755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841305, 38.167126, 45.109642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415546, -0.613619, -0.671411,
		-0.821611, -0.063461, 0.566505,
		-0.390227, 0.787048, -0.477786,
		40.724236, 38.403240, 44.966305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115921, 37.723297, 45.287663>,  <40.997395, 37.852306, 45.300755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115921, 37.723297, 45.287663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227585, 37.999153, 45.020390>,  <40.294582, 38.164665, 44.860027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227585, 37.999153, 45.020390>,  <40.115921, 37.723297, 45.287663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227585, 37.999153, 45.020390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595466, -0.421567, -0.683887,
		-0.753319, 0.588794, 0.292972,
		0.279162, 0.689640, -0.668181,
		40.311333, 38.206043, 44.819935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587456, 38.039795, 44.998440>,  <40.115921, 37.723297, 45.287663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587456, 38.039795, 44.998440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862698, 38.092293, 44.712982>,  <40.027843, 38.123791, 44.541706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862698, 38.092293, 44.712982>,  <39.587456, 38.039795, 44.998440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862698, 38.092293, 44.712982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621699, -0.400514, -0.673111,
		-0.374168, 0.906842, -0.193999,
		0.688105, 0.131247, -0.713643,
		40.069130, 38.131668, 44.498890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232750, 38.139099, 44.523663>,  <39.587456, 38.039795, 44.998440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232750, 38.139099, 44.523663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564560, 38.065319, 44.312813>,  <39.763645, 38.021049, 44.186302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564560, 38.065319, 44.312813>,  <39.232750, 38.139099, 44.523663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564560, 38.065319, 44.312813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554980, -0.377529, -0.741261,
		-0.062275, 0.907441, -0.415541,
		0.829529, -0.184455, -0.527122,
		39.813419, 38.009983, 44.154675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089230, 38.386131, 43.900295>,  <39.232750, 38.139099, 44.523663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089230, 38.386131, 43.900295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396767, 38.142319, 43.822987>,  <39.581287, 37.996029, 43.776600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396767, 38.142319, 43.822987>,  <39.089230, 38.386131, 43.900295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396767, 38.142319, 43.822987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517782, -0.416083, -0.747514,
		0.375217, 0.674792, -0.635506,
		0.768840, -0.609534, -0.193274,
		39.627419, 37.959457, 43.765003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176983, 38.283703, 43.188961>,  <39.089230, 38.386131, 43.900295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176983, 38.283703, 43.188961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393585, 37.967003, 43.302025>,  <39.523548, 37.776981, 43.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393585, 37.967003, 43.302025>,  <39.176983, 38.283703, 43.188961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393585, 37.967003, 43.302025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243657, -0.469597, -0.848593,
		0.804612, 0.390648, -0.447207,
		0.541508, -0.791753, 0.282659,
		39.556038, 37.729477, 43.386822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699688, 38.170025, 42.728973>,  <39.176983, 38.283703, 43.188961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699688, 38.170025, 42.728973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631733, 37.816395, 42.903126>,  <39.590961, 37.604218, 43.007618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631733, 37.816395, 42.903126>,  <39.699688, 38.170025, 42.728973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631733, 37.816395, 42.903126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043595, -0.448114, -0.892913,
		0.984499, -0.132711, 0.114668,
		-0.169883, -0.884071, 0.435382,
		39.580769, 37.551174, 43.033741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190578, 37.772903, 42.482903>,  <39.699688, 38.170025, 42.728973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190578, 37.772903, 42.482903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938866, 37.481861, 42.592148>,  <39.787838, 37.307236, 42.657696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938866, 37.481861, 42.592148>,  <40.190578, 37.772903, 42.482903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938866, 37.481861, 42.592148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127783, -0.443504, -0.887116,
		0.766599, -0.523347, 0.372066,
		-0.629283, -0.727607, 0.273115,
		39.750080, 37.263580, 42.674084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594826, 37.139835, 42.388885>,  <40.190578, 37.772903, 42.482903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594826, 37.139835, 42.388885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207684, 37.040340, 42.403797>,  <39.975399, 36.980644, 42.412743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207684, 37.040340, 42.403797>,  <40.594826, 37.139835, 42.388885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207684, 37.040340, 42.403797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142495, -0.664399, -0.733668,
		0.207257, -0.704772, 0.678485,
		-0.967853, -0.248739, 0.037275,
		39.917328, 36.965717, 42.414978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625572, 36.363789, 42.121292>,  <40.594826, 37.139835, 42.388885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625572, 36.363789, 42.121292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248306, 36.496365, 42.111588>,  <40.021946, 36.575909, 42.105762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248306, 36.496365, 42.111588>,  <40.625572, 36.363789, 42.121292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248306, 36.496365, 42.111588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138040, -0.457143, -0.878615,
		-0.302295, -0.825331, 0.476913,
		-0.943166, 0.331435, -0.024264,
		39.965355, 36.595795, 42.104309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212326, 35.779919, 41.984905>,  <40.625572, 36.363789, 42.121292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212326, 35.779919, 41.984905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012447, 36.105701, 41.866951>,  <39.892521, 36.301170, 41.796177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012447, 36.105701, 41.866951>,  <40.212326, 35.779919, 41.984905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012447, 36.105701, 41.866951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168787, -0.425467, -0.889094,
		-0.849597, -0.394504, 0.350075,
		-0.499696, 0.814459, -0.294888,
		39.862537, 36.350040, 41.778484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693401, 35.495022, 41.631630>,  <40.212326, 35.779919, 41.984905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693401, 35.495022, 41.631630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742222, 35.864754, 41.487007>,  <39.771515, 36.086594, 41.400234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742222, 35.864754, 41.487007>,  <39.693401, 35.495022, 41.631630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742222, 35.864754, 41.487007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158036, -0.341534, -0.926488,
		-0.979861, 0.170217, 0.104393,
		0.122051, 0.924327, -0.361556,
		39.778835, 36.142052, 41.378540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125374, 35.592262, 41.095379>,  <39.693401, 35.495022, 41.631630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125374, 35.592262, 41.095379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412861, 35.864155, 41.036842>,  <39.585354, 36.027290, 41.001720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412861, 35.864155, 41.036842>,  <39.125374, 35.592262, 41.095379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412861, 35.864155, 41.036842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018372, -0.191828, -0.981257,
		-0.695061, 0.707933, -0.125382,
		0.718716, 0.679730, -0.146338,
		39.628475, 36.068073, 40.992943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988377, 35.901737, 40.482052>,  <39.125374, 35.592262, 41.095379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988377, 35.901737, 40.482052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367466, 36.021172, 40.527077>,  <39.594921, 36.092831, 40.554092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367466, 36.021172, 40.527077>,  <38.988377, 35.901737, 40.482052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367466, 36.021172, 40.527077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204223, -0.296521, -0.932935,
		-0.245182, 0.907152, -0.341997,
		0.947723, 0.298582, 0.112560,
		39.651783, 36.110744, 40.560844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128689, 36.238853, 39.906212>,  <38.988377, 35.901737, 40.482052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128689, 36.238853, 39.906212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492481, 36.138775, 40.039032>,  <39.710754, 36.078728, 40.118721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492481, 36.138775, 40.039032>,  <39.128689, 36.238853, 39.906212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492481, 36.138775, 40.039032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235984, -0.346882, -0.907736,
		0.342291, 0.903922, -0.256439,
		0.909477, -0.250194, 0.332046,
		39.765324, 36.063717, 40.138645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561134, 36.461166, 39.375702>,  <39.128689, 36.238853, 39.906212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561134, 36.461166, 39.375702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795681, 36.191578, 39.555450>,  <39.936409, 36.029823, 39.663300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795681, 36.191578, 39.555450>,  <39.561134, 36.461166, 39.375702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795681, 36.191578, 39.555450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311267, -0.324685, -0.893136,
		0.747852, 0.663583, 0.019400,
		0.586371, -0.673972, 0.449367,
		39.971592, 35.989388, 39.690262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276459, 36.552780, 39.204708>,  <39.561134, 36.461166, 39.375702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276459, 36.552780, 39.204708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260487, 36.162468, 39.290741>,  <40.250904, 35.928280, 39.342361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260487, 36.162468, 39.290741>,  <40.276459, 36.552780, 39.204708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260487, 36.162468, 39.290741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439159, -0.210486, -0.873405,
		0.897522, 0.059577, 0.436927,
		-0.039932, -0.975780, 0.215079,
		40.248508, 35.869736, 39.355267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979572, 36.238060, 39.053448>,  <40.276459, 36.552780, 39.204708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979572, 36.238060, 39.053448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718761, 35.935318, 39.035362>,  <40.562275, 35.753674, 39.024513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718761, 35.935318, 39.035362>,  <40.979572, 36.238060, 39.053448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718761, 35.935318, 39.035362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366745, -0.262635, -0.892481,
		0.663600, -0.598499, 0.448815,
		-0.652022, -0.756850, -0.045212,
		40.523155, 35.708263, 39.021797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394604, 35.769585, 38.818756>,  <40.979572, 36.238060, 39.053448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394604, 35.769585, 38.818756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042175, 35.582947, 38.787746>,  <40.830719, 35.470963, 38.769142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042175, 35.582947, 38.787746>,  <41.394604, 35.769585, 38.818756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042175, 35.582947, 38.787746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314053, -0.454531, -0.833530,
		0.353684, -0.758743, 0.547008,
		-0.881067, -0.466595, -0.077525,
		40.777855, 35.442966, 38.764488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564941, 35.007256, 38.755520>,  <41.394604, 35.769585, 38.818756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564941, 35.007256, 38.755520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223167, 35.105068, 38.572155>,  <41.018101, 35.163757, 38.462135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223167, 35.105068, 38.572155>,  <41.564941, 35.007256, 38.755520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223167, 35.105068, 38.572155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274115, -0.537352, -0.797567,
		-0.441360, -0.807128, 0.392104,
		-0.854437, 0.244533, -0.458411,
		40.966835, 35.178429, 38.434631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384529, 34.360897, 38.381310>,  <41.564941, 35.007256, 38.755520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384529, 34.360897, 38.381310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142899, 34.629875, 38.210239>,  <40.997921, 34.791264, 38.107597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142899, 34.629875, 38.210239>,  <41.384529, 34.360897, 38.381310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142899, 34.629875, 38.210239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082067, -0.481314, -0.872698,
		-0.792687, -0.562277, 0.235567,
		-0.604080, 0.672445, -0.427675,
		40.961674, 34.831608, 38.081936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998596, 33.973396, 38.050762>,  <41.384529, 34.360897, 38.381310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998596, 33.973396, 38.050762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938549, 34.331100, 37.882114>,  <40.902519, 34.545723, 37.780926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938549, 34.331100, 37.882114>,  <40.998596, 33.973396, 38.050762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938549, 34.331100, 37.882114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080828, -0.413919, -0.906718,
		-0.985358, -0.170194, -0.010145,
		-0.150119, 0.894262, -0.421615,
		40.893513, 34.599380, 37.755630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556061, 33.796761, 37.555424>,  <40.998596, 33.973396, 38.050762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556061, 33.796761, 37.555424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749058, 34.138573, 37.478500>,  <40.864857, 34.343658, 37.432346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749058, 34.138573, 37.478500>,  <40.556061, 33.796761, 37.555424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749058, 34.138573, 37.478500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187839, -0.315392, -0.930185,
		-0.855520, 0.412687, -0.312689,
		0.482495, 0.854527, -0.192306,
		40.893806, 34.394932, 37.420807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283817, 33.939320, 36.863510>,  <40.556061, 33.796761, 37.555424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283817, 33.939320, 36.863510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643471, 34.107452, 36.912304>,  <40.859264, 34.208332, 36.941582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643471, 34.107452, 36.912304>,  <40.283817, 33.939320, 36.863510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643471, 34.107452, 36.912304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268058, -0.308538, -0.912661,
		-0.345983, 0.853303, -0.390090,
		0.899133, 0.420331, 0.121986,
		40.913212, 34.233551, 36.948898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431713, 34.369507, 36.197433>,  <40.283817, 33.939320, 36.863510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431713, 34.369507, 36.197433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759003, 34.246201, 36.391541>,  <40.955376, 34.172215, 36.508007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759003, 34.246201, 36.391541>,  <40.431713, 34.369507, 36.197433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759003, 34.246201, 36.391541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334744, -0.430789, -0.838073,
		0.467401, 0.848169, -0.249289,
		0.818219, -0.308268, 0.485271,
		41.004467, 34.153721, 36.537121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084404, 34.726955, 36.035168>,  <40.431713, 34.369507, 36.197433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084404, 34.726955, 36.035168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104031, 34.333439, 36.104168>,  <41.115807, 34.097328, 36.145569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104031, 34.333439, 36.104168>,  <41.084404, 34.726955, 36.035168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104031, 34.333439, 36.104168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267699, -0.153433, -0.951207,
		0.962252, 0.092846, 0.255832,
		0.049063, -0.983788, 0.172496,
		41.118748, 34.038303, 36.155918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767544, 34.385078, 35.841057>,  <41.084404, 34.726955, 36.035168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767544, 34.385078, 35.841057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467346, 34.124569, 35.796143>,  <41.287228, 33.968266, 35.769196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467346, 34.124569, 35.796143>,  <41.767544, 34.385078, 35.841057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467346, 34.124569, 35.796143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244169, -0.115370, -0.962845,
		0.614119, -0.750024, 0.245604,
		-0.750493, -0.651271, -0.112281,
		41.242199, 33.929188, 35.762459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050217, 33.661625, 35.634670>,  <41.767544, 34.385078, 35.841057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050217, 33.661625, 35.634670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712860, 33.817871, 35.487099>,  <41.510445, 33.911621, 35.398556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712860, 33.817871, 35.487099>,  <42.050217, 33.661625, 35.634670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712860, 33.817871, 35.487099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273942, -0.278065, -0.920671,
		-0.462216, -0.877552, 0.127511,
		-0.843393, 0.390618, -0.368924,
		41.459843, 33.935055, 35.376423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527699, 34.196644, 35.523521>,  <42.050217, 33.661625, 35.634670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527699, 34.196644, 35.523521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736931, 33.861309, 35.584946>,  <42.862473, 33.660110, 35.621799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736931, 33.861309, 35.584946>,  <42.527699, 34.196644, 35.523521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736931, 33.861309, 35.584946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493186, 0.444682, 0.747680,
		-0.695091, -0.315364, 0.646060,
		0.523083, -0.838334, 0.153561,
		42.893856, 33.609810, 35.631016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369751, 34.045616, 36.245857>,  <42.527699, 34.196644, 35.523521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369751, 34.045616, 36.245857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735790, 33.930767, 36.132614>,  <42.955414, 33.861858, 36.064667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735790, 33.930767, 36.132614>,  <42.369751, 34.045616, 36.245857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735790, 33.930767, 36.132614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355468, 0.242995, 0.902549,
		-0.190349, -0.926560, 0.324428,
		0.915101, -0.287123, -0.283109,
		43.010319, 33.844631, 36.047680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617256, 33.597935, 36.762405>,  <42.369751, 34.045616, 36.245857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617256, 33.597935, 36.762405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957123, 33.707115, 36.581928>,  <43.161041, 33.772621, 36.473644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957123, 33.707115, 36.581928>,  <42.617256, 33.597935, 36.762405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957123, 33.707115, 36.581928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419700, 0.167983, 0.891983,
		0.319256, -0.947249, 0.028174,
		0.849663, 0.272947, -0.451190,
		43.212021, 33.788998, 36.446571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109295, 33.119846, 37.011997>,  <42.617256, 33.597935, 36.762405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109295, 33.119846, 37.011997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279915, 33.463726, 36.899590>,  <43.382286, 33.670055, 36.832146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279915, 33.463726, 36.899590>,  <43.109295, 33.119846, 37.011997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279915, 33.463726, 36.899590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498104, 0.036059, 0.866367,
		0.754948, -0.509527, -0.412839,
		0.426551, 0.859699, -0.281020,
		43.407879, 33.721634, 36.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727791, 32.972958, 37.211124>,  <43.109295, 33.119846, 37.011997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727791, 32.972958, 37.211124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751373, 33.368053, 37.153297>,  <43.765522, 33.605110, 37.118603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751373, 33.368053, 37.153297>,  <43.727791, 32.972958, 37.211124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751373, 33.368053, 37.153297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596591, 0.081245, 0.798422,
		0.800377, -0.133319, -0.584485,
		0.058959, 0.987737, -0.144563,
		43.769062, 33.664375, 37.109928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438114, 33.210747, 37.219082>,  <43.727791, 32.972958, 37.211124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438114, 33.210747, 37.219082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230236, 33.540375, 37.309250>,  <44.105507, 33.738152, 37.363350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230236, 33.540375, 37.309250>,  <44.438114, 33.210747, 37.219082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230236, 33.540375, 37.309250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570009, 0.137905, 0.809982,
		0.636397, 0.549441, -0.541399,
		-0.519700, 0.824073, 0.225424,
		44.074326, 33.787598, 37.376877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963120, 33.810181, 37.432121>,  <44.438114, 33.210747, 37.219082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963120, 33.810181, 37.432121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603271, 33.904232, 37.579308>,  <44.387363, 33.960663, 37.667622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603271, 33.904232, 37.579308>,  <44.963120, 33.810181, 37.432121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603271, 33.904232, 37.579308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407222, 0.147500, 0.901340,
		0.157651, 0.960708, -0.228441,
		-0.899620, 0.235124, 0.367968,
		44.333385, 33.974770, 37.689697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137299, 34.274456, 38.058662>,  <44.963120, 33.810181, 37.432121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137299, 34.274456, 38.058662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752083, 34.186558, 38.120968>,  <44.520954, 34.133820, 38.158352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752083, 34.186558, 38.120968>,  <45.137299, 34.274456, 38.058662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752083, 34.186558, 38.120968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157573, 0.009371, 0.987463,
		-0.218446, 0.975513, 0.025600,
		-0.963043, -0.219742, 0.155762,
		44.463169, 34.120636, 38.167698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848747, 34.783356, 38.550087>,  <45.137299, 34.274456, 38.058662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848747, 34.783356, 38.550087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590054, 34.478359, 38.557518>,  <44.434837, 34.295361, 38.561977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590054, 34.478359, 38.557518>,  <44.848747, 34.783356, 38.550087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590054, 34.478359, 38.557518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010805, 0.015200, 0.999826,
		-0.762643, 0.646818, -0.001592,
		-0.646730, -0.762493, 0.018582,
		44.396034, 34.249611, 38.563091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358067, 34.921101, 39.196583>,  <44.848747, 34.783356, 38.550087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358067, 34.921101, 39.196583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332161, 34.528629, 39.123817>,  <44.316616, 34.293148, 39.080158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332161, 34.528629, 39.123817>,  <44.358067, 34.921101, 39.196583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332161, 34.528629, 39.123817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264101, -0.192652, 0.945059,
		-0.962318, 0.013160, 0.271607,
		-0.064763, -0.981179, -0.181917,
		44.312733, 34.234276, 39.069241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913090, 34.701420, 39.819260>,  <44.358067, 34.921101, 39.196583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913090, 34.701420, 39.819260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101990, 34.384312, 39.665123>,  <44.215332, 34.194046, 39.572643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101990, 34.384312, 39.665123>,  <43.913090, 34.701420, 39.819260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101990, 34.384312, 39.665123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261571, -0.291426, 0.920137,
		-0.841758, -0.535331, 0.069739,
		0.472254, -0.792774, -0.385337,
		44.243668, 34.146481, 39.549522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652630, 34.210320, 40.169853>,  <43.913090, 34.701420, 39.819260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652630, 34.210320, 40.169853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979908, 34.028851, 40.028587>,  <44.176277, 33.919968, 39.943829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979908, 34.028851, 40.028587>,  <43.652630, 34.210320, 40.169853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979908, 34.028851, 40.028587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136488, -0.443444, 0.885849,
		-0.558499, -0.773004, -0.300904,
		0.818199, -0.453676, -0.353169,
		44.225368, 33.892746, 39.922638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591404, 33.497158, 40.254112>,  <43.652630, 34.210320, 40.169853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591404, 33.497158, 40.254112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985287, 33.515488, 40.186874>,  <44.221615, 33.526485, 40.146534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985287, 33.515488, 40.186874>,  <43.591404, 33.497158, 40.254112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985287, 33.515488, 40.186874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172587, -0.388595, 0.905101,
		-0.023840, -0.920268, -0.390561,
		0.984706, 0.045828, -0.168090,
		44.280697, 33.529236, 40.136448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904945, 32.855824, 40.308495>,  <43.591404, 33.497158, 40.254112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904945, 32.855824, 40.308495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225266, 33.088608, 40.365120>,  <44.417458, 33.228279, 40.399097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225266, 33.088608, 40.365120>,  <43.904945, 32.855824, 40.308495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225266, 33.088608, 40.365120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211888, -0.496360, 0.841861,
		0.560198, -0.644167, -0.520796,
		0.800801, 0.581959, 0.141568,
		44.465508, 33.263195, 40.407589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437515, 32.419422, 40.570389>,  <43.904945, 32.855824, 40.308495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437515, 32.419422, 40.570389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532902, 32.794136, 40.672817>,  <44.590134, 33.018963, 40.734276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532902, 32.794136, 40.672817>,  <44.437515, 32.419422, 40.570389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532902, 32.794136, 40.672817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244388, -0.313077, 0.917746,
		0.939899, -0.156267, -0.303595,
		0.238462, 0.936784, 0.256071,
		44.604439, 33.075172, 40.749638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117649, 32.380280, 40.944881>,  <44.437515, 32.419422, 40.570389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117649, 32.380280, 40.944881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960491, 32.735821, 41.039181>,  <44.866196, 32.949146, 41.095760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960491, 32.735821, 41.039181>,  <45.117649, 32.380280, 40.944881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960491, 32.735821, 41.039181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391660, -0.070206, 0.917428,
		0.832006, 0.452790, -0.320543,
		-0.392898, 0.888849, 0.235751,
		44.842621, 33.002476, 41.109905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684288, 32.743572, 41.293907>,  <45.117649, 32.380280, 40.944881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684288, 32.743572, 41.293907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355095, 32.928005, 41.426640>,  <45.157581, 33.038666, 41.506279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355095, 32.928005, 41.426640>,  <45.684288, 32.743572, 41.293907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355095, 32.928005, 41.426640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374052, 0.000207, 0.927408,
		0.427542, 0.887358, -0.172639,
		-0.822978, 0.461081, 0.331830,
		45.108200, 33.066330, 41.526188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947964, 33.241455, 41.750053>,  <45.684288, 32.743572, 41.293907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947964, 33.241455, 41.750053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564079, 33.176193, 41.841568>,  <45.333748, 33.137035, 41.896477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564079, 33.176193, 41.841568>,  <45.947964, 33.241455, 41.750053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564079, 33.176193, 41.841568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238740, -0.043989, 0.970087,
		-0.148208, 0.985620, 0.081168,
		-0.959707, -0.163153, 0.228787,
		45.276169, 33.127247, 41.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832951, 33.554440, 42.406017>,  <45.947964, 33.241455, 41.750053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832951, 33.554440, 42.406017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537479, 33.286366, 42.377155>,  <45.360199, 33.125519, 42.359837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537479, 33.286366, 42.377155>,  <45.832951, 33.554440, 42.406017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537479, 33.286366, 42.377155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116473, -0.232340, 0.965636,
		-0.663922, 0.704887, 0.249683,
		-0.738675, -0.670188, -0.072155,
		45.315876, 33.085308, 42.355507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468006, 33.636467, 42.971432>,  <45.832951, 33.554440, 42.406017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468006, 33.636467, 42.971432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363075, 33.269924, 42.850460>,  <45.300117, 33.049999, 42.777878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363075, 33.269924, 42.850460>,  <45.468006, 33.636467, 42.971432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363075, 33.269924, 42.850460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022513, -0.307511, 0.951278,
		-0.964715, 0.256358, 0.060040,
		-0.262331, -0.916361, -0.302432,
		45.284374, 32.995014, 42.759731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045593, 33.451862, 43.486217>,  <45.468006, 33.636467, 42.971432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045593, 33.451862, 43.486217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125988, 33.113907, 43.287918>,  <45.174225, 32.911133, 43.168938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125988, 33.113907, 43.287918>,  <45.045593, 33.451862, 43.486217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125988, 33.113907, 43.287918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218966, -0.454527, 0.863400,
		-0.954808, -0.282086, 0.093646,
		0.200988, -0.844886, -0.495753,
		45.186283, 32.860439, 43.139191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671303, 32.909657, 43.857658>,  <45.045593, 33.451862, 43.486217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671303, 32.909657, 43.857658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950260, 32.739521, 43.626926>,  <45.117634, 32.637440, 43.488487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950260, 32.739521, 43.626926>,  <44.671303, 32.909657, 43.857658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950260, 32.739521, 43.626926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126723, -0.718989, 0.683371,
		-0.705388, -0.549680, -0.447525,
		0.697401, -0.425330, -0.576824,
		45.159477, 32.611919, 43.453876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569305, 32.141788, 43.622837>,  <44.671303, 32.909657, 43.857658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569305, 32.141788, 43.622837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952526, 32.235489, 43.688873>,  <45.182461, 32.291710, 43.728497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952526, 32.235489, 43.688873>,  <44.569305, 32.141788, 43.622837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952526, 32.235489, 43.688873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029742, -0.654234, 0.755707,
		0.285033, -0.719100, -0.633760,
		0.958056, 0.234251, 0.165091,
		45.239944, 32.305763, 43.738400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848911, 31.446873, 43.473537>,  <44.569305, 32.141788, 43.622837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848911, 31.446873, 43.473537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707119, 31.259581, 43.149784>,  <44.622044, 31.147205, 42.955532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707119, 31.259581, 43.149784>,  <44.848911, 31.446873, 43.473537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707119, 31.259581, 43.149784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886964, -0.442420, -0.132514,
		-0.296041, -0.764868, 0.572133,
		-0.354479, -0.468232, -0.809385,
		44.600777, 31.119110, 42.906967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989384, 30.643461, 43.518093>,  <44.848911, 31.446873, 43.473537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989384, 30.643461, 43.518093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979168, 30.797922, 43.149261>,  <44.973038, 30.890598, 42.927963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979168, 30.797922, 43.149261>,  <44.989384, 30.643461, 43.518093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979168, 30.797922, 43.149261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922649, -0.345938, -0.170428,
		-0.384794, -0.855111, -0.347446,
		-0.025540, 0.386151, -0.922082,
		44.971504, 30.913767, 42.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231903, 30.195866, 42.988026>,  <44.989384, 30.643461, 43.518093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231903, 30.195866, 42.988026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323505, 30.563047, 42.858463>,  <45.378468, 30.783358, 42.780727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323505, 30.563047, 42.858463>,  <45.231903, 30.195866, 42.988026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323505, 30.563047, 42.858463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969186, -0.246038, -0.012049,
		-0.090753, -0.311163, -0.946013,
		0.229006, 0.917956, -0.323904,
		45.392208, 30.838434, 42.761292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461685, 30.219906, 42.205162>,  <45.231903, 30.195866, 42.988026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461685, 30.219906, 42.205162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634762, 30.452166, 42.481026>,  <45.738609, 30.591522, 42.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634762, 30.452166, 42.481026>,  <45.461685, 30.219906, 42.205162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634762, 30.452166, 42.481026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846647, -0.524569, -0.089531,
		0.309786, 0.622635, -0.718581,
		0.432690, 0.580649, 0.689656,
		45.764568, 30.626360, 42.687923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073746, 30.512487, 41.905010>,  <45.461685, 30.219906, 42.205162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073746, 30.512487, 41.905010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065166, 30.412523, 42.292225>,  <46.060020, 30.352545, 42.524551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065166, 30.412523, 42.292225>,  <46.073746, 30.512487, 41.905010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065166, 30.412523, 42.292225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670209, -0.722071, -0.171562,
		0.741862, 0.645105, 0.182977,
		-0.021446, -0.249908, 0.968032,
		46.058731, 30.337551, 42.582634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701889, 30.519833, 42.143810>,  <46.073746, 30.512487, 41.905010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701889, 30.519833, 42.143810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479912, 30.247641, 42.335217>,  <46.346725, 30.084326, 42.450062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479912, 30.247641, 42.335217>,  <46.701889, 30.519833, 42.143810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479912, 30.247641, 42.335217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721187, -0.680245, -0.130979,
		0.414640, 0.272416, 0.868253,
		-0.554944, -0.680482, 0.478520,
		46.313427, 30.043495, 42.478771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134956, 30.131205, 42.700600>,  <46.701889, 30.519833, 42.143810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134956, 30.131205, 42.700600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857838, 29.878710, 42.561131>,  <46.691566, 29.727213, 42.477448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857838, 29.878710, 42.561131>,  <47.134956, 30.131205, 42.700600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857838, 29.878710, 42.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673258, -0.739407, 0.000886,
		-0.258372, -0.234136, 0.937243,
		-0.692796, -0.631235, -0.348676,
		46.649998, 29.689339, 42.456528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.824764, 30.378677, 42.325844>,  <47.134956, 30.131205, 42.700600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.824764, 30.378677, 42.325844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637524, 30.622139, 42.582100>,  <47.525181, 30.768217, 42.735855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637524, 30.622139, 42.582100>,  <47.824764, 30.378677, 42.325844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637524, 30.622139, 42.582100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307046, -0.791831, 0.527946,
		0.828616, 0.050425, 0.557542,
		-0.468100, 0.608656, 0.640641,
		47.497093, 30.804735, 42.774292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.815525, 29.671249, 42.228519>,  <47.824764, 30.378677, 42.325844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.815525, 29.671249, 42.228519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601089, 29.375778, 42.065071>,  <47.472427, 29.198496, 41.967003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601089, 29.375778, 42.065071>,  <47.815525, 29.671249, 42.228519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601089, 29.375778, 42.065071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228370, 0.339099, -0.912611,
		0.812687, -0.582554, -0.013094,
		-0.536085, -0.738677, -0.408619,
		47.440266, 29.154175, 41.942486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.136604, 29.303141, 41.620380>,  <47.815525, 29.671249, 42.228519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.136604, 29.303141, 41.620380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742001, 29.274418, 41.561531>,  <47.505238, 29.257185, 41.526222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742001, 29.274418, 41.561531>,  <48.136604, 29.303141, 41.620380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742001, 29.274418, 41.561531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101936, 0.433806, -0.895221,
		0.128106, -0.898140, -0.420634,
		-0.986508, -0.071805, -0.147126,
		47.446049, 29.252876, 41.517395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.067291, 29.223015, 40.930317>,  <48.136604, 29.303141, 41.620380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.067291, 29.223015, 40.930317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695190, 29.337805, 41.021782>,  <47.471931, 29.406679, 41.076660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695190, 29.337805, 41.021782>,  <48.067291, 29.223015, 40.930317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695190, 29.337805, 41.021782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126871, 0.333174, -0.934291,
		-0.344301, -0.898131, -0.273526,
		-0.930248, 0.286975, 0.228659,
		47.416115, 29.423897, 41.090378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.531010, 28.976242, 40.485245>,  <48.067291, 29.223015, 40.930317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.531010, 28.976242, 40.485245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373581, 29.309034, 40.641659>,  <47.279121, 29.508709, 40.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373581, 29.309034, 40.641659>,  <47.531010, 28.976242, 40.485245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.373581, 29.309034, 40.641659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240926, 0.317145, -0.917264,
		-0.887160, -0.455223, 0.075625,
		-0.393575, 0.831980, 0.391033,
		47.255508, 29.558628, 40.758968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190834, 29.200836, 39.936619>,  <47.531010, 28.976242, 40.485245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190834, 29.200836, 39.936619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119816, 29.514540, 40.174416>,  <47.077206, 29.702761, 40.317093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119816, 29.514540, 40.174416>,  <47.190834, 29.200836, 39.936619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119816, 29.514540, 40.174416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196280, 0.563731, -0.802297,
		-0.964341, -0.259129, 0.053848,
		-0.177543, 0.784257, 0.594491,
		47.066551, 29.749817, 40.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.453213, 29.506115, 39.806774>,  <47.190834, 29.200836, 39.936619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.453213, 29.506115, 39.806774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.680370, 29.803364, 39.948349>,  <46.816666, 29.981712, 40.033295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.680370, 29.803364, 39.948349>,  <46.453213, 29.506115, 39.806774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.680370, 29.803364, 39.948349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203342, 0.543335, -0.814518,
		-0.797591, 0.390587, 0.459663,
		0.567891, 0.743121, 0.353936,
		46.850739, 30.026300, 40.054531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025761, 30.003819, 39.833817>,  <46.453213, 29.506115, 39.806774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025761, 30.003819, 39.833817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397045, 30.152554, 39.838875>,  <46.619816, 30.241795, 39.841911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397045, 30.152554, 39.838875>,  <46.025761, 30.003819, 39.833817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397045, 30.152554, 39.838875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209915, 0.551469, -0.807352,
		-0.307180, 0.746738, 0.589934,
		0.928211, 0.371839, 0.012648,
		46.675507, 30.264105, 39.842670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903759, 30.690231, 39.592648>,  <46.025761, 30.003819, 39.833817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903759, 30.690231, 39.592648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299477, 30.634260, 39.576073>,  <46.536907, 30.600677, 39.566128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299477, 30.634260, 39.576073>,  <45.903759, 30.690231, 39.592648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299477, 30.634260, 39.576073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064556, 0.674263, -0.735664,
		0.130880, 0.725113, 0.676078,
		0.989294, -0.139928, -0.041437,
		46.596264, 30.592281, 39.563641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286514, 31.312119, 39.773930>,  <45.903759, 30.690231, 39.592648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286514, 31.312119, 39.773930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497833, 31.082348, 39.523830>,  <46.624622, 30.944485, 39.373772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497833, 31.082348, 39.523830>,  <46.286514, 31.312119, 39.773930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497833, 31.082348, 39.523830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204353, 0.628732, -0.750290,
		0.824103, 0.524146, 0.214770,
		0.528294, -0.574427, -0.625251,
		46.656322, 30.910019, 39.336254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.702412, 31.806746, 39.459557>,  <46.286514, 31.312119, 39.773930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.702412, 31.806746, 39.459557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730286, 31.494656, 39.210915>,  <46.747009, 31.307402, 39.061729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730286, 31.494656, 39.210915>,  <46.702412, 31.806746, 39.459557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730286, 31.494656, 39.210915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162382, 0.605941, -0.778760,
		0.984264, 0.155203, -0.084472,
		0.069681, -0.780223, -0.621609,
		46.751190, 31.260590, 39.024433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211090, 32.073631, 38.947304>,  <46.702412, 31.806746, 39.459557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211090, 32.073631, 38.947304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974529, 31.788752, 38.796032>,  <46.832592, 31.617825, 38.705269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974529, 31.788752, 38.796032>,  <47.211090, 32.073631, 38.947304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974529, 31.788752, 38.796032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161856, 0.564279, -0.809563,
		0.789966, -0.417568, -0.448990,
		-0.591403, -0.712198, -0.378176,
		46.797108, 31.575092, 38.682579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.499962, 31.883986, 38.303410>,  <47.211090, 32.073631, 38.947304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.499962, 31.883986, 38.303410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109737, 31.796495, 38.294949>,  <46.875603, 31.744001, 38.289871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109737, 31.796495, 38.294949>,  <47.499962, 31.883986, 38.303410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.109737, 31.796495, 38.294949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090927, 0.489413, -0.867299,
		0.200051, -0.844176, -0.497338,
		-0.975557, -0.218726, -0.021150,
		46.817070, 31.730877, 38.288605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.392574, 31.948938, 37.685089>,  <47.499962, 31.883986, 38.303410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.392574, 31.948938, 37.685089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.023376, 31.937038, 37.838554>,  <46.801857, 31.929897, 37.930634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.023376, 31.937038, 37.838554>,  <47.392574, 31.948938, 37.685089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.023376, 31.937038, 37.838554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355548, 0.447307, -0.820672,
		-0.147199, -0.893886, -0.423439,
		-0.922994, -0.029751, 0.383662,
		46.746479, 31.928112, 37.953651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.027893, 31.589993, 37.203262>,  <47.392574, 31.948938, 37.685089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.027893, 31.589993, 37.203262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780178, 31.830418, 37.405331>,  <46.631550, 31.974672, 37.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780178, 31.830418, 37.405331>,  <47.027893, 31.589993, 37.203262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780178, 31.830418, 37.405331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290480, 0.422354, -0.858626,
		-0.729452, -0.678482, -0.086963,
		-0.619292, 0.601065, 0.505172,
		46.594391, 32.010738, 37.556881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542515, 31.658007, 36.788853>,  <47.027893, 31.589993, 37.203262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542515, 31.658007, 36.788853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453915, 31.962566, 37.032562>,  <46.400753, 32.145302, 37.178787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453915, 31.962566, 37.032562>,  <46.542515, 31.658007, 36.788853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453915, 31.962566, 37.032562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317510, 0.534434, -0.783305,
		-0.922023, -0.366951, 0.123375,
		-0.221499, 0.761398, 0.609271,
		46.387466, 32.190987, 37.215343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895290, 31.880060, 36.532551>,  <46.542515, 31.658007, 36.788853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895290, 31.880060, 36.532551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011475, 32.200592, 36.741741>,  <46.081184, 32.392910, 36.867256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011475, 32.200592, 36.741741>,  <45.895290, 31.880060, 36.532551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011475, 32.200592, 36.741741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351596, 0.597681, -0.720526,
		-0.889951, 0.025410, 0.455348,
		0.290461, 0.801331, 0.522973,
		46.098614, 32.440990, 36.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250538, 32.454193, 36.602592>,  <45.895290, 31.880060, 36.532551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250538, 32.454193, 36.602592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602451, 32.633163, 36.666832>,  <45.813599, 32.740547, 36.705376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602451, 32.633163, 36.666832>,  <45.250538, 32.454193, 36.602592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602451, 32.633163, 36.666832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228200, 0.693864, -0.682992,
		-0.417026, 0.564234, 0.712551,
		0.879781, 0.447429, 0.160601,
		45.866386, 32.767391, 36.715012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068043, 33.114185, 36.518612>,  <45.250538, 32.454193, 36.602592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068043, 33.114185, 36.518612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465969, 33.107903, 36.478432>,  <45.704727, 33.104134, 36.454323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465969, 33.107903, 36.478432>,  <45.068043, 33.114185, 36.518612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465969, 33.107903, 36.478432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055845, 0.741169, -0.668991,
		0.084957, 0.671134, 0.736452,
		0.994819, -0.015708, -0.100447,
		45.764416, 33.103191, 36.448299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306908, 33.642921, 36.801186>,  <45.068043, 33.114185, 36.518612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306908, 33.642921, 36.801186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586571, 33.534866, 36.536396>,  <45.754368, 33.470032, 36.377522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586571, 33.534866, 36.536396>,  <45.306908, 33.642921, 36.801186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586571, 33.534866, 36.536396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220908, 0.798953, -0.559352,
		0.679988, 0.537308, 0.498915,
		0.699154, -0.270138, -0.661974,
		45.796318, 33.453823, 36.337803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751965, 34.312138, 36.645947>,  <45.306908, 33.642921, 36.801186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751965, 34.312138, 36.645947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787395, 34.060352, 36.337162>,  <45.808655, 33.909279, 36.151890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787395, 34.060352, 36.337162>,  <45.751965, 34.312138, 36.645947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787395, 34.060352, 36.337162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145750, 0.758477, -0.635193,
		0.985348, 0.168778, -0.024560,
		0.088578, -0.629466, -0.771963,
		45.813969, 33.871513, 36.105572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222313, 34.582596, 36.122643>,  <45.751965, 34.312138, 36.645947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222313, 34.582596, 36.122643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955093, 34.338078, 35.952923>,  <45.794762, 34.191364, 35.851093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955093, 34.338078, 35.952923>,  <46.222313, 34.582596, 36.122643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955093, 34.338078, 35.952923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248174, 0.720586, -0.647430,
		0.701519, -0.327211, -0.633090,
		-0.668042, -0.611301, -0.424300,
		45.754681, 34.154686, 35.825634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271248, 34.362240, 35.319408>,  <46.222313, 34.582596, 36.122643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271248, 34.362240, 35.319408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898689, 34.383133, 35.463509>,  <45.675156, 34.395668, 35.549969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898689, 34.383133, 35.463509>,  <46.271248, 34.362240, 35.319408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.898689, 34.383133, 35.463509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207213, 0.737589, -0.642670,
		-0.299280, -0.673227, -0.676163,
		-0.931394, 0.052228, 0.360247,
		45.619270, 34.398800, 35.571583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497314, 34.744156, 34.702145>,  <46.271248, 34.362240, 35.319408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497314, 34.744156, 34.702145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.663837, 35.106609, 34.732101>,  <46.763752, 35.324081, 34.750076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.663837, 35.106609, 34.732101>,  <46.497314, 34.744156, 34.702145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663837, 35.106609, 34.732101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908765, -0.417299, -0.002609,
		0.028887, 0.069144, -0.997188,
		0.416307, 0.906135, 0.074890,
		46.788731, 35.378448, 34.754570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.103607, 34.640053, 34.404030>,  <46.497314, 34.744156, 34.702145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.103607, 34.640053, 34.404030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.108471, 34.931633, 34.677811>,  <47.111389, 35.106583, 34.842079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.108471, 34.931633, 34.677811>,  <47.103607, 34.640053, 34.404030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.108471, 34.931633, 34.677811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956219, -0.208643, 0.205215,
		0.292399, 0.651992, -0.699578,
		0.012163, 0.728954, 0.684454,
		47.112122, 35.150318, 34.883148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770641, 34.943321, 34.438271>,  <47.103607, 34.640053, 34.404030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770641, 34.943321, 34.438271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610550, 35.019295, 34.796879>,  <47.514496, 35.064880, 35.012043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610550, 35.019295, 34.796879>,  <47.770641, 34.943321, 34.438271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610550, 35.019295, 34.796879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751477, -0.491892, 0.439686,
		0.524502, 0.849687, 0.054136,
		-0.400225, 0.189934, 0.896518,
		47.490482, 35.076275, 35.065834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.291866, 35.184120, 34.867172>,  <47.770641, 34.943321, 34.438271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.291866, 35.184120, 34.867172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.017334, 35.115181, 35.149803>,  <47.852615, 35.073818, 35.319382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.017334, 35.115181, 35.149803>,  <48.291866, 35.184120, 34.867172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.017334, 35.115181, 35.149803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717551, -0.318932, 0.619196,
		0.118630, 0.931975, 0.342563,
		-0.686329, -0.172352, 0.706574,
		47.811436, 35.063477, 35.361774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.516953, 42.887375, 44.340393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132561, 42.784794, 44.298935>,  <35.901924, 42.723244, 44.274059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132561, 42.784794, 44.298935>,  <36.516953, 42.887375, 44.340393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132561, 42.784794, 44.298935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246113, -0.621740, -0.743551,
		0.126247, -0.740048, 0.660599,
		-0.960984, -0.256453, -0.103643,
		35.844265, 42.707859, 44.267841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496910, 42.118160, 44.180183>,  <36.516953, 42.887375, 44.340393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496910, 42.118160, 44.180183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128242, 42.221619, 44.064510>,  <35.907040, 42.283695, 43.995106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128242, 42.221619, 44.064510>,  <36.496910, 42.118160, 44.180183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128242, 42.221619, 44.064510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010766, -0.762125, -0.647341,
		-0.387823, -0.593522, 0.705213,
		-0.921671, 0.258646, -0.289179,
		35.851742, 42.299213, 43.977757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098701, 41.495972, 44.106083>,  <36.496910, 42.118160, 44.180183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098701, 41.495972, 44.106083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911461, 41.765881, 43.877853>,  <35.799114, 41.927826, 43.740913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911461, 41.765881, 43.877853>,  <36.098701, 41.495972, 44.106083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911461, 41.765881, 43.877853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118734, -0.591805, -0.797289,
		-0.875660, -0.440961, 0.196909,
		-0.468105, 0.674774, -0.570577,
		35.771030, 41.968311, 43.706680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639606, 41.205730, 43.731602>,  <36.098701, 41.495972, 44.106083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639606, 41.205730, 43.731602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.662853, 41.531502, 43.500664>,  <35.676804, 41.726967, 43.362103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.662853, 41.531502, 43.500664>,  <35.639606, 41.205730, 43.731602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662853, 41.531502, 43.500664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026371, -0.576866, -0.816413,
		-0.997961, 0.062675, -0.012050,
		0.058120, 0.814431, -0.577343,
		35.680290, 41.775829, 43.327461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226959, 41.090382, 43.272167>,  <35.639606, 41.205730, 43.731602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226959, 41.090382, 43.272167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436203, 41.370327, 43.077621>,  <35.561749, 41.538292, 42.960896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436203, 41.370327, 43.077621>,  <35.226959, 41.090382, 43.272167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436203, 41.370327, 43.077621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030657, -0.554850, -0.831386,
		-0.851713, 0.449817, -0.268792,
		0.523111, 0.699862, -0.486363,
		35.593136, 41.580284, 42.931713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803085, 41.310116, 42.672096>,  <35.226959, 41.090382, 43.272167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803085, 41.310116, 42.672096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184135, 41.402462, 42.592896>,  <35.412766, 41.457870, 42.545376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184135, 41.402462, 42.592896>,  <34.803085, 41.310116, 42.672096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184135, 41.402462, 42.592896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082284, -0.431096, -0.898546,
		-0.292803, 0.872270, -0.391677,
		0.952626, 0.230868, -0.198000,
		35.469925, 41.471722, 42.533497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804237, 41.423027, 41.998093>,  <34.803085, 41.310116, 42.672096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804237, 41.423027, 41.998093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199699, 41.385792, 42.045242>,  <35.436977, 41.363449, 42.073532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.199699, 41.385792, 42.045242>,  <34.804237, 41.423027, 41.998093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199699, 41.385792, 42.045242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042351, -0.580161, -0.813400,
		0.144108, 0.809164, -0.569637,
		0.988655, -0.093093, 0.117875,
		35.496296, 41.357864, 42.080605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198154, 41.649254, 41.335438>,  <34.804237, 41.423027, 41.998093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198154, 41.649254, 41.335438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432362, 41.386269, 41.525139>,  <35.572887, 41.228477, 41.638958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432362, 41.386269, 41.525139>,  <35.198154, 41.649254, 41.335438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432362, 41.386269, 41.525139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114042, -0.512399, -0.851142,
		0.802598, 0.552443, -0.225040,
		0.585517, -0.657461, 0.474252,
		35.608017, 41.189030, 41.667416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781967, 41.440567, 40.883987>,  <35.198154, 41.649254, 41.335438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781967, 41.440567, 40.883987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776409, 41.164043, 41.172958>,  <35.773075, 40.998131, 41.346340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776409, 41.164043, 41.172958>,  <35.781967, 41.440567, 40.883987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776409, 41.164043, 41.172958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340821, -0.682502, -0.646554,
		0.940026, 0.237236, 0.245094,
		-0.013891, -0.691310, 0.722425,
		35.772243, 40.956650, 41.389687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404408, 41.124474, 40.841305>,  <35.781967, 41.440567, 40.883987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404408, 41.124474, 40.841305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165897, 40.880661, 41.050274>,  <36.022789, 40.734375, 41.175655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165897, 40.880661, 41.050274>,  <36.404408, 41.124474, 40.841305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165897, 40.880661, 41.050274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350831, -0.783194, -0.513347,
		0.722060, -0.122813, 0.680842,
		-0.596277, -0.609528, 0.522426,
		35.987015, 40.697803, 41.207001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844948, 40.571579, 41.036747>,  <36.404408, 41.124474, 40.841305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844948, 40.571579, 41.036747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461586, 40.458176, 41.049885>,  <36.231567, 40.390133, 41.057770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461586, 40.458176, 41.049885>,  <36.844948, 40.571579, 41.036747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461586, 40.458176, 41.049885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237696, -0.856590, -0.457990,
		0.157982, -0.431132, 0.888350,
		-0.958406, -0.283512, 0.032847,
		36.174065, 40.373123, 41.059738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936539, 39.852909, 41.231339>,  <36.844948, 40.571579, 41.036747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936539, 39.852909, 41.231339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583450, 39.909355, 41.052052>,  <36.371597, 39.943222, 40.944481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583450, 39.909355, 41.052052>,  <36.936539, 39.852909, 41.231339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583450, 39.909355, 41.052052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238500, -0.687307, -0.686095,
		-0.404881, -0.712527, 0.573041,
		-0.882717, 0.141117, -0.448215,
		36.318634, 39.951691, 40.917587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607780, 39.177414, 41.145084>,  <36.936539, 39.852909, 41.231339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607780, 39.177414, 41.145084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440285, 39.428802, 40.882885>,  <36.339787, 39.579636, 40.725567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440285, 39.428802, 40.882885>,  <36.607780, 39.177414, 41.145084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440285, 39.428802, 40.882885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344647, -0.557839, -0.755006,
		-0.840166, -0.542064, 0.016985,
		-0.418736, 0.628476, -0.655498,
		36.314663, 39.617344, 40.686237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269211, 38.689110, 40.730103>,  <36.607780, 39.177414, 41.145084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269211, 38.689110, 40.730103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269924, 39.025143, 40.513119>,  <36.270351, 39.226761, 40.382927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269924, 39.025143, 40.513119>,  <36.269211, 38.689110, 40.730103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269924, 39.025143, 40.513119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229726, -0.528296, -0.817392,
		-0.973254, -0.123163, -0.193928,
		0.001779, 0.840080, -0.542459,
		36.270458, 39.277168, 40.350380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818989, 38.628387, 40.184422>,  <36.269211, 38.689110, 40.730103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818989, 38.628387, 40.184422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068356, 38.918911, 40.068604>,  <36.217976, 39.093224, 39.999115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068356, 38.918911, 40.068604>,  <35.818989, 38.628387, 40.184422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068356, 38.918911, 40.068604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071765, -0.421897, -0.903799,
		-0.778591, 0.542663, -0.315140,
		0.623415, 0.726306, -0.289541,
		36.255379, 39.136803, 39.981743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564995, 38.877457, 39.527931>,  <35.818989, 38.628387, 40.184422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564995, 38.877457, 39.527931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947815, 38.989540, 39.557713>,  <36.177505, 39.056789, 39.575581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947815, 38.989540, 39.557713>,  <35.564995, 38.877457, 39.527931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947815, 38.989540, 39.557713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162689, -0.306458, -0.937878,
		-0.239981, 0.909708, -0.338881,
		0.957048, 0.280206, 0.074456,
		36.234928, 39.073601, 39.580048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778088, 39.193615, 38.866917>,  <35.564995, 38.877457, 39.527931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778088, 39.193615, 38.866917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114174, 39.064796, 39.041416>,  <36.315826, 38.987503, 39.146114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114174, 39.064796, 39.041416>,  <35.778088, 39.193615, 38.866917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114174, 39.064796, 39.041416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218064, -0.535921, -0.815621,
		0.496466, 0.780431, -0.380064,
		0.840220, -0.322050, 0.436250,
		36.366241, 38.968182, 39.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262051, 39.177303, 38.325668>,  <35.778088, 39.193615, 38.866917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262051, 39.177303, 38.325668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431446, 38.948536, 38.606686>,  <36.533081, 38.811275, 38.775295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431446, 38.948536, 38.606686>,  <36.262051, 39.177303, 38.325668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431446, 38.948536, 38.606686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326651, -0.626946, -0.707275,
		0.844961, 0.529008, -0.078685,
		0.423486, -0.571918, 0.702546,
		36.558491, 38.776962, 38.817448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825031, 38.879314, 38.001743>,  <36.262051, 39.177303, 38.325668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825031, 38.879314, 38.001743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781006, 38.654408, 38.329582>,  <36.754589, 38.519463, 38.526287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781006, 38.654408, 38.329582>,  <36.825031, 38.879314, 38.001743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781006, 38.654408, 38.329582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309403, -0.803021, -0.509340,
		0.944540, 0.197525, 0.262352,
		-0.110067, -0.562265, 0.819600,
		36.747986, 38.485729, 38.575462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477318, 38.536022, 38.014515>,  <36.825031, 38.879314, 38.001743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477318, 38.536022, 38.014515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220249, 38.307804, 38.219048>,  <37.066010, 38.170876, 38.341766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220249, 38.307804, 38.219048>,  <37.477318, 38.536022, 38.014515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220249, 38.307804, 38.219048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392933, -0.818402, -0.419311,
		0.657708, -0.068560, 0.750146,
		-0.642669, -0.570542, 0.511331,
		37.027447, 38.136642, 38.372448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841454, 37.890308, 38.082367>,  <37.477318, 38.536022, 38.014515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841454, 37.890308, 38.082367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471115, 37.797714, 38.201847>,  <37.248913, 37.742157, 38.273537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471115, 37.797714, 38.201847>,  <37.841454, 37.890308, 38.082367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471115, 37.797714, 38.201847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038094, -0.843568, -0.535669,
		0.375974, -0.484569, 0.789833,
		-0.925847, -0.231486, 0.298701,
		37.193359, 37.728268, 38.291458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900173, 37.264027, 38.407368>,  <37.841454, 37.890308, 38.082367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900173, 37.264027, 38.407368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525200, 37.290291, 38.270603>,  <37.300217, 37.306049, 38.188545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525200, 37.290291, 38.270603>,  <37.900173, 37.264027, 38.407368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525200, 37.290291, 38.270603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198573, -0.705815, -0.679995,
		-0.285972, -0.705346, 0.648619,
		-0.937437, 0.065661, -0.341906,
		37.243969, 37.309990, 38.168030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569405, 37.226791, 38.342049>,  <37.900173, 37.264027, 38.407368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569405, 37.226791, 38.342049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944309, 37.204967, 38.204319>,  <39.169254, 37.191872, 38.121681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944309, 37.204967, 38.204319>,  <38.569405, 37.226791, 38.342049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944309, 37.204967, 38.204319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240253, 0.816773, 0.524558,
		0.252614, -0.574374, 0.778640,
		0.937264, -0.054560, -0.344324,
		39.225487, 37.188599, 38.101021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980232, 37.044804, 38.875763>,  <38.569405, 37.226791, 38.342049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980232, 37.044804, 38.875763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172798, 37.256565, 38.596344>,  <39.288338, 37.383621, 38.428692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172798, 37.256565, 38.596344>,  <38.980232, 37.044804, 38.875763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172798, 37.256565, 38.596344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249199, 0.681422, 0.688160,
		0.840321, -0.505368, 0.196120,
		0.481415, 0.529403, -0.698550,
		39.317223, 37.415386, 38.386780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530651, 37.193314, 39.213791>,  <38.980232, 37.044804, 38.875763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530651, 37.193314, 39.213791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529915, 37.476013, 38.930805>,  <39.529472, 37.645634, 38.761013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529915, 37.476013, 38.930805>,  <39.530651, 37.193314, 39.213791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529915, 37.476013, 38.930805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348999, 0.663434, 0.661857,
		0.937121, -0.245689, -0.247872,
		-0.001836, 0.706747, -0.707464,
		39.529366, 37.688038, 38.718567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131596, 37.694485, 39.481838>,  <39.530651, 37.193314, 39.213791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131596, 37.694485, 39.481838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900562, 37.882095, 39.214584>,  <39.761940, 37.994663, 39.054230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900562, 37.882095, 39.214584>,  <40.131596, 37.694485, 39.481838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900562, 37.882095, 39.214584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117223, 0.857636, 0.500719,
		0.807870, 0.210887, -0.550339,
		-0.577585, 0.469028, -0.668137,
		39.727287, 38.022804, 39.014145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421902, 38.274632, 39.399357>,  <40.131596, 37.694485, 39.481838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421902, 38.274632, 39.399357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050335, 38.359455, 39.277939>,  <39.827396, 38.410351, 39.205086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050335, 38.359455, 39.277939>,  <40.421902, 38.274632, 39.399357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050335, 38.359455, 39.277939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036539, 0.868260, 0.494761,
		0.368480, 0.448501, -0.814291,
		-0.928917, 0.212063, -0.303549,
		39.771660, 38.423073, 39.186874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425442, 39.047306, 39.124390>,  <40.421902, 38.274632, 39.399357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425442, 39.047306, 39.124390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048969, 38.952408, 39.220627>,  <39.823086, 38.895470, 39.278370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048969, 38.952408, 39.220627>,  <40.425442, 39.047306, 39.124390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048969, 38.952408, 39.220627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069684, 0.833024, 0.548831,
		-0.330627, 0.499786, -0.800562,
		-0.941185, -0.237245, 0.240593,
		39.766613, 38.881233, 39.292805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072205, 39.687664, 38.959949>,  <40.425442, 39.047306, 39.124390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072205, 39.687664, 38.959949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792725, 39.489822, 39.166710>,  <39.625038, 39.371117, 39.290764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792725, 39.489822, 39.166710>,  <40.072205, 39.687664, 38.959949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792725, 39.489822, 39.166710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340337, 0.865320, 0.367957,
		-0.629276, 0.081172, -0.772932,
		-0.698701, -0.494603, 0.516899,
		39.583115, 39.341442, 39.321781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377571, 40.011047, 38.871986>,  <40.072205, 39.687664, 38.959949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377571, 40.011047, 38.871986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368347, 39.814278, 39.220119>,  <39.362812, 39.696217, 39.429001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368347, 39.814278, 39.220119>,  <39.377571, 40.011047, 38.871986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368347, 39.814278, 39.220119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511346, 0.753875, 0.412549,
		-0.859065, -0.435527, -0.268929,
		-0.023062, -0.491922, 0.870333,
		39.361427, 39.666702, 39.481220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799149, 40.278149, 39.187954>,  <39.377571, 40.011047, 38.871986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799149, 40.278149, 39.187954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999401, 40.090710, 39.479099>,  <39.119553, 39.978245, 39.653786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999401, 40.090710, 39.479099>,  <38.799149, 40.278149, 39.187954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999401, 40.090710, 39.479099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381004, 0.635721, 0.671338,
		-0.777305, -0.613411, 0.139725,
		0.500632, -0.468599, 0.727862,
		39.149590, 39.950130, 39.697456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239262, 40.063335, 39.687134>,  <38.799149, 40.278149, 39.187954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239262, 40.063335, 39.687134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599514, 40.075638, 39.860531>,  <38.815666, 40.083019, 39.964569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599514, 40.075638, 39.860531>,  <38.239262, 40.063335, 39.687134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599514, 40.075638, 39.860531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354094, 0.630240, 0.690952,
		-0.251955, -0.775791, 0.578504,
		0.900631, 0.030756, 0.433495,
		38.869705, 40.084866, 39.990578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049984, 40.012600, 40.422295>,  <38.239262, 40.063335, 39.687134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049984, 40.012600, 40.422295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415894, 40.171944, 40.395458>,  <38.635437, 40.267551, 40.379356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415894, 40.171944, 40.395458>,  <38.049984, 40.012600, 40.422295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415894, 40.171944, 40.395458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242442, 0.674218, 0.697605,
		0.323131, -0.621884, 0.713335,
		0.914772, 0.398360, -0.067089,
		38.690327, 40.291451, 40.375332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337597, 40.022396, 41.110374>,  <38.049984, 40.012600, 40.422295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337597, 40.022396, 41.110374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540104, 40.297695, 40.902523>,  <38.661610, 40.462875, 40.777813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540104, 40.297695, 40.902523>,  <38.337597, 40.022396, 41.110374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540104, 40.297695, 40.902523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106274, 0.647752, 0.754403,
		0.855804, -0.326706, 0.401077,
		0.506266, 0.688245, -0.519628,
		38.691982, 40.504169, 40.746635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002785, 40.248276, 41.413918>,  <38.337597, 40.022396, 41.110374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002785, 40.248276, 41.413918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845512, 40.553818, 41.209202>,  <38.751148, 40.737144, 41.086372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845512, 40.553818, 41.209202>,  <39.002785, 40.248276, 41.413918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845512, 40.553818, 41.209202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048860, 0.573195, 0.817961,
		0.918162, 0.296600, -0.262690,
		-0.393180, 0.763857, -0.511794,
		38.727558, 40.782974, 41.055664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172630, 40.702267, 41.845131>,  <39.002785, 40.248276, 41.413918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172630, 40.702267, 41.845131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987381, 40.940689, 41.582760>,  <38.876232, 41.083744, 41.425339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987381, 40.940689, 41.582760>,  <39.172630, 40.702267, 41.845131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987381, 40.940689, 41.582760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111870, 0.694840, 0.710409,
		0.879207, 0.402383, -0.255114,
		-0.463120, 0.596057, -0.655923,
		38.848446, 41.119507, 41.385983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539356, 41.388023, 41.903191>,  <39.172630, 40.702267, 41.845131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539356, 41.388023, 41.903191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168678, 41.445686, 41.764370>,  <38.946270, 41.480286, 41.681076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168678, 41.445686, 41.764370>,  <39.539356, 41.388023, 41.903191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168678, 41.445686, 41.764370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183261, 0.632903, 0.752230,
		0.328091, 0.760692, -0.560093,
		-0.926700, 0.144156, -0.347055,
		38.890667, 41.488934, 41.660255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412041, 42.083858, 41.981812>,  <39.539356, 41.388023, 41.903191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412041, 42.083858, 41.981812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044312, 41.935455, 41.929359>,  <38.823673, 41.846413, 41.897888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044312, 41.935455, 41.929359>,  <39.412041, 42.083858, 41.981812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044312, 41.935455, 41.929359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337938, 0.573657, 0.746134,
		-0.201600, 0.730252, -0.652755,
		-0.919323, -0.371011, -0.131131,
		38.768513, 41.824150, 41.890018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002556, 42.670681, 41.983952>,  <39.412041, 42.083858, 41.981812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002556, 42.670681, 41.983952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772358, 42.362740, 42.094315>,  <38.634239, 42.177975, 42.160530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772358, 42.362740, 42.094315>,  <39.002556, 42.670681, 41.983952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772358, 42.362740, 42.094315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286639, 0.505857, 0.813601,
		-0.765924, 0.389141, -0.511791,
		-0.575498, -0.769856, 0.275906,
		38.599709, 42.131783, 42.177086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445419, 42.981590, 42.248745>,  <39.002556, 42.670681, 41.983952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445419, 42.981590, 42.248745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428219, 42.614635, 42.407017>,  <38.417896, 42.394463, 42.501980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428219, 42.614635, 42.407017>,  <38.445419, 42.981590, 42.248745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428219, 42.614635, 42.407017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253808, 0.393080, 0.883781,
		-0.966298, -0.062420, -0.249743,
		-0.043003, -0.917383, 0.395675,
		38.415318, 42.339420, 42.525719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.553143, 42.842155, 42.687180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819492, 42.587574, 42.842892>,  <37.979301, 42.434826, 42.936317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819492, 42.587574, 42.842892>,  <37.553143, 42.842155, 42.687180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819492, 42.587574, 42.842892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308763, 0.239909, 0.920385,
		-0.679178, -0.733053, -0.036766,
		0.665870, -0.636457, 0.389280,
		38.019253, 42.396637, 42.959675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279915, 42.702240, 43.268597>,  <37.553143, 42.842155, 42.687180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279915, 42.702240, 43.268597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643528, 42.543137, 43.318310>,  <37.861698, 42.447674, 43.348137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643528, 42.543137, 43.318310>,  <37.279915, 42.702240, 43.268597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643528, 42.543137, 43.318310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155813, -0.047818, 0.986628,
		-0.386495, -0.916244, -0.105444,
		0.909035, -0.397756, 0.124282,
		37.916237, 42.423809, 43.355595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247234, 42.132565, 43.827675>,  <37.279915, 42.702240, 43.268597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247234, 42.132565, 43.827675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617146, 42.280628, 43.792427>,  <37.839092, 42.369469, 43.771278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617146, 42.280628, 43.792427>,  <37.247234, 42.132565, 43.827675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617146, 42.280628, 43.792427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010879, 0.205763, 0.978541,
		0.380350, -0.905892, 0.186259,
		0.924779, 0.370162, -0.088117,
		37.894581, 42.391678, 43.765991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653450, 41.763966, 44.346809>,  <37.247234, 42.132565, 43.827675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653450, 41.763966, 44.346809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812473, 42.122887, 44.270073>,  <37.907887, 42.338238, 44.224033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812473, 42.122887, 44.270073>,  <37.653450, 41.763966, 44.346809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812473, 42.122887, 44.270073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180293, 0.128607, 0.975169,
		0.899691, -0.422271, -0.110649,
		0.397555, 0.897300, -0.191839,
		37.931740, 42.392078, 44.212521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080399, 41.708351, 44.805828>,  <37.653450, 41.763966, 44.346809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080399, 41.708351, 44.805828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114159, 42.094414, 44.706753>,  <38.134415, 42.326050, 44.647308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114159, 42.094414, 44.706753>,  <38.080399, 41.708351, 44.805828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114159, 42.094414, 44.706753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166814, 0.231380, 0.958455,
		0.982370, -0.122210, -0.141474,
		0.084398, 0.965157, -0.247687,
		38.139477, 42.383961, 44.632446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578140, 41.960674, 45.250942>,  <38.080399, 41.708351, 44.805828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578140, 41.960674, 45.250942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423515, 42.296352, 45.097935>,  <38.330738, 42.497757, 45.006130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423515, 42.296352, 45.097935>,  <38.578140, 41.960674, 45.250942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423515, 42.296352, 45.097935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296962, 0.505934, 0.809842,
		0.873144, 0.199463, -0.444785,
		-0.386565, 0.839193, -0.382520,
		38.307545, 42.548111, 44.983177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050278, 42.515503, 45.504967>,  <38.578140, 41.960674, 45.250942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050278, 42.515503, 45.504967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703915, 42.682629, 45.394958>,  <38.496098, 42.782906, 45.328953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703915, 42.682629, 45.394958>,  <39.050278, 42.515503, 45.504967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703915, 42.682629, 45.394958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037895, 0.603032, 0.796816,
		0.498768, 0.679546, -0.538003,
		-0.865907, 0.417814, -0.275022,
		38.444141, 42.807972, 45.312450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128101, 43.260555, 45.667240>,  <39.050278, 42.515503, 45.504967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128101, 43.260555, 45.667240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732388, 43.208256, 45.641262>,  <38.494957, 43.176876, 45.625675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732388, 43.208256, 45.641262>,  <39.128101, 43.260555, 45.667240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732388, 43.208256, 45.641262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126566, 0.546459, 0.827867,
		-0.072753, 0.827217, -0.557153,
		-0.989287, -0.130746, -0.064941,
		38.435600, 43.169033, 45.621780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804337, 43.920700, 45.744270>,  <39.128101, 43.260555, 45.667240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804337, 43.920700, 45.744270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551357, 43.630394, 45.852539>,  <38.399570, 43.456211, 45.917500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551357, 43.630394, 45.852539>,  <38.804337, 43.920700, 45.744270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551357, 43.630394, 45.852539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140839, 0.451358, 0.881158,
		-0.761690, 0.519167, -0.387678,
		-0.632450, -0.725769, 0.270676,
		38.361622, 43.412663, 45.933743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543991, 44.208721, 46.212593>,  <38.804337, 43.920700, 45.744270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543991, 44.208721, 46.212593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355366, 43.860214, 46.267029>,  <38.242191, 43.651108, 46.299690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355366, 43.860214, 46.267029>,  <38.543991, 44.208721, 46.212593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355366, 43.860214, 46.267029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387865, 0.343526, 0.855307,
		-0.791954, 0.350543, -0.499928,
		-0.471560, -0.871269, 0.136093,
		38.213898, 43.598835, 46.307858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793625, 44.365936, 46.273220>,  <38.543991, 44.208721, 46.212593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793625, 44.365936, 46.273220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846745, 44.007820, 46.443310>,  <37.878616, 43.792950, 46.545364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846745, 44.007820, 46.443310>,  <37.793625, 44.365936, 46.273220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846745, 44.007820, 46.443310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434477, 0.333021, 0.836856,
		-0.890839, -0.295886, -0.344758,
		0.132802, -0.895293, 0.425223,
		37.886585, 43.739231, 46.570877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143589, 44.099098, 46.718304>,  <37.793625, 44.365936, 46.273220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143589, 44.099098, 46.718304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.467587, 43.903088, 46.847164>,  <37.661983, 43.785480, 46.924480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.467587, 43.903088, 46.847164>,  <37.143589, 44.099098, 46.718304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467587, 43.903088, 46.847164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253719, 0.202439, 0.945857,
		-0.528711, -0.847876, 0.039646,
		0.809995, -0.490026, 0.322153,
		37.710587, 43.756081, 46.943810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924450, 44.028946, 47.434265>,  <37.143589, 44.099098, 46.718304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924450, 44.028946, 47.434265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286018, 43.858471, 47.448673>,  <37.502960, 43.756187, 47.457317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286018, 43.858471, 47.448673>,  <36.924450, 44.028946, 47.434265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286018, 43.858471, 47.448673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046425, -0.014046, 0.998823,
		-0.425182, -0.904525, -0.032482,
		0.903917, -0.426190, 0.036021,
		37.557194, 43.730614, 47.459480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897995, 43.364693, 47.858051>,  <36.924450, 44.028946, 47.434265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897995, 43.364693, 47.858051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270294, 43.510796, 47.864956>,  <37.493671, 43.598457, 47.869099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270294, 43.510796, 47.864956>,  <36.897995, 43.364693, 47.858051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270294, 43.510796, 47.864956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017797, -0.092387, 0.995564,
		0.365234, -0.926310, -0.092489,
		0.930746, 0.365260, 0.017258,
		37.549519, 43.620373, 47.870132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259277, 42.944511, 48.355598>,  <36.897995, 43.364693, 47.858051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259277, 42.944511, 48.355598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470425, 43.283291, 48.330173>,  <37.597111, 43.486557, 48.314919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470425, 43.283291, 48.330173>,  <37.259277, 42.944511, 48.355598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470425, 43.283291, 48.330173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027332, 0.091736, 0.995408,
		0.848889, -0.523703, 0.071573,
		0.527864, 0.846948, -0.063560,
		37.628784, 43.537376, 48.311104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822475, 42.951626, 48.840229>,  <37.259277, 42.944511, 48.355598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822475, 42.951626, 48.840229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793926, 43.337181, 48.737606>,  <37.776798, 43.568516, 48.676033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793926, 43.337181, 48.737606>,  <37.822475, 42.951626, 48.840229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793926, 43.337181, 48.737606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177366, 0.265374, 0.947691,
		0.981554, 0.022132, -0.189901,
		-0.071369, 0.963892, -0.256553,
		37.772514, 43.626350, 48.660641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388638, 43.226902, 48.917049>,  <37.822475, 42.951626, 48.840229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388638, 43.226902, 48.917049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106640, 43.504257, 48.976646>,  <37.937443, 43.670670, 49.012405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106640, 43.504257, 48.976646>,  <38.388638, 43.226902, 48.917049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106640, 43.504257, 48.976646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408599, 0.225394, 0.884446,
		0.579685, 0.684403, -0.442219,
		-0.704991, 0.693390, 0.148989,
		37.895142, 43.712273, 49.021343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692867, 43.703777, 49.378567>,  <38.388638, 43.226902, 48.917049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692867, 43.703777, 49.378567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310558, 43.820351, 49.394382>,  <38.081173, 43.890293, 49.403873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310558, 43.820351, 49.394382>,  <38.692867, 43.703777, 49.378567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310558, 43.820351, 49.394382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131562, 0.303424, 0.943729,
		0.263034, 0.907194, -0.328346,
		-0.955774, 0.291431, 0.039541,
		38.023827, 43.907780, 49.406246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652000, 44.267372, 49.880222>,  <38.692867, 43.703777, 49.378567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652000, 44.267372, 49.880222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263756, 44.177639, 49.845390>,  <38.030807, 44.123798, 49.824490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263756, 44.177639, 49.845390>,  <38.652000, 44.267372, 49.880222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263756, 44.177639, 49.845390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178512, 0.428557, 0.885705,
		-0.161373, 0.875223, -0.456009,
		-0.970614, -0.224332, -0.087080,
		37.972572, 44.110340, 49.819267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325256, 44.830200, 49.961094>,  <38.652000, 44.267372, 49.880222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325256, 44.830200, 49.961094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.087376, 44.526211, 50.065994>,  <37.944649, 44.343819, 50.128933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.087376, 44.526211, 50.065994>,  <38.325256, 44.830200, 49.961094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087376, 44.526211, 50.065994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155531, 0.428795, 0.889913,
		-0.788761, 0.488442, -0.373203,
		-0.594699, -0.759973, 0.262249,
		37.908966, 44.298218, 50.144669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792603, 45.157589, 50.409031>,  <38.325256, 44.830200, 49.961094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792603, 45.157589, 50.409031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735394, 44.765736, 50.465397>,  <37.701069, 44.530624, 50.499218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735394, 44.765736, 50.465397>,  <37.792603, 45.157589, 50.409031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735394, 44.765736, 50.465397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338191, 0.182185, 0.923274,
		-0.930146, 0.084390, -0.357360,
		-0.143020, -0.979636, 0.140919,
		37.692486, 44.471844, 50.507671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057873, 45.161293, 50.755234>,  <37.792603, 45.157589, 50.409031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057873, 45.161293, 50.755234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268929, 44.831703, 50.837856>,  <37.395561, 44.633949, 50.887428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268929, 44.831703, 50.837856>,  <37.057873, 45.161293, 50.755234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268929, 44.831703, 50.837856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314193, 0.036611, 0.948653,
		-0.789229, -0.565441, -0.239570,
		0.527636, -0.823976, 0.206552,
		37.427219, 44.584511, 50.899822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704418, 44.796768, 51.185646>,  <37.057873, 45.161293, 50.755234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704418, 44.796768, 51.185646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068329, 44.657024, 51.275318>,  <37.286674, 44.573177, 51.329121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068329, 44.657024, 51.275318>,  <36.704418, 44.796768, 51.185646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068329, 44.657024, 51.275318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160230, 0.202641, 0.966056,
		-0.382925, -0.914815, 0.128381,
		0.909777, -0.349357, 0.224177,
		37.341263, 44.552219, 51.342571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340607, 45.077217, 51.803036>,  <36.704418, 44.796768, 51.185646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340607, 45.077217, 51.803036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048393, 44.920830, 52.026989>,  <35.873066, 44.827000, 52.161362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048393, 44.920830, 52.026989>,  <36.340607, 45.077217, 51.803036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048393, 44.920830, 52.026989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192760, -0.668484, -0.718313,
		0.655109, -0.632673, 0.412985,
		-0.730531, -0.390966, 0.559884,
		35.829235, 44.803539, 52.194954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434216, 44.325386, 51.787411>,  <36.340607, 45.077217, 51.803036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434216, 44.325386, 51.787411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064220, 44.453705, 51.868881>,  <35.842224, 44.530697, 51.917763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064220, 44.453705, 51.868881>,  <36.434216, 44.325386, 51.787411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064220, 44.453705, 51.868881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321569, -0.375267, -0.869349,
		-0.202454, -0.869634, 0.450277,
		-0.924990, 0.320798, 0.203673,
		35.786724, 44.549946, 51.929981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047573, 43.783524, 51.655399>,  <36.434216, 44.325386, 51.787411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047573, 43.783524, 51.655399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805019, 44.099564, 51.619541>,  <35.659489, 44.289188, 51.598026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805019, 44.099564, 51.619541>,  <36.047573, 43.783524, 51.655399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805019, 44.099564, 51.619541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272436, -0.312340, -0.910067,
		-0.747046, -0.527428, 0.404650,
		-0.606384, 0.790103, -0.089641,
		35.623104, 44.336594, 51.592648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570896, 43.514305, 51.424400>,  <36.047573, 43.783524, 51.655399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570896, 43.514305, 51.424400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487438, 43.899239, 51.354668>,  <35.437363, 44.130199, 51.312828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487438, 43.899239, 51.354668>,  <35.570896, 43.514305, 51.424400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487438, 43.899239, 51.354668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395629, -0.246067, -0.884833,
		-0.894397, -0.115645, 0.432065,
		-0.208643, 0.962329, -0.174329,
		35.424847, 44.187939, 51.302368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898071, 43.456013, 51.155384>,  <35.570896, 43.514305, 51.424400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898071, 43.456013, 51.155384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049164, 43.811668, 51.052040>,  <35.139820, 44.025063, 50.990032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049164, 43.811668, 51.052040>,  <34.898071, 43.456013, 51.155384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049164, 43.811668, 51.052040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289611, -0.151580, -0.945066,
		-0.879456, 0.431808, 0.200247,
		0.377733, 0.889137, -0.258364,
		35.162483, 44.078411, 50.974529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374489, 43.715996, 50.800835>,  <34.898071, 43.456013, 51.155384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374489, 43.715996, 50.800835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705978, 43.916122, 50.700523>,  <34.904873, 44.036198, 50.640335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705978, 43.916122, 50.700523>,  <34.374489, 43.715996, 50.800835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705978, 43.916122, 50.700523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245714, -0.077325, -0.966253,
		-0.502828, 0.862381, 0.058854,
		0.828727, 0.500320, -0.250781,
		34.954597, 44.066219, 50.625290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161110, 44.107719, 50.160542>,  <34.374489, 43.715996, 50.800835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161110, 44.107719, 50.160542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560665, 44.123600, 50.150322>,  <34.800396, 44.133129, 50.144188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560665, 44.123600, 50.150322>,  <34.161110, 44.107719, 50.160542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560665, 44.123600, 50.150322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020705, -0.118043, -0.992793,
		-0.042429, 0.992215, -0.117089,
		0.998885, 0.039699, -0.025552,
		34.860332, 44.135509, 50.142654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423584, 44.667343, 49.605453>,  <34.161110, 44.107719, 50.160542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423584, 44.667343, 49.605453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703560, 44.393742, 49.687649>,  <34.871544, 44.229580, 49.736965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703560, 44.393742, 49.687649>,  <34.423584, 44.667343, 49.605453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703560, 44.393742, 49.687649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148919, -0.141621, -0.978656,
		0.698505, 0.715600, 0.002735,
		0.699939, -0.684003, 0.205489,
		34.913540, 44.188541, 49.749294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972973, 44.804672, 49.105507>,  <34.423584, 44.667343, 49.605453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972973, 44.804672, 49.105507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037163, 44.439693, 49.256073>,  <35.075676, 44.220707, 49.346413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037163, 44.439693, 49.256073>,  <34.972973, 44.804672, 49.105507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037163, 44.439693, 49.256073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246346, -0.332266, -0.910447,
		0.955805, 0.238828, 0.171459,
		0.160471, -0.912447, 0.376416,
		35.085304, 44.165958, 49.368999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571426, 44.595886, 48.896290>,  <34.972973, 44.804672, 49.105507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571426, 44.595886, 48.896290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433083, 44.235733, 49.001881>,  <35.350079, 44.019642, 49.065235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433083, 44.235733, 49.001881>,  <35.571426, 44.595886, 48.896290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433083, 44.235733, 49.001881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349030, -0.384609, -0.854549,
		0.870954, -0.203415, 0.447282,
		-0.345857, -0.900388, 0.263979,
		35.329327, 43.965618, 49.081074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130993, 44.249092, 48.711647>,  <35.571426, 44.595886, 48.896290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130993, 44.249092, 48.711647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830200, 43.985680, 48.723339>,  <35.649723, 43.827633, 48.730354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830200, 43.985680, 48.723339>,  <36.130993, 44.249092, 48.711647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830200, 43.985680, 48.723339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305994, -0.388002, -0.869380,
		0.583857, -0.644816, 0.493279,
		-0.751983, -0.658534, 0.029228,
		35.604607, 43.788120, 48.732109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403881, 43.683182, 48.518406>,  <36.130993, 44.249092, 48.711647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403881, 43.683182, 48.518406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013676, 43.667618, 48.431824>,  <35.779552, 43.658279, 48.379875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013676, 43.667618, 48.431824>,  <36.403881, 43.683182, 48.518406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013676, 43.667618, 48.431824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219788, -0.137717, -0.965778,
		0.007771, -0.989707, 0.142897,
		-0.975517, -0.038912, -0.216455,
		35.721020, 43.655945, 48.366886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299774, 43.021996, 48.080112>,  <36.403881, 43.683182, 48.518406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299774, 43.021996, 48.080112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983437, 43.253250, 47.999786>,  <35.793633, 43.392002, 47.951591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983437, 43.253250, 47.999786>,  <36.299774, 43.021996, 48.080112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983437, 43.253250, 47.999786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108137, -0.190965, -0.975622,
		-0.602389, -0.793280, 0.088506,
		-0.790844, 0.578134, -0.200818,
		35.746185, 43.426689, 47.939541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082306, 42.665272, 47.618164>,  <36.299774, 43.021996, 48.080112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082306, 42.665272, 47.618164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886570, 43.005039, 47.539135>,  <35.769127, 43.208900, 47.491718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886570, 43.005039, 47.539135>,  <36.082306, 42.665272, 47.618164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886570, 43.005039, 47.539135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036304, -0.246194, -0.968540,
		-0.871338, -0.466772, 0.151310,
		-0.489339, 0.849419, -0.197572,
		35.739769, 43.259865, 47.479862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422958, 42.523144, 47.298660>,  <36.082306, 42.665272, 47.618164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422958, 42.523144, 47.298660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505394, 42.893948, 47.173321>,  <35.554855, 43.116428, 47.098118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505394, 42.893948, 47.173321>,  <35.422958, 42.523144, 47.298660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505394, 42.893948, 47.173321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047207, -0.329266, -0.943056,
		-0.977395, 0.179558, -0.111618,
		0.206085, 0.927007, -0.313347,
		35.567219, 43.172050, 47.079315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096603, 42.596527, 46.785477>,  <35.422958, 42.523144, 47.298660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096603, 42.596527, 46.785477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303394, 42.933174, 46.722965>,  <35.427467, 43.135162, 46.685459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303394, 42.933174, 46.722965>,  <35.096603, 42.596527, 46.785477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303394, 42.933174, 46.722965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145107, -0.093759, -0.984964,
		-0.843610, 0.531880, 0.073652,
		0.516977, 0.841613, -0.156276,
		35.458488, 43.185658, 46.676083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696541, 42.969711, 46.253651>,  <35.096603, 42.596527, 46.785477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696541, 42.969711, 46.253651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084034, 43.068668, 46.246059>,  <35.316528, 43.128044, 46.241505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084034, 43.068668, 46.246059>,  <34.696541, 42.969711, 46.253651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084034, 43.068668, 46.246059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061404, -0.313160, -0.947713,
		-0.240403, 0.916912, -0.318558,
		0.968729, 0.247394, -0.018982,
		35.374653, 43.142887, 46.240364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697086, 43.438747, 45.714657>,  <34.696541, 42.969711, 46.253651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697086, 43.438747, 45.714657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084278, 43.346645, 45.754669>,  <35.316593, 43.291382, 45.778675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084278, 43.346645, 45.754669>,  <34.697086, 43.438747, 45.714657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084278, 43.346645, 45.754669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035863, -0.267536, -0.962880,
		0.248471, 0.935631, -0.250711,
		0.967975, -0.230257, 0.100030,
		35.374672, 43.277569, 45.784679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030216, 43.766754, 45.148163>,  <34.697086, 43.438747, 45.714657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030216, 43.766754, 45.148163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.279957, 43.470211, 45.246609>,  <35.429802, 43.292286, 45.305676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.279957, 43.470211, 45.246609>,  <35.030216, 43.766754, 45.148163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279957, 43.470211, 45.246609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076845, -0.371838, -0.925112,
		0.777354, 0.558682, -0.289127,
		0.624352, -0.741358, 0.246118,
		35.467262, 43.247803, 45.320446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543381, 43.790031, 44.714596>,  <35.030216, 43.766754, 45.148163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543381, 43.790031, 44.714596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578465, 43.413502, 44.844963>,  <35.599514, 43.187584, 44.923183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578465, 43.413502, 44.844963>,  <35.543381, 43.790031, 44.714596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578465, 43.413502, 44.844963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054051, -0.322199, -0.945128,
		0.994679, 0.100511, 0.022621,
		0.087707, -0.941321, 0.325917,
		35.604778, 43.131104, 44.942738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118996, 43.503391, 44.343086>,  <35.543381, 43.790031, 44.714596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118996, 43.503391, 44.343086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871418, 43.213795, 44.464901>,  <35.722874, 43.040035, 44.537991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871418, 43.213795, 44.464901>,  <36.118996, 43.503391, 44.343086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871418, 43.213795, 44.464901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186496, -0.512110, -0.838429,
		0.762975, -0.462143, 0.451988,
		-0.618941, -0.723994, 0.304539,
		35.685734, 42.996597, 44.556263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.063473, 31.883015, 42.769646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.805321, 32.112720, 42.971123>,  <45.650429, 32.250546, 43.092010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.805321, 32.112720, 42.971123>,  <46.063473, 31.883015, 42.769646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805321, 32.112720, 42.971123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473264, 0.216990, -0.853778,
		-0.599592, -0.789389, 0.131739,
		-0.645376, 0.574266, 0.503695,
		45.611710, 32.285000, 43.122231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441841, 31.763762, 42.509865>,  <46.063473, 31.883015, 42.769646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441841, 31.763762, 42.509865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366043, 32.101219, 42.710808>,  <45.320564, 32.303692, 42.831371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366043, 32.101219, 42.710808>,  <45.441841, 31.763762, 42.509865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366043, 32.101219, 42.710808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493068, 0.360679, -0.791703,
		-0.849104, -0.397716, 0.347627,
		-0.189491, 0.843642, 0.502355,
		45.309196, 32.354313, 42.861515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775692, 31.872484, 42.479748>,  <45.441841, 31.763762, 42.509865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775692, 31.872484, 42.479748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942532, 32.230171, 42.544746>,  <45.042637, 32.444782, 42.583744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942532, 32.230171, 42.544746>,  <44.775692, 31.872484, 42.479748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942532, 32.230171, 42.544746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573427, 0.397632, -0.716290,
		-0.705129, 0.205589, 0.678620,
		0.417102, 0.894216, 0.162492,
		45.067661, 32.498436, 42.593494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315956, 32.330002, 42.331940>,  <44.775692, 31.872484, 42.479748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315956, 32.330002, 42.331940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612602, 32.597801, 42.348774>,  <44.790592, 32.758480, 42.358875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612602, 32.597801, 42.348774>,  <44.315956, 32.330002, 42.331940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612602, 32.597801, 42.348774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422196, 0.514583, -0.746294,
		-0.521298, 0.535699, 0.664285,
		0.741619, 0.669500, 0.042081,
		44.835087, 32.798653, 42.361397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005646, 32.968224, 42.256828>,  <44.315956, 32.330002, 42.331940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005646, 32.968224, 42.256828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389210, 32.996948, 42.147038>,  <44.619347, 33.014183, 42.081165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389210, 32.996948, 42.147038>,  <44.005646, 32.968224, 42.256828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389210, 32.996948, 42.147038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274447, 0.479988, -0.833241,
		0.071909, 0.874331, 0.479973,
		0.958910, 0.071809, -0.274473,
		44.676884, 33.018490, 42.064697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047047, 33.622623, 41.945309>,  <44.005646, 32.968224, 42.256828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047047, 33.622623, 41.945309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369751, 33.437435, 41.798454>,  <44.563374, 33.326321, 41.710342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369751, 33.437435, 41.798454>,  <44.047047, 33.622623, 41.945309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369751, 33.437435, 41.798454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224336, 0.334818, -0.915189,
		0.546628, 0.820704, 0.166258,
		0.806765, -0.462970, -0.367135,
		44.611782, 33.298546, 41.688313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404797, 34.129013, 41.595016>,  <44.047047, 33.622623, 41.945309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404797, 34.129013, 41.595016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551479, 33.791424, 41.438431>,  <44.639488, 33.588871, 41.344479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551479, 33.791424, 41.438431>,  <44.404797, 34.129013, 41.595016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551479, 33.791424, 41.438431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099233, 0.382888, -0.918450,
		0.925031, 0.375644, 0.056656,
		0.366703, -0.843972, -0.391460,
		44.661491, 33.538231, 41.320992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025070, 34.339550, 41.098949>,  <44.404797, 34.129013, 41.595016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025070, 34.339550, 41.098949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864895, 33.984016, 41.009846>,  <44.768791, 33.770695, 40.956383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864895, 33.984016, 41.009846>,  <45.025070, 34.339550, 41.098949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864895, 33.984016, 41.009846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038526, 0.226553, -0.973237,
		0.915515, -0.398300, -0.056477,
		-0.400435, -0.888837, -0.222757,
		44.744762, 33.717365, 40.943020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462189, 34.052601, 40.597805>,  <45.025070, 34.339550, 41.098949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462189, 34.052601, 40.597805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126030, 33.843834, 40.539364>,  <44.924335, 33.718575, 40.504299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126030, 33.843834, 40.539364>,  <45.462189, 34.052601, 40.597805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126030, 33.843834, 40.539364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048880, 0.195480, -0.979489,
		0.539769, -0.830297, -0.138769,
		-0.840393, -0.521915, -0.146099,
		44.873913, 33.687260, 40.495533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567249, 33.653011, 40.054108>,  <45.462189, 34.052601, 40.597805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567249, 33.653011, 40.054108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168720, 33.657394, 40.088078>,  <44.929604, 33.660023, 40.108459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168720, 33.657394, 40.088078>,  <45.567249, 33.653011, 40.054108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168720, 33.657394, 40.088078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081089, 0.197892, -0.976864,
		-0.027509, -0.980163, -0.196277,
		-0.996327, 0.010957, 0.084924,
		44.869823, 33.660683, 40.113556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291691, 33.270279, 39.487503>,  <45.567249, 33.653011, 40.054108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291691, 33.270279, 39.487503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977844, 33.481106, 39.618088>,  <44.789536, 33.607601, 39.696438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977844, 33.481106, 39.618088>,  <45.291691, 33.270279, 39.487503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977844, 33.481106, 39.618088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220252, 0.255254, -0.941454,
		-0.579537, -0.810586, -0.084190,
		-0.784618, 0.527065, 0.326462,
		44.742458, 33.639225, 39.716026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812729, 33.048374, 39.019806>,  <45.291691, 33.270279, 39.487503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812729, 33.048374, 39.019806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642239, 33.372341, 39.180984>,  <44.539944, 33.566723, 39.277691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642239, 33.372341, 39.180984>,  <44.812729, 33.048374, 39.019806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642239, 33.372341, 39.180984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407002, 0.226111, -0.884999,
		-0.807887, -0.541209, 0.233264,
		-0.426226, 0.809918, 0.402945,
		44.514370, 33.615314, 39.301868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270741, 33.025227, 38.654633>,  <44.812729, 33.048374, 39.019806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270741, 33.025227, 38.654633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284557, 33.396721, 38.802284>,  <44.292847, 33.619617, 38.890877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284557, 33.396721, 38.802284>,  <44.270741, 33.025227, 38.654633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284557, 33.396721, 38.802284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516695, 0.332754, -0.788860,
		-0.855472, -0.163479, 0.491367,
		0.034542, 0.928735, 0.369131,
		44.294922, 33.675343, 38.913025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602684, 33.199768, 38.667435>,  <44.270741, 33.025227, 38.654633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602684, 33.199768, 38.667435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.826748, 33.529221, 38.631996>,  <43.961185, 33.726894, 38.610733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.826748, 33.529221, 38.631996>,  <43.602684, 33.199768, 38.667435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826748, 33.529221, 38.631996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347878, 0.136820, -0.927503,
		-0.751802, 0.550368, 0.363165,
		0.560156, 0.823635, -0.088599,
		43.994793, 33.776310, 38.605415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230175, 33.729465, 38.316257>,  <43.602684, 33.199768, 38.667435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230175, 33.729465, 38.316257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606247, 33.859009, 38.273968>,  <43.831890, 33.936733, 38.248596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606247, 33.859009, 38.273968>,  <43.230175, 33.729465, 38.316257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606247, 33.859009, 38.273968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160430, 0.147126, -0.976020,
		-0.300536, 0.934597, 0.190282,
		0.940181, 0.323856, -0.105720,
		43.888302, 33.956165, 38.242252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231709, 34.417103, 38.103668>,  <43.230175, 33.729465, 38.316257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231709, 34.417103, 38.103668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561436, 34.240784, 37.961571>,  <43.759270, 34.134991, 37.876312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561436, 34.240784, 37.961571>,  <43.231709, 34.417103, 38.103668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561436, 34.240784, 37.961571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312373, 0.169192, -0.934771,
		0.472151, 0.881516, 0.001774,
		0.824316, -0.440799, -0.355246,
		43.808731, 34.108543, 37.854996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421127, 34.887737, 37.532856>,  <43.231709, 34.417103, 38.103668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421127, 34.887737, 37.532856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610737, 34.537518, 37.495506>,  <43.724503, 34.327385, 37.473099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610737, 34.537518, 37.495506>,  <43.421127, 34.887737, 37.532856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610737, 34.537518, 37.495506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276012, -0.047056, -0.960002,
		0.836131, 0.480839, -0.263967,
		0.474027, -0.875545, -0.093372,
		43.752945, 34.274853, 37.467495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659508, 34.959846, 36.951862>,  <43.421127, 34.887737, 37.532856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659508, 34.959846, 36.951862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709087, 34.564930, 36.991661>,  <43.738834, 34.327980, 37.015541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709087, 34.564930, 36.991661>,  <43.659508, 34.959846, 36.951862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709087, 34.564930, 36.991661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209079, -0.124007, -0.970004,
		0.970011, 0.099431, -0.221792,
		0.123952, -0.987287, 0.099499,
		43.746273, 34.268745, 37.021511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100060, 34.730976, 36.404335>,  <43.659508, 34.959846, 36.951862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100060, 34.730976, 36.404335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884148, 34.415997, 36.523373>,  <43.754601, 34.227009, 36.594795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884148, 34.415997, 36.523373>,  <44.100060, 34.730976, 36.404335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884148, 34.415997, 36.523373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163299, -0.248859, -0.954674,
		0.825818, -0.563908, 0.005739,
		-0.539776, -0.787450, 0.297598,
		43.722214, 34.179760, 36.612652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306412, 34.268360, 35.916607>,  <44.100060, 34.730976, 36.404335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306412, 34.268360, 35.916607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963390, 34.137478, 36.075371>,  <43.757576, 34.058949, 36.170628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963390, 34.137478, 36.075371>,  <44.306412, 34.268360, 35.916607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963390, 34.137478, 36.075371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331444, -0.238592, -0.912808,
		0.393374, -0.914336, 0.096155,
		-0.857556, -0.327205, 0.396907,
		43.706123, 34.039318, 36.194443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207397, 33.608795, 35.658970>,  <44.306412, 34.268360, 35.916607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207397, 33.608795, 35.658970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833694, 33.723213, 35.744144>,  <43.609474, 33.791862, 35.795250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833694, 33.723213, 35.744144>,  <44.207397, 33.608795, 35.658970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833694, 33.723213, 35.744144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338374, -0.522657, -0.782517,
		-0.112543, -0.803124, 0.585086,
		-0.934258, 0.286044, 0.212935,
		43.553417, 33.809025, 35.808025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827507, 33.867783, 35.349041>,  <44.207397, 33.608795, 35.658970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827507, 33.867783, 35.349041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196678, 34.005001, 35.279156>,  <45.418182, 34.087334, 35.237225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196678, 34.005001, 35.279156>,  <44.827507, 33.867783, 35.349041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196678, 34.005001, 35.279156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363212, -0.625484, 0.690540,
		0.127606, -0.700777, -0.701875,
		0.922927, 0.343047, -0.174715,
		45.473557, 34.107914, 35.226742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230339, 33.357178, 35.265476>,  <44.827507, 33.867783, 35.349041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230339, 33.357178, 35.265476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513493, 33.616962, 35.376537>,  <45.683384, 33.772835, 35.443172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513493, 33.616962, 35.376537>,  <45.230339, 33.357178, 35.265476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513493, 33.616962, 35.376537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430093, -0.708158, 0.559940,
		0.560281, -0.276960, -0.780627,
		0.707888, 0.649465, 0.277649,
		45.725861, 33.811802, 35.459831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028488, 33.087502, 35.111591>,  <45.230339, 33.357178, 35.265476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028488, 33.087502, 35.111591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964218, 33.320187, 35.430538>,  <45.925655, 33.459797, 35.621906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964218, 33.320187, 35.430538>,  <46.028488, 33.087502, 35.111591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964218, 33.320187, 35.430538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485545, -0.656762, 0.576983,
		0.859319, 0.479865, -0.176922,
		-0.160678, 0.581716, 0.797364,
		45.916016, 33.494701, 35.669746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764179, 33.123169, 35.533928>,  <46.028488, 33.087502, 35.111591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764179, 33.123169, 35.533928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.461864, 33.235889, 35.770363>,  <46.280476, 33.303520, 35.912224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.461864, 33.235889, 35.770363>,  <46.764179, 33.123169, 35.533928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.461864, 33.235889, 35.770363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314288, -0.635791, 0.704977,
		0.574469, 0.718580, 0.391953,
		-0.755783, 0.281802, 0.591083,
		46.235130, 33.320431, 35.947689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044964, 33.194019, 36.219677>,  <46.764179, 33.123169, 35.533928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044964, 33.194019, 36.219677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.653049, 33.161194, 36.292648>,  <46.417900, 33.141499, 36.336430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.653049, 33.161194, 36.292648>,  <47.044964, 33.194019, 36.219677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.653049, 33.161194, 36.292648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199659, -0.456978, 0.866780,
		0.012238, 0.885685, 0.464126,
		-0.979789, -0.082059, 0.182428,
		46.359112, 33.136578, 36.347378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.973335, 33.400284, 36.898083>,  <47.044964, 33.194019, 36.219677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.973335, 33.400284, 36.898083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635159, 33.195137, 36.838482>,  <46.432255, 33.072048, 36.802719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635159, 33.195137, 36.838482>,  <46.973335, 33.400284, 36.898083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635159, 33.195137, 36.838482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126269, -0.463032, 0.877301,
		-0.518932, 0.722889, 0.456225,
		-0.845438, -0.512866, -0.149004,
		46.381527, 33.041279, 36.793781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575237, 33.442783, 37.503952>,  <46.973335, 33.400284, 36.898083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575237, 33.442783, 37.503952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.423626, 33.114613, 37.332726>,  <46.332661, 32.917709, 37.229992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.423626, 33.114613, 37.332726>,  <46.575237, 33.442783, 37.503952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423626, 33.114613, 37.332726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116734, -0.501274, 0.857378,
		-0.917994, 0.274999, 0.285768,
		-0.379026, -0.820427, -0.428064,
		46.309917, 32.868484, 37.204308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985157, 33.215652, 37.900627>,  <46.575237, 33.442783, 37.503952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985157, 33.215652, 37.900627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.107849, 32.898155, 37.690525>,  <46.181465, 32.707657, 37.564465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.107849, 32.898155, 37.690525>,  <45.985157, 33.215652, 37.900627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107849, 32.898155, 37.690525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024463, -0.558245, 0.829315,
		-0.951484, -0.241523, -0.190645,
		0.306726, -0.793743, -0.525253,
		46.199867, 32.660030, 37.532948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645370, 32.652081, 38.201912>,  <45.985157, 33.215652, 37.900627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645370, 32.652081, 38.201912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951344, 32.477764, 38.012188>,  <46.134926, 32.373173, 37.898354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951344, 32.477764, 38.012188>,  <45.645370, 32.652081, 38.201912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951344, 32.477764, 38.012188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013706, -0.725195, 0.688407,
		-0.643967, -0.533084, -0.548751,
		0.764930, -0.435791, -0.474309,
		46.180820, 32.347027, 37.869896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491402, 31.997374, 38.239479>,  <45.645370, 32.652081, 38.201912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491402, 31.997374, 38.239479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877850, 31.958826, 38.143711>,  <46.109718, 31.935698, 38.086250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877850, 31.958826, 38.143711>,  <45.491402, 31.997374, 38.239479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877850, 31.958826, 38.143711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082430, -0.763867, 0.640087,
		-0.244572, -0.638138, -0.730045,
		0.966121, -0.096369, -0.239422,
		46.167686, 31.929914, 38.071884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700867, 31.234133, 37.979809>,  <45.491402, 31.997374, 38.239479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700867, 31.234133, 37.979809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.039719, 31.404459, 38.106968>,  <46.243031, 31.506655, 38.183262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.039719, 31.404459, 38.106968>,  <45.700867, 31.234133, 37.979809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039719, 31.404459, 38.106968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202039, -0.811402, 0.548459,
		0.491486, -0.400386, -0.773391,
		0.847126, 0.425815, 0.317899,
		46.293858, 31.532204, 38.202339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144035, 30.581030, 38.099411>,  <45.700867, 31.234133, 37.979809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144035, 30.581030, 38.099411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.338345, 30.880594, 38.279701>,  <46.454929, 31.060333, 38.387875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.338345, 30.880594, 38.279701>,  <46.144035, 30.581030, 38.099411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.338345, 30.880594, 38.279701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385985, -0.646447, 0.658120,
		0.784244, -0.145724, -0.603097,
		0.485774, 0.748913, 0.450725,
		46.484077, 31.105268, 38.414917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822880, 30.243479, 38.244816>,  <46.144035, 30.581030, 38.099411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822880, 30.243479, 38.244816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.793648, 30.561050, 38.486256>,  <46.776108, 30.751595, 38.631119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.793648, 30.561050, 38.486256>,  <46.822880, 30.243479, 38.244816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793648, 30.561050, 38.486256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338237, -0.549621, 0.763880,
		0.938219, 0.259983, -0.228371,
		-0.073078, 0.793931, 0.603601,
		46.771725, 30.799231, 38.667336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.445217, 30.254431, 38.595867>,  <46.822880, 30.243479, 38.244816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.445217, 30.254431, 38.595867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.197861, 30.471235, 38.823486>,  <47.049446, 30.601318, 38.960056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.197861, 30.471235, 38.823486>,  <47.445217, 30.254431, 38.595867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.197861, 30.471235, 38.823486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375226, -0.432589, 0.819800,
		0.690504, 0.720480, 0.064134,
		-0.618393, 0.542010, 0.569047,
		47.012344, 30.633839, 38.994202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.852642, 30.429569, 39.185162>,  <47.445217, 30.254431, 38.595867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.852642, 30.429569, 39.185162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.471764, 30.468723, 39.300911>,  <47.243237, 30.492216, 39.370361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.471764, 30.468723, 39.300911>,  <47.852642, 30.429569, 39.185162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.471764, 30.468723, 39.300911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225435, -0.414082, 0.881882,
		0.206147, 0.904961, 0.372221,
		-0.952199, 0.097885, 0.289371,
		47.186104, 30.498089, 39.387722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.908188, 30.773497, 39.933926>,  <47.852642, 30.429569, 39.185162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.908188, 30.773497, 39.933926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.567272, 30.574921, 39.868027>,  <47.362720, 30.455774, 39.828487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.567272, 30.574921, 39.868027>,  <47.908188, 30.773497, 39.933926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567272, 30.574921, 39.868027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040370, -0.251601, 0.966989,
		-0.521505, 0.830809, 0.194397,
		-0.852293, -0.496441, -0.164751,
		47.311584, 30.425989, 39.818600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589153, 30.988588, 40.505890>,  <47.908188, 30.773497, 39.933926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589153, 30.988588, 40.505890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.383930, 30.674616, 40.366947>,  <47.260796, 30.486233, 40.283581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.383930, 30.674616, 40.366947>,  <47.589153, 30.988588, 40.505890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.383930, 30.674616, 40.366947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023508, -0.417370, 0.908433,
		-0.858033, 0.457912, 0.232587,
		-0.513057, -0.784933, -0.347353,
		47.230015, 30.439137, 40.262741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135193, 30.754744, 41.132896>,  <47.589153, 30.988588, 40.505890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135193, 30.754744, 41.132896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.132011, 30.437000, 40.889938>,  <47.130104, 30.246353, 40.744164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.132011, 30.437000, 40.889938>,  <47.135193, 30.754744, 41.132896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132011, 30.437000, 40.889938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079625, -0.604984, 0.792246,
		-0.996793, 0.054663, -0.058440,
		-0.007951, -0.794359, -0.607396,
		47.129627, 30.198692, 40.707718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571556, 30.453060, 41.396194>,  <47.135193, 30.754744, 41.132896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571556, 30.453060, 41.396194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.787933, 30.181763, 41.197250>,  <46.917759, 30.018984, 41.077885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.787933, 30.181763, 41.197250>,  <46.571556, 30.453060, 41.396194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787933, 30.181763, 41.197250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076602, -0.628620, 0.773931,
		-0.837562, -0.380557, -0.392004,
		0.540946, -0.678243, -0.497356,
		46.950218, 29.978291, 41.048042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218548, 29.815100, 41.383675>,  <46.571556, 30.453060, 41.396194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218548, 29.815100, 41.383675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593418, 29.703590, 41.299786>,  <46.818340, 29.636684, 41.249454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593418, 29.703590, 41.299786>,  <46.218548, 29.815100, 41.383675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593418, 29.703590, 41.299786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087141, -0.769187, 0.633055,
		-0.337791, -0.575010, -0.745158,
		0.937179, -0.278774, -0.209718,
		46.874573, 29.619959, 41.236870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208065, 29.107889, 41.314674>,  <46.218548, 29.815100, 41.383675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208065, 29.107889, 41.314674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.599243, 29.170029, 41.370514>,  <46.833950, 29.207312, 41.404018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.599243, 29.170029, 41.370514>,  <46.208065, 29.107889, 41.314674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.599243, 29.170029, 41.370514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028349, -0.760940, 0.648202,
		0.206922, -0.629949, -0.748563,
		0.977946, 0.155349, 0.139597,
		46.892628, 29.216633, 41.412392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.381184, 41.377884, 40.105946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142780, 41.128258, 40.308056>,  <38.999737, 40.978481, 40.429321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142780, 41.128258, 40.308056>,  <39.381184, 41.377884, 40.105946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142780, 41.128258, 40.308056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286537, -0.753127, -0.592195,
		0.750110, -0.208175, 0.627692,
		-0.596012, -0.624069, 0.505279,
		38.963978, 40.941036, 40.459641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863354, 40.826668, 40.153599>,  <39.381184, 41.377884, 40.105946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863354, 40.826668, 40.153599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505070, 40.675083, 40.246632>,  <39.290100, 40.584133, 40.302452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505070, 40.675083, 40.246632>,  <39.863354, 40.826668, 40.153599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505070, 40.675083, 40.246632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261750, -0.872237, -0.413146,
		0.359428, -0.309182, 0.880464,
		-0.895711, -0.378958, 0.232578,
		39.236355, 40.561394, 40.316406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042099, 40.263676, 40.550503>,  <39.863354, 40.826668, 40.153599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042099, 40.263676, 40.550503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680218, 40.193932, 40.395012>,  <39.463089, 40.152084, 40.301720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680218, 40.193932, 40.395012>,  <40.042099, 40.263676, 40.550503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680218, 40.193932, 40.395012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329043, -0.865548, -0.377568,
		-0.270624, -0.469495, 0.840438,
		-0.904706, -0.174362, -0.388723,
		39.408806, 40.141624, 40.278397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715267, 39.558338, 40.804344>,  <40.042099, 40.263676, 40.550503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715267, 39.558338, 40.804344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534382, 39.661407, 40.462791>,  <39.425850, 39.723248, 40.257858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534382, 39.661407, 40.462791>,  <39.715267, 39.558338, 40.804344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534382, 39.661407, 40.462791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166089, -0.916287, -0.364462,
		-0.876310, -0.306634, 0.371558,
		-0.452210, 0.257670, -0.853881,
		39.398720, 39.738708, 40.206627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341747, 38.977421, 40.595280>,  <39.715267, 39.558338, 40.804344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341747, 38.977421, 40.595280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348515, 39.201057, 40.263706>,  <39.352577, 39.335239, 40.064762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348515, 39.201057, 40.263706>,  <39.341747, 38.977421, 40.595280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348515, 39.201057, 40.263706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014601, -0.828823, -0.559322,
		-0.999750, 0.021567, -0.005861,
		0.016920, 0.559096, -0.828930,
		39.353592, 39.368786, 40.015026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854172, 38.651131, 40.244778>,  <39.341747, 38.977421, 40.595280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854172, 38.651131, 40.244778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082928, 38.844135, 39.979408>,  <39.220181, 38.959938, 39.820187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082928, 38.844135, 39.979408>,  <38.854172, 38.651131, 40.244778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082928, 38.844135, 39.979408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090736, -0.766554, -0.635737,
		-0.815300, 0.423765, -0.394600,
		0.571886, 0.482512, -0.663422,
		39.254494, 38.988888, 39.780380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592583, 38.469650, 39.549725>,  <38.854172, 38.651131, 40.244778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592583, 38.469650, 39.549725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961784, 38.611870, 39.490860>,  <39.183304, 38.697201, 39.455540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961784, 38.611870, 39.490860>,  <38.592583, 38.469650, 39.549725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961784, 38.611870, 39.490860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152747, -0.689556, -0.707941,
		-0.353184, 0.630951, -0.690769,
		0.923000, 0.355547, -0.147165,
		39.238686, 38.718533, 39.446709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564350, 38.747532, 38.882149>,  <38.592583, 38.469650, 39.549725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564350, 38.747532, 38.882149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939148, 38.640018, 38.971416>,  <39.164024, 38.575512, 39.024975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939148, 38.640018, 38.971416>,  <38.564350, 38.747532, 38.882149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939148, 38.640018, 38.971416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022446, -0.591166, -0.806237,
		0.348631, 0.760447, -0.547884,
		0.936991, -0.268781, 0.223168,
		39.220245, 38.559383, 39.038368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864792, 38.744717, 38.353825>,  <38.564350, 38.747532, 38.882149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864792, 38.744717, 38.353825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121796, 38.513603, 38.555157>,  <39.275997, 38.374935, 38.675957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121796, 38.513603, 38.555157>,  <38.864792, 38.744717, 38.353825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121796, 38.513603, 38.555157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038338, -0.680269, -0.731959,
		0.765315, 0.450997, -0.459233,
		0.642513, -0.577786, 0.503329,
		39.314548, 38.340267, 38.706154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394680, 38.673985, 37.915810>,  <38.864792, 38.744717, 38.353825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394680, 38.673985, 37.915810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402206, 38.342762, 38.139938>,  <39.406723, 38.144028, 38.274418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402206, 38.342762, 38.139938>,  <39.394680, 38.673985, 37.915810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402206, 38.342762, 38.139938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033867, -0.560631, -0.827373,
		0.999249, -0.003412, -0.038591,
		0.018813, -0.828059, 0.560326,
		39.407848, 38.094345, 38.308037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825718, 38.288235, 37.508717>,  <39.394680, 38.673985, 37.915810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825718, 38.288235, 37.508717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644497, 38.041256, 37.765934>,  <39.535767, 37.893070, 37.920265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644497, 38.041256, 37.765934>,  <39.825718, 38.288235, 37.508717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644497, 38.041256, 37.765934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245273, -0.607151, -0.755783,
		0.857081, -0.500129, 0.123627,
		-0.453049, -0.617445, 0.643046,
		39.508583, 37.856022, 37.958847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954815, 37.523846, 37.307606>,  <39.825718, 38.288235, 37.508717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954815, 37.523846, 37.307606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615841, 37.569859, 37.514919>,  <39.412457, 37.597466, 37.639309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615841, 37.569859, 37.514919>,  <39.954815, 37.523846, 37.307606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615841, 37.569859, 37.514919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472929, -0.607150, -0.638520,
		0.241224, -0.786216, 0.568924,
		-0.847437, 0.115034, 0.518284,
		39.361610, 37.604370, 37.670403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512230, 37.168610, 37.691296>,  <39.954815, 37.523846, 37.307606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512230, 37.168610, 37.691296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125366, 37.175827, 37.792713>,  <39.893250, 37.180157, 37.853561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125366, 37.175827, 37.792713>,  <40.512230, 37.168610, 37.691296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125366, 37.175827, 37.792713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119957, -0.911805, -0.392711,
		0.224095, -0.410227, 0.884022,
		-0.967157, 0.018040, 0.253541,
		39.835220, 37.181240, 37.868774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795349, 36.484795, 37.685062>,  <40.512230, 37.168610, 37.691296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795349, 36.484795, 37.685062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751236, 36.458611, 38.081760>,  <40.724770, 36.442902, 38.319778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751236, 36.458611, 38.081760>,  <40.795349, 36.484795, 37.685062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751236, 36.458611, 38.081760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290226, -0.956460, -0.030859,
		0.950582, 0.284427, 0.124478,
		-0.110281, -0.065461, 0.991742,
		40.718151, 36.438972, 38.379284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699203, 35.760201, 37.287628>,  <40.795349, 36.484795, 37.685062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699203, 35.760201, 37.287628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745060, 35.388832, 37.428989>,  <40.772575, 35.166012, 37.513805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745060, 35.388832, 37.428989>,  <40.699203, 35.760201, 37.287628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745060, 35.388832, 37.428989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198126, 0.327234, 0.923939,
		-0.973449, -0.175944, -0.146429,
		0.114645, -0.928419, 0.353404,
		40.779453, 35.110306, 37.535011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007755, 35.563454, 37.674580>,  <40.699203, 35.760201, 37.287628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007755, 35.563454, 37.674580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307308, 35.333572, 37.806572>,  <40.487041, 35.195644, 37.885769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307308, 35.333572, 37.806572>,  <40.007755, 35.563454, 37.674580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307308, 35.333572, 37.806572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287843, 0.166424, 0.943106,
		-0.596924, -0.801260, -0.040792,
		0.748885, -0.574704, 0.329980,
		40.531975, 35.161160, 37.905567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761997, 34.933987, 38.021126>,  <40.007755, 35.563454, 37.674580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761997, 34.933987, 38.021126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112938, 35.084099, 38.140739>,  <40.323502, 35.174164, 38.212509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112938, 35.084099, 38.140739>,  <39.761997, 34.933987, 38.021126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112938, 35.084099, 38.140739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361934, 0.108369, 0.925883,
		0.315057, -0.920556, 0.230903,
		0.877350, 0.375277, 0.299038,
		40.376144, 35.196682, 38.230450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649693, 34.787991, 38.700344>,  <39.761997, 34.933987, 38.021126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649693, 34.787991, 38.700344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003586, 34.974136, 38.710815>,  <40.215923, 35.085823, 38.717098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003586, 34.974136, 38.710815>,  <39.649693, 34.787991, 38.700344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003586, 34.974136, 38.710815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105117, 0.144506, 0.983905,
		0.454089, -0.873245, 0.176767,
		0.884733, 0.465361, 0.026174,
		40.269005, 35.113747, 38.718666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752087, 34.818607, 39.409416>,  <39.649693, 34.787991, 38.700344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752087, 34.818607, 39.409416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054375, 35.055824, 39.298283>,  <40.235748, 35.198154, 39.231602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054375, 35.055824, 39.298283>,  <39.752087, 34.818607, 39.409416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054375, 35.055824, 39.298283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108806, 0.304645, 0.946231,
		0.645794, -0.745314, 0.165700,
		0.755719, 0.593041, -0.277833,
		40.281090, 35.233738, 39.214931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247841, 34.775558, 39.951893>,  <39.752087, 34.818607, 39.409416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247841, 34.775558, 39.951893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281147, 35.123959, 39.758224>,  <40.301132, 35.333000, 39.642025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281147, 35.123959, 39.758224>,  <40.247841, 34.775558, 39.951893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281147, 35.123959, 39.758224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080532, 0.478389, 0.874448,
		0.993268, -0.111804, -0.030310,
		0.083267, 0.871002, -0.484172,
		40.306126, 35.385258, 39.612972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712383, 35.160038, 40.311493>,  <40.247841, 34.775558, 39.951893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712383, 35.160038, 40.311493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493698, 35.429836, 40.113033>,  <40.362488, 35.591713, 39.993958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493698, 35.429836, 40.113033>,  <40.712383, 35.160038, 40.311493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493698, 35.429836, 40.113033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009833, 0.587331, 0.809287,
		0.837262, 0.447327, -0.314469,
		-0.546713, 0.674493, -0.496149,
		40.329685, 35.632183, 39.964188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895824, 35.808464, 40.724957>,  <40.712383, 35.160038, 40.311493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895824, 35.808464, 40.724957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557056, 35.900211, 40.533070>,  <40.353798, 35.955257, 40.417938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557056, 35.900211, 40.533070>,  <40.895824, 35.808464, 40.724957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557056, 35.900211, 40.533070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199313, 0.699462, 0.686314,
		0.492958, 0.676863, -0.546671,
		-0.846916, 0.229365, -0.479713,
		40.302982, 35.969021, 40.389156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846691, 36.576015, 40.692616>,  <40.895824, 35.808464, 40.724957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846691, 36.576015, 40.692616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478123, 36.424397, 40.658432>,  <40.256981, 36.333427, 40.637924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478123, 36.424397, 40.658432>,  <40.846691, 36.576015, 40.692616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478123, 36.424397, 40.658432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328679, 0.643050, 0.691705,
		-0.207234, 0.665442, -0.717106,
		-0.921425, -0.379043, -0.085455,
		40.201694, 36.310684, 40.632797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432434, 37.104118, 40.800110>,  <40.846691, 36.576015, 40.692616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432434, 37.104118, 40.800110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181305, 36.795986, 40.844711>,  <40.030628, 36.611107, 40.871471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181305, 36.795986, 40.844711>,  <40.432434, 37.104118, 40.800110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181305, 36.795986, 40.844711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389368, 0.434865, 0.811963,
		-0.673966, 0.466355, -0.572960,
		-0.627823, -0.770328, 0.111501,
		39.992958, 36.564888, 40.878162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796700, 37.360580, 40.951508>,  <40.432434, 37.104118, 40.800110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796700, 37.360580, 40.951508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747406, 36.989223, 41.091740>,  <39.717831, 36.766411, 41.175880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747406, 36.989223, 41.091740>,  <39.796700, 37.360580, 40.951508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747406, 36.989223, 41.091740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140807, 0.366060, 0.919877,
		-0.982338, 0.063993, -0.175834,
		-0.123232, -0.928388, 0.350584,
		39.710438, 36.710709, 41.196915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126030, 37.313370, 41.277069>,  <39.796700, 37.360580, 40.951508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126030, 37.313370, 41.277069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336895, 37.017082, 41.443649>,  <39.463413, 36.839310, 41.543598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336895, 37.017082, 41.443649>,  <39.126030, 37.313370, 41.277069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336895, 37.017082, 41.443649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335154, 0.269118, 0.902911,
		-0.780877, -0.615559, -0.106385,
		0.527165, -0.740718, 0.416455,
		39.495045, 36.794868, 41.568584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691750, 37.065086, 41.836628>,  <39.126030, 37.313370, 41.277069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691750, 37.065086, 41.836628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058304, 36.929909, 41.922443>,  <39.278236, 36.848804, 41.973934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058304, 36.929909, 41.922443>,  <38.691750, 37.065086, 41.836628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058304, 36.929909, 41.922443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115740, 0.289371, 0.950194,
		-0.383191, -0.895578, 0.226063,
		0.916389, -0.337942, 0.214538,
		39.333221, 36.828526, 41.986805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711380, 36.552330, 42.415524>,  <38.691750, 37.065086, 41.836628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711380, 36.552330, 42.415524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071438, 36.726566, 42.416721>,  <39.287472, 36.831108, 42.417439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071438, 36.726566, 42.416721>,  <38.711380, 36.552330, 42.415524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071438, 36.726566, 42.416721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093057, 0.185578, 0.978213,
		0.425544, -0.880808, 0.207581,
		0.900140, 0.435590, 0.002993,
		39.341480, 36.857243, 42.417618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201180, 36.038250, 42.632465>,  <38.711380, 36.552330, 42.415524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201180, 36.038250, 42.632465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863766, 35.954514, 42.830303>,  <37.661316, 35.904270, 42.949005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863766, 35.954514, 42.830303>,  <38.201180, 36.038250, 42.632465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863766, 35.954514, 42.830303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313155, -0.556444, -0.769613,
		0.436325, -0.804081, 0.403824,
		-0.843537, -0.209342, 0.494592,
		37.610706, 35.891712, 42.978680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104733, 35.254349, 42.567272>,  <38.201180, 36.038250, 42.632465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104733, 35.254349, 42.567272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742229, 35.410568, 42.631973>,  <37.524727, 35.504299, 42.670792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742229, 35.410568, 42.631973>,  <38.104733, 35.254349, 42.567272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742229, 35.410568, 42.631973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320338, -0.384836, -0.865612,
		-0.275813, -0.836287, 0.473869,
		-0.906262, 0.390545, 0.161752,
		37.470352, 35.527733, 42.680500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618809, 34.710762, 42.488262>,  <38.104733, 35.254349, 42.567272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618809, 34.710762, 42.488262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415424, 35.049320, 42.424911>,  <37.293392, 35.252453, 42.386902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415424, 35.049320, 42.424911>,  <37.618809, 34.710762, 42.488262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415424, 35.049320, 42.424911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233964, -0.312809, -0.920549,
		-0.828689, -0.431011, 0.357078,
		-0.508464, 0.846393, -0.158381,
		37.262886, 35.303238, 42.377396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942936, 34.435009, 42.168930>,  <37.618809, 34.710762, 42.488262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942936, 34.435009, 42.168930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956497, 34.826332, 42.087177>,  <36.964634, 35.061127, 42.038124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956497, 34.826332, 42.087177>,  <36.942936, 34.435009, 42.168930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956497, 34.826332, 42.087177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216829, -0.192428, -0.957056,
		-0.975621, 0.076765, 0.205600,
		0.033906, 0.978304, -0.204382,
		36.966667, 35.119823, 42.025864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319771, 34.554176, 41.827301>,  <36.942936, 34.435009, 42.168930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319771, 34.554176, 41.827301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556721, 34.862919, 41.734921>,  <36.698891, 35.048164, 41.679493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556721, 34.862919, 41.734921>,  <36.319771, 34.554176, 41.827301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556721, 34.862919, 41.734921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280220, -0.071376, -0.957279,
		-0.755364, 0.631781, 0.174008,
		0.592370, 0.771854, -0.230952,
		36.734432, 35.094475, 41.665634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858074, 34.972347, 41.369419>,  <36.319771, 34.554176, 41.827301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858074, 34.972347, 41.369419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234493, 35.089241, 41.301266>,  <36.460346, 35.159378, 41.260376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234493, 35.089241, 41.301266>,  <35.858074, 34.972347, 41.369419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234493, 35.089241, 41.301266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184129, 0.019992, -0.982699,
		-0.283772, 0.956138, 0.072622,
		0.941047, 0.292234, -0.170380,
		36.516808, 35.176910, 41.250153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743935, 35.603897, 41.019997>,  <35.858074, 34.972347, 41.369419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743935, 35.603897, 41.019997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109543, 35.463928, 40.937897>,  <36.328907, 35.379948, 40.888638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109543, 35.463928, 40.937897>,  <35.743935, 35.603897, 41.019997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109543, 35.463928, 40.937897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231421, -0.034206, -0.972252,
		0.333191, 0.936154, -0.112244,
		0.914018, -0.349921, -0.205248,
		36.383747, 35.358952, 40.876324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804783, 35.865368, 40.417419>,  <35.743935, 35.603897, 41.019997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804783, 35.865368, 40.417419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086136, 35.581520, 40.433865>,  <36.254948, 35.411213, 40.443733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086136, 35.581520, 40.433865>,  <35.804783, 35.865368, 40.417419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086136, 35.581520, 40.433865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121222, -0.176752, -0.976762,
		0.700396, 0.682055, -0.210346,
		0.703385, -0.709619, 0.041117,
		36.297150, 35.368633, 40.446201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401661, 36.122639, 40.069016>,  <35.804783, 35.865368, 40.417419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401661, 36.122639, 40.069016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401516, 35.722767, 40.079189>,  <36.401428, 35.482845, 40.085293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401516, 35.722767, 40.079189>,  <36.401661, 36.122639, 40.069016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401516, 35.722767, 40.079189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169396, -0.025005, -0.985231,
		0.985548, -0.004664, -0.169332,
		-0.000361, -0.999677, 0.025434,
		36.401409, 35.422863, 40.086819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727428, 35.941666, 39.438526>,  <36.401661, 36.122639, 40.069016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727428, 35.941666, 39.438526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542427, 35.596130, 39.518406>,  <36.431427, 35.388809, 39.566334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542427, 35.596130, 39.518406>,  <36.727428, 35.941666, 39.438526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542427, 35.596130, 39.518406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120197, -0.162068, -0.979432,
		0.878431, -0.476996, -0.028873,
		-0.462506, -0.863834, 0.199699,
		36.403675, 35.336979, 39.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870094, 35.388870, 38.899570>,  <36.727428, 35.941666, 39.438526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870094, 35.388870, 38.899570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523731, 35.251137, 39.044697>,  <36.315914, 35.168499, 39.131771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523731, 35.251137, 39.044697>,  <36.870094, 35.388870, 38.899570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523731, 35.251137, 39.044697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340800, -0.124799, -0.931816,
		0.366132, -0.930517, -0.009283,
		-0.865911, -0.344331, 0.362813,
		36.263958, 35.147839, 39.153542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188576, 35.584671, 38.851200>,  <36.870094, 35.388870, 38.899570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188576, 35.584671, 38.851200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094780, 35.973442, 38.858875>,  <36.038502, 36.206703, 38.863480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094780, 35.973442, 38.858875>,  <36.188576, 35.584671, 38.851200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094780, 35.973442, 38.858875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949500, -0.224757, -0.218938,
		-0.208477, -0.069567, 0.975550,
		-0.234492, 0.971928, 0.019197,
		36.024433, 36.265022, 38.864632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.759747, 36.815567, 46.987206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430119, 36.918709, 46.785446>,  <38.232342, 36.980595, 46.664391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430119, 36.918709, 46.785446>,  <38.759747, 36.815567, 46.987206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430119, 36.918709, 46.785446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201953, -0.698178, -0.686850,
		-0.529267, -0.667878, 0.523274,
		-0.824070, 0.257851, -0.504402,
		38.182899, 36.996063, 46.634125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417049, 36.188705, 46.728745>,  <38.759747, 36.815567, 46.987206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417049, 36.188705, 46.728745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252842, 36.476685, 46.504906>,  <38.154316, 36.649471, 46.370602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252842, 36.476685, 46.504906>,  <38.417049, 36.188705, 46.728745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252842, 36.476685, 46.504906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038151, -0.599591, -0.799397,
		-0.911054, -0.349516, 0.218676,
		-0.410519, 0.719951, -0.559594,
		38.129688, 36.692669, 46.337029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069107, 35.811119, 46.292824>,  <38.417049, 36.188705, 46.728745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069107, 35.811119, 46.292824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097385, 36.165096, 46.108704>,  <38.114353, 36.377483, 45.998230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097385, 36.165096, 46.108704>,  <38.069107, 35.811119, 46.292824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097385, 36.165096, 46.108704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135184, -0.448701, -0.883398,
		-0.988295, 0.124679, 0.087908,
		0.070697, 0.884942, -0.460304,
		38.118595, 36.430580, 45.970612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305050, 35.843319, 45.872669>,  <38.069107, 35.811119, 46.292824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305050, 35.843319, 45.872669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.562351, 36.114590, 45.730515>,  <37.716732, 36.277351, 45.645222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.562351, 36.114590, 45.730515>,  <37.305050, 35.843319, 45.872669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562351, 36.114590, 45.730515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219777, -0.281082, -0.934179,
		-0.733430, 0.679023, -0.031761,
		0.643256, 0.678175, -0.355387,
		37.755329, 36.318043, 45.623898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946423, 36.253090, 45.391304>,  <37.305050, 35.843319, 45.872669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946423, 36.253090, 45.391304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328594, 36.257217, 45.273285>,  <37.557896, 36.259693, 45.202473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328594, 36.257217, 45.273285>,  <36.946423, 36.253090, 45.391304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328594, 36.257217, 45.273285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269139, -0.380324, -0.884827,
		-0.121348, 0.924796, -0.360593,
		0.955426, 0.010322, -0.295050,
		37.615223, 36.260315, 45.184769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953358, 36.740837, 44.813343>,  <36.946423, 36.253090, 45.391304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953358, 36.740837, 44.813343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276833, 36.509762, 44.768974>,  <37.470917, 36.371117, 44.742352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276833, 36.509762, 44.768974>,  <36.953358, 36.740837, 44.813343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276833, 36.509762, 44.768974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167929, -0.045998, -0.984725,
		0.563763, 0.814960, -0.134209,
		0.808685, -0.577689, -0.110924,
		37.519440, 36.336456, 44.735699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302933, 36.984386, 44.228432>,  <36.953358, 36.740837, 44.813343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302933, 36.984386, 44.228432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463902, 36.620480, 44.269176>,  <37.560482, 36.402134, 44.293621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463902, 36.620480, 44.269176>,  <37.302933, 36.984386, 44.228432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463902, 36.620480, 44.269176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152894, -0.176495, -0.972354,
		0.902597, 0.375721, -0.210124,
		0.402419, -0.909771, 0.101858,
		37.584629, 36.347549, 44.299732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779167, 36.943245, 43.687840>,  <37.302933, 36.984386, 44.228432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779167, 36.943245, 43.687840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688950, 36.567215, 43.790127>,  <37.634819, 36.341599, 43.851501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688950, 36.567215, 43.790127>,  <37.779167, 36.943245, 43.687840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688950, 36.567215, 43.790127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309620, -0.179711, -0.933723,
		0.923725, -0.289768, -0.250534,
		-0.225540, -0.940074, 0.255722,
		37.621288, 36.285194, 43.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131489, 36.621197, 43.209591>,  <37.779167, 36.943245, 43.687840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131489, 36.621197, 43.209591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855976, 36.354019, 43.322319>,  <37.690666, 36.193710, 43.389954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855976, 36.354019, 43.322319>,  <38.131489, 36.621197, 43.209591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855976, 36.354019, 43.322319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157666, -0.241413, -0.957529,
		0.707615, -0.703963, 0.060968,
		-0.688784, -0.667949, 0.281818,
		37.649342, 36.153633, 43.406864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902115, 36.409084, 43.136890>,  <38.131489, 36.621197, 43.209591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902115, 36.409084, 43.136890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164715, 36.670746, 42.986645>,  <39.322277, 36.827744, 42.896500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164715, 36.670746, 42.986645>,  <38.902115, 36.409084, 43.136890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164715, 36.670746, 42.986645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067133, 0.445300, 0.892861,
		0.751332, -0.611381, 0.248425,
		0.656502, 0.654158, -0.375612,
		39.361664, 36.866993, 42.873962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390953, 36.470951, 43.704269>,  <38.902115, 36.409084, 43.136890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390953, 36.470951, 43.704269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.476032, 36.798840, 43.491547>,  <39.527081, 36.995571, 43.363911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.476032, 36.798840, 43.491547>,  <39.390953, 36.470951, 43.704269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476032, 36.798840, 43.491547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446769, 0.402454, 0.799017,
		0.868998, -0.407544, -0.280625,
		0.212696, 0.819719, -0.531810,
		39.539841, 37.044754, 43.332005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116230, 36.661030, 43.814922>,  <39.390953, 36.470951, 43.704269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116230, 36.661030, 43.814922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928173, 36.997139, 43.706913>,  <39.815338, 37.198803, 43.642109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928173, 36.997139, 43.706913>,  <40.116230, 36.661030, 43.814922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928173, 36.997139, 43.706913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501304, 0.506032, 0.701873,
		0.726403, 0.194616, -0.659138,
		-0.470141, 0.840271, -0.270021,
		39.787132, 37.249222, 43.625908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548817, 37.118114, 43.546165>,  <40.116230, 36.661030, 43.814922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548817, 37.118114, 43.546165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260494, 37.387447, 43.611954>,  <40.087502, 37.549049, 43.651428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260494, 37.387447, 43.611954>,  <40.548817, 37.118114, 43.546165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260494, 37.387447, 43.611954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621311, 0.522480, 0.583941,
		0.307256, 0.523098, -0.794960,
		-0.720810, 0.673337, 0.164472,
		40.044250, 37.589447, 43.661297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887142, 37.748173, 43.479328>,  <40.548817, 37.118114, 43.546165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887142, 37.748173, 43.479328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.552036, 37.837978, 43.678421>,  <40.350971, 37.891861, 43.797878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.552036, 37.837978, 43.678421>,  <40.887142, 37.748173, 43.479328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552036, 37.837978, 43.678421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486437, 0.720961, 0.493552,
		-0.248035, 0.655597, -0.713211,
		-0.837769, 0.224515, 0.497731,
		40.300705, 37.905334, 43.827740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979046, 38.457977, 43.611313>,  <40.887142, 37.748173, 43.479328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979046, 38.457977, 43.611313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698116, 38.347691, 43.873829>,  <40.529556, 38.281517, 44.031338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698116, 38.347691, 43.873829>,  <40.979046, 38.457977, 43.611313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698116, 38.347691, 43.873829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398605, 0.611534, 0.683477,
		-0.589791, 0.741624, -0.319594,
		-0.702326, -0.275716, 0.656292,
		40.487419, 38.264977, 44.070717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785156, 39.124065, 43.912201>,  <40.979046, 38.457977, 43.611313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785156, 39.124065, 43.912201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643955, 38.831482, 44.145561>,  <40.559235, 38.655933, 44.285580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643955, 38.831482, 44.145561>,  <40.785156, 39.124065, 43.912201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643955, 38.831482, 44.145561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063987, 0.603213, 0.795010,
		-0.933432, 0.317971, -0.166132,
		-0.353003, -0.731457, 0.583404,
		40.538055, 38.612045, 44.320583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222015, 39.426834, 44.317257>,  <40.785156, 39.124065, 43.912201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222015, 39.426834, 44.317257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.399952, 39.128746, 44.515961>,  <40.506714, 38.949894, 44.635181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.399952, 39.128746, 44.515961>,  <40.222015, 39.426834, 44.317257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399952, 39.128746, 44.515961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005280, 0.552465, 0.833520,
		-0.895593, -0.373409, 0.241826,
		0.444844, -0.745217, 0.496755,
		40.533405, 38.905182, 44.664986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920341, 39.320236, 44.971260>,  <40.222015, 39.426834, 44.317257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920341, 39.320236, 44.971260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261227, 39.119919, 45.031834>,  <40.465759, 38.999729, 45.068176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261227, 39.119919, 45.031834>,  <39.920341, 39.320236, 44.971260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261227, 39.119919, 45.031834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181949, 0.555062, 0.811665,
		-0.490532, -0.664162, 0.564152,
		0.852216, -0.500795, 0.151432,
		40.516891, 38.969681, 45.077263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800945, 39.010174, 45.656914>,  <39.920341, 39.320236, 44.971260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800945, 39.010174, 45.656914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.193359, 39.009872, 45.579380>,  <40.428806, 39.009693, 45.532860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.193359, 39.009872, 45.579380>,  <39.800945, 39.010174, 45.656914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193359, 39.009872, 45.579380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184320, 0.313056, 0.931677,
		0.059980, -0.949734, 0.307258,
		0.981034, -0.000752, -0.193832,
		40.487671, 39.009647, 45.521229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065540, 38.984791, 46.294514>,  <39.800945, 39.010174, 45.656914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065540, 38.984791, 46.294514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.392868, 39.086899, 46.088528>,  <40.589264, 39.148163, 45.964935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.392868, 39.086899, 46.088528>,  <40.065540, 38.984791, 46.294514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392868, 39.086899, 46.088528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349503, 0.490275, 0.798422,
		0.456288, -0.833347, 0.311984,
		0.818321, 0.255271, -0.514964,
		40.638363, 39.163479, 45.934040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602848, 38.913754, 46.802322>,  <40.065540, 38.984791, 46.294514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602848, 38.913754, 46.802322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.752045, 39.152214, 46.517933>,  <40.841564, 39.295292, 46.347301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.752045, 39.152214, 46.517933>,  <40.602848, 38.913754, 46.802322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752045, 39.152214, 46.517933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405004, 0.584802, 0.702835,
		0.834775, -0.550097, -0.023319,
		0.372990, 0.596154, -0.710970,
		40.863941, 39.331059, 46.304642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314728, 39.035065, 46.948509>,  <40.602848, 38.913754, 46.802322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314728, 39.035065, 46.948509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191181, 39.330303, 46.708569>,  <41.117054, 39.507446, 46.564606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191181, 39.330303, 46.708569>,  <41.314728, 39.035065, 46.948509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191181, 39.330303, 46.708569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411597, 0.672300, 0.615304,
		0.857432, -0.056852, -0.511447,
		-0.308865, 0.738092, -0.599852,
		41.098522, 39.551731, 46.528614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859528, 39.560062, 47.011585>,  <41.314728, 39.035065, 46.948509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859528, 39.560062, 47.011585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527515, 39.754719, 46.902607>,  <41.328308, 39.871513, 46.837219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527515, 39.754719, 46.902607>,  <41.859528, 39.560062, 47.011585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527515, 39.754719, 46.902607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254865, 0.765482, 0.590831,
		0.496073, 0.420973, -0.759403,
		-0.830034, 0.486640, -0.272444,
		41.278507, 39.900711, 46.820873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.726799, 42.233189, 46.209488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994759, 42.005417, 46.400059>,  <33.155533, 41.868752, 46.514400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994759, 42.005417, 46.400059>,  <32.726799, 42.233189, 46.209488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994759, 42.005417, 46.400059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446175, -0.204147, -0.871351,
		0.593436, 0.796286, 0.117309,
		0.669896, -0.569432, 0.476431,
		33.195728, 41.834587, 46.542988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498890, 42.378494, 46.008179>,  <32.726799, 42.233189, 46.209488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498890, 42.378494, 46.008179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486073, 42.002979, 46.145378>,  <33.478382, 41.777668, 46.227695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486073, 42.002979, 46.145378>,  <33.498890, 42.378494, 46.008179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486073, 42.002979, 46.145378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372832, -0.329630, -0.867375,
		0.927345, 0.100086, 0.360573,
		-0.032043, -0.938790, 0.342997,
		33.476460, 41.721344, 46.248276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088097, 42.051567, 45.717232>,  <33.498890, 42.378494, 46.008179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088097, 42.051567, 45.717232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870392, 41.732494, 45.821144>,  <33.739769, 41.541050, 45.883492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870392, 41.732494, 45.821144>,  <34.088097, 42.051567, 45.717232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870392, 41.732494, 45.821144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086433, -0.361337, -0.928420,
		0.834451, -0.482850, 0.265608,
		-0.544262, -0.797678, 0.259784,
		33.707111, 41.493191, 45.899078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435841, 41.522243, 45.413567>,  <34.088097, 42.051567, 45.717232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435841, 41.522243, 45.413567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067501, 41.378506, 45.474106>,  <33.846497, 41.292263, 45.510429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067501, 41.378506, 45.474106>,  <34.435841, 41.522243, 45.413567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067501, 41.378506, 45.474106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037437, -0.467835, -0.883023,
		0.388117, -0.807465, 0.444259,
		-0.920850, -0.359347, 0.151345,
		33.791245, 41.270702, 45.519508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480301, 40.783691, 45.268627>,  <34.435841, 41.522243, 45.413567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480301, 40.783691, 45.268627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.097115, 40.887554, 45.219826>,  <33.867203, 40.949871, 45.190544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.097115, 40.887554, 45.219826>,  <34.480301, 40.783691, 45.268627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097115, 40.887554, 45.219826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014894, -0.379674, -0.925000,
		-0.286499, -0.887935, 0.359847,
		-0.957965, 0.259652, -0.122001,
		33.809727, 40.965450, 45.183224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151936, 40.189774, 45.032112>,  <34.480301, 40.783691, 45.268627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151936, 40.189774, 45.032112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914143, 40.496037, 44.933846>,  <33.771465, 40.679794, 44.874886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914143, 40.496037, 44.933846>,  <34.151936, 40.189774, 45.032112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914143, 40.496037, 44.933846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020087, -0.319562, -0.947353,
		-0.803858, -0.558250, 0.205354,
		-0.594482, 0.765662, -0.245669,
		33.735798, 40.725735, 44.860146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582142, 39.892342, 44.586979>,  <34.151936, 40.189774, 45.032112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582142, 39.892342, 44.586979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553635, 40.286770, 44.526871>,  <33.536530, 40.523426, 44.490807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553635, 40.286770, 44.526871>,  <33.582142, 39.892342, 44.586979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553635, 40.286770, 44.526871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287659, -0.164570, -0.943488,
		-0.955077, -0.024017, 0.295382,
		-0.071271, 0.986073, -0.150268,
		33.532253, 40.582592, 44.481789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987053, 39.956688, 44.195541>,  <33.582142, 39.892342, 44.586979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987053, 39.956688, 44.195541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239395, 40.264549, 44.156231>,  <33.390800, 40.449265, 44.132645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239395, 40.264549, 44.156231>,  <32.987053, 39.956688, 44.195541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239395, 40.264549, 44.156231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032146, -0.100624, -0.994405,
		-0.775234, 0.630485, -0.038737,
		0.630855, 0.769652, -0.098275,
		33.428650, 40.495445, 44.126747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634995, 40.340992, 43.785709>,  <32.987053, 39.956688, 44.195541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634995, 40.340992, 43.785709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014610, 40.461597, 43.749008>,  <33.242378, 40.533962, 43.726986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014610, 40.461597, 43.749008>,  <32.634995, 40.340992, 43.785709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014610, 40.461597, 43.749008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086585, -0.030495, -0.995778,
		-0.303038, 0.952974, -0.002835,
		0.949037, 0.301514, -0.091755,
		33.299320, 40.552052, 43.721481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642174, 40.809921, 43.200405>,  <32.634995, 40.340992, 43.785709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642174, 40.809921, 43.200405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.004631, 40.648540, 43.251213>,  <33.222103, 40.551712, 43.281696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.004631, 40.648540, 43.251213>,  <32.642174, 40.809921, 43.200405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004631, 40.648540, 43.251213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120640, -0.041310, -0.991836,
		0.405408, 0.914067, 0.011240,
		0.906141, -0.403454, 0.127020,
		33.276474, 40.527504, 43.289318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890015, 40.979465, 42.598850>,  <32.642174, 40.809921, 43.200405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890015, 40.979465, 42.598850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150265, 40.722309, 42.760532>,  <33.306416, 40.568016, 42.857540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150265, 40.722309, 42.760532>,  <32.890015, 40.979465, 42.598850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150265, 40.722309, 42.760532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327161, -0.243048, -0.913177,
		0.685316, 0.726373, 0.052197,
		0.650621, -0.642892, 0.404206,
		33.345451, 40.529442, 42.881794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504402, 41.075756, 42.210144>,  <32.890015, 40.979465, 42.598850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504402, 41.075756, 42.210144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541515, 40.708717, 42.364754>,  <33.563786, 40.488495, 42.457520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541515, 40.708717, 42.364754>,  <33.504402, 41.075756, 42.210144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541515, 40.708717, 42.364754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097360, -0.377975, -0.920682,
		0.990915, 0.123059, 0.054266,
		0.092787, -0.917601, 0.386522,
		33.569351, 40.433437, 42.480709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107239, 40.819855, 41.840073>,  <33.504402, 41.075756, 42.210144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107239, 40.819855, 41.840073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.931179, 40.499523, 42.002522>,  <33.825542, 40.307323, 42.099991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.931179, 40.499523, 42.002522>,  <34.107239, 40.819855, 41.840073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931179, 40.499523, 42.002522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178927, -0.521440, -0.834317,
		0.879916, -0.294560, 0.372803,
		-0.440151, -0.800834, 0.406119,
		33.799133, 40.259274, 42.124359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535206, 40.167511, 41.732300>,  <34.107239, 40.819855, 41.840073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535206, 40.167511, 41.732300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171101, 40.006832, 41.772415>,  <33.952637, 39.910423, 41.796486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171101, 40.006832, 41.772415>,  <34.535206, 40.167511, 41.732300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171101, 40.006832, 41.772415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103554, -0.455424, -0.884232,
		0.400871, -0.794498, 0.456153,
		-0.910263, -0.401700, 0.100293,
		33.898022, 39.886322, 41.802502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278923, 39.896980, 41.922863>,  <34.535206, 40.167511, 41.732300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278923, 39.896980, 41.922863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491798, 40.133816, 41.680805>,  <35.619522, 40.275917, 41.535568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491798, 40.133816, 41.680805>,  <35.278923, 39.896980, 41.922863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491798, 40.133816, 41.680805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266974, 0.560944, 0.783624,
		0.803432, -0.578593, 0.140453,
		0.532186, 0.592092, -0.605150,
		35.651455, 40.311443, 41.499260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862831, 40.020836, 42.330292>,  <35.278923, 39.896980, 41.922863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862831, 40.020836, 42.330292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800365, 40.305576, 42.056393>,  <35.762886, 40.476421, 41.892052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800365, 40.305576, 42.056393>,  <35.862831, 40.020836, 42.330292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800365, 40.305576, 42.056393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118673, 0.701754, 0.702466,
		0.980576, 0.028439, -0.194067,
		-0.156165, 0.711851, -0.684748,
		35.753517, 40.519131, 41.850967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412487, 40.470722, 42.431458>,  <35.862831, 40.020836, 42.330292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412487, 40.470722, 42.431458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185959, 40.712002, 42.206802>,  <36.050041, 40.856770, 42.072010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185959, 40.712002, 42.206802>,  <36.412487, 40.470722, 42.431458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185959, 40.712002, 42.206802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106653, 0.729347, 0.675780,
		0.817256, 0.322808, -0.477376,
		-0.566319, 0.603199, -0.561635,
		36.016064, 40.892960, 42.038311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699673, 41.171638, 42.453056>,  <36.412487, 40.470722, 42.431458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699673, 41.171638, 42.453056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328476, 41.237122, 42.319176>,  <36.105759, 41.276413, 42.238846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328476, 41.237122, 42.319176>,  <36.699673, 41.171638, 42.453056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328476, 41.237122, 42.319176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064469, 0.814199, 0.576996,
		0.366975, 0.557027, -0.745018,
		-0.927994, 0.163712, -0.334701,
		36.050079, 41.286236, 42.218765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691055, 41.897038, 42.251556>,  <36.699673, 41.171638, 42.453056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691055, 41.897038, 42.251556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320686, 41.771469, 42.335579>,  <36.098465, 41.696129, 42.385994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320686, 41.771469, 42.335579>,  <36.691055, 41.897038, 42.251556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320686, 41.771469, 42.335579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135821, 0.795635, 0.590354,
		-0.352458, 0.518090, -0.779331,
		-0.925919, -0.313924, 0.210061,
		36.042912, 41.677292, 42.398598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319698, 42.519154, 42.415401>,  <36.691055, 41.897038, 42.251556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319698, 42.519154, 42.415401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074921, 42.237942, 42.560326>,  <35.928055, 42.069214, 42.647282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074921, 42.237942, 42.560326>,  <36.319698, 42.519154, 42.415401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074921, 42.237942, 42.560326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291684, 0.626420, 0.722854,
		-0.735147, 0.336669, -0.588399,
		-0.611948, -0.703030, 0.362310,
		35.891335, 42.027031, 42.669018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771439, 42.873981, 42.609509>,  <36.319698, 42.519154, 42.415401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771439, 42.873981, 42.609509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748222, 42.533112, 42.817520>,  <35.734295, 42.328590, 42.942329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748222, 42.533112, 42.817520>,  <35.771439, 42.873981, 42.609509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748222, 42.533112, 42.817520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329124, 0.508122, 0.795921,
		-0.942501, -0.124963, -0.309960,
		-0.058037, -0.852172, 0.520034,
		35.730812, 42.277458, 42.973530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200260, 42.904716, 43.088848>,  <35.771439, 42.873981, 42.609509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200260, 42.904716, 43.088848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372677, 42.599018, 43.280739>,  <35.476128, 42.415600, 43.395874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372677, 42.599018, 43.280739>,  <35.200260, 42.904716, 43.088848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372677, 42.599018, 43.280739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281455, 0.391252, 0.876188,
		-0.857313, -0.512695, -0.046453,
		0.431042, -0.764242, 0.479726,
		35.501991, 42.369747, 43.424656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618465, 42.612759, 43.492630>,  <35.200260, 42.904716, 43.088848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618465, 42.612759, 43.492630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981434, 42.514107, 43.628719>,  <35.199215, 42.454914, 43.710373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981434, 42.514107, 43.628719>,  <34.618465, 42.612759, 43.492630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981434, 42.514107, 43.628719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280386, 0.247679, 0.927383,
		-0.312991, -0.936924, 0.155597,
		0.907425, -0.246635, 0.340222,
		35.253662, 42.440117, 43.730785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563839, 42.371284, 44.232899>,  <34.618465, 42.612759, 43.492630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563839, 42.371284, 44.232899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953609, 42.460140, 44.219299>,  <35.187469, 42.513454, 44.211140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953609, 42.460140, 44.219299>,  <34.563839, 42.371284, 44.232899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953609, 42.460140, 44.219299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031609, 0.285246, 0.957933,
		0.222490, -0.932357, 0.284971,
		0.974423, 0.222138, -0.033993,
		35.245937, 42.526783, 44.209103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894562, 42.005032, 44.877304>,  <34.563839, 42.371284, 44.232899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894562, 42.005032, 44.877304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130089, 42.315392, 44.786732>,  <35.271404, 42.501606, 44.732388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130089, 42.315392, 44.786732>,  <34.894562, 42.005032, 44.877304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130089, 42.315392, 44.786732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122758, 0.362747, 0.923767,
		0.798886, -0.516137, 0.308841,
		0.588822, 0.775898, -0.226434,
		35.306736, 42.548161, 44.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450768, 41.952290, 45.468666>,  <34.894562, 42.005032, 44.877304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450768, 41.952290, 45.468666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.498642, 42.311325, 45.298954>,  <35.527367, 42.526745, 45.197128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.498642, 42.311325, 45.298954>,  <35.450768, 41.952290, 45.468666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498642, 42.311325, 45.298954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244585, 0.387521, 0.888823,
		0.962213, -0.210152, -0.173155,
		0.119687, 0.897588, -0.424278,
		35.534550, 42.580601, 45.171669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060555, 42.219353, 45.795994>,  <35.450768, 41.952290, 45.468666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060555, 42.219353, 45.795994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887325, 42.543362, 45.637852>,  <35.783386, 42.737766, 45.542965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887325, 42.543362, 45.637852>,  <36.060555, 42.219353, 45.795994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887325, 42.543362, 45.637852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149047, 0.496942, 0.854888,
		0.888949, 0.311306, -0.335945,
		-0.433077, 0.810023, -0.395357,
		35.757401, 42.786369, 45.519245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533493, 42.727547, 45.971592>,  <36.060555, 42.219353, 45.795994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533493, 42.727547, 45.971592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180298, 42.906609, 45.915112>,  <35.968380, 43.014046, 45.881222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180298, 42.906609, 45.915112>,  <36.533493, 42.727547, 45.971592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180298, 42.906609, 45.915112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092135, 0.460263, 0.882989,
		0.460263, 0.766659, -0.447651,
		-0.882989, 0.447651, -0.141206,
		35.915401, 43.040905, 45.872749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134811, 42.958660, 45.483772>,  <36.533493, 42.727547, 45.971592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134811, 42.958660, 45.483772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524563, 43.039707, 45.522839>,  <37.758411, 43.088337, 45.546276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524563, 43.039707, 45.522839>,  <37.134811, 42.958660, 45.483772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524563, 43.039707, 45.522839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183784, -0.466865, -0.865021,
		-0.129673, 0.860804, -0.492140,
		0.974376, 0.202617, 0.097662,
		37.816875, 43.100491, 45.552135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294792, 43.285355, 44.913280>,  <37.134811, 42.958660, 45.483772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294792, 43.285355, 44.913280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641884, 43.147682, 45.056721>,  <37.850140, 43.065079, 45.142784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641884, 43.147682, 45.056721>,  <37.294792, 43.285355, 44.913280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641884, 43.147682, 45.056721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183219, -0.449168, -0.874459,
		0.462040, 0.824494, -0.326695,
		0.867727, -0.344178, 0.358596,
		37.902203, 43.044430, 45.164299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687889, 43.584995, 44.418411>,  <37.294792, 43.285355, 44.913280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687889, 43.584995, 44.418411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858101, 43.283623, 44.618912>,  <37.960228, 43.102798, 44.739212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858101, 43.283623, 44.618912>,  <37.687889, 43.584995, 44.418411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858101, 43.283623, 44.618912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354538, -0.370825, -0.858366,
		0.832601, 0.542977, 0.109323,
		0.425533, -0.753435, 0.501255,
		37.985760, 43.057590, 44.769287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457760, 43.631405, 44.311085>,  <37.687889, 43.584995, 44.418411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457760, 43.631405, 44.311085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334824, 43.262001, 44.402878>,  <38.261063, 43.040359, 44.457954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334824, 43.262001, 44.402878>,  <38.457760, 43.631405, 44.311085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334824, 43.262001, 44.402878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280753, -0.318418, -0.905421,
		0.909240, -0.213849, 0.357143,
		-0.307345, -0.923514, 0.229480,
		38.242619, 42.984947, 44.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714787, 43.325230, 43.794979>,  <38.457760, 43.631405, 44.311085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714787, 43.325230, 43.794979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494190, 43.026264, 43.943161>,  <38.361832, 42.846886, 44.032070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494190, 43.026264, 43.943161>,  <38.714787, 43.325230, 43.794979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494190, 43.026264, 43.943161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159993, -0.530620, -0.832373,
		0.818695, -0.399775, 0.412212,
		-0.551490, -0.747411, 0.370454,
		38.328743, 42.802040, 44.054298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118690, 42.738094, 43.606686>,  <38.714787, 43.325230, 43.794979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118690, 42.738094, 43.606686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739723, 42.622047, 43.660702>,  <38.512344, 42.552418, 43.693111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739723, 42.622047, 43.660702>,  <39.118690, 42.738094, 43.606686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739723, 42.622047, 43.660702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042682, -0.532774, -0.845181,
		0.317146, -0.794974, 0.517141,
		-0.947416, -0.290118, 0.135036,
		38.455498, 42.535011, 43.701214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158367, 42.076427, 43.586849>,  <39.118690, 42.738094, 43.606686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158367, 42.076427, 43.586849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776192, 42.163975, 43.507618>,  <38.546886, 42.216503, 43.460079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776192, 42.163975, 43.507618>,  <39.158367, 42.076427, 43.586849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776192, 42.163975, 43.507618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063466, -0.503023, -0.861939,
		-0.288287, -0.836101, 0.466717,
		-0.955438, 0.218865, -0.198079,
		38.489559, 42.229633, 43.448193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722069, 41.411949, 43.384247>,  <39.158367, 42.076427, 43.586849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722069, 41.411949, 43.384247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523415, 41.727703, 43.239899>,  <38.404221, 41.917156, 43.153290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523415, 41.727703, 43.239899>,  <38.722069, 41.411949, 43.384247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523415, 41.727703, 43.239899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053087, -0.442621, -0.895136,
		-0.866334, -0.425399, 0.261728,
		-0.496636, 0.789381, -0.360875,
		38.374424, 41.964516, 43.131638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362011, 41.122494, 42.898438>,  <38.722069, 41.411949, 43.384247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362011, 41.122494, 42.898438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.337177, 41.508739, 42.797459>,  <38.322277, 41.740486, 42.736874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.337177, 41.508739, 42.797459>,  <38.362011, 41.122494, 42.898438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337177, 41.508739, 42.797459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035914, -0.254930, -0.966292,
		-0.997424, -0.050929, 0.050507,
		-0.062088, 0.965618, -0.252444,
		38.318550, 41.798424, 42.721725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856060, 41.121677, 42.413319>,  <38.362011, 41.122494, 42.898438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856060, 41.121677, 42.413319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080006, 41.445503, 42.342709>,  <38.214371, 41.639797, 42.300343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080006, 41.445503, 42.342709>,  <37.856060, 41.121677, 42.413319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080006, 41.445503, 42.342709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042469, -0.240801, -0.969645,
		-0.827498, 0.535368, -0.169197,
		0.559860, 0.809565, -0.176526,
		38.247963, 41.688374, 42.289749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547276, 41.382229, 41.741264>,  <37.856060, 41.121677, 42.413319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547276, 41.382229, 41.741264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921150, 41.508511, 41.806606>,  <38.145477, 41.584278, 41.845810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921150, 41.508511, 41.806606>,  <37.547276, 41.382229, 41.741264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921150, 41.508511, 41.806606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251931, -0.264160, -0.930994,
		-0.250765, 0.911346, -0.326443,
		0.934691, 0.315702, 0.163354,
		38.201557, 41.603222, 41.855614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702480, 41.787476, 41.162376>,  <37.547276, 41.382229, 41.741264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702480, 41.787476, 41.162376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.058598, 41.687126, 41.314392>,  <38.272270, 41.626915, 41.405602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.058598, 41.687126, 41.314392>,  <37.702480, 41.787476, 41.162376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058598, 41.687126, 41.314392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269812, -0.381694, -0.884031,
		0.366841, 0.889591, -0.272132,
		0.890297, -0.250875, 0.380043,
		38.325687, 41.611862, 41.428406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116402, 41.956875, 40.599804>,  <37.702480, 41.787476, 41.162376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116402, 41.956875, 40.599804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348351, 41.725006, 40.828796>,  <38.487518, 41.585884, 40.966190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348351, 41.725006, 40.828796>,  <38.116402, 41.956875, 40.599804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348351, 41.725006, 40.828796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373017, -0.435804, -0.819105,
		0.724299, 0.688520, -0.036484,
		0.579870, -0.579668, 0.572482,
		38.522312, 41.551105, 41.000542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662121, 41.644077, 40.106956>,  <38.116402, 41.956875, 40.599804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662121, 41.644077, 40.106956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671211, 41.401123, 40.424587>,  <38.676666, 41.255348, 40.615166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671211, 41.401123, 40.424587>,  <38.662121, 41.644077, 40.106956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671211, 41.401123, 40.424587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307224, -0.751609, -0.583693,
		0.951366, 0.257224, 0.169525,
		0.022723, -0.607388, 0.794080,
		38.678028, 41.218906, 40.662811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.775284, 29.671206, 32.169628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.710791, 29.428493, 32.480965>,  <31.672094, 29.282866, 32.667767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.710791, 29.428493, 32.480965>,  <31.775284, 29.671206, 32.169628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710791, 29.428493, 32.480965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949373, 0.310817, 0.045647,
		-0.269621, -0.731581, -0.626174,
		-0.161231, -0.606780, 0.778346,
		31.662422, 29.246460, 32.714470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146509, 29.254725, 32.033321>,  <31.775284, 29.671206, 32.169628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146509, 29.254725, 32.033321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.233177, 29.302774, 32.420853>,  <31.285177, 29.331604, 32.653370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.233177, 29.302774, 32.420853>,  <31.146509, 29.254725, 32.033321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233177, 29.302774, 32.420853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927218, 0.335862, 0.165719,
		-0.305485, -0.934220, 0.184153,
		0.216668, 0.120125, 0.968827,
		31.298178, 29.338812, 32.711502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572832, 28.949474, 32.382149>,  <31.146509, 29.254725, 32.033321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572832, 28.949474, 32.382149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746986, 29.178823, 32.659763>,  <30.851479, 29.316433, 32.826332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746986, 29.178823, 32.659763>,  <30.572832, 28.949474, 32.382149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746986, 29.178823, 32.659763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883186, 0.421415, 0.205894,
		-0.174423, -0.702605, 0.689872,
		0.435384, 0.573372, 0.694035,
		30.877602, 29.350836, 32.867973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167046, 28.931246, 32.995602>,  <30.572832, 28.949474, 32.382149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167046, 28.931246, 32.995602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391304, 29.250467, 33.083954>,  <30.525860, 29.441999, 33.136967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391304, 29.250467, 33.083954>,  <30.167046, 28.931246, 32.995602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391304, 29.250467, 33.083954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820676, 0.499983, 0.276602,
		0.110305, -0.336349, 0.935255,
		0.560646, 0.798052, 0.220882,
		30.559498, 29.489883, 33.150219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069101, 29.110607, 33.614296>,  <30.167046, 28.931246, 32.995602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069101, 29.110607, 33.614296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204554, 29.455751, 33.464203>,  <30.285826, 29.662838, 33.374149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204554, 29.455751, 33.464203>,  <30.069101, 29.110607, 33.614296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204554, 29.455751, 33.464203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752136, 0.487847, 0.443054,
		0.565350, 0.132193, 0.814190,
		0.338631, 0.862862, -0.375231,
		30.306143, 29.714609, 33.351635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000217, 29.550205, 34.211044>,  <30.069101, 29.110607, 33.614296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000217, 29.550205, 34.211044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.010124, 29.789173, 33.890427>,  <30.016068, 29.932554, 33.698055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.010124, 29.789173, 33.890427>,  <30.000217, 29.550205, 34.211044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010124, 29.789173, 33.890427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595947, 0.652571, 0.467972,
		0.802642, 0.466089, 0.372193,
		0.024766, 0.597422, -0.801545,
		30.017553, 29.968399, 33.649963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102356, 30.233133, 34.489651>,  <30.000217, 29.550205, 34.211044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102356, 30.233133, 34.489651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.957878, 30.264404, 34.117970>,  <29.871191, 30.283167, 33.894958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.957878, 30.264404, 34.117970>,  <30.102356, 30.233133, 34.489651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957878, 30.264404, 34.117970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513176, 0.815344, 0.268076,
		0.778581, 0.573675, -0.254382,
		-0.361197, 0.078176, -0.929207,
		29.849520, 30.287857, 33.839207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967022, 30.969818, 34.393913>,  <30.102356, 30.233133, 34.489651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967022, 30.969818, 34.393913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756662, 30.803375, 34.097187>,  <29.630447, 30.703510, 33.919151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756662, 30.803375, 34.097187>,  <29.967022, 30.969818, 34.393913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756662, 30.803375, 34.097187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556748, 0.827759, -0.069615,
		0.643010, 0.376393, -0.666983,
		-0.525899, -0.416105, -0.741813,
		29.598892, 30.678543, 33.874641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971312, 31.371653, 33.836815>,  <29.967022, 30.969818, 34.393913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971312, 31.371653, 33.836815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646358, 31.164185, 33.730217>,  <29.451387, 31.039703, 33.666260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646358, 31.164185, 33.730217>,  <29.971312, 31.371653, 33.836815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646358, 31.164185, 33.730217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535079, 0.844704, -0.012884,
		0.231793, 0.132130, -0.963750,
		-0.812381, -0.518669, -0.266496,
		29.402645, 31.008583, 33.650269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635990, 31.762232, 33.333538>,  <29.971312, 31.371653, 33.836815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635990, 31.762232, 33.333538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383184, 31.514032, 33.519245>,  <29.231501, 31.365112, 33.630669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.383184, 31.514032, 33.519245>,  <29.635990, 31.762232, 33.333538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383184, 31.514032, 33.519245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628372, 0.760943, 0.161597,
		-0.453551, -0.189600, -0.870829,
		-0.632013, -0.620497, 0.464266,
		29.193581, 31.327883, 33.658524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997709, 31.851851, 33.024258>,  <29.635990, 31.762232, 33.333538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997709, 31.851851, 33.024258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904928, 31.692471, 33.379208>,  <28.849260, 31.596842, 33.592178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904928, 31.692471, 33.379208>,  <28.997709, 31.851851, 33.024258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904928, 31.692471, 33.379208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605429, 0.773155, 0.188910,
		-0.761350, -0.493425, -0.420569,
		-0.231952, -0.398451, 0.887375,
		28.835342, 31.572935, 33.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311045, 32.112919, 33.193790>,  <28.997709, 31.851851, 33.024258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311045, 32.112919, 33.193790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437801, 31.983732, 33.550503>,  <28.513855, 31.906219, 33.764530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437801, 31.983732, 33.550503>,  <28.311045, 32.112919, 33.193790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437801, 31.983732, 33.550503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580638, 0.677396, 0.451657,
		-0.749959, -0.660928, 0.027134,
		0.316893, -0.322969, 0.891779,
		28.532869, 31.886841, 33.818035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744818, 32.056030, 33.583473>,  <28.311045, 32.112919, 33.193790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744818, 32.056030, 33.583473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019175, 32.084259, 33.873184>,  <28.183788, 32.101196, 34.047009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019175, 32.084259, 33.873184>,  <27.744818, 32.056030, 33.583473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019175, 32.084259, 33.873184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497842, 0.771432, 0.396290,
		-0.530760, -0.632386, 0.564254,
		0.685892, 0.070574, 0.724273,
		28.224941, 32.105431, 34.090466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338289, 32.194546, 34.093662>,  <27.744818, 32.056030, 33.583473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338289, 32.194546, 34.093662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.690516, 32.297596, 34.252773>,  <27.901852, 32.359425, 34.348240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.690516, 32.297596, 34.252773>,  <27.338289, 32.194546, 34.093662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690516, 32.297596, 34.252773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445799, 0.735103, 0.510771,
		-0.160823, -0.627099, 0.762157,
		0.880568, 0.257625, 0.397781,
		27.954685, 32.374882, 34.372108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249508, 32.349369, 34.847694>,  <27.338289, 32.194546, 34.093662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249508, 32.349369, 34.847694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568319, 32.556480, 34.723343>,  <27.759607, 32.680748, 34.648731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568319, 32.556480, 34.723343>,  <27.249508, 32.349369, 34.847694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568319, 32.556480, 34.723343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307822, 0.791153, 0.528509,
		0.519603, -0.325544, 0.789958,
		0.797031, 0.517782, -0.310876,
		27.807428, 32.711815, 34.630081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448565, 32.662991, 35.464375>,  <27.249508, 32.349369, 34.847694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448565, 32.662991, 35.464375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634510, 32.858994, 35.169407>,  <27.746077, 32.976597, 34.992424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634510, 32.858994, 35.169407>,  <27.448565, 32.662991, 35.464375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634510, 32.858994, 35.169407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260924, 0.871716, 0.414764,
		0.846060, -0.000400, 0.533087,
		0.464867, 0.490010, -0.737420,
		27.773970, 33.005997, 34.948181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794720, 33.244427, 35.863365>,  <27.448565, 32.662991, 35.464375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794720, 33.244427, 35.863365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753897, 33.319736, 35.472645>,  <27.729403, 33.364922, 35.238213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753897, 33.319736, 35.472645>,  <27.794720, 33.244427, 35.863365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753897, 33.319736, 35.472645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339381, 0.916425, 0.212099,
		0.935096, 0.353154, -0.029631,
		-0.102058, 0.188277, -0.976799,
		27.723280, 33.376221, 35.179604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029531, 33.954082, 35.773937>,  <27.794720, 33.244427, 35.863365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029531, 33.954082, 35.773937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829563, 33.870209, 35.437817>,  <27.709581, 33.819885, 35.236145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829563, 33.870209, 35.437817>,  <28.029531, 33.954082, 35.773937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829563, 33.870209, 35.437817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313472, 0.948273, -0.050136,
		0.807349, 0.238347, -0.539795,
		-0.499923, -0.209687, -0.840302,
		27.679586, 33.807304, 35.185726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301949, 34.375641, 35.218334>,  <28.029531, 33.954082, 35.773937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301949, 34.375641, 35.218334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915831, 34.275707, 35.187901>,  <27.684160, 34.215748, 35.169640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915831, 34.275707, 35.187901>,  <28.301949, 34.375641, 35.218334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915831, 34.275707, 35.187901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260245, 0.944605, 0.199982,
		0.021910, 0.212843, -0.976841,
		-0.965294, -0.249836, -0.076088,
		27.626242, 34.200756, 35.165073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632000, 34.915569, 35.693691>,  <28.301949, 34.375641, 35.218334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632000, 34.915569, 35.693691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347746, 35.168861, 35.571041>,  <28.177195, 35.320835, 35.497452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347746, 35.168861, 35.571041>,  <28.632000, 34.915569, 35.693691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347746, 35.168861, 35.571041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703004, -0.656440, 0.273626,
		-0.028015, 0.410008, 0.911651,
		-0.710634, 0.633229, -0.306628,
		28.134556, 35.358829, 35.479053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310600, 35.246502, 35.424210>,  <28.632000, 34.915569, 35.693691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310600, 35.246502, 35.424210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536217, 35.533840, 35.261318>,  <29.671587, 35.706245, 35.163582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536217, 35.533840, 35.261318>,  <29.310600, 35.246502, 35.424210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536217, 35.533840, 35.261318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152944, -0.393748, -0.906405,
		-0.811460, 0.573532, -0.112222,
		0.564040, 0.718348, -0.407229,
		29.705429, 35.749344, 35.139149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902828, 35.457737, 34.899361>,  <29.310600, 35.246502, 35.424210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902828, 35.457737, 34.899361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280535, 35.573235, 34.836132>,  <29.507158, 35.642532, 34.798195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280535, 35.573235, 34.836132>,  <28.902828, 35.457737, 34.899361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280535, 35.573235, 34.836132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063099, -0.312533, -0.947809,
		-0.323082, 0.904957, -0.276894,
		0.944265, 0.288748, -0.158075,
		29.563814, 35.659859, 34.788708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918550, 35.877590, 34.262489>,  <28.902828, 35.457737, 34.899361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918550, 35.877590, 34.262489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296003, 35.750572, 34.299862>,  <29.522474, 35.674362, 34.322285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296003, 35.750572, 34.299862>,  <28.918550, 35.877590, 34.262489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296003, 35.750572, 34.299862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059050, -0.439247, -0.896423,
		0.325693, 0.840375, -0.433238,
		0.943630, -0.317541, 0.093435,
		29.579092, 35.655312, 34.327892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173244, 35.941055, 33.615486>,  <28.918550, 35.877590, 34.262489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173244, 35.941055, 33.615486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457623, 35.714775, 33.782597>,  <29.628250, 35.579006, 33.882862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457623, 35.714775, 33.782597>,  <29.173244, 35.941055, 33.615486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457623, 35.714775, 33.782597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137040, -0.471229, -0.871300,
		0.689765, 0.676699, -0.257494,
		0.710946, -0.565705, 0.417772,
		29.670906, 35.545063, 33.907928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834284, 36.021538, 33.257614>,  <29.173244, 35.941055, 33.615486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834284, 36.021538, 33.257614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.839184, 35.672024, 33.452076>,  <29.842123, 35.462315, 33.568752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.839184, 35.672024, 33.452076>,  <29.834284, 36.021538, 33.257614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839184, 35.672024, 33.452076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281854, -0.463458, -0.840098,
		0.959379, 0.147316, 0.240603,
		0.012250, -0.873787, 0.486154,
		29.842859, 35.409889, 33.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481922, 35.738361, 33.074989>,  <29.834284, 36.021538, 33.257614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481922, 35.738361, 33.074989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.279453, 35.426628, 33.222736>,  <30.157972, 35.239590, 33.311382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.279453, 35.426628, 33.222736>,  <30.481922, 35.738361, 33.074989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279453, 35.426628, 33.222736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388110, -0.588301, -0.709417,
		0.770170, -0.215732, 0.600248,
		-0.506171, -0.779334, 0.369363,
		30.127602, 35.192829, 33.333546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932253, 35.316006, 33.241543>,  <30.481922, 35.738361, 33.074989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932253, 35.316006, 33.241543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.617905, 35.072121, 33.200241>,  <30.429296, 34.925789, 33.175461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.617905, 35.072121, 33.200241>,  <30.932253, 35.316006, 33.241543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617905, 35.072121, 33.200241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477563, -0.492310, -0.727712,
		0.392861, -0.621196, 0.678067,
		-0.785871, -0.609710, -0.103251,
		30.382143, 34.889206, 33.169266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161221, 34.642277, 33.378941>,  <30.932253, 35.316006, 33.241543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161221, 34.642277, 33.378941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.820343, 34.610809, 33.172031>,  <30.615816, 34.591927, 33.047886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.820343, 34.610809, 33.172031>,  <31.161221, 34.642277, 33.378941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820343, 34.610809, 33.172031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475108, -0.530482, -0.702041,
		-0.219175, -0.844037, 0.489452,
		-0.852194, -0.078673, -0.517277,
		30.564684, 34.587208, 33.016850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111032, 33.984680, 33.158287>,  <31.161221, 34.642277, 33.378941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111032, 33.984680, 33.158287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.900427, 34.178719, 32.879013>,  <30.774063, 34.295143, 32.711449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.900427, 34.178719, 32.879013>,  <31.111032, 33.984680, 33.158287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900427, 34.178719, 32.879013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481196, -0.506992, -0.715129,
		-0.700882, -0.712489, 0.033512,
		-0.526512, 0.485095, -0.698188,
		30.742474, 34.324245, 32.669556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010029, 33.444717, 32.730663>,  <31.111032, 33.984680, 33.158287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010029, 33.444717, 32.730663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.929056, 33.781231, 32.530159>,  <30.880472, 33.983139, 32.409855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.929056, 33.781231, 32.530159>,  <31.010029, 33.444717, 32.730663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929056, 33.781231, 32.530159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342872, -0.418576, -0.840971,
		-0.917311, -0.342110, -0.203719,
		-0.202433, 0.841282, -0.501264,
		30.868326, 34.033615, 32.379780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853771, 33.210846, 32.037277>,  <31.010029, 33.444717, 32.730663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853771, 33.210846, 32.037277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949667, 33.594490, 31.977097>,  <31.007204, 33.824677, 31.940989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949667, 33.594490, 31.977097>,  <30.853771, 33.210846, 32.037277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949667, 33.594490, 31.977097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574325, -0.265054, -0.774530,
		-0.782736, 0.099280, -0.614385,
		0.239741, 0.959109, -0.150448,
		31.021589, 33.882221, 31.931963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737579, 33.330181, 31.315781>,  <30.853771, 33.210846, 32.037277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737579, 33.330181, 31.315781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.970308, 33.625488, 31.452276>,  <31.109945, 33.802673, 31.534174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.970308, 33.625488, 31.452276>,  <30.737579, 33.330181, 31.315781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970308, 33.625488, 31.452276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697448, -0.237059, -0.676291,
		-0.418391, 0.631476, -0.652830,
		0.581821, 0.738269, 0.341238,
		31.144855, 33.846970, 31.554647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949905, 33.725952, 30.702652>,  <30.737579, 33.330181, 31.315781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949905, 33.725952, 30.702652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221889, 33.793243, 30.988127>,  <31.385080, 33.833618, 31.159412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221889, 33.793243, 30.988127>,  <30.949905, 33.725952, 30.702652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221889, 33.793243, 30.988127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721304, 0.021490, -0.692285,
		-0.131801, 0.985513, -0.106734,
		0.679962, 0.168231, 0.713687,
		31.425879, 33.843712, 31.202232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434309, 34.148117, 30.380056>,  <30.949905, 33.725952, 30.702652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434309, 34.148117, 30.380056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.626318, 33.997421, 30.696951>,  <31.741524, 33.907001, 30.887089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.626318, 33.997421, 30.696951>,  <31.434309, 34.148117, 30.380056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626318, 33.997421, 30.696951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827369, -0.105773, -0.551609,
		0.291613, 0.920259, 0.260933,
		0.480024, -0.376744, 0.792238,
		31.770325, 33.884399, 30.934622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188850, 34.460827, 30.222271>,  <31.434309, 34.148117, 30.380056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188850, 34.460827, 30.222271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226089, 34.201221, 30.524294>,  <32.248432, 34.045460, 30.705507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226089, 34.201221, 30.524294>,  <32.188850, 34.460827, 30.222271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226089, 34.201221, 30.524294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802774, -0.399665, -0.442517,
		0.588970, 0.647339, 0.483804,
		0.093100, -0.649015, 0.755058,
		32.254021, 34.006516, 30.750811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890656, 34.196182, 30.137968>,  <32.188850, 34.460827, 30.222271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890656, 34.196182, 30.137968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696594, 33.944653, 30.381018>,  <32.580158, 33.793736, 30.526848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696594, 33.944653, 30.381018>,  <32.890656, 34.196182, 30.137968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696594, 33.944653, 30.381018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517849, -0.766540, -0.379803,
		0.704596, 0.130393, 0.697526,
		-0.485158, -0.628820, 0.607624,
		32.551048, 33.756008, 30.563305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392555, 33.712158, 30.546804>,  <32.890656, 34.196182, 30.137968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392555, 33.712158, 30.546804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.060989, 33.489193, 30.565521>,  <32.862049, 33.355415, 30.576752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.060989, 33.489193, 30.565521>,  <33.392555, 33.712158, 30.546804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060989, 33.489193, 30.565521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541296, -0.820410, -0.184192,
		0.141059, -0.127351, 0.981776,
		-0.828916, -0.557413, 0.046792,
		32.812313, 33.321968, 30.579559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573994, 33.066048, 31.000797>,  <33.392555, 33.712158, 30.546804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573994, 33.066048, 31.000797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.249443, 32.983246, 30.782139>,  <33.054714, 32.933563, 30.650944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.249443, 32.983246, 30.782139>,  <33.573994, 33.066048, 31.000797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249443, 32.983246, 30.782139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390836, -0.887525, -0.244022,
		-0.434646, -0.411642, 0.801021,
		-0.811375, -0.207005, -0.546644,
		33.006031, 32.921146, 30.618145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463184, 32.363617, 31.114929>,  <33.573994, 33.066048, 31.000797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463184, 32.363617, 31.114929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.231155, 32.438015, 30.797712>,  <33.091938, 32.482655, 30.607382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.231155, 32.438015, 30.797712>,  <33.463184, 32.363617, 31.114929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231155, 32.438015, 30.797712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172306, -0.923532, -0.342637,
		-0.796129, -0.335402, 0.503670,
		-0.580076, 0.185997, -0.793042,
		33.057133, 32.493813, 30.559799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857380, 31.849527, 31.035732>,  <33.463184, 32.363617, 31.114929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857380, 31.849527, 31.035732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.939102, 31.986858, 30.669043>,  <32.988136, 32.069256, 30.449028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.939102, 31.986858, 30.669043>,  <32.857380, 31.849527, 31.035732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939102, 31.986858, 30.669043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108501, -0.938650, -0.327359,
		-0.972876, -0.032585, -0.229020,
		0.204303, 0.343329, -0.916725,
		33.000393, 32.089855, 30.394026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456474, 31.463640, 30.634426>,  <32.857380, 31.849527, 31.035732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456474, 31.463640, 30.634426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.730076, 31.625502, 30.391645>,  <32.894238, 31.722618, 30.245977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.730076, 31.625502, 30.391645>,  <32.456474, 31.463640, 30.634426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730076, 31.625502, 30.391645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133919, -0.887553, -0.440812,
		-0.717079, 0.220235, -0.661282,
		0.684005, 0.404655, -0.606952,
		32.935276, 31.746899, 30.209560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313152, 31.376015, 29.875845>,  <32.456474, 31.463640, 30.634426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313152, 31.376015, 29.875845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700073, 31.378119, 29.977268>,  <32.932228, 31.379381, 30.038122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700073, 31.378119, 29.977268>,  <32.313152, 31.376015, 29.875845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700073, 31.378119, 29.977268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070719, -0.965723, -0.249755,
		0.243553, 0.259521, -0.934522,
		0.967306, 0.005260, 0.253557,
		32.990265, 31.379696, 30.053335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.023071, 40.498581, 46.959839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.629131, 40.434132, 46.985451>,  <41.392765, 40.395462, 47.000820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.629131, 40.434132, 46.985451>,  <42.023071, 40.498581, 46.959839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629131, 40.434132, 46.985451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055808, 0.644245, 0.762780,
		-0.164156, 0.747654, -0.643480,
		-0.984855, -0.161126, 0.064032,
		41.333675, 40.385796, 47.004662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687508, 41.156689, 47.069500>,  <42.023071, 40.498581, 46.959839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687508, 41.156689, 47.069500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.395542, 40.912964, 47.193417>,  <41.220364, 40.766727, 47.267765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.395542, 40.912964, 47.193417>,  <41.687508, 41.156689, 47.069500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395542, 40.912964, 47.193417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073438, 0.520495, 0.850701,
		-0.679588, 0.598184, -0.424661,
		-0.729909, -0.609312, 0.309793,
		41.176571, 40.730171, 47.286354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232380, 41.544746, 47.358303>,  <41.687508, 41.156689, 47.069500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232380, 41.544746, 47.358303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.116634, 41.202164, 47.529305>,  <41.047188, 40.996616, 47.631905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.116634, 41.202164, 47.529305>,  <41.232380, 41.544746, 47.358303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116634, 41.202164, 47.529305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255465, 0.499507, 0.827786,
		-0.922501, 0.130316, -0.363331,
		-0.289360, -0.856452, 0.427505,
		41.029827, 40.945229, 47.657555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551704, 41.704014, 47.597725>,  <41.232380, 41.544746, 47.358303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551704, 41.704014, 47.597725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.734398, 41.405293, 47.791084>,  <40.844013, 41.226059, 47.907101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.734398, 41.405293, 47.791084>,  <40.551704, 41.704014, 47.597725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734398, 41.405293, 47.791084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010732, 0.547969, 0.836430,
		-0.889538, -0.376839, 0.258291,
		0.456735, -0.746808, 0.483396,
		40.871418, 41.181252, 47.936104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094936, 41.632862, 48.163895>,  <40.551704, 41.704014, 47.597725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094936, 41.632862, 48.163895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.415337, 41.437874, 48.302902>,  <40.607578, 41.320881, 48.386307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.415337, 41.437874, 48.302902>,  <40.094936, 41.632862, 48.163895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415337, 41.437874, 48.302902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159464, 0.385788, 0.908702,
		-0.577033, -0.783289, 0.231284,
		0.801002, -0.487469, 0.347519,
		40.655636, 41.291634, 48.407158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918396, 41.092651, 48.657310>,  <40.094936, 41.632862, 48.163895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918396, 41.092651, 48.657310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298931, 41.177994, 48.746250>,  <40.527252, 41.229198, 48.799614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298931, 41.177994, 48.746250>,  <39.918396, 41.092651, 48.657310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298931, 41.177994, 48.746250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276832, 0.274775, 0.920795,
		0.135356, -0.937540, 0.320466,
		0.951338, 0.213350, 0.222349,
		40.584332, 41.242001, 48.812954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056866, 40.732578, 49.173855>,  <39.918396, 41.092651, 48.657310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056866, 40.732578, 49.173855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353291, 41.000992, 49.183205>,  <40.531143, 41.162041, 49.188812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353291, 41.000992, 49.183205>,  <40.056866, 40.732578, 49.173855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353291, 41.000992, 49.183205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268180, 0.263897, 0.926519,
		0.615559, -0.692872, 0.375521,
		0.741058, 0.671035, 0.023370,
		40.575607, 41.202301, 49.190216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390404, 40.640003, 49.846298>,  <40.056866, 40.732578, 49.173855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390404, 40.640003, 49.846298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.445808, 41.012188, 49.710625>,  <40.479050, 41.235500, 49.629219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.445808, 41.012188, 49.710625>,  <40.390404, 40.640003, 49.846298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445808, 41.012188, 49.710625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368741, 0.366316, 0.854309,
		0.919155, 0.006743, 0.393838,
		0.138508, 0.930466, -0.339187,
		40.487362, 41.291328, 49.608868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658848, 41.028446, 50.396900>,  <40.390404, 40.640003, 49.846298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658848, 41.028446, 50.396900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.515358, 41.316917, 50.159843>,  <40.429264, 41.489998, 50.017609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.515358, 41.316917, 50.159843>,  <40.658848, 41.028446, 50.396900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515358, 41.316917, 50.159843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370580, 0.472692, 0.799520,
		0.856730, 0.506430, 0.097686,
		-0.358726, 0.721173, -0.592642,
		40.407742, 41.533268, 49.982052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754250, 41.532207, 50.796921>,  <40.658848, 41.028446, 50.396900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754250, 41.532207, 50.796921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.508583, 41.704346, 50.532314>,  <40.361183, 41.807629, 50.373550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.508583, 41.704346, 50.532314>,  <40.754250, 41.532207, 50.796921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508583, 41.704346, 50.532314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337920, 0.614092, 0.713233,
		0.713168, 0.661583, -0.231732,
		-0.614168, 0.430348, -0.661512,
		40.324333, 41.833450, 50.333862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733936, 42.395927, 50.803543>,  <40.754250, 41.532207, 50.796921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733936, 42.395927, 50.803543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.380226, 42.252762, 50.683575>,  <40.167999, 42.166862, 50.611595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.380226, 42.252762, 50.683575>,  <40.733936, 42.395927, 50.803543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380226, 42.252762, 50.683575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466710, 0.656039, 0.593123,
		-0.015529, 0.664460, -0.747162,
		-0.884274, -0.357918, -0.299922,
		40.114944, 42.145386, 50.593597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304096, 43.088535, 50.742016>,  <40.733936, 42.395927, 50.803543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304096, 43.088535, 50.742016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065742, 42.767651, 50.756847>,  <39.922729, 42.575119, 50.765747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.065742, 42.767651, 50.756847>,  <40.304096, 43.088535, 50.742016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065742, 42.767651, 50.756847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572832, 0.456945, 0.680489,
		-0.562841, 0.384252, -0.731820,
		-0.595881, -0.802216, 0.037076,
		39.886978, 42.526985, 50.767971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568321, 43.394863, 50.731903>,  <40.304096, 43.088535, 50.742016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568321, 43.394863, 50.731903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.604366, 43.023342, 50.875687>,  <39.625992, 42.800430, 50.961956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.604366, 43.023342, 50.875687>,  <39.568321, 43.394863, 50.731903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604366, 43.023342, 50.875687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509595, 0.267100, 0.817906,
		-0.855683, -0.256877, -0.449244,
		0.090108, -0.928801, 0.359456,
		39.631397, 42.744701, 50.983524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904518, 43.276039, 51.105186>,  <39.568321, 43.394863, 50.731903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904518, 43.276039, 51.105186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182014, 43.026211, 51.248642>,  <39.348515, 42.876312, 51.334717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182014, 43.026211, 51.248642>,  <38.904518, 43.276039, 51.105186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182014, 43.026211, 51.248642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281076, 0.223687, 0.933253,
		-0.663110, -0.748245, -0.020372,
		0.693744, -0.624575, 0.358643,
		39.390137, 42.838837, 51.356236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092831, 43.459373, 51.244522>,  <38.904518, 43.276039, 51.105186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092831, 43.459373, 51.244522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885132, 43.787254, 51.147804>,  <37.760513, 43.983982, 51.089775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885132, 43.787254, 51.147804>,  <38.092831, 43.459373, 51.244522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885132, 43.787254, 51.147804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045645, -0.255917, -0.965621,
		-0.853403, -0.512435, 0.095469,
		-0.519250, 0.819706, -0.241791,
		37.729359, 44.033165, 51.075268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716904, 43.187729, 50.748962>,  <38.092831, 43.459373, 51.244522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716904, 43.187729, 50.748962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692467, 43.581913, 50.685551>,  <37.677803, 43.818424, 50.647503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692467, 43.581913, 50.685551>,  <37.716904, 43.187729, 50.748962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692467, 43.581913, 50.685551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030723, -0.160603, -0.986541,
		-0.997659, -0.055403, 0.040088,
		-0.061096, 0.985463, -0.158525,
		37.674137, 43.877552, 50.637993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059082, 43.349293, 50.320652>,  <37.716904, 43.187729, 50.748962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059082, 43.349293, 50.320652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328918, 43.641201, 50.276169>,  <37.490818, 43.816345, 50.249477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328918, 43.641201, 50.276169>,  <37.059082, 43.349293, 50.320652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328918, 43.641201, 50.276169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026151, -0.126931, -0.991567,
		-0.737731, 0.671807, -0.066542,
		0.674588, 0.729769, -0.111209,
		37.531296, 43.860130, 50.242805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802868, 43.629044, 49.774746>,  <37.059082, 43.349293, 50.320652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802868, 43.629044, 49.774746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162025, 43.804817, 49.785210>,  <37.377522, 43.910282, 49.791489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162025, 43.804817, 49.785210>,  <36.802868, 43.629044, 49.774746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162025, 43.804817, 49.785210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028235, 0.001823, -0.999600,
		-0.439302, 0.898275, -0.010770,
		0.897896, 0.439430, 0.026163,
		37.431393, 43.936646, 49.793060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780190, 44.261448, 49.298397>,  <36.802868, 43.629044, 49.774746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780190, 44.261448, 49.298397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155586, 44.129456, 49.339077>,  <37.380825, 44.050259, 49.363483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155586, 44.129456, 49.339077>,  <36.780190, 44.261448, 49.298397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155586, 44.129456, 49.339077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108322, 0.001691, -0.994114,
		0.327870, 0.943985, 0.037331,
		0.938492, -0.329984, 0.101700,
		37.437134, 44.030460, 49.369587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198013, 44.785580, 48.882599>,  <36.780190, 44.261448, 49.298397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198013, 44.785580, 48.882599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.409306, 44.449688, 48.932915>,  <37.536083, 44.248154, 48.963104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.409306, 44.449688, 48.932915>,  <37.198013, 44.785580, 48.882599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409306, 44.449688, 48.932915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123394, -0.070652, -0.989839,
		0.840085, 0.538389, 0.066297,
		0.528234, -0.839730, 0.125788,
		37.567776, 44.197769, 48.970650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639923, 44.862324, 48.373455>,  <37.198013, 44.785580, 48.882599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639923, 44.862324, 48.373455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678993, 44.480511, 48.486122>,  <37.702435, 44.251423, 48.553722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678993, 44.480511, 48.486122>,  <37.639923, 44.862324, 48.373455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678993, 44.480511, 48.486122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322494, -0.237389, -0.916321,
		0.941519, 0.180335, 0.284643,
		0.097674, -0.954529, 0.281663,
		37.708294, 44.194153, 48.570621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322079, 44.687328, 48.195110>,  <37.639923, 44.862324, 48.373455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322079, 44.687328, 48.195110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127476, 44.339867, 48.232533>,  <38.010715, 44.131390, 48.254986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127476, 44.339867, 48.232533>,  <38.322079, 44.687328, 48.195110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127476, 44.339867, 48.232533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333041, -0.283383, -0.899321,
		0.807710, -0.406368, 0.427165,
		-0.486506, -0.868654, 0.093554,
		37.981525, 44.079269, 48.260597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759563, 44.159142, 47.914936>,  <38.322079, 44.687328, 48.195110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759563, 44.159142, 47.914936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387207, 44.013058, 47.911797>,  <38.163792, 43.925407, 47.909912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387207, 44.013058, 47.911797>,  <38.759563, 44.159142, 47.914936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387207, 44.013058, 47.911797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129778, -0.310550, -0.941656,
		0.341464, -0.877599, 0.336485,
		-0.930892, -0.365210, -0.007852,
		38.107941, 43.903496, 47.909443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856983, 43.655563, 47.537666>,  <38.759563, 44.159142, 47.914936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856983, 43.655563, 47.537666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457554, 43.668503, 47.520699>,  <38.217896, 43.676266, 47.510517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457554, 43.668503, 47.520699>,  <38.856983, 43.655563, 47.537666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457554, 43.668503, 47.520699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021663, -0.480762, -0.876583,
		-0.048744, -0.876254, 0.479377,
		-0.998577, 0.032343, -0.042417,
		38.157982, 43.678207, 47.507973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597569, 42.996189, 47.531219>,  <38.856983, 43.655563, 47.537666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597569, 42.996189, 47.531219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345398, 43.239399, 47.338192>,  <38.194096, 43.385323, 47.222374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345398, 43.239399, 47.338192>,  <38.597569, 42.996189, 47.531219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345398, 43.239399, 47.338192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134479, -0.526721, -0.839334,
		-0.764514, -0.594031, 0.250291,
		-0.630424, 0.608023, -0.482570,
		38.156269, 43.421806, 47.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969696, 42.584328, 47.223717>,  <38.597569, 42.996189, 47.531219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969696, 42.584328, 47.223717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.058491, 42.913670, 47.014790>,  <38.111767, 43.111275, 46.889435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.058491, 42.913670, 47.014790>,  <37.969696, 42.584328, 47.223717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058491, 42.913670, 47.014790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069554, -0.547685, -0.833788,
		-0.972567, 0.148758, -0.178844,
		0.221983, 0.823354, -0.522314,
		38.125084, 43.160675, 46.858097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587128, 42.665749, 46.547913>,  <37.969696, 42.584328, 47.223717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587128, 42.665749, 46.547913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920746, 42.879818, 46.494308>,  <38.120918, 43.008259, 46.462147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920746, 42.879818, 46.494308>,  <37.587128, 42.665749, 46.547913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920746, 42.879818, 46.494308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123756, -0.418200, -0.899885,
		-0.537634, 0.733963, -0.415029,
		0.834047, 0.535171, -0.134006,
		38.170959, 43.040371, 46.454105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073895, 43.181767, 46.737156>,  <37.587128, 42.665749, 46.547913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073895, 43.181767, 46.737156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377193, 43.268440, 46.491192>,  <37.559174, 43.320442, 46.343613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377193, 43.268440, 46.491192>,  <37.073895, 43.181767, 46.737156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377193, 43.268440, 46.491192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089211, -0.968767, -0.231369,
		-0.645838, 0.120577, -0.753893,
		0.758244, 0.216683, -0.614910,
		37.604668, 43.333447, 46.306721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582527, 43.470436, 46.252979>,  <37.073895, 43.181767, 46.737156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582527, 43.470436, 46.252979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190804, 43.392292, 46.231846>,  <35.955769, 43.345406, 46.219166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190804, 43.392292, 46.231846>,  <36.582527, 43.470436, 46.252979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190804, 43.392292, 46.231846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125578, 0.381858, 0.915650,
		-0.158702, 0.903338, -0.398489,
		-0.979308, -0.195357, -0.052838,
		35.897011, 43.333687, 46.215996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265240, 44.145508, 46.395576>,  <36.582527, 43.470436, 46.252979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265240, 44.145508, 46.395576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001713, 43.854328, 46.471519>,  <35.843597, 43.679619, 46.517086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001713, 43.854328, 46.471519>,  <36.265240, 44.145508, 46.395576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001713, 43.854328, 46.471519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200780, 0.413352, 0.888160,
		-0.725011, 0.547020, -0.418483,
		-0.658822, -0.727949, 0.189854,
		35.804066, 43.635944, 46.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830585, 44.432831, 46.813618>,  <36.265240, 44.145508, 46.395576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830585, 44.432831, 46.813618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742760, 44.050644, 46.892479>,  <35.690063, 43.821331, 46.939796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742760, 44.050644, 46.892479>,  <35.830585, 44.432831, 46.813618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742760, 44.050644, 46.892479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153111, 0.233324, 0.960269,
		-0.963508, 0.180655, -0.197523,
		-0.219564, -0.955471, 0.197149,
		35.676891, 43.764004, 46.951622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139080, 44.333939, 47.199543>,  <35.830585, 44.432831, 46.813618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139080, 44.333939, 47.199543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295231, 43.987083, 47.323269>,  <35.388924, 43.778973, 47.397507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295231, 43.987083, 47.323269>,  <35.139080, 44.333939, 47.199543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295231, 43.987083, 47.323269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329560, 0.182095, 0.926408,
		-0.859647, -0.463591, -0.214687,
		0.390381, -0.867136, 0.309318,
		35.412346, 43.726944, 47.416065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674294, 44.173939, 47.806122>,  <35.139080, 44.333939, 47.199543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674294, 44.173939, 47.806122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996811, 43.939522, 47.838226>,  <35.190323, 43.798870, 47.857487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996811, 43.939522, 47.838226>,  <34.674294, 44.173939, 47.806122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996811, 43.939522, 47.838226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143724, -0.062479, 0.987643,
		-0.573790, -0.807865, -0.134605,
		0.806293, -0.586047, 0.080260,
		35.238697, 43.763706, 47.862305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495796, 43.463768, 48.108082>,  <34.674294, 44.173939, 47.806122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495796, 43.463768, 48.108082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881710, 43.536293, 48.184319>,  <35.113258, 43.579807, 48.230061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881710, 43.536293, 48.184319>,  <34.495796, 43.463768, 48.108082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881710, 43.536293, 48.184319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149452, -0.218429, 0.964341,
		0.216479, -0.958861, -0.183638,
		0.964780, 0.181315, 0.190589,
		35.171143, 43.590687, 48.241497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617924, 42.971725, 48.633587>,  <34.495796, 43.463768, 48.108082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617924, 42.971725, 48.633587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890640, 43.263397, 48.657112>,  <35.054272, 43.438400, 48.671227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890640, 43.263397, 48.657112>,  <34.617924, 42.971725, 48.633587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890640, 43.263397, 48.657112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215637, 0.123498, 0.968633,
		0.699039, -0.673092, 0.241437,
		0.681795, 0.729175, 0.058813,
		35.095181, 43.482151, 48.674755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444435, 42.372990, 49.077663>,  <34.617924, 42.971725, 48.633587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444435, 42.372990, 49.077663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094238, 42.253326, 49.229462>,  <33.884121, 42.181530, 49.320541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094238, 42.253326, 49.229462>,  <34.444435, 42.372990, 49.077663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094238, 42.253326, 49.229462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222825, -0.446930, -0.866373,
		0.428788, -0.843065, 0.324625,
		-0.875494, -0.299156, 0.379495,
		33.831589, 42.163578, 49.343311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396217, 41.665749, 48.834587>,  <34.444435, 42.372990, 49.077663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396217, 41.665749, 48.834587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037483, 41.825199, 48.911301>,  <33.822243, 41.920868, 48.957329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037483, 41.825199, 48.911301>,  <34.396217, 41.665749, 48.834587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037483, 41.825199, 48.911301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348008, -0.368137, -0.862187,
		-0.273082, -0.839985, 0.468883,
		-0.896837, 0.398623, 0.191790,
		33.768433, 41.944786, 48.968838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907860, 41.091499, 48.664524>,  <34.396217, 41.665749, 48.834587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907860, 41.091499, 48.664524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683594, 41.422176, 48.683456>,  <33.549034, 41.620583, 48.694817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683594, 41.422176, 48.683456>,  <33.907860, 41.091499, 48.664524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683594, 41.422176, 48.683456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379779, -0.205936, -0.901864,
		-0.735816, -0.523616, 0.429421,
		-0.560663, 0.826690, 0.047327,
		33.515396, 41.670185, 48.697655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309593, 40.912643, 48.235863>,  <33.907860, 41.091499, 48.664524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309593, 40.912643, 48.235863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294300, 41.311966, 48.253399>,  <33.285126, 41.551559, 48.263920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294300, 41.311966, 48.253399>,  <33.309593, 40.912643, 48.235863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294300, 41.311966, 48.253399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401325, 0.024841, -0.915599,
		-0.915137, -0.052600, 0.399696,
		-0.038232, 0.998307, 0.043843,
		33.282829, 41.611458, 48.266552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786125, 41.029106, 47.821060>,  <33.309593, 40.912643, 48.235863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786125, 41.029106, 47.821060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948536, 41.394600, 47.814861>,  <33.045982, 41.613895, 47.811142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948536, 41.394600, 47.814861>,  <32.786125, 41.029106, 47.821060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948536, 41.394600, 47.814861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064378, 0.011686, -0.997857,
		-0.911592, 0.406152, 0.063569,
		0.406024, 0.913731, -0.015494,
		33.070343, 41.668720, 47.810211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347939, 41.478615, 47.375294>,  <32.786125, 41.029106, 47.821060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347939, 41.478615, 47.375294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717201, 41.631786, 47.388885>,  <32.938759, 41.723690, 47.397041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717201, 41.631786, 47.388885>,  <32.347939, 41.478615, 47.375294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717201, 41.631786, 47.388885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083375, -0.113141, -0.990074,
		-0.375280, 0.916824, -0.136373,
		0.923154, 0.382926, 0.033981,
		32.994148, 41.746666, 47.399078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372829, 41.923584, 46.761665>,  <32.347939, 41.478615, 47.375294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372829, 41.923584, 46.761665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757549, 41.874279, 46.859440>,  <32.988380, 41.844696, 46.918106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757549, 41.874279, 46.859440>,  <32.372829, 41.923584, 46.761665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757549, 41.874279, 46.859440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241014, -0.042207, -0.969603,
		0.129835, 0.991476, -0.010886,
		0.961798, -0.123265, 0.244439,
		33.046089, 41.837299, 46.932770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.038258, 41.799213, 51.709236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374752, 41.818813, 51.493858>,  <37.576649, 41.830574, 51.364632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374752, 41.818813, 51.493858>,  <37.038258, 41.799213, 51.709236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374752, 41.818813, 51.493858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092953, -0.967950, -0.233309,
		-0.532623, 0.246318, -0.809716,
		0.841233, 0.049000, -0.538448,
		37.627121, 41.833515, 51.332325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964638, 41.526783, 51.013969>,  <37.038258, 41.799213, 51.709236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964638, 41.526783, 51.013969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357628, 41.480778, 51.072632>,  <37.593422, 41.453175, 51.107830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357628, 41.480778, 51.072632>,  <36.964638, 41.526783, 51.013969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357628, 41.480778, 51.072632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000259, -0.787716, -0.616039,
		0.186379, 0.605206, -0.773943,
		0.982478, -0.115017, 0.146657,
		37.652370, 41.446274, 51.116631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283302, 41.397846, 50.320900>,  <36.964638, 41.526783, 51.013969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283302, 41.397846, 50.320900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.585407, 41.288662, 50.559254>,  <37.766670, 41.223152, 50.702267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.585407, 41.288662, 50.559254>,  <37.283302, 41.397846, 50.320900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585407, 41.288662, 50.559254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166879, -0.799107, -0.577564,
		0.633825, 0.535651, -0.557982,
		0.755260, -0.272958, 0.595883,
		37.811985, 41.206776, 50.738018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827728, 41.270489, 49.918903>,  <37.283302, 41.397846, 50.320900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827728, 41.270489, 49.918903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.923313, 41.047668, 50.237045>,  <37.980663, 40.913975, 50.427929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.923313, 41.047668, 50.237045>,  <37.827728, 41.270489, 49.918903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923313, 41.047668, 50.237045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193471, -0.775350, -0.601167,
		0.951560, 0.297533, -0.077504,
		0.238960, -0.557052, 0.795356,
		37.995003, 40.880554, 50.475651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372738, 40.943539, 49.707291>,  <37.827728, 41.270489, 49.918903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372738, 40.943539, 49.707291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.248363, 40.726761, 50.019600>,  <38.173737, 40.596695, 50.206985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.248363, 40.726761, 50.019600>,  <38.372738, 40.943539, 49.707291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248363, 40.726761, 50.019600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163076, -0.839737, -0.517927,
		0.936334, -0.033718, 0.349487,
		-0.310941, -0.541945, 0.780776,
		38.155083, 40.564178, 50.253834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921757, 40.427589, 49.771877>,  <38.372738, 40.943539, 49.707291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921757, 40.427589, 49.771877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.602013, 40.282021, 49.963123>,  <38.410168, 40.194679, 50.077869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.602013, 40.282021, 49.963123>,  <38.921757, 40.427589, 49.771877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602013, 40.282021, 49.963123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176380, -0.902780, -0.392274,
		0.574386, -0.229237, 0.785832,
		-0.799357, -0.363922, 0.478111,
		38.362206, 40.172844, 50.106556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122871, 39.662548, 49.827171>,  <38.921757, 40.427589, 49.771877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122871, 39.662548, 49.827171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.729603, 39.702011, 49.888668>,  <38.493641, 39.725689, 49.925564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.729603, 39.702011, 49.888668>,  <39.122871, 39.662548, 49.827171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729603, 39.702011, 49.888668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168758, -0.812747, -0.557641,
		0.069934, -0.574203, 0.815721,
		-0.983173, 0.098661, 0.153740,
		38.434650, 39.731609, 49.934792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860245, 39.018723, 49.786694>,  <39.122871, 39.662548, 49.827171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860245, 39.018723, 49.786694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.514294, 39.213726, 49.738827>,  <38.306721, 39.330727, 49.710106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.514294, 39.213726, 49.738827>,  <38.860245, 39.018723, 49.786694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514294, 39.213726, 49.738827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335315, -0.738472, -0.584998,
		-0.373560, -0.465827, 0.802158,
		-0.864879, 0.487508, -0.119665,
		38.254829, 39.359978, 49.702927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344891, 38.480286, 49.904968>,  <38.860245, 39.018723, 49.786694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344891, 38.480286, 49.904968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.200321, 38.790920, 49.698555>,  <38.113579, 38.977299, 49.574707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.200321, 38.790920, 49.698555>,  <38.344891, 38.480286, 49.904968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200321, 38.790920, 49.698555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205355, -0.606156, -0.768378,
		-0.909508, -0.171737, 0.378552,
		-0.361421, 0.776583, -0.516036,
		38.091896, 39.023895, 49.543743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740128, 38.240582, 49.725700>,  <38.344891, 38.480286, 49.904968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740128, 38.240582, 49.725700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.788261, 38.525517, 49.449123>,  <37.817142, 38.696476, 49.283176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.788261, 38.525517, 49.449123>,  <37.740128, 38.240582, 49.725700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788261, 38.525517, 49.449123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236632, -0.655847, -0.716847,
		-0.964119, 0.249880, 0.089640,
		0.120335, 0.712337, -0.691444,
		37.824364, 38.739216, 49.241692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185814, 38.167580, 49.217354>,  <37.740128, 38.240582, 49.725700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185814, 38.167580, 49.217354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465778, 38.377270, 49.023315>,  <37.633759, 38.503082, 48.906895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465778, 38.377270, 49.023315>,  <37.185814, 38.167580, 49.217354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465778, 38.377270, 49.023315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233325, -0.474098, -0.848994,
		-0.675045, 0.707403, -0.209511,
		0.699910, 0.524225, -0.485092,
		37.675751, 38.534538, 48.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831474, 38.459587, 48.604439>,  <37.185814, 38.167580, 49.217354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831474, 38.459587, 48.604439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.228382, 38.451687, 48.555435>,  <37.466526, 38.446945, 48.526035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.228382, 38.451687, 48.555435>,  <36.831474, 38.459587, 48.604439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228382, 38.451687, 48.555435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122307, -0.322326, -0.938694,
		-0.020948, 0.946423, -0.322250,
		0.992271, -0.019749, -0.122506,
		37.526062, 38.445763, 48.518684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316242, 38.849880, 48.087734>,  <36.831474, 38.459587, 48.604439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316242, 38.849880, 48.087734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946594, 38.723743, 48.174046>,  <35.724804, 38.648064, 48.225834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946594, 38.723743, 48.174046>,  <36.316242, 38.849880, 48.087734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946594, 38.723743, 48.174046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074023, 0.406270, 0.910750,
		-0.374859, 0.857617, -0.352101,
		-0.924122, -0.315339, 0.215777,
		35.669357, 38.629143, 48.238777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070271, 39.377968, 48.490845>,  <36.316242, 38.849880, 48.087734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070271, 39.377968, 48.490845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.845520, 39.060822, 48.585213>,  <35.710670, 38.870533, 48.641834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.845520, 39.060822, 48.585213>,  <36.070271, 39.377968, 48.490845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845520, 39.060822, 48.585213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085266, 0.339183, 0.936848,
		-0.822812, 0.506281, -0.258184,
		-0.561880, -0.792865, 0.235915,
		35.676956, 38.822964, 48.655987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450081, 39.637428, 48.934875>,  <36.070271, 39.377968, 48.490845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450081, 39.637428, 48.934875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491764, 39.246456, 49.008377>,  <35.516773, 39.011871, 49.052479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491764, 39.246456, 49.008377>,  <35.450081, 39.637428, 48.934875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491764, 39.246456, 49.008377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016649, 0.183015, 0.982969,
		-0.994416, -0.105494, 0.002798,
		0.104209, -0.977434, 0.183750,
		35.523026, 38.953224, 49.063503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883335, 39.441975, 49.378086>,  <35.450081, 39.637428, 48.934875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883335, 39.441975, 49.378086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.141346, 39.151585, 49.473499>,  <35.296154, 38.977348, 49.530746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.141346, 39.151585, 49.473499>,  <34.883335, 39.441975, 49.378086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141346, 39.151585, 49.473499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119774, 0.212247, 0.969848,
		-0.754716, -0.654147, 0.049951,
		0.645026, -0.725977, 0.238536,
		35.334854, 38.933792, 49.545059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784214, 39.257790, 50.191746>,  <34.883335, 39.441975, 49.378086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784214, 39.257790, 50.191746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107571, 39.034454, 50.117165>,  <35.301582, 38.900452, 50.072414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107571, 39.034454, 50.117165>,  <34.784214, 39.257790, 50.191746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107571, 39.034454, 50.117165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208887, -0.024044, 0.977644,
		-0.550342, -0.829263, 0.097193,
		0.808387, -0.558341, -0.186455,
		35.350086, 38.866951, 50.061230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761169, 38.593662, 50.581017>,  <34.784214, 39.257790, 50.191746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761169, 38.593662, 50.581017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.140945, 38.688007, 50.498138>,  <35.368813, 38.744614, 50.448414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.140945, 38.688007, 50.498138>,  <34.761169, 38.593662, 50.581017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140945, 38.688007, 50.498138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190143, 0.093125, 0.977330,
		0.249812, -0.967314, 0.043568,
		0.949442, 0.235864, -0.207192,
		35.425777, 38.758766, 50.435982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131653, 38.118305, 51.099762>,  <34.761169, 38.593662, 50.581017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131653, 38.118305, 51.099762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.384151, 38.400978, 50.971931>,  <35.535648, 38.570583, 50.895233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.384151, 38.400978, 50.971931>,  <35.131653, 38.118305, 51.099762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384151, 38.400978, 50.971931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042644, 0.379796, 0.924087,
		0.774411, -0.596953, 0.209608,
		0.631244, 0.706684, -0.319574,
		35.573524, 38.612984, 50.876060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749569, 38.041664, 51.442738>,  <35.131653, 38.118305, 51.099762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749569, 38.041664, 51.442738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.735828, 38.426933, 51.336063>,  <35.727585, 38.658096, 51.272060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.735828, 38.426933, 51.336063>,  <35.749569, 38.041664, 51.442738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735828, 38.426933, 51.336063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196363, 0.268146, 0.943154,
		0.979930, -0.019971, -0.198341,
		-0.034348, 0.963171, -0.266686,
		35.725525, 38.715885, 51.256058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180218, 38.344452, 51.819473>,  <35.749569, 38.041664, 51.442738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180218, 38.344452, 51.819473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943573, 38.649017, 51.713463>,  <35.801586, 38.831757, 51.649857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943573, 38.649017, 51.713463>,  <36.180218, 38.344452, 51.819473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943573, 38.649017, 51.713463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123428, 0.410391, 0.903518,
		0.796717, 0.501822, -0.336773,
		-0.591614, 0.761416, -0.265027,
		35.766090, 38.877441, 51.633953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555992, 38.948513, 52.103687>,  <36.180218, 38.344452, 51.819473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555992, 38.948513, 52.103687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.177967, 39.065048, 52.044399>,  <35.951153, 39.134972, 52.008827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.177967, 39.065048, 52.044399>,  <36.555992, 38.948513, 52.103687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177967, 39.065048, 52.044399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004467, 0.441902, 0.897052,
		0.326849, 0.848436, -0.416325,
		-0.945066, 0.291341, -0.148225,
		35.894447, 39.152451, 51.999931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530544, 39.745190, 52.359177>,  <36.555992, 38.948513, 52.103687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530544, 39.745190, 52.359177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.143585, 39.660900, 52.302990>,  <35.911407, 39.610329, 52.269279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.143585, 39.660900, 52.302990>,  <36.530544, 39.745190, 52.359177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143585, 39.660900, 52.302990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247298, 0.666518, 0.703277,
		-0.054571, 0.715088, -0.696901,
		-0.967401, -0.210721, -0.140468,
		35.853363, 39.597683, 52.260849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147778, 40.357903, 52.231853>,  <36.530544, 39.745190, 52.359177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147778, 40.357903, 52.231853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868683, 40.107986, 52.372025>,  <35.701225, 39.958035, 52.456127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868683, 40.107986, 52.372025>,  <36.147778, 40.357903, 52.231853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868683, 40.107986, 52.372025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279822, 0.688030, 0.669563,
		-0.659444, 0.369119, -0.654893,
		-0.697735, -0.624792, 0.350430,
		35.659363, 39.920547, 52.477154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539997, 40.646610, 52.269310>,  <36.147778, 40.357903, 52.231853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539997, 40.646610, 52.269310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.503208, 40.353508, 52.539009>,  <35.481133, 40.177647, 52.700829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.503208, 40.353508, 52.539009>,  <35.539997, 40.646610, 52.269310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503208, 40.353508, 52.539009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334115, 0.660571, 0.672320,
		-0.938034, -0.163438, -0.305582,
		-0.091976, -0.732758, 0.674245,
		35.475616, 40.133682, 52.741283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896530, 40.772625, 52.555798>,  <35.539997, 40.646610, 52.269310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896530, 40.772625, 52.555798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105106, 40.535877, 52.801655>,  <35.230251, 40.393829, 52.949169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105106, 40.535877, 52.801655>,  <34.896530, 40.772625, 52.555798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105106, 40.535877, 52.801655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246111, 0.585394, 0.772491,
		-0.817025, -0.554079, 0.159582,
		0.521440, -0.591870, 0.614647,
		35.261539, 40.358315, 52.986050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490498, 41.010925, 51.985798>,  <34.896530, 40.772625, 52.555798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490498, 41.010925, 51.985798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557819, 41.402180, 52.034660>,  <34.598213, 41.636932, 52.063980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557819, 41.402180, 52.034660>,  <34.490498, 41.010925, 51.985798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557819, 41.402180, 52.034660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596289, 0.199709, -0.777532,
		-0.784929, 0.058020, 0.616863,
		0.168306, 0.978136, 0.122161,
		34.608311, 41.695621, 52.071308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740807, 41.331757, 51.998398>,  <34.490498, 41.010925, 51.985798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740807, 41.331757, 51.998398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.016907, 41.595051, 51.878212>,  <34.182568, 41.753029, 51.806099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.016907, 41.595051, 51.878212>,  <33.740807, 41.331757, 51.998398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016907, 41.595051, 51.878212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573752, 0.244894, -0.781560,
		-0.440867, 0.711867, 0.546701,
		0.690250, 0.658235, -0.300469,
		34.223980, 41.792522, 51.788071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362999, 41.838013, 51.769691>,  <33.740807, 41.331757, 51.998398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362999, 41.838013, 51.769691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721622, 41.911015, 51.608261>,  <33.936794, 41.954815, 51.511402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721622, 41.911015, 51.608261>,  <33.362999, 41.838013, 51.769691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721622, 41.911015, 51.608261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435906, 0.201961, -0.877039,
		-0.078560, 0.962238, 0.260626,
		0.896557, 0.182509, -0.403579,
		33.990589, 41.965767, 51.487186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157711, 42.386375, 51.300697>,  <33.362999, 41.838013, 51.769691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157711, 42.386375, 51.300697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521152, 42.274323, 51.176781>,  <33.739216, 42.207092, 51.102432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521152, 42.274323, 51.176781>,  <33.157711, 42.386375, 51.300697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521152, 42.274323, 51.176781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269601, 0.173130, -0.947281,
		0.318999, 0.944220, 0.081782,
		0.908601, -0.280133, -0.309791,
		33.793732, 42.190281, 51.083843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290474, 42.898159, 50.843182>,  <33.157711, 42.386375, 51.300697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290474, 42.898159, 50.843182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.522984, 42.585529, 50.752621>,  <33.662491, 42.397949, 50.698284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.522984, 42.585529, 50.752621>,  <33.290474, 42.898159, 50.843182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522984, 42.585529, 50.752621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209050, 0.125453, -0.969824,
		0.786396, 0.611063, -0.090467,
		0.581274, -0.781578, -0.226398,
		33.697365, 42.351055, 50.684700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705666, 43.128998, 50.187691>,  <33.290474, 42.898159, 50.843182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705666, 43.128998, 50.187691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700024, 42.729904, 50.214001>,  <33.696640, 42.490448, 50.229786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700024, 42.729904, 50.214001>,  <33.705666, 43.128998, 50.187691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700024, 42.729904, 50.214001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011603, -0.065618, -0.997777,
		0.999833, -0.014833, -0.010652,
		-0.014101, -0.997735, 0.065779,
		33.695793, 42.430584, 50.233734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158234, 42.936050, 49.656483>,  <33.705666, 43.128998, 50.187691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158234, 42.936050, 49.656483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934925, 42.614384, 49.738113>,  <33.800941, 42.421383, 49.787090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934925, 42.614384, 49.738113>,  <34.158234, 42.936050, 49.656483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934925, 42.614384, 49.738113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104095, -0.176137, -0.978846,
		0.823103, -0.567704, 0.014622,
		-0.558270, -0.804169, 0.204074,
		33.767445, 42.373135, 49.799335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895836, 42.801781, 49.412418>,  <34.158234, 42.936050, 49.656483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895836, 42.801781, 49.412418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013496, 43.165245, 49.293880>,  <35.084091, 43.383324, 49.222759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013496, 43.165245, 49.293880>,  <34.895836, 42.801781, 49.412418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013496, 43.165245, 49.293880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001166, 0.310398, 0.950606,
		0.955759, -0.279273, 0.092362,
		0.294147, 0.908658, -0.296340,
		35.101742, 43.437843, 49.204979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438709, 42.964066, 49.867325>,  <34.895836, 42.801781, 49.412418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438709, 42.964066, 49.867325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.326317, 43.323730, 49.733131>,  <35.258881, 43.539532, 49.652615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.326317, 43.323730, 49.733131>,  <35.438709, 42.964066, 49.867325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326317, 43.323730, 49.733131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121737, 0.380139, 0.916883,
		0.951961, 0.216785, -0.216273,
		-0.280980, 0.899166, -0.335487,
		35.242023, 43.593479, 49.632484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977551, 43.449802, 50.106239>,  <35.438709, 42.964066, 49.867325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977551, 43.449802, 50.106239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.673653, 43.681347, 49.987778>,  <35.491314, 43.820274, 49.916698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.673653, 43.681347, 49.987778>,  <35.977551, 43.449802, 50.106239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673653, 43.681347, 49.987778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053104, 0.509191, 0.859014,
		0.648049, 0.636904, -0.417595,
		-0.759745, 0.578859, -0.296158,
		35.445728, 43.855003, 49.898930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124790, 44.206318, 50.008320>,  <35.977551, 43.449802, 50.106239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124790, 44.206318, 50.008320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738667, 44.153152, 50.098225>,  <35.506992, 44.121254, 50.152168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738667, 44.153152, 50.098225>,  <36.124790, 44.206318, 50.008320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738667, 44.153152, 50.098225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152980, 0.409692, 0.899305,
		-0.211612, 0.902489, -0.375146,
		-0.965307, -0.132914, 0.224759,
		35.449074, 44.113277, 50.165653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945889, 44.803886, 50.298222>,  <36.124790, 44.206318, 50.008320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945889, 44.803886, 50.298222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639610, 44.570091, 50.405609>,  <35.455841, 44.429813, 50.470039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639610, 44.570091, 50.405609>,  <35.945889, 44.803886, 50.298222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639610, 44.570091, 50.405609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043753, 0.463759, 0.884880,
		-0.641708, 0.665807, -0.380673,
		-0.765700, -0.584491, 0.268467,
		35.409901, 44.394745, 50.486149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701443, 45.282921, 50.763485>,  <35.945889, 44.803886, 50.298222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701443, 45.282921, 50.763485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.513298, 44.933678, 50.814770>,  <35.400410, 44.724133, 50.845539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.513298, 44.933678, 50.814770>,  <35.701443, 45.282921, 50.763485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513298, 44.933678, 50.814770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092991, 0.193514, 0.976681,
		-0.877559, 0.447473, -0.172213,
		-0.470364, -0.873109, 0.128209,
		35.372189, 44.671745, 50.853233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129467, 45.436546, 51.100155>,  <35.701443, 45.282921, 50.763485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129467, 45.436546, 51.100155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.188885, 45.046310, 51.164860>,  <35.224533, 44.812168, 51.203682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.188885, 45.046310, 51.164860>,  <35.129467, 45.436546, 51.100155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188885, 45.046310, 51.164860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072232, 0.173846, 0.982120,
		-0.986265, -0.134201, 0.096292,
		0.148541, -0.975586, 0.161764,
		35.233448, 44.753635, 51.213390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760609, 45.294029, 51.649483>,  <35.129467, 45.436546, 51.100155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760609, 45.294029, 51.649483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.018135, 44.988838, 51.626259>,  <35.172649, 44.805725, 51.612324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.018135, 44.988838, 51.626259>,  <34.760609, 45.294029, 51.649483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018135, 44.988838, 51.626259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243531, 0.132377, 0.960817,
		-0.725392, -0.632730, 0.271034,
		0.643816, -0.762973, -0.058064,
		35.211281, 44.759945, 51.608841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556488, 44.960777, 52.246861>,  <34.760609, 45.294029, 51.649483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556488, 44.960777, 52.246861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921379, 44.825485, 52.154388>,  <35.140312, 44.744312, 52.098904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921379, 44.825485, 52.154388>,  <34.556488, 44.960777, 52.246861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921379, 44.825485, 52.154388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309713, 0.199954, 0.929568,
		-0.268178, -0.919577, 0.287156,
		0.912227, -0.338226, -0.231182,
		35.195045, 44.724018, 52.085033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.009735, 37.404419, 37.621510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370541, 37.380726, 37.792557>,  <36.587025, 37.366512, 37.895187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370541, 37.380726, 37.792557>,  <36.009735, 37.404419, 37.621510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370541, 37.380726, 37.792557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344037, 0.499734, 0.794924,
		-0.260780, -0.864151, 0.430391,
		0.902016, -0.059230, 0.427621,
		36.641144, 37.362957, 37.920841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904335, 37.495251, 38.306179>,  <36.009735, 37.404419, 37.621510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904335, 37.495251, 38.306179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301758, 37.540077, 38.299332>,  <36.540211, 37.566971, 38.295223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301758, 37.540077, 38.299332>,  <35.904335, 37.495251, 38.306179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301758, 37.540077, 38.299332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061366, 0.658634, 0.749957,
		0.095319, -0.744072, 0.661265,
		0.993554, 0.112064, -0.017119,
		36.599823, 37.573696, 38.294197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142681, 37.503876, 39.030708>,  <35.904335, 37.495251, 38.306179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142681, 37.503876, 39.030708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401188, 37.710510, 38.806042>,  <36.556293, 37.834492, 38.671242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401188, 37.710510, 38.806042>,  <36.142681, 37.503876, 39.030708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401188, 37.710510, 38.806042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004072, 0.738349, 0.674406,
		0.763098, -0.433562, 0.479276,
		0.646270, 0.516590, -0.561667,
		36.595070, 37.865486, 38.637543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711807, 37.578556, 39.510406>,  <36.142681, 37.503876, 39.030708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711807, 37.578556, 39.510406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722858, 37.871170, 39.237907>,  <36.729488, 38.046738, 39.074409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722858, 37.871170, 39.237907>,  <36.711807, 37.578556, 39.510406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722858, 37.871170, 39.237907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134599, 0.672576, 0.727685,
		0.990515, -0.111797, -0.079884,
		0.027624, 0.731535, -0.681244,
		36.731144, 38.090630, 39.033535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076118, 38.149334, 39.858086>,  <36.711807, 37.578556, 39.510406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076118, 38.149334, 39.858086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913391, 38.334526, 39.543087>,  <36.815754, 38.445641, 39.354088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913391, 38.334526, 39.543087>,  <37.076118, 38.149334, 39.858086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913391, 38.334526, 39.543087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006548, 0.860557, 0.509311,
		0.913487, 0.212352, -0.347056,
		-0.406815, 0.462977, -0.787498,
		36.791348, 38.473419, 39.306839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442883, 38.763977, 39.832485>,  <37.076118, 38.149334, 39.858086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442883, 38.763977, 39.832485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112198, 38.809437, 39.612076>,  <36.913788, 38.836712, 39.479832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112198, 38.809437, 39.612076>,  <37.442883, 38.763977, 39.832485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112198, 38.809437, 39.612076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214944, 0.841294, 0.496008,
		0.519945, 0.528496, -0.671080,
		-0.826714, 0.113652, -0.551024,
		36.864185, 38.843533, 39.446770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496017, 39.417629, 39.724972>,  <37.442883, 38.763977, 39.832485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496017, 39.417629, 39.724972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113651, 39.316914, 39.664532>,  <36.884232, 39.256485, 39.628269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113651, 39.316914, 39.664532>,  <37.496017, 39.417629, 39.724972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113651, 39.316914, 39.664532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289049, 0.716102, 0.635334,
		-0.051769, 0.650999, -0.757311,
		-0.955913, -0.251790, -0.151099,
		36.826878, 39.241375, 39.619202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065449, 39.996105, 39.470650>,  <37.496017, 39.417629, 39.724972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065449, 39.996105, 39.470650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842567, 39.722836, 39.659454>,  <36.708839, 39.558872, 39.772739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842567, 39.722836, 39.659454>,  <37.065449, 39.996105, 39.470650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842567, 39.722836, 39.659454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362563, 0.711549, 0.601869,
		-0.747043, 0.164228, -0.644170,
		-0.557202, -0.683175, 0.472015,
		36.675407, 39.517883, 39.801060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475979, 40.321781, 39.592869>,  <37.065449, 39.996105, 39.470650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475979, 40.321781, 39.592869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427132, 40.004971, 39.832127>,  <36.397823, 39.814884, 39.975681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427132, 40.004971, 39.832127>,  <36.475979, 40.321781, 39.592869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427132, 40.004971, 39.832127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521477, 0.563969, 0.640313,
		-0.844481, -0.233723, -0.481897,
		-0.122119, -0.792030, 0.598143,
		36.390495, 39.767361, 40.011570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730083, 40.340271, 39.808407>,  <36.475979, 40.321781, 39.592869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730083, 40.340271, 39.808407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930420, 40.145382, 40.094559>,  <36.050621, 40.028446, 40.266251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930420, 40.145382, 40.094559>,  <35.730083, 40.340271, 39.808407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930420, 40.145382, 40.094559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522730, 0.488493, 0.698662,
		-0.689865, -0.723869, -0.010031,
		0.500839, -0.487226, 0.715382,
		36.080673, 39.999214, 40.309174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141953, 40.097008, 40.321159>,  <35.730083, 40.340271, 39.808407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141953, 40.097008, 40.321159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492920, 40.062389, 40.509899>,  <35.703499, 40.041618, 40.623146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492920, 40.062389, 40.509899>,  <35.141953, 40.097008, 40.321159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492920, 40.062389, 40.509899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394628, 0.429059, 0.812513,
		-0.272776, -0.899121, 0.342309,
		0.877419, -0.086549, 0.471855,
		35.756145, 40.036427, 40.651455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970898, 39.974945, 41.083023>,  <35.141953, 40.097008, 40.321159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970898, 39.974945, 41.083023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344990, 40.115520, 41.065887>,  <35.569447, 40.199867, 41.055607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344990, 40.115520, 41.065887>,  <34.970898, 39.974945, 41.083023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344990, 40.115520, 41.065887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198773, 0.621347, 0.757903,
		0.292974, -0.700299, 0.650959,
		0.935230, 0.351439, -0.042837,
		35.625557, 40.220951, 41.053036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496403, 39.369102, 41.362259>,  <34.970898, 39.974945, 41.083023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496403, 39.369102, 41.362259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111031, 39.448490, 41.434273>,  <33.879807, 39.496124, 41.477482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111031, 39.448490, 41.434273>,  <34.496403, 39.369102, 41.362259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111031, 39.448490, 41.434273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232044, -0.281920, -0.930955,
		-0.134008, -0.938686, 0.317664,
		-0.963430, 0.198467, 0.180036,
		33.822002, 39.508030, 41.488285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071579, 38.767262, 41.099102>,  <34.496403, 39.369102, 41.362259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071579, 38.767262, 41.099102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842926, 39.095383, 41.106483>,  <33.705734, 39.292255, 41.110912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842926, 39.095383, 41.106483>,  <34.071579, 38.767262, 41.099102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842926, 39.095383, 41.106483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337376, -0.214482, -0.916610,
		-0.747937, -0.530194, 0.399355,
		-0.571636, 0.820300, 0.018455,
		33.671436, 39.341473, 41.112019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435478, 38.501595, 40.840012>,  <34.071579, 38.767262, 41.099102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435478, 38.501595, 40.840012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416332, 38.897766, 40.788227>,  <33.404846, 39.135468, 40.757156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416332, 38.897766, 40.788227>,  <33.435478, 38.501595, 40.840012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416332, 38.897766, 40.788227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537520, -0.134779, -0.832410,
		-0.841892, 0.029745, 0.538826,
		-0.047863, 0.990429, -0.129458,
		33.401974, 39.194897, 40.749390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751537, 38.519958, 40.678383>,  <33.435478, 38.501595, 40.840012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751537, 38.519958, 40.678383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922710, 38.861450, 40.559711>,  <33.025414, 39.066345, 40.488510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922710, 38.861450, 40.559711>,  <32.751537, 38.519958, 40.678383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922710, 38.861450, 40.559711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525566, -0.031992, -0.850151,
		-0.735291, 0.519731, 0.435001,
		0.427933, 0.853731, -0.296677,
		33.051090, 39.117569, 40.470707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204578, 39.002144, 40.495476>,  <32.751537, 38.519958, 40.678383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204578, 39.002144, 40.495476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528912, 39.138374, 40.305080>,  <32.723511, 39.220112, 40.190842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528912, 39.138374, 40.305080>,  <32.204578, 39.002144, 40.495476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528912, 39.138374, 40.305080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498433, -0.024484, -0.866583,
		-0.306791, 0.939898, 0.149902,
		0.810829, 0.340576, -0.475987,
		32.772160, 39.240547, 40.162285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991947, 39.433613, 39.973400>,  <32.204578, 39.002144, 40.495476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991947, 39.433613, 39.973400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351860, 39.358994, 39.815617>,  <32.567806, 39.314220, 39.720947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351860, 39.358994, 39.815617>,  <31.991947, 39.433613, 39.973400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351860, 39.358994, 39.815617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393301, 0.044774, -0.918319,
		0.188971, 0.981425, -0.033082,
		0.899780, -0.186547, -0.394457,
		32.621796, 39.303028, 39.697281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050415, 39.874134, 39.424740>,  <31.991947, 39.433613, 39.973400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050415, 39.874134, 39.424740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293083, 39.561855, 39.364788>,  <32.438683, 39.374489, 39.328815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293083, 39.561855, 39.364788>,  <32.050415, 39.874134, 39.424740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293083, 39.561855, 39.364788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311291, -0.059820, -0.948430,
		0.731470, 0.622041, -0.279315,
		0.606671, -0.780696, -0.149879,
		32.475086, 39.327648, 39.319824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338795, 39.952198, 38.718754>,  <32.050415, 39.874134, 39.424740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338795, 39.952198, 38.718754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409103, 39.570297, 38.814720>,  <32.451286, 39.341156, 38.872299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409103, 39.570297, 38.814720>,  <32.338795, 39.952198, 38.718754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409103, 39.570297, 38.814720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059162, -0.253514, -0.965521,
		0.982652, 0.155514, -0.101045,
		0.175768, -0.954749, 0.239916,
		32.461834, 39.283871, 38.886696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774784, 39.680840, 38.131687>,  <32.338795, 39.952198, 38.718754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774784, 39.680840, 38.131687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639896, 39.349285, 38.310226>,  <32.558964, 39.150352, 38.417351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639896, 39.349285, 38.310226>,  <32.774784, 39.680840, 38.131687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639896, 39.349285, 38.310226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027699, -0.465181, -0.884782,
		0.941019, -0.310726, 0.133908,
		-0.337217, -0.828888, 0.446352,
		32.538731, 39.100620, 38.444134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213177, 39.106750, 37.872513>,  <32.774784, 39.680840, 38.131687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213177, 39.106750, 37.872513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865524, 38.956100, 38.000740>,  <32.656933, 38.865711, 38.077679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865524, 38.956100, 38.000740>,  <33.213177, 39.106750, 37.872513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865524, 38.956100, 38.000740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097767, -0.504547, -0.857831,
		0.484824, -0.776908, 0.401696,
		-0.869130, -0.376624, 0.320573,
		32.604786, 38.843113, 38.096912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250961, 38.339066, 37.718708>,  <33.213177, 39.106750, 37.872513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250961, 38.339066, 37.718708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866360, 38.439110, 37.764233>,  <32.635597, 38.499134, 37.791546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866360, 38.439110, 37.764233>,  <33.250961, 38.339066, 37.718708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866360, 38.439110, 37.764233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248307, -0.613432, -0.749697,
		-0.117688, -0.749098, 0.651921,
		-0.961506, 0.250107, 0.113813,
		32.577908, 38.514141, 37.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901173, 37.632256, 37.829674>,  <33.250961, 38.339066, 37.718708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901173, 37.632256, 37.829674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666424, 37.930317, 37.702980>,  <32.525574, 38.109154, 37.626965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666424, 37.930317, 37.702980>,  <32.901173, 37.632256, 37.829674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666424, 37.930317, 37.702980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186398, -0.505017, -0.842742,
		-0.787929, -0.435547, 0.435278,
		-0.586876, 0.745156, -0.316733,
		32.490360, 38.153862, 37.607960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252541, 37.400002, 37.723511>,  <32.901173, 37.632256, 37.829674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252541, 37.400002, 37.723511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329201, 37.710194, 37.482880>,  <32.375195, 37.896309, 37.338501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329201, 37.710194, 37.482880>,  <32.252541, 37.400002, 37.723511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329201, 37.710194, 37.482880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376910, -0.507791, -0.774653,
		-0.906206, 0.375203, 0.194970,
		0.191648, 0.775481, -0.601581,
		32.386696, 37.942837, 37.302406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881916, 36.969814, 37.459602>,  <32.252541, 37.400002, 37.723511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881916, 36.969814, 37.459602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273582, 37.037033, 37.414021>,  <33.508583, 37.077366, 37.386673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273582, 37.037033, 37.414021>,  <32.881916, 36.969814, 37.459602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273582, 37.037033, 37.414021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098301, -0.098695, -0.990251,
		-0.177657, 0.980826, -0.080120,
		0.979170, 0.168049, -0.113951,
		33.567333, 37.087448, 37.379837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995979, 36.153103, 37.664791>,  <32.881916, 36.969814, 37.459602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995979, 36.153103, 37.664791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175354, 35.810677, 37.767597>,  <33.282978, 35.605221, 37.829281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175354, 35.810677, 37.767597>,  <32.995979, 36.153103, 37.664791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175354, 35.810677, 37.767597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168898, 0.201215, 0.964876,
		-0.877714, -0.476092, -0.054356,
		0.448433, -0.856066, 0.257020,
		33.309883, 35.553856, 37.844704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739159, 35.911316, 38.340630>,  <32.995979, 36.153103, 37.664791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739159, 35.911316, 38.340630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082623, 35.706993, 38.323723>,  <33.288700, 35.584400, 38.313580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082623, 35.706993, 38.323723>,  <32.739159, 35.911316, 38.340630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082623, 35.706993, 38.323723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115288, 0.112138, 0.986982,
		-0.499416, -0.852352, 0.155178,
		0.858657, -0.510805, -0.042262,
		33.340221, 35.553753, 38.311043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705112, 35.291706, 38.737240>,  <32.739159, 35.911316, 38.340630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705112, 35.291706, 38.737240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087517, 35.401707, 38.778053>,  <33.316959, 35.467709, 38.802540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087517, 35.401707, 38.778053>,  <32.705112, 35.291706, 38.737240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087517, 35.401707, 38.778053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124385, 0.065068, 0.990098,
		0.265640, -0.959239, 0.096412,
		0.956014, 0.275002, 0.102030,
		33.374321, 35.484207, 38.808662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957478, 34.812172, 39.218140>,  <32.705112, 35.291706, 38.737240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957478, 34.812172, 39.218140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191067, 35.136871, 39.216042>,  <33.331223, 35.331692, 39.214783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191067, 35.136871, 39.216042>,  <32.957478, 34.812172, 39.218140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191067, 35.136871, 39.216042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128655, -0.086172, 0.987938,
		0.801510, -0.577608, -0.154758,
		0.583977, 0.811753, -0.005244,
		33.366261, 35.380398, 39.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468067, 34.637714, 39.666649>,  <32.957478, 34.812172, 39.218140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468067, 34.637714, 39.666649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527943, 35.032539, 39.643642>,  <33.563869, 35.269432, 39.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527943, 35.032539, 39.643642>,  <33.468067, 34.637714, 39.666649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527943, 35.032539, 39.643642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161409, 0.032997, 0.986336,
		0.975469, -0.156930, -0.154381,
		0.149691, 0.987058, -0.057517,
		33.572849, 35.328655, 39.626389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048946, 34.794201, 40.172020>,  <33.468067, 34.637714, 39.666649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048946, 34.794201, 40.172020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851410, 35.136963, 40.112915>,  <33.732887, 35.342621, 40.077450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851410, 35.136963, 40.112915>,  <34.048946, 34.794201, 40.172020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851410, 35.136963, 40.112915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082628, 0.215408, 0.973022,
		0.865615, 0.468313, -0.177182,
		-0.493845, 0.856903, -0.147765,
		33.703255, 35.394035, 40.068584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537453, 35.226601, 40.479366>,  <34.048946, 34.794201, 40.172020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537453, 35.226601, 40.479366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200645, 35.442177, 40.469963>,  <33.998562, 35.571522, 40.464321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200645, 35.442177, 40.469963>,  <34.537453, 35.226601, 40.479366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200645, 35.442177, 40.469963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293746, 0.494615, 0.817967,
		0.452462, 0.681837, -0.574785,
		-0.842017, 0.538939, -0.023508,
		33.948040, 35.603859, 40.462910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799068, 35.784370, 40.634445>,  <34.537453, 35.226601, 40.479366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799068, 35.784370, 40.634445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406189, 35.833843, 40.690994>,  <34.170460, 35.863529, 40.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406189, 35.833843, 40.690994>,  <34.799068, 35.784370, 40.634445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406189, 35.833843, 40.690994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187729, 0.672692, 0.715712,
		-0.006581, 0.729512, -0.683936,
		-0.982199, 0.123685, 0.141377,
		34.111530, 35.870949, 40.733406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683338, 36.535389, 40.661243>,  <34.799068, 35.784370, 40.634445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683338, 36.535389, 40.661243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371677, 36.353779, 40.834118>,  <34.184681, 36.244812, 40.937843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371677, 36.353779, 40.834118>,  <34.683338, 36.535389, 40.661243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371677, 36.353779, 40.834118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119790, 0.568912, 0.813627,
		-0.615285, 0.685709, -0.388879,
		-0.779150, -0.454029, 0.432184,
		34.137932, 36.217571, 40.963772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089718, 37.083183, 40.915756>,  <34.683338, 36.535389, 40.661243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089718, 37.083183, 40.915756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048405, 36.770561, 41.161850>,  <34.023617, 36.582989, 41.309505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048405, 36.770561, 41.161850>,  <34.089718, 37.083183, 40.915756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048405, 36.770561, 41.161850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005144, 0.618113, 0.786072,
		-0.994639, 0.084351, -0.059819,
		-0.103281, -0.781551, 0.615233,
		34.017422, 36.536095, 41.346420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479897, 37.353924, 41.318626>,  <34.089718, 37.083183, 40.915756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479897, 37.353924, 41.318626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689747, 37.050877, 41.473949>,  <33.815659, 36.869049, 41.567142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689747, 37.050877, 41.473949>,  <33.479897, 37.353924, 41.318626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689747, 37.050877, 41.473949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069387, 0.416550, 0.906461,
		-0.848500, -0.502497, 0.165965,
		0.524627, -0.757616, 0.388310,
		33.847134, 36.823593, 41.590443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145309, 37.206699, 41.923332>,  <33.479897, 37.353924, 41.318626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145309, 37.206699, 41.923332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504932, 37.038338, 41.971561>,  <33.720707, 36.937321, 42.000500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504932, 37.038338, 41.971561>,  <33.145309, 37.206699, 41.923332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504932, 37.038338, 41.971561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042701, 0.358367, 0.932604,
		-0.435746, -0.833314, 0.340165,
		0.899056, -0.420904, 0.120573,
		33.774651, 36.912067, 42.007732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073891, 36.956398, 42.574814>,  <33.145309, 37.206699, 41.923332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073891, 36.956398, 42.574814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464951, 36.941570, 42.492039>,  <33.699589, 36.932674, 42.442375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464951, 36.941570, 42.492039>,  <33.073891, 36.956398, 42.574814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464951, 36.941570, 42.492039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204500, 0.395925, 0.895222,
		0.048743, -0.917534, 0.394658,
		0.977652, -0.037072, -0.206935,
		33.758247, 36.930450, 42.429958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409023, 36.699852, 43.242573>,  <33.073891, 36.956398, 42.574814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409023, 36.699852, 43.242573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705532, 36.858448, 43.025940>,  <33.883438, 36.953606, 42.895962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705532, 36.858448, 43.025940>,  <33.409023, 36.699852, 43.242573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705532, 36.858448, 43.025940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511521, 0.188722, 0.838290,
		0.434585, -0.898430, -0.062920,
		0.741271, 0.396493, -0.541582,
		33.927914, 36.977394, 42.863464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022423, 36.393017, 43.528351>,  <33.409023, 36.699852, 43.242573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022423, 36.393017, 43.528351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115795, 36.728535, 43.331604>,  <34.171818, 36.929848, 43.213554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115795, 36.728535, 43.331604>,  <34.022423, 36.393017, 43.528351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115795, 36.728535, 43.331604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662355, 0.233174, 0.711980,
		0.711897, -0.491986, -0.501151,
		0.233429, 0.838796, -0.491866,
		34.185825, 36.980175, 43.184044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719143, 36.539932, 43.628902>,  <34.022423, 36.393017, 43.528351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719143, 36.539932, 43.628902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564011, 36.894634, 43.528297>,  <34.470932, 37.107456, 43.467934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564011, 36.894634, 43.528297>,  <34.719143, 36.539932, 43.628902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564011, 36.894634, 43.528297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532673, 0.438316, 0.723974,
		0.752227, 0.146806, -0.642341,
		-0.387832, 0.886751, -0.251513,
		34.447662, 37.160660, 43.452843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304768, 37.020298, 43.552326>,  <34.719143, 36.539932, 43.628902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304768, 37.020298, 43.552326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994041, 37.260517, 43.628120>,  <34.807606, 37.404648, 43.673595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994041, 37.260517, 43.628120>,  <35.304768, 37.020298, 43.552326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994041, 37.260517, 43.628120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541475, 0.483374, 0.687862,
		0.321499, 0.636944, -0.700672,
		-0.776816, 0.600543, 0.189485,
		34.760998, 37.440681, 43.684967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668369, 37.623398, 43.740654>,  <35.304768, 37.020298, 43.552326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668369, 37.623398, 43.740654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290508, 37.671036, 43.862930>,  <35.063793, 37.699619, 43.936295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290508, 37.671036, 43.862930>,  <35.668369, 37.623398, 43.740654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290508, 37.671036, 43.862930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327997, 0.362784, 0.872242,
		-0.007019, 0.924232, -0.381768,
		-0.944653, 0.119096, 0.305691,
		35.007111, 37.706764, 43.954639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647537, 38.206532, 44.222980>,  <35.668369, 37.623398, 43.740654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647537, 38.206532, 44.222980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321453, 38.001396, 44.330631>,  <35.125801, 37.878315, 44.395222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321453, 38.001396, 44.330631>,  <35.647537, 38.206532, 44.222980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321453, 38.001396, 44.330631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128651, 0.292722, 0.947504,
		-0.564695, 0.807038, -0.172653,
		-0.815211, -0.512838, 0.269125,
		35.076889, 37.847546, 44.411369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183193, 38.642132, 44.809406>,  <35.647537, 38.206532, 44.222980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183193, 38.642132, 44.809406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078617, 38.256901, 44.835114>,  <35.015873, 38.025761, 44.850536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078617, 38.256901, 44.835114>,  <35.183193, 38.642132, 44.809406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078617, 38.256901, 44.835114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155743, 0.107800, 0.981898,
		-0.952573, 0.246694, -0.178175,
		-0.261436, -0.963079, 0.064267,
		35.000187, 37.967976, 44.854393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613888, 38.618572, 45.221851>,  <35.183193, 38.642132, 44.809406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613888, 38.618572, 45.221851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784664, 38.257427, 45.242123>,  <34.887131, 38.040741, 45.254288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784664, 38.257427, 45.242123>,  <34.613888, 38.618572, 45.221851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784664, 38.257427, 45.242123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125198, -0.003509, 0.992126,
		-0.895572, -0.429921, -0.114534,
		0.426937, -0.902860, 0.050683,
		34.912746, 37.986568, 45.257328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292843, 38.277359, 45.663422>,  <34.613888, 38.618572, 45.221851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292843, 38.277359, 45.663422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625675, 38.055496, 45.663387>,  <34.825375, 37.922379, 45.663368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625675, 38.055496, 45.663387>,  <34.292843, 38.277359, 45.663422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625675, 38.055496, 45.663387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034030, -0.051204, 0.998108,
		-0.553612, -0.830502, -0.061481,
		0.832079, -0.554658, -0.000085,
		34.875298, 37.889099, 45.663361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294376, 37.832470, 46.308411>,  <34.292843, 38.277359, 45.663422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294376, 37.832470, 46.308411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679581, 37.791103, 46.208881>,  <34.910702, 37.766285, 46.149162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679581, 37.791103, 46.208881>,  <34.294376, 37.832470, 46.308411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679581, 37.791103, 46.208881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250947, 0.007823, 0.967969,
		-0.098158, -0.994607, 0.033485,
		0.963012, -0.103417, -0.248826,
		34.968483, 37.760078, 46.134235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560997, 37.284016, 46.720146>,  <34.294376, 37.832470, 46.308411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560997, 37.284016, 46.720146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871159, 37.501614, 46.591885>,  <35.057255, 37.632172, 46.514927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871159, 37.501614, 46.591885>,  <34.560997, 37.284016, 46.720146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871159, 37.501614, 46.591885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330882, 0.082482, 0.940060,
		0.537836, -0.835025, -0.116041,
		0.775403, 0.543994, -0.320657,
		35.103779, 37.664810, 46.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058697, 37.010258, 47.105530>,  <34.560997, 37.284016, 46.720146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058697, 37.010258, 47.105530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176529, 37.372051, 46.982155>,  <35.247227, 37.589127, 46.908131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176529, 37.372051, 46.982155>,  <35.058697, 37.010258, 47.105530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176529, 37.372051, 46.982155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354518, 0.196293, 0.914213,
		0.887435, -0.378654, -0.262832,
		0.294578, 0.904484, -0.308437,
		35.264904, 37.643394, 46.889626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631996, 37.144222, 47.470211>,  <35.058697, 37.010258, 47.105530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631996, 37.144222, 47.470211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550011, 37.519497, 47.358643>,  <35.500820, 37.744659, 47.291702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550011, 37.519497, 47.358643>,  <35.631996, 37.144222, 47.470211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550011, 37.519497, 47.358643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290345, 0.330428, 0.898063,
		0.934714, 0.103084, -0.340123,
		-0.204962, 0.938185, -0.278925,
		35.488522, 37.800953, 47.274963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215534, 37.646584, 47.722301>,  <35.631996, 37.144222, 47.470211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215534, 37.646584, 47.722301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879227, 37.857162, 47.671768>,  <35.677441, 37.983509, 47.641449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879227, 37.857162, 47.671768>,  <36.215534, 37.646584, 47.722301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879227, 37.857162, 47.671768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202388, 0.522064, 0.828546,
		0.502138, 0.671049, -0.545482,
		-0.840771, 0.526444, -0.126336,
		35.626995, 38.015095, 47.633869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408173, 38.124153, 48.094887>,  <36.215534, 37.646584, 47.722301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408173, 38.124153, 48.094887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019688, 38.193539, 48.029579>,  <35.786598, 38.235168, 47.990395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019688, 38.193539, 48.029579>,  <36.408173, 38.124153, 48.094887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019688, 38.193539, 48.029579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028516, 0.595799, 0.802627,
		0.236503, 0.784177, -0.573701,
		-0.971212, 0.173464, -0.163270,
		35.728325, 38.245579, 47.980598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940800, 38.562878, 47.837379>,  <36.408173, 38.124153, 48.094887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940800, 38.562878, 47.837379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284565, 38.400970, 47.962330>,  <37.490822, 38.303825, 48.037300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284565, 38.400970, 47.962330>,  <36.940800, 38.562878, 47.837379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284565, 38.400970, 47.962330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089168, -0.482944, -0.871099,
		0.503450, 0.776486, -0.378956,
		0.859411, -0.404764, 0.312376,
		37.542389, 38.279541, 48.056042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392021, 38.693146, 47.315228>,  <36.940800, 38.562878, 47.837379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392021, 38.693146, 47.315228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557854, 38.386993, 47.512131>,  <37.657352, 38.203304, 47.630272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557854, 38.386993, 47.512131>,  <37.392021, 38.693146, 47.315228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557854, 38.386993, 47.512131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264644, -0.416156, -0.869929,
		0.870683, 0.490927, 0.030025,
		0.414577, -0.765379, 0.492261,
		37.682228, 38.157379, 47.659809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155106, 38.702839, 47.144211>,  <37.392021, 38.693146, 47.315228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155106, 38.702839, 47.144211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015034, 38.341686, 47.243946>,  <37.930988, 38.124992, 47.303787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015034, 38.341686, 47.243946>,  <38.155106, 38.702839, 47.144211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015034, 38.341686, 47.243946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360060, -0.375492, -0.854027,
		0.864713, -0.209290, 0.456584,
		-0.350183, -0.902886, 0.249335,
		37.909977, 38.070820, 47.318748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617847, 38.222179, 46.894382>,  <38.155106, 38.702839, 47.144211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617847, 38.222179, 46.894382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322289, 37.969982, 46.989460>,  <38.144951, 37.818665, 47.046509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322289, 37.969982, 46.989460>,  <38.617847, 38.222179, 46.894382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322289, 37.969982, 46.989460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268505, -0.599060, -0.754342,
		0.618005, -0.493561, 0.611937,
		-0.738901, -0.630496, 0.237698,
		38.100616, 37.780834, 47.060768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935421, 37.629639, 46.819550>,  <38.617847, 38.222179, 46.894382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935421, 37.629639, 46.819550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547825, 37.534081, 46.794300>,  <38.315266, 37.476746, 46.779152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547825, 37.534081, 46.794300>,  <38.935421, 37.629639, 46.819550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547825, 37.534081, 46.794300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219101, -0.712621, -0.666458,
		0.114232, -0.659622, 0.742866,
		-0.968992, -0.238894, -0.063119,
		38.257126, 37.462414, 46.775364>
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
