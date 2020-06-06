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
	<24.104666, 34.626823, 35.033913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240974, 34.985851, 34.922024>,  <24.322760, 35.201267, 34.854893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240974, 34.985851, 34.922024>,  <24.104666, 34.626823, 35.033913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240974, 34.985851, 34.922024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405258, 0.128226, 0.905165,
		0.848316, -0.421815, -0.320051,
		0.340773, 0.897569, -0.279720,
		24.343206, 35.255123, 34.838108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.296654, 34.803200, 35.608669>,  <24.104666, 34.626823, 35.033913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.296654, 34.803200, 35.608669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429262, 35.112114, 35.391903>,  <24.508827, 35.297462, 35.261845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429262, 35.112114, 35.391903>,  <24.296654, 34.803200, 35.608669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429262, 35.112114, 35.391903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542465, 0.313919, 0.779222,
		0.771898, -0.552298, -0.314866,
		0.331520, 0.772284, -0.541916,
		24.528719, 35.343800, 35.229328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089443, 34.776596, 35.489792>,  <24.296654, 34.803200, 35.608669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089443, 34.776596, 35.489792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880520, 35.112122, 35.551220>,  <24.755165, 35.313438, 35.588078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880520, 35.112122, 35.551220>,  <25.089443, 34.776596, 35.489792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880520, 35.112122, 35.551220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419121, 0.095677, 0.902875,
		0.742651, 0.535945, -0.401538,
		-0.522309, 0.838814, 0.153571,
		24.723827, 35.363766, 35.597290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647545, 35.270817, 35.532177>,  <25.089443, 34.776596, 35.489792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647545, 35.270817, 35.532177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334234, 35.359207, 35.764606>,  <25.146248, 35.412243, 35.904064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334234, 35.359207, 35.764606>,  <25.647545, 35.270817, 35.532177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334234, 35.359207, 35.764606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543223, -0.211224, 0.812585,
		0.302297, 0.952132, 0.045408,
		-0.783279, 0.220975, 0.581072,
		25.099251, 35.425499, 35.938927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151430, 35.848270, 35.328320>,  <25.647545, 35.270817, 35.532177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151430, 35.848270, 35.328320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400185, 36.104343, 35.508728>,  <26.549438, 36.257988, 35.616974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400185, 36.104343, 35.508728>,  <26.151430, 35.848270, 35.328320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400185, 36.104343, 35.508728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367585, 0.747180, -0.553718,
		-0.691475, 0.178563, 0.699984,
		0.621888, 0.640186, 0.451019,
		26.586750, 36.296398, 35.644035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901661, 35.923687, 35.131004>,  <26.151430, 35.848270, 35.328320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901661, 35.923687, 35.131004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180145, 36.198776, 35.213299>,  <27.347237, 36.363831, 35.262676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180145, 36.198776, 35.213299>,  <26.901661, 35.923687, 35.131004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180145, 36.198776, 35.213299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251197, 0.035075, -0.967300,
		-0.672450, 0.725126, -0.148334,
		0.696212, 0.687723, 0.205735,
		27.389009, 36.405094, 35.275021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764343, 36.560711, 34.795746>,  <26.901661, 35.923687, 35.131004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764343, 36.560711, 34.795746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153378, 36.482651, 34.846333>,  <27.386799, 36.435814, 34.876682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153378, 36.482651, 34.846333>,  <26.764343, 36.560711, 34.795746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153378, 36.482651, 34.846333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147171, 0.095486, -0.984491,
		0.180047, 0.976114, 0.121589,
		0.972586, -0.195149, 0.126464,
		27.445154, 36.424107, 34.884274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178047, 37.120449, 34.616257>,  <26.764343, 36.560711, 34.795746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178047, 37.120449, 34.616257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422150, 36.807976, 34.563587>,  <27.568611, 36.620491, 34.531986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422150, 36.807976, 34.563587>,  <27.178047, 37.120449, 34.616257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422150, 36.807976, 34.563587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236842, 0.338519, -0.910665,
		0.755971, 0.524553, 0.391601,
		0.610256, -0.781184, -0.131674,
		27.605227, 36.573620, 34.524086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624367, 37.470364, 34.191425>,  <27.178047, 37.120449, 34.616257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624367, 37.470364, 34.191425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737892, 37.087715, 34.165115>,  <27.806007, 36.858128, 34.149330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737892, 37.087715, 34.165115>,  <27.624367, 37.470364, 34.191425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737892, 37.087715, 34.165115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214338, 0.130153, -0.968049,
		0.934617, 0.260646, 0.241979,
		0.283812, -0.956621, -0.065778,
		27.823036, 36.800728, 34.145382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408760, 37.329174, 34.002979>,  <27.624367, 37.470364, 34.191425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408760, 37.329174, 34.002979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166519, 37.034771, 33.881958>,  <28.021173, 36.858128, 33.809345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166519, 37.034771, 33.881958>,  <28.408760, 37.329174, 34.002979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166519, 37.034771, 33.881958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240209, 0.193392, -0.951262,
		0.758647, -0.648764, 0.059677,
		-0.605603, -0.736006, -0.302555,
		27.984838, 36.813969, 33.791191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738035, 36.973106, 33.465778>,  <28.408760, 37.329174, 34.002979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738035, 36.973106, 33.465778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364687, 36.835903, 33.423512>,  <28.140678, 36.753582, 33.398151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364687, 36.835903, 33.423512>,  <28.738035, 36.973106, 33.465778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364687, 36.835903, 33.423512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142973, -0.085294, -0.986044,
		0.329207, -0.935452, 0.128652,
		-0.933371, -0.343007, -0.105665,
		28.084675, 36.733002, 33.391811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691614, 36.406609, 32.904652>,  <28.738035, 36.973106, 33.465778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691614, 36.406609, 32.904652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311834, 36.530338, 32.926060>,  <28.083965, 36.604576, 32.938904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311834, 36.530338, 32.926060>,  <28.691614, 36.406609, 32.904652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311834, 36.530338, 32.926060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066546, -0.031707, -0.997280,
		-0.306783, -0.950429, 0.050688,
		-0.949450, 0.309322, 0.053520,
		28.026999, 36.623135, 32.942116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327805, 36.015316, 32.530811>,  <28.691614, 36.406609, 32.904652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327805, 36.015316, 32.530811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082500, 36.330849, 32.547115>,  <27.935318, 36.520168, 32.556896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082500, 36.330849, 32.547115>,  <28.327805, 36.015316, 32.530811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082500, 36.330849, 32.547115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139803, -0.057608, -0.988502,
		-0.777411, -0.611907, 0.145609,
		-0.613260, 0.788829, 0.040762,
		27.898523, 36.567497, 32.559345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789085, 35.898983, 31.931034>,  <28.327805, 36.015316, 32.530811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789085, 35.898983, 31.931034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751770, 36.284607, 32.030548>,  <27.729380, 36.515980, 32.090256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751770, 36.284607, 32.030548>,  <27.789085, 35.898983, 31.931034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751770, 36.284607, 32.030548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181308, 0.229248, -0.956333,
		-0.978992, -0.134322, 0.153405,
		-0.093289, 0.964055, 0.248785,
		27.723783, 36.573822, 32.105183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150951, 36.081879, 31.709805>,  <27.789085, 35.898983, 31.931034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150951, 36.081879, 31.709805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344833, 36.431114, 31.730862>,  <27.461163, 36.640656, 31.743496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344833, 36.431114, 31.730862>,  <27.150951, 36.081879, 31.709805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344833, 36.431114, 31.730862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172595, 0.154474, -0.972805,
		-0.857481, 0.462436, 0.225566,
		0.484704, 0.873093, 0.052645,
		27.490244, 36.693043, 31.746655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762804, 36.514599, 31.386858>,  <27.150951, 36.081879, 31.709805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762804, 36.514599, 31.386858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120857, 36.692303, 31.372032>,  <27.335690, 36.798923, 31.363136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120857, 36.692303, 31.372032>,  <26.762804, 36.514599, 31.386858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120857, 36.692303, 31.372032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101873, 0.122898, -0.987177,
		-0.434004, 0.887430, 0.155268,
		0.895132, 0.444257, -0.037066,
		27.389397, 36.825581, 31.360912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654707, 37.029797, 30.931593>,  <26.762804, 36.514599, 31.386858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654707, 37.029797, 30.931593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051212, 37.060757, 30.974318>,  <27.289116, 37.079330, 30.999952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051212, 37.060757, 30.974318>,  <26.654707, 37.029797, 30.931593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051212, 37.060757, 30.974318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077393, 0.314452, -0.946113,
		-0.106813, 0.946113, 0.305714,
		0.991262, 0.077397, 0.106810,
		27.348591, 37.083977, 31.006361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737194, 37.743580, 30.669485>,  <26.654707, 37.029797, 30.931593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737194, 37.743580, 30.669485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088943, 37.553158, 30.666117>,  <27.299994, 37.438904, 30.664097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088943, 37.553158, 30.666117>,  <26.737194, 37.743580, 30.669485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088943, 37.553158, 30.666117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343960, 0.647394, -0.680126,
		0.329228, 0.595190, 0.733047,
		0.879375, -0.476055, -0.008419,
		27.352757, 37.410339, 30.663591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314548, 38.336964, 30.643190>,  <26.737194, 37.743580, 30.669485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314548, 38.336964, 30.643190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441074, 37.984619, 30.502325>,  <27.516991, 37.773212, 30.417805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441074, 37.984619, 30.502325>,  <27.314548, 38.336964, 30.643190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441074, 37.984619, 30.502325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327578, 0.449812, -0.830880,
		0.890302, 0.147459, 0.430835,
		0.316315, -0.880866, -0.352164,
		27.535969, 37.720360, 30.396675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828339, 38.591476, 30.213690>,  <27.314548, 38.336964, 30.643190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828339, 38.591476, 30.213690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828318, 38.203476, 30.116444>,  <27.828304, 37.970676, 30.058096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828318, 38.203476, 30.116444>,  <27.828339, 38.591476, 30.213690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828318, 38.203476, 30.116444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352932, 0.227454, -0.907581,
		0.935649, -0.085853, 0.342330,
		-0.000054, -0.969997, -0.243117,
		27.828300, 37.912476, 30.043509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480301, 38.491585, 29.861881>,  <27.828339, 38.591476, 30.213690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480301, 38.491585, 29.861881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230352, 38.201492, 29.746246>,  <28.080383, 38.027435, 29.676865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230352, 38.201492, 29.746246>,  <28.480301, 38.491585, 29.861881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230352, 38.201492, 29.746246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346761, 0.073946, -0.935034,
		0.699497, -0.684519, 0.205277,
		-0.624869, -0.725235, -0.289089,
		28.042892, 37.983921, 29.659519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843176, 37.994534, 29.448462>,  <28.480301, 38.491585, 29.861881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843176, 37.994534, 29.448462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456463, 38.011036, 29.347559>,  <28.224436, 38.020939, 29.287018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456463, 38.011036, 29.347559>,  <28.843176, 37.994534, 29.448462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456463, 38.011036, 29.347559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255508, 0.183586, -0.949216,
		0.007148, -0.982137, -0.188029,
		-0.966780, 0.041258, -0.252256,
		28.166430, 38.023415, 29.271883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846323, 37.822403, 28.814821>,  <28.843176, 37.994534, 29.448462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846323, 37.822403, 28.814821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473654, 37.967648, 28.819506>,  <28.250051, 38.054794, 28.822317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473654, 37.967648, 28.819506>,  <28.846323, 37.822403, 28.814821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473654, 37.967648, 28.819506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064395, 0.196786, -0.978330,
		-0.357544, -0.910730, -0.206722,
		-0.931673, 0.363108, 0.011713,
		28.194151, 38.076580, 28.823019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578707, 37.604546, 28.109524>,  <28.846323, 37.822403, 28.814821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578707, 37.604546, 28.109524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347128, 37.900990, 28.245510>,  <28.208179, 38.078854, 28.327103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347128, 37.900990, 28.245510>,  <28.578707, 37.604546, 28.109524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347128, 37.900990, 28.245510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007653, 0.421873, -0.906623,
		-0.815329, -0.522286, -0.249914,
		-0.578948, 0.741108, 0.339968,
		28.173443, 38.123322, 28.347500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091656, 37.690029, 27.639433>,  <28.578707, 37.604546, 28.109524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091656, 37.690029, 27.639433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082159, 38.042412, 27.828476>,  <28.076462, 38.253841, 27.941902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082159, 38.042412, 27.828476>,  <28.091656, 37.690029, 27.639433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082159, 38.042412, 27.828476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125194, 0.471640, -0.872859,
		-0.991848, 0.038446, -0.121487,
		-0.023740, 0.880953, 0.472609,
		28.075037, 38.306698, 27.970259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694342, 38.098499, 27.220314>,  <28.091656, 37.690029, 27.639433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694342, 38.098499, 27.220314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901266, 38.349659, 27.452908>,  <28.025421, 38.500355, 27.592464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901266, 38.349659, 27.452908>,  <27.694342, 38.098499, 27.220314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901266, 38.349659, 27.452908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090090, 0.635735, -0.766632,
		-0.851041, 0.448975, 0.272306,
		0.517313, 0.627904, 0.581485,
		28.056459, 38.538029, 27.627354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463776, 38.847717, 27.181837>,  <27.694342, 38.098499, 27.220314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463776, 38.847717, 27.181837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847258, 38.842079, 27.295458>,  <28.077347, 38.838696, 27.363630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847258, 38.842079, 27.295458>,  <27.463776, 38.847717, 27.181837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847258, 38.842079, 27.295458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211718, 0.702249, -0.679722,
		-0.189894, 0.711792, 0.676234,
		0.958705, -0.014096, 0.284052,
		28.134869, 38.837849, 27.380674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732315, 39.490715, 27.624945>,  <27.463776, 38.847717, 27.181837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732315, 39.490715, 27.624945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934288, 39.280743, 27.350866>,  <28.055471, 39.154758, 27.186419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934288, 39.280743, 27.350866>,  <27.732315, 39.490715, 27.624945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934288, 39.280743, 27.350866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079142, 0.818636, -0.568834,
		0.859522, 0.232996, 0.454901,
		0.504934, -0.524927, -0.685196,
		28.085768, 39.123264, 27.145308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209946, 39.968552, 27.336853>,  <27.732315, 39.490715, 27.624945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209946, 39.968552, 27.336853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139181, 39.720387, 27.031229>,  <28.096722, 39.571487, 26.847855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139181, 39.720387, 27.031229>,  <28.209946, 39.968552, 27.336853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139181, 39.720387, 27.031229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059437, 0.781623, -0.620913,
		0.982430, -0.064433, -0.175154,
		-0.176911, -0.620415, -0.764060,
		28.086107, 39.534264, 26.802011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866356, 39.864555, 26.920404>,  <28.209946, 39.968552, 27.336853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866356, 39.864555, 26.920404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550016, 39.801884, 26.683758>,  <28.360212, 39.764282, 26.541771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550016, 39.801884, 26.683758>,  <28.866356, 39.864555, 26.920404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550016, 39.801884, 26.683758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325746, 0.710611, -0.623636,
		0.518117, -0.685919, -0.510950,
		-0.790851, -0.156677, -0.591615,
		28.312761, 39.754879, 26.506273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784634, 39.288750, 27.214989>,  <28.866356, 39.864555, 26.920404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784634, 39.288750, 27.214989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019005, 39.284630, 26.890869>,  <29.159628, 39.282158, 26.696398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019005, 39.284630, 26.890869>,  <28.784634, 39.288750, 27.214989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019005, 39.284630, 26.890869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543787, 0.746357, 0.383727,
		0.600820, -0.665466, 0.442912,
		0.585928, -0.010299, -0.810298,
		29.194782, 39.281540, 26.647779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551395, 39.389305, 27.447649>,  <28.784634, 39.288750, 27.214989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551395, 39.389305, 27.447649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509129, 39.474426, 27.059103>,  <29.483768, 39.525497, 26.825975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509129, 39.474426, 27.059103>,  <29.551395, 39.389305, 27.447649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509129, 39.474426, 27.059103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626048, 0.773180, 0.101279,
		0.772592, -0.597419, -0.214924,
		-0.105669, 0.212800, -0.971365,
		29.477428, 39.538265, 26.767693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203308, 39.361465, 27.041708>,  <29.551395, 39.389305, 27.447649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203308, 39.361465, 27.041708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925041, 39.634583, 26.952404>,  <29.758081, 39.798454, 26.898821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925041, 39.634583, 26.952404>,  <30.203308, 39.361465, 27.041708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925041, 39.634583, 26.952404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639032, 0.730165, 0.241861,
		0.328157, 0.025585, -0.944277,
		-0.695666, 0.682791, -0.223259,
		29.716341, 39.839420, 26.885426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505421, 39.788609, 26.487663>,  <30.203308, 39.361465, 27.041708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505421, 39.788609, 26.487663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238995, 39.972851, 26.722336>,  <30.079140, 40.083397, 26.863140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238995, 39.972851, 26.722336>,  <30.505421, 39.788609, 26.487663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238995, 39.972851, 26.722336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637628, 0.759732, 0.127429,
		-0.387026, 0.458961, -0.799728,
		-0.666064, 0.460610, 0.586683,
		30.039175, 40.111034, 26.898340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213600, 40.085918, 26.317505>,  <30.505421, 39.788609, 26.487663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213600, 40.085918, 26.317505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149734, 39.692154, 26.288019>,  <31.111416, 39.455894, 26.270329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149734, 39.692154, 26.288019>,  <31.213600, 40.085918, 26.317505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149734, 39.692154, 26.288019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298797, -0.022977, 0.954040,
		-0.940865, 0.174352, -0.290471,
		-0.159665, -0.984415, -0.073714,
		31.101835, 39.396828, 26.265905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195862, 39.819523, 27.103483>,  <31.213600, 40.085918, 26.317505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195862, 39.819523, 27.103483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027960, 40.132298, 27.287823>,  <30.927217, 40.319962, 27.398426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027960, 40.132298, 27.287823>,  <31.195862, 39.819523, 27.103483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027960, 40.132298, 27.287823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242605, -0.392611, 0.887130,
		0.874613, 0.484182, -0.024901,
		-0.419756, 0.781937, 0.460847,
		30.902033, 40.366879, 27.426077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652927, 40.016041, 27.660341>,  <31.195862, 39.819523, 27.103483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652927, 40.016041, 27.660341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285912, 40.133125, 27.768000>,  <31.065702, 40.203377, 27.832596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285912, 40.133125, 27.768000>,  <31.652927, 40.016041, 27.660341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285912, 40.133125, 27.768000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147969, -0.376915, 0.914352,
		0.369087, 0.878781, 0.302522,
		-0.917540, 0.292711, 0.269147,
		31.010649, 40.220940, 27.848743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696337, 40.163460, 28.303362>,  <31.652927, 40.016041, 27.660341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696337, 40.163460, 28.303362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301064, 40.120071, 28.260042>,  <31.063900, 40.094036, 28.234051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301064, 40.120071, 28.260042>,  <31.696337, 40.163460, 28.303362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301064, 40.120071, 28.260042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024509, -0.585620, 0.810215,
		-0.151309, 0.803294, 0.576041,
		-0.988183, -0.108475, -0.108298,
		31.004608, 40.087528, 28.227552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394985, 40.239014, 29.014793>,  <31.696337, 40.163460, 28.303362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394985, 40.239014, 29.014793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093779, 40.054798, 28.826807>,  <30.913054, 39.944267, 28.714016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093779, 40.054798, 28.826807>,  <31.394985, 40.239014, 29.014793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093779, 40.054798, 28.826807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133210, -0.592744, 0.794298,
		-0.644376, 0.660724, 0.384998,
		-0.753017, -0.460541, -0.469965,
		30.867874, 39.916637, 28.685818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769459, 40.237274, 29.496790>,  <31.394985, 40.239014, 29.014793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769459, 40.237274, 29.496790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712206, 39.955860, 29.218351>,  <30.677855, 39.787010, 29.051289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712206, 39.955860, 29.218351>,  <30.769459, 40.237274, 29.496790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712206, 39.955860, 29.218351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391073, -0.605898, 0.692784,
		-0.909162, 0.371384, -0.188412,
		-0.143131, -0.703535, -0.696097,
		30.669268, 39.744801, 29.009521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025335, 39.990307, 29.532957>,  <30.769459, 40.237274, 29.496790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025335, 39.990307, 29.532957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249743, 39.705013, 29.364882>,  <30.384386, 39.533836, 29.264036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249743, 39.705013, 29.364882>,  <30.025335, 39.990307, 29.532957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249743, 39.705013, 29.364882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395153, -0.676764, 0.621164,
		-0.727403, -0.182445, -0.661512,
		0.561016, -0.713235, -0.420187,
		30.418047, 39.491043, 29.238825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623419, 39.458172, 29.667578>,  <30.025335, 39.990307, 29.532957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623419, 39.458172, 29.667578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973528, 39.295090, 29.563526>,  <30.183594, 39.197239, 29.501095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973528, 39.295090, 29.563526>,  <29.623419, 39.458172, 29.667578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973528, 39.295090, 29.563526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108683, -0.689938, 0.715663,
		-0.471256, -0.598130, -0.648196,
		0.875275, -0.407709, -0.260131,
		30.236111, 39.172775, 29.485487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523674, 38.720215, 29.637472>,  <29.623419, 39.458172, 29.667578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523674, 38.720215, 29.637472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918451, 38.759739, 29.688351>,  <30.155317, 38.783455, 29.718878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918451, 38.759739, 29.688351>,  <29.523674, 38.720215, 29.637472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918451, 38.759739, 29.688351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033554, -0.646255, 0.762383,
		0.157535, -0.756697, -0.634502,
		0.986943, 0.098812, 0.127198,
		30.214535, 38.789383, 29.726511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828943, 38.027000, 29.725185>,  <29.523674, 38.720215, 29.637472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828943, 38.027000, 29.725185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063662, 38.299694, 29.899960>,  <30.204493, 38.463310, 30.004824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063662, 38.299694, 29.899960>,  <29.828943, 38.027000, 29.725185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063662, 38.299694, 29.899960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014284, -0.548235, 0.836202,
		0.809609, -0.484439, -0.331440,
		0.586796, 0.681731, 0.436936,
		30.239700, 38.504215, 30.031040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285156, 37.642147, 30.056732>,  <29.828943, 38.027000, 29.725185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285156, 37.642147, 30.056732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334129, 37.982956, 30.260324>,  <30.363514, 38.187443, 30.382481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334129, 37.982956, 30.260324>,  <30.285156, 37.642147, 30.056732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334129, 37.982956, 30.260324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164103, -0.523161, 0.836285,
		0.978816, -0.018863, -0.203872,
		0.122433, 0.852025, 0.508982,
		30.370859, 38.238564, 30.413019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868294, 37.593468, 30.462925>,  <30.285156, 37.642147, 30.056732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868294, 37.593468, 30.462925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661819, 37.882149, 30.647402>,  <30.537935, 38.055359, 30.758087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661819, 37.882149, 30.647402>,  <30.868294, 37.593468, 30.462925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661819, 37.882149, 30.647402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093329, -0.487871, 0.867913,
		0.851377, 0.491046, 0.184476,
		-0.516185, 0.721704, 0.461191,
		30.506964, 38.098660, 30.785759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188293, 37.612717, 31.076464>,  <30.868294, 37.593468, 30.462925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188293, 37.612717, 31.076464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843725, 37.793697, 31.168756>,  <30.636984, 37.902287, 31.224133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843725, 37.793697, 31.168756>,  <31.188293, 37.612717, 31.076464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843725, 37.793697, 31.168756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121980, -0.256694, 0.958764,
		0.493027, 0.854044, 0.165931,
		-0.861421, 0.452456, 0.230734,
		30.585299, 37.929436, 31.237976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359219, 37.952541, 31.728769>,  <31.188293, 37.612717, 31.076464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359219, 37.952541, 31.728769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959717, 37.950058, 31.708950>,  <30.720016, 37.948566, 31.697058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959717, 37.950058, 31.708950>,  <31.359219, 37.952541, 31.728769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959717, 37.950058, 31.708950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045256, -0.306846, 0.950682,
		-0.021106, 0.951739, 0.306183,
		-0.998752, -0.006208, -0.049548,
		30.660091, 37.948196, 31.694086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186729, 38.207619, 32.342018>,  <31.359219, 37.952541, 31.728769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186729, 38.207619, 32.342018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849869, 38.026455, 32.224953>,  <30.647753, 37.917755, 32.154713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849869, 38.026455, 32.224953>,  <31.186729, 38.207619, 32.342018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849869, 38.026455, 32.224953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152493, -0.320552, 0.934876,
		-0.517226, 0.831938, 0.200889,
		-0.842154, -0.452908, -0.292663,
		30.597223, 37.890583, 32.137154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739767, 38.491817, 32.927090>,  <31.186729, 38.207619, 32.342018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739767, 38.491817, 32.927090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595402, 38.160992, 32.754715>,  <30.508783, 37.962498, 32.651291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595402, 38.160992, 32.754715>,  <30.739767, 38.491817, 32.927090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595402, 38.160992, 32.754715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041586, -0.475897, 0.878517,
		-0.931672, 0.299146, 0.206151,
		-0.360912, -0.827063, -0.430940,
		30.487127, 37.912872, 32.625435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263494, 38.356194, 33.436726>,  <30.739767, 38.491817, 32.927090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263494, 38.356194, 33.436726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302261, 38.024387, 33.216724>,  <30.325521, 37.825302, 33.084724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302261, 38.024387, 33.216724>,  <30.263494, 38.356194, 33.436726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302261, 38.024387, 33.216724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066862, -0.556786, 0.827961,
		-0.993044, -0.043468, -0.109425,
		0.096916, -0.829518, -0.550007,
		30.331337, 37.775532, 33.051723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715561, 37.949287, 33.634140>,  <30.263494, 38.356194, 33.436726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715561, 37.949287, 33.634140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005455, 37.718311, 33.483768>,  <30.179392, 37.579723, 33.393547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005455, 37.718311, 33.483768>,  <29.715561, 37.949287, 33.634140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005455, 37.718311, 33.483768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099442, -0.627530, 0.772216,
		-0.681818, -0.522267, -0.512213,
		0.724732, -0.577445, -0.375926,
		30.222876, 37.545078, 33.370991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452904, 37.367916, 33.705116>,  <29.715561, 37.949287, 33.634140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452904, 37.367916, 33.705116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842794, 37.293613, 33.655468>,  <30.076729, 37.249031, 33.625679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842794, 37.293613, 33.655468>,  <29.452904, 37.367916, 33.705116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842794, 37.293613, 33.655468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024326, -0.640517, 0.767559,
		-0.222080, -0.745140, -0.628846,
		0.974725, -0.185757, -0.124119,
		30.135212, 37.237885, 33.618233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538023, 36.675991, 33.522579>,  <29.452904, 37.367916, 33.705116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538023, 36.675991, 33.522579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892069, 36.789928, 33.669785>,  <30.104496, 36.858292, 33.758106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892069, 36.789928, 33.669785>,  <29.538023, 36.675991, 33.522579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892069, 36.789928, 33.669785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021555, -0.764852, 0.643845,
		0.464873, -0.577809, -0.670842,
		0.885115, 0.284846, 0.368014,
		30.157604, 36.875381, 33.780190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849169, 36.007454, 33.571365>,  <29.538023, 36.675991, 33.522579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849169, 36.007454, 33.571365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031355, 36.259296, 33.823124>,  <30.140667, 36.410404, 33.974178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031355, 36.259296, 33.823124>,  <29.849169, 36.007454, 33.571365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031355, 36.259296, 33.823124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223192, -0.603650, 0.765370,
		0.861821, -0.489077, -0.134419,
		0.455467, 0.629611, 0.629396,
		30.167995, 36.448181, 34.011944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158228, 35.608219, 34.008629>,  <29.849169, 36.007454, 33.571365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158228, 35.608219, 34.008629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177767, 35.951389, 34.213207>,  <30.189489, 36.157291, 34.335953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177767, 35.951389, 34.213207>,  <30.158228, 35.608219, 34.008629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177767, 35.951389, 34.213207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082032, -0.506878, 0.858106,
		0.995432, -0.083870, 0.045618,
		0.048847, 0.857928, 0.511443,
		30.192421, 36.208767, 34.366642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675245, 35.453407, 34.449306>,  <30.158228, 35.608219, 34.008629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675245, 35.453407, 34.449306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457598, 35.746117, 34.613472>,  <30.327009, 35.921741, 34.711971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457598, 35.746117, 34.613472>,  <30.675245, 35.453407, 34.449306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457598, 35.746117, 34.613472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061885, -0.522837, 0.850183,
		0.836722, 0.437204, 0.329773,
		-0.544121, 0.731775, 0.410413,
		30.294361, 35.965649, 34.736595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021656, 35.652813, 35.091919>,  <30.675245, 35.453407, 34.449306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021656, 35.652813, 35.091919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647236, 35.790527, 35.120975>,  <30.422585, 35.873158, 35.138409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647236, 35.790527, 35.120975>,  <31.021656, 35.652813, 35.091919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647236, 35.790527, 35.120975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029908, -0.283554, 0.958490,
		0.350597, 0.895020, 0.275718,
		-0.936049, 0.344290, 0.072645,
		30.366421, 35.893814, 35.142769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581453, 35.635727, 34.591167>,  <31.021656, 35.652813, 35.091919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581453, 35.635727, 34.591167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497837, 35.818550, 34.245358>,  <31.447668, 35.928246, 34.037872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497837, 35.818550, 34.245358>,  <31.581453, 35.635727, 34.591167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497837, 35.818550, 34.245358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977804, 0.084840, -0.191579,
		-0.014218, -0.885379, -0.464652,
		-0.209041, 0.457063, -0.864520,
		31.435125, 35.955669, 33.986000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006207, 35.270271, 34.017292>,  <31.581453, 35.635727, 34.591167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006207, 35.270271, 34.017292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920223, 35.660801, 34.007622>,  <31.868631, 35.895119, 34.001820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920223, 35.660801, 34.007622>,  <32.006207, 35.270271, 34.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920223, 35.660801, 34.007622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947150, 0.214446, 0.238581,
		0.238116, 0.028391, -0.970822,
		-0.214963, 0.976323, -0.024172,
		31.855734, 35.953697, 34.000370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655106, 35.633869, 33.897705>,  <32.006207, 35.270271, 34.017292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655106, 35.633869, 33.897705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452255, 35.933754, 34.067768>,  <32.330544, 36.113686, 34.169804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452255, 35.933754, 34.067768>,  <32.655106, 35.633869, 33.897705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452255, 35.933754, 34.067768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858982, 0.399309, 0.320472,
		0.070493, 0.527722, -0.846487,
		-0.507130, 0.749708, 0.425155,
		32.300117, 36.158665, 34.195316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920788, 36.286259, 33.856075>,  <32.655106, 35.633869, 33.897705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920788, 36.286259, 33.856075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681423, 36.396488, 34.156998>,  <32.537804, 36.462624, 34.337551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681423, 36.396488, 34.156998>,  <32.920788, 36.286259, 33.856075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681423, 36.396488, 34.156998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717019, 0.603163, 0.349397,
		-0.357482, 0.748502, -0.558526,
		-0.598407, 0.275570, 0.752310,
		32.501900, 36.479160, 34.382690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328930, 36.262714, 33.483356>,  <32.920788, 36.286259, 33.856075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328930, 36.262714, 33.483356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721760, 36.313400, 33.427528>,  <32.957458, 36.343811, 33.394032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721760, 36.313400, 33.427528>,  <32.328930, 36.262714, 33.483356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721760, 36.313400, 33.427528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188273, 0.621718, -0.760276,
		-0.009566, 0.772922, 0.634429,
		0.982070, 0.126719, -0.139573,
		33.016380, 36.351418, 33.385658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613544, 36.953926, 33.517059>,  <32.328930, 36.262714, 33.483356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613544, 36.953926, 33.517059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816612, 36.715916, 33.267834>,  <32.938454, 36.573109, 33.118298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816612, 36.715916, 33.267834>,  <32.613544, 36.953926, 33.517059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816612, 36.715916, 33.267834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220641, 0.609279, -0.761640,
		0.832819, 0.524137, 0.178026,
		0.507672, -0.595029, -0.623065,
		32.968914, 36.537407, 33.080914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920498, 37.563053, 33.175129>,  <32.613544, 36.953926, 33.517059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920498, 37.563053, 33.175129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980270, 37.238144, 32.949604>,  <33.016136, 37.043198, 32.814289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980270, 37.238144, 32.949604>,  <32.920498, 37.563053, 33.175129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980270, 37.238144, 32.949604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177592, 0.538897, -0.823439,
		0.972693, 0.223178, -0.063723,
		0.149433, -0.812269, -0.563816,
		33.025101, 36.994465, 32.780460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233753, 38.010372, 32.596539>,  <32.920498, 37.563053, 33.175129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233753, 38.010372, 32.596539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509354, 38.299252, 32.620907>,  <33.674713, 38.472580, 32.635529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509354, 38.299252, 32.620907>,  <33.233753, 38.010372, 32.596539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509354, 38.299252, 32.620907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168496, -0.241371, 0.955693,
		0.704906, -0.648204, -0.287992,
		0.688998, 0.722199, 0.060924,
		33.716053, 38.515911, 32.639183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763371, 37.764126, 33.080803>,  <33.233753, 38.010372, 32.596539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763371, 37.764126, 33.080803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838394, 38.156982, 33.086735>,  <33.883408, 38.392696, 33.090294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838394, 38.156982, 33.086735>,  <33.763371, 37.764126, 33.080803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838394, 38.156982, 33.086735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201744, -0.053298, 0.977987,
		0.961312, -0.180438, -0.208137,
		0.187560, 0.982141, 0.014833,
		33.894661, 38.451626, 33.091187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315205, 37.736908, 33.490562>,  <33.763371, 37.764126, 33.080803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315205, 37.736908, 33.490562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192616, 38.117435, 33.503613>,  <34.119061, 38.345753, 33.511444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192616, 38.117435, 33.503613>,  <34.315205, 37.736908, 33.490562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192616, 38.117435, 33.503613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129640, 0.007761, 0.991531,
		0.943010, 0.308105, -0.125708,
		-0.306472, 0.951321, 0.032624,
		34.100674, 38.402832, 33.513401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851578, 38.162991, 33.906570>,  <34.315205, 37.736908, 33.490562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851578, 38.162991, 33.906570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492798, 38.339836, 33.908203>,  <34.277531, 38.445946, 33.909184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492798, 38.339836, 33.908203>,  <34.851578, 38.162991, 33.906570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492798, 38.339836, 33.908203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017813, 0.026913, 0.999479,
		0.441777, 0.896554, -0.032015,
		-0.896948, 0.442117, 0.004081,
		34.223713, 38.472473, 33.909428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005718, 38.640968, 34.434528>,  <34.851578, 38.162991, 33.906570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005718, 38.640968, 34.434528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610813, 38.623024, 34.373466>,  <34.373871, 38.612259, 34.336830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610813, 38.623024, 34.373466>,  <35.005718, 38.640968, 34.434528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610813, 38.623024, 34.373466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158033, 0.165254, 0.973507,
		-0.018447, 0.985231, -0.170238,
		-0.987262, -0.044861, -0.152651,
		34.314636, 38.609566, 34.327671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749462, 39.198692, 34.824120>,  <35.005718, 38.640968, 34.434528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749462, 39.198692, 34.824120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446323, 38.941654, 34.778984>,  <34.264439, 38.787430, 34.751904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446323, 38.941654, 34.778984>,  <34.749462, 39.198692, 34.824120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446323, 38.941654, 34.778984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277131, 0.160479, 0.947336,
		-0.590646, 0.749210, -0.299703,
		-0.757849, -0.642597, -0.112843,
		34.218967, 38.748875, 34.745132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275780, 39.478107, 35.220467>,  <34.749462, 39.198692, 34.824120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275780, 39.478107, 35.220467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161221, 39.099552, 35.160694>,  <34.092487, 38.872417, 35.124832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161221, 39.099552, 35.160694>,  <34.275780, 39.478107, 35.220467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161221, 39.099552, 35.160694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366310, -0.035957, 0.929798,
		-0.885322, 0.321028, -0.336373,
		-0.286396, -0.946387, -0.149429,
		34.075302, 38.815636, 35.115864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677345, 39.416145, 35.530777>,  <34.275780, 39.478107, 35.220467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677345, 39.416145, 35.530777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775593, 39.028500, 35.521927>,  <33.834541, 38.795914, 35.516617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775593, 39.028500, 35.521927>,  <33.677345, 39.416145, 35.530777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775593, 39.028500, 35.521927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239745, -0.082842, 0.967295,
		-0.939252, -0.232283, -0.252688,
		0.245619, -0.969114, -0.022121,
		33.849277, 38.737766, 35.515289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118904, 38.981800, 35.900879>,  <33.677345, 39.416145, 35.530777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118904, 38.981800, 35.900879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449722, 38.757122, 35.909725>,  <33.648212, 38.622314, 35.915035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449722, 38.757122, 35.909725>,  <33.118904, 38.981800, 35.900879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449722, 38.757122, 35.909725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274177, -0.368724, 0.888183,
		-0.490734, -0.740635, -0.458956,
		0.827048, -0.561697, 0.022120,
		33.697838, 38.588612, 35.916363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925766, 38.433033, 36.302582>,  <33.118904, 38.981800, 35.900879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925766, 38.433033, 36.302582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325008, 38.411240, 36.313946>,  <33.564556, 38.398163, 36.320763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325008, 38.411240, 36.313946>,  <32.925766, 38.433033, 36.302582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325008, 38.411240, 36.313946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049554, -0.440466, 0.896401,
		-0.036324, -0.896115, -0.442333,
		0.998111, -0.054480, 0.028407,
		33.624443, 38.394894, 36.322468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078033, 37.696239, 36.231571>,  <32.925766, 38.433033, 36.302582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078033, 37.696239, 36.231571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384453, 37.856556, 36.432587>,  <33.568302, 37.952744, 36.553196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384453, 37.856556, 36.432587>,  <33.078033, 37.696239, 36.231571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384453, 37.856556, 36.432587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062765, -0.731436, 0.679015,
		0.639717, -0.551697, -0.535156,
		0.766043, 0.400789, 0.502539,
		33.614265, 37.976791, 36.583347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467991, 37.071758, 36.378452>,  <33.078033, 37.696239, 36.231571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467991, 37.071758, 36.378452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611408, 37.354282, 36.622608>,  <33.697460, 37.523796, 36.769104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611408, 37.354282, 36.622608>,  <33.467991, 37.071758, 36.378452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611408, 37.354282, 36.622608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025279, -0.646280, 0.762681,
		0.933171, -0.288883, -0.213864,
		0.358542, 0.706306, 0.610393,
		33.718971, 37.566174, 36.805725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916855, 36.796749, 36.782307>,  <33.467991, 37.071758, 36.378452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916855, 36.796749, 36.782307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779392, 37.101856, 37.001431>,  <33.696915, 37.284920, 37.132904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779392, 37.101856, 37.001431>,  <33.916855, 36.796749, 36.782307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779392, 37.101856, 37.001431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202776, -0.629845, 0.749785,
		0.916943, 0.146584, 0.371118,
		-0.343653, 0.762763, 0.547809,
		33.676296, 37.330685, 37.165771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440014, 36.762074, 37.291882>,  <33.916855, 36.796749, 36.782307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440014, 36.762074, 37.291882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108040, 36.950417, 37.411541>,  <33.908855, 37.063423, 37.483337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108040, 36.950417, 37.411541>,  <34.440014, 36.762074, 37.291882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108040, 36.950417, 37.411541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111520, -0.665470, 0.738047,
		0.546595, 0.579172, 0.604809,
		-0.829938, 0.470861, 0.299153,
		33.859058, 37.091675, 37.501286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332569, 36.664959, 37.990021>,  <34.440014, 36.762074, 37.291882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332569, 36.664959, 37.990021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959667, 36.765877, 37.886284>,  <33.735928, 36.826427, 37.824043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959667, 36.765877, 37.886284>,  <34.332569, 36.664959, 37.990021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959667, 36.765877, 37.886284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361810, -0.652602, 0.665736,
		-0.001287, 0.714465, 0.699670,
		-0.932251, 0.252290, -0.259340,
		33.679993, 36.841564, 37.808483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019325, 36.754543, 38.532776>,  <34.332569, 36.664959, 37.990021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019325, 36.754543, 38.532776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696686, 36.703381, 38.301937>,  <33.503101, 36.672684, 38.163433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696686, 36.703381, 38.301937>,  <34.019325, 36.754543, 38.532776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696686, 36.703381, 38.301937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392369, -0.614335, 0.684572,
		-0.442087, 0.778610, 0.445338,
		-0.806601, -0.127903, -0.577092,
		33.454704, 36.665009, 38.128811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498394, 36.835678, 38.964848>,  <34.019325, 36.754543, 38.532776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498394, 36.835678, 38.964848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312008, 36.651417, 38.662674>,  <33.200176, 36.540859, 38.481369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312008, 36.651417, 38.662674>,  <33.498394, 36.835678, 38.964848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312008, 36.651417, 38.662674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551632, -0.516297, 0.655088,
		-0.691796, 0.721966, -0.013536,
		-0.465963, -0.460654, -0.755432,
		33.172218, 36.513222, 38.436043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696514, 36.907574, 39.023090>,  <33.498394, 36.835678, 38.964848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696514, 36.907574, 39.023090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785667, 36.585987, 38.802559>,  <32.839161, 36.393036, 38.670238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785667, 36.585987, 38.802559>,  <32.696514, 36.907574, 39.023090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785667, 36.585987, 38.802559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562517, -0.567970, 0.600819,
		-0.796176, 0.176219, -0.578836,
		0.222886, -0.803963, -0.551330,
		32.852535, 36.344799, 38.637161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038193, 36.565487, 38.943195>,  <32.696514, 36.907574, 39.023090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038193, 36.565487, 38.943195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326145, 36.300316, 38.860935>,  <32.498917, 36.141212, 38.811577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326145, 36.300316, 38.860935>,  <32.038193, 36.565487, 38.943195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326145, 36.300316, 38.860935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477339, -0.687948, 0.546695,
		-0.503896, -0.295392, -0.811685,
		0.719886, -0.662926, -0.205652,
		32.542110, 36.101437, 38.799240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773783, 35.960804, 38.789650>,  <32.038193, 36.565487, 38.943195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773783, 35.960804, 38.789650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133629, 35.823971, 38.898220>,  <32.349537, 35.741871, 38.963360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133629, 35.823971, 38.898220>,  <31.773783, 35.960804, 38.789650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133629, 35.823971, 38.898220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432750, -0.781588, 0.449274,
		0.058454, -0.521633, -0.851165,
		0.899617, -0.342080, 0.271424,
		32.403515, 35.721348, 38.979649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784477, 35.155289, 38.695507>,  <31.773783, 35.960804, 38.789650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784477, 35.155289, 38.695507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092812, 35.228127, 38.939690>,  <32.277813, 35.271828, 39.086201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092812, 35.228127, 38.939690>,  <31.784477, 35.155289, 38.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092812, 35.228127, 38.939690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260131, -0.784764, 0.562563,
		0.581503, -0.592442, -0.557554,
		0.770834, 0.182095, 0.610455,
		32.324062, 35.282757, 39.122826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154175, 34.490208, 38.837231>,  <31.784477, 35.155289, 38.695507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154175, 34.490208, 38.837231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281944, 34.725109, 39.134712>,  <32.358608, 34.866051, 39.313202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281944, 34.725109, 39.134712>,  <32.154175, 34.490208, 38.837231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281944, 34.725109, 39.134712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294006, -0.684674, 0.666920,
		0.900848, -0.431686, -0.046046,
		0.319427, 0.587255, 0.743706,
		32.377773, 34.901287, 39.357822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586926, 34.013176, 39.276150>,  <32.154175, 34.490208, 38.837231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586926, 34.013176, 39.276150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489235, 34.341503, 39.482689>,  <32.430622, 34.538498, 39.606613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489235, 34.341503, 39.482689>,  <32.586926, 34.013176, 39.276150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489235, 34.341503, 39.482689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268881, -0.568917, 0.777198,
		0.931696, 0.050974, 0.359645,
		-0.244225, 0.820814, 0.516352,
		32.415966, 34.587746, 39.637596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997379, 34.034573, 39.923466>,  <32.586926, 34.013176, 39.276150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997379, 34.034573, 39.923466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680050, 34.261280, 40.012386>,  <32.489655, 34.397305, 40.065739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680050, 34.261280, 40.012386>,  <32.997379, 34.034573, 39.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680050, 34.261280, 40.012386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166603, -0.553317, 0.816139,
		0.585564, 0.610424, 0.533383,
		-0.793321, 0.566765, 0.222304,
		32.442055, 34.431309, 40.079079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016735, 34.041965, 40.616024>,  <32.997379, 34.034573, 39.923466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016735, 34.041965, 40.616024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650623, 34.189342, 40.550900>,  <32.430954, 34.277771, 40.511826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650623, 34.189342, 40.550900>,  <33.016735, 34.041965, 40.616024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650623, 34.189342, 40.550900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329066, -0.450802, 0.829755,
		0.232325, 0.813035, 0.533854,
		-0.915282, 0.368446, -0.162810,
		32.376038, 34.299877, 40.502056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718319, 34.298359, 41.340477>,  <33.016735, 34.041965, 40.616024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718319, 34.298359, 41.340477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410828, 34.223423, 41.095867>,  <32.226334, 34.178459, 40.949100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410828, 34.223423, 41.095867>,  <32.718319, 34.298359, 41.340477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410828, 34.223423, 41.095867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538942, -0.325106, 0.777077,
		-0.344390, 0.926936, 0.148951,
		-0.768725, -0.187342, -0.611527,
		32.180210, 34.167221, 40.912411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129501, 34.497204, 41.710579>,  <32.718319, 34.298359, 41.340477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129501, 34.497204, 41.710579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002491, 34.244629, 41.427605>,  <31.926287, 34.093082, 41.257820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002491, 34.244629, 41.427605>,  <32.129501, 34.497204, 41.710579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002491, 34.244629, 41.427605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668536, -0.380018, 0.639254,
		-0.672488, 0.675924, -0.301474,
		-0.317522, -0.631437, -0.707437,
		31.907234, 34.055199, 41.215374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460932, 34.657284, 41.517212>,  <32.129501, 34.497204, 41.710579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460932, 34.657284, 41.517212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517111, 34.269829, 41.435219>,  <31.550817, 34.037357, 41.386021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517111, 34.269829, 41.435219>,  <31.460932, 34.657284, 41.517212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517111, 34.269829, 41.435219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670244, -0.245400, 0.700394,
		-0.728730, 0.039024, -0.683688,
		0.140445, -0.968636, -0.204986,
		31.559244, 33.979237, 41.373722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802496, 34.430328, 41.604710>,  <31.460932, 34.657284, 41.517212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802496, 34.430328, 41.604710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024199, 34.099075, 41.638157>,  <31.157221, 33.900322, 41.658226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024199, 34.099075, 41.638157>,  <30.802496, 34.430328, 41.604710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024199, 34.099075, 41.638157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630213, -0.351908, 0.692092,
		-0.543718, -0.436296, -0.716949,
		0.554258, -0.828134, 0.083621,
		31.190475, 33.850636, 41.663242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309801, 33.871078, 41.773407>,  <30.802496, 34.430328, 41.604710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309801, 33.871078, 41.773407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648167, 33.662701, 41.819099>,  <30.851187, 33.537674, 41.846516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648167, 33.662701, 41.819099>,  <30.309801, 33.871078, 41.773407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648167, 33.662701, 41.819099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429761, -0.539008, 0.724414,
		-0.315805, -0.661885, -0.679835,
		0.845915, -0.520940, 0.114232,
		30.901941, 33.506420, 41.853371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170212, 33.233978, 41.547054>,  <30.309801, 33.871078, 41.773407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170212, 33.233978, 41.547054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470179, 33.216053, 41.811058>,  <30.650158, 33.205299, 41.969460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470179, 33.216053, 41.811058>,  <30.170212, 33.233978, 41.547054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470179, 33.216053, 41.811058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621624, -0.389020, 0.679887,
		0.226293, -0.920139, -0.319587,
		0.749916, -0.044809, 0.660013,
		30.695154, 33.202610, 42.009064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282299, 32.494293, 41.714912>,  <30.170212, 33.233978, 41.547054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282299, 32.494293, 41.714912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441296, 32.712440, 42.010094>,  <30.536694, 32.843330, 42.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441296, 32.712440, 42.010094>,  <30.282299, 32.494293, 41.714912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441296, 32.712440, 42.010094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568241, -0.485160, 0.664622,
		0.720488, -0.683517, 0.117053,
		0.397490, 0.545367, 0.737954,
		30.560543, 32.876049, 42.231480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569319, 32.121239, 42.188110>,  <30.282299, 32.494293, 41.714912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569319, 32.121239, 42.188110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510580, 32.450478, 42.407547>,  <30.475336, 32.648022, 42.539207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510580, 32.450478, 42.407547>,  <30.569319, 32.121239, 42.188110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510580, 32.450478, 42.407547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442011, -0.550756, 0.708022,
		0.884908, -0.138512, 0.444693,
		-0.146848, 0.823093, 0.548592,
		30.466526, 32.697407, 42.572124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261480, 31.855835, 42.678719>,  <30.569319, 32.121239, 42.188110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261480, 31.855835, 42.678719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334330, 32.213505, 42.842319>,  <30.378038, 32.428108, 42.940479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334330, 32.213505, 42.842319>,  <30.261480, 31.855835, 42.678719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334330, 32.213505, 42.842319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260231, -0.357297, 0.897005,
		0.948215, -0.269800, 0.167620,
		0.182121, 0.894174, 0.409005,
		30.388966, 32.481758, 42.965019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762877, 31.713282, 43.184616>,  <30.261480, 31.855835, 42.678719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762877, 31.713282, 43.184616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520365, 32.022461, 43.259418>,  <30.374857, 32.207970, 43.304302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520365, 32.022461, 43.259418>,  <30.762877, 31.713282, 43.184616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520365, 32.022461, 43.259418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455356, -0.530211, 0.715211,
		0.651976, 0.348463, 0.673424,
		-0.606282, 0.772949, 0.187010,
		30.338480, 32.254345, 43.315521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639677, 31.739954, 43.857132>,  <30.762877, 31.713282, 43.184616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639677, 31.739954, 43.857132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330576, 31.969063, 43.747746>,  <30.145115, 32.106529, 43.682114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330576, 31.969063, 43.747746>,  <30.639677, 31.739954, 43.857132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330576, 31.969063, 43.747746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624881, -0.611039, 0.485958,
		0.111244, 0.546410, 0.830097,
		-0.772754, 0.572772, -0.273467,
		30.098749, 32.140896, 43.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220520, 31.937185, 44.522858>,  <30.639677, 31.739954, 43.857132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220520, 31.937185, 44.522858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971834, 31.942837, 44.209610>,  <29.822622, 31.946228, 44.021664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971834, 31.942837, 44.209610>,  <30.220520, 31.937185, 44.522858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971834, 31.942837, 44.209610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602357, -0.647705, 0.466524,
		-0.500638, 0.761761, 0.411196,
		-0.621714, 0.014127, -0.783117,
		29.785320, 31.947075, 43.974674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616529, 32.244209, 44.797825>,  <30.220520, 31.937185, 44.522858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616529, 32.244209, 44.797825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538006, 32.022877, 44.474026>,  <29.490892, 31.890078, 44.279747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538006, 32.022877, 44.474026>,  <29.616529, 32.244209, 44.797825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538006, 32.022877, 44.474026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707709, -0.491459, 0.507558,
		-0.678683, 0.672528, -0.295118,
		-0.196309, -0.553329, -0.809499,
		29.479113, 31.856878, 44.231174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836166, 32.172234, 44.765499>,  <29.616529, 32.244209, 44.797825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836166, 32.172234, 44.765499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938076, 31.870575, 44.523388>,  <28.999222, 31.689581, 44.378120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938076, 31.870575, 44.523388>,  <28.836166, 32.172234, 44.765499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938076, 31.870575, 44.523388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748083, -0.550338, 0.370811,
		-0.612751, 0.358325, -0.704372,
		0.254772, -0.754143, -0.605276,
		29.014507, 31.644333, 44.341805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291447, 32.036774, 44.435513>,  <28.836166, 32.172234, 44.765499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291447, 32.036774, 44.435513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525578, 31.712460, 44.433754>,  <28.666056, 31.517870, 44.432697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525578, 31.712460, 44.433754>,  <28.291447, 32.036774, 44.435513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525578, 31.712460, 44.433754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712895, -0.517225, 0.473560,
		-0.386232, -0.274049, -0.880751,
		0.585325, -0.810786, -0.004400,
		28.701176, 31.469223, 44.432434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974192, 31.422047, 44.136261>,  <28.291447, 32.036774, 44.435513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974192, 31.422047, 44.136261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217793, 31.270542, 44.415016>,  <28.363953, 31.179640, 44.582272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217793, 31.270542, 44.415016>,  <27.974192, 31.422047, 44.136261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217793, 31.270542, 44.415016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792937, -0.312045, 0.523335,
		0.019241, -0.871301, -0.490371,
		0.609000, -0.378763, 0.696891,
		28.400492, 31.156914, 44.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897980, 30.662086, 44.290329>,  <27.974192, 31.422047, 44.136261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897980, 30.662086, 44.290329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019274, 30.870922, 44.609196>,  <28.092051, 30.996223, 44.800514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019274, 30.870922, 44.609196>,  <27.897980, 30.662086, 44.290329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019274, 30.870922, 44.609196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835561, -0.256510, 0.485839,
		0.458133, -0.813402, 0.358456,
		0.303235, 0.522091, 0.797163,
		28.110245, 31.027550, 44.848343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842024, 30.245043, 44.955456>,  <27.897980, 30.662086, 44.290329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842024, 30.245043, 44.955456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818979, 30.635242, 45.040382>,  <27.805153, 30.869362, 45.091339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818979, 30.635242, 45.040382>,  <27.842024, 30.245043, 44.955456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818979, 30.635242, 45.040382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896953, -0.143957, 0.418033,
		0.438356, -0.166355, 0.883272,
		-0.057611, 0.975501, 0.212317,
		27.801697, 30.927893, 45.104076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421850, 30.151733, 45.386337>,  <27.842024, 30.245043, 44.955456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421850, 30.151733, 45.386337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756603, 30.208908, 45.597694>,  <28.957455, 30.243214, 45.724506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756603, 30.208908, 45.597694>,  <28.421850, 30.151733, 45.386337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756603, 30.208908, 45.597694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469631, -0.683384, -0.558957,
		0.281197, 0.715930, -0.639041,
		0.836884, 0.142936, 0.528389,
		29.007668, 30.251789, 45.756210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025282, 30.406031, 44.994991>,  <28.421850, 30.151733, 45.386337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025282, 30.406031, 44.994991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147617, 30.141756, 45.269203>,  <29.221020, 29.983191, 45.433731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147617, 30.141756, 45.269203>,  <29.025282, 30.406031, 44.994991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147617, 30.141756, 45.269203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441648, -0.539428, -0.716913,
		0.843451, 0.522025, 0.126813,
		0.305840, -0.660687, 0.685532,
		29.239368, 29.943550, 45.474861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719481, 30.468243, 44.963547>,  <29.025282, 30.406031, 44.994991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719481, 30.468243, 44.963547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558971, 30.119774, 45.076714>,  <29.462666, 29.910692, 45.144611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558971, 30.119774, 45.076714>,  <29.719481, 30.468243, 44.963547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558971, 30.119774, 45.076714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515674, -0.470138, -0.716276,
		0.757008, -0.141530, 0.637894,
		-0.401272, -0.871171, 0.282915,
		29.438589, 29.858423, 45.161587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332827, 29.882423, 45.154373>,  <29.719481, 30.468243, 44.963547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332827, 29.882423, 45.154373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972343, 29.759670, 45.031967>,  <29.756054, 29.686018, 44.958523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972343, 29.759670, 45.031967>,  <30.332827, 29.882423, 45.154373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972343, 29.759670, 45.031967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425762, -0.495067, -0.757387,
		0.080930, -0.812854, 0.576817,
		-0.901209, -0.306882, -0.306016,
		29.701981, 29.667606, 44.940163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654264, 29.250124, 45.003487>,  <30.332827, 29.882423, 45.154373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654264, 29.250124, 45.003487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306091, 29.314808, 44.817497>,  <30.097187, 29.353619, 44.705906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306091, 29.314808, 44.817497>,  <30.654264, 29.250124, 45.003487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306091, 29.314808, 44.817497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395276, -0.333406, -0.855919,
		-0.293428, -0.928812, 0.226291,
		-0.870435, 0.161703, -0.464968,
		30.044962, 29.363321, 44.678005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124098, 29.172306, 44.440399>,  <30.654264, 29.250124, 45.003487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124098, 29.172306, 44.440399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733643, 29.172421, 44.353542>,  <30.499369, 29.172489, 44.301430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733643, 29.172421, 44.353542>,  <31.124098, 29.172306, 44.440399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733643, 29.172421, 44.353542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216611, -0.068677, -0.973839,
		-0.015187, -0.997639, 0.066977,
		-0.976140, 0.000282, -0.217143,
		30.440800, 29.172506, 44.288399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020035, 28.548294, 44.044800>,  <31.124098, 29.172306, 44.440399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020035, 28.548294, 44.044800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766010, 28.853115, 43.994247>,  <30.613596, 29.036007, 43.963917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766010, 28.853115, 43.994247>,  <31.020035, 28.548294, 44.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766010, 28.853115, 43.994247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121801, -0.062778, -0.990567,
		-0.762797, -0.644466, -0.052950,
		-0.635063, 0.762051, -0.126384,
		30.575491, 29.081730, 43.956333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673170, 28.324409, 43.474144>,  <31.020035, 28.548294, 44.044800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673170, 28.324409, 43.474144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588266, 28.712727, 43.518883>,  <30.537323, 28.945717, 43.545727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588266, 28.712727, 43.518883>,  <30.673170, 28.324409, 43.474144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588266, 28.712727, 43.518883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121380, 0.087379, -0.988752,
		-0.969646, -0.223449, 0.099288,
		-0.212260, 0.970791, 0.111849,
		30.524588, 29.003963, 43.552437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131527, 28.446062, 43.226501>,  <30.673170, 28.324409, 43.474144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131527, 28.446062, 43.226501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253275, 28.827078, 43.228577>,  <30.326324, 29.055687, 43.229820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253275, 28.827078, 43.228577>,  <30.131527, 28.446062, 43.226501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253275, 28.827078, 43.228577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142710, 0.050982, -0.988451,
		-0.941803, 0.300114, 0.151454,
		0.304369, 0.952540, 0.005186,
		30.344585, 29.112841, 43.230133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866230, 28.698496, 42.618923>,  <30.131527, 28.446062, 43.226501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866230, 28.698496, 42.618923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131290, 28.986868, 42.700066>,  <30.290327, 29.159891, 42.748749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131290, 28.986868, 42.700066>,  <29.866230, 28.698496, 42.618923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131290, 28.986868, 42.700066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214583, 0.076737, -0.973687,
		-0.717528, 0.688744, -0.103850,
		0.662652, 0.720932, 0.202854,
		30.330086, 29.203148, 42.760921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693453, 29.228294, 42.170883>,  <29.866230, 28.698496, 42.618923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693453, 29.228294, 42.170883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077623, 29.286594, 42.265827>,  <30.308126, 29.321573, 42.322792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077623, 29.286594, 42.265827>,  <29.693453, 29.228294, 42.170883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077623, 29.286594, 42.265827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219835, 0.126648, -0.967281,
		-0.171041, 0.981182, 0.089596,
		0.960426, 0.145749, 0.237361,
		30.365751, 29.330318, 42.337036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974310, 29.876255, 41.929317>,  <29.693453, 29.228294, 42.170883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974310, 29.876255, 41.929317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314152, 29.671326, 41.979439>,  <30.518057, 29.548368, 42.009510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314152, 29.671326, 41.979439>,  <29.974310, 29.876255, 41.929317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314152, 29.671326, 41.979439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333145, 0.337107, -0.880553,
		0.408888, 0.789863, 0.457085,
		0.849603, -0.512323, 0.125300,
		30.569033, 29.517630, 42.017029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498072, 30.310555, 41.538391>,  <29.974310, 29.876255, 41.929317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498072, 30.310555, 41.538391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664385, 29.948799, 41.576775>,  <30.764172, 29.731747, 41.599804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664385, 29.948799, 41.576775>,  <30.498072, 30.310555, 41.538391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664385, 29.948799, 41.576775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514539, 0.146914, -0.844787,
		0.749917, 0.400623, 0.526427,
		0.415781, -0.904388, 0.095963,
		30.789120, 29.677483, 41.605564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199617, 30.437792, 41.415909>,  <30.498072, 30.310555, 41.538391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199617, 30.437792, 41.415909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187157, 30.038395, 41.397808>,  <31.179680, 29.798758, 41.386948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187157, 30.038395, 41.397808>,  <31.199617, 30.437792, 41.415909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187157, 30.038395, 41.397808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605028, 0.017196, -0.796019,
		0.795595, -0.052174, 0.603578,
		-0.031153, -0.998490, -0.045248,
		31.177811, 29.738848, 41.384235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853590, 30.133131, 41.491253>,  <31.199617, 30.437792, 41.415909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853590, 30.133131, 41.491253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622648, 29.882132, 41.282291>,  <31.484083, 29.731533, 41.156914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622648, 29.882132, 41.282291>,  <31.853590, 30.133131, 41.491253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622648, 29.882132, 41.282291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489289, 0.246312, -0.836616,
		0.653649, -0.738633, 0.164817,
		-0.577355, -0.627496, -0.522407,
		31.449442, 29.693882, 41.125568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335884, 29.832142, 40.995476>,  <31.853590, 30.133131, 41.491253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335884, 29.832142, 40.995476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967089, 29.741533, 40.869862>,  <31.745810, 29.687168, 40.794495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967089, 29.741533, 40.869862>,  <32.335884, 29.832142, 40.995476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967089, 29.741533, 40.869862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297140, 0.106101, -0.948920,
		0.248269, -0.968210, -0.030516,
		-0.921993, -0.226520, -0.314036,
		31.690491, 29.673578, 40.775650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358013, 29.545128, 40.325920>,  <32.335884, 29.832142, 40.995476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358013, 29.545128, 40.325920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991978, 29.705481, 40.343388>,  <31.772356, 29.801693, 40.353867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991978, 29.705481, 40.343388>,  <32.358013, 29.545128, 40.325920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991978, 29.705481, 40.343388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159301, 0.458854, -0.874115,
		-0.370455, -0.792935, -0.483753,
		-0.915088, 0.400883, 0.043669,
		31.717451, 29.825745, 40.356487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211952, 29.609343, 39.661720>,  <32.358013, 29.545128, 40.325920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211952, 29.609343, 39.661720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949642, 29.850418, 39.843590>,  <31.792255, 29.995064, 39.952709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949642, 29.850418, 39.843590>,  <32.211952, 29.609343, 39.661720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949642, 29.850418, 39.843590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027291, 0.620778, -0.783511,
		-0.754461, -0.501401, -0.423540,
		-0.655777, 0.602688, 0.454669,
		31.752909, 30.031225, 39.979992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080193, 30.055580, 39.118484>,  <32.211952, 29.609343, 39.661720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080193, 30.055580, 39.118484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872444, 30.231857, 39.411346>,  <31.747795, 30.337624, 39.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872444, 30.231857, 39.411346>,  <32.080193, 30.055580, 39.118484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872444, 30.231857, 39.411346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051077, 0.839228, -0.541375,
		-0.853021, -0.318570, -0.413362,
		-0.519371, 0.440691, 0.732151,
		31.716633, 30.364065, 39.630993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451437, 30.305096, 38.908211>,  <32.080193, 30.055580, 39.118484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451437, 30.305096, 38.908211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528423, 30.514311, 39.240330>,  <31.574615, 30.639839, 39.439602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528423, 30.514311, 39.240330>,  <31.451437, 30.305096, 38.908211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528423, 30.514311, 39.240330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066295, 0.851112, -0.520782,
		-0.979061, 0.045189, 0.198486,
		0.192467, 0.523036, 0.830295,
		31.586164, 30.671221, 39.489418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905870, 30.840328, 38.923912>,  <31.451437, 30.305096, 38.908211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905870, 30.840328, 38.923912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226860, 30.967356, 39.125977>,  <31.419453, 31.043571, 39.247215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226860, 30.967356, 39.125977>,  <30.905870, 30.840328, 38.923912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226860, 30.967356, 39.125977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023519, 0.829116, -0.558582,
		-0.596226, 0.460128, 0.657873,
		0.802472, 0.317569, 0.505162,
		31.467602, 31.062626, 39.277527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846510, 31.526810, 38.827412>,  <30.905870, 30.840328, 38.923912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846510, 31.526810, 38.827412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221031, 31.443085, 38.940212>,  <31.445744, 31.392849, 39.007893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221031, 31.443085, 38.940212>,  <30.846510, 31.526810, 38.827412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221031, 31.443085, 38.940212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330943, 0.794585, -0.509030,
		-0.117525, 0.569932, 0.813244,
		0.936303, -0.209314, 0.281999,
		31.501923, 31.380291, 39.024811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199831, 32.129311, 39.118397>,  <30.846510, 31.526810, 38.827412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199831, 32.129311, 39.118397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487938, 31.881468, 38.993618>,  <31.660801, 31.732763, 38.918751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487938, 31.881468, 38.993618>,  <31.199831, 32.129311, 39.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487938, 31.881468, 38.993618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480539, 0.769964, -0.419806,
		0.500298, 0.152471, 0.852323,
		0.720267, -0.619603, -0.311943,
		31.704018, 31.695587, 38.900036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931376, 32.477894, 39.241184>,  <31.199831, 32.129311, 39.118397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931376, 32.477894, 39.241184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005562, 32.204174, 38.959095>,  <32.050076, 32.039944, 38.789841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005562, 32.204174, 38.959095>,  <31.931376, 32.477894, 39.241184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005562, 32.204174, 38.959095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618359, 0.639036, -0.457454,
		0.763698, -0.351238, 0.541662,
		0.185466, -0.684299, -0.705222,
		32.061203, 31.998884, 38.747528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618263, 32.552387, 39.167145>,  <31.931376, 32.477894, 39.241184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618263, 32.552387, 39.167145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456413, 32.392384, 38.838203>,  <32.359303, 32.296383, 38.640839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456413, 32.392384, 38.838203>,  <32.618263, 32.552387, 39.167145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456413, 32.392384, 38.838203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502366, 0.654187, -0.565392,
		0.764136, -0.641897, -0.063752,
		-0.404629, -0.400010, -0.822355,
		32.335026, 32.272381, 38.591496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175854, 32.390259, 38.689323>,  <32.618263, 32.552387, 39.167145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175854, 32.390259, 38.689323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852772, 32.402756, 38.453819>,  <32.658924, 32.410255, 38.312515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852772, 32.402756, 38.453819>,  <33.175854, 32.390259, 38.689323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852772, 32.402756, 38.453819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513527, 0.527893, -0.676475,
		0.289666, -0.848736, -0.442427,
		-0.807703, 0.031246, -0.588761,
		32.610462, 32.412128, 38.277191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454777, 32.212646, 38.005772>,  <33.175854, 32.390259, 38.689323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454777, 32.212646, 38.005772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098724, 32.380867, 37.935570>,  <32.885094, 32.481800, 37.893448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098724, 32.380867, 37.935570>,  <33.454777, 32.212646, 38.005772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098724, 32.380867, 37.935570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367783, 0.435575, -0.821590,
		-0.269080, -0.795869, -0.542391,
		-0.890130, 0.420555, -0.175503,
		32.831684, 32.507034, 37.882919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394623, 32.064835, 37.338215>,  <33.454777, 32.212646, 38.005772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394623, 32.064835, 37.338215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149380, 32.371658, 37.413811>,  <33.002232, 32.555752, 37.459167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149380, 32.371658, 37.413811>,  <33.394623, 32.064835, 37.338215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149380, 32.371658, 37.413811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235976, 0.406128, -0.882822,
		-0.753929, -0.496671, -0.430009,
		-0.613111, 0.767058, 0.188989,
		32.965446, 32.601776, 37.470509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000984, 32.099163, 36.706543>,  <33.394623, 32.064835, 37.338215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000984, 32.099163, 36.706543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951340, 32.445885, 36.899727>,  <32.921555, 32.653919, 37.015636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951340, 32.445885, 36.899727>,  <33.000984, 32.099163, 36.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951340, 32.445885, 36.899727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190386, 0.498479, -0.845738,
		-0.973832, -0.013017, -0.226894,
		-0.124111, 0.866804, 0.482957,
		32.914108, 32.705925, 37.044613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565723, 32.449780, 36.306408>,  <33.000984, 32.099163, 36.706543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565723, 32.449780, 36.306408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759506, 32.726822, 36.520172>,  <32.875774, 32.893047, 36.648430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759506, 32.726822, 36.520172>,  <32.565723, 32.449780, 36.306408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759506, 32.726822, 36.520172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279560, 0.456281, -0.844780,
		-0.828945, 0.558658, 0.027421,
		0.484455, 0.692610, 0.534411,
		32.904842, 32.934605, 36.680496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191868, 33.073452, 36.224792>,  <32.565723, 32.449780, 36.306408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191868, 33.073452, 36.224792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573959, 33.162922, 36.302261>,  <32.803215, 33.216602, 36.348743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573959, 33.162922, 36.302261>,  <32.191868, 33.073452, 36.224792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573959, 33.162922, 36.302261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017891, 0.609724, -0.792412,
		-0.295326, 0.760400, 0.578425,
		0.955229, 0.223671, 0.193672,
		32.860527, 33.230022, 36.360363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280766, 33.701355, 35.867416>,  <32.191868, 33.073452, 36.224792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280766, 33.701355, 35.867416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663101, 33.627197, 35.958633>,  <32.892502, 33.582703, 36.013363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663101, 33.627197, 35.958633>,  <32.280766, 33.701355, 35.867416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663101, 33.627197, 35.958633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288563, 0.444848, -0.847845,
		0.055744, 0.876206, 0.478701,
		0.955837, -0.185398, 0.228043,
		32.949852, 33.571579, 36.027046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656746, 34.268929, 35.590061>,  <32.280766, 33.701355, 35.867416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656746, 34.268929, 35.590061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939445, 33.992542, 35.650806>,  <33.109066, 33.826710, 35.687252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939445, 33.992542, 35.650806>,  <32.656746, 34.268929, 35.590061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939445, 33.992542, 35.650806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498301, 0.333823, -0.800161,
		0.502193, 0.641188, 0.580242,
		0.706752, -0.690970, 0.151861,
		33.151470, 33.785252, 35.696365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325340, 34.618458, 35.578304>,  <32.656746, 34.268929, 35.590061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325340, 34.618458, 35.578304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393772, 34.237850, 35.476063>,  <33.434834, 34.009483, 35.414719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393772, 34.237850, 35.476063>,  <33.325340, 34.618458, 35.578304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393772, 34.237850, 35.476063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737525, 0.295700, -0.607139,
		0.653290, -0.084646, 0.752361,
		0.171082, -0.951523, -0.255606,
		33.445095, 33.952393, 35.399380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993652, 34.599922, 35.644287>,  <33.325340, 34.618458, 35.578304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993652, 34.599922, 35.644287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877480, 34.304295, 35.401165>,  <33.807777, 34.126919, 35.255291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877480, 34.304295, 35.401165>,  <33.993652, 34.599922, 35.644287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877480, 34.304295, 35.401165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660367, 0.304878, -0.686268,
		0.692507, -0.600686, 0.399513,
		-0.290429, -0.739071, -0.607803,
		33.790352, 34.082573, 35.218822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533394, 34.427338, 35.383072>,  <33.993652, 34.599922, 35.644287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533394, 34.427338, 35.383072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297459, 34.236843, 35.122215>,  <34.155895, 34.122547, 34.965702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297459, 34.236843, 35.122215>,  <34.533394, 34.427338, 35.383072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297459, 34.236843, 35.122215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607654, 0.270112, -0.746858,
		0.531832, -0.836803, 0.130064,
		-0.589841, -0.476236, -0.652141,
		34.120506, 34.093971, 34.926575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914043, 33.922180, 34.837269>,  <34.533394, 34.427338, 35.383072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914043, 33.922180, 34.837269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577045, 34.052971, 34.666019>,  <34.374847, 34.131443, 34.563271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577045, 34.052971, 34.666019>,  <34.914043, 33.922180, 34.837269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577045, 34.052971, 34.666019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518030, 0.273693, -0.810393,
		-0.147802, -0.904534, -0.399967,
		-0.842496, 0.326973, -0.428123,
		34.324295, 34.151062, 34.537582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098320, 33.859749, 34.186207>,  <34.914043, 33.922180, 34.837269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098320, 33.859749, 34.186207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750114, 34.051510, 34.141708>,  <34.541191, 34.166565, 34.115009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750114, 34.051510, 34.141708>,  <35.098320, 33.859749, 34.186207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750114, 34.051510, 34.141708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364406, 0.475957, -0.800421,
		-0.330772, -0.737319, -0.589025,
		-0.870516, 0.479401, -0.111251,
		34.488960, 34.195332, 34.108334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927029, 33.820129, 33.459663>,  <35.098320, 33.859749, 34.186207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927029, 33.820129, 33.459663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753429, 34.138721, 33.628075>,  <34.649269, 34.329876, 33.729122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753429, 34.138721, 33.628075>,  <34.927029, 33.820129, 33.459663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753429, 34.138721, 33.628075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428860, 0.593632, -0.680940,
		-0.792292, -0.114964, -0.599213,
		-0.433996, 0.796482, 0.421027,
		34.623230, 34.377666, 33.754383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828560, 34.247971, 32.920025>,  <34.927029, 33.820129, 33.459663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828560, 34.247971, 32.920025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798759, 34.486801, 33.239513>,  <34.780880, 34.630100, 33.431206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798759, 34.486801, 33.239513>,  <34.828560, 34.247971, 32.920025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798759, 34.486801, 33.239513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326452, 0.771415, -0.546213,
		-0.942273, 0.220049, -0.252389,
		-0.074503, 0.597075, 0.798718,
		34.776409, 34.665924, 33.479130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525372, 34.851456, 32.693592>,  <34.828560, 34.247971, 32.920025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525372, 34.851456, 32.693592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680046, 34.962360, 33.045410>,  <34.772850, 35.028904, 33.256500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680046, 34.962360, 33.045410>,  <34.525372, 34.851456, 32.693592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680046, 34.962360, 33.045410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332501, 0.847669, -0.413402,
		-0.860182, 0.452307, 0.235595,
		0.386691, 0.277266, 0.879542,
		34.796055, 35.045540, 33.309273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407108, 35.529736, 32.637180>,  <34.525372, 34.851456, 32.693592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407108, 35.529736, 32.637180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665878, 35.537437, 32.942104>,  <34.821140, 35.542057, 33.125057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665878, 35.537437, 32.942104>,  <34.407108, 35.529736, 32.637180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665878, 35.537437, 32.942104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322380, 0.899044, -0.296297,
		-0.691053, 0.437436, 0.575409,
		0.646929, 0.019256, 0.762307,
		34.859959, 35.543213, 33.170795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253788, 36.173100, 33.017925>,  <34.407108, 35.529736, 32.637180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253788, 36.173100, 33.017925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623920, 36.078182, 33.136211>,  <34.846001, 36.021233, 33.207184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623920, 36.078182, 33.136211>,  <34.253788, 36.173100, 33.017925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623920, 36.078182, 33.136211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248212, 0.968706, 0.000630,
		-0.286612, 0.072817, 0.955275,
		0.925335, -0.237291, 0.295716,
		34.901520, 36.006996, 33.224926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512093, 36.730228, 33.294312>,  <34.253788, 36.173100, 33.017925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512093, 36.730228, 33.294312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849991, 36.532963, 33.211185>,  <35.052731, 36.414604, 33.161312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849991, 36.532963, 33.211185>,  <34.512093, 36.730228, 33.294312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849991, 36.532963, 33.211185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458962, 0.867327, -0.192609,
		0.275229, 0.067329, 0.959018,
		0.844750, -0.493164, -0.207812,
		35.103416, 36.385014, 33.148842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060249, 37.084072, 33.656658>,  <34.512093, 36.730228, 33.294312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060249, 37.084072, 33.656658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244957, 36.865757, 33.376976>,  <35.355782, 36.734768, 33.209167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244957, 36.865757, 33.376976>,  <35.060249, 37.084072, 33.656658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244957, 36.865757, 33.376976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542791, 0.797325, -0.263913,
		0.701533, -0.257655, 0.664428,
		0.461767, -0.545789, -0.699203,
		35.383488, 36.702019, 33.167213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718887, 37.389996, 33.700211>,  <35.060249, 37.084072, 33.656658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718887, 37.389996, 33.700211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725899, 37.192707, 33.352322>,  <35.730106, 37.074333, 33.143589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725899, 37.192707, 33.352322>,  <35.718887, 37.389996, 33.700211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725899, 37.192707, 33.352322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635930, 0.676739, -0.370969,
		0.771548, -0.546583, 0.325516,
		0.017524, -0.493226, -0.869725,
		35.731155, 37.044739, 33.091404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461212, 37.301239, 33.470165>,  <35.718887, 37.389996, 33.700211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461212, 37.301239, 33.470165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203182, 37.316006, 33.164875>,  <36.048363, 37.324867, 32.981701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203182, 37.316006, 33.164875>,  <36.461212, 37.301239, 33.470165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203182, 37.316006, 33.164875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547940, 0.718516, -0.428365,
		0.532574, -0.694530, -0.483728,
		-0.645079, 0.036918, -0.763223,
		36.009659, 37.327080, 32.935909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849754, 37.254543, 32.828526>,  <36.461212, 37.301239, 33.470165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849754, 37.254543, 32.828526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496166, 37.437759, 32.791012>,  <36.284016, 37.547691, 32.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496166, 37.437759, 32.791012>,  <36.849754, 37.254543, 32.828526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496166, 37.437759, 32.791012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463101, 0.830167, -0.310419,
		-0.064325, -0.317834, -0.945962,
		-0.883968, 0.458044, -0.093789,
		36.230976, 37.575172, 32.762875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276394, 36.692398, 33.218452>,  <36.849754, 37.254543, 32.828526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276394, 36.692398, 33.218452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541950, 36.923790, 33.408024>,  <37.701286, 37.062626, 33.521767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541950, 36.923790, 33.408024>,  <37.276394, 36.692398, 33.218452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541950, 36.923790, 33.408024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169092, -0.501207, 0.848646,
		0.728461, -0.643547, -0.234931,
		0.663893, 0.578480, 0.473928,
		37.741119, 37.097336, 33.550201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870251, 36.259865, 33.546551>,  <37.276394, 36.692398, 33.218452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870251, 36.259865, 33.546551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792244, 36.599480, 33.742958>,  <37.745441, 36.803249, 33.860802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792244, 36.599480, 33.742958>,  <37.870251, 36.259865, 33.546551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792244, 36.599480, 33.742958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136672, -0.519270, 0.843611,
		0.971231, 0.097409, 0.217306,
		-0.195016, 0.849041, 0.491018,
		37.733738, 36.854191, 33.890263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088451, 36.115730, 34.222050>,  <37.870251, 36.259865, 33.546551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088451, 36.115730, 34.222050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873886, 36.447060, 34.286724>,  <37.745148, 36.645855, 34.325527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873886, 36.447060, 34.286724>,  <38.088451, 36.115730, 34.222050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873886, 36.447060, 34.286724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335217, -0.384937, 0.859915,
		0.774524, 0.407072, 0.484153,
		-0.536415, 0.828321, 0.161686,
		37.712963, 36.695557, 34.335228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277100, 36.337334, 34.905754>,  <38.088451, 36.115730, 34.222050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277100, 36.337334, 34.905754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932343, 36.503620, 34.789604>,  <37.725487, 36.603390, 34.719913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932343, 36.503620, 34.789604>,  <38.277100, 36.337334, 34.905754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932343, 36.503620, 34.789604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436306, -0.316150, 0.842429,
		0.258405, 0.852780, 0.453865,
		-0.861896, 0.415712, -0.290378,
		37.673775, 36.628334, 34.702492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964321, 36.554401, 35.555901>,  <38.277100, 36.337334, 34.905754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964321, 36.554401, 35.555901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654182, 36.555050, 35.303284>,  <37.468102, 36.555439, 35.151714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654182, 36.555050, 35.303284>,  <37.964321, 36.554401, 35.555901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654182, 36.555050, 35.303284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603725, -0.295414, 0.740437,
		-0.185363, 0.955368, 0.230027,
		-0.775343, 0.001623, -0.631539,
		37.421581, 36.555538, 35.113823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375141, 36.993477, 35.836575>,  <37.964321, 36.554401, 35.555901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375141, 36.993477, 35.836575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217247, 36.722450, 35.588352>,  <37.122513, 36.559834, 35.439419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217247, 36.722450, 35.588352>,  <37.375141, 36.993477, 35.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217247, 36.722450, 35.588352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598739, -0.322606, 0.733101,
		-0.696920, 0.660929, -0.278344,
		-0.394732, -0.677568, -0.620555,
		37.098827, 36.519180, 35.402187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697552, 37.061722, 35.959805>,  <37.375141, 36.993477, 35.836575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697552, 37.061722, 35.959805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748547, 36.694839, 35.808815>,  <36.779144, 36.474709, 35.718224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748547, 36.694839, 35.808815>,  <36.697552, 37.061722, 35.959805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748547, 36.694839, 35.808815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583567, -0.377094, 0.719200,
		-0.801996, 0.128594, -0.583323,
		0.127483, -0.917204, -0.377471,
		36.786793, 36.419678, 35.695572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103172, 36.700760, 36.287819>,  <36.697552, 37.061722, 35.959805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103172, 36.700760, 36.287819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322079, 36.398746, 36.143364>,  <36.453423, 36.217537, 36.056690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322079, 36.398746, 36.143364>,  <36.103172, 36.700760, 36.287819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322079, 36.398746, 36.143364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449944, -0.629246, 0.633719,
		-0.705726, -0.184320, -0.684088,
		0.547267, -0.755034, -0.361142,
		36.486259, 36.172237, 36.035023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612465, 36.059879, 36.100029>,  <36.103172, 36.700760, 36.287819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612465, 36.059879, 36.100029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989590, 35.941734, 36.161823>,  <36.215866, 35.870850, 36.198898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989590, 35.941734, 36.161823>,  <35.612465, 36.059879, 36.100029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989590, 35.941734, 36.161823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328974, -0.749911, 0.573942,
		-0.053669, -0.591942, -0.804192,
		0.942812, -0.295361, 0.154487,
		36.272434, 35.853127, 36.208168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482986, 35.291016, 36.112942>,  <35.612465, 36.059879, 36.100029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482986, 35.291016, 36.112942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859703, 35.330898, 36.241367>,  <36.085735, 35.354828, 36.318424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859703, 35.330898, 36.241367>,  <35.482986, 35.291016, 36.112942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859703, 35.330898, 36.241367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084830, -0.853621, 0.513940,
		0.325313, -0.511261, -0.795477,
		0.941793, 0.099711, 0.321064,
		36.142242, 35.360813, 36.337685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821781, 34.661987, 36.171337>,  <35.482986, 35.291016, 36.112942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821781, 34.661987, 36.171337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038097, 34.866867, 36.438229>,  <36.167889, 34.989796, 36.598362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038097, 34.866867, 36.438229>,  <35.821781, 34.661987, 36.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038097, 34.866867, 36.438229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093832, -0.751540, 0.652980,
		0.835904, -0.415735, -0.358369,
		0.540795, 0.512203, 0.667225,
		36.200336, 35.020527, 36.638397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454189, 34.202763, 36.359703>,  <35.821781, 34.661987, 36.171337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454189, 34.202763, 36.359703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425941, 34.473812, 36.652504>,  <36.408993, 34.636444, 36.828186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425941, 34.473812, 36.652504>,  <36.454189, 34.202763, 36.359703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425941, 34.473812, 36.652504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036181, -0.735096, 0.676997,
		0.996847, 0.021321, 0.076426,
		-0.070615, 0.677628, 0.732007,
		36.404758, 34.677101, 36.872105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975910, 34.105030, 36.846050>,  <36.454189, 34.202763, 36.359703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975910, 34.105030, 36.846050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695774, 34.305252, 37.049606>,  <36.527691, 34.425385, 37.171738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695774, 34.305252, 37.049606>,  <36.975910, 34.105030, 36.846050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695774, 34.305252, 37.049606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017220, -0.724562, 0.688994,
		0.713598, 0.473769, 0.516062,
		-0.700343, 0.500552, 0.508888,
		36.485672, 34.455418, 37.202274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091164, 33.860146, 37.537079>,  <36.975910, 34.105030, 36.846050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091164, 33.860146, 37.537079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732941, 34.037663, 37.549915>,  <36.518005, 34.144173, 37.557617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732941, 34.037663, 37.549915>,  <37.091164, 33.860146, 37.537079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732941, 34.037663, 37.549915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274820, -0.608410, 0.744520,
		0.349932, 0.657942, 0.666828,
		-0.895556, 0.443789, 0.032087,
		36.464275, 34.170799, 37.559540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901154, 33.916771, 38.213173>,  <37.091164, 33.860146, 37.537079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901154, 33.916771, 38.213173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549107, 33.971149, 38.031219>,  <36.337879, 34.003777, 37.922047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549107, 33.971149, 38.031219>,  <36.901154, 33.916771, 38.213173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549107, 33.971149, 38.031219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424735, -0.653561, 0.626464,
		-0.212131, 0.744565, 0.632948,
		-0.880114, 0.135943, -0.454884,
		36.285072, 34.011932, 37.894753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397034, 34.027985, 38.746189>,  <36.901154, 33.916771, 38.213173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397034, 34.027985, 38.746189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193287, 33.881119, 38.434872>,  <36.071041, 33.792999, 38.248081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193287, 33.881119, 38.434872>,  <36.397034, 34.027985, 38.746189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193287, 33.881119, 38.434872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427132, -0.677271, 0.599051,
		-0.747065, 0.637568, 0.188150,
		-0.509364, -0.367165, -0.778292,
		36.040478, 33.770969, 38.201385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761562, 33.868950, 38.992989>,  <36.397034, 34.027985, 38.746189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761562, 33.868950, 38.992989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766548, 33.680542, 38.640175>,  <35.769539, 33.567497, 38.428486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766548, 33.680542, 38.640175>,  <35.761562, 33.868950, 38.992989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766548, 33.680542, 38.640175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599878, -0.709257, 0.370272,
		-0.799994, 0.524498, -0.291396,
		0.012468, -0.471017, -0.882036,
		35.770290, 33.539238, 38.375565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981438, 33.705673, 38.697418>,  <35.761562, 33.868950, 38.992989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981438, 33.705673, 38.697418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237198, 33.446774, 38.531410>,  <35.390652, 33.291435, 38.431805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237198, 33.446774, 38.531410>,  <34.981438, 33.705673, 38.697418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237198, 33.446774, 38.531410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580814, -0.760288, 0.290892,
		-0.503812, 0.055051, -0.862057,
		0.639398, -0.647249, -0.415017,
		35.429016, 33.252598, 38.406906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573166, 33.157307, 38.452721>,  <34.981438, 33.705673, 38.697418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573166, 33.157307, 38.452721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935207, 32.987656, 38.464703>,  <35.152431, 32.885864, 38.471893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935207, 32.987656, 38.464703>,  <34.573166, 33.157307, 38.452721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935207, 32.987656, 38.464703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420673, -0.883047, 0.207994,
		-0.061764, -0.200859, -0.977671,
		0.905107, -0.424126, 0.029955,
		35.206741, 32.860416, 38.473690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416576, 32.518902, 38.163025>,  <34.573166, 33.157307, 38.452721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416576, 32.518902, 38.163025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759449, 32.482597, 38.365807>,  <34.965172, 32.460815, 38.487476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759449, 32.482597, 38.365807>,  <34.416576, 32.518902, 38.163025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759449, 32.482597, 38.365807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360258, -0.809113, 0.464274,
		0.368048, -0.580601, -0.726253,
		0.857179, -0.090763, 0.506958,
		35.016602, 32.455368, 38.517895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483822, 31.754135, 38.104584>,  <34.416576, 32.518902, 38.163025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483822, 31.754135, 38.104584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689468, 31.915520, 38.407345>,  <34.812859, 32.012352, 38.589001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689468, 31.915520, 38.407345>,  <34.483822, 31.754135, 38.104584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689468, 31.915520, 38.407345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634870, -0.414365, 0.652106,
		0.576734, -0.815794, 0.043112,
		0.514120, 0.403462, 0.756901,
		34.843704, 32.036560, 38.634415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542149, 31.145126, 38.550598>,  <34.483822, 31.754135, 38.104584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542149, 31.145126, 38.550598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617542, 31.467604, 38.774929>,  <34.662777, 31.661091, 38.909527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617542, 31.467604, 38.774929>,  <34.542149, 31.145126, 38.550598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617542, 31.467604, 38.774929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372005, -0.469897, 0.800506,
		0.908893, -0.359511, 0.211341,
		0.188482, 0.806194, 0.560826,
		34.674088, 31.709461, 38.943176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658543, 30.769156, 39.110435>,  <34.542149, 31.145126, 38.550598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658543, 30.769156, 39.110435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595478, 31.153881, 39.199924>,  <34.557640, 31.384716, 39.253620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595478, 31.153881, 39.199924>,  <34.658543, 30.769156, 39.110435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595478, 31.153881, 39.199924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391533, -0.268877, 0.880004,
		0.906557, 0.051146, 0.418974,
		-0.157661, 0.961815, 0.223727,
		34.548180, 31.442427, 39.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898769, 30.869272, 39.766193>,  <34.658543, 30.769156, 39.110435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898769, 30.869272, 39.766193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643356, 31.173220, 39.717415>,  <34.490108, 31.355589, 39.688148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643356, 31.173220, 39.717415>,  <34.898769, 30.869272, 39.766193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643356, 31.173220, 39.717415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325782, -0.123336, 0.937366,
		0.697236, 0.638268, 0.326306,
		-0.638536, 0.759870, -0.121942,
		34.451797, 31.401180, 39.680832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989643, 31.379284, 40.360546>,  <34.898769, 30.869272, 39.766193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989643, 31.379284, 40.360546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622078, 31.436495, 40.213493>,  <34.401539, 31.470821, 40.125263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622078, 31.436495, 40.213493>,  <34.989643, 31.379284, 40.360546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622078, 31.436495, 40.213493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381237, -0.082628, 0.920777,
		0.101321, 0.986263, 0.130456,
		-0.918908, 0.143029, -0.367628,
		34.346405, 31.479403, 40.103207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736153, 31.961882, 40.635929>,  <34.989643, 31.379284, 40.360546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736153, 31.961882, 40.635929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408199, 31.763784, 40.521019>,  <34.211430, 31.644926, 40.452072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408199, 31.763784, 40.521019>,  <34.736153, 31.961882, 40.635929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408199, 31.763784, 40.521019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348733, 0.034031, 0.936604,
		-0.454072, 0.868086, -0.200609,
		-0.819880, -0.495245, -0.287278,
		34.162235, 31.615211, 40.434837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253983, 32.268314, 40.986191>,  <34.736153, 31.961882, 40.635929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253983, 32.268314, 40.986191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107216, 31.916031, 40.866379>,  <34.019157, 31.704660, 40.794491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107216, 31.916031, 40.866379>,  <34.253983, 32.268314, 40.986191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107216, 31.916031, 40.866379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357987, -0.163513, 0.919298,
		-0.858615, 0.444531, -0.255288,
		-0.366914, -0.880713, -0.299531,
		33.997143, 31.651817, 40.776520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655888, 32.254906, 41.322594>,  <34.253983, 32.268314, 40.986191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655888, 32.254906, 41.322594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727936, 31.875160, 41.219631>,  <33.771164, 31.647312, 41.157852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727936, 31.875160, 41.219631>,  <33.655888, 32.254906, 41.322594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727936, 31.875160, 41.219631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465736, -0.312805, 0.827794,
		-0.866399, -0.029216, -0.498496,
		0.180117, -0.949368, -0.257407,
		33.781971, 31.590349, 41.142410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030025, 31.978821, 41.627045>,  <33.655888, 32.254906, 41.322594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030025, 31.978821, 41.627045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279564, 31.672585, 41.564190>,  <33.429287, 31.488842, 41.526478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279564, 31.672585, 41.564190>,  <33.030025, 31.978821, 41.627045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279564, 31.672585, 41.564190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282003, -0.408015, 0.868331,
		-0.728900, -0.497389, -0.470435,
		0.623842, -0.765590, -0.157137,
		33.466717, 31.442907, 41.517048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624306, 31.309881, 41.732513>,  <33.030025, 31.978821, 41.627045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624306, 31.309881, 41.732513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017387, 31.244545, 41.767395>,  <33.253239, 31.205343, 41.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017387, 31.244545, 41.767395>,  <32.624306, 31.309881, 41.732513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017387, 31.244545, 41.767395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164694, -0.555833, 0.814816,
		-0.084618, -0.815089, -0.573123,
		0.982708, -0.163338, 0.087206,
		33.312199, 31.195543, 41.793556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631851, 30.644402, 41.977669>,  <32.624306, 31.309881, 41.732513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631851, 30.644402, 41.977669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012981, 30.744501, 42.046375>,  <33.241657, 30.804560, 42.087601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012981, 30.744501, 42.046375>,  <32.631851, 30.644402, 41.977669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012981, 30.744501, 42.046375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025998, -0.631120, 0.775249,
		0.302411, -0.734210, -0.607852,
		0.952823, 0.250247, 0.171770,
		33.298828, 30.819574, 42.097908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969978, 30.012867, 42.080936>,  <32.631851, 30.644402, 41.977669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969978, 30.012867, 42.080936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191536, 30.299013, 42.251328>,  <33.324471, 30.470701, 42.353561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191536, 30.299013, 42.251328>,  <32.969978, 30.012867, 42.080936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191536, 30.299013, 42.251328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191274, -0.607277, 0.771122,
		0.810320, -0.345639, -0.473197,
		0.553891, 0.715366, 0.425977,
		33.357704, 30.513622, 42.379120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604008, 29.567707, 42.201126>,  <32.969978, 30.012867, 42.080936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604008, 29.567707, 42.201126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581966, 29.890215, 42.436718>,  <33.568741, 30.083719, 42.578072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581966, 29.890215, 42.436718>,  <33.604008, 29.567707, 42.201126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581966, 29.890215, 42.436718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409410, -0.519760, 0.749822,
		0.910685, 0.282454, -0.301452,
		-0.055108, 0.806269, 0.588977,
		33.565434, 30.132095, 42.613411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210655, 29.590332, 42.524147>,  <33.604008, 29.567707, 42.201126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210655, 29.590332, 42.524147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017204, 29.845549, 42.763817>,  <33.901134, 29.998678, 42.907619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017204, 29.845549, 42.763817>,  <34.210655, 29.590332, 42.524147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017204, 29.845549, 42.763817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462752, -0.394671, 0.793785,
		0.742944, 0.661165, -0.104380,
		-0.483628, 0.638040, 0.599174,
		33.872116, 30.036961, 42.943569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656651, 29.998365, 42.838039>,  <34.210655, 29.590332, 42.524147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656651, 29.998365, 42.838039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330681, 29.966618, 43.067684>,  <34.135098, 29.947569, 43.205471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330681, 29.966618, 43.067684>,  <34.656651, 29.998365, 42.838039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330681, 29.966618, 43.067684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568536, -0.301836, 0.765285,
		0.112546, 0.950050, 0.291098,
		-0.814923, -0.079370, 0.574108,
		34.086205, 29.942806, 43.239918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821926, 30.284147, 43.616096>,  <34.656651, 29.998365, 42.838039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821926, 30.284147, 43.616096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493229, 30.058014, 43.644772>,  <34.296009, 29.922335, 43.661976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493229, 30.058014, 43.644772>,  <34.821926, 30.284147, 43.616096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493229, 30.058014, 43.644772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316833, -0.348687, 0.882062,
		-0.473662, 0.747541, 0.465647,
		-0.821743, -0.565331, 0.071686,
		34.246708, 29.888414, 43.666279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553429, 30.392895, 44.254734>,  <34.821926, 30.284147, 43.616096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553429, 30.392895, 44.254734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401741, 30.046825, 44.123486>,  <34.310726, 29.839184, 44.044735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401741, 30.046825, 44.123486>,  <34.553429, 30.392895, 44.254734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401741, 30.046825, 44.123486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459836, -0.483932, 0.744554,
		-0.802958, 0.131467, 0.581356,
		-0.379221, -0.865174, -0.328124,
		34.287975, 29.787273, 44.025047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254795, 29.951571, 44.672047>,  <34.553429, 30.392895, 44.254734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254795, 29.951571, 44.672047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467514, 29.692097, 44.454277>,  <34.595146, 29.536413, 44.323616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467514, 29.692097, 44.454277>,  <34.254795, 29.951571, 44.672047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467514, 29.692097, 44.454277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377662, -0.393751, 0.838052,
		-0.758002, -0.651281, 0.035589,
		0.531794, -0.648686, -0.544428,
		34.627052, 29.497492, 44.290947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409622, 30.006737, 45.466255>,  <34.254795, 29.951571, 44.672047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409622, 30.006737, 45.466255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641251, 30.139040, 45.764320>,  <34.780228, 30.218422, 45.943161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641251, 30.139040, 45.764320>,  <34.409622, 30.006737, 45.466255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641251, 30.139040, 45.764320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469450, 0.611994, -0.636459,
		-0.666553, 0.718374, 0.199113,
		0.579072, 0.330759, 0.745167,
		34.814972, 30.238268, 45.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409470, 30.608288, 45.397778>,  <34.409622, 30.006737, 45.466255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409470, 30.608288, 45.397778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748291, 30.580286, 45.608528>,  <34.951584, 30.563486, 45.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748291, 30.580286, 45.608528>,  <34.409470, 30.608288, 45.397778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748291, 30.580286, 45.608528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465812, 0.575162, -0.672464,
		-0.255964, 0.815039, 0.519802,
		0.847055, -0.070004, 0.526875,
		35.002407, 30.559284, 45.766590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651066, 31.354792, 45.487064>,  <34.409470, 30.608288, 45.397778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651066, 31.354792, 45.487064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949692, 31.092070, 45.529495>,  <35.128868, 30.934437, 45.554955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949692, 31.092070, 45.529495>,  <34.651066, 31.354792, 45.487064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949692, 31.092070, 45.529495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565147, 0.541918, -0.622040,
		0.351076, 0.524338, 0.775767,
		0.746562, -0.656806, 0.106074,
		35.173660, 30.895027, 45.561317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294624, 31.751047, 45.563519>,  <34.651066, 31.354792, 45.487064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294624, 31.751047, 45.563519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397251, 31.386253, 45.435482>,  <35.458828, 31.167377, 45.358658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397251, 31.386253, 45.435482>,  <35.294624, 31.751047, 45.563519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397251, 31.386253, 45.435482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557678, 0.410174, -0.721632,
		0.789410, 0.006639, 0.613830,
		0.256568, -0.911983, -0.320094,
		35.474220, 31.112658, 45.339455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112778, 31.747723, 45.573841>,  <35.294624, 31.751047, 45.563519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112778, 31.747723, 45.573841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018402, 31.455013, 45.318077>,  <35.961777, 31.279388, 45.164619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018402, 31.455013, 45.318077>,  <36.112778, 31.747723, 45.573841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018402, 31.455013, 45.318077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531130, 0.453898, -0.715456,
		0.813777, -0.508413, 0.281573,
		-0.235942, -0.731773, -0.639405,
		35.947620, 31.235481, 45.126255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782192, 31.656075, 45.100338>,  <36.112778, 31.747723, 45.573841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782192, 31.656075, 45.100338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479740, 31.476494, 44.909885>,  <36.298267, 31.368746, 44.795612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479740, 31.476494, 44.909885>,  <36.782192, 31.656075, 45.100338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479740, 31.476494, 44.909885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358188, 0.324987, -0.875263,
		0.547689, -0.832361, -0.084924,
		-0.756133, -0.448953, -0.476133,
		36.252899, 31.341808, 44.767044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082314, 31.377552, 44.453693>,  <36.782192, 31.656075, 45.100338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082314, 31.377552, 44.453693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688694, 31.419409, 44.396133>,  <36.452522, 31.444523, 44.361599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688694, 31.419409, 44.396133>,  <37.082314, 31.377552, 44.453693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688694, 31.419409, 44.396133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173304, 0.380691, -0.908317,
		-0.040266, -0.918762, -0.392752,
		-0.984045, 0.104640, -0.143897,
		36.393482, 31.450800, 44.352966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988228, 31.178398, 43.748352>,  <37.082314, 31.377552, 44.453693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988228, 31.178398, 43.748352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660423, 31.401075, 43.802750>,  <36.463741, 31.534681, 43.835388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660423, 31.401075, 43.802750>,  <36.988228, 31.178398, 43.748352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660423, 31.401075, 43.802750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149998, 0.437421, -0.886658,
		-0.553085, -0.706227, -0.441974,
		-0.819511, 0.556693, 0.135998,
		36.414570, 31.568083, 43.843548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619015, 31.133329, 43.100285>,  <36.988228, 31.178398, 43.748352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619015, 31.133329, 43.100285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504906, 31.448280, 43.318882>,  <36.436440, 31.637251, 43.450043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504906, 31.448280, 43.318882>,  <36.619015, 31.133329, 43.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504906, 31.448280, 43.318882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025639, 0.576254, -0.816868,
		-0.958103, -0.219021, -0.184579,
		-0.285276, 0.787376, 0.546495,
		36.419323, 31.684494, 43.482830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911934, 31.333740, 42.796101>,  <36.619015, 31.133329, 43.100285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911934, 31.333740, 42.796101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063416, 31.646852, 42.993618>,  <36.154305, 31.834721, 43.112129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063416, 31.646852, 42.993618>,  <35.911934, 31.333740, 42.796101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063416, 31.646852, 42.993618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112963, 0.568641, -0.814793,
		-0.918598, 0.252785, 0.303772,
		0.378704, 0.782782, 0.493797,
		36.177029, 31.881687, 43.141758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435860, 31.947062, 42.585411>,  <35.911934, 31.333740, 42.796101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435860, 31.947062, 42.585411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751114, 32.154358, 42.718243>,  <35.940266, 32.278736, 42.797939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751114, 32.154358, 42.718243>,  <35.435860, 31.947062, 42.585411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751114, 32.154358, 42.718243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213040, 0.735850, -0.642759,
		-0.577463, 0.435833, 0.690352,
		0.788131, 0.518242, 0.332076,
		35.987553, 32.309830, 42.817867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246063, 32.654324, 42.708656>,  <35.435860, 31.947062, 42.585411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246063, 32.654324, 42.708656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644222, 32.668316, 42.672962>,  <35.883118, 32.676712, 42.651546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644222, 32.668316, 42.672962>,  <35.246063, 32.654324, 42.708656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644222, 32.668316, 42.672962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079995, 0.816079, -0.572377,
		0.052799, 0.576880, 0.815120,
		0.995396, 0.034984, -0.089235,
		35.942841, 32.678810, 42.646191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445522, 33.463089, 42.749950>,  <35.246063, 32.654324, 42.708656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445522, 33.463089, 42.749950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784531, 33.297935, 42.616547>,  <35.987934, 33.198841, 42.536503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784531, 33.297935, 42.616547>,  <35.445522, 33.463089, 42.749950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784531, 33.297935, 42.616547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097540, 0.738827, -0.666799,
		0.521720, 0.532597, 0.666445,
		0.847522, -0.412887, -0.333511,
		36.038788, 33.174068, 42.516495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087715, 33.850067, 42.882259>,  <35.445522, 33.463089, 42.749950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087715, 33.850067, 42.882259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151112, 33.622433, 42.559517>,  <36.189148, 33.485851, 42.365871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151112, 33.622433, 42.559517>,  <36.087715, 33.850067, 42.882259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151112, 33.622433, 42.559517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431735, 0.774867, -0.461720,
		0.887967, -0.275171, 0.368504,
		0.158489, -0.569089, -0.806858,
		36.198658, 33.451706, 42.317459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653179, 34.115540, 42.501564>,  <36.087715, 33.850067, 42.882259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653179, 34.115540, 42.501564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526352, 33.872177, 42.210548>,  <36.450256, 33.726158, 42.035938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526352, 33.872177, 42.210548>,  <36.653179, 34.115540, 42.501564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526352, 33.872177, 42.210548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398719, 0.610520, -0.684317,
		0.860518, -0.507058, 0.049007,
		-0.317068, -0.608407, -0.727536,
		36.431232, 33.689655, 41.992287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213894, 34.193634, 41.981129>,  <36.653179, 34.115540, 42.501564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213894, 34.193634, 41.981129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918480, 34.017326, 41.777054>,  <36.741230, 33.911541, 41.654610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918480, 34.017326, 41.777054>,  <37.213894, 34.193634, 41.981129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918480, 34.017326, 41.777054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225063, 0.552130, -0.802807,
		0.635545, -0.707722, -0.308564,
		-0.738532, -0.440774, -0.510185,
		36.696918, 33.885094, 41.623997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513363, 33.883999, 41.393085>,  <37.213894, 34.193634, 41.981129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513363, 33.883999, 41.393085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127502, 33.983795, 41.359146>,  <36.895985, 34.043674, 41.338783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127502, 33.983795, 41.359146>,  <37.513363, 33.883999, 41.393085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127502, 33.983795, 41.359146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209086, 0.528632, -0.822697,
		-0.160400, -0.811358, -0.562111,
		-0.964653, 0.249491, -0.084851,
		36.838108, 34.058643, 41.333691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354656, 33.870365, 40.719711>,  <37.513363, 33.883999, 41.393085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354656, 33.870365, 40.719711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030323, 34.079651, 40.824623>,  <36.835724, 34.205223, 40.887569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030323, 34.079651, 40.824623>,  <37.354656, 33.870365, 40.719711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030323, 34.079651, 40.824623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033934, 0.489412, -0.871392,
		-0.584290, -0.697655, -0.414587,
		-0.810835, 0.523215, 0.262284,
		36.787071, 34.236614, 40.903309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003296, 33.894707, 40.077423>,  <37.354656, 33.870365, 40.719711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003296, 33.894707, 40.077423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869843, 34.183228, 40.320210>,  <36.789768, 34.356342, 40.465881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869843, 34.183228, 40.320210>,  <37.003296, 33.894707, 40.077423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869843, 34.183228, 40.320210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019995, 0.649124, -0.760420,
		-0.942489, -0.241569, -0.230994,
		-0.333637, 0.721306, 0.606962,
		36.769753, 34.399620, 40.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321175, 34.200348, 39.772148>,  <37.003296, 33.894707, 40.077423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321175, 34.200348, 39.772148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471329, 34.486374, 40.008038>,  <36.561420, 34.657990, 40.149570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471329, 34.486374, 40.008038>,  <36.321175, 34.200348, 39.772148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471329, 34.486374, 40.008038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074792, 0.657547, -0.749692,
		-0.923847, 0.237315, 0.300313,
		0.375383, 0.715062, 0.589724,
		36.583942, 34.700893, 40.184956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987915, 34.822083, 39.577641>,  <36.321175, 34.200348, 39.772148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987915, 34.822083, 39.577641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302925, 34.959576, 39.782246>,  <36.491932, 35.042072, 39.905006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302925, 34.959576, 39.782246>,  <35.987915, 34.822083, 39.577641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302925, 34.959576, 39.782246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114704, 0.733741, -0.669677,
		-0.605509, 0.586062, 0.538415,
		0.787529, 0.343737, 0.511510,
		36.539185, 35.062698, 39.935699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958412, 35.577065, 39.381279>,  <35.987915, 34.822083, 39.577641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958412, 35.577065, 39.381279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328041, 35.513851, 39.520481>,  <36.549820, 35.475922, 39.604000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328041, 35.513851, 39.520481>,  <35.958412, 35.577065, 39.381279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328041, 35.513851, 39.520481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358574, 0.673667, -0.646218,
		-0.132313, 0.721940, 0.679188,
		0.924077, -0.158036, 0.348004,
		36.605263, 35.466442, 39.624882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263050, 36.196983, 39.438999>,  <35.958412, 35.577065, 39.381279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263050, 36.196983, 39.438999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576233, 35.948345, 39.429222>,  <36.764141, 35.799160, 39.423355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576233, 35.948345, 39.429222>,  <36.263050, 36.196983, 39.438999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576233, 35.948345, 39.429222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539576, 0.698143, -0.470589,
		0.309583, 0.355260, 0.882014,
		0.782954, -0.621599, -0.024443,
		36.811119, 35.761864, 39.421890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880428, 36.517696, 39.795544>,  <36.263050, 36.196983, 39.438999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880428, 36.517696, 39.795544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999626, 36.227509, 39.547386>,  <37.071144, 36.053394, 39.398491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999626, 36.227509, 39.547386>,  <36.880428, 36.517696, 39.795544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999626, 36.227509, 39.547386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594282, 0.649606, -0.474175,
		0.747013, -0.227389, 0.624713,
		0.297995, -0.725470, -0.620397,
		37.089024, 36.009869, 39.361267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520065, 36.684032, 39.650616>,  <36.880428, 36.517696, 39.795544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520065, 36.684032, 39.650616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441296, 36.430210, 39.351669>,  <37.394032, 36.277916, 39.172302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441296, 36.430210, 39.351669>,  <37.520065, 36.684032, 39.650616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441296, 36.430210, 39.351669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422285, 0.633062, -0.648774,
		0.884814, -0.443364, 0.143296,
		-0.196928, -0.634556, -0.747368,
		37.382217, 36.239841, 39.127460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113651, 36.666962, 39.300240>,  <37.520065, 36.684032, 39.650616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113651, 36.666962, 39.300240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860706, 36.524128, 39.025253>,  <37.708939, 36.438427, 38.860264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860706, 36.524128, 39.025253>,  <38.113651, 36.666962, 39.300240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860706, 36.524128, 39.025253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473791, 0.523824, -0.707906,
		0.612892, -0.773368, -0.162063,
		-0.632365, -0.357086, -0.687462,
		37.670998, 36.417004, 38.819016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533962, 36.371143, 38.779655>,  <38.113651, 36.666962, 39.300240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533962, 36.371143, 38.779655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187881, 36.501457, 38.627190>,  <37.980232, 36.579647, 38.535709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187881, 36.501457, 38.627190>,  <38.533962, 36.371143, 38.779655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187881, 36.501457, 38.627190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501412, 0.566031, -0.654367,
		0.002567, -0.757281, -0.653085,
		-0.865205, 0.325785, -0.381162,
		37.928322, 36.599194, 38.512840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764622, 36.308636, 38.196178>,  <38.533962, 36.371143, 38.779655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764622, 36.308636, 38.196178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430824, 36.527870, 38.173466>,  <38.230545, 36.659412, 38.159836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430824, 36.527870, 38.173466>,  <38.764622, 36.308636, 38.196178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430824, 36.527870, 38.173466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352963, 0.452559, -0.818906,
		-0.423135, -0.703412, -0.571111,
		-0.834490, 0.548089, -0.056785,
		38.180477, 36.692295, 38.156429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514912, 36.343182, 37.388683>,  <38.764622, 36.308636, 38.196178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514912, 36.343182, 37.388683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308491, 36.641453, 37.557281>,  <38.184639, 36.820415, 37.658440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308491, 36.641453, 37.557281>,  <38.514912, 36.343182, 37.388683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308491, 36.641453, 37.557281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417337, 0.648604, -0.636508,
		-0.748014, -0.152563, -0.645910,
		-0.516048, 0.745679, 0.421495,
		38.153675, 36.865158, 37.683731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302517, 36.753799, 36.910912>,  <38.514912, 36.343182, 37.388683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302517, 36.753799, 36.910912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271835, 37.023445, 37.204765>,  <38.253426, 37.185234, 37.381077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271835, 37.023445, 37.204765>,  <38.302517, 36.753799, 36.910912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271835, 37.023445, 37.204765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409912, 0.692977, -0.593090,
		-0.908894, 0.255642, -0.329482,
		-0.076705, 0.674115, 0.734633,
		38.248825, 37.225681, 37.425156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116367, 37.378529, 36.593346>,  <38.302517, 36.753799, 36.910912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116367, 37.378529, 36.593346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296860, 37.493465, 36.931297>,  <38.405155, 37.562428, 37.134068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296860, 37.493465, 36.931297>,  <38.116367, 37.378529, 36.593346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296860, 37.493465, 36.931297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437856, 0.753670, -0.490167,
		-0.777606, 0.591116, 0.214268,
		0.451233, 0.287338, 0.844882,
		38.432228, 37.579666, 37.184761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089577, 38.120636, 36.595310>,  <38.116367, 37.378529, 36.593346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089577, 38.120636, 36.595310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378052, 38.022938, 36.854610>,  <38.551136, 37.964321, 37.010189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378052, 38.022938, 36.854610>,  <38.089577, 38.120636, 36.595310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378052, 38.022938, 36.854610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515764, 0.814033, -0.267092,
		-0.462462, 0.526969, 0.713044,
		0.721191, -0.244243, 0.648251,
		38.594410, 37.949665, 37.049088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372047, 38.754784, 36.815174>,  <38.089577, 38.120636, 36.595310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372047, 38.754784, 36.815174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631111, 38.459946, 36.892357>,  <38.786549, 38.283043, 36.938667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631111, 38.459946, 36.892357>,  <38.372047, 38.754784, 36.815174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631111, 38.459946, 36.892357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756341, 0.591335, -0.279770,
		0.092113, 0.327138, 0.940476,
		0.647660, -0.737092, 0.192959,
		38.825409, 38.238819, 36.950245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785046, 39.041546, 37.287174>,  <38.372047, 38.754784, 36.815174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785046, 39.041546, 37.287174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977341, 38.758392, 37.080181>,  <39.092716, 38.588501, 36.955986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977341, 38.758392, 37.080181>,  <38.785046, 39.041546, 37.287174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977341, 38.758392, 37.080181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759218, 0.631300, -0.158265,
		0.438722, -0.316801, 0.840928,
		0.480739, -0.707882, -0.517486,
		39.121563, 38.546028, 36.924934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514694, 39.217670, 37.270325>,  <38.785046, 39.041546, 37.287174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514694, 39.217670, 37.270325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551876, 38.944759, 36.980263>,  <39.574184, 38.781013, 36.806225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551876, 38.944759, 36.980263>,  <39.514694, 39.217670, 37.270325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551876, 38.944759, 36.980263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798971, 0.485712, -0.354582,
		0.594142, -0.546421, 0.590271,
		0.092950, -0.682282, -0.725157,
		39.579762, 38.740074, 36.762714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227722, 39.125511, 37.259235>,  <39.514694, 39.217670, 37.270325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227722, 39.125511, 37.259235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081501, 38.994164, 36.910858>,  <39.993767, 38.915356, 36.701832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081501, 38.994164, 36.910858>,  <40.227722, 39.125511, 37.259235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081501, 38.994164, 36.910858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801136, 0.365374, -0.474007,
		0.473870, -0.871020, 0.129506,
		-0.365551, -0.328370, -0.870946,
		39.971836, 38.895653, 36.649574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734615, 38.815781, 36.919064>,  <40.227722, 39.125511, 37.259235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734615, 38.815781, 36.919064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477222, 38.880707, 36.619843>,  <40.322784, 38.919662, 36.440311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477222, 38.880707, 36.619843>,  <40.734615, 38.815781, 36.919064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477222, 38.880707, 36.619843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764412, 0.187365, -0.616902,
		0.040023, -0.968786, -0.244646,
		-0.643484, 0.162320, -0.748051,
		40.284176, 38.929401, 36.395428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096771, 38.506371, 36.363464>,  <40.734615, 38.815781, 36.919064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096771, 38.506371, 36.363464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837471, 38.762882, 36.199253>,  <40.681892, 38.916790, 36.100727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837471, 38.762882, 36.199253>,  <41.096771, 38.506371, 36.363464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837471, 38.762882, 36.199253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657702, 0.199921, -0.726264,
		-0.383667, -0.740803, -0.551371,
		-0.648250, 0.641282, -0.410524,
		40.642998, 38.955265, 36.076096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083572, 38.420326, 35.626049>,  <41.096771, 38.506371, 36.363464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083572, 38.420326, 35.626049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939976, 38.786301, 35.699825>,  <40.853817, 39.005886, 35.744091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939976, 38.786301, 35.699825>,  <41.083572, 38.420326, 35.626049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939976, 38.786301, 35.699825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660725, 0.388694, -0.642152,
		-0.659219, -0.108662, -0.744059,
		-0.358988, 0.914937, 0.184439,
		40.832279, 39.060783, 35.755157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377312, 38.692513, 35.090492>,  <41.083572, 38.420326, 35.626049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377312, 38.692513, 35.090492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290760, 39.021530, 35.300865>,  <41.238827, 39.218941, 35.427090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290760, 39.021530, 35.300865>,  <41.377312, 38.692513, 35.090492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290760, 39.021530, 35.300865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849114, 0.424421, -0.314439,
		-0.481855, 0.378534, -0.790271,
		-0.216382, 0.822544, 0.525928,
		41.225845, 39.268291, 35.458645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220741, 39.309521, 34.775906>,  <41.377312, 38.692513, 35.090492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220741, 39.309521, 34.775906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431465, 39.316742, 35.115822>,  <41.557899, 39.321075, 35.319771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431465, 39.316742, 35.115822>,  <41.220741, 39.309521, 34.775906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431465, 39.316742, 35.115822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815364, 0.271691, -0.511239,
		-0.240109, 0.962215, 0.128412,
		0.526811, 0.018050, 0.849791,
		41.589508, 39.322159, 35.370758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667885, 39.943005, 34.895603>,  <41.220741, 39.309521, 34.775906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667885, 39.943005, 34.895603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795532, 39.589737, 35.033108>,  <41.872120, 39.377777, 35.115612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795532, 39.589737, 35.033108>,  <41.667885, 39.943005, 34.895603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795532, 39.589737, 35.033108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742210, 0.007347, -0.670127,
		0.589311, 0.468995, 0.657842,
		0.319119, -0.883171, 0.343763,
		41.891270, 39.324787, 35.136238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363041, 40.104412, 35.065121>,  <41.667885, 39.943005, 34.895603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363041, 40.104412, 35.065121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306583, 39.716953, 34.983334>,  <42.272709, 39.484478, 34.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306583, 39.716953, 34.983334>,  <42.363041, 40.104412, 35.065121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306583, 39.716953, 34.983334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779924, 0.018414, -0.625603,
		0.609752, -0.247769, 0.752870,
		-0.141142, -0.968644, -0.204470,
		42.264240, 39.426361, 34.921993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131023, 39.844887, 35.190907>,  <42.363041, 40.104412, 35.065121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131023, 39.844887, 35.190907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173378, 39.824577, 35.588139>,  <43.198792, 39.812393, 35.826477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173378, 39.824577, 35.588139>,  <43.131023, 39.844887, 35.190907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173378, 39.824577, 35.588139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348542, -0.937231, -0.010756,
		0.931293, -0.344992, -0.116935,
		0.105884, -0.050774, 0.993081,
		43.205143, 39.809345, 35.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665581, 39.432877, 35.357269>,  <43.131023, 39.844887, 35.190907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665581, 39.432877, 35.357269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408154, 39.426571, 35.663361>,  <43.253696, 39.422787, 35.847015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408154, 39.426571, 35.663361>,  <43.665581, 39.432877, 35.357269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408154, 39.426571, 35.663361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161201, -0.974570, -0.155654,
		0.748225, -0.223529, 0.624656,
		-0.643563, -0.015769, 0.765230,
		43.215084, 39.421841, 35.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943504, 38.922588, 35.768044>,  <43.665581, 39.432877, 35.357269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943504, 38.922588, 35.768044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548534, 38.970047, 35.809853>,  <43.311554, 38.998524, 35.834938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548534, 38.970047, 35.809853>,  <43.943504, 38.922588, 35.768044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548534, 38.970047, 35.809853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146618, -0.934519, -0.324310,
		0.059200, -0.335555, 0.940159,
		-0.987420, 0.118645, 0.104522,
		43.252308, 39.005642, 35.841209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615494, 38.209797, 35.904751>,  <43.943504, 38.922588, 35.768044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615494, 38.209797, 35.904751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006886, 38.207520, 35.987259>,  <44.241722, 38.206154, 36.036766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006886, 38.207520, 35.987259>,  <43.615494, 38.209797, 35.904751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006886, 38.207520, 35.987259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183945, 0.428943, 0.884405,
		-0.093517, -0.903314, 0.418663,
		0.978478, -0.005696, 0.206273,
		44.300430, 38.205811, 36.049141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725613, 37.882183, 36.595821>,  <43.615494, 38.209797, 35.904751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725613, 37.882183, 36.595821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052086, 38.098228, 36.513718>,  <44.247971, 38.227856, 36.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052086, 38.098228, 36.513718>,  <43.725613, 37.882183, 36.595821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052086, 38.098228, 36.513718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092261, 0.472513, 0.876481,
		0.570387, -0.696427, 0.435486,
		0.816178, 0.540111, -0.205262,
		44.296940, 38.260262, 36.452141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134174, 37.780010, 37.175514>,  <43.725613, 37.882183, 36.595821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134174, 37.780010, 37.175514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212471, 38.125011, 36.988850>,  <44.259449, 38.332012, 36.876850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212471, 38.125011, 36.988850>,  <44.134174, 37.780010, 37.175514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212471, 38.125011, 36.988850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194742, 0.500578, 0.843503,
		0.961124, -0.074232, 0.265951,
		0.195744, 0.862503, -0.466661,
		44.271194, 38.383762, 36.848850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446915, 38.124821, 37.670654>,  <44.134174, 37.780010, 37.175514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446915, 38.124821, 37.670654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418415, 38.431622, 37.415585>,  <44.401314, 38.615704, 37.262543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418415, 38.431622, 37.415585>,  <44.446915, 38.124821, 37.670654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418415, 38.431622, 37.415585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096452, 0.631006, 0.769759,
		0.992784, 0.116352, 0.029019,
		-0.071251, 0.767003, -0.637675,
		44.397041, 38.661724, 37.224281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856792, 38.615742, 37.932529>,  <44.446915, 38.124821, 37.670654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856792, 38.615742, 37.932529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583271, 38.791023, 37.699158>,  <44.419159, 38.896194, 37.559135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583271, 38.791023, 37.699158>,  <44.856792, 38.615742, 37.932529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583271, 38.791023, 37.699158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321290, 0.537066, 0.779956,
		0.655122, 0.720786, -0.226456,
		-0.683804, 0.438208, -0.583426,
		44.378128, 38.922485, 37.524132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874828, 39.345039, 38.131355>,  <44.856792, 38.615742, 37.932529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874828, 39.345039, 38.131355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517941, 39.308525, 37.954445>,  <44.303806, 39.286617, 37.848297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517941, 39.308525, 37.954445>,  <44.874828, 39.345039, 38.131355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517941, 39.308525, 37.954445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441012, 0.386935, 0.809808,
		0.097210, 0.917577, -0.385489,
		-0.892221, -0.091284, -0.442277,
		44.250275, 39.281139, 37.821762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469158, 39.905045, 38.202648>,  <44.874828, 39.345039, 38.131355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469158, 39.905045, 38.202648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189159, 39.631268, 38.121117>,  <44.021160, 39.467003, 38.072197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189159, 39.631268, 38.121117>,  <44.469158, 39.905045, 38.202648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189159, 39.631268, 38.121117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592137, 0.396715, 0.701421,
		-0.399220, 0.611686, -0.682982,
		-0.699998, -0.684440, -0.203825,
		43.979160, 39.425934, 38.059971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983932, 40.235641, 38.319412>,  <44.469158, 39.905045, 38.202648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983932, 40.235641, 38.319412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829277, 39.866749, 38.318794>,  <43.736485, 39.645412, 38.318424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829277, 39.866749, 38.318794>,  <43.983932, 40.235641, 38.319412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829277, 39.866749, 38.318794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776581, 0.324674, 0.539915,
		-0.497423, 0.209956, -0.841718,
		-0.386642, -0.922229, -0.001548,
		43.713284, 39.590080, 38.318329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311527, 40.273643, 38.151814>,  <43.983932, 40.235641, 38.319412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311527, 40.273643, 38.151814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293781, 39.921852, 38.341358>,  <43.283134, 39.710777, 38.455086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293781, 39.921852, 38.341358>,  <43.311527, 40.273643, 38.151814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293781, 39.921852, 38.341358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855992, 0.278026, 0.435866,
		-0.515082, -0.386284, -0.765163,
		-0.044367, -0.879480, 0.473862,
		43.280472, 39.658009, 38.483517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492508, 40.030293, 38.041775>,  <43.311527, 40.273643, 38.151814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492508, 40.030293, 38.041775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639435, 39.792786, 38.328136>,  <42.727592, 39.650280, 38.499954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639435, 39.792786, 38.328136>,  <42.492508, 40.030293, 38.041775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639435, 39.792786, 38.328136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862389, 0.070871, 0.501262,
		-0.348369, -0.801511, -0.486024,
		0.367321, -0.593766, 0.715903,
		42.749630, 39.614655, 38.542908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872852, 39.525124, 38.218647>,  <42.492508, 40.030293, 38.041775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872852, 39.525124, 38.218647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134811, 39.551563, 38.519775>,  <42.291985, 39.567429, 38.700455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134811, 39.551563, 38.519775>,  <41.872852, 39.525124, 38.218647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134811, 39.551563, 38.519775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755715, 0.053719, 0.652693,
		0.002705, -0.996366, 0.085136,
		0.654894, 0.066104, 0.752823,
		42.331280, 39.571396, 38.745621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567062, 39.081371, 38.859081>,  <41.872852, 39.525124, 38.218647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567062, 39.081371, 38.859081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825993, 39.345291, 39.011734>,  <41.981350, 39.503643, 39.103325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825993, 39.345291, 39.011734>,  <41.567062, 39.081371, 38.859081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825993, 39.345291, 39.011734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704377, 0.326504, 0.630276,
		0.291247, -0.676806, 0.676098,
		0.647323, 0.659794, 0.381634,
		42.020187, 39.543232, 39.126221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259529, 39.085373, 39.450245>,  <41.567062, 39.081371, 38.859081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259529, 39.085373, 39.450245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500248, 39.404659, 39.460709>,  <41.644680, 39.596233, 39.466988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500248, 39.404659, 39.460709>,  <41.259529, 39.085373, 39.450245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500248, 39.404659, 39.460709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586854, 0.419752, 0.692395,
		0.541700, -0.432038, 0.721044,
		0.601800, 0.798218, 0.026164,
		41.680786, 39.644123, 39.468559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487148, 39.170650, 40.165001>,  <41.259529, 39.085373, 39.450245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487148, 39.170650, 40.165001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524502, 39.529831, 39.992973>,  <41.546913, 39.745338, 39.889755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524502, 39.529831, 39.992973>,  <41.487148, 39.170650, 40.165001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524502, 39.529831, 39.992973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428037, 0.426211, 0.796949,
		0.898923, 0.109661, 0.424160,
		0.093387, 0.897952, -0.430070,
		41.552517, 39.799217, 39.863953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738907, 39.695503, 40.692734>,  <41.487148, 39.170650, 40.165001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738907, 39.695503, 40.692734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553581, 39.915535, 40.414810>,  <41.442387, 40.047554, 40.248058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553581, 39.915535, 40.414810>,  <41.738907, 39.695503, 40.692734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553581, 39.915535, 40.414810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649806, 0.322233, 0.688417,
		0.602574, 0.770440, 0.208151,
		-0.463311, 0.550080, -0.694806,
		41.414589, 40.080559, 40.206367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616417, 40.283722, 40.964409>,  <41.738907, 39.695503, 40.692734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616417, 40.283722, 40.964409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343849, 40.291508, 40.671757>,  <41.180309, 40.296181, 40.496166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343849, 40.291508, 40.671757>,  <41.616417, 40.283722, 40.964409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343849, 40.291508, 40.671757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618065, 0.520100, 0.589484,
		0.391999, 0.853883, -0.342374,
		-0.681419, 0.019468, -0.731634,
		41.139423, 40.297348, 40.452267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412453, 40.995502, 40.888988>,  <41.616417, 40.283722, 40.964409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412453, 40.995502, 40.888988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119045, 40.777218, 40.726929>,  <40.943001, 40.646248, 40.629692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119045, 40.777218, 40.726929>,  <41.412453, 40.995502, 40.888988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119045, 40.777218, 40.726929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675351, 0.518132, 0.524823,
		-0.076483, 0.658586, -0.748609,
		-0.733519, -0.545714, -0.405148,
		40.898991, 40.613503, 40.605385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872005, 41.497337, 40.791481>,  <41.412453, 40.995502, 40.888988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872005, 41.497337, 40.791481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689232, 41.142601, 40.764008>,  <40.579567, 40.929760, 40.747524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689232, 41.142601, 40.764008>,  <40.872005, 41.497337, 40.791481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689232, 41.142601, 40.764008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752758, 0.344399, 0.561021,
		-0.473885, 0.308050, -0.824947,
		-0.456933, -0.886845, -0.068682,
		40.552151, 40.876549, 40.743404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240677, 41.735958, 40.754215>,  <40.872005, 41.497337, 40.791481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240677, 41.735958, 40.754215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192856, 41.349861, 40.847183>,  <40.164162, 41.118202, 40.902966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192856, 41.349861, 40.847183>,  <40.240677, 41.735958, 40.754215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192856, 41.349861, 40.847183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693455, 0.248721, 0.676208,
		-0.710511, -0.080330, -0.699086,
		-0.119557, -0.965238, 0.232424,
		40.156990, 41.060291, 40.916912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561680, 41.694588, 40.668026>,  <40.240677, 41.735958, 40.754215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561680, 41.694588, 40.668026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700775, 41.403530, 40.904541>,  <39.784233, 41.228897, 41.046448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700775, 41.403530, 40.904541>,  <39.561680, 41.694588, 40.668026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700775, 41.403530, 40.904541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738244, 0.176279, 0.651093,
		-0.577994, -0.662919, -0.475880,
		0.347734, -0.727643, 0.591284,
		39.805096, 41.185238, 41.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002640, 41.407879, 40.959721>,  <39.561680, 41.694588, 40.668026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002640, 41.407879, 40.959721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308685, 41.297016, 41.192200>,  <39.492313, 41.230499, 41.331688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308685, 41.297016, 41.192200>,  <39.002640, 41.407879, 40.959721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308685, 41.297016, 41.192200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513907, 0.280980, 0.810524,
		-0.387945, -0.918823, 0.072550,
		0.765113, -0.277155, 0.581195,
		39.538219, 41.213871, 41.366558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746090, 41.002151, 41.457382>,  <39.002640, 41.407879, 40.959721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746090, 41.002151, 41.457382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083561, 41.138817, 41.623024>,  <39.286041, 41.220814, 41.722408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083561, 41.138817, 41.623024>,  <38.746090, 41.002151, 41.457382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083561, 41.138817, 41.623024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506189, 0.249274, 0.825612,
		0.178851, -0.906163, 0.383250,
		0.843673, 0.341659, 0.414107,
		39.336662, 41.241314, 41.747257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029438, 40.777859, 42.172840>,  <38.746090, 41.002151, 41.457382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029438, 40.777859, 42.172840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786701, 40.486092, 42.046543>,  <38.641060, 40.311031, 41.970764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786701, 40.486092, 42.046543>,  <39.029438, 40.777859, 42.172840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786701, 40.486092, 42.046543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370983, 0.611256, -0.699098,
		0.702936, -0.307104, -0.641536,
		-0.606839, -0.729420, -0.315744,
		38.604649, 40.267265, 41.951820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480446, 40.924583, 42.854595>,  <39.029438, 40.777859, 42.172840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480446, 40.924583, 42.854595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637100, 40.665314, 43.115818>,  <39.731094, 40.509750, 43.272552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637100, 40.665314, 43.115818>,  <39.480446, 40.924583, 42.854595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637100, 40.665314, 43.115818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919740, 0.296130, -0.257653,
		-0.026386, 0.701551, 0.712131,
		0.391640, -0.648177, 0.653058,
		39.754593, 40.470860, 43.311737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789452, 41.197666, 43.413338>,  <39.480446, 40.924583, 42.854595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789452, 41.197666, 43.413338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944721, 40.851215, 43.287392>,  <40.037884, 40.643345, 43.211823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944721, 40.851215, 43.287392>,  <39.789452, 41.197666, 43.413338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944721, 40.851215, 43.287392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771667, 0.492252, -0.402762,
		0.503838, -0.086630, 0.859443,
		0.388171, -0.866131, -0.314865,
		40.061172, 40.591377, 43.192932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536163, 41.087704, 43.662624>,  <39.789452, 41.197666, 43.413338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536163, 41.087704, 43.662624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456348, 40.931629, 43.303082>,  <40.408459, 40.837982, 43.087357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456348, 40.931629, 43.303082>,  <40.536163, 41.087704, 43.662624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456348, 40.931629, 43.303082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714802, 0.569485, -0.405887,
		0.670257, -0.723491, 0.165277,
		-0.199533, -0.390189, -0.898854,
		40.396488, 40.814571, 43.033424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240131, 40.744305, 43.319733>,  <40.536163, 41.087704, 43.662624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240131, 40.744305, 43.319733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956425, 40.864834, 43.064816>,  <40.786201, 40.937149, 42.911865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956425, 40.864834, 43.064816>,  <41.240131, 40.744305, 43.319733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956425, 40.864834, 43.064816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678765, 0.535969, -0.502011,
		0.190305, -0.788634, -0.584671,
		-0.709269, 0.301319, -0.637295,
		40.743645, 40.955231, 42.873627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545681, 40.175518, 43.512100>,  <41.240131, 40.744305, 43.319733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545681, 40.175518, 43.512100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450993, 39.792027, 43.575089>,  <41.394180, 39.561932, 43.612881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450993, 39.792027, 43.575089>,  <41.545681, 40.175518, 43.512100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450993, 39.792027, 43.575089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502284, -0.259495, -0.824848,
		0.831670, -0.116164, 0.542983,
		-0.236719, -0.958733, 0.157467,
		41.379978, 39.504406, 43.622330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105667, 39.828472, 43.390549>,  <41.545681, 40.175518, 43.512100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105667, 39.828472, 43.390549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823002, 39.545532, 43.383720>,  <41.653404, 39.375771, 43.379623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823002, 39.545532, 43.383720>,  <42.105667, 39.828472, 43.390549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823002, 39.545532, 43.383720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480338, -0.461880, -0.745615,
		0.519525, -0.535096, 0.666158,
		-0.706660, -0.707347, -0.017069,
		41.611004, 39.333328, 43.378601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384838, 39.113369, 43.478363>,  <42.105667, 39.828472, 43.390549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384838, 39.113369, 43.478363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048389, 39.101814, 43.262333>,  <41.846519, 39.094883, 43.132713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048389, 39.101814, 43.262333>,  <42.384838, 39.113369, 43.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048389, 39.101814, 43.262333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502405, -0.411474, -0.760446,
		-0.200260, -0.910963, 0.360612,
		-0.841121, -0.028887, -0.540074,
		41.796055, 39.093147, 43.100311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212093, 38.394825, 43.286213>,  <42.384838, 39.113369, 43.478363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212093, 38.394825, 43.286213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058002, 38.633072, 43.004265>,  <41.965549, 38.776020, 42.835098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058002, 38.633072, 43.004265>,  <42.212093, 38.394825, 43.286213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058002, 38.633072, 43.004265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510850, -0.498469, -0.700400,
		-0.768528, -0.629893, -0.112250,
		-0.385224, 0.595620, -0.704868,
		41.942436, 38.811756, 42.792805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828304, 37.985722, 42.755474>,  <42.212093, 38.394825, 43.286213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828304, 37.985722, 42.755474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025288, 38.313217, 42.637394>,  <42.143478, 38.509716, 42.566544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025288, 38.313217, 42.637394>,  <41.828304, 37.985722, 42.755474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025288, 38.313217, 42.637394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455290, -0.531414, -0.714360,
		-0.741752, 0.217390, -0.634465,
		0.492458, 0.818744, -0.295202,
		42.173023, 38.558842, 42.548832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854973, 37.834488, 42.106060>,  <41.828304, 37.985722, 42.755474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854973, 37.834488, 42.106060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147633, 38.096256, 42.182404>,  <42.323227, 38.253319, 42.228210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147633, 38.096256, 42.182404>,  <41.854973, 37.834488, 42.106060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147633, 38.096256, 42.182404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486952, -0.305808, -0.818143,
		-0.477045, 0.691530, -0.542415,
		0.731645, 0.654422, 0.190858,
		42.367126, 38.292583, 42.239662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050072, 38.182613, 41.412128>,  <41.854973, 37.834488, 42.106060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050072, 38.182613, 41.412128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354210, 38.191372, 41.671787>,  <42.536694, 38.196629, 41.827583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354210, 38.191372, 41.671787>,  <42.050072, 38.182613, 41.412128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354210, 38.191372, 41.671787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621555, -0.314634, -0.717408,
		0.188535, 0.948960, -0.252841,
		0.760345, 0.021898, 0.649151,
		42.582314, 38.197941, 41.866531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536240, 38.526302, 41.022583>,  <42.050072, 38.182613, 41.412128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536240, 38.526302, 41.022583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733013, 38.331909, 41.311531>,  <42.851078, 38.215275, 41.484901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733013, 38.331909, 41.311531>,  <42.536240, 38.526302, 41.022583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733013, 38.331909, 41.311531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511593, -0.509995, -0.691504,
		0.704465, 0.709735, -0.002259,
		0.491937, -0.485984, 0.722369,
		42.880592, 38.186115, 41.528240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185127, 38.554363, 40.769184>,  <42.536240, 38.526302, 41.022583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185127, 38.554363, 40.769184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173752, 38.270897, 41.051174>,  <43.166927, 38.100819, 41.220367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173752, 38.270897, 41.051174>,  <43.185127, 38.554363, 40.769184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173752, 38.270897, 41.051174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558793, -0.596041, -0.576616,
		0.828820, 0.377534, 0.412949,
		-0.028443, -0.708663, 0.704973,
		43.165218, 38.058296, 41.262665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936985, 38.461399, 40.973469>,  <43.185127, 38.554363, 40.769184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936985, 38.461399, 40.973469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729191, 38.133854, 41.071121>,  <43.604515, 37.937328, 41.129711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729191, 38.133854, 41.071121>,  <43.936985, 38.461399, 40.973469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729191, 38.133854, 41.071121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619949, -0.557816, -0.551820,
		0.588044, -0.135315, 0.797430,
		-0.519488, -0.818860, 0.244132,
		43.573345, 37.888195, 41.144360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447330, 37.936169, 41.027836>,  <43.936985, 38.461399, 40.973469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447330, 37.936169, 41.027836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123817, 37.700932, 41.026413>,  <43.929710, 37.559788, 41.025558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123817, 37.700932, 41.026413>,  <44.447330, 37.936169, 41.027836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123817, 37.700932, 41.026413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534429, -0.732429, -0.421822,
		0.245463, -0.343066, 0.906672,
		-0.808786, -0.588093, -0.003560,
		43.881184, 37.524502, 41.025345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745556, 37.225349, 41.210754>,  <44.447330, 37.936169, 41.027836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745556, 37.225349, 41.210754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393692, 37.175350, 41.027199>,  <44.182575, 37.145351, 40.917065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393692, 37.175350, 41.027199>,  <44.745556, 37.225349, 41.210754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393692, 37.175350, 41.027199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446841, -0.547680, -0.707375,
		-0.162910, -0.827299, 0.537622,
		-0.879655, -0.124993, -0.458894,
		44.129795, 37.137852, 40.889530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718845, 36.475285, 41.123310>,  <44.745556, 37.225349, 41.210754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718845, 36.475285, 41.123310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496548, 36.679825, 40.861115>,  <44.363171, 36.802547, 40.703796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496548, 36.679825, 40.861115>,  <44.718845, 36.475285, 41.123310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496548, 36.679825, 40.861115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422304, -0.505524, -0.752400,
		-0.716108, -0.694957, 0.064995,
		-0.555742, 0.511352, -0.655492,
		44.329826, 36.833229, 40.664467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477306, 35.969524, 40.676418>,  <44.718845, 36.475285, 41.123310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477306, 35.969524, 40.676418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418606, 36.294243, 40.450340>,  <44.383385, 36.489075, 40.314693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418606, 36.294243, 40.450340>,  <44.477306, 35.969524, 40.676418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418606, 36.294243, 40.450340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381881, -0.480587, -0.789432,
		-0.912486, -0.331689, -0.239483,
		-0.146753, 0.811800, -0.565195,
		44.374580, 36.537785, 40.280781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360821, 35.652874, 40.121162>,  <44.477306, 35.969524, 40.676418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360821, 35.652874, 40.121162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434914, 36.022243, 39.986717>,  <44.479370, 36.243866, 39.906048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434914, 36.022243, 39.986717>,  <44.360821, 35.652874, 40.121162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434914, 36.022243, 39.986717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278035, -0.377308, -0.883366,
		-0.942541, 0.070180, -0.326635,
		0.185237, 0.923425, -0.336116,
		44.490486, 36.299271, 39.885883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036064, 35.686844, 39.473507>,  <44.360821, 35.652874, 40.121162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036064, 35.686844, 39.473507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312496, 35.975777, 39.463345>,  <44.478355, 36.149136, 39.457249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312496, 35.975777, 39.463345>,  <44.036064, 35.686844, 39.473507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312496, 35.975777, 39.463345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228175, -0.251379, -0.940609,
		-0.685821, 0.644236, -0.338541,
		0.691076, 0.722336, -0.025403,
		44.519817, 36.192478, 39.455723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937771, 36.127888, 38.883778>,  <44.036064, 35.686844, 39.473507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937771, 36.127888, 38.883778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324898, 36.187096, 38.965187>,  <44.557175, 36.222622, 39.014034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324898, 36.187096, 38.965187>,  <43.937771, 36.127888, 38.883778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324898, 36.187096, 38.965187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191331, 0.092578, -0.977150,
		-0.163482, 0.984642, 0.061278,
		0.967815, 0.148022, 0.203527,
		44.615242, 36.231503, 39.026245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101799, 36.709511, 38.502842>,  <43.937771, 36.127888, 38.883778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101799, 36.709511, 38.502842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437683, 36.501526, 38.565472>,  <44.639214, 36.376736, 38.603050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437683, 36.501526, 38.565472>,  <44.101799, 36.709511, 38.502842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437683, 36.501526, 38.565472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159477, -0.039477, -0.986412,
		0.519082, 0.853274, 0.049773,
		0.839715, -0.519966, 0.156570,
		44.689598, 36.345535, 38.612442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570980, 36.910759, 37.963543>,  <44.101799, 36.709511, 38.502842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570980, 36.910759, 37.963543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775818, 36.596386, 38.102142>,  <44.898720, 36.407761, 38.185303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775818, 36.596386, 38.102142>,  <44.570980, 36.910759, 37.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775818, 36.596386, 38.102142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366950, -0.164557, -0.915570,
		0.776597, 0.596010, 0.204130,
		0.512098, -0.785935, 0.346501,
		44.929447, 36.360607, 38.206093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230183, 37.188461, 37.889690>,  <44.570980, 36.910759, 37.963543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230183, 37.188461, 37.889690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271580, 36.791096, 37.909370>,  <45.296417, 36.552677, 37.921177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271580, 36.791096, 37.909370>,  <45.230183, 37.188461, 37.889690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271580, 36.791096, 37.909370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430533, 0.000153, -0.902575,
		0.896621, 0.114591, 0.427713,
		0.103493, -0.993413, 0.049198,
		45.302628, 36.493073, 37.924129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937672, 36.986561, 37.702736>,  <45.230183, 37.188461, 37.889690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937672, 36.986561, 37.702736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740803, 36.643166, 37.645107>,  <45.622681, 36.437126, 37.610531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740803, 36.643166, 37.645107>,  <45.937672, 36.986561, 37.702736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740803, 36.643166, 37.645107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538534, -0.170251, -0.825225,
		0.683918, -0.483745, 0.546120,
		-0.492175, -0.858490, -0.144076,
		45.593151, 36.385620, 37.601883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370396, 36.350464, 37.777359>,  <45.937672, 36.986561, 37.702736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370396, 36.350464, 37.777359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082142, 36.213917, 37.535976>,  <45.909191, 36.131989, 37.391148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082142, 36.213917, 37.535976>,  <46.370396, 36.350464, 37.777359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082142, 36.213917, 37.535976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676910, -0.158191, -0.718866,
		0.149939, -0.926521, 0.345075,
		-0.720633, -0.341371, -0.603452,
		45.865952, 36.111507, 37.354942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703342, 35.819801, 37.448399>,  <46.370396, 36.350464, 37.777359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703342, 35.819801, 37.448399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383133, 35.934608, 37.237957>,  <46.191006, 36.003490, 37.111691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383133, 35.934608, 37.237957>,  <46.703342, 35.819801, 37.448399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383133, 35.934608, 37.237957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518633, -0.108111, -0.848134,
		-0.300304, -0.951806, -0.062310,
		-0.800523, 0.287014, -0.526104,
		46.142975, 36.020714, 37.080124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656059, 35.353569, 36.960243>,  <46.703342, 35.819801, 37.448399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656059, 35.353569, 36.960243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427284, 35.656097, 36.833206>,  <46.290020, 35.837616, 36.756985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427284, 35.656097, 36.833206>,  <46.656059, 35.353569, 36.960243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427284, 35.656097, 36.833206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328289, -0.143763, -0.933573,
		-0.751739, -0.638208, -0.166068,
		-0.571940, 0.756322, -0.317589,
		46.255703, 35.882996, 36.737930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323792, 35.219517, 36.347649>,  <46.656059, 35.353569, 36.960243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323792, 35.219517, 36.347649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317318, 35.619442, 36.351913>,  <46.313435, 35.859398, 36.354473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317318, 35.619442, 36.351913>,  <46.323792, 35.219517, 36.347649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.317318, 35.619442, 36.351913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241537, 0.014254, -0.970287,
		-0.970257, -0.013128, -0.241722,
		-0.016184, 0.999812, 0.010659,
		46.312462, 35.919384, 36.355110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684376, 35.017174, 35.794132>,  <46.323792, 35.219517, 36.347649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684376, 35.017174, 35.794132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569313, 34.805309, 35.474957>,  <46.500275, 34.678188, 35.283451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569313, 34.805309, 35.474957>,  <46.684376, 35.017174, 35.794132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569313, 34.805309, 35.474957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917508, 0.391327, 0.071007,
		0.274645, 0.752542, -0.598540,
		-0.287660, -0.529664, -0.797940,
		46.483013, 34.646412, 35.235573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.208656, 34.884029, 35.262390>,  <46.684376, 35.017174, 35.794132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.208656, 34.884029, 35.262390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404411, 35.145744, 35.031769>,  <47.521862, 35.302773, 34.893398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404411, 35.145744, 35.031769>,  <47.208656, 34.884029, 35.262390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404411, 35.145744, 35.031769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695588, 0.691625, 0.194454,
		0.525985, 0.305878, 0.793586,
		0.489385, 0.654289, -0.576549,
		47.551228, 35.342030, 34.858803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475636, 35.440346, 35.662518>,  <47.208656, 34.884029, 35.262390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475636, 35.440346, 35.662518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401348, 35.559635, 35.288017>,  <47.356777, 35.631210, 35.063316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401348, 35.559635, 35.288017>,  <47.475636, 35.440346, 35.662518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401348, 35.559635, 35.288017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571114, 0.742597, 0.349826,
		0.799586, 0.599677, 0.032406,
		-0.185718, 0.298223, -0.936254,
		47.345634, 35.649101, 35.007141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.090157, 34.922947, 35.681023>,  <47.475636, 35.440346, 35.662518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.090157, 34.922947, 35.681023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.922760, 34.953133, 35.318989>,  <47.822323, 34.971245, 35.101768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.922760, 34.953133, 35.318989>,  <48.090157, 34.922947, 35.681023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.922760, 34.953133, 35.318989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055707, -0.992533, -0.108512,
		-0.906511, -0.095830, 0.411163,
		-0.418491, 0.075463, -0.905080,
		47.797215, 34.975773, 35.047466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.324497, 36.908379, 41.989212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.964733, 36.991928, 41.835621>,  <33.748875, 37.042057, 41.743465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.964733, 36.991928, 41.835621>,  <34.324497, 36.908379, 41.989212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964733, 36.991928, 41.835621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437004, 0.449160, -0.779283,
		0.009692, -0.868692, -0.495258,
		-0.899407, 0.208877, -0.383975,
		33.694912, 37.054592, 41.720428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442795, 36.949326, 41.230453>,  <34.324497, 36.908379, 41.989212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442795, 36.949326, 41.230453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076664, 37.099144, 41.289642>,  <33.856987, 37.189034, 41.325157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076664, 37.099144, 41.289642>,  <34.442795, 36.949326, 41.230453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076664, 37.099144, 41.289642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133421, 0.628724, -0.766097,
		-0.379976, -0.681484, -0.625458,
		-0.915324, 0.374547, 0.147976,
		33.802067, 37.211510, 41.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211216, 37.011703, 40.578671>,  <34.442795, 36.949326, 41.230453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211216, 37.011703, 40.578671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.996738, 37.264545, 40.802433>,  <33.868053, 37.416252, 40.936691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.996738, 37.264545, 40.802433>,  <34.211216, 37.011703, 40.578671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996738, 37.264545, 40.802433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089685, 0.701643, -0.706862,
		-0.839318, -0.328842, -0.432906,
		-0.536191, 0.632107, 0.559410,
		33.835880, 37.454178, 40.970257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578091, 37.189453, 40.157158>,  <34.211216, 37.011703, 40.578671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578091, 37.189453, 40.157158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659103, 37.464760, 40.435802>,  <33.707710, 37.629944, 40.602989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659103, 37.464760, 40.435802>,  <33.578091, 37.189453, 40.157158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659103, 37.464760, 40.435802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165769, 0.725186, -0.668300,
		-0.965143, 0.019877, 0.260968,
		0.202534, 0.688266, 0.696613,
		33.719864, 37.671238, 40.644787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090290, 37.654385, 40.020985>,  <33.578091, 37.189453, 40.157158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090290, 37.654385, 40.020985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.371826, 37.855412, 40.221798>,  <33.540749, 37.976028, 40.342285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.371826, 37.855412, 40.221798>,  <33.090290, 37.654385, 40.020985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371826, 37.855412, 40.221798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011746, 0.698398, -0.715614,
		-0.710259, 0.509576, 0.485658,
		0.703842, 0.502567, 0.502029,
		33.582977, 38.006180, 40.372406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921413, 38.310612, 39.998844>,  <33.090290, 37.654385, 40.020985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921413, 38.310612, 39.998844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310184, 38.338036, 40.088871>,  <33.543446, 38.354488, 40.142887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310184, 38.338036, 40.088871>,  <32.921413, 38.310612, 39.998844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310184, 38.338036, 40.088871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100792, 0.743035, -0.661619,
		-0.212591, 0.665732, 0.715267,
		0.971929, 0.068561, 0.225063,
		33.601765, 38.358604, 40.156391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069885, 38.932133, 39.762238>,  <32.921413, 38.310612, 39.998844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069885, 38.932133, 39.762238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440670, 38.809910, 39.849300>,  <33.663139, 38.736576, 39.901539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440670, 38.809910, 39.849300>,  <33.069885, 38.932133, 39.762238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440670, 38.809910, 39.849300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370129, 0.650244, -0.663466,
		0.061199, 0.695569, 0.715849,
		0.926962, -0.305559, 0.217656,
		33.718758, 38.718243, 39.914597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546028, 39.516304, 39.627041>,  <33.069885, 38.932133, 39.762238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546028, 39.516304, 39.627041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.829208, 39.237316, 39.671459>,  <33.999119, 39.069923, 39.698109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.829208, 39.237316, 39.671459>,  <33.546028, 39.516304, 39.627041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829208, 39.237316, 39.671459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529917, 0.420637, -0.736378,
		0.466894, 0.580167, 0.667395,
		0.707953, -0.697474, 0.111047,
		34.041595, 39.028072, 39.704773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192039, 39.871803, 39.638901>,  <33.546028, 39.516304, 39.627041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192039, 39.871803, 39.638901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250065, 39.496735, 39.512581>,  <34.284882, 39.271694, 39.436790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.250065, 39.496735, 39.512581>,  <34.192039, 39.871803, 39.638901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250065, 39.496735, 39.512581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485571, 0.345561, -0.803000,
		0.862077, -0.036855, 0.505435,
		0.145064, -0.937672, -0.315796,
		34.293583, 39.215431, 39.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936142, 39.905350, 39.416542>,  <34.192039, 39.871803, 39.638901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936142, 39.905350, 39.416542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.780937, 39.571411, 39.260349>,  <34.687817, 39.371048, 39.166634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.780937, 39.571411, 39.260349>,  <34.936142, 39.905350, 39.416542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780937, 39.571411, 39.260349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598727, 0.093788, -0.795444,
		0.700697, -0.542433, 0.463455,
		-0.388008, -0.834847, -0.390486,
		34.664536, 39.320957, 39.143204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491661, 39.389297, 39.246677>,  <34.936142, 39.905350, 39.416542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491661, 39.389297, 39.246677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171822, 39.359585, 39.008305>,  <34.979919, 39.341759, 38.865280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171822, 39.359585, 39.008305>,  <35.491661, 39.389297, 39.246677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171822, 39.359585, 39.008305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585646, 0.123178, -0.801153,
		0.132938, -0.989598, -0.054974,
		-0.799591, -0.074308, -0.595929,
		34.931942, 39.337299, 38.829525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709278, 38.905415, 38.707836>,  <35.491661, 39.389297, 39.246677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709278, 38.905415, 38.707836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381676, 39.060513, 38.538658>,  <35.185116, 39.153572, 38.437153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381676, 39.060513, 38.538658>,  <35.709278, 38.905415, 38.707836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381676, 39.060513, 38.538658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471985, 0.036108, -0.880867,
		-0.326283, -0.921058, -0.212583,
		-0.819005, 0.387748, -0.422944,
		35.135975, 39.176838, 38.411774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736698, 38.765091, 37.990284>,  <35.709278, 38.905415, 38.707836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736698, 38.765091, 37.990284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450512, 39.044407, 37.981365>,  <35.278801, 39.211998, 37.976013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450512, 39.044407, 37.981365>,  <35.736698, 38.765091, 37.990284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450512, 39.044407, 37.981365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381477, 0.363718, -0.849814,
		-0.585309, -0.616518, -0.526610,
		-0.715464, 0.698294, -0.022300,
		35.235874, 39.253895, 37.974674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695450, 38.848652, 37.258530>,  <35.736698, 38.765091, 37.990284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695450, 38.848652, 37.258530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537151, 39.169697, 37.437054>,  <35.442173, 39.362324, 37.544167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537151, 39.169697, 37.437054>,  <35.695450, 38.848652, 37.258530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537151, 39.169697, 37.437054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482342, 0.595214, -0.642702,
		-0.781494, -0.039070, -0.622688,
		-0.395743, 0.802617, 0.446311,
		35.418430, 39.410480, 37.570946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407261, 39.168400, 36.708939>,  <35.695450, 38.848652, 37.258530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407261, 39.168400, 36.708939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437618, 39.465450, 36.975094>,  <35.455833, 39.643681, 37.134789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437618, 39.465450, 36.975094>,  <35.407261, 39.168400, 36.708939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437618, 39.465450, 36.975094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421420, 0.580897, -0.696394,
		-0.903684, 0.333262, -0.268871,
		0.075895, 0.742628, 0.665390,
		35.460388, 39.688240, 37.174709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186638, 39.731636, 36.364933>,  <35.407261, 39.168400, 36.708939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186638, 39.731636, 36.364933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.401848, 39.896336, 36.659142>,  <35.530972, 39.995155, 36.835667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.401848, 39.896336, 36.659142>,  <35.186638, 39.731636, 36.364933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401848, 39.896336, 36.659142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449774, 0.597753, -0.663623,
		-0.712906, 0.687864, 0.136412,
		0.538022, 0.411747, 0.735525,
		35.563255, 40.019859, 36.879799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247143, 40.479866, 36.126976>,  <35.186638, 39.731636, 36.364933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247143, 40.479866, 36.126976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532581, 40.401886, 36.396130>,  <35.703846, 40.355099, 36.557621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532581, 40.401886, 36.396130>,  <35.247143, 40.479866, 36.126976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532581, 40.401886, 36.396130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680712, 0.419945, -0.600231,
		-0.165560, 0.886364, 0.432376,
		0.713597, -0.194950, 0.672885,
		35.746662, 40.343403, 36.597996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643517, 41.161087, 36.177299>,  <35.247143, 40.479866, 36.126976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643517, 41.161087, 36.177299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888165, 40.870655, 36.302979>,  <36.034954, 40.696396, 36.378387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888165, 40.870655, 36.302979>,  <35.643517, 41.161087, 36.177299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888165, 40.870655, 36.302979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703026, 0.316643, -0.636783,
		0.362869, 0.610360, 0.704121,
		0.611621, -0.726084, 0.314199,
		36.071651, 40.652828, 36.397240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302284, 41.516781, 36.285446>,  <35.643517, 41.161087, 36.177299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302284, 41.516781, 36.285446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342110, 41.122444, 36.231476>,  <36.366005, 40.885841, 36.199093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342110, 41.122444, 36.231476>,  <36.302284, 41.516781, 36.285446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342110, 41.122444, 36.231476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681200, 0.166370, -0.712943,
		0.725296, -0.020931, 0.688119,
		0.099560, -0.985841, -0.134926,
		36.371979, 40.826691, 36.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003475, 41.494827, 36.144043>,  <36.302284, 41.516781, 36.285446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003475, 41.494827, 36.144043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861343, 41.150082, 35.999302>,  <36.776066, 40.943233, 35.912457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861343, 41.150082, 35.999302>,  <37.003475, 41.494827, 36.144043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861343, 41.150082, 35.999302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608991, 0.080231, -0.789109,
		0.709136, -0.500754, 0.496358,
		-0.355326, -0.861863, -0.361850,
		36.754745, 40.891521, 35.890747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608231, 40.951958, 36.054661>,  <37.003475, 41.494827, 36.144043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608231, 40.951958, 36.054661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303570, 40.841179, 35.820332>,  <37.120773, 40.774712, 35.679733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303570, 40.841179, 35.820332>,  <37.608231, 40.951958, 36.054661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303570, 40.841179, 35.820332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607014, 0.011428, -0.794609,
		0.226759, -0.960817, 0.159406,
		-0.761652, -0.276946, -0.585821,
		37.075073, 40.758095, 35.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970142, 40.469475, 35.692482>,  <37.608231, 40.951958, 36.054661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970142, 40.469475, 35.692482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634731, 40.579277, 35.504219>,  <37.433483, 40.645157, 35.391262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634731, 40.579277, 35.504219>,  <37.970142, 40.469475, 35.692482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634731, 40.579277, 35.504219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502684, 0.056523, -0.862620,
		-0.210192, -0.959923, -0.185386,
		-0.838527, 0.274506, -0.470657,
		37.383175, 40.661629, 35.363022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330788, 40.444271, 36.329845>,  <37.970142, 40.469475, 35.692482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330788, 40.444271, 36.329845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602631, 40.639160, 36.549206>,  <38.765736, 40.756096, 36.680820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602631, 40.639160, 36.549206>,  <38.330788, 40.444271, 36.329845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602631, 40.639160, 36.549206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365307, -0.423502, 0.828973,
		0.636144, -0.763714, -0.109830,
		0.679611, 0.487225, 0.548398,
		38.806515, 40.785328, 36.713726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495602, 39.956768, 36.912971>,  <38.330788, 40.444271, 36.329845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495602, 39.956768, 36.912971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598255, 40.327808, 37.021564>,  <38.659847, 40.550430, 37.086720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598255, 40.327808, 37.021564>,  <38.495602, 39.956768, 36.912971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598255, 40.327808, 37.021564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221174, -0.217068, 0.950770,
		0.940862, -0.304044, 0.149454,
		0.256635, 0.927598, 0.271478,
		38.675247, 40.606087, 37.103008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038551, 39.885414, 37.480499>,  <38.495602, 39.956768, 36.912971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038551, 39.885414, 37.480499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859398, 40.240402, 37.523941>,  <38.751907, 40.453396, 37.550007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859398, 40.240402, 37.523941>,  <39.038551, 39.885414, 37.480499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859398, 40.240402, 37.523941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159643, -0.198898, 0.966930,
		0.879725, 0.415731, 0.230762,
		-0.447881, 0.887472, 0.108607,
		38.725033, 40.506645, 37.556522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286930, 40.140518, 38.114700>,  <39.038551, 39.885414, 37.480499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286930, 40.140518, 38.114700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989357, 40.402985, 38.064087>,  <38.810814, 40.560467, 38.033718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989357, 40.402985, 38.064087>,  <39.286930, 40.140518, 38.114700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989357, 40.402985, 38.064087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140959, 0.031005, 0.989530,
		0.653221, 0.753978, 0.069427,
		-0.743931, 0.656168, -0.126534,
		38.766178, 40.599834, 38.026127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409691, 40.698624, 38.555435>,  <39.286930, 40.140518, 38.114700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409691, 40.698624, 38.555435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013348, 40.690739, 38.502048>,  <38.775543, 40.686008, 38.470016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013348, 40.690739, 38.502048>,  <39.409691, 40.698624, 38.555435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013348, 40.690739, 38.502048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133992, 0.028403, 0.990575,
		-0.015738, 0.999402, -0.030785,
		-0.990857, -0.019714, -0.133465,
		38.716091, 40.684826, 38.462009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160328, 41.191635, 39.086433>,  <39.409691, 40.698624, 38.555435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160328, 41.191635, 39.086433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859692, 40.961937, 38.956596>,  <38.679310, 40.824120, 38.878693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859692, 40.961937, 38.956596>,  <39.160328, 41.191635, 39.086433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859692, 40.961937, 38.956596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378063, -0.028232, 0.925349,
		-0.540537, 0.818200, -0.195880,
		-0.751590, -0.574241, -0.324592,
		38.634216, 40.789665, 38.859219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624992, 41.321548, 39.575893>,  <39.160328, 41.191635, 39.086433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624992, 41.321548, 39.575893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475941, 40.995663, 39.398178>,  <38.386509, 40.800133, 39.291550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475941, 40.995663, 39.398178>,  <38.624992, 41.321548, 39.575893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475941, 40.995663, 39.398178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299795, -0.347409, 0.888499,
		-0.878222, 0.464273, -0.114794,
		-0.372625, -0.814713, -0.444289,
		38.364155, 40.751247, 39.264893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863689, 41.423664, 39.754475>,  <38.624992, 41.321548, 39.575893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863689, 41.423664, 39.754475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983643, 41.057369, 39.647518>,  <38.055614, 40.837593, 39.583344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983643, 41.057369, 39.647518>,  <37.863689, 41.423664, 39.754475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983643, 41.057369, 39.647518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385930, -0.372786, 0.843854,
		-0.872425, -0.149867, -0.465203,
		0.299887, -0.915735, -0.267389,
		38.073608, 40.782650, 39.567303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263763, 41.054718, 39.896660>,  <37.863689, 41.423664, 39.754475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263763, 41.054718, 39.896660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500198, 40.738712, 39.831562>,  <37.642059, 40.549107, 39.792503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500198, 40.738712, 39.831562>,  <37.263763, 41.054718, 39.896660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500198, 40.738712, 39.831562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507548, -0.521103, 0.686183,
		-0.626907, -0.322990, -0.708989,
		0.591086, -0.790018, -0.162750,
		37.677525, 40.501705, 39.782738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913818, 40.388115, 39.825291>,  <37.263763, 41.054718, 39.896660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913818, 40.388115, 39.825291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275040, 40.248043, 39.924778>,  <37.491772, 40.164001, 39.984470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275040, 40.248043, 39.924778>,  <36.913818, 40.388115, 39.825291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275040, 40.248043, 39.924778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429518, -0.734734, 0.525054,
		-0.001122, -0.580982, -0.813915,
		0.903058, -0.350180, 0.248718,
		37.545956, 40.142990, 39.999393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845604, 39.721661, 39.730846>,  <36.913818, 40.388115, 39.825291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845604, 39.721661, 39.730846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138668, 39.797222, 39.992386>,  <37.314507, 39.842560, 40.149311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138668, 39.797222, 39.992386>,  <36.845604, 39.721661, 39.730846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138668, 39.797222, 39.992386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296098, -0.776550, 0.556144,
		0.612808, -0.601069, -0.513013,
		0.732661, 0.188907, 0.653852,
		37.358467, 39.853893, 40.188541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163868, 39.118034, 39.832817>,  <36.845604, 39.721661, 39.730846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163868, 39.118034, 39.832817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288498, 39.327927, 40.149696>,  <37.363277, 39.453861, 40.339825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288498, 39.327927, 40.149696>,  <37.163868, 39.118034, 39.832817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288498, 39.327927, 40.149696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319586, -0.727267, 0.607411,
		0.894867, -0.442429, -0.058902,
		0.311574, 0.524727, 0.792201,
		37.381969, 39.485344, 40.387356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487251, 38.640869, 40.414986>,  <37.163868, 39.118034, 39.832817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487251, 38.640869, 40.414986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365276, 38.979237, 40.590000>,  <37.292091, 39.182259, 40.695007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365276, 38.979237, 40.590000>,  <37.487251, 38.640869, 40.414986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365276, 38.979237, 40.590000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328221, -0.524615, 0.785525,
		0.894028, 0.095924, 0.437620,
		-0.304933, 0.845918, 0.437536,
		37.273796, 39.233013, 40.721260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652180, 38.424961, 41.011776>,  <37.487251, 38.640869, 40.414986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652180, 38.424961, 41.011776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407444, 38.737801, 41.059071>,  <37.260601, 38.925503, 41.087448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407444, 38.737801, 41.059071>,  <37.652180, 38.424961, 41.011776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407444, 38.737801, 41.059071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497670, -0.496817, 0.710984,
		0.614799, 0.376165, 0.693197,
		-0.611839, 0.782095, 0.118236,
		37.223892, 38.972427, 41.094540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594700, 38.634995, 41.760075>,  <37.652180, 38.424961, 41.011776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594700, 38.634995, 41.760075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258774, 38.774796, 41.593914>,  <37.057220, 38.858677, 41.494217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258774, 38.774796, 41.593914>,  <37.594700, 38.634995, 41.760075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258774, 38.774796, 41.593914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542842, -0.532241, 0.649647,
		0.005960, 0.771080, 0.636710,
		-0.839813, 0.349505, -0.415403,
		37.006828, 38.879646, 41.469292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193169, 38.945786, 42.329628>,  <37.594700, 38.634995, 41.760075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193169, 38.945786, 42.329628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945709, 38.859997, 42.027298>,  <36.797234, 38.808521, 41.845901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945709, 38.859997, 42.027298>,  <37.193169, 38.945786, 42.329628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945709, 38.859997, 42.027298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477714, -0.661069, 0.578600,
		-0.623747, 0.719020, 0.306513,
		-0.618651, -0.214475, -0.755825,
		36.760113, 38.795654, 41.800549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605637, 38.868587, 42.558609>,  <37.193169, 38.945786, 42.329628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605637, 38.868587, 42.558609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512669, 38.690979, 42.212471>,  <36.456890, 38.584412, 42.004787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512669, 38.690979, 42.212471>,  <36.605637, 38.868587, 42.558609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512669, 38.690979, 42.212471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539054, -0.681755, 0.494602,
		-0.809570, 0.581423, -0.080901,
		-0.232418, -0.444024, -0.865346,
		36.442944, 38.557770, 41.952866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764858, 38.832432, 42.522381>,  <36.605637, 38.868587, 42.558609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764858, 38.832432, 42.522381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942818, 38.554459, 42.296413>,  <36.049595, 38.387676, 42.160831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942818, 38.554459, 42.296413>,  <35.764858, 38.832432, 42.522381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942818, 38.554459, 42.296413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567561, -0.706726, 0.422390,
		-0.692773, 0.132701, -0.708842,
		0.444905, -0.694931, -0.564916,
		36.076290, 38.345978, 42.126938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.192612, 38.298847, 42.387623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534027, 38.114372, 42.290646>,  <35.738876, 38.003689, 42.232460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534027, 38.114372, 42.290646>,  <35.192612, 38.298847, 42.387623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534027, 38.114372, 42.290646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307151, -0.821243, 0.480852,
		-0.420862, -0.335962, -0.842618,
		0.853542, -0.461183, -0.242439,
		35.790089, 37.976017, 42.217915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027996, 37.712101, 42.126812>,  <35.192612, 38.298847, 42.387623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027996, 37.712101, 42.126812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409721, 37.640842, 42.222767>,  <35.638756, 37.598087, 42.280342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409721, 37.640842, 42.222767>,  <35.027996, 37.712101, 42.126812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409721, 37.640842, 42.222767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281315, -0.806295, 0.520336,
		0.100727, -0.564049, -0.819574,
		0.954315, -0.178147, 0.239891,
		35.696014, 37.587399, 42.294735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086716, 36.971638, 41.916142>,  <35.027996, 37.712101, 42.126812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086716, 36.971638, 41.916142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380249, 37.060642, 42.172882>,  <35.556370, 37.114044, 42.326927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380249, 37.060642, 42.172882>,  <35.086716, 36.971638, 41.916142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380249, 37.060642, 42.172882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152461, -0.866789, 0.474797,
		0.661998, -0.446281, -0.602157,
		0.733835, 0.222509, 0.641853,
		35.600399, 37.127396, 42.365437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432213, 36.379513, 41.961781>,  <35.086716, 36.971638, 41.916142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432213, 36.379513, 41.961781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543091, 36.582706, 42.287998>,  <35.609619, 36.704624, 42.483730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543091, 36.582706, 42.287998>,  <35.432213, 36.379513, 41.961781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543091, 36.582706, 42.287998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007970, -0.849991, 0.526737,
		0.960780, -0.139509, -0.239663,
		0.277196, 0.507989, 0.815543,
		35.626251, 36.735104, 42.532661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940704, 35.933205, 42.305660>,  <35.432213, 36.379513, 41.961781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940704, 35.933205, 42.305660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815155, 36.186478, 42.588661>,  <35.739826, 36.338444, 42.758461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815155, 36.186478, 42.588661>,  <35.940704, 35.933205, 42.305660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815155, 36.186478, 42.588661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193633, -0.772186, 0.605174,
		0.929511, 0.052952, 0.364974,
		-0.313873, 0.633187, 0.707502,
		35.720993, 36.376434, 42.800911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182178, 35.711884, 42.993553>,  <35.940704, 35.933205, 42.305660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182178, 35.711884, 42.993553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874065, 35.950500, 43.083702>,  <35.689198, 36.093670, 43.137791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874065, 35.950500, 43.083702>,  <36.182178, 35.711884, 42.993553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874065, 35.950500, 43.083702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266570, -0.622273, 0.736014,
		0.579311, 0.506863, 0.638349,
		-0.770285, 0.596545, 0.225375,
		35.642979, 36.129463, 43.151314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141483, 35.673595, 43.714397>,  <36.182178, 35.711884, 42.993553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141483, 35.673595, 43.714397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778843, 35.810612, 43.615814>,  <35.561260, 35.892822, 43.556664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778843, 35.810612, 43.615814>,  <36.141483, 35.673595, 43.714397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778843, 35.810612, 43.615814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393507, -0.475319, 0.786908,
		0.152399, 0.810395, 0.565716,
		-0.906602, 0.342537, -0.246458,
		35.506863, 35.913372, 43.541878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821213, 35.975822, 44.287159>,  <36.141483, 35.673595, 43.714397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821213, 35.975822, 44.287159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503189, 35.894203, 44.058685>,  <35.312374, 35.845230, 43.921600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503189, 35.894203, 44.058685>,  <35.821213, 35.975822, 44.287159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503189, 35.894203, 44.058685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454993, -0.422082, 0.784110,
		-0.401085, 0.883295, 0.242736,
		-0.795055, -0.204052, -0.571184,
		35.264671, 35.832989, 43.887329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263294, 36.230038, 44.597794>,  <35.821213, 35.975822, 44.287159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263294, 36.230038, 44.597794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069298, 35.989040, 44.344250>,  <34.952900, 35.844440, 44.192123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069298, 35.989040, 44.344250>,  <35.263294, 36.230038, 44.597794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069298, 35.989040, 44.344250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506904, -0.396957, 0.765162,
		-0.712625, 0.692403, -0.112889,
		-0.484988, -0.602498, -0.633864,
		34.923801, 35.808292, 44.154091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432888, 36.311798, 44.765472>,  <35.263294, 36.230038, 44.597794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432888, 36.311798, 44.765472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505249, 35.970173, 44.570393>,  <34.548668, 35.765198, 44.453346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505249, 35.970173, 44.570393>,  <34.432888, 36.311798, 44.765472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505249, 35.970173, 44.570393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442843, -0.513505, 0.734985,
		-0.878159, 0.083012, -0.471110,
		0.180905, -0.854062, -0.487700,
		34.559521, 35.713955, 44.424084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866447, 35.815399, 44.924435>,  <34.432888, 36.311798, 44.765472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866447, 35.815399, 44.924435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121555, 35.547428, 44.772411>,  <34.274620, 35.386646, 44.681198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121555, 35.547428, 44.772411>,  <33.866447, 35.815399, 44.924435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121555, 35.547428, 44.772411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483483, -0.732319, 0.479534,
		-0.599577, -0.122080, -0.790951,
		0.637770, -0.669929, -0.380058,
		34.312885, 35.346451, 44.658394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431202, 35.270035, 44.583794>,  <33.866447, 35.815399, 44.924435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431202, 35.270035, 44.583794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796288, 35.138069, 44.680222>,  <34.015339, 35.058891, 44.738079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796288, 35.138069, 44.680222>,  <33.431202, 35.270035, 44.583794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796288, 35.138069, 44.680222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406068, -0.797962, 0.445383,
		0.045428, -0.504398, -0.862276,
		0.912713, -0.329910, 0.241069,
		34.070103, 35.039097, 44.752541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504944, 34.634766, 44.367134>,  <33.431202, 35.270035, 44.583794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504944, 34.634766, 44.367134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782982, 34.648628, 44.654369>,  <33.949802, 34.656944, 44.826710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782982, 34.648628, 44.654369>,  <33.504944, 34.634766, 44.367134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782982, 34.648628, 44.654369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278672, -0.907756, 0.313561,
		0.662713, -0.418064, -0.621317,
		0.695093, 0.034658, 0.718084,
		33.991508, 34.659027, 44.869793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632652, 33.943073, 44.482365>,  <33.504944, 34.634766, 44.367134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632652, 33.943073, 44.482365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826542, 34.120010, 44.784191>,  <33.942875, 34.226173, 44.965286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826542, 34.120010, 44.784191>,  <33.632652, 33.943073, 44.482365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826542, 34.120010, 44.784191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119479, -0.821120, 0.558110,
		0.866470, -0.360683, -0.345163,
		0.484721, 0.442345, 0.754570,
		33.971958, 34.252712, 45.010563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135136, 33.512676, 44.695942>,  <33.632652, 33.943073, 44.482365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135136, 33.512676, 44.695942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095715, 33.746723, 45.017918>,  <34.072063, 33.887150, 45.211102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095715, 33.746723, 45.017918>,  <34.135136, 33.512676, 44.695942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095715, 33.746723, 45.017918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019529, -0.809857, 0.586302,
		0.994940, 0.042060, 0.091238,
		-0.098550, 0.585118, 0.804938,
		34.066151, 33.922260, 45.259399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679531, 33.333164, 45.202850>,  <34.135136, 33.512676, 44.695942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679531, 33.333164, 45.202850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370956, 33.493332, 45.400658>,  <34.185810, 33.589432, 45.519344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.370956, 33.493332, 45.400658>,  <34.679531, 33.333164, 45.202850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370956, 33.493332, 45.400658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091969, -0.839181, 0.536019,
		0.629625, 0.368024, 0.684201,
		-0.771437, 0.400416, 0.494522,
		34.139526, 33.613457, 45.549015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798481, 33.149719, 45.927383>,  <34.679531, 33.333164, 45.202850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798481, 33.149719, 45.927383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.415359, 33.263462, 45.944107>,  <34.185486, 33.331707, 45.954144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.415359, 33.263462, 45.944107>,  <34.798481, 33.149719, 45.927383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415359, 33.263462, 45.944107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178842, -0.703523, 0.687801,
		0.225000, 0.651302, 0.724694,
		-0.957805, 0.284361, 0.041812,
		34.128017, 33.348770, 45.956650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668530, 33.012539, 46.596249>,  <34.798481, 33.149719, 45.927383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668530, 33.012539, 46.596249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310879, 33.086380, 46.433048>,  <34.096291, 33.130684, 46.335129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310879, 33.086380, 46.433048>,  <34.668530, 33.012539, 46.596249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310879, 33.086380, 46.433048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402894, -0.729343, 0.552934,
		-0.195495, 0.658771, 0.726500,
		-0.894124, 0.184607, -0.407998,
		34.042641, 33.141762, 46.310650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261776, 33.083309, 47.119072>,  <34.668530, 33.012539, 46.596249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261776, 33.083309, 47.119072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016609, 32.987553, 46.817867>,  <33.869511, 32.930099, 46.637146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016609, 32.987553, 46.817867>,  <34.261776, 33.083309, 47.119072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016609, 32.987553, 46.817867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421260, -0.707263, 0.567732,
		-0.668486, 0.665186, 0.332648,
		-0.612916, -0.239390, -0.753011,
		33.832733, 32.915737, 46.591965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652714, 32.958549, 47.465969>,  <34.261776, 33.083309, 47.119072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652714, 32.958549, 47.465969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635136, 32.776062, 47.110458>,  <33.624588, 32.666569, 46.897152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635136, 32.776062, 47.110458>,  <33.652714, 32.958549, 47.465969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635136, 32.776062, 47.110458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434456, -0.792386, 0.428220,
		-0.899621, 0.404954, -0.163388,
		-0.043943, -0.456220, -0.888781,
		33.621952, 32.639194, 46.843822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952000, 32.636822, 47.375698>,  <33.652714, 32.958549, 47.465969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952000, 32.636822, 47.375698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206917, 32.456902, 47.125404>,  <33.359867, 32.348949, 46.975227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206917, 32.456902, 47.125404>,  <32.952000, 32.636822, 47.375698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206917, 32.456902, 47.125404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193528, -0.879372, 0.435031,
		-0.745930, -0.156143, -0.647463,
		0.637288, -0.449805, -0.625731,
		33.398102, 32.321960, 46.937687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616737, 32.008640, 47.213470>,  <32.952000, 32.636822, 47.375698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616737, 32.008640, 47.213470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998207, 31.951538, 47.107548>,  <33.227089, 31.917276, 47.043995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998207, 31.951538, 47.107548>,  <32.616737, 32.008640, 47.213470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998207, 31.951538, 47.107548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061549, -0.954206, 0.292752,
		-0.294477, -0.262892, -0.918788,
		0.953675, -0.142759, -0.264811,
		33.284309, 31.908710, 47.028103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704796, 31.426718, 46.777866>,  <32.616737, 32.008640, 47.213470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704796, 31.426718, 46.777866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034081, 31.464380, 47.001816>,  <33.231651, 31.486977, 47.136185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034081, 31.464380, 47.001816>,  <32.704796, 31.426718, 46.777866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034081, 31.464380, 47.001816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077445, -0.958311, 0.275031,
		0.562428, -0.269768, -0.781601,
		0.823211, 0.094154, 0.559873,
		33.281044, 31.492626, 47.169777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975384, 31.572779, 47.099190>,  <32.704796, 31.426718, 46.777866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975384, 31.572779, 47.099190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.580273, 31.613281, 47.051796>,  <31.343206, 31.637583, 47.023361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.580273, 31.613281, 47.051796>,  <31.975384, 31.572779, 47.099190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580273, 31.613281, 47.051796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067498, 0.963148, 0.260366,
		0.140482, 0.249187, -0.958212,
		-0.987780, 0.101254, -0.118485,
		31.283939, 31.643658, 47.016251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413965, 32.185699, 47.012486>,  <31.975384, 31.572779, 47.099190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413965, 32.185699, 47.012486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.080364, 32.383976, 47.109421>,  <30.880203, 32.502941, 47.167583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.080364, 32.383976, 47.109421>,  <31.413965, 32.185699, 47.012486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080364, 32.383976, 47.109421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245141, 0.060602, -0.967591,
		-0.494316, -0.866380, 0.070973,
		-0.834000, 0.495695, 0.242342,
		30.830164, 32.532684, 47.182125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765209, 31.922260, 46.651920>,  <31.413965, 32.185699, 47.012486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765209, 31.922260, 46.651920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.654579, 32.289577, 46.765228>,  <30.588202, 32.509968, 46.833214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.654579, 32.289577, 46.765228>,  <30.765209, 31.922260, 46.651920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654579, 32.289577, 46.765228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225756, 0.224428, -0.947980,
		-0.934098, -0.326138, 0.145239,
		-0.276576, 0.918295, 0.283265,
		30.571606, 32.565067, 46.850208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172548, 32.114159, 46.297752>,  <30.765209, 31.922260, 46.651920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172548, 32.114159, 46.297752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345705, 32.460579, 46.397797>,  <30.449600, 32.668430, 46.457821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345705, 32.460579, 46.397797>,  <30.172548, 32.114159, 46.297752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345705, 32.460579, 46.397797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147100, 0.341600, -0.928262,
		-0.889362, 0.365049, 0.275273,
		0.432894, 0.866054, 0.250107,
		30.475573, 32.720394, 46.472828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796465, 32.629539, 45.972553>,  <30.172548, 32.114159, 46.297752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796465, 32.629539, 45.972553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137091, 32.812572, 46.074894>,  <30.341465, 32.922390, 46.136299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137091, 32.812572, 46.074894>,  <29.796465, 32.629539, 45.972553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137091, 32.812572, 46.074894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051147, 0.413197, -0.909204,
		-0.521752, 0.787331, 0.328459,
		0.851563, 0.457579, 0.255856,
		30.392559, 32.949844, 46.151649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826319, 33.207279, 45.547966>,  <29.796465, 32.629539, 45.972553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826319, 33.207279, 45.547966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199080, 33.233223, 45.690708>,  <30.422737, 33.248791, 45.776356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199080, 33.233223, 45.690708>,  <29.826319, 33.207279, 45.547966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199080, 33.233223, 45.690708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206471, 0.714046, -0.668960,
		-0.298203, 0.697087, 0.652031,
		0.931904, 0.064860, 0.356859,
		30.478651, 33.252682, 45.797768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985180, 33.915730, 45.628952>,  <29.826319, 33.207279, 45.547966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985180, 33.915730, 45.628952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.334850, 33.722519, 45.608944>,  <30.544653, 33.606594, 45.596939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.334850, 33.722519, 45.608944>,  <29.985180, 33.915730, 45.628952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334850, 33.722519, 45.608944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360425, 0.714400, -0.599772,
		0.325440, 0.506278, 0.798606,
		0.874175, -0.483027, -0.050019,
		30.597103, 33.577610, 45.593937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505009, 34.503941, 45.554077>,  <29.985180, 33.915730, 45.628952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505009, 34.503941, 45.554077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702681, 34.171341, 45.452568>,  <30.821283, 33.971783, 45.391663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702681, 34.171341, 45.452568>,  <30.505009, 34.503941, 45.554077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702681, 34.171341, 45.452568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523275, 0.517606, -0.676954,
		0.694239, 0.201744, 0.690891,
		0.494181, -0.831495, -0.253775,
		30.850935, 33.921894, 45.376434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289150, 34.677616, 45.432823>,  <30.505009, 34.503941, 45.554077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289150, 34.677616, 45.432823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244600, 34.327457, 45.244663>,  <31.217871, 34.117363, 45.131767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244600, 34.327457, 45.244663>,  <31.289150, 34.677616, 45.432823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244600, 34.327457, 45.244663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644822, 0.296514, -0.704474,
		0.756175, -0.381786, 0.531450,
		-0.111376, -0.875397, -0.470400,
		31.211187, 34.064838, 45.103542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871307, 34.652283, 45.187199>,  <31.289150, 34.677616, 45.432823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871307, 34.652283, 45.187199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689350, 34.386101, 44.950474>,  <31.580175, 34.226391, 44.808441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689350, 34.386101, 44.950474>,  <31.871307, 34.652283, 45.187199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689350, 34.386101, 44.950474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644223, 0.212921, -0.734603,
		0.614856, -0.715423, 0.331847,
		-0.454895, -0.665458, -0.591808,
		31.552881, 34.186462, 44.772930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422913, 34.225365, 44.925304>,  <31.871307, 34.652283, 45.187199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422913, 34.225365, 44.925304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088497, 34.208130, 44.706516>,  <31.887846, 34.197788, 44.575245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088497, 34.208130, 44.706516>,  <32.422913, 34.225365, 44.925304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088497, 34.208130, 44.706516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497588, 0.360489, -0.788957,
		0.231167, -0.931768, -0.279947,
		-0.836043, -0.043083, -0.546970,
		31.837685, 34.195206, 44.542427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617336, 33.988441, 44.323902>,  <32.422913, 34.225365, 44.925304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617336, 33.988441, 44.323902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276207, 34.183109, 44.248165>,  <32.071529, 34.299908, 44.202724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276207, 34.183109, 44.248165>,  <32.617336, 33.988441, 44.323902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276207, 34.183109, 44.248165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451197, 0.504176, -0.736361,
		-0.262901, -0.713416, -0.649555,
		-0.852821, 0.486668, -0.189343,
		32.020359, 34.329109, 44.191360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563980, 34.026421, 43.604874>,  <32.617336, 33.988441, 44.323902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563980, 34.026421, 43.604874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313808, 34.320305, 43.709969>,  <32.163704, 34.496635, 43.773026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313808, 34.320305, 43.709969>,  <32.563980, 34.026421, 43.604874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313808, 34.320305, 43.709969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328077, 0.553126, -0.765778,
		-0.707954, -0.392745, -0.586986,
		-0.625433, 0.734712, 0.262737,
		32.126179, 34.540718, 43.788788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198914, 34.176430, 42.983093>,  <32.563980, 34.026421, 43.604874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198914, 34.176430, 42.983093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180786, 34.489155, 43.231838>,  <32.169910, 34.676792, 43.381084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180786, 34.489155, 43.231838>,  <32.198914, 34.176430, 42.983093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180786, 34.489155, 43.231838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171326, 0.619361, -0.766185,
		-0.984171, 0.071817, -0.162015,
		-0.045321, 0.781815, 0.621861,
		32.167191, 34.723698, 43.418396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054161, 34.648144, 42.574493>,  <32.198914, 34.176430, 42.983093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054161, 34.648144, 42.574493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176258, 34.856430, 42.893410>,  <32.249516, 34.981403, 43.084759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176258, 34.856430, 42.893410>,  <32.054161, 34.648144, 42.574493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176258, 34.856430, 42.893410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282140, 0.750208, -0.597983,
		-0.909518, 0.407480, 0.082082,
		0.305245, 0.520718, 0.797294,
		32.267830, 35.012646, 43.132599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928669, 35.331367, 42.397804>,  <32.054161, 34.648144, 42.574493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928669, 35.331367, 42.397804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200165, 35.379078, 42.687656>,  <32.363064, 35.407703, 42.861568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200165, 35.379078, 42.687656>,  <31.928669, 35.331367, 42.397804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200165, 35.379078, 42.687656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206416, 0.915958, -0.344114,
		-0.704772, 0.383139, 0.597077,
		0.678741, 0.119275, 0.724627,
		32.403786, 35.414860, 42.905045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937080, 36.071785, 42.519012>,  <31.928669, 35.331367, 42.397804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937080, 36.071785, 42.519012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.278893, 35.928509, 42.669468>,  <32.483978, 35.842545, 42.759739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.278893, 35.928509, 42.669468>,  <31.937080, 36.071785, 42.519012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278893, 35.928509, 42.669468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504594, 0.744192, -0.437679,
		-0.123144, 0.563806, 0.816675,
		0.854529, -0.358192, 0.376136,
		32.535252, 35.821053, 42.782310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252979, 36.616398, 42.920010>,  <31.937080, 36.071785, 42.519012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252979, 36.616398, 42.920010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.548302, 36.368664, 42.813175>,  <32.725494, 36.220024, 42.749073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.548302, 36.368664, 42.813175>,  <32.252979, 36.616398, 42.920010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548302, 36.368664, 42.813175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449539, 0.747074, -0.489689,
		0.502814, 0.241472, 0.829981,
		0.738304, -0.619332, -0.267088,
		32.769794, 36.182865, 42.733047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839622, 36.950146, 43.148003>,  <32.252979, 36.616398, 42.920010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839622, 36.950146, 43.148003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970036, 36.678764, 42.884670>,  <33.048283, 36.515934, 42.726669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970036, 36.678764, 42.884670>,  <32.839622, 36.950146, 43.148003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970036, 36.678764, 42.884670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447640, 0.724158, -0.524608,
		0.832660, -0.123657, 0.539802,
		0.326030, -0.678457, -0.658331,
		33.067844, 36.475227, 42.687172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532089, 37.119862, 43.008224>,  <32.839622, 36.950146, 43.148003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532089, 37.119862, 43.008224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396061, 36.896286, 42.705715>,  <33.314445, 36.762142, 42.524212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396061, 36.896286, 42.705715>,  <33.532089, 37.119862, 43.008224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396061, 36.896286, 42.705715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419501, 0.629586, -0.653943,
		0.841649, -0.539641, 0.020372,
		-0.340068, -0.558936, -0.756270,
		33.294041, 36.728603, 42.478836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919056, 37.312748, 42.459042>,  <33.532089, 37.119862, 43.008224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919056, 37.312748, 42.459042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652061, 37.117702, 42.233936>,  <33.491867, 37.000675, 42.098873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652061, 37.117702, 42.233936>,  <33.919056, 37.312748, 42.459042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652061, 37.117702, 42.233936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328162, 0.485781, -0.810140,
		0.668414, -0.725430, -0.164234,
		-0.667482, -0.487613, -0.562762,
		33.451817, 36.971420, 42.065109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.468948, 40.771278, 42.168579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177536, 40.909935, 41.932247>,  <40.002689, 40.993130, 41.790447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177536, 40.909935, 41.932247>,  <40.468948, 40.771278, 42.168579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177536, 40.909935, 41.932247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431780, -0.437212, -0.788931,
		-0.531796, -0.829869, 0.168849,
		-0.728532, 0.346645, -0.590828,
		39.958977, 41.013927, 41.754997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300797, 40.270336, 41.845909>,  <40.468948, 40.771278, 42.168579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300797, 40.270336, 41.845909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154926, 40.563637, 41.616352>,  <40.067402, 40.739616, 41.478619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154926, 40.563637, 41.616352>,  <40.300797, 40.270336, 41.845909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154926, 40.563637, 41.616352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364829, -0.454543, -0.812583,
		-0.856685, -0.505706, -0.101747,
		-0.364679, 0.733248, -0.573896,
		40.045521, 40.783611, 41.444183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913204, 39.879204, 41.393982>,  <40.300797, 40.270336, 41.845909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913204, 39.879204, 41.393982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024300, 40.231529, 41.240604>,  <40.090958, 40.442924, 41.148579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024300, 40.231529, 41.240604>,  <39.913204, 39.879204, 41.393982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024300, 40.231529, 41.240604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526661, -0.473433, -0.706038,
		-0.803423, -0.005851, -0.595380,
		0.277742, 0.880810, -0.383448,
		40.107624, 40.495773, 41.125568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030544, 39.708778, 40.695621>,  <39.913204, 39.879204, 41.393982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030544, 39.708778, 40.695621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175831, 40.080963, 40.676361>,  <40.263004, 40.304272, 40.664806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175831, 40.080963, 40.676361>,  <40.030544, 39.708778, 40.695621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175831, 40.080963, 40.676361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598088, -0.272478, -0.753689,
		-0.714396, 0.244956, -0.655465,
		0.363221, 0.930458, -0.048152,
		40.284798, 40.360100, 40.661915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994984, 39.974598, 39.948853>,  <40.030544, 39.708778, 40.695621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994984, 39.974598, 39.948853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288837, 40.155655, 40.151012>,  <40.465149, 40.264290, 40.272308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288837, 40.155655, 40.151012>,  <39.994984, 39.974598, 39.948853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288837, 40.155655, 40.151012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641504, -0.220888, -0.734630,
		-0.220888, 0.863900, -0.452643,
		0.734630, 0.452643, 0.505404,
		40.509228, 40.291447, 40.302635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341026, 40.432697, 39.470711>,  <39.994984, 39.974598, 39.948853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341026, 40.432697, 39.470711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.608067, 40.357090, 39.758762>,  <40.768291, 40.311726, 39.931591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.608067, 40.357090, 39.758762>,  <40.341026, 40.432697, 39.470711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608067, 40.357090, 39.758762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726806, -0.044279, -0.685414,
		0.161446, 0.980974, 0.107822,
		0.667599, -0.189023, 0.720126,
		40.808346, 40.300385, 39.974800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916203, 40.710415, 39.222687>,  <40.341026, 40.432697, 39.470711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916203, 40.710415, 39.222687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.065250, 40.514019, 39.537666>,  <41.154678, 40.396179, 39.726654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.065250, 40.514019, 39.537666>,  <40.916203, 40.710415, 39.222687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065250, 40.514019, 39.537666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810596, -0.240884, -0.533768,
		0.451760, 0.837199, 0.308238,
		0.372621, -0.490992, 0.787452,
		41.177036, 40.366722, 39.773903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675137, 40.966740, 39.272076>,  <40.916203, 40.710415, 39.222687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675137, 40.966740, 39.272076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638893, 40.613007, 39.455265>,  <41.617146, 40.400764, 39.565178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638893, 40.613007, 39.455265>,  <41.675137, 40.966740, 39.272076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638893, 40.613007, 39.455265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743810, -0.365884, -0.559352,
		0.662220, 0.289961, 0.690932,
		-0.090611, -0.884337, 0.457972,
		41.611710, 40.347706, 39.592655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340816, 40.752754, 39.394485>,  <41.675137, 40.966740, 39.272076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340816, 40.752754, 39.394485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147114, 40.404007, 39.423717>,  <42.030891, 40.194759, 39.441257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147114, 40.404007, 39.423717>,  <42.340816, 40.752754, 39.394485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147114, 40.404007, 39.423717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767912, -0.463570, -0.442056,
		0.419293, -0.157950, 0.894005,
		-0.484257, -0.871868, 0.073080,
		42.001835, 40.142445, 39.445641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774113, 40.376858, 39.724239>,  <42.340816, 40.752754, 39.394485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774113, 40.376858, 39.724239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544994, 40.096794, 39.553745>,  <42.407524, 39.928757, 39.451447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544994, 40.096794, 39.553745>,  <42.774113, 40.376858, 39.724239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544994, 40.096794, 39.553745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812784, -0.417742, -0.406045,
		0.106241, -0.579019, 0.808362,
		-0.572795, -0.700163, -0.426237,
		42.373158, 39.886745, 39.425873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197174, 39.824795, 39.742378>,  <42.774113, 40.376858, 39.724239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197174, 39.824795, 39.742378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929779, 39.722675, 39.462967>,  <42.769341, 39.661404, 39.295319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929779, 39.722675, 39.462967>,  <43.197174, 39.824795, 39.742378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929779, 39.722675, 39.462967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690632, -0.561586, -0.455685,
		-0.275946, -0.787047, 0.551735,
		-0.668492, -0.255301, -0.698527,
		42.729233, 39.646084, 39.253410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390965, 39.039787, 39.593769>,  <43.197174, 39.824795, 39.742378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390965, 39.039787, 39.593769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.180153, 39.175713, 39.282188>,  <43.053665, 39.257267, 39.095238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.180153, 39.175713, 39.282188>,  <43.390965, 39.039787, 39.593769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180153, 39.175713, 39.282188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677711, -0.385002, -0.626484,
		-0.512789, -0.858078, -0.027392,
		-0.527026, 0.339817, -0.778953,
		43.022045, 39.277657, 39.048504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359795, 38.560764, 39.071480>,  <43.390965, 39.039787, 39.593769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359795, 38.560764, 39.071480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316841, 38.901966, 38.867184>,  <43.291069, 39.106686, 38.744606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316841, 38.901966, 38.867184>,  <43.359795, 38.560764, 39.071480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316841, 38.901966, 38.867184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705593, -0.296529, -0.643591,
		-0.700434, -0.429484, -0.570031,
		-0.107382, 0.853003, -0.510740,
		43.284626, 39.157867, 38.713963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111027, 38.412212, 38.393604>,  <43.359795, 38.560764, 39.071480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111027, 38.412212, 38.393604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304630, 38.760929, 38.363377>,  <43.420792, 38.970161, 38.345238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304630, 38.760929, 38.363377>,  <43.111027, 38.412212, 38.393604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304630, 38.760929, 38.363377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394955, -0.294704, -0.870150,
		-0.780864, 0.391310, -0.486958,
		0.484007, 0.871794, -0.075574,
		43.449833, 39.022469, 38.340706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099255, 38.538349, 37.686501>,  <43.111027, 38.412212, 38.393604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099255, 38.538349, 37.686501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359524, 38.821415, 37.796650>,  <43.515686, 38.991253, 37.862740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359524, 38.821415, 37.796650>,  <43.099255, 38.538349, 37.686501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359524, 38.821415, 37.796650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539261, -0.175307, -0.823690,
		-0.534620, 0.684456, -0.495684,
		0.650676, 0.707664, 0.275378,
		43.554726, 39.033714, 37.879265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123165, 39.089420, 37.158745>,  <43.099255, 38.538349, 37.686501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123165, 39.089420, 37.158745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463459, 39.140663, 37.362644>,  <43.667637, 39.171410, 37.484982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463459, 39.140663, 37.362644>,  <43.123165, 39.089420, 37.158745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463459, 39.140663, 37.362644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522372, -0.098834, -0.846971,
		-0.058125, 0.986823, -0.151002,
		0.850734, 0.128110, 0.509744,
		43.718678, 39.179096, 37.515568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445507, 39.512978, 36.764816>,  <43.123165, 39.089420, 37.158745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445507, 39.512978, 36.764816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715485, 39.333794, 36.999348>,  <43.877472, 39.226284, 37.140068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715485, 39.333794, 36.999348>,  <43.445507, 39.512978, 36.764816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715485, 39.333794, 36.999348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500823, -0.305430, -0.809869,
		0.541874, 0.840262, 0.018203,
		0.674943, -0.447964, 0.586328,
		43.917969, 39.199406, 37.175247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027519, 39.577362, 36.452419>,  <43.445507, 39.512978, 36.764816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027519, 39.577362, 36.452419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.152512, 39.275700, 36.683453>,  <44.227509, 39.094700, 36.822071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.152512, 39.275700, 36.683453>,  <44.027519, 39.577362, 36.452419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152512, 39.275700, 36.683453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475696, -0.402063, -0.782342,
		0.822234, 0.519220, 0.233113,
		0.312482, -0.754159, 0.577581,
		44.246258, 39.049454, 36.856728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765583, 39.480114, 36.258881>,  <44.027519, 39.577362, 36.452419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765583, 39.480114, 36.258881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.622009, 39.145290, 36.424042>,  <44.535866, 38.944397, 36.523140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.622009, 39.145290, 36.424042>,  <44.765583, 39.480114, 36.258881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622009, 39.145290, 36.424042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518493, -0.546668, -0.657510,
		0.776099, -0.021916, 0.630230,
		-0.358936, -0.837063, 0.412905,
		44.514328, 38.894173, 36.547913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364346, 39.044273, 36.313423>,  <44.765583, 39.480114, 36.258881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364346, 39.044273, 36.313423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057743, 38.789803, 36.348614>,  <44.873779, 38.637119, 36.369728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057743, 38.789803, 36.348614>,  <45.364346, 39.044273, 36.313423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057743, 38.789803, 36.348614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371919, -0.551386, -0.746759,
		0.523583, -0.539677, 0.659250,
		-0.766510, -0.636178, 0.087980,
		44.827789, 38.598949, 36.375008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590305, 38.289639, 36.465176>,  <45.364346, 39.044273, 36.313423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590305, 38.289639, 36.465176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212147, 38.258316, 36.338631>,  <44.985252, 38.239521, 36.262703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212147, 38.258316, 36.338631>,  <45.590305, 38.289639, 36.465176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212147, 38.258316, 36.338631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309809, -0.517295, -0.797762,
		-0.101180, -0.852217, 0.513312,
		-0.945400, -0.078311, -0.316365,
		44.928528, 38.234821, 36.243721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460907, 37.579105, 36.267918>,  <45.590305, 38.289639, 36.465176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460907, 37.579105, 36.267918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.249378, 37.850674, 36.064190>,  <45.122459, 38.013615, 35.941952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.249378, 37.850674, 36.064190>,  <45.460907, 37.579105, 36.267918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249378, 37.850674, 36.064190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250887, -0.448237, -0.857985,
		-0.810802, -0.581507, 0.066706,
		-0.528825, 0.678921, -0.509324,
		45.090729, 38.054348, 35.911392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378300, 36.859291, 36.329144>,  <45.460907, 37.579105, 36.267918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378300, 36.859291, 36.329144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.626160, 36.556217, 36.411072>,  <45.774876, 36.374374, 36.460228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.626160, 36.556217, 36.411072>,  <45.378300, 36.859291, 36.329144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626160, 36.556217, 36.411072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557357, -0.241038, 0.794515,
		-0.552622, -0.606477, -0.571659,
		0.619647, -0.757685, 0.204821,
		45.812054, 36.328911, 36.472519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041168, 36.279308, 36.393280>,  <45.378300, 36.859291, 36.329144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041168, 36.279308, 36.393280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363262, 36.220905, 36.623161>,  <45.556519, 36.185863, 36.761089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363262, 36.220905, 36.623161>,  <45.041168, 36.279308, 36.393280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363262, 36.220905, 36.623161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588154, -0.319811, 0.742830,
		0.075335, -0.936163, -0.343399,
		0.805233, -0.146010, 0.574701,
		45.604832, 36.177101, 36.795570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824055, 35.652473, 36.843323>,  <45.041168, 36.279308, 36.393280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824055, 35.652473, 36.843323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168270, 35.752983, 37.020557>,  <45.374802, 35.813290, 37.126900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168270, 35.752983, 37.020557>,  <44.824055, 35.652473, 36.843323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168270, 35.752983, 37.020557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425565, -0.123388, 0.896476,
		0.279933, -0.960019, 0.000753,
		0.860542, 0.251274, 0.443091,
		45.426434, 35.828365, 37.153484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862400, 35.218208, 37.503490>,  <44.824055, 35.652473, 36.843323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862400, 35.218208, 37.503490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104237, 35.535633, 37.530979>,  <45.249340, 35.726089, 37.547474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104237, 35.535633, 37.530979>,  <44.862400, 35.218208, 37.503490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104237, 35.535633, 37.530979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114457, 0.001169, 0.993428,
		0.788267, -0.608487, 0.091535,
		0.604595, 0.793563, 0.068724,
		45.285614, 35.773701, 37.551598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502064, 35.200005, 37.932316>,  <44.862400, 35.218208, 37.503490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502064, 35.200005, 37.932316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413166, 35.589901, 37.923504>,  <45.359829, 35.823841, 37.918217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413166, 35.589901, 37.923504>,  <45.502064, 35.200005, 37.932316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413166, 35.589901, 37.923504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065110, 0.007703, 0.997848,
		0.972815, 0.223197, 0.061754,
		-0.222241, 0.974743, -0.022026,
		45.346493, 35.882324, 37.916897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585537, 35.260303, 38.542656>,  <45.502064, 35.200005, 37.932316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585537, 35.260303, 38.542656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391655, 35.598293, 38.452255>,  <45.275326, 35.801086, 38.398014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391655, 35.598293, 38.452255>,  <45.585537, 35.260303, 38.542656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391655, 35.598293, 38.452255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214699, 0.135541, 0.967230,
		0.847919, 0.517341, 0.115718,
		-0.484703, 0.844977, -0.226001,
		45.246243, 35.851788, 38.384457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881676, 35.806175, 38.998276>,  <45.585537, 35.260303, 38.542656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881676, 35.806175, 38.998276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535877, 35.960445, 38.869343>,  <45.328400, 36.053009, 38.791981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535877, 35.960445, 38.869343>,  <45.881676, 35.806175, 38.998276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535877, 35.960445, 38.869343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207332, 0.310572, 0.927663,
		0.457884, 0.868793, -0.188526,
		-0.864498, 0.385674, -0.322334,
		45.276527, 36.076149, 38.772644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841881, 36.454472, 39.365154>,  <45.881676, 35.806175, 38.998276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841881, 36.454472, 39.365154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463913, 36.377384, 39.259342>,  <45.237133, 36.331131, 39.195854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.463913, 36.377384, 39.259342>,  <45.841881, 36.454472, 39.365154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463913, 36.377384, 39.259342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325770, 0.475987, 0.816891,
		-0.031517, 0.858077, -0.512554,
		-0.944924, -0.192721, -0.264534,
		45.180435, 36.319569, 39.179981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463245, 37.071541, 39.430809>,  <45.841881, 36.454472, 39.365154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463245, 37.071541, 39.430809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188595, 36.783031, 39.467266>,  <45.023804, 36.609924, 39.489140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188595, 36.783031, 39.467266>,  <45.463245, 37.071541, 39.430809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188595, 36.783031, 39.467266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416406, 0.492943, 0.763946,
		-0.595944, 0.486592, -0.638810,
		-0.686627, -0.721273, 0.091147,
		44.982605, 36.566650, 39.494610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851025, 37.535007, 39.536293>,  <45.463245, 37.071541, 39.430809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851025, 37.535007, 39.536293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730221, 37.168701, 39.642250>,  <44.657738, 36.948917, 39.705826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730221, 37.168701, 39.642250>,  <44.851025, 37.535007, 39.536293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730221, 37.168701, 39.642250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522009, 0.391370, 0.757850,
		-0.797682, 0.090602, -0.596234,
		-0.302011, -0.915762, 0.264894,
		44.639618, 36.893974, 39.721718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191376, 37.421108, 39.426689>,  <44.851025, 37.535007, 39.536293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191376, 37.421108, 39.426689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262413, 37.166142, 39.726597>,  <44.305035, 37.013161, 39.906544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262413, 37.166142, 39.726597>,  <44.191376, 37.421108, 39.426689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262413, 37.166142, 39.726597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671596, 0.478385, 0.565779,
		-0.719318, -0.604025, -0.343127,
		0.177598, -0.637418, 0.749772,
		44.315693, 36.974915, 39.951527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516041, 37.338642, 39.801334>,  <44.191376, 37.421108, 39.426689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516041, 37.338642, 39.801334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767757, 37.176693, 40.066685>,  <43.918789, 37.079521, 40.225895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767757, 37.176693, 40.066685>,  <43.516041, 37.338642, 39.801334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767757, 37.176693, 40.066685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580890, 0.322016, 0.747578,
		-0.516293, -0.855793, -0.032546,
		0.629292, -0.404875, 0.663376,
		43.956547, 37.055229, 40.265697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022778, 36.987114, 40.275326>,  <43.516041, 37.338642, 39.801334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022778, 36.987114, 40.275326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369179, 37.050262, 40.465111>,  <43.577019, 37.088150, 40.578979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369179, 37.050262, 40.465111>,  <43.022778, 36.987114, 40.275326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369179, 37.050262, 40.465111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496943, 0.377085, 0.781572,
		-0.055527, -0.912625, 0.405008,
		0.866005, 0.157868, 0.474461,
		43.628979, 37.097622, 40.607449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795322, 36.905865, 40.858376>,  <43.022778, 36.987114, 40.275326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795322, 36.905865, 40.858376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152344, 37.073746, 40.924343>,  <43.366558, 37.174473, 40.963924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152344, 37.073746, 40.924343>,  <42.795322, 36.905865, 40.858376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152344, 37.073746, 40.924343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383707, 0.514756, 0.766678,
		0.236883, -0.747581, 0.620490,
		0.892555, 0.419700, 0.164915,
		43.420109, 37.199657, 40.973816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881813, 36.798992, 41.502983>,  <42.795322, 36.905865, 40.858376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881813, 36.798992, 41.502983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092289, 37.125774, 41.408569>,  <43.218575, 37.321842, 41.351921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092289, 37.125774, 41.408569>,  <42.881813, 36.798992, 41.502983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092289, 37.125774, 41.408569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387494, 0.477426, 0.788615,
		0.756952, -0.323497, 0.567780,
		0.526187, 0.816954, -0.236035,
		43.250145, 37.370861, 41.337757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281189, 37.116318, 42.143745>,  <42.881813, 36.798992, 41.502983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281189, 37.116318, 42.143745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214638, 37.400543, 41.870274>,  <43.174706, 37.571079, 41.706188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214638, 37.400543, 41.870274>,  <43.281189, 37.116318, 42.143745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214638, 37.400543, 41.870274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328389, 0.613837, 0.717889,
		0.929773, 0.343958, 0.131209,
		-0.166383, 0.710561, -0.683681,
		43.164722, 37.613712, 41.665169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523331, 37.677872, 42.477154>,  <43.281189, 37.116318, 42.143745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523331, 37.677872, 42.477154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292580, 37.820484, 42.183189>,  <43.154129, 37.906052, 42.006809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292580, 37.820484, 42.183189>,  <43.523331, 37.677872, 42.477154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292580, 37.820484, 42.183189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411131, 0.650705, 0.638400,
		0.705820, 0.670425, -0.228798,
		-0.576879, 0.356529, -0.734913,
		43.119514, 37.927444, 41.962715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627708, 38.376072, 42.632023>,  <43.523331, 37.677872, 42.477154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627708, 38.376072, 42.632023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313168, 38.342319, 42.387230>,  <43.124443, 38.322067, 42.240353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313168, 38.342319, 42.387230>,  <43.627708, 38.376072, 42.632023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313168, 38.342319, 42.387230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552243, 0.540041, 0.635125,
		0.276902, 0.837397, -0.471265,
		-0.786354, -0.084385, -0.611985,
		43.077263, 38.317005, 42.203636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424004, 39.098156, 42.575180>,  <43.627708, 38.376072, 42.632023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424004, 39.098156, 42.575180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101788, 38.887985, 42.465611>,  <42.908459, 38.761883, 42.399868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101788, 38.887985, 42.465611>,  <43.424004, 39.098156, 42.575180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101788, 38.887985, 42.465611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575508, 0.583697, 0.572790,
		-0.141070, 0.619050, -0.772578,
		-0.805537, -0.525428, -0.273926,
		42.860126, 38.730358, 42.383434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856709, 39.582466, 42.474178>,  <43.424004, 39.098156, 42.575180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856709, 39.582466, 42.474178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686810, 39.225418, 42.534599>,  <42.584869, 39.011189, 42.570850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686810, 39.225418, 42.534599>,  <42.856709, 39.582466, 42.474178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686810, 39.225418, 42.534599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748574, 0.440127, 0.495908,
		-0.509140, 0.097563, -0.855136,
		-0.424751, -0.892619, 0.151054,
		42.559383, 38.957634, 42.579914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.722950, 40.325722, 41.370846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628685, 40.059456, 41.087624>,  <37.572124, 39.899696, 40.917690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628685, 40.059456, 41.087624>,  <37.722950, 40.325722, 41.370846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628685, 40.059456, 41.087624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620184, 0.457927, -0.636926,
		0.748222, -0.589226, 0.304922,
		-0.235662, -0.665670, -0.708059,
		37.557987, 39.859756, 40.875206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340008, 40.110332, 41.014477>,  <37.722950, 40.325722, 41.370846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340008, 40.110332, 41.014477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036777, 40.021587, 40.769169>,  <37.854839, 39.968342, 40.621986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036777, 40.021587, 40.769169>,  <38.340008, 40.110332, 41.014477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036777, 40.021587, 40.769169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495602, 0.415254, -0.762852,
		0.423910, -0.882237, -0.204839,
		-0.758076, -0.221861, -0.613269,
		37.809353, 39.955029, 40.585190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657234, 39.795853, 40.447514>,  <38.340008, 40.110332, 41.014477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657234, 39.795853, 40.447514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304230, 39.943886, 40.331436>,  <38.092426, 40.032707, 40.261791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304230, 39.943886, 40.331436>,  <38.657234, 39.795853, 40.447514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304230, 39.943886, 40.331436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442151, 0.442687, -0.780083,
		-0.160233, -0.816741, -0.554310,
		-0.882512, 0.370084, -0.290190,
		38.039474, 40.054913, 40.244377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797958, 39.865150, 39.791592>,  <38.657234, 39.795853, 40.447514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797958, 39.865150, 39.791592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437977, 40.038269, 39.812660>,  <38.221989, 40.142139, 39.825302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437977, 40.038269, 39.812660>,  <38.797958, 39.865150, 39.791592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437977, 40.038269, 39.812660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177744, 0.474517, -0.862114,
		-0.398109, -0.766501, -0.503970,
		-0.899953, 0.432793, 0.052668,
		38.167992, 40.168106, 39.828461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413155, 39.563599, 39.265602>,  <38.797958, 39.865150, 39.791592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413155, 39.563599, 39.265602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365944, 39.952164, 39.348000>,  <38.337616, 40.185303, 39.397438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365944, 39.952164, 39.348000>,  <38.413155, 39.563599, 39.265602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365944, 39.952164, 39.348000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096433, 0.217674, -0.971246,
		-0.988317, -0.094771, -0.119367,
		-0.118029, 0.971410, 0.205992,
		38.330536, 40.243587, 39.409798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877335, 39.685921, 38.798927>,  <38.413155, 39.563599, 39.265602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877335, 39.685921, 38.798927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053940, 40.020035, 38.929993>,  <38.159904, 40.220501, 39.008633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053940, 40.020035, 38.929993>,  <37.877335, 39.685921, 38.798927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053940, 40.020035, 38.929993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042795, 0.384376, -0.922184,
		-0.896232, 0.393138, 0.205455,
		0.441517, 0.835283, 0.327665,
		38.186394, 40.270618, 39.028294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522461, 40.204891, 38.438663>,  <37.877335, 39.685921, 38.798927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522461, 40.204891, 38.438663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864407, 40.365929, 38.569588>,  <38.069572, 40.462551, 38.648144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864407, 40.365929, 38.569588>,  <37.522461, 40.204891, 38.438663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864407, 40.365929, 38.569588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169640, 0.379294, -0.909592,
		-0.490339, 0.833101, 0.255949,
		0.854863, 0.402590, 0.327310,
		38.120865, 40.486706, 38.667782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513237, 40.725784, 38.006695>,  <37.522461, 40.204891, 38.438663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513237, 40.725784, 38.006695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880997, 40.754967, 38.161297>,  <38.101654, 40.772476, 38.254059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880997, 40.754967, 38.161297>,  <37.513237, 40.725784, 38.006695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880997, 40.754967, 38.161297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358000, 0.251814, -0.899125,
		-0.162923, 0.965022, 0.205399,
		0.919398, 0.072955, 0.386504,
		38.156815, 40.776852, 38.277248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777023, 41.334213, 37.747337>,  <37.513237, 40.725784, 38.006695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777023, 41.334213, 37.747337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105225, 41.135483, 37.860432>,  <38.302147, 41.016243, 37.928288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105225, 41.135483, 37.860432>,  <37.777023, 41.334213, 37.747337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105225, 41.135483, 37.860432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483771, 0.340014, -0.806446,
		0.304531, 0.798470, 0.519333,
		0.820504, -0.496827, 0.282732,
		38.351376, 40.986435, 37.945251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367203, 41.750999, 37.716782>,  <37.777023, 41.334213, 37.747337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367203, 41.750999, 37.716782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503109, 41.378380, 37.664970>,  <38.584652, 41.154808, 37.633884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503109, 41.378380, 37.664970>,  <38.367203, 41.750999, 37.716782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503109, 41.378380, 37.664970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518965, 0.300549, -0.800216,
		0.784367, 0.204671, 0.585558,
		0.339769, -0.931547, -0.129524,
		38.605042, 41.098915, 37.626114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053394, 41.764591, 37.570225>,  <38.367203, 41.750999, 37.716782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053394, 41.764591, 37.570225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934883, 41.412380, 37.422230>,  <38.863777, 41.201054, 37.333435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934883, 41.412380, 37.422230>,  <39.053394, 41.764591, 37.570225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934883, 41.412380, 37.422230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717738, 0.050314, -0.694493,
		0.630138, -0.471311, 0.617083,
		-0.296274, -0.880531, -0.369983,
		38.846001, 41.148220, 37.311234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652607, 41.391407, 37.472504>,  <39.053394, 41.764591, 37.570225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652607, 41.391407, 37.472504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368378, 41.238316, 37.236332>,  <39.197842, 41.146461, 37.094631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368378, 41.238316, 37.236332>,  <39.652607, 41.391407, 37.472504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368378, 41.238316, 37.236332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635142, 0.012200, -0.772299,
		0.302788, -0.923778, 0.234421,
		-0.710573, -0.382734, -0.590424,
		39.155205, 41.123497, 37.059204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948586, 40.788010, 37.032368>,  <39.652607, 41.391407, 37.472504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948586, 40.788010, 37.032368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618668, 40.940395, 36.865234>,  <39.420719, 41.031826, 36.764954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618668, 40.940395, 36.865234>,  <39.948586, 40.788010, 37.032368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618668, 40.940395, 36.865234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438506, -0.035557, -0.898025,
		-0.356975, -0.923904, -0.137730,
		-0.824792, 0.380968, -0.417831,
		39.371231, 41.054684, 36.739883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826199, 40.442345, 36.319645>,  <39.948586, 40.788010, 37.032368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826199, 40.442345, 36.319645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497578, 40.296665, 36.144188>,  <39.300404, 40.209255, 36.038914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497578, 40.296665, 36.144188>,  <39.826199, 40.442345, 36.319645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497578, 40.296665, 36.144188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562241, -0.645112, -0.517412,
		-0.094532, -0.671704, 0.734763,
		-0.821552, -0.364203, -0.438643,
		39.251110, 40.187405, 36.012596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429951, 40.244034, 35.890182>,  <39.826199, 40.442345, 36.319645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429951, 40.244034, 35.890182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546162, 39.865444, 35.833935>,  <40.615891, 39.638290, 35.800186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546162, 39.865444, 35.833935>,  <40.429951, 40.244034, 35.890182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546162, 39.865444, 35.833935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935079, -0.312015, 0.168150,
		-0.203024, 0.082634, -0.975681,
		0.290532, -0.946476, -0.140615,
		40.633320, 39.581501, 35.791752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879402, 39.892502, 35.602699>,  <40.429951, 40.244034, 35.890182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879402, 39.892502, 35.602699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094643, 39.581081, 35.731880>,  <40.223789, 39.394230, 35.809391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094643, 39.581081, 35.731880>,  <39.879402, 39.892502, 35.602699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094643, 39.581081, 35.731880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834371, -0.437723, 0.334997,
		-0.119447, -0.449729, -0.885142,
		0.538105, -0.778551, 0.322956,
		40.256073, 39.347515, 35.828766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561817, 39.171734, 35.375942>,  <39.879402, 39.892502, 35.602699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561817, 39.171734, 35.375942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777077, 39.092854, 35.703724>,  <39.906231, 39.045525, 35.900394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777077, 39.092854, 35.703724>,  <39.561817, 39.171734, 35.375942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777077, 39.092854, 35.703724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726281, -0.601834, 0.332132,
		0.427681, -0.773892, -0.467098,
		0.538150, -0.197198, 0.819456,
		39.938522, 39.033695, 35.949562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444195, 38.425777, 35.535366>,  <39.561817, 39.171734, 35.375942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444195, 38.425777, 35.535366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617184, 38.570374, 35.865768>,  <39.720978, 38.657131, 36.064011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617184, 38.570374, 35.865768>,  <39.444195, 38.425777, 35.535366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617184, 38.570374, 35.865768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569336, -0.600888, 0.561062,
		0.699158, -0.712920, -0.054057,
		0.432475, 0.361494, 0.826007,
		39.746925, 38.678822, 36.113571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637135, 37.793953, 35.891460>,  <39.444195, 38.425777, 35.535366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637135, 37.793953, 35.891460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605286, 38.105358, 36.140484>,  <39.586178, 38.292202, 36.289898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605286, 38.105358, 36.140484>,  <39.637135, 37.793953, 35.891460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605286, 38.105358, 36.140484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522428, -0.564489, 0.639079,
		0.848958, -0.274358, 0.451661,
		-0.079621, 0.778511, 0.622560,
		39.581398, 38.338913, 36.327251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710464, 37.437153, 36.453018>,  <39.637135, 37.793953, 35.891460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710464, 37.437153, 36.453018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580761, 37.771698, 36.629814>,  <39.502937, 37.972424, 36.735893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580761, 37.771698, 36.629814>,  <39.710464, 37.437153, 36.453018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580761, 37.771698, 36.629814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560039, -0.546283, 0.622841,
		0.762372, -0.045570, 0.645533,
		-0.324261, 0.836360, 0.441992,
		39.483482, 38.022606, 36.762413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790634, 37.415798, 37.236790>,  <39.710464, 37.437153, 36.453018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790634, 37.415798, 37.236790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487644, 37.662563, 37.151318>,  <39.305851, 37.810623, 37.100033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487644, 37.662563, 37.151318>,  <39.790634, 37.415798, 37.236790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487644, 37.662563, 37.151318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547545, -0.422028, 0.722555,
		0.355571, 0.664316, 0.657460,
		-0.757472, 0.616909, -0.213682,
		39.260403, 37.847637, 37.087212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513252, 37.751274, 37.967667>,  <39.790634, 37.415798, 37.236790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513252, 37.751274, 37.967667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229507, 37.796146, 37.689320>,  <39.059261, 37.823071, 37.522312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229507, 37.796146, 37.689320>,  <39.513252, 37.751274, 37.967667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229507, 37.796146, 37.689320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639762, -0.516825, 0.568855,
		-0.295828, 0.848710, 0.438381,
		-0.709359, 0.112176, -0.695864,
		39.016701, 37.829800, 37.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993847, 37.979980, 38.275341>,  <39.513252, 37.751274, 37.967667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993847, 37.979980, 38.275341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826576, 37.841442, 37.939442>,  <38.726212, 37.758320, 37.737904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826576, 37.841442, 37.939442>,  <38.993847, 37.979980, 38.275341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826576, 37.841442, 37.939442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625678, -0.560366, 0.542693,
		-0.658524, 0.752353, 0.017634,
		-0.418179, -0.346343, -0.839746,
		38.701122, 37.737537, 37.687519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189205, 38.057411, 38.370487>,  <38.993847, 37.979980, 38.275341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189205, 38.057411, 38.370487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190216, 37.795864, 38.067844>,  <38.190823, 37.638935, 37.886257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190216, 37.795864, 38.067844>,  <38.189205, 38.057411, 38.370487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190216, 37.795864, 38.067844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553879, -0.630866, 0.543346,
		-0.832593, 0.417694, -0.363759,
		0.002531, -0.653865, -0.756607,
		38.190975, 37.599705, 37.840862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527954, 37.875263, 38.312405>,  <38.189205, 38.057411, 38.370487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527954, 37.875263, 38.312405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712852, 37.582424, 38.112263>,  <37.823792, 37.406719, 37.992176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712852, 37.582424, 38.112263>,  <37.527954, 37.875263, 38.312405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712852, 37.582424, 38.112263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532237, -0.680379, 0.503794,
		-0.709260, 0.033432, -0.704153,
		0.462248, -0.732098, -0.500359,
		37.851528, 37.362793, 37.962154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008465, 37.441040, 37.984024>,  <37.527954, 37.875263, 38.312405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008465, 37.441040, 37.984024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340538, 37.225262, 38.040298>,  <37.539783, 37.095795, 38.074062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340538, 37.225262, 38.040298>,  <37.008465, 37.441040, 37.984024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340538, 37.225262, 38.040298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530105, -0.685727, 0.498766,
		-0.172588, -0.488644, -0.855243,
		0.830182, -0.539450, 0.140684,
		37.589592, 37.063427, 38.082504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796608, 36.814411, 37.989353>,  <37.008465, 37.441040, 37.984024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796608, 36.814411, 37.989353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163788, 36.753086, 38.135708>,  <37.384094, 36.716293, 38.223522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163788, 36.753086, 38.135708>,  <36.796608, 36.814411, 37.989353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163788, 36.753086, 38.135708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342228, -0.772497, 0.534910,
		0.200639, -0.616235, -0.761577,
		0.917946, -0.153309, 0.365886,
		37.439171, 36.707092, 38.245472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750099, 36.168827, 37.922642>,  <36.796608, 36.814411, 37.989353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750099, 36.168827, 37.922642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022289, 36.250473, 38.204147>,  <37.185604, 36.299461, 38.373051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022289, 36.250473, 38.204147>,  <36.750099, 36.168827, 37.922642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022289, 36.250473, 38.204147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408223, -0.691982, 0.595412,
		0.608530, -0.692457, -0.387550,
		0.680474, 0.204119, 0.703768,
		37.226433, 36.311710, 38.415279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964523, 35.671646, 37.520000>,  <36.750099, 36.168827, 37.922642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964523, 35.671646, 37.520000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749802, 35.469330, 37.249882>,  <36.620968, 35.347942, 37.087811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749802, 35.469330, 37.249882>,  <36.964523, 35.671646, 37.520000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749802, 35.469330, 37.249882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297370, 0.635603, -0.712446,
		0.789564, -0.583256, -0.190790,
		-0.536805, -0.505787, -0.675293,
		36.588760, 35.317593, 37.047295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308758, 35.509293, 37.008759>,  <36.964523, 35.671646, 37.520000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308758, 35.509293, 37.008759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959717, 35.490669, 36.814278>,  <36.750294, 35.479496, 36.697590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959717, 35.490669, 36.814278>,  <37.308758, 35.509293, 37.008759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959717, 35.490669, 36.814278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383966, 0.549870, -0.741764,
		0.301884, -0.833952, -0.461941,
		-0.872603, -0.046557, -0.486207,
		36.697937, 35.476704, 36.668415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500217, 35.464653, 36.346539>,  <37.308758, 35.509293, 37.008759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500217, 35.464653, 36.346539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120884, 35.581577, 36.297192>,  <36.893284, 35.651733, 36.267586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120884, 35.581577, 36.297192>,  <37.500217, 35.464653, 36.346539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120884, 35.581577, 36.297192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249736, 0.447898, -0.858498,
		-0.195695, -0.844951, -0.497757,
		-0.948333, 0.292311, -0.123363,
		36.836384, 35.669270, 36.260181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267998, 35.242310, 35.599968>,  <37.500217, 35.464653, 36.346539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267998, 35.242310, 35.599968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005318, 35.517590, 35.723335>,  <36.847710, 35.682758, 35.797356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005318, 35.517590, 35.723335>,  <37.267998, 35.242310, 35.599968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005318, 35.517590, 35.723335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137905, 0.511646, -0.848057,
		-0.741434, -0.514389, -0.430906,
		-0.656702, 0.688202, 0.308415,
		36.808308, 35.724049, 35.815861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937977, 35.310123, 35.026226>,  <37.267998, 35.242310, 35.599968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937977, 35.310123, 35.026226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879421, 35.644241, 35.238209>,  <36.844288, 35.844711, 35.365398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879421, 35.644241, 35.238209>,  <36.937977, 35.310123, 35.026226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879421, 35.644241, 35.238209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384737, 0.541626, -0.747408,
		-0.911344, 0.094486, -0.400654,
		-0.146385, 0.835293, 0.529960,
		36.835506, 35.894829, 35.397198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611324, 35.678741, 34.566097>,  <36.937977, 35.310123, 35.026226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611324, 35.678741, 34.566097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787468, 35.922638, 34.829704>,  <36.893154, 36.068974, 34.987869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787468, 35.922638, 34.829704>,  <36.611324, 35.678741, 34.566097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787468, 35.922638, 34.829704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301123, 0.591199, -0.748204,
		-0.845817, 0.527925, 0.076735,
		0.440361, 0.609737, 0.659017,
		36.919575, 36.105560, 35.027409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440929, 36.371716, 34.332642>,  <36.611324, 35.678741, 34.566097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440929, 36.371716, 34.332642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767509, 36.427887, 34.556675>,  <36.963455, 36.461590, 34.691093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767509, 36.427887, 34.556675>,  <36.440929, 36.371716, 34.332642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767509, 36.427887, 34.556675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367648, 0.621528, -0.691764,
		-0.445249, 0.770703, 0.455817,
		0.816448, 0.140427, 0.560083,
		37.012444, 36.470016, 34.724701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574566, 37.168564, 34.293957>,  <36.440929, 36.371716, 34.332642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574566, 37.168564, 34.293957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907921, 36.997330, 34.433788>,  <37.107933, 36.894588, 34.517689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907921, 36.997330, 34.433788>,  <36.574566, 37.168564, 34.293957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907921, 36.997330, 34.433788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537461, 0.480262, -0.693170,
		0.128847, 0.765565, 0.630324,
		0.833387, -0.428087, 0.349581,
		37.157936, 36.868904, 34.538662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989063, 37.709957, 34.252506>,  <36.574566, 37.168564, 34.293957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989063, 37.709957, 34.252506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237247, 37.399597, 34.298111>,  <37.386158, 37.213379, 34.325474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237247, 37.399597, 34.298111>,  <36.989063, 37.709957, 34.252506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237247, 37.399597, 34.298111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661371, 0.439572, -0.607754,
		0.421442, 0.452494, 0.785898,
		0.620464, -0.775903, 0.114012,
		37.423386, 37.166824, 34.332314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661118, 37.934666, 34.541019>,  <36.989063, 37.709957, 34.252506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661118, 37.934666, 34.541019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690533, 37.591305, 34.337948>,  <37.708179, 37.385288, 34.216106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690533, 37.591305, 34.337948>,  <37.661118, 37.934666, 34.541019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690533, 37.591305, 34.337948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425634, 0.487381, -0.762428,
		0.901903, -0.160020, 0.401204,
		0.073535, -0.858402, -0.507680,
		37.712593, 37.333786, 34.185642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462223, 37.720963, 34.427628>,  <37.661118, 37.934666, 34.541019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462223, 37.720963, 34.427628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199566, 37.607693, 34.148022>,  <38.041969, 37.539730, 33.980259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199566, 37.607693, 34.148022>,  <38.462223, 37.720963, 34.427628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199566, 37.607693, 34.148022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457949, 0.586710, -0.667872,
		0.599245, -0.758672, -0.255583,
		-0.656649, -0.283175, -0.699016,
		38.002571, 37.522739, 33.938316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802910, 37.465351, 33.764221>,  <38.462223, 37.720963, 34.427628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802910, 37.465351, 33.764221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459728, 37.642612, 33.660275>,  <38.253819, 37.748970, 33.597908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459728, 37.642612, 33.660275>,  <38.802910, 37.465351, 33.764221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459728, 37.642612, 33.660275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474323, 0.489050, -0.732016,
		-0.197308, -0.751297, -0.629780,
		-0.857955, 0.443152, -0.259864,
		38.202343, 37.775558, 33.582314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.171803, 32.299858, 39.182865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.835423, 32.346638, 38.971535>,  <35.633595, 32.374706, 38.844734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.835423, 32.346638, 38.971535>,  <36.171803, 32.299858, 39.182865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835423, 32.346638, 38.971535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450702, 0.691710, -0.564273,
		0.299462, -0.712643, -0.634399,
		-0.840946, 0.116947, -0.528330,
		35.583138, 32.381721, 38.813034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405010, 32.430904, 38.651367>,  <36.171803, 32.299858, 39.182865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405010, 32.430904, 38.651367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025280, 32.541935, 38.592400>,  <35.797443, 32.608555, 38.557018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025280, 32.541935, 38.592400>,  <36.405010, 32.430904, 38.651367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025280, 32.541935, 38.592400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311060, 0.762597, -0.567175,
		-0.045014, -0.584290, -0.810296,
		-0.949324, 0.277581, -0.147422,
		35.740482, 32.625210, 38.548172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315716, 32.503986, 37.853790>,  <36.405010, 32.430904, 38.651367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315716, 32.503986, 37.853790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044891, 32.730911, 38.041298>,  <35.882397, 32.867065, 38.153801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044891, 32.730911, 38.041298>,  <36.315716, 32.503986, 37.853790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044891, 32.730911, 38.041298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167148, 0.738871, -0.652788,
		-0.716694, -0.363624, -0.595086,
		-0.677061, 0.567316, 0.468765,
		35.841774, 32.901108, 38.181927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974434, 32.826893, 37.320671>,  <36.315716, 32.503986, 37.853790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974434, 32.826893, 37.320671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877827, 33.041710, 37.643967>,  <35.819862, 33.170601, 37.837944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877827, 33.041710, 37.643967>,  <35.974434, 32.826893, 37.320671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877827, 33.041710, 37.643967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136632, 0.843422, -0.519587,
		-0.960728, -0.015060, -0.277082,
		-0.241522, 0.537040, 0.808242,
		35.805370, 33.202824, 37.886440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487999, 33.332405, 37.093044>,  <35.974434, 32.826893, 37.320671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487999, 33.332405, 37.093044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648872, 33.463856, 37.434864>,  <35.745396, 33.542728, 37.639954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648872, 33.463856, 37.434864>,  <35.487999, 33.332405, 37.093044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648872, 33.463856, 37.434864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236910, 0.864217, -0.443849,
		-0.884377, 0.380959, 0.269717,
		0.402183, 0.328631, 0.854547,
		35.769527, 33.562447, 37.691227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168243, 34.017147, 37.276363>,  <35.487999, 33.332405, 37.093044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168243, 34.017147, 37.276363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529533, 34.006626, 37.447708>,  <35.746307, 34.000313, 37.550514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529533, 34.006626, 37.447708>,  <35.168243, 34.017147, 37.276363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529533, 34.006626, 37.447708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160670, 0.946258, -0.280681,
		-0.397957, 0.322342, 0.858909,
		0.903225, -0.026302, 0.428361,
		35.800499, 33.998737, 37.576218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285152, 34.694519, 37.513397>,  <35.168243, 34.017147, 37.276363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285152, 34.694519, 37.513397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.649708, 34.529930, 37.510162>,  <35.868439, 34.431175, 37.508221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.649708, 34.529930, 37.510162>,  <35.285152, 34.694519, 37.513397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649708, 34.529930, 37.510162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403586, 0.897421, -0.178198,
		0.080579, 0.159144, 0.983962,
		0.911387, -0.411472, -0.008085,
		35.923122, 34.406490, 37.507736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737930, 35.152180, 37.983204>,  <35.285152, 34.694519, 37.513397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737930, 35.152180, 37.983204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961170, 34.938526, 37.729202>,  <36.095112, 34.810333, 37.576801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961170, 34.938526, 37.729202>,  <35.737930, 35.152180, 37.983204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961170, 34.938526, 37.729202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356982, 0.845386, -0.397349,
		0.749061, -0.004926, 0.662483,
		0.558096, -0.534133, -0.635004,
		36.128597, 34.778286, 37.538700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321129, 35.526665, 37.931339>,  <35.737930, 35.152180, 37.983204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321129, 35.526665, 37.931339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.310043, 35.287937, 37.610580>,  <36.303391, 35.144699, 37.418125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.310043, 35.287937, 37.610580>,  <36.321129, 35.526665, 37.931339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310043, 35.287937, 37.610580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197962, 0.783037, -0.589630,
		0.979818, -0.175084, 0.096448,
		-0.027712, -0.596823, -0.801894,
		36.301731, 35.108891, 37.370010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026722, 35.401680, 38.232918>,  <36.321129, 35.526665, 37.931339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026722, 35.401680, 38.232918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144680, 35.665958, 38.509041>,  <37.215454, 35.824524, 38.674713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144680, 35.665958, 38.509041>,  <37.026722, 35.401680, 38.232918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144680, 35.665958, 38.509041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025999, -0.716618, 0.696982,
		0.955177, -0.223481, -0.194147,
		0.294892, 0.660693, 0.690307,
		37.233147, 35.864166, 38.716133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438259, 34.962791, 38.659298>,  <37.026722, 35.401680, 38.232918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438259, 34.962791, 38.659298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330177, 35.293564, 38.856552>,  <37.265327, 35.492027, 38.974903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330177, 35.293564, 38.856552>,  <37.438259, 34.962791, 38.659298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330177, 35.293564, 38.856552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070435, -0.527792, 0.846448,
		0.960223, 0.193981, 0.200857,
		-0.270205, 0.826926, 0.493135,
		37.249115, 35.541641, 39.004494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732311, 34.829517, 39.307438>,  <37.438259, 34.962791, 38.659298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732311, 34.829517, 39.307438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452415, 35.110851, 39.357533>,  <37.284477, 35.279652, 39.387589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452415, 35.110851, 39.357533>,  <37.732311, 34.829517, 39.307438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452415, 35.110851, 39.357533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343665, -0.485088, 0.804104,
		0.626311, 0.519619, 0.581146,
		-0.699735, 0.703339, 0.125241,
		37.242496, 35.321854, 39.395103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792503, 35.122566, 40.009495>,  <37.732311, 34.829517, 39.307438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792503, 35.122566, 40.009495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420071, 35.192730, 39.881546>,  <37.196609, 35.234829, 39.804775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420071, 35.192730, 39.881546>,  <37.792503, 35.122566, 40.009495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420071, 35.192730, 39.881546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364655, -0.421628, 0.830215,
		0.010758, 0.889641, 0.456533,
		-0.931081, 0.175409, -0.319876,
		37.140747, 35.245354, 39.785583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499825, 35.566788, 40.517963>,  <37.792503, 35.122566, 40.009495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499825, 35.566788, 40.517963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207840, 35.380188, 40.318153>,  <37.032650, 35.268227, 40.198269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207840, 35.380188, 40.318153>,  <37.499825, 35.566788, 40.517963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207840, 35.380188, 40.318153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286858, -0.454260, 0.843422,
		-0.620373, 0.758962, 0.197774,
		-0.729965, -0.466504, -0.499525,
		36.988850, 35.240238, 40.168297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022049, 35.559612, 41.061050>,  <37.499825, 35.566788, 40.517963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022049, 35.559612, 41.061050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.903221, 35.287182, 40.793354>,  <36.831924, 35.123726, 40.632736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.903221, 35.287182, 40.793354>,  <37.022049, 35.559612, 41.061050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903221, 35.287182, 40.793354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335103, -0.581944, 0.740977,
		-0.894123, 0.444387, -0.055353,
		-0.297068, -0.681073, -0.669245,
		36.814102, 35.082859, 40.592579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452381, 35.350731, 41.383282>,  <37.022049, 35.559612, 41.061050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452381, 35.350731, 41.383282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528927, 35.077389, 41.101456>,  <36.574852, 34.913383, 40.932362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528927, 35.077389, 41.101456>,  <36.452381, 35.350731, 41.383282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528927, 35.077389, 41.101456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403237, -0.709190, 0.578316,
		-0.894863, 0.173440, -0.411264,
		0.191361, -0.683351, -0.704565,
		36.586334, 34.872383, 40.890087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784790, 34.928112, 41.292912>,  <36.452381, 35.350731, 41.383282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784790, 34.928112, 41.292912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114208, 34.732117, 41.178581>,  <36.311859, 34.614521, 41.109985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.114208, 34.732117, 41.178581>,  <35.784790, 34.928112, 41.292912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114208, 34.732117, 41.178581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217943, -0.738503, 0.638054,
		-0.523718, -0.463171, -0.714977,
		0.823541, -0.489984, -0.285822,
		36.361271, 34.585121, 41.092834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556664, 34.283283, 41.137249>,  <35.784790, 34.928112, 41.292912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556664, 34.283283, 41.137249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.945278, 34.200294, 41.182980>,  <36.178448, 34.150501, 41.210419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.945278, 34.200294, 41.182980>,  <35.556664, 34.283283, 41.137249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945278, 34.200294, 41.182980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236831, -0.840381, 0.487516,
		-0.005071, -0.500715, -0.865597,
		0.971537, -0.207472, 0.114323,
		36.236740, 34.138054, 41.217278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606327, 33.587875, 41.041546>,  <35.556664, 34.283283, 41.137249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606327, 33.587875, 41.041546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944176, 33.671974, 41.238483>,  <36.146885, 33.722431, 41.356647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944176, 33.671974, 41.238483>,  <35.606327, 33.587875, 41.041546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944176, 33.671974, 41.238483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168621, -0.768376, 0.617385,
		0.508110, -0.604479, -0.613538,
		0.844625, 0.210244, 0.492347,
		36.197563, 33.735046, 41.386189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128777, 32.993008, 40.955406>,  <35.606327, 33.587875, 41.041546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128777, 32.993008, 40.955406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.209724, 33.200756, 41.287502>,  <36.258293, 33.325405, 41.486759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.209724, 33.200756, 41.287502>,  <36.128777, 32.993008, 40.955406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209724, 33.200756, 41.287502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021706, -0.845195, 0.534017,
		0.979068, -0.126093, -0.159772,
		0.202374, 0.519371, 0.830240,
		36.270435, 33.356567, 41.536575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462925, 32.556892, 41.377098>,  <36.128777, 32.993008, 40.955406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462925, 32.556892, 41.377098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383835, 32.838486, 41.649952>,  <36.336380, 33.007442, 41.813663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383835, 32.838486, 41.649952>,  <36.462925, 32.556892, 41.377098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383835, 32.838486, 41.649952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233332, -0.642074, 0.730272,
		0.952083, 0.303555, -0.037310,
		-0.197721, 0.703985, 0.682137,
		36.324520, 33.049683, 41.854591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006390, 32.464924, 41.934605>,  <36.462925, 32.556892, 41.377098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006390, 32.464924, 41.934605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691952, 32.664162, 42.081005>,  <36.503288, 32.783703, 42.168846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691952, 32.664162, 42.081005>,  <37.006390, 32.464924, 41.934605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691952, 32.664162, 42.081005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016349, -0.608685, 0.793244,
		0.617893, 0.617579, 0.486626,
		-0.786092, 0.498096, 0.366005,
		36.456123, 32.813591, 42.190807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235199, 32.710186, 42.615223>,  <37.006390, 32.464924, 41.934605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235199, 32.710186, 42.615223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835873, 32.688164, 42.607861>,  <36.596279, 32.674950, 42.603443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835873, 32.688164, 42.607861>,  <37.235199, 32.710186, 42.615223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835873, 32.688164, 42.607861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012359, -0.511394, 0.859258,
		-0.056724, 0.857581, 0.511212,
		-0.998313, -0.055059, -0.018410,
		36.536377, 32.671646, 42.602337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.136000, 33.943913, 40.140896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.462334, 34.009022, 40.362858>,  <31.658134, 34.048088, 40.496033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.462334, 34.009022, 40.362858>,  <31.136000, 33.943913, 40.140896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462334, 34.009022, 40.362858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301606, 0.698950, -0.648462,
		-0.493400, 0.696401, 0.521136,
		0.815837, 0.162774, 0.554901,
		31.707085, 34.057854, 40.529327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154232, 34.687065, 40.324368>,  <31.136000, 33.943913, 40.140896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154232, 34.687065, 40.324368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529697, 34.568523, 40.394894>,  <31.754976, 34.497398, 40.437210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529697, 34.568523, 40.394894>,  <31.154232, 34.687065, 40.324368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529697, 34.568523, 40.394894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342797, 0.746451, -0.570352,
		0.037415, 0.595808, 0.802255,
		0.938664, -0.296350, 0.176313,
		31.811296, 34.479618, 40.447788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467651, 35.240620, 40.397335>,  <31.154232, 34.687065, 40.324368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467651, 35.240620, 40.397335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769598, 34.996220, 40.301952>,  <31.950766, 34.849579, 40.244724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769598, 34.996220, 40.301952>,  <31.467651, 35.240620, 40.397335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769598, 34.996220, 40.301952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319232, 0.659863, -0.680200,
		0.572946, 0.437339, 0.693158,
		0.754867, -0.610996, -0.238453,
		31.996058, 34.812920, 40.230415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117931, 35.649097, 40.465107>,  <31.467651, 35.240620, 40.397335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117931, 35.649097, 40.465107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199780, 35.335491, 40.230690>,  <32.248890, 35.147327, 40.090038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199780, 35.335491, 40.230690>,  <32.117931, 35.649097, 40.465107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199780, 35.335491, 40.230690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445224, 0.607739, -0.657593,
		0.871726, -0.126362, 0.473420,
		0.204621, -0.784019, -0.586041,
		32.261166, 35.100285, 40.054878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877586, 35.570858, 40.349720>,  <32.117931, 35.649097, 40.465107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877586, 35.570858, 40.349720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711227, 35.398407, 40.029430>,  <32.611412, 35.294937, 39.837257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711227, 35.398407, 40.029430>,  <32.877586, 35.570858, 40.349720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711227, 35.398407, 40.029430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634279, 0.493459, -0.595137,
		0.651703, -0.755400, 0.068223,
		-0.415901, -0.431125, -0.800723,
		32.586456, 35.269070, 39.789215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326370, 35.603268, 39.847668>,  <32.877586, 35.570858, 40.349720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326370, 35.603268, 39.847668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.021088, 35.487526, 39.616570>,  <32.837917, 35.418083, 39.477909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.021088, 35.487526, 39.616570>,  <33.326370, 35.603268, 39.847668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021088, 35.487526, 39.616570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442013, 0.418400, -0.793452,
		0.471313, -0.860940, -0.191431,
		-0.763209, -0.289350, -0.577744,
		32.792126, 35.400723, 39.443245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599876, 35.261517, 39.160454>,  <33.326370, 35.603268, 39.847668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599876, 35.261517, 39.160454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223793, 35.385174, 39.103268>,  <32.998142, 35.459366, 39.068954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223793, 35.385174, 39.103268>,  <33.599876, 35.261517, 39.160454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223793, 35.385174, 39.103268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256733, 0.367409, -0.893923,
		-0.223822, -0.877178, -0.424808,
		-0.940209, 0.309141, -0.142966,
		32.941730, 35.477917, 39.060379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357830, 35.136635, 38.448647>,  <33.599876, 35.261517, 39.160454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357830, 35.136635, 38.448647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137894, 35.446026, 38.574760>,  <33.005932, 35.631660, 38.650429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137894, 35.446026, 38.574760>,  <33.357830, 35.136635, 38.448647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137894, 35.446026, 38.574760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232773, 0.504402, -0.831502,
		-0.802178, -0.383807, -0.457387,
		-0.549843, 0.773479, 0.315280,
		32.972942, 35.678070, 38.669346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089947, 35.324184, 37.798859>,  <33.357830, 35.136635, 38.448647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089947, 35.324184, 37.798859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.019901, 35.615150, 38.064247>,  <32.977875, 35.789730, 38.223480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.019901, 35.615150, 38.064247>,  <33.089947, 35.324184, 37.798859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019901, 35.615150, 38.064247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302997, 0.680999, -0.666658,
		-0.936764, 0.084289, -0.339659,
		-0.175116, 0.727417, 0.663475,
		32.967365, 35.833374, 38.263290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707222, 35.882885, 37.416161>,  <33.089947, 35.324184, 37.798859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707222, 35.882885, 37.416161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875874, 36.061207, 37.732006>,  <32.977066, 36.168198, 37.921513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875874, 36.061207, 37.732006>,  <32.707222, 35.882885, 37.416161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875874, 36.061207, 37.732006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277097, 0.765800, -0.580318,
		-0.863391, 0.463480, 0.199356,
		0.421632, 0.445800, 0.789613,
		33.002361, 36.194946, 37.968891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427265, 36.566944, 37.319283>,  <32.707222, 35.882885, 37.416161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427265, 36.566944, 37.319283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.732285, 36.600571, 37.575859>,  <32.915295, 36.620747, 37.729805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.732285, 36.600571, 37.575859>,  <32.427265, 36.566944, 37.319283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732285, 36.600571, 37.575859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213006, 0.903610, -0.371641,
		-0.610858, 0.420026, 0.671141,
		0.762549, 0.084063, 0.641446,
		32.961048, 36.625790, 37.768291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462696, 37.205360, 37.623978>,  <32.427265, 36.566944, 37.319283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462696, 37.205360, 37.623978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839317, 37.076836, 37.664429>,  <33.065292, 36.999722, 37.688698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839317, 37.076836, 37.664429>,  <32.462696, 37.205360, 37.623978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839317, 37.076836, 37.664429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336701, 0.888646, -0.311354,
		0.010176, 0.327208, 0.944898,
		0.941557, -0.321316, 0.101128,
		33.121784, 36.980442, 37.694767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770981, 37.730667, 37.970291>,  <32.462696, 37.205360, 37.623978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770981, 37.730667, 37.970291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078625, 37.537685, 37.802620>,  <33.263210, 37.421898, 37.702019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078625, 37.537685, 37.802620>,  <32.770981, 37.730667, 37.970291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078625, 37.537685, 37.802620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320081, 0.858452, -0.400759,
		0.553191, 0.174057, 0.814668,
		0.769108, -0.482456, -0.419176,
		33.309357, 37.392948, 37.676868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355335, 38.260017, 37.958797>,  <32.770981, 37.730667, 37.970291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355335, 38.260017, 37.958797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480183, 37.973373, 37.709301>,  <33.555092, 37.801388, 37.559605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480183, 37.973373, 37.709301>,  <33.355335, 38.260017, 37.958797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480183, 37.973373, 37.709301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419856, 0.692990, -0.586077,
		0.852233, -0.078952, 0.517171,
		0.312122, -0.716611, -0.623737,
		33.573818, 37.758389, 37.522179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006302, 38.412949, 38.490700>,  <33.355335, 38.260017, 37.958797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006302, 38.412949, 38.490700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235134, 38.673206, 38.690456>,  <34.372433, 38.829361, 38.810310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235134, 38.673206, 38.690456>,  <34.006302, 38.412949, 38.490700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235134, 38.673206, 38.690456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339361, -0.366543, 0.866303,
		0.746701, -0.665067, 0.011111,
		0.572077, 0.650640, 0.499396,
		34.406757, 38.868397, 38.840275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470978, 38.018703, 38.938667>,  <34.006302, 38.412949, 38.490700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470978, 38.018703, 38.938667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418945, 38.387856, 39.083641>,  <34.387726, 38.609348, 39.170628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418945, 38.387856, 39.083641>,  <34.470978, 38.018703, 38.938667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418945, 38.387856, 39.083641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067013, -0.372893, 0.925451,
		0.989236, 0.096099, 0.110353,
		-0.130085, 0.922884, 0.362439,
		34.379921, 38.664722, 39.192371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799530, 38.030136, 39.544556>,  <34.470978, 38.018703, 38.938667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799530, 38.030136, 39.544556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545242, 38.335339, 39.591331>,  <34.392670, 38.518459, 39.619396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545242, 38.335339, 39.591331>,  <34.799530, 38.030136, 39.544556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545242, 38.335339, 39.591331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146259, -0.267806, 0.952307,
		0.757935, 0.588300, 0.281847,
		-0.635722, 0.763009, 0.116935,
		34.354527, 38.564243, 39.626411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928314, 38.291103, 40.132206>,  <34.799530, 38.030136, 39.544556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928314, 38.291103, 40.132206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555664, 38.420296, 40.065571>,  <34.332073, 38.497810, 40.025589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555664, 38.420296, 40.065571>,  <34.928314, 38.291103, 40.132206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555664, 38.420296, 40.065571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264424, -0.288010, 0.920397,
		0.249291, 0.901518, 0.353722,
		-0.931630, 0.322979, -0.166585,
		34.276176, 38.517189, 40.015594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828091, 38.640930, 40.686344>,  <34.928314, 38.291103, 40.132206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828091, 38.640930, 40.686344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474045, 38.558361, 40.519512>,  <34.261616, 38.508820, 40.419411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474045, 38.558361, 40.519512>,  <34.828091, 38.640930, 40.686344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474045, 38.558361, 40.519512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343985, -0.313437, 0.885117,
		-0.313437, 0.926902, 0.206422,
		-0.885117, -0.206422, -0.417083,
		34.208511, 38.496433, 40.394386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317879, 38.755852, 41.222782>,  <34.828091, 38.640930, 40.686344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317879, 38.755852, 41.222782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112484, 38.522072, 40.971466>,  <33.989246, 38.381805, 40.820675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112484, 38.522072, 40.971466>,  <34.317879, 38.755852, 41.222782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112484, 38.522072, 40.971466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391797, -0.491727, 0.777625,
		-0.763430, 0.645463, 0.023510,
		-0.513488, -0.584451, -0.628289,
		33.958439, 38.346737, 40.782978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758972, 38.574547, 41.602615>,  <34.317879, 38.755852, 41.222782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758972, 38.574547, 41.602615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.754593, 38.302464, 41.309441>,  <33.751965, 38.139214, 41.133537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.754593, 38.302464, 41.309441>,  <33.758972, 38.574547, 41.602615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754593, 38.302464, 41.309441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378369, -0.675664, 0.632705,
		-0.925590, 0.284248, -0.249973,
		-0.010947, -0.680207, -0.732938,
		33.751308, 38.098400, 41.089558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222115, 38.277370, 41.799221>,  <33.758972, 38.574547, 41.602615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222115, 38.277370, 41.799221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383877, 38.039051, 41.521664>,  <33.480934, 37.896061, 41.355129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383877, 38.039051, 41.521664>,  <33.222115, 38.277370, 41.799221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383877, 38.039051, 41.521664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319907, -0.802921, 0.502968,
		-0.856807, 0.018579, -0.515303,
		0.404403, -0.595796, -0.693892,
		33.505199, 37.860313, 41.313496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654442, 37.853310, 41.400669>,  <33.222115, 38.277370, 41.799221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654442, 37.853310, 41.400669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015797, 37.681789, 41.398930>,  <33.232609, 37.578876, 41.397884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015797, 37.681789, 41.398930>,  <32.654442, 37.853310, 41.400669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015797, 37.681789, 41.398930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348992, -0.741069, 0.573604,
		-0.249185, -0.516670, -0.819121,
		0.903389, -0.428800, -0.004349,
		33.286812, 37.553150, 41.397625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549919, 37.139927, 41.183155>,  <32.654442, 37.853310, 41.400669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549919, 37.139927, 41.183155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895973, 37.147408, 41.383629>,  <33.103607, 37.151897, 41.503914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895973, 37.147408, 41.383629>,  <32.549919, 37.139927, 41.183155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895973, 37.147408, 41.383629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303237, -0.776454, 0.552419,
		0.399483, -0.629896, -0.666066,
		0.865136, 0.018706, 0.501188,
		33.155514, 37.153019, 41.533985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644440, 36.466694, 41.272171>,  <32.549919, 37.139927, 41.183155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644440, 36.466694, 41.272171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906822, 36.623970, 41.529892>,  <33.064251, 36.718334, 41.684525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906822, 36.623970, 41.529892>,  <32.644440, 36.466694, 41.272171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906822, 36.623970, 41.529892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330628, -0.617685, 0.713548,
		0.678534, -0.681080, -0.275175,
		0.655955, 0.393186, 0.644305,
		33.103607, 36.741924, 41.723183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015114, 35.984203, 41.492744>,  <32.644440, 36.466694, 41.272171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015114, 35.984203, 41.492744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110992, 36.215778, 41.804482>,  <33.168522, 36.354721, 41.991524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110992, 36.215778, 41.804482>,  <33.015114, 35.984203, 41.492744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110992, 36.215778, 41.804482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004542, -0.802071, 0.597212,
		0.970837, -0.146691, -0.189626,
		0.239699, 0.578934, 0.779346,
		33.182903, 36.389458, 42.038284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651825, 35.687580, 41.837566>,  <33.015114, 35.984203, 41.492744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651825, 35.687580, 41.837566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475780, 35.921040, 42.110523>,  <33.370152, 36.061115, 42.274296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475780, 35.921040, 42.110523>,  <33.651825, 35.687580, 41.837566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475780, 35.921040, 42.110523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231953, -0.808051, 0.541527,
		0.867466, 0.080052, 0.491014,
		-0.440114, 0.583649, 0.682388,
		33.343746, 36.096134, 42.315239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821976, 35.516964, 42.477020>,  <33.651825, 35.687580, 41.837566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821976, 35.516964, 42.477020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474442, 35.698853, 42.555347>,  <33.265919, 35.807987, 42.602345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474442, 35.698853, 42.555347>,  <33.821976, 35.516964, 42.477020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474442, 35.698853, 42.555347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233239, -0.724809, 0.648268,
		0.436711, 0.517570, 0.735802,
		-0.868840, 0.454724, 0.195815,
		33.213791, 35.835270, 42.614094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331524, 35.704567, 42.987495>,  <33.821976, 35.516964, 42.477020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331524, 35.704567, 42.987495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606308, 35.742607, 43.275673>,  <34.771179, 35.765430, 43.448578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606308, 35.742607, 43.275673>,  <34.331524, 35.704567, 42.987495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606308, 35.742607, 43.275673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540018, 0.596602, -0.593672,
		-0.486277, 0.796883, 0.358487,
		0.686961, 0.095099, 0.720445,
		34.812397, 35.771137, 43.491806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349079, 36.391613, 43.218750>,  <34.331524, 35.704567, 42.987495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349079, 36.391613, 43.218750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711811, 36.262585, 43.327271>,  <34.929451, 36.185165, 43.392384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711811, 36.262585, 43.327271>,  <34.349079, 36.391613, 43.218750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711811, 36.262585, 43.327271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411359, 0.817630, -0.402822,
		-0.091886, 0.476894, 0.874145,
		0.906830, -0.322573, 0.271303,
		34.983860, 36.165813, 43.408661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706898, 36.948219, 43.476871>,  <34.349079, 36.391613, 43.218750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706898, 36.948219, 43.476871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001133, 36.701206, 43.365471>,  <35.177673, 36.552998, 43.298630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001133, 36.701206, 43.365471>,  <34.706898, 36.948219, 43.476871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001133, 36.701206, 43.365471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433517, 0.745025, -0.506952,
		0.520548, 0.252175, 0.815744,
		0.735590, -0.617531, -0.278499,
		35.221809, 36.515945, 43.281921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311424, 37.288227, 43.629768>,  <34.706898, 36.948219, 43.476871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311424, 37.288227, 43.629768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430145, 36.997555, 43.381950>,  <35.501377, 36.823151, 43.233257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430145, 36.997555, 43.381950>,  <35.311424, 37.288227, 43.629768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430145, 36.997555, 43.381950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535603, 0.663805, -0.522009,
		0.790595, -0.176900, 0.586231,
		0.296800, -0.726684, -0.619548,
		35.519184, 36.779549, 43.196087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929314, 37.472458, 43.577862>,  <35.311424, 37.288227, 43.629768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929314, 37.472458, 43.577862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847507, 37.242046, 43.261288>,  <35.798424, 37.103802, 43.071342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847507, 37.242046, 43.261288>,  <35.929314, 37.472458, 43.577862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847507, 37.242046, 43.261288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390240, 0.693512, -0.605602,
		0.897711, -0.432706, 0.082952,
		-0.204519, -0.576027, -0.791432,
		35.786152, 37.069237, 43.023857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536110, 37.450867, 43.246056>,  <35.929314, 37.472458, 43.577862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536110, 37.450867, 43.246056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.262947, 37.348171, 42.972496>,  <36.099049, 37.286556, 42.808361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.262947, 37.348171, 42.972496>,  <36.536110, 37.450867, 43.246056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262947, 37.348171, 42.972496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492991, 0.528892, -0.690820,
		0.539068, -0.808925, -0.234618,
		-0.682910, -0.256734, -0.683902,
		36.058075, 37.271152, 42.767326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928852, 37.280987, 42.540165>,  <36.536110, 37.450867, 43.246056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928852, 37.280987, 42.540165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545940, 37.373352, 42.470543>,  <36.316193, 37.428772, 42.428768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545940, 37.373352, 42.470543>,  <36.928852, 37.280987, 42.540165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545940, 37.373352, 42.470543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275695, 0.547283, -0.790236,
		-0.087216, -0.804464, -0.587564,
		-0.957280, 0.230910, -0.174055,
		36.258755, 37.442623, 42.418327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864262, 37.345470, 41.912209>,  <36.928852, 37.280987, 42.540165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864262, 37.345470, 41.912209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.532806, 37.554619, 41.992180>,  <36.333935, 37.680107, 42.040161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.532806, 37.554619, 41.992180>,  <36.864262, 37.345470, 41.912209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532806, 37.554619, 41.992180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216811, 0.629044, -0.746523,
		-0.516094, -0.575251, -0.634613,
		-0.828637, 0.522867, 0.199925,
		36.284214, 37.711479, 42.052158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515461, 37.468395, 41.278336>,  <36.864262, 37.345470, 41.912209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515461, 37.468395, 41.278336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369656, 37.743439, 41.529518>,  <36.282173, 37.908463, 41.680229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369656, 37.743439, 41.529518>,  <36.515461, 37.468395, 41.278336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369656, 37.743439, 41.529518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138112, 0.706817, -0.693783,
		-0.920901, -0.166162, -0.352608,
		-0.364509, 0.687604, 0.627960,
		36.260303, 37.949718, 41.717907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077076, 37.781815, 40.955044>,  <36.515461, 37.468395, 41.278336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077076, 37.781815, 40.955044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202030, 38.048210, 41.226006>,  <36.277004, 38.208046, 41.388584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202030, 38.048210, 41.226006>,  <36.077076, 37.781815, 40.955044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202030, 38.048210, 41.226006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164117, 0.664533, -0.729014,
		-0.935670, 0.338910, 0.098294,
		0.312390, 0.665985, 0.677404,
		36.295746, 38.248005, 41.429226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013554, 38.527145, 40.725842>,  <36.077076, 37.781815, 40.955044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013554, 38.527145, 40.725842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234287, 38.614143, 41.047878>,  <36.366726, 38.666344, 41.241100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234287, 38.614143, 41.047878>,  <36.013554, 38.527145, 40.725842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234287, 38.614143, 41.047878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366194, 0.804146, -0.468243,
		-0.749253, 0.553212, 0.364109,
		0.551835, 0.217498, 0.805092,
		36.399837, 38.679394, 41.289406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905087, 39.270325, 40.958778>,  <36.013554, 38.527145, 40.725842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905087, 39.270325, 40.958778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.257057, 39.142036, 41.098991>,  <36.468239, 39.065063, 41.183121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.257057, 39.142036, 41.098991>,  <35.905087, 39.270325, 40.958778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257057, 39.142036, 41.098991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467558, 0.715586, -0.518966,
		-0.084393, 0.620544, 0.779617,
		0.879925, -0.320718, 0.350531,
		36.521034, 39.045822, 41.204151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337334, 39.887512, 41.183025>,  <35.905087, 39.270325, 40.958778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337334, 39.887512, 41.183025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617435, 39.602921, 41.159538>,  <36.785496, 39.432167, 41.145447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617435, 39.602921, 41.159538>,  <36.337334, 39.887512, 41.183025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617435, 39.602921, 41.159538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610137, 0.639152, -0.468208,
		0.370652, 0.292034, 0.881665,
		0.700250, -0.711478, -0.058722,
		36.827511, 39.389477, 41.141922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032040, 40.198574, 41.565037>,  <36.337334, 39.887512, 41.183025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032040, 40.198574, 41.565037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120747, 39.929874, 41.282318>,  <37.173969, 39.768654, 41.112686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120747, 39.929874, 41.282318>,  <37.032040, 40.198574, 41.565037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120747, 39.929874, 41.282318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768347, 0.566685, -0.297510,
		0.600387, -0.477091, 0.641810,
		0.221765, -0.671753, -0.706801,
		37.187275, 39.728348, 41.070278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.039043, 39.411701, 28.744061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987421, 39.105671, 28.491713>,  <27.956448, 38.922050, 28.340303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987421, 39.105671, 28.491713>,  <28.039043, 39.411701, 28.744061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987421, 39.105671, 28.491713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219027, -0.598485, 0.770612,
		-0.967146, 0.237631, -0.090334,
		-0.129058, -0.765080, -0.630870,
		27.948704, 38.876148, 28.302452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432356, 39.096821, 28.843163>,  <28.039043, 39.411701, 28.744061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432356, 39.096821, 28.843163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632565, 38.791660, 28.679478>,  <27.752689, 38.608562, 28.581266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632565, 38.791660, 28.679478>,  <27.432356, 39.096821, 28.843163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632565, 38.791660, 28.679478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113485, -0.526424, 0.842614,
		-0.858254, -0.375306, -0.350065,
		0.500521, -0.762904, -0.409214,
		27.782721, 38.562790, 28.556713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946335, 38.520061, 28.903458>,  <27.432356, 39.096821, 28.843163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946335, 38.520061, 28.903458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325769, 38.400837, 28.860865>,  <27.553431, 38.329300, 28.835308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325769, 38.400837, 28.860865>,  <26.946335, 38.520061, 28.903458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325769, 38.400837, 28.860865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121020, -0.652417, 0.748135,
		-0.292465, -0.696785, -0.654946,
		0.948587, -0.298065, -0.106484,
		27.610346, 38.311417, 28.828918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907806, 37.734585, 28.957855>,  <26.946335, 38.520061, 28.903458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907806, 37.734585, 28.957855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275797, 37.854305, 29.059093>,  <27.496592, 37.926136, 29.119837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275797, 37.854305, 29.059093>,  <26.907806, 37.734585, 28.957855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275797, 37.854305, 29.059093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020573, -0.607946, 0.793712,
		0.391429, -0.735404, -0.553140,
		0.919978, 0.299302, 0.253097,
		27.551790, 37.944096, 29.135023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094452, 37.217354, 29.247282>,  <26.907806, 37.734585, 28.957855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094452, 37.217354, 29.247282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416531, 37.423695, 29.364281>,  <27.609779, 37.547497, 29.434481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416531, 37.423695, 29.364281>,  <27.094452, 37.217354, 29.247282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416531, 37.423695, 29.364281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079035, -0.582197, 0.809197,
		0.587714, -0.628448, -0.509554,
		0.805199, 0.515849, 0.292496,
		27.658091, 37.578449, 29.452030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440147, 36.754551, 29.545853>,  <27.094452, 37.217354, 29.247282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440147, 36.754551, 29.545853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582062, 37.091373, 29.708364>,  <27.667210, 37.293468, 29.805872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582062, 37.091373, 29.708364>,  <27.440147, 36.754551, 29.545853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582062, 37.091373, 29.708364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010073, -0.431080, 0.902257,
		0.934894, -0.324200, -0.144458,
		0.354785, 0.842060, 0.406280,
		27.688498, 37.343990, 29.830248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019016, 36.619705, 29.918945>,  <27.440147, 36.754551, 29.545853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019016, 36.619705, 29.918945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863874, 36.952911, 30.076759>,  <27.770788, 37.152836, 30.171448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863874, 36.952911, 30.076759>,  <28.019016, 36.619705, 29.918945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863874, 36.952911, 30.076759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156887, -0.362133, 0.918829,
		0.908270, 0.418270, 0.009767,
		-0.387856, 0.833012, 0.394536,
		27.747519, 37.202816, 30.195120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452963, 36.757202, 30.452534>,  <28.019016, 36.619705, 29.918945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452963, 36.757202, 30.452534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118576, 36.959656, 30.537374>,  <27.917944, 37.081127, 30.588280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118576, 36.959656, 30.537374>,  <28.452963, 36.757202, 30.452534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118576, 36.959656, 30.537374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022487, -0.354580, 0.934755,
		0.548322, 0.786192, 0.285035,
		-0.835965, 0.506137, 0.212103,
		27.867786, 37.111496, 30.601006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617096, 36.966953, 31.044605>,  <28.452963, 36.757202, 30.452534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617096, 36.966953, 31.044605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220312, 37.011631, 31.020819>,  <27.982241, 37.038437, 31.006546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220312, 37.011631, 31.020819>,  <28.617096, 36.966953, 31.044605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220312, 37.011631, 31.020819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069031, -0.083807, 0.994088,
		0.106054, 0.990202, 0.090843,
		-0.991961, 0.111698, -0.059466,
		27.922724, 37.045139, 31.002979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526302, 37.484867, 31.465836>,  <28.617096, 36.966953, 31.044605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526302, 37.484867, 31.465836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177467, 37.292183, 31.431383>,  <27.968166, 37.176571, 31.410711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177467, 37.292183, 31.431383>,  <28.526302, 37.484867, 31.465836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177467, 37.292183, 31.431383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003284, -0.170250, 0.985395,
		-0.489340, 0.859633, 0.146891,
		-0.872087, -0.481711, -0.086133,
		27.915842, 37.147671, 31.405542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130127, 37.766033, 31.938049>,  <28.526302, 37.484867, 31.465836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130127, 37.766033, 31.938049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945646, 37.417244, 31.872381>,  <27.834959, 37.207970, 31.832981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945646, 37.417244, 31.872381>,  <28.130127, 37.766033, 31.938049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945646, 37.417244, 31.872381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024868, -0.197651, 0.979957,
		-0.886948, 0.447874, 0.112841,
		-0.461200, -0.871977, -0.164168,
		27.807285, 37.155651, 31.823132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531015, 37.809296, 32.431442>,  <28.130127, 37.766033, 31.938049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531015, 37.809296, 32.431442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555029, 37.422768, 32.331337>,  <27.569437, 37.190853, 32.271275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555029, 37.422768, 32.331337>,  <27.531015, 37.809296, 32.431442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555029, 37.422768, 32.331337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047327, -0.253185, 0.966259,
		-0.997074, -0.046166, -0.060933,
		0.060036, -0.966316, -0.250259,
		27.573040, 37.132874, 32.256260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027243, 37.495857, 32.829273>,  <27.531015, 37.809296, 32.431442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027243, 37.495857, 32.829273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267435, 37.195477, 32.719364>,  <27.411551, 37.015247, 32.653419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267435, 37.195477, 32.719364>,  <27.027243, 37.495857, 32.829273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267435, 37.195477, 32.719364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137095, -0.435213, 0.889829,
		-0.787799, -0.496656, -0.364289,
		0.600482, -0.750948, -0.274771,
		27.447580, 36.970192, 32.636932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750143, 36.904800, 33.118942>,  <27.027243, 37.495857, 32.829273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750143, 36.904800, 33.118942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141062, 36.842884, 33.061077>,  <27.375614, 36.805733, 33.026360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141062, 36.842884, 33.061077>,  <26.750143, 36.904800, 33.118942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141062, 36.842884, 33.061077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093173, -0.299219, 0.949625,
		-0.190281, -0.941545, -0.278004,
		0.977298, -0.154793, -0.144662,
		27.434252, 36.796444, 33.017677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851076, 36.169147, 33.382324>,  <26.750143, 36.904800, 33.118942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851076, 36.169147, 33.382324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207115, 36.351368, 33.376717>,  <27.420738, 36.460701, 33.373352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207115, 36.351368, 33.376717>,  <26.851076, 36.169147, 33.382324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207115, 36.351368, 33.376717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209107, -0.380848, 0.900682,
		0.404966, -0.804629, -0.434252,
		0.890099, 0.455551, -0.014023,
		27.474144, 36.488033, 33.372509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265688, 35.704941, 33.665272>,  <26.851076, 36.169147, 33.382324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265688, 35.704941, 33.665272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502335, 36.027412, 33.668530>,  <27.644323, 36.220894, 33.670483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502335, 36.027412, 33.668530>,  <27.265688, 35.704941, 33.665272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502335, 36.027412, 33.668530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229715, -0.178239, 0.956798,
		0.772800, -0.564188, -0.290641,
		0.591617, 0.806178, 0.008141,
		27.679819, 36.269264, 33.670971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857679, 35.509857, 34.046181>,  <27.265688, 35.704941, 33.665272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857679, 35.509857, 34.046181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.869810, 35.909000, 34.069397>,  <27.877089, 36.148487, 34.083324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.869810, 35.909000, 34.069397>,  <27.857679, 35.509857, 34.046181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869810, 35.909000, 34.069397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125698, -0.061411, 0.990166,
		0.991605, -0.022735, -0.127290,
		0.030328, 0.997853, 0.058037,
		27.878908, 36.208355, 34.086807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480387, 35.623608, 34.410324>,  <27.857679, 35.509857, 34.046181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480387, 35.623608, 34.410324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214514, 35.919502, 34.452251>,  <28.054989, 36.097038, 34.477409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214514, 35.919502, 34.452251>,  <28.480387, 35.623608, 34.410324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214514, 35.919502, 34.452251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021296, -0.158996, 0.987049,
		0.746821, 0.653844, 0.121436,
		-0.664684, 0.739735, 0.104818,
		28.015108, 36.141422, 34.483696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683321, 36.015316, 35.016804>,  <28.480387, 35.623608, 34.410324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683321, 36.015316, 35.016804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294270, 36.082092, 34.952148>,  <28.060839, 36.122158, 34.913357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294270, 36.082092, 34.952148>,  <28.683321, 36.015316, 35.016804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294270, 36.082092, 34.952148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183455, -0.124723, 0.975084,
		0.142622, 0.978046, 0.151935,
		-0.972627, 0.166942, -0.161640,
		28.002481, 36.132175, 34.903656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216135, 36.418068, 35.231449>,  <28.683321, 36.015316, 35.016804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216135, 36.418068, 35.231449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580057, 36.254139, 35.205223>,  <29.798410, 36.155781, 35.189487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580057, 36.254139, 35.205223>,  <29.216135, 36.418068, 35.231449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580057, 36.254139, 35.205223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194828, 0.561207, -0.804418,
		0.366468, 0.719089, 0.590434,
		0.909804, -0.409827, -0.065566,
		29.852999, 36.131191, 35.185555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594854, 37.008362, 35.163002>,  <29.216135, 36.418068, 35.231449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594854, 37.008362, 35.163002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817747, 36.697327, 35.046486>,  <29.951483, 36.510704, 34.976578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817747, 36.697327, 35.046486>,  <29.594854, 37.008362, 35.163002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817747, 36.697327, 35.046486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443682, 0.575348, -0.687111,
		0.701882, 0.253639, 0.665604,
		0.557232, -0.777587, -0.291291,
		29.984917, 36.464050, 34.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264273, 37.276485, 35.098652>,  <29.594854, 37.008362, 35.163002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264273, 37.276485, 35.098652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294151, 36.949970, 34.869530>,  <30.312078, 36.754063, 34.732056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294151, 36.949970, 34.869530>,  <30.264273, 37.276485, 35.098652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294151, 36.949970, 34.869530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309553, 0.565010, -0.764814,
		0.947944, -0.120185, 0.294886,
		0.074695, -0.816284, -0.572801,
		30.316559, 36.705086, 34.697689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883135, 37.260048, 34.775269>,  <30.264273, 37.276485, 35.098652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883135, 37.260048, 34.775269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667200, 37.016300, 34.542980>,  <30.537640, 36.870052, 34.403606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667200, 37.016300, 34.542980>,  <30.883135, 37.260048, 34.775269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667200, 37.016300, 34.542980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259379, 0.535899, -0.803452,
		0.800811, -0.584361, -0.131240,
		-0.539838, -0.609372, -0.580725,
		30.505249, 36.833488, 34.368763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341957, 37.147472, 34.141899>,  <30.883135, 37.260048, 34.775269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341957, 37.147472, 34.141899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967545, 37.060772, 34.030998>,  <30.742897, 37.008751, 33.964458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967545, 37.060772, 34.030998>,  <31.341957, 37.147472, 34.141899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967545, 37.060772, 34.030998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095414, 0.602001, -0.792774,
		0.338737, -0.768514, -0.542810,
		-0.936030, -0.216750, -0.277248,
		30.686735, 36.995747, 33.947823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415001, 37.073612, 33.489510>,  <31.341957, 37.147472, 34.141899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415001, 37.073612, 33.489510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.017618, 37.112099, 33.514107>,  <30.779188, 37.135189, 33.528866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.017618, 37.112099, 33.514107>,  <31.415001, 37.073612, 33.489510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017618, 37.112099, 33.514107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018095, 0.664409, -0.747150,
		-0.112745, -0.741151, -0.661804,
		-0.993460, 0.096213, 0.061498,
		30.719580, 37.140961, 33.532555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190800, 36.903961, 32.813171>,  <31.415001, 37.073612, 33.489510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190800, 36.903961, 32.813171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.890505, 37.095829, 32.994858>,  <30.710327, 37.210949, 33.103870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.890505, 37.095829, 32.994858>,  <31.190800, 36.903961, 32.813171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890505, 37.095829, 32.994858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211258, 0.477149, -0.853053,
		-0.625909, -0.736376, -0.256881,
		-0.750738, 0.479665, 0.454217,
		30.665283, 37.239727, 33.131123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688183, 36.744644, 32.339676>,  <31.190800, 36.903961, 32.813171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688183, 36.744644, 32.339676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576445, 37.059212, 32.560040>,  <30.509401, 37.247952, 32.692257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576445, 37.059212, 32.560040>,  <30.688183, 36.744644, 32.339676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576445, 37.059212, 32.560040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278520, 0.482720, -0.830306,
		-0.918908, -0.385382, 0.084189,
		-0.279346, 0.786423, 0.550912,
		30.492641, 37.295139, 32.725311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015324, 36.794052, 32.095860>,  <30.688183, 36.744644, 32.339676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015324, 36.794052, 32.095860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162231, 37.132301, 32.250797>,  <30.250376, 37.335251, 32.343761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162231, 37.132301, 32.250797>,  <30.015324, 36.794052, 32.095860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162231, 37.132301, 32.250797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319735, 0.505855, -0.801175,
		-0.873431, 0.170401, 0.456160,
		0.367271, 0.845621, 0.387346,
		30.272413, 37.385986, 32.367001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579676, 37.188423, 31.909863>,  <30.015324, 36.794052, 32.095860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579676, 37.188423, 31.909863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891539, 37.431072, 31.972004>,  <30.078657, 37.576664, 32.009289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891539, 37.431072, 31.972004>,  <29.579676, 37.188423, 31.909863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891539, 37.431072, 31.972004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190844, 0.466466, -0.863706,
		-0.596414, 0.643749, 0.479456,
		0.779660, 0.606627, 0.155352,
		30.125437, 37.613060, 32.018608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340883, 37.871479, 31.719877>,  <29.579676, 37.188423, 31.909863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340883, 37.871479, 31.719877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740705, 37.883358, 31.721058>,  <29.980598, 37.890484, 31.721767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740705, 37.883358, 31.721058>,  <29.340883, 37.871479, 31.719877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740705, 37.883358, 31.721058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011995, 0.490395, -0.871418,
		-0.027327, 0.870994, 0.490533,
		0.999555, 0.029697, 0.002953,
		30.040571, 37.892265, 31.721945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548731, 38.591736, 31.617378>,  <29.340883, 37.871479, 31.719877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548731, 38.591736, 31.617378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860712, 38.370628, 31.499994>,  <30.047901, 38.237965, 31.429564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860712, 38.370628, 31.499994>,  <29.548731, 38.591736, 31.617378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860712, 38.370628, 31.499994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146379, 0.617026, -0.773209,
		0.608481, 0.560108, 0.562165,
		0.779951, -0.552772, -0.293461,
		30.094698, 38.204796, 31.411957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896370, 39.067825, 31.268398>,  <29.548731, 38.591736, 31.617378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896370, 39.067825, 31.268398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.090012, 38.751987, 31.117573>,  <30.206198, 38.562485, 31.027077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.090012, 38.751987, 31.117573>,  <29.896370, 39.067825, 31.268398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090012, 38.751987, 31.117573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348022, 0.569126, -0.744968,
		0.802821, 0.229417, 0.550314,
		0.484107, -0.789597, -0.377064,
		30.235243, 38.515110, 31.004454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538101, 39.301968, 31.073511>,  <29.896370, 39.067825, 31.268398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538101, 39.301968, 31.073511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476812, 38.965321, 30.866358>,  <30.440039, 38.763332, 30.742065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476812, 38.965321, 30.866358>,  <30.538101, 39.301968, 31.073511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476812, 38.965321, 30.866358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280667, 0.465425, -0.839408,
		0.947496, -0.273968, 0.164901,
		-0.153222, -0.841618, -0.517882,
		30.430845, 38.712833, 30.710993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142941, 39.295734, 30.585024>,  <30.538101, 39.301968, 31.073511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142941, 39.295734, 30.585024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.884943, 39.044945, 30.410263>,  <30.730145, 38.894470, 30.305407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.884943, 39.044945, 30.410263>,  <31.142941, 39.295734, 30.585024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884943, 39.044945, 30.410263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187431, 0.424467, -0.885831,
		0.740845, -0.653246, -0.156264,
		-0.644994, -0.626975, -0.436903,
		30.691444, 38.856853, 30.279192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469778, 39.051582, 30.019321>,  <31.142941, 39.295734, 30.585024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469778, 39.051582, 30.019321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.082672, 38.995220, 29.935822>,  <30.850409, 38.961403, 29.885721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.082672, 38.995220, 29.935822>,  <31.469778, 39.051582, 30.019321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082672, 38.995220, 29.935822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152052, 0.333870, -0.930275,
		0.200780, -0.932028, -0.301682,
		-0.967764, -0.140909, -0.208751,
		30.792343, 38.952950, 29.873196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357296, 38.663002, 29.264032>,  <31.469778, 39.051582, 30.019321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357296, 38.663002, 29.264032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010805, 38.851437, 29.330643>,  <30.802912, 38.964497, 29.370609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010805, 38.851437, 29.330643>,  <31.357296, 38.663002, 29.264032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010805, 38.851437, 29.330643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058506, 0.426622, -0.902536,
		-0.496216, -0.772057, -0.397112,
		-0.866226, 0.471086, 0.166527,
		30.750937, 38.992764, 29.380600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009077, 38.528454, 28.642595>,  <31.357296, 38.663002, 29.264032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009077, 38.528454, 28.642595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.822065, 38.817837, 28.845779>,  <30.709858, 38.991467, 28.967690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.822065, 38.817837, 28.845779>,  <31.009077, 38.528454, 28.642595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822065, 38.817837, 28.845779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009652, 0.570416, -0.821299,
		-0.883926, -0.388883, -0.259702,
		-0.467528, 0.723461, 0.507959,
		30.681807, 39.034874, 28.998167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401381, 38.678902, 28.252827>,  <31.009077, 38.528454, 28.642595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401381, 38.678902, 28.252827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490974, 39.006035, 28.464855>,  <30.544731, 39.202316, 28.592073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490974, 39.006035, 28.464855>,  <30.401381, 38.678902, 28.252827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490974, 39.006035, 28.464855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107931, 0.561362, -0.820502,
		-0.968598, 0.126568, 0.214006,
		0.223985, 0.817834, 0.530073,
		30.558170, 39.251385, 28.623877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019094, 39.238045, 27.972094>,  <30.401381, 38.678902, 28.252827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019094, 39.238045, 27.972094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266258, 39.449875, 28.204556>,  <30.414557, 39.576973, 28.344032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266258, 39.449875, 28.204556>,  <30.019094, 39.238045, 27.972094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266258, 39.449875, 28.204556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072120, 0.774207, -0.628810,
		-0.782937, 0.346633, 0.516581,
		0.617907, 0.529574, 0.581156,
		30.451630, 39.608746, 28.378902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699938, 39.966080, 28.114666>,  <30.019094, 39.238045, 27.972094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699938, 39.966080, 28.114666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097567, 39.999981, 28.141916>,  <30.336143, 40.020321, 28.158266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097567, 39.999981, 28.141916>,  <29.699938, 39.966080, 28.114666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097567, 39.999981, 28.141916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023065, 0.776600, -0.629572,
		-0.106266, 0.624267, 0.773950,
		0.994070, 0.084754, 0.068127,
		30.395788, 40.025406, 28.162354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815380, 40.570965, 28.104588>,  <29.699938, 39.966080, 28.114666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815380, 40.570965, 28.104588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190760, 40.469002, 28.011343>,  <30.415987, 40.407825, 27.955397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190760, 40.469002, 28.011343>,  <29.815380, 40.570965, 28.104588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190760, 40.469002, 28.011343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113643, 0.865127, -0.488509,
		0.326194, 0.431948, 0.840844,
		0.938447, -0.254905, -0.233111,
		30.472294, 40.392529, 27.941410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303112, 41.175007, 28.294464>,  <29.815380, 40.570965, 28.104588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303112, 41.175007, 28.294464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.439377, 40.945202, 27.996769>,  <30.521135, 40.807320, 27.818151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.439377, 40.945202, 27.996769>,  <30.303112, 41.175007, 28.294464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439377, 40.945202, 27.996769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011868, 0.788893, -0.614415,
		0.940111, 0.218141, 0.261928,
		0.340663, -0.574510, -0.744236,
		30.541576, 40.772850, 27.773499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.044952, 32.784218, 43.355122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715717, 32.637890, 43.181358>,  <36.518177, 32.550095, 43.077099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715717, 32.637890, 43.181358>,  <37.044952, 32.784218, 43.355122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715717, 32.637890, 43.181358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194325, -0.537328, 0.820681,
		-0.533638, 0.759906, 0.371179,
		-0.823085, -0.365817, -0.434407,
		36.468792, 32.528145, 43.051037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479000, 32.984344, 43.737213>,  <37.044952, 32.784218, 43.355122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479000, 32.984344, 43.737213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399082, 32.646351, 43.538784>,  <36.351131, 32.443554, 43.419727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399082, 32.646351, 43.538784>,  <36.479000, 32.984344, 43.737213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399082, 32.646351, 43.538784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203454, -0.459471, 0.864577,
		-0.958483, 0.273665, -0.080115,
		-0.199794, -0.844982, -0.496073,
		36.339146, 32.392857, 43.389961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863892, 32.711235, 44.047825>,  <36.479000, 32.984344, 43.737213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863892, 32.711235, 44.047825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051975, 32.405300, 43.871677>,  <36.164825, 32.221741, 43.765987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051975, 32.405300, 43.871677>,  <35.863892, 32.711235, 44.047825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051975, 32.405300, 43.871677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256572, -0.595887, 0.760979,
		-0.844434, -0.244837, -0.476430,
		0.470214, -0.764836, -0.440369,
		36.193039, 32.175850, 43.739567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301830, 32.167454, 43.969341>,  <35.863892, 32.711235, 44.047825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301830, 32.167454, 43.969341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657166, 31.984301, 43.955494>,  <35.870365, 31.874409, 43.947186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657166, 31.984301, 43.955494>,  <35.301830, 32.167454, 43.969341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657166, 31.984301, 43.955494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338581, -0.704075, 0.624212,
		-0.310186, -0.542792, -0.780488,
		0.888340, -0.457880, -0.034615,
		35.923668, 31.846937, 43.945110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120583, 31.452024, 44.067875>,  <35.301830, 32.167454, 43.969341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120583, 31.452024, 44.067875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509857, 31.460327, 44.159508>,  <35.743423, 31.465309, 44.214485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509857, 31.460327, 44.159508>,  <35.120583, 31.452024, 44.067875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509857, 31.460327, 44.159508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141378, -0.731615, 0.666898,
		0.181440, -0.681403, -0.709063,
		0.973187, 0.020756, 0.229079,
		35.801815, 31.466555, 44.228230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376335, 30.774549, 43.966988>,  <35.120583, 31.452024, 44.067875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376335, 30.774549, 43.966988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637989, 30.925402, 44.229248>,  <35.794983, 31.015913, 44.386604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637989, 30.925402, 44.229248>,  <35.376335, 30.774549, 43.966988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637989, 30.925402, 44.229248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138811, -0.792252, 0.594195,
		0.743528, -0.479698, -0.465893,
		0.654139, 0.377129, 0.655649,
		35.834232, 31.038540, 44.425941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571102, 30.198357, 44.411911>,  <35.376335, 30.774549, 43.966988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571102, 30.198357, 44.411911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684502, 30.519293, 44.622009>,  <35.752541, 30.711855, 44.748066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684502, 30.519293, 44.622009>,  <35.571102, 30.198357, 44.411911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684502, 30.519293, 44.622009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188192, -0.490517, 0.850868,
		0.940326, -0.340065, 0.011935,
		0.283496, 0.802340, 0.525244,
		35.769550, 30.759995, 44.779583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865829, 29.938534, 45.043030>,  <35.571102, 30.198357, 44.411911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865829, 29.938534, 45.043030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747711, 30.309603, 45.134441>,  <35.676842, 30.532244, 45.189289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747711, 30.309603, 45.134441>,  <35.865829, 29.938534, 45.043030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747711, 30.309603, 45.134441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138317, -0.278182, 0.950518,
		0.945341, 0.249076, 0.210459,
		-0.295296, 0.927673, 0.228525,
		35.659122, 30.587904, 45.202999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165424, 30.036789, 45.791683>,  <35.865829, 29.938534, 45.043030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165424, 30.036789, 45.791683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861961, 30.289080, 45.726421>,  <35.679882, 30.440454, 45.687263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861961, 30.289080, 45.726421>,  <36.165424, 30.036789, 45.791683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861961, 30.289080, 45.726421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460334, -0.341757, 0.819326,
		0.461011, 0.696695, 0.549622,
		-0.758658, 0.630728, -0.163158,
		35.634365, 30.478298, 45.677475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115170, 30.423817, 46.500969>,  <36.165424, 30.036789, 45.791683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115170, 30.423817, 46.500969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776031, 30.437433, 46.289310>,  <35.572548, 30.445602, 46.162315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776031, 30.437433, 46.289310>,  <36.115170, 30.423817, 46.500969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776031, 30.437433, 46.289310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474267, -0.494941, 0.728083,
		-0.237111, 0.868260, 0.435780,
		-0.847850, 0.034040, -0.529143,
		35.521675, 30.447645, 46.130569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610413, 30.536318, 46.979874>,  <36.115170, 30.423817, 46.500969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610413, 30.536318, 46.979874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396633, 30.422159, 46.661652>,  <35.268364, 30.353664, 46.470718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396633, 30.422159, 46.661652>,  <35.610413, 30.536318, 46.979874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396633, 30.422159, 46.661652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643269, -0.473203, 0.601900,
		-0.548240, 0.833444, 0.069318,
		-0.534451, -0.285395, -0.795557,
		35.236298, 30.336540, 46.422985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864922, 30.828583, 46.975323>,  <35.610413, 30.536318, 46.979874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864922, 30.828583, 46.975323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881603, 30.484983, 46.771214>,  <34.891613, 30.278824, 46.648746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881603, 30.484983, 46.771214>,  <34.864922, 30.828583, 46.975323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881603, 30.484983, 46.771214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673485, -0.401421, 0.620708,
		-0.738023, 0.317776, -0.595265,
		0.041706, -0.858999, -0.510276,
		34.894115, 30.227283, 46.618130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019943, 31.457230, 47.265724>,  <34.864922, 30.828583, 46.975323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019943, 31.457230, 47.265724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386791, 31.302637, 47.226692>,  <35.606899, 31.209883, 47.203274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386791, 31.302637, 47.226692>,  <35.019943, 31.457230, 47.265724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386791, 31.302637, 47.226692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068562, -0.088203, 0.993740,
		-0.392668, -0.918070, -0.054395,
		0.917121, -0.386481, -0.097579,
		35.661926, 31.186693, 47.197418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374260, 31.741901, 47.333645>,  <35.019943, 31.457230, 47.265724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374260, 31.741901, 47.333645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034920, 31.597006, 47.179199>,  <33.831314, 31.510069, 47.086533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034920, 31.597006, 47.179199>,  <34.374260, 31.741901, 47.333645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034920, 31.597006, 47.179199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172746, 0.878767, -0.444889,
		0.500458, -0.310723, -0.808080,
		-0.848352, -0.362241, -0.386110,
		33.780415, 31.488333, 47.063366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504524, 31.683048, 46.649628>,  <34.374260, 31.741901, 47.333645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504524, 31.683048, 46.649628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115921, 31.722290, 46.735920>,  <33.882759, 31.745834, 46.787697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115921, 31.722290, 46.735920>,  <34.504524, 31.683048, 46.649628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115921, 31.722290, 46.735920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044471, 0.818659, -0.572555,
		-0.232782, -0.565838, -0.790974,
		-0.971512, 0.098105, 0.215733,
		33.824467, 31.751722, 46.800640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151520, 31.675661, 46.030392>,  <34.504524, 31.683048, 46.649628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151520, 31.675661, 46.030392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934330, 31.863865, 46.308613>,  <33.804016, 31.976788, 46.475548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934330, 31.863865, 46.308613>,  <34.151520, 31.675661, 46.030392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934330, 31.863865, 46.308613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011785, 0.832478, -0.553932,
		-0.839665, -0.292576, -0.457562,
		-0.542977, 0.470510, 0.695554,
		33.771439, 32.005016, 46.517281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595703, 31.910580, 45.718204>,  <34.151520, 31.675661, 46.030392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595703, 31.910580, 45.718204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619293, 32.133381, 46.049568>,  <33.633446, 32.267063, 46.248386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619293, 32.133381, 46.049568>,  <33.595703, 31.910580, 45.718204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619293, 32.133381, 46.049568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142954, 0.816592, -0.559233,
		-0.987971, 0.151406, -0.031468,
		0.058975, 0.557005, 0.828413,
		33.636986, 32.300484, 46.298092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156502, 32.449158, 45.603531>,  <33.595703, 31.910580, 45.718204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156502, 32.449158, 45.603531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371033, 32.587624, 45.911434>,  <33.499752, 32.670704, 46.096176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371033, 32.587624, 45.911434>,  <33.156502, 32.449158, 45.603531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371033, 32.587624, 45.911434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067245, 0.891595, -0.447813,
		-0.841328, 0.291936, 0.454907,
		0.536325, 0.346168, 0.769755,
		33.531929, 32.691475, 46.142361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805561, 33.000397, 45.865524>,  <33.156502, 32.449158, 45.603531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805561, 33.000397, 45.865524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186607, 33.051022, 45.976162>,  <33.415234, 33.081398, 46.042545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186607, 33.051022, 45.976162>,  <32.805561, 33.000397, 45.865524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186607, 33.051022, 45.976162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023478, 0.876021, -0.481701,
		-0.303272, 0.465369, 0.831539,
		0.952615, 0.126564, 0.276599,
		33.472393, 33.088989, 46.059143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875160, 33.719570, 46.010433>,  <32.805561, 33.000397, 45.865524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875160, 33.719570, 46.010433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259193, 33.609100, 45.992706>,  <33.489613, 33.542816, 45.982071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259193, 33.609100, 45.992706>,  <32.875160, 33.719570, 46.010433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259193, 33.609100, 45.992706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227560, 0.863346, -0.450388,
		0.162646, 0.422327, 0.891733,
		0.960085, -0.276176, -0.044315,
		33.547218, 33.526249, 45.979412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217911, 34.240044, 46.293941>,  <32.875160, 33.719570, 46.010433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217911, 34.240044, 46.293941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509586, 34.059551, 46.088154>,  <33.684589, 33.951256, 45.964680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509586, 34.059551, 46.088154>,  <33.217911, 34.240044, 46.293941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509586, 34.059551, 46.088154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303868, 0.887123, -0.347387,
		0.613151, 0.096977, 0.783990,
		0.729184, -0.451230, -0.514472,
		33.728340, 33.924183, 45.933811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699440, 34.776909, 46.181965>,  <33.217911, 34.240044, 46.293941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699440, 34.776909, 46.181965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790897, 34.511425, 45.897091>,  <33.845772, 34.352135, 45.726166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790897, 34.511425, 45.897091>,  <33.699440, 34.776909, 46.181965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790897, 34.511425, 45.897091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439650, 0.723110, -0.532747,
		0.868579, -0.191302, 0.457137,
		0.228644, -0.663714, -0.712184,
		33.859489, 34.312309, 45.683437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343010, 34.861073, 46.157616>,  <33.699440, 34.776909, 46.181965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343010, 34.861073, 46.157616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237125, 34.702499, 45.805984>,  <34.173595, 34.607357, 45.595005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237125, 34.702499, 45.805984>,  <34.343010, 34.861073, 46.157616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237125, 34.702499, 45.805984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451257, 0.754701, -0.476229,
		0.852230, -0.522750, -0.020885,
		-0.264711, -0.396432, -0.879073,
		34.157711, 34.583569, 45.542263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922409, 34.950661, 45.654411>,  <34.343010, 34.861073, 46.157616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922409, 34.950661, 45.654411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619373, 34.821819, 45.427326>,  <34.437550, 34.744514, 45.291073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619373, 34.821819, 45.427326>,  <34.922409, 34.950661, 45.654411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619373, 34.821819, 45.427326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335676, 0.553675, -0.762079,
		0.559821, -0.767906, -0.311321,
		-0.757576, -0.322125, -0.567727,
		34.392094, 34.725189, 45.257011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240101, 34.596313, 45.048725>,  <34.922409, 34.950661, 45.654411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240101, 34.596313, 45.048725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877815, 34.733780, 44.949463>,  <34.660446, 34.816261, 44.889904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877815, 34.733780, 44.949463>,  <35.240101, 34.596313, 45.048725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877815, 34.733780, 44.949463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405015, 0.528818, -0.745865,
		-0.125100, -0.776044, -0.618146,
		-0.905711, 0.343666, -0.248154,
		34.606102, 34.836880, 44.875015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201515, 34.544285, 44.257339>,  <35.240101, 34.596313, 45.048725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201515, 34.544285, 44.257339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914852, 34.798676, 44.371841>,  <34.742855, 34.951309, 44.440540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914852, 34.798676, 44.371841>,  <35.201515, 34.544285, 44.257339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914852, 34.798676, 44.371841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217131, 0.593502, -0.774990,
		-0.662764, -0.493249, -0.563427,
		-0.716658, 0.635973, 0.286252,
		34.699856, 34.989468, 44.457718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773293, 34.608662, 43.742130>,  <35.201515, 34.544285, 44.257339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773293, 34.608662, 43.742130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713802, 34.945065, 43.950203>,  <34.678108, 35.146908, 44.075047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713802, 34.945065, 43.950203>,  <34.773293, 34.608662, 43.742130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713802, 34.945065, 43.950203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146711, 0.538975, -0.829446,
		-0.977934, -0.047046, -0.203545,
		-0.148728, 0.841007, 0.520180,
		34.669186, 35.197365, 44.106258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344475, 35.025463, 43.321358>,  <34.773293, 34.608662, 43.742130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344475, 35.025463, 43.321358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544941, 35.252079, 43.583004>,  <34.665222, 35.388046, 43.739994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544941, 35.252079, 43.583004>,  <34.344475, 35.025463, 43.321358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544941, 35.252079, 43.583004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475944, 0.450839, -0.755130,
		-0.722710, 0.689768, -0.043694,
		0.501166, 0.566536, 0.654117,
		34.695290, 35.422039, 43.779240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645119, 35.334396, 43.373093>,  <34.344475, 35.025463, 43.321358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645119, 35.334396, 43.373093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329659, 35.475574, 43.171711>,  <33.140385, 35.560284, 43.050884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329659, 35.475574, 43.171711>,  <33.645119, 35.334396, 43.373093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329659, 35.475574, 43.171711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603191, -0.602810, 0.522284,
		-0.119147, 0.715575, 0.688300,
		-0.788647, 0.352948, -0.503451,
		33.093063, 35.581459, 43.020676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280521, 35.610451, 43.888653>,  <33.645119, 35.334396, 43.373093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280521, 35.610451, 43.888653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023788, 35.530403, 43.592545>,  <32.869747, 35.482372, 43.414879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023788, 35.530403, 43.592545>,  <33.280521, 35.610451, 43.888653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023788, 35.530403, 43.592545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546480, -0.557860, 0.624622,
		-0.537969, 0.805445, 0.248690,
		-0.641833, -0.200123, -0.740271,
		32.831238, 35.470367, 43.370464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672363, 35.745247, 44.166698>,  <33.280521, 35.610451, 43.888653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672363, 35.745247, 44.166698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571144, 35.524342, 43.848965>,  <32.510410, 35.391796, 43.658325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571144, 35.524342, 43.848965>,  <32.672363, 35.745247, 44.166698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571144, 35.524342, 43.848965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610432, -0.545840, 0.573962,
		-0.750559, 0.630129, -0.198996,
		-0.253050, -0.552265, -0.794335,
		32.495228, 35.358662, 43.610664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905209, 35.676399, 44.265850>,  <32.672363, 35.745247, 44.166698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905209, 35.676399, 44.265850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999432, 35.374828, 44.020538>,  <32.055965, 35.193886, 43.873352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999432, 35.374828, 44.020538>,  <31.905209, 35.676399, 44.265850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999432, 35.374828, 44.020538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557862, -0.621613, 0.549897,
		-0.795803, 0.212592, -0.567012,
		0.235558, -0.753924, -0.613278,
		32.070099, 35.148651, 43.836555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283894, 35.430031, 44.110474>,  <31.905209, 35.676399, 44.265850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283894, 35.430031, 44.110474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568762, 35.157959, 44.041000>,  <31.739683, 34.994717, 43.999317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568762, 35.157959, 44.041000>,  <31.283894, 35.430031, 44.110474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568762, 35.157959, 44.041000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448249, -0.631005, 0.633171,
		-0.540263, -0.373076, -0.754275,
		0.712172, -0.680182, -0.173677,
		31.782413, 34.953903, 43.988895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835039, 34.844837, 44.100533>,  <31.283894, 35.430031, 44.110474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835039, 34.844837, 44.100533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212511, 34.712841, 44.110065>,  <31.438995, 34.633644, 44.115784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212511, 34.712841, 44.110065>,  <30.835039, 34.844837, 44.100533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212511, 34.712841, 44.110065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275959, -0.745322, 0.606911,
		-0.182514, -0.579308, -0.794412,
		0.943682, -0.329995, 0.023834,
		31.495615, 34.613842, 44.117214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750137, 34.263119, 43.785671>,  <30.835039, 34.844837, 44.100533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750137, 34.263119, 43.785671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.071316, 34.268147, 44.024036>,  <31.264023, 34.271164, 44.167057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.071316, 34.268147, 44.024036>,  <30.750137, 34.263119, 43.785671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071316, 34.268147, 44.024036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387850, -0.748145, 0.538378,
		0.452601, -0.663416, -0.595846,
		0.802948, 0.012571, 0.595917,
		31.312201, 34.271919, 44.202812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529528, 33.861874, 43.159714>,  <30.750137, 34.263119, 43.785671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529528, 33.861874, 43.159714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487658, 33.491680, 43.014095>,  <30.462536, 33.269566, 42.926723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487658, 33.491680, 43.014095>,  <30.529528, 33.861874, 43.159714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487658, 33.491680, 43.014095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769195, 0.156689, -0.619506,
		0.630383, -0.344868, 0.695473,
		-0.104675, -0.925481, -0.364045,
		30.456255, 33.214035, 42.904881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112272, 33.607250, 43.178318>,  <30.529528, 33.861874, 43.159714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112272, 33.607250, 43.178318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946764, 33.383400, 42.891094>,  <30.847458, 33.249088, 42.718761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946764, 33.383400, 42.891094>,  <31.112272, 33.607250, 43.178318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946764, 33.383400, 42.891094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752894, 0.233070, -0.615491,
		0.511805, -0.795295, 0.324904,
		-0.413771, -0.559629, -0.718059,
		30.822632, 33.215511, 42.675678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687662, 33.253876, 42.904324>,  <31.112272, 33.607250, 43.178318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687662, 33.253876, 42.904324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400604, 33.221638, 42.627632>,  <31.228371, 33.202293, 42.461617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400604, 33.221638, 42.627632>,  <31.687662, 33.253876, 42.904324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400604, 33.221638, 42.627632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634744, 0.332944, -0.697315,
		0.286510, -0.939496, -0.187776,
		-0.717643, -0.080598, -0.691731,
		31.185312, 33.197456, 42.420113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962233, 33.021729, 42.356777>,  <31.687662, 33.253876, 42.904324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962233, 33.021729, 42.356777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634089, 33.142654, 42.162613>,  <31.437202, 33.215210, 42.046116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634089, 33.142654, 42.162613>,  <31.962233, 33.021729, 42.356777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634089, 33.142654, 42.162613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571016, 0.387244, -0.723867,
		-0.030862, -0.871005, -0.490303,
		-0.820359, 0.302311, -0.485407,
		31.387981, 33.233349, 42.016991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934286, 32.763744, 41.587311>,  <31.962233, 33.021729, 42.356777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934286, 32.763744, 41.587311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698298, 33.086628, 41.594795>,  <31.556705, 33.280357, 41.599285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698298, 33.086628, 41.594795>,  <31.934286, 32.763744, 41.587311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698298, 33.086628, 41.594795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373355, 0.293282, -0.880109,
		-0.715920, -0.512250, -0.474403,
		-0.589970, 0.807208, 0.018715,
		31.521307, 33.328789, 41.600410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643404, 32.778488, 40.955338>,  <31.934286, 32.763744, 41.587311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643404, 32.778488, 40.955338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601997, 33.155254, 41.083134>,  <31.577154, 33.381313, 41.159813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601997, 33.155254, 41.083134>,  <31.643404, 32.778488, 40.955338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601997, 33.155254, 41.083134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383611, 0.334176, -0.860912,
		-0.917675, 0.033443, -0.395923,
		-0.103516, 0.941917, 0.319494,
		31.570942, 33.437828, 41.178982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370962, 33.215069, 40.348679>,  <31.643404, 32.778488, 40.955338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370962, 33.215069, 40.348679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515705, 33.496048, 40.593830>,  <31.602551, 33.664635, 40.740921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515705, 33.496048, 40.593830>,  <31.370962, 33.215069, 40.348679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515705, 33.496048, 40.593830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149565, 0.605174, -0.781917,
		-0.920158, 0.374607, 0.113925,
		0.361856, 0.702448, 0.612884,
		31.624262, 33.706783, 40.777695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.751808, 28.789059, 43.690037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864944, 29.132601, 43.860859>,  <33.932827, 29.338726, 43.963352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864944, 29.132601, 43.860859>,  <33.751808, 28.789059, 43.690037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864944, 29.132601, 43.860859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535265, 0.510786, -0.672748,
		-0.795924, -0.038307, 0.604184,
		0.282838, 0.858854, 0.427051,
		33.949795, 29.390257, 43.988976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125725, 29.217585, 43.893372>,  <33.751808, 28.789059, 43.690037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125725, 29.217585, 43.893372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454556, 29.434292, 43.823307>,  <33.651852, 29.564316, 43.781269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454556, 29.434292, 43.823307>,  <33.125725, 29.217585, 43.893372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454556, 29.434292, 43.823307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512683, 0.570496, -0.641630,
		-0.247687, 0.617269, 0.746746,
		0.822075, 0.541768, -0.175159,
		33.701180, 29.596823, 43.770760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888626, 29.951912, 43.858566>,  <33.125725, 29.217585, 43.893372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888626, 29.951912, 43.858566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.248177, 29.930601, 43.684586>,  <33.463905, 29.917814, 43.580196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.248177, 29.930601, 43.684586>,  <32.888626, 29.951912, 43.858566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248177, 29.930601, 43.684586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304247, 0.638467, -0.706961,
		0.315370, 0.767803, 0.557692,
		0.898875, -0.053279, -0.434955,
		33.517838, 29.914618, 43.554100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028191, 30.623444, 43.713852>,  <32.888626, 29.951912, 43.858566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028191, 30.623444, 43.713852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306046, 30.475237, 43.467209>,  <33.472759, 30.386312, 43.319225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306046, 30.475237, 43.467209>,  <33.028191, 30.623444, 43.713852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306046, 30.475237, 43.467209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290508, 0.639665, -0.711642,
		0.658096, 0.673459, 0.336694,
		0.694633, -0.370516, -0.616606,
		33.514435, 30.364082, 43.282227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460007, 31.167086, 43.510399>,  <33.028191, 30.623444, 43.713852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460007, 31.167086, 43.510399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.484745, 30.883503, 43.229385>,  <33.499588, 30.713354, 43.060776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.484745, 30.883503, 43.229385>,  <33.460007, 31.167086, 43.510399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484745, 30.883503, 43.229385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113397, 0.694335, -0.710662,
		0.991623, 0.123614, -0.037455,
		0.061841, -0.708956, -0.702536,
		33.503296, 30.670816, 43.018623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960972, 31.472431, 43.020172>,  <33.460007, 31.167086, 43.510399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960972, 31.472431, 43.020172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776009, 31.172398, 42.831047>,  <33.665031, 30.992378, 42.717571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776009, 31.172398, 42.831047>,  <33.960972, 31.472431, 43.020172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776009, 31.172398, 42.831047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351286, 0.334630, -0.874426,
		0.814110, -0.570436, 0.108757,
		-0.462410, -0.750084, -0.472812,
		33.637287, 30.947372, 42.689205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451588, 31.266069, 42.463703>,  <33.960972, 31.472431, 43.020172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451588, 31.266069, 42.463703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.099121, 31.127270, 42.335239>,  <33.887642, 31.043989, 42.258163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.099121, 31.127270, 42.335239>,  <34.451588, 31.266069, 42.463703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099121, 31.127270, 42.335239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262281, 0.206418, -0.942656,
		0.393396, -0.914867, -0.090876,
		-0.881163, -0.347002, -0.321156,
		33.834770, 31.023169, 42.238892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575848, 30.750174, 41.953320>,  <34.451588, 31.266069, 42.463703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575848, 30.750174, 41.953320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.200459, 30.871786, 41.887802>,  <33.975224, 30.944754, 41.848492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.200459, 30.871786, 41.887802>,  <34.575848, 30.750174, 41.953320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200459, 30.871786, 41.887802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233835, 0.210390, -0.949240,
		-0.254139, -0.929139, -0.268540,
		-0.938474, 0.304033, -0.163797,
		33.918915, 30.962996, 41.838661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425114, 30.594786, 41.271843>,  <34.575848, 30.750174, 41.953320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425114, 30.594786, 41.271843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.123337, 30.846401, 41.346802>,  <33.942268, 30.997372, 41.391777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.123337, 30.846401, 41.346802>,  <34.425114, 30.594786, 41.271843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123337, 30.846401, 41.346802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001140, 0.284257, -0.958747,
		-0.656361, -0.723537, -0.213739,
		-0.754447, 0.629040, 0.187400,
		33.897003, 31.035112, 41.403023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976177, 30.356255, 40.816906>,  <34.425114, 30.594786, 41.271843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976177, 30.356255, 40.816906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.897045, 30.733631, 40.923321>,  <33.849564, 30.960058, 40.987171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.897045, 30.733631, 40.923321>,  <33.976177, 30.356255, 40.816906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897045, 30.733631, 40.923321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052714, 0.260771, -0.963961,
		-0.978817, -0.204729, -0.001857,
		-0.197834, 0.943443, 0.266039,
		33.837696, 31.016665, 41.003132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382576, 30.519884, 40.441010>,  <33.976177, 30.356255, 40.816906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382576, 30.519884, 40.441010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569363, 30.858927, 40.541805>,  <33.681435, 31.062353, 40.602283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569363, 30.858927, 40.541805>,  <33.382576, 30.519884, 40.441010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569363, 30.858927, 40.541805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074167, 0.246425, -0.966320,
		-0.881158, 0.469930, 0.052208,
		0.466968, 0.847609, 0.251992,
		33.709454, 31.113209, 40.617401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080059, 30.958977, 40.024288>,  <33.382576, 30.519884, 40.441010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080059, 30.958977, 40.024288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415794, 31.147142, 40.133266>,  <33.617233, 31.260042, 40.198654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415794, 31.147142, 40.133266>,  <33.080059, 30.958977, 40.024288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415794, 31.147142, 40.133266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137975, 0.300408, -0.943779,
		-0.525812, 0.829737, 0.187237,
		0.839336, 0.470416, 0.272442,
		33.667595, 31.288267, 40.215000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446838, 31.392971, 39.988491>,  <33.080059, 30.958977, 40.024288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446838, 31.392971, 39.988491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107765, 31.326159, 39.787079>,  <31.904322, 31.286072, 39.666233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107765, 31.326159, 39.787079>,  <32.446838, 31.392971, 39.988491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107765, 31.326159, 39.787079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200673, -0.777665, 0.595792,
		-0.491092, 0.606085, 0.625692,
		-0.847679, -0.167029, -0.503529,
		31.853462, 31.276051, 39.636021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925669, 31.391666, 40.466522>,  <32.446838, 31.392971, 39.988491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925669, 31.391666, 40.466522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813766, 31.168062, 40.154305>,  <31.746626, 31.033899, 39.966976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813766, 31.168062, 40.154305>,  <31.925669, 31.391666, 40.466522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813766, 31.168062, 40.154305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290506, -0.725601, 0.623787,
		-0.915064, 0.401260, 0.040595,
		-0.279756, -0.559012, -0.780540,
		31.729839, 31.000359, 39.920143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255741, 31.203386, 40.553005>,  <31.925669, 31.391666, 40.466522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255741, 31.203386, 40.553005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.388088, 30.926081, 40.296909>,  <31.467497, 30.759697, 40.143250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.388088, 30.926081, 40.296909>,  <31.255741, 31.203386, 40.553005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388088, 30.926081, 40.296909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449418, -0.712335, 0.539075,
		-0.829790, 0.109375, -0.547253,
		0.330866, -0.693264, -0.640244,
		31.487349, 30.718102, 40.104836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758385, 30.708319, 40.615726>,  <31.255741, 31.203386, 40.553005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758385, 30.708319, 40.615726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055458, 30.526590, 40.418945>,  <31.233702, 30.417553, 40.300877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055458, 30.526590, 40.418945>,  <30.758385, 30.708319, 40.615726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055458, 30.526590, 40.418945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326689, -0.887108, 0.326058,
		-0.584548, -0.081443, -0.807262,
		0.742684, -0.454320, -0.491950,
		31.278263, 30.390295, 40.271358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457642, 30.136185, 40.246395>,  <30.758385, 30.708319, 40.615726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457642, 30.136185, 40.246395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.845671, 30.042433, 40.271774>,  <31.078487, 29.986181, 40.287003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.845671, 30.042433, 40.271774>,  <30.457642, 30.136185, 40.246395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845671, 30.042433, 40.271774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213046, -0.696203, 0.685502,
		-0.116494, -0.678504, -0.725301,
		0.970073, -0.234379, 0.063450,
		31.136692, 29.972118, 40.290810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479809, 29.437597, 40.317642>,  <30.457642, 30.136185, 40.246395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479809, 29.437597, 40.317642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843468, 29.509579, 40.467880>,  <31.061663, 29.552767, 40.558022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.843468, 29.509579, 40.467880>,  <30.479809, 29.437597, 40.317642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843468, 29.509579, 40.467880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154286, -0.692140, 0.705081,
		0.386843, -0.698970, -0.601492,
		0.909147, 0.179954, 0.375591,
		31.116211, 29.563564, 40.580559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768921, 28.738895, 40.521362>,  <30.479809, 29.437597, 40.317642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768921, 28.738895, 40.521362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.965065, 29.031214, 40.711304>,  <31.082752, 29.206604, 40.825268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.965065, 29.031214, 40.711304>,  <30.768921, 28.738895, 40.521362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965065, 29.031214, 40.711304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313850, -0.360229, 0.878484,
		0.813047, -0.579806, 0.052717,
		0.490360, 0.730794, 0.474855,
		31.112173, 29.250452, 40.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165670, 28.463247, 41.132366>,  <30.768921, 28.738895, 40.521362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165670, 28.463247, 41.132366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144226, 28.851196, 41.227425>,  <31.131359, 29.083965, 41.284458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144226, 28.851196, 41.227425>,  <31.165670, 28.463247, 41.132366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144226, 28.851196, 41.227425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187667, -0.243530, 0.951564,
		0.980769, 0.006414, 0.195069,
		-0.053609, 0.969872, 0.237643,
		31.128143, 29.142159, 41.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533241, 28.634277, 41.815605>,  <31.165670, 28.463247, 41.132366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533241, 28.634277, 41.815605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.294388, 28.949514, 41.755814>,  <31.151075, 29.138657, 41.719936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.294388, 28.949514, 41.755814>,  <31.533241, 28.634277, 41.815605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294388, 28.949514, 41.755814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137781, 0.082813, 0.986995,
		0.790221, 0.609963, 0.059134,
		-0.597133, 0.788091, -0.149482,
		31.115248, 29.185942, 41.710968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762915, 29.088072, 42.282169>,  <31.533241, 28.634277, 41.815605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762915, 29.088072, 42.282169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385708, 29.184927, 42.190880>,  <31.159384, 29.243040, 42.136108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385708, 29.184927, 42.190880>,  <31.762915, 29.088072, 42.282169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385708, 29.184927, 42.190880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194519, 0.155299, 0.968527,
		0.269958, 0.957733, -0.099349,
		-0.943019, 0.242136, -0.228222,
		31.102802, 29.257568, 42.122414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639662, 29.530033, 42.700912>,  <31.762915, 29.088072, 42.282169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639662, 29.530033, 42.700912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258266, 29.493319, 42.586067>,  <31.029428, 29.471291, 42.517162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258266, 29.493319, 42.586067>,  <31.639662, 29.530033, 42.700912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258266, 29.493319, 42.586067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301201, 0.253389, 0.919278,
		-0.011625, 0.963000, -0.269250,
		-0.953490, -0.091785, -0.287111,
		30.972219, 29.465784, 42.499935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284052, 30.055733, 43.021748>,  <31.639662, 29.530033, 42.700912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284052, 30.055733, 43.021748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.995605, 29.788425, 42.948639>,  <30.822536, 29.628040, 42.904774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.995605, 29.788425, 42.948639>,  <31.284052, 30.055733, 43.021748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995605, 29.788425, 42.948639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428471, 0.222865, 0.875639,
		-0.544429, 0.709752, -0.447046,
		-0.721117, -0.668269, -0.182774,
		30.779270, 29.587944, 42.893806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686405, 30.375935, 43.307514>,  <31.284052, 30.055733, 43.021748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686405, 30.375935, 43.307514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596430, 29.988665, 43.263630>,  <30.542444, 29.756302, 43.237301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596430, 29.988665, 43.263630>,  <30.686405, 30.375935, 43.307514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596430, 29.988665, 43.263630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333318, -0.029347, 0.942358,
		-0.915589, 0.248540, -0.316110,
		-0.224936, -0.968177, -0.109712,
		30.528950, 29.698212, 43.230717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958570, 30.229774, 43.517349>,  <30.686405, 30.375935, 43.307514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958570, 30.229774, 43.517349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.183050, 29.899660, 43.542507>,  <30.317738, 29.701591, 43.557602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.183050, 29.899660, 43.542507>,  <29.958570, 30.229774, 43.517349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183050, 29.899660, 43.542507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448228, -0.239155, 0.861334,
		-0.695807, -0.511571, -0.504131,
		0.561199, -0.825288, 0.062895,
		30.351410, 29.652073, 43.561375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532137, 30.369829, 44.170822>,  <29.958570, 30.229774, 43.517349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532137, 30.369829, 44.170822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.278387, 30.675976, 44.214245>,  <29.126137, 30.859663, 44.240299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.278387, 30.675976, 44.214245>,  <29.532137, 30.369829, 44.170822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278387, 30.675976, 44.214245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619682, 0.587447, -0.520481,
		-0.462127, -0.262912, -0.846945,
		-0.634376, 0.765365, 0.108553,
		29.088074, 30.905584, 44.246811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305990, 30.670385, 43.485641>,  <29.532137, 30.369829, 44.170822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305990, 30.670385, 43.485641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.267914, 30.951639, 43.767502>,  <29.245068, 31.120392, 43.936619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.267914, 30.951639, 43.767502>,  <29.305990, 30.670385, 43.485641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267914, 30.951639, 43.767502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538191, 0.631846, -0.557782,
		-0.837430, 0.326143, -0.438567,
		-0.095190, 0.703136, 0.704655,
		29.239357, 31.162580, 43.978897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125380, 31.315536, 43.069485>,  <29.305990, 30.670385, 43.485641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125380, 31.315536, 43.069485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194366, 31.484991, 43.425190>,  <29.235760, 31.586664, 43.638615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.194366, 31.484991, 43.425190>,  <29.125380, 31.315536, 43.069485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194366, 31.484991, 43.425190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462234, 0.762408, -0.452850,
		-0.869824, 0.489150, -0.064327,
		0.172468, 0.423634, 0.889263,
		29.246107, 31.612082, 43.691967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035698, 32.020275, 42.837017>,  <29.125380, 31.315536, 43.069485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035698, 32.020275, 42.837017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.230581, 31.993256, 43.185284>,  <29.347511, 31.977043, 43.394245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.230581, 31.993256, 43.185284>,  <29.035698, 32.020275, 42.837017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230581, 31.993256, 43.185284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492889, 0.844294, -0.210305,
		-0.720895, 0.531605, 0.444641,
		0.487207, -0.067551, 0.870670,
		29.376743, 31.972990, 43.446484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104315, 32.654686, 43.021904>,  <29.035698, 32.020275, 42.837017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104315, 32.654686, 43.021904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.404442, 32.504303, 43.239410>,  <29.584518, 32.414074, 43.369915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.404442, 32.504303, 43.239410>,  <29.104315, 32.654686, 43.021904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404442, 32.504303, 43.239410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626514, 0.666890, -0.403408,
		-0.210966, 0.643359, 0.735923,
		0.750316, -0.375961, 0.543764,
		29.629536, 32.391514, 43.402538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515568, 33.228714, 43.422211>,  <29.104315, 32.654686, 43.021904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515568, 33.228714, 43.422211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762861, 32.920055, 43.362415>,  <29.911238, 32.734859, 43.326538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762861, 32.920055, 43.362415>,  <29.515568, 33.228714, 43.422211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762861, 32.920055, 43.362415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682557, 0.621380, -0.384711,
		0.389748, 0.135810, 0.910853,
		0.618233, -0.771649, -0.149484,
		29.948332, 32.688560, 43.317570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098120, 33.352661, 43.669579>,  <29.515568, 33.228714, 43.422211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098120, 33.352661, 43.669579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.153343, 33.107471, 43.358398>,  <30.186478, 32.960358, 43.171692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.153343, 33.107471, 43.358398>,  <30.098120, 33.352661, 43.669579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153343, 33.107471, 43.358398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630921, 0.659907, -0.407997,
		0.763465, -0.434497, 0.477843,
		0.138059, -0.612973, -0.777949,
		30.194761, 32.923580, 43.125015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804783, 33.494831, 43.963997>,  <30.098120, 33.352661, 43.669579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804783, 33.494831, 43.963997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.047901, 33.675129, 44.225502>,  <31.193773, 33.783306, 44.382404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.047901, 33.675129, 44.225502>,  <30.804783, 33.494831, 43.963997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047901, 33.675129, 44.225502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343018, -0.593489, 0.728086,
		0.716185, -0.666783, -0.206108,
		0.607798, 0.450746, 0.653766,
		31.230240, 33.810352, 44.421631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187340, 33.012230, 44.345585>,  <30.804783, 33.494831, 43.963997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187340, 33.012230, 44.345585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190458, 33.332794, 44.584812>,  <31.192329, 33.525131, 44.728348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190458, 33.332794, 44.584812>,  <31.187340, 33.012230, 44.345585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190458, 33.332794, 44.584812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480418, -0.521540, 0.705120,
		0.877005, -0.292821, 0.380944,
		0.007797, 0.801406, 0.598070,
		31.192797, 33.573215, 44.764233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366245, 32.713257, 44.952824>,  <31.187340, 33.012230, 44.345585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366245, 32.713257, 44.952824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258894, 33.077812, 45.077621>,  <31.194483, 33.296547, 45.152500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258894, 33.077812, 45.077621>,  <31.366245, 32.713257, 44.952824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258894, 33.077812, 45.077621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387197, -0.398620, 0.831373,
		0.882073, 0.102318, 0.459868,
		-0.268377, 0.911391, 0.311994,
		31.178381, 33.351231, 45.171219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633982, 32.794857, 45.565651>,  <31.366245, 32.713257, 44.952824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633982, 32.794857, 45.565651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.330982, 33.055988, 45.567181>,  <31.149183, 33.212666, 45.568100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.330982, 33.055988, 45.567181>,  <31.633982, 32.794857, 45.565651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330982, 33.055988, 45.567181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327662, -0.385256, 0.862679,
		0.564656, 0.652222, 0.505737,
		-0.757497, 0.652828, 0.003828,
		31.103733, 33.251835, 45.568329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731285, 33.161507, 46.130890>,  <31.633982, 32.794857, 45.565651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731285, 33.161507, 46.130890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.343365, 33.194218, 46.038979>,  <31.110613, 33.213844, 45.983829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.343365, 33.194218, 46.038979>,  <31.731285, 33.161507, 46.130890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343365, 33.194218, 46.038979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243895, -0.319130, 0.915790,
		0.001560, 0.944176, 0.329437,
		-0.969800, 0.081777, -0.229782,
		31.052425, 33.218750, 45.970043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376585, 33.689461, 46.505421>,  <31.731285, 33.161507, 46.130890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376585, 33.689461, 46.505421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.095339, 33.425369, 46.399799>,  <30.926590, 33.266914, 46.336426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.095339, 33.425369, 46.399799>,  <31.376585, 33.689461, 46.505421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095339, 33.425369, 46.399799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269426, -0.096299, 0.958194,
		-0.658055, 0.744866, -0.110173,
		-0.703117, -0.660228, -0.264056,
		30.884403, 33.227303, 46.320583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867537, 33.844303, 46.937096>,  <31.376585, 33.689461, 46.505421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867537, 33.844303, 46.937096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.777386, 33.481647, 46.794430>,  <30.723295, 33.264053, 46.708828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.777386, 33.481647, 46.794430>,  <30.867537, 33.844303, 46.937096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777386, 33.481647, 46.794430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374556, -0.257320, 0.890783,
		-0.899396, 0.334355, -0.281592,
		-0.225378, -0.906639, -0.356667,
		30.709772, 33.209656, 46.687431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151342, 33.725727, 47.134964>,  <30.867537, 33.844303, 46.937096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151342, 33.725727, 47.134964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.319134, 33.377178, 47.033184>,  <30.419807, 33.168049, 46.972118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.319134, 33.377178, 47.033184>,  <30.151342, 33.725727, 47.134964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319134, 33.377178, 47.033184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210597, -0.366067, 0.906446,
		-0.883000, -0.326647, -0.337065,
		0.419476, -0.871376, -0.254446,
		30.444977, 33.115765, 46.956852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666409, 33.104317, 47.362110>,  <30.151342, 33.725727, 47.134964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666409, 33.104317, 47.362110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.046202, 32.981506, 47.336132>,  <30.274078, 32.907822, 47.320545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.046202, 32.981506, 47.336132>,  <29.666409, 33.104317, 47.362110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046202, 32.981506, 47.336132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064655, -0.393898, 0.916877,
		-0.307083, -0.866361, -0.393850,
		0.949484, -0.307022, -0.064945,
		30.331047, 32.889400, 47.316647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.370724, 40.839371, 34.667423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688389, 40.789955, 34.905430>,  <36.878986, 40.760303, 35.048233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688389, 40.789955, 34.905430>,  <36.370724, 40.839371, 34.667423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688389, 40.789955, 34.905430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578484, -0.453662, 0.677899,
		0.186189, -0.882569, -0.431747,
		0.794159, -0.123542, 0.595019,
		36.926636, 40.752892, 35.083935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035213, 40.399155, 34.989990>,  <36.370724, 40.839371, 34.667423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035213, 40.399155, 34.989990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380806, 40.473297, 35.177258>,  <36.588161, 40.517780, 35.289619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380806, 40.473297, 35.177258>,  <36.035213, 40.399155, 34.989990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380806, 40.473297, 35.177258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367051, -0.404651, 0.837574,
		0.344692, -0.895490, -0.281577,
		0.863980, 0.185352, 0.468170,
		36.639999, 40.528904, 35.317707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373619, 39.765003, 35.351574>,  <36.035213, 40.399155, 34.989990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373619, 39.765003, 35.351574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471539, 40.106567, 35.535278>,  <36.530289, 40.311504, 35.645500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471539, 40.106567, 35.535278>,  <36.373619, 39.765003, 35.351574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471539, 40.106567, 35.535278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410239, -0.337963, 0.847045,
		0.878510, -0.395760, 0.267573,
		0.244796, 0.853906, 0.459259,
		36.544979, 40.362740, 35.673058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635967, 39.589497, 36.058418>,  <36.373619, 39.765003, 35.351574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635967, 39.589497, 36.058418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561779, 39.979115, 36.110310>,  <36.517265, 40.212887, 36.141445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561779, 39.979115, 36.110310>,  <36.635967, 39.589497, 36.058418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561779, 39.979115, 36.110310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244556, -0.173619, 0.953965,
		0.951731, 0.145207, 0.270411,
		-0.185471, 0.974049, 0.129727,
		36.506138, 40.271328, 36.149227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934505, 39.723309, 36.797684>,  <36.635967, 39.589497, 36.058418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934505, 39.723309, 36.797684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672577, 40.005272, 36.688652>,  <36.515419, 40.174450, 36.623234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672577, 40.005272, 36.688652>,  <36.934505, 39.723309, 36.797684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672577, 40.005272, 36.688652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556095, -0.205142, 0.805403,
		0.511821, 0.678981, 0.526331,
		-0.654826, 0.704913, -0.272582,
		36.476128, 40.216747, 36.606876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801357, 40.060974, 37.409721>,  <36.934505, 39.723309, 36.797684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801357, 40.060974, 37.409721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494320, 40.138756, 37.165432>,  <36.310097, 40.185425, 37.018860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494320, 40.138756, 37.165432>,  <36.801357, 40.060974, 37.409721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494320, 40.138756, 37.165432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640614, -0.262804, 0.721490,
		-0.020206, 0.945052, 0.326295,
		-0.767597, 0.194450, -0.610723,
		36.264042, 40.197090, 36.982216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374264, 40.501038, 37.786877>,  <36.801357, 40.060974, 37.409721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374264, 40.501038, 37.786877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150326, 40.320332, 37.509033>,  <36.015965, 40.211910, 37.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150326, 40.320332, 37.509033>,  <36.374264, 40.501038, 37.786877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150326, 40.320332, 37.509033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584927, -0.378280, 0.717470,
		-0.586883, 0.807970, -0.052469,
		-0.559846, -0.451762, -0.694610,
		35.982372, 40.184803, 37.300652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723778, 40.542118, 38.122272>,  <36.374264, 40.501038, 37.786877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723778, 40.542118, 38.122272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618401, 40.292088, 37.828365>,  <35.555176, 40.142071, 37.652020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618401, 40.292088, 37.828365>,  <35.723778, 40.542118, 38.122272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618401, 40.292088, 37.828365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729991, -0.368761, 0.575438,
		-0.630644, 0.687967, -0.359150,
		-0.263442, -0.625073, -0.734766,
		35.539368, 40.104565, 37.607937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917984, 40.563248, 38.010170>,  <35.723778, 40.542118, 38.122272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917984, 40.563248, 38.010170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062874, 40.208336, 37.895958>,  <35.149807, 39.995388, 37.827431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062874, 40.208336, 37.895958>,  <34.917984, 40.563248, 38.010170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062874, 40.208336, 37.895958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727612, -0.460619, 0.508340,
		-0.582560, 0.023621, -0.812444,
		0.362220, -0.887284, -0.285526,
		35.171539, 39.942150, 37.810299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369270, 40.195053, 37.983730>,  <34.917984, 40.563248, 38.010170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369270, 40.195053, 37.983730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649197, 39.909332, 37.981716>,  <34.817154, 39.737900, 37.980507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649197, 39.909332, 37.981716>,  <34.369270, 40.195053, 37.983730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649197, 39.909332, 37.981716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579456, -0.571802, 0.580752,
		-0.417712, -0.403504, -0.814065,
		0.699819, -0.714302, -0.005035,
		34.859142, 39.695042, 37.980206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006474, 39.661930, 37.920494>,  <34.369270, 40.195053, 37.983730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006474, 39.661930, 37.920494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353191, 39.529465, 38.069622>,  <34.561222, 39.449986, 38.159100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353191, 39.529465, 38.069622>,  <34.006474, 39.661930, 37.920494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353191, 39.529465, 38.069622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489450, -0.708086, 0.508972,
		0.095437, -0.623652, -0.775854,
		0.866793, -0.331167, 0.372824,
		34.613228, 39.430115, 38.181469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910007, 39.018238, 38.063156>,  <34.006474, 39.661930, 37.920494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910007, 39.018238, 38.063156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221088, 39.123909, 38.291328>,  <34.407738, 39.187313, 38.428234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221088, 39.123909, 38.291328>,  <33.910007, 39.018238, 38.063156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221088, 39.123909, 38.291328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365739, -0.547886, 0.752367,
		0.511293, -0.793744, -0.329469,
		0.777698, 0.264181, 0.570434,
		34.454399, 39.203163, 38.462460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132408, 38.492546, 37.616112>,  <33.910007, 39.018238, 38.063156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132408, 38.492546, 37.616112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007214, 38.207897, 37.364517>,  <33.932095, 38.037106, 37.213558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007214, 38.207897, 37.364517>,  <34.132408, 38.492546, 37.616112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007214, 38.207897, 37.364517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317173, 0.545926, -0.775478,
		0.895231, -0.442215, 0.054839,
		-0.312989, -0.711625, -0.628989,
		33.913315, 37.994411, 37.175819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629799, 38.476810, 37.119946>,  <34.132408, 38.492546, 37.616112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629799, 38.476810, 37.119946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309761, 38.313919, 36.943756>,  <34.117737, 38.216183, 36.838043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309761, 38.313919, 36.943756>,  <34.629799, 38.476810, 37.119946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309761, 38.313919, 36.943756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337723, 0.301059, -0.891800,
		0.495774, -0.862280, -0.103344,
		-0.800094, -0.407230, -0.440469,
		34.069733, 38.191750, 36.811615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860813, 38.079811, 36.491917>,  <34.629799, 38.476810, 37.119946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860813, 38.079811, 36.491917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478123, 38.180534, 36.433582>,  <34.248508, 38.240967, 36.398582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478123, 38.180534, 36.433582>,  <34.860813, 38.079811, 36.491917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478123, 38.180534, 36.433582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221716, 0.306244, -0.925774,
		-0.188456, -0.918046, -0.348821,
		-0.956727, 0.251807, -0.145832,
		34.191105, 38.256077, 36.389832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790730, 37.933247, 35.829273>,  <34.860813, 38.079811, 36.491917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790730, 37.933247, 35.829273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427383, 38.094173, 35.874901>,  <34.209373, 38.190731, 35.902275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427383, 38.094173, 35.874901>,  <34.790730, 37.933247, 35.829273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427383, 38.094173, 35.874901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060137, 0.144259, -0.987711,
		-0.413827, -0.904064, -0.106846,
		-0.908367, 0.402316, 0.114066,
		34.154873, 38.214867, 35.909119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301807, 37.549240, 35.306591>,  <34.790730, 37.933247, 35.829273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301807, 37.549240, 35.306591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152748, 37.915436, 35.367275>,  <34.063313, 38.135155, 35.403687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152748, 37.915436, 35.367275>,  <34.301807, 37.549240, 35.306591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152748, 37.915436, 35.367275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085365, 0.128976, -0.987967,
		-0.924039, -0.381113, 0.030088,
		-0.372646, 0.915488, 0.151713,
		34.040955, 38.190083, 35.412788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690750, 37.579906, 34.894905>,  <34.301807, 37.549240, 35.306591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690750, 37.579906, 34.894905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784233, 37.962658, 34.963924>,  <33.840324, 38.192307, 35.005337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784233, 37.962658, 34.963924>,  <33.690750, 37.579906, 34.894905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784233, 37.962658, 34.963924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003049, 0.176739, -0.984253,
		-0.972302, 0.230553, 0.038387,
		0.233707, 0.956874, 0.172547,
		33.854343, 38.249722, 35.015690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225906, 37.953312, 34.533009>,  <33.690750, 37.579906, 34.894905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225906, 37.953312, 34.533009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525070, 38.210323, 34.599682>,  <33.704571, 38.364529, 34.639687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525070, 38.210323, 34.599682>,  <33.225906, 37.953312, 34.533009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525070, 38.210323, 34.599682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028898, 0.219345, -0.975219,
		-0.663167, 0.734196, 0.145483,
		0.747913, 0.642529, 0.166679,
		33.749443, 38.403084, 34.649685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999508, 38.639843, 34.249195>,  <33.225906, 37.953312, 34.533009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999508, 38.639843, 34.249195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398567, 38.643215, 34.276413>,  <33.638004, 38.645241, 34.292744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398567, 38.643215, 34.276413>,  <32.999508, 38.639843, 34.249195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398567, 38.643215, 34.276413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065392, 0.181240, -0.981262,
		-0.020609, 0.983403, 0.180262,
		0.997647, 0.008435, 0.068042,
		33.697861, 38.645744, 34.296825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193233, 39.300438, 34.069839>,  <32.999508, 38.639843, 34.249195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193233, 39.300438, 34.069839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482189, 39.031784, 34.004036>,  <33.655563, 38.870590, 33.964554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482189, 39.031784, 34.004036>,  <33.193233, 39.300438, 34.069839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482189, 39.031784, 34.004036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155941, 0.390011, -0.907510,
		0.673677, 0.629918, 0.386474,
		0.722386, -0.671636, -0.164511,
		33.698906, 38.830292, 33.954681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576801, 39.636440, 33.499920>,  <33.193233, 39.300438, 34.069839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576801, 39.636440, 33.499920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776272, 39.289726, 33.501106>,  <33.895954, 39.081699, 33.501820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776272, 39.289726, 33.501106>,  <33.576801, 39.636440, 33.499920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776272, 39.289726, 33.501106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279506, 0.157562, -0.947128,
		0.820487, 0.473140, 0.320843,
		0.498677, -0.866783, 0.002968,
		33.925877, 39.029690, 33.501995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251659, 39.701626, 33.145256>,  <33.576801, 39.636440, 33.499920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251659, 39.701626, 33.145256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126190, 39.322216, 33.127796>,  <34.050907, 39.094570, 33.117321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126190, 39.322216, 33.127796>,  <34.251659, 39.701626, 33.145256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126190, 39.322216, 33.127796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152405, -0.004920, -0.988306,
		0.937220, -0.316658, 0.146103,
		-0.313673, -0.948527, -0.043649,
		34.032089, 39.037659, 33.114700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697186, 39.316589, 32.745419>,  <34.251659, 39.701626, 33.145256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697186, 39.316589, 32.745419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348091, 39.122013, 32.728867>,  <34.138634, 39.005268, 32.718933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348091, 39.122013, 32.728867>,  <34.697186, 39.316589, 32.745419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348091, 39.122013, 32.728867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063500, -0.029064, -0.997559,
		0.484052, -0.873229, 0.056254,
		-0.872732, -0.486442, -0.041382,
		34.086273, 38.976082, 32.716454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748478, 38.757641, 32.277828>,  <34.697186, 39.316589, 32.745419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748478, 38.757641, 32.277828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364372, 38.869274, 32.277943>,  <34.133907, 38.936253, 32.278011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364372, 38.869274, 32.277943>,  <34.748478, 38.757641, 32.277828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364372, 38.869274, 32.277943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049490, 0.171280, -0.983979,
		-0.274662, -0.944868, -0.178286,
		-0.960267, 0.279085, 0.000283,
		34.076294, 38.952999, 32.278027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249287, 38.361851, 31.779190>,  <34.748478, 38.757641, 32.277828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249287, 38.361851, 31.779190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122028, 38.740246, 31.804146>,  <34.045673, 38.967281, 31.819120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122028, 38.740246, 31.804146>,  <34.249287, 38.361851, 31.779190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122028, 38.740246, 31.804146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058897, 0.045961, -0.997205,
		-0.946211, -0.320930, 0.041093,
		-0.318144, 0.945987, 0.062391,
		34.026585, 39.024040, 31.822863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047813, 37.949528, 32.436825>,  <34.249287, 38.361851, 31.779190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047813, 37.949528, 32.436825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440304, 38.022800, 32.460945>,  <34.675800, 38.066765, 32.475418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440304, 38.022800, 32.460945>,  <34.047813, 37.949528, 32.436825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440304, 38.022800, 32.460945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147268, -0.913607, 0.378992,
		0.124515, -0.362998, -0.923433,
		0.981228, 0.183182, 0.060300,
		34.734673, 38.077755, 32.479034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311302, 37.278652, 32.284660>,  <34.047813, 37.949528, 32.436825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311302, 37.278652, 32.284660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607780, 37.497814, 32.439800>,  <34.785667, 37.629311, 32.532883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607780, 37.497814, 32.439800>,  <34.311302, 37.278652, 32.284660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607780, 37.497814, 32.439800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450144, -0.834287, 0.318331,
		0.497993, -0.061358, -0.865008,
		0.741197, 0.547905, 0.387849,
		34.830139, 37.662186, 32.556156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107758, 37.241562, 32.022678>,  <34.311302, 37.278652, 32.284660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107758, 37.241562, 32.022678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412079, 37.241676, 32.282272>,  <35.594673, 37.241745, 32.438026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412079, 37.241676, 32.282272>,  <35.107758, 37.241562, 32.022678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412079, 37.241676, 32.282272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355808, -0.836125, 0.417488,
		0.542750, -0.548539, -0.636024,
		0.760804, 0.000289, 0.648982,
		35.640320, 37.241764, 32.476967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652210, 36.640720, 31.841772>,  <35.107758, 37.241562, 32.022678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652210, 36.640720, 31.841772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675606, 36.743999, 32.227501>,  <35.689644, 36.805965, 32.458939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675606, 36.743999, 32.227501>,  <35.652210, 36.640720, 31.841772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675606, 36.743999, 32.227501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349884, -0.899399, 0.262036,
		0.934965, -0.352727, 0.037734,
		0.058489, 0.258197, 0.964320,
		35.693153, 36.821457, 32.516796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922718, 35.974583, 32.203972>,  <35.652210, 36.640720, 31.841772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922718, 35.974583, 32.203972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770737, 36.181461, 32.510735>,  <35.679546, 36.305588, 32.694794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770737, 36.181461, 32.510735>,  <35.922718, 35.974583, 32.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770737, 36.181461, 32.510735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281441, -0.854414, 0.436770,
		0.881150, -0.049886, 0.470198,
		-0.379955, 0.517193, 0.766907,
		35.656750, 36.336620, 32.740807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195698, 35.696789, 32.902767>,  <35.922718, 35.974583, 32.203972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195698, 35.696789, 32.902767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849033, 35.887550, 32.961380>,  <35.641037, 36.002007, 32.996548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849033, 35.887550, 32.961380>,  <36.195698, 35.696789, 32.902767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849033, 35.887550, 32.961380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340465, -0.780033, 0.525006,
		0.364676, 0.405111, 0.838389,
		-0.866657, 0.476900, 0.146533,
		35.589035, 36.030621, 33.005341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091782, 35.621193, 33.676914>,  <36.195698, 35.696789, 32.902767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091782, 35.621193, 33.676914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744854, 35.715813, 33.501728>,  <35.536697, 35.772583, 33.396618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744854, 35.715813, 33.501728>,  <36.091782, 35.621193, 33.676914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744854, 35.715813, 33.501728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422501, -0.815041, 0.396486,
		-0.263170, 0.528918, 0.806838,
		-0.867315, 0.236546, -0.437963,
		35.484661, 35.786777, 33.370338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664581, 35.484863, 34.143131>,  <36.091782, 35.621193, 33.676914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664581, 35.484863, 34.143131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402641, 35.505844, 33.841557>,  <35.245476, 35.518433, 33.660614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402641, 35.505844, 33.841557>,  <35.664581, 35.484863, 34.143131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402641, 35.505844, 33.841557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563509, -0.698648, 0.440850,
		-0.503611, 0.713540, 0.487070,
		-0.654854, 0.052452, -0.753933,
		35.206184, 35.521580, 33.615376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146935, 35.594009, 34.462887>,  <35.664581, 35.484863, 34.143131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146935, 35.594009, 34.462887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054699, 35.423191, 34.113155>,  <34.999355, 35.320698, 33.903316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054699, 35.423191, 34.113155>,  <35.146935, 35.594009, 34.462887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054699, 35.423191, 34.113155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541998, -0.689879, 0.479900,
		-0.808124, 0.584549, -0.072377,
		-0.230594, -0.427047, -0.874332,
		34.985519, 35.295078, 33.850857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721199, 35.213970, 34.672634>,  <35.146935, 35.594009, 34.462887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721199, 35.213970, 34.672634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695881, 35.122654, 34.284019>,  <34.680691, 35.067863, 34.050850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695881, 35.122654, 34.284019>,  <34.721199, 35.213970, 34.672634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695881, 35.122654, 34.284019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669197, -0.712492, 0.211025,
		-0.740385, 0.663503, -0.107675,
		-0.063298, -0.228295, -0.971532,
		34.676891, 35.054165, 33.992561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080353, 35.379700, 34.303959>,  <34.721199, 35.213970, 34.672634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080353, 35.379700, 34.303959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233112, 35.064819, 34.110268>,  <34.324768, 34.875893, 33.994053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233112, 35.064819, 34.110268>,  <34.080353, 35.379700, 34.303959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233112, 35.064819, 34.110268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676794, -0.594997, 0.433506,
		-0.629370, 0.162170, -0.759996,
		0.381894, -0.787197, -0.484229,
		34.347679, 34.828659, 33.965000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484791, 35.020393, 33.986526>,  <34.080353, 35.379700, 34.303959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484791, 35.020393, 33.986526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775478, 34.748848, 34.028507>,  <33.949890, 34.585918, 34.053696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775478, 34.748848, 34.028507>,  <33.484791, 35.020393, 33.986526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775478, 34.748848, 34.028507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623975, -0.588478, 0.514149,
		-0.287279, -0.439129, -0.851256,
		0.726723, -0.678866, 0.104949,
		33.993496, 34.545189, 34.059990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213764, 34.327744, 33.934544>,  <33.484791, 35.020393, 33.986526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213764, 34.327744, 33.934544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546951, 34.284325, 34.151569>,  <33.746864, 34.258274, 34.281784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546951, 34.284325, 34.151569>,  <33.213764, 34.327744, 33.934544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546951, 34.284325, 34.151569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478521, -0.633648, 0.607871,
		0.277811, -0.765968, -0.579754,
		0.832970, -0.108551, 0.542566,
		33.796841, 34.251759, 34.314339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154202, 33.602970, 34.162140>,  <33.213764, 34.327744, 33.934544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154202, 33.602970, 34.162140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448956, 33.756180, 34.384956>,  <33.625809, 33.848106, 34.518646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448956, 33.756180, 34.384956>,  <33.154202, 33.602970, 34.162140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448956, 33.756180, 34.384956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339300, -0.503147, 0.794807,
		0.584706, -0.774684, -0.240799,
		0.736882, 0.383025, 0.557043,
		33.670021, 33.871086, 34.552071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433105, 33.050938, 34.493507>,  <33.154202, 33.602970, 34.162140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433105, 33.050938, 34.493507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564186, 33.353897, 34.719414>,  <33.642834, 33.535671, 34.854958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564186, 33.353897, 34.719414>,  <33.433105, 33.050938, 34.493507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564186, 33.353897, 34.719414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211772, -0.523675, 0.825177,
		0.920741, -0.390013, -0.011214,
		0.327702, 0.757399, 0.564763,
		33.662498, 33.581116, 34.888844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806030, 32.770805, 35.078789>,  <33.433105, 33.050938, 34.493507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806030, 32.770805, 35.078789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658127, 33.131084, 35.170029>,  <33.569386, 33.347252, 35.224773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658127, 33.131084, 35.170029>,  <33.806030, 32.770805, 35.078789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658127, 33.131084, 35.170029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249769, -0.332820, 0.909311,
		0.894927, 0.279254, 0.348029,
		-0.369759, 0.900694, 0.228100,
		33.547199, 33.401291, 35.238461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032139, 32.910423, 35.770721>,  <33.806030, 32.770805, 35.078789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032139, 32.910423, 35.770721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768188, 33.210930, 35.765648>,  <33.609818, 33.391232, 35.762604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768188, 33.210930, 35.765648>,  <34.032139, 32.910423, 35.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768188, 33.210930, 35.765648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219282, -0.176413, 0.959580,
		0.718661, 0.635988, 0.281151,
		-0.659880, 0.751264, -0.012680,
		33.570225, 33.436310, 35.761845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193325, 33.432766, 36.320747>,  <34.032139, 32.910423, 35.770721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193325, 33.432766, 36.320747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801842, 33.445007, 36.239559>,  <33.566952, 33.452354, 36.190845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801842, 33.445007, 36.239559>,  <34.193325, 33.432766, 36.320747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801842, 33.445007, 36.239559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203754, -0.025221, 0.978697,
		0.024836, 0.999213, 0.030920,
		-0.978707, 0.030607, -0.202967,
		33.508228, 33.454189, 36.178669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849365, 33.957554, 36.745190>,  <34.193325, 33.432766, 36.320747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849365, 33.957554, 36.745190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569210, 33.687866, 36.651474>,  <33.401119, 33.526054, 36.595245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569210, 33.687866, 36.651474>,  <33.849365, 33.957554, 36.745190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569210, 33.687866, 36.651474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215656, -0.113013, 0.969907,
		-0.680408, 0.729833, -0.066247,
		-0.700383, -0.674220, -0.234288,
		33.359097, 33.485600, 36.581188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479717, 33.927860, 37.333305>,  <33.849365, 33.957554, 36.745190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479717, 33.927860, 37.333305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304630, 33.629654, 37.132267>,  <33.199577, 33.450729, 37.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304630, 33.629654, 37.132267>,  <33.479717, 33.927860, 37.333305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304630, 33.629654, 37.132267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424320, -0.321540, 0.846501,
		-0.792687, 0.583792, -0.175594,
		-0.437720, -0.745519, -0.502596,
		33.173313, 33.405998, 36.981487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896519, 33.803932, 37.674934>,  <33.479717, 33.927860, 37.333305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896519, 33.803932, 37.674934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885674, 33.459862, 37.471222>,  <32.879166, 33.253422, 37.348995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885674, 33.459862, 37.471222>,  <32.896519, 33.803932, 37.674934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885674, 33.459862, 37.471222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565113, -0.407058, 0.717601,
		-0.824568, 0.307258, -0.475058,
		-0.027112, -0.860172, -0.509283,
		32.877541, 33.201809, 37.318436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229359, 33.637016, 37.764683>,  <32.896519, 33.803932, 37.674934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229359, 33.637016, 37.764683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439411, 33.314522, 37.655716>,  <32.565445, 33.121025, 37.590336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439411, 33.314522, 37.655716>,  <32.229359, 33.637016, 37.764683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439411, 33.314522, 37.655716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602063, -0.578199, 0.550642,
		-0.601464, -0.125143, -0.789037,
		0.525129, -0.806241, -0.272422,
		32.596951, 33.072651, 37.573990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779009, 33.155064, 37.514107>,  <32.229359, 33.637016, 37.764683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779009, 33.155064, 37.514107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096321, 32.941654, 37.631451>,  <32.286709, 32.813610, 37.701855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096321, 32.941654, 37.631451>,  <31.779009, 33.155064, 37.514107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096321, 32.941654, 37.631451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603168, -0.622931, 0.498142,
		-0.083030, -0.572109, -0.815964,
		0.793281, -0.533524, 0.293356,
		32.334305, 32.781597, 37.719456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565783, 32.450706, 37.529366>,  <31.779009, 33.155064, 37.514107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565783, 32.450706, 37.529366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897377, 32.424339, 37.751514>,  <32.096333, 32.408520, 37.884804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897377, 32.424339, 37.751514>,  <31.565783, 32.450706, 37.529366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897377, 32.424339, 37.751514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416286, -0.735869, 0.534044,
		0.373478, -0.673908, -0.637466,
		0.828988, -0.065915, 0.555369,
		32.146072, 32.404564, 37.918125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759569, 31.766178, 37.552696>,  <31.565783, 32.450706, 37.529366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759569, 31.766178, 37.552696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956635, 31.916798, 37.866508>,  <32.074875, 32.007168, 38.054798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956635, 31.916798, 37.866508>,  <31.759569, 31.766178, 37.552696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956635, 31.916798, 37.866508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186235, -0.835027, 0.517733,
		0.850058, -0.401176, -0.341261,
		0.492664, 0.376548, 0.784534,
		32.104435, 32.029762, 38.101868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245407, 31.216099, 37.748451>,  <31.759569, 31.766178, 37.552696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245407, 31.216099, 37.748451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175800, 31.470612, 38.049080>,  <32.134037, 31.623320, 38.229458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175800, 31.470612, 38.049080>,  <32.245407, 31.216099, 37.748451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175800, 31.470612, 38.049080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262525, -0.765574, 0.587348,
		0.949103, -0.095096, 0.300266,
		-0.174021, 0.636281, 0.751574,
		32.123592, 31.661495, 38.274551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619083, 30.926949, 38.410088>,  <32.245407, 31.216099, 37.748451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619083, 30.926949, 38.410088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307808, 31.149561, 38.526493>,  <32.121040, 31.283129, 38.596336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307808, 31.149561, 38.526493>,  <32.619083, 30.926949, 38.410088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307808, 31.149561, 38.526493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253607, -0.702389, 0.665081,
		0.574544, 0.443758, 0.687734,
		-0.778192, 0.556533, 0.291013,
		32.074348, 31.316521, 38.613796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642387, 31.121428, 39.235855>,  <32.619083, 30.926949, 38.410088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642387, 31.121428, 39.235855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257175, 31.083084, 39.135147>,  <32.026051, 31.060078, 39.074722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257175, 31.083084, 39.135147>,  <32.642387, 31.121428, 39.235855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257175, 31.083084, 39.135147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152388, -0.576852, 0.802508,
		-0.222161, 0.811204, 0.540917,
		-0.963028, -0.095857, -0.251771,
		31.968267, 31.054327, 39.059616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206570, 31.593445, 39.517982>,  <32.642387, 31.121428, 39.235855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206570, 31.593445, 39.517982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547672, 31.582066, 39.726593>,  <33.752335, 31.575239, 39.851761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547672, 31.582066, 39.726593>,  <33.206570, 31.593445, 39.517982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547672, 31.582066, 39.726593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460380, 0.512534, -0.724817,
		-0.246684, 0.858196, 0.450164,
		0.852759, -0.028446, 0.521530,
		33.803501, 31.573532, 39.883053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536194, 32.337383, 39.575264>,  <33.206570, 31.593445, 39.517982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536194, 32.337383, 39.575264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812016, 32.049103, 39.603840>,  <33.977509, 31.876133, 39.620987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812016, 32.049103, 39.603840>,  <33.536194, 32.337383, 39.575264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812016, 32.049103, 39.603840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545097, 0.451515, -0.706402,
		0.476851, 0.526042, 0.704197,
		0.689553, -0.720704, 0.071438,
		34.018883, 31.832891, 39.625271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164524, 32.683388, 39.566536>,  <33.536194, 32.337383, 39.575264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164524, 32.683388, 39.566536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272430, 32.307571, 39.482174>,  <34.337173, 32.082081, 39.431557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272430, 32.307571, 39.482174>,  <34.164524, 32.683388, 39.566536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272430, 32.307571, 39.482174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647964, 0.339138, -0.682003,
		0.712297, 0.047327, 0.700281,
		0.269769, -0.939545, -0.210901,
		34.353363, 32.025707, 39.418903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973755, 32.662563, 39.757942>,  <34.164524, 32.683388, 39.566536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973755, 32.662563, 39.757942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866589, 32.378864, 39.497116>,  <34.802288, 32.208645, 39.340622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866589, 32.378864, 39.497116>,  <34.973755, 32.662563, 39.757942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866589, 32.378864, 39.497116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796884, 0.217253, -0.563718,
		0.541480, -0.670646, 0.506985,
		-0.267911, -0.709250, -0.652065,
		34.786217, 32.166088, 39.301498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628349, 32.280239, 39.680794>,  <34.973755, 32.662563, 39.757942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628349, 32.280239, 39.680794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347862, 32.303188, 39.396542>,  <35.179569, 32.316959, 39.225990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347862, 32.303188, 39.396542>,  <35.628349, 32.280239, 39.680794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347862, 32.303188, 39.396542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668003, 0.401160, -0.626771,
		0.249116, -0.914209, -0.319629,
		-0.701222, 0.057375, -0.710630,
		35.137497, 32.320400, 39.183353>
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
