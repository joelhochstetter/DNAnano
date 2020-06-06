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
	<24.028318, 35.260990, 34.756779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369507, 35.233845, 34.963791>,  <24.574219, 35.217556, 35.087997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369507, 35.233845, 34.963791>,  <24.028318, 35.260990, 34.756779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369507, 35.233845, 34.963791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348131, 0.812728, -0.467201,
		-0.388904, 0.578677, 0.716859,
		0.852970, -0.067865, 0.517529,
		24.625399, 35.213486, 35.119049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.243181, 35.929394, 35.145004>,  <24.028318, 35.260990, 34.756779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.243181, 35.929394, 35.145004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587372, 35.744930, 35.058369>,  <24.793886, 35.634251, 35.006386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587372, 35.744930, 35.058369>,  <24.243181, 35.929394, 35.145004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587372, 35.744930, 35.058369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389052, 0.869223, -0.305107,
		0.328966, 0.178273, 0.927362,
		0.860476, -0.461161, -0.216588,
		24.845514, 35.606583, 34.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731176, 36.328167, 35.439552>,  <24.243181, 35.929394, 35.145004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731176, 36.328167, 35.439552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949703, 36.120461, 35.176674>,  <25.080820, 35.995838, 35.018948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949703, 36.120461, 35.176674>,  <24.731176, 36.328167, 35.439552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.949703, 36.120461, 35.176674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627533, 0.773435, -0.089446,
		0.554743, -0.363545, 0.748395,
		0.546318, -0.519262, -0.657194,
		25.113598, 35.964684, 34.979515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379465, 36.153164, 35.702225>,  <24.731176, 36.328167, 35.439552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379465, 36.153164, 35.702225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383146, 36.245636, 35.313080>,  <25.385355, 36.301121, 35.079594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383146, 36.245636, 35.313080>,  <25.379465, 36.153164, 35.702225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383146, 36.245636, 35.313080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359295, 0.907171, 0.218969,
		0.933179, -0.351561, -0.074716,
		0.009201, 0.231183, -0.972867,
		25.385906, 36.314991, 35.021221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060278, 36.411541, 35.532791>,  <25.379465, 36.153164, 35.702225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060278, 36.411541, 35.532791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808256, 36.546764, 35.253147>,  <25.657043, 36.627899, 35.085361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808256, 36.546764, 35.253147>,  <26.060278, 36.411541, 35.532791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808256, 36.546764, 35.253147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364920, 0.923566, 0.117725,
		0.685468, -0.180944, -0.705260,
		-0.630053, 0.338061, -0.699105,
		25.619240, 36.648182, 35.043415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377556, 37.018517, 35.168995>,  <26.060278, 36.411541, 35.532791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377556, 37.018517, 35.168995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982332, 37.055393, 35.119617>,  <25.745197, 37.077518, 35.089989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982332, 37.055393, 35.119617>,  <26.377556, 37.018517, 35.168995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982332, 37.055393, 35.119617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077254, 0.989669, 0.120777,
		0.133306, 0.109798, -0.984974,
		-0.988059, 0.092193, -0.123447,
		25.685915, 37.083050, 35.082584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759966, 37.591095, 34.886829>,  <26.377556, 37.018517, 35.168995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759966, 37.591095, 34.886829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394541, 37.751884, 34.862091>,  <26.175285, 37.848358, 34.847248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394541, 37.751884, 34.862091>,  <26.759966, 37.591095, 34.886829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394541, 37.751884, 34.862091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364435, 0.876603, 0.314253,
		0.180534, 0.264551, -0.947323,
		-0.913562, 0.401971, -0.061845,
		26.120472, 37.872475, 34.843536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572048, 38.074406, 34.294468>,  <26.759966, 37.591095, 34.886829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572048, 38.074406, 34.294468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400936, 38.140965, 34.649841>,  <26.298269, 38.180901, 34.863064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400936, 38.140965, 34.649841>,  <26.572048, 38.074406, 34.294468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400936, 38.140965, 34.649841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601935, 0.785696, 0.142676,
		-0.674298, 0.595814, -0.436266,
		-0.427781, 0.166398, 0.888434,
		26.272602, 38.190884, 34.916370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318670, 38.823799, 34.344776>,  <26.572048, 38.074406, 34.294468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318670, 38.823799, 34.344776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383389, 38.710491, 34.722893>,  <26.422218, 38.642506, 34.949764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383389, 38.710491, 34.722893>,  <26.318670, 38.823799, 34.344776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383389, 38.710491, 34.722893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481127, 0.858993, 0.175064,
		-0.861591, 0.426482, 0.275272,
		0.161795, -0.283275, 0.945293,
		26.431927, 38.625507, 35.006481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920902, 39.392937, 34.868057>,  <26.318670, 38.823799, 34.344776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920902, 39.392937, 34.868057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217159, 39.227421, 35.079807>,  <26.394913, 39.128113, 35.206856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217159, 39.227421, 35.079807>,  <25.920902, 39.392937, 34.868057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217159, 39.227421, 35.079807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393681, 0.905713, 0.157157,
		-0.544487, 0.092007, 0.833708,
		0.740641, -0.413785, 0.529371,
		26.439352, 39.103287, 35.238617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060957, 39.853779, 35.448139>,  <25.920902, 39.392937, 34.868057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060957, 39.853779, 35.448139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395626, 39.637234, 35.414902>,  <26.596428, 39.507305, 35.394958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395626, 39.637234, 35.414902>,  <26.060957, 39.853779, 35.448139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395626, 39.637234, 35.414902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546561, 0.815456, 0.190531,
		-0.035387, -0.204828, 0.978158,
		0.836671, -0.541366, -0.083095,
		26.646627, 39.474823, 35.389973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000355, 40.516186, 35.072556>,  <26.060957, 39.853779, 35.448139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000355, 40.516186, 35.072556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263569, 40.364895, 35.332996>,  <26.421497, 40.274120, 35.489262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263569, 40.364895, 35.332996>,  <26.000355, 40.516186, 35.072556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263569, 40.364895, 35.332996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603472, -0.252248, -0.756434,
		0.450344, 0.890682, 0.062262,
		0.658036, -0.378229, 0.651100,
		26.460979, 40.251427, 35.528328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689550, 40.984447, 35.070370>,  <26.000355, 40.516186, 35.072556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689550, 40.984447, 35.070370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723959, 40.598427, 35.169384>,  <26.744604, 40.366814, 35.228794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723959, 40.598427, 35.169384>,  <26.689550, 40.984447, 35.070370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723959, 40.598427, 35.169384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557970, -0.159170, -0.814453,
		0.825390, 0.208180, 0.524778,
		0.086024, -0.965052, 0.247536,
		26.749765, 40.308910, 35.243645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419270, 40.728222, 34.946480>,  <26.689550, 40.984447, 35.070370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419270, 40.728222, 34.946480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142485, 40.441528, 34.911888>,  <26.976414, 40.269512, 34.891132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142485, 40.441528, 34.911888>,  <27.419270, 40.728222, 34.946480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142485, 40.441528, 34.911888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407237, -0.288606, -0.866524,
		0.596109, -0.634821, 0.491585,
		-0.691962, -0.716735, -0.086482,
		26.934896, 40.226509, 34.885944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702414, 40.070766, 35.161411>,  <27.419270, 40.728222, 34.946480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702414, 40.070766, 35.161411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442419, 40.039913, 34.859001>,  <27.286423, 40.021400, 34.677555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442419, 40.039913, 34.859001>,  <27.702414, 40.070766, 35.161411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442419, 40.039913, 34.859001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698289, -0.453149, -0.554119,
		-0.299848, -0.888091, 0.348404,
		-0.649987, -0.077136, -0.756020,
		27.247423, 40.016773, 34.632195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539476, 39.373730, 34.854721>,  <27.702414, 40.070766, 35.161411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539476, 39.373730, 34.854721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340553, 39.466022, 35.189255>,  <27.221199, 39.521397, 35.389973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340553, 39.466022, 35.189255>,  <27.539476, 39.373730, 34.854721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340553, 39.466022, 35.189255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462070, -0.886328, -0.030240,
		0.734286, -0.401482, 0.547391,
		-0.497308, 0.230728, 0.836331,
		27.191360, 39.535240, 35.440155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730284, 38.772350, 35.384945>,  <27.539476, 39.373730, 34.854721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730284, 38.772350, 35.384945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394583, 38.989826, 35.381985>,  <27.193163, 39.120312, 35.380207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394583, 38.989826, 35.381985>,  <27.730284, 38.772350, 35.384945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394583, 38.989826, 35.381985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543737, -0.839233, 0.006184,
		-0.002851, 0.009216, 0.999954,
		-0.839251, 0.543694, -0.007403,
		27.142807, 39.152935, 35.379765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375725, 38.460365, 35.818108>,  <27.730284, 38.772350, 35.384945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375725, 38.460365, 35.818108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067055, 38.664593, 35.666405>,  <26.881853, 38.787128, 35.575382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067055, 38.664593, 35.666405>,  <27.375725, 38.460365, 35.818108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067055, 38.664593, 35.666405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555937, -0.831134, 0.012264,
		-0.308954, 0.220308, 0.925209,
		-0.771674, 0.510569, -0.379260,
		26.835552, 38.817764, 35.552628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734264, 38.415260, 36.253761>,  <27.375725, 38.460365, 35.818108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734264, 38.415260, 36.253761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621941, 38.454662, 35.871883>,  <26.554546, 38.478306, 35.642757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621941, 38.454662, 35.871883>,  <26.734264, 38.415260, 36.253761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621941, 38.454662, 35.871883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463202, -0.885114, 0.044914,
		-0.840589, 0.454829, 0.294179,
		-0.280810, 0.098510, -0.954695,
		26.537697, 38.484215, 35.585476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975054, 38.329433, 36.175926>,  <26.734264, 38.415260, 36.253761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975054, 38.329433, 36.175926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070496, 38.285553, 35.789967>,  <26.127760, 38.259224, 35.558392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070496, 38.285553, 35.789967>,  <25.975054, 38.329433, 36.175926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070496, 38.285553, 35.789967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515377, -0.856436, -0.030072,
		-0.823077, 0.504463, -0.260887,
		0.238603, -0.109704, -0.964901,
		26.142076, 38.252644, 35.500496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408152, 38.308712, 35.605507>,  <25.975054, 38.329433, 36.175926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408152, 38.308712, 35.605507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709665, 38.087456, 35.463608>,  <25.890574, 37.954700, 35.378468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709665, 38.087456, 35.463608>,  <25.408152, 38.308712, 35.605507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709665, 38.087456, 35.463608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612761, -0.786661, -0.075425,
		-0.237342, 0.274227, -0.931916,
		0.753786, -0.553140, -0.354744,
		25.935801, 37.921513, 35.357185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543104, 37.600880, 35.767605>,  <25.408152, 38.308712, 35.605507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543104, 37.600880, 35.767605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624346, 37.839527, 35.457047>,  <25.673092, 37.982716, 35.270710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624346, 37.839527, 35.457047>,  <25.543104, 37.600880, 35.767605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624346, 37.839527, 35.457047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687745, -0.477477, -0.546829,
		-0.696961, 0.645028, 0.313344,
		0.203105, 0.596620, -0.776398,
		25.685278, 38.018513, 35.224129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846115, 37.661934, 35.366112>,  <25.543104, 37.600880, 35.767605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846115, 37.661934, 35.366112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146706, 37.611458, 35.107079>,  <25.327059, 37.581173, 34.951660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146706, 37.611458, 35.107079>,  <24.846115, 37.661934, 35.366112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146706, 37.611458, 35.107079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441696, -0.825345, -0.351726,
		-0.490094, 0.550347, -0.675963,
		0.751474, -0.126191, -0.647582,
		25.372149, 37.573601, 34.912804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654593, 37.391266, 34.742924>,  <24.846115, 37.661934, 35.366112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654593, 37.391266, 34.742924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046215, 37.316845, 34.709850>,  <25.281189, 37.272194, 34.690006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046215, 37.316845, 34.709850>,  <24.654593, 37.391266, 34.742924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046215, 37.316845, 34.709850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200667, -0.950445, -0.237458,
		-0.034409, 0.249077, -0.967873,
		0.979055, -0.186049, -0.082685,
		25.339931, 37.261032, 34.685043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895098, 37.044331, 34.036552>,  <24.654593, 37.391266, 34.742924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895098, 37.044331, 34.036552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101641, 36.924290, 34.357380>,  <25.225567, 36.852264, 34.549877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101641, 36.924290, 34.357380>,  <24.895098, 37.044331, 34.036552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101641, 36.924290, 34.357380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053909, -0.946119, -0.319299,
		0.854675, 0.121634, -0.504713,
		0.516357, -0.300106, 0.802068,
		25.256548, 36.834259, 34.598000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487480, 36.545349, 33.771214>,  <24.895098, 37.044331, 34.036552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487480, 36.545349, 33.771214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426313, 36.470100, 34.159283>,  <25.389614, 36.424953, 34.392124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426313, 36.470100, 34.159283>,  <25.487480, 36.545349, 33.771214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426313, 36.470100, 34.159283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005387, -0.981542, -0.191173,
		0.988225, -0.034460, 0.149079,
		-0.152915, -0.188119, 0.970169,
		25.380440, 36.413666, 34.450333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871304, 35.959545, 33.985168>,  <25.487480, 36.545349, 33.771214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871304, 35.959545, 33.985168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558609, 35.963451, 34.234581>,  <25.370993, 35.965797, 34.384228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558609, 35.963451, 34.234581>,  <25.871304, 35.959545, 33.985168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558609, 35.963451, 34.234581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024977, -0.998585, 0.046956,
		0.623109, 0.052281, 0.780386,
		-0.781736, 0.009768, 0.623533,
		25.324089, 35.966381, 34.421642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887682, 35.218498, 34.211884>,  <25.871304, 35.959545, 33.985168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887682, 35.218498, 34.211884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653152, 35.428612, 34.458557>,  <25.512434, 35.554680, 34.606560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653152, 35.428612, 34.458557>,  <25.887682, 35.218498, 34.211884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653152, 35.428612, 34.458557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247000, -0.840939, 0.481468,
		0.771502, 0.129976, 0.622809,
		-0.586324, 0.525287, 0.616682,
		25.477255, 35.586197, 34.643562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912725, 34.896454, 34.872398>,  <25.887682, 35.218498, 34.211884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912725, 34.896454, 34.872398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586388, 35.126114, 34.899967>,  <25.390585, 35.263908, 34.916508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586388, 35.126114, 34.899967>,  <25.912725, 34.896454, 34.872398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586388, 35.126114, 34.899967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495238, -0.755256, 0.429334,
		0.298554, 0.316138, 0.900512,
		-0.815846, 0.574147, 0.068922,
		25.341633, 35.298359, 34.920643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648119, 34.895073, 35.558277>,  <25.912725, 34.896454, 34.872398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648119, 34.895073, 35.558277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372496, 34.935371, 35.271210>,  <25.207123, 34.959549, 35.098969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372496, 34.935371, 35.271210>,  <25.648119, 34.895073, 35.558277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372496, 34.935371, 35.271210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456860, -0.829115, 0.322253,
		-0.562566, 0.549926, 0.617334,
		-0.689056, 0.100746, -0.717671,
		25.165779, 34.965595, 35.055908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094334, 35.525616, 35.657276>,  <25.648119, 34.895073, 35.558277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094334, 35.525616, 35.657276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263506, 35.562778, 36.017830>,  <26.365009, 35.585075, 36.234161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263506, 35.562778, 36.017830>,  <26.094334, 35.525616, 35.657276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263506, 35.562778, 36.017830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577630, -0.738793, 0.347173,
		0.698194, -0.667497, -0.258789,
		0.422928, 0.092910, 0.901387,
		26.390385, 35.590652, 36.288246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279535, 34.863308, 35.866001>,  <26.094334, 35.525616, 35.657276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279535, 34.863308, 35.866001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224087, 35.106335, 36.178833>,  <26.190817, 35.252151, 36.366531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224087, 35.106335, 36.178833>,  <26.279535, 34.863308, 35.866001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224087, 35.106335, 36.178833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468597, -0.735949, 0.488668,
		0.872468, -0.298741, 0.386721,
		-0.138622, 0.607563, 0.782081,
		26.182501, 35.288605, 36.413456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455288, 34.486279, 36.497692>,  <26.279535, 34.863308, 35.866001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455288, 34.486279, 36.497692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198904, 34.771473, 36.611404>,  <26.045074, 34.942589, 36.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198904, 34.771473, 36.611404>,  <26.455288, 34.486279, 36.497692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198904, 34.771473, 36.611404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507095, -0.671366, 0.540484,
		0.576216, 0.202270, 0.791872,
		-0.640959, 0.712990, 0.284281,
		26.006617, 34.985371, 36.696690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271141, 34.266129, 37.080219>,  <26.455288, 34.486279, 36.497692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271141, 34.266129, 37.080219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985317, 34.535099, 37.003017>,  <25.813824, 34.696480, 36.956696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985317, 34.535099, 37.003017>,  <26.271141, 34.266129, 37.080219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985317, 34.535099, 37.003017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628582, -0.496031, 0.599031,
		0.307067, 0.549362, 0.777117,
		-0.714560, 0.672424, -0.193004,
		25.770950, 34.736828, 36.945118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002184, 34.483929, 37.752762>,  <26.271141, 34.266129, 37.080219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002184, 34.483929, 37.752762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746645, 34.525272, 37.447819>,  <25.593321, 34.550079, 37.264854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746645, 34.525272, 37.447819>,  <26.002184, 34.483929, 37.752762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746645, 34.525272, 37.447819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691225, -0.512165, 0.509799,
		-0.337761, 0.852645, 0.398640,
		-0.638847, 0.103360, -0.762359,
		25.554991, 34.556282, 37.219112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998672, 35.243477, 37.676064>,  <26.002184, 34.483929, 37.752762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998672, 35.243477, 37.676064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630276, 35.237392, 37.520351>,  <25.409237, 35.233742, 37.426926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630276, 35.237392, 37.520351>,  <25.998672, 35.243477, 37.676064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630276, 35.237392, 37.520351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316650, -0.552862, 0.770764,
		-0.226947, 0.833134, 0.504364,
		-0.920993, -0.015215, -0.389282,
		25.353977, 35.232826, 37.403568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485676, 35.483437, 38.201229>,  <25.998672, 35.243477, 37.676064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485676, 35.483437, 38.201229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303198, 35.245739, 37.936272>,  <25.193710, 35.103123, 37.777298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303198, 35.245739, 37.936272>,  <25.485676, 35.483437, 38.201229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303198, 35.245739, 37.936272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419642, -0.512738, 0.748999,
		-0.784720, 0.619658, -0.015459,
		-0.456197, -0.594242, -0.662390,
		25.166338, 35.067467, 37.737556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722860, 35.389221, 38.412701>,  <25.485676, 35.483437, 38.201229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722860, 35.389221, 38.412701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827141, 35.080051, 38.181313>,  <24.889709, 34.894550, 38.042480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827141, 35.080051, 38.181313>,  <24.722860, 35.389221, 38.412701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827141, 35.080051, 38.181313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359546, -0.633816, 0.684839,
		-0.895970, 0.029448, -0.443137,
		0.260700, -0.772923, -0.578468,
		24.905352, 34.848175, 38.007771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294359, 34.925526, 38.474178>,  <24.722860, 35.389221, 38.412701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294359, 34.925526, 38.474178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607277, 34.703148, 38.361790>,  <24.795027, 34.569721, 38.294357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607277, 34.703148, 38.361790>,  <24.294359, 34.925526, 38.474178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607277, 34.703148, 38.361790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093354, -0.550597, 0.829535,
		-0.615876, -0.622709, -0.482628,
		0.782292, -0.555946, -0.280967,
		24.841965, 34.536366, 38.277500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303318, 34.465816, 38.877625>,  <24.294359, 34.925526, 38.474178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303318, 34.465816, 38.877625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679262, 34.413181, 38.751549>,  <24.904829, 34.381599, 38.675903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679262, 34.413181, 38.751549>,  <24.303318, 34.465816, 38.877625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679262, 34.413181, 38.751549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199282, -0.538193, 0.818923,
		-0.277392, -0.832486, -0.479605,
		0.939862, -0.131586, -0.315190,
		24.961220, 34.373707, 38.656990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864717, 33.950989, 39.048084>,  <24.303318, 34.465816, 38.877625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864717, 33.950989, 39.048084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635218, 33.848026, 38.737072>,  <24.497519, 33.786247, 38.550465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635218, 33.848026, 38.737072>,  <24.864717, 33.950989, 39.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635218, 33.848026, 38.737072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649099, 0.436040, -0.623330,
		0.499484, -0.862329, -0.083095,
		-0.573749, -0.257406, -0.777531,
		24.463093, 33.770805, 38.503811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273649, 33.526493, 38.457573>,  <24.864717, 33.950989, 39.048084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273649, 33.526493, 38.457573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970032, 33.767162, 38.358105>,  <24.787861, 33.911564, 38.298424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970032, 33.767162, 38.358105>,  <25.273649, 33.526493, 38.457573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970032, 33.767162, 38.358105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557275, 0.402984, -0.725980,
		-0.336595, -0.689629, -0.641182,
		-0.759044, 0.601677, -0.248671,
		24.742319, 33.947666, 38.283504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539139, 33.865719, 37.902035>,  <25.273649, 33.526493, 38.457573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539139, 33.865719, 37.902035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173405, 34.027115, 37.915794>,  <24.953964, 34.123955, 37.924049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173405, 34.027115, 37.915794>,  <25.539139, 33.865719, 37.902035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173405, 34.027115, 37.915794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247748, 0.624554, -0.740644,
		-0.320330, -0.668674, -0.671017,
		-0.914335, 0.403494, 0.034401,
		24.899103, 34.148163, 37.926113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081568, 33.785625, 37.261257>,  <25.539139, 33.865719, 37.902035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081568, 33.785625, 37.261257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982912, 34.118683, 37.459599>,  <24.923719, 34.318520, 37.578602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982912, 34.118683, 37.459599>,  <25.081568, 33.785625, 37.261257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982912, 34.118683, 37.459599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371479, 0.553804, -0.745187,
		-0.895083, 0.000408, -0.445900,
		-0.246638, 0.832647, 0.495852,
		24.908920, 34.368477, 37.608353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726837, 34.204533, 36.793652>,  <25.081568, 33.785625, 37.261257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.726837, 34.204533, 36.793652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872408, 34.443054, 37.079861>,  <24.959751, 34.586166, 37.251587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872408, 34.443054, 37.079861>,  <24.726837, 34.204533, 36.793652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872408, 34.443054, 37.079861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500471, 0.522696, -0.690158,
		-0.785548, 0.609266, -0.108211,
		0.363928, 0.596308, 0.715523,
		24.981586, 34.621948, 37.294518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.701876, 34.887787, 36.513058>,  <24.726837, 34.204533, 36.793652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.701876, 34.887787, 36.513058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959942, 34.896614, 36.818546>,  <25.114782, 34.901909, 37.001839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959942, 34.896614, 36.818546>,  <24.701876, 34.887787, 36.513058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959942, 34.896614, 36.818546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652036, 0.505135, -0.565409,
		-0.398259, 0.862759, 0.311508,
		0.645165, 0.022065, 0.763725,
		25.153492, 34.903233, 37.047665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853411, 35.624763, 36.721912>,  <24.701876, 34.887787, 36.513058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853411, 35.624763, 36.721912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149626, 35.368164, 36.801994>,  <25.327354, 35.214203, 36.850044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149626, 35.368164, 36.801994>,  <24.853411, 35.624763, 36.721912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149626, 35.368164, 36.801994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618134, 0.533350, -0.577451,
		0.263654, 0.551378, 0.791498,
		0.740539, -0.641498, 0.200206,
		25.371788, 35.175716, 36.862057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348787, 36.086250, 36.956039>,  <24.853411, 35.624763, 36.721912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348787, 36.086250, 36.956039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529427, 35.743328, 36.857182>,  <25.637810, 35.537575, 36.797867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529427, 35.743328, 36.857182>,  <25.348787, 36.086250, 36.956039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529427, 35.743328, 36.857182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808329, 0.510390, -0.293440,
		0.377707, -0.067254, 0.923479,
		0.451600, -0.857309, -0.247141,
		25.664907, 35.486134, 36.783039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950167, 35.989235, 37.441528>,  <25.348787, 36.086250, 36.956039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950167, 35.989235, 37.441528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009756, 35.792557, 37.098358>,  <26.045509, 35.674549, 36.892456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009756, 35.792557, 37.098358>,  <25.950167, 35.989235, 37.441528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009756, 35.792557, 37.098358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862284, 0.489273, -0.130680,
		0.484016, -0.720310, 0.496872,
		0.148976, -0.491696, -0.857928,
		26.054449, 35.645046, 36.840981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646143, 35.787746, 37.377407>,  <25.950167, 35.989235, 37.441528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646143, 35.787746, 37.377407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515612, 35.818222, 37.000534>,  <26.437294, 35.836510, 36.774410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515612, 35.818222, 37.000534>,  <26.646143, 35.787746, 37.377407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515612, 35.818222, 37.000534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801202, 0.551199, -0.232925,
		0.501583, -0.830888, -0.240916,
		-0.326327, 0.076191, -0.942181,
		26.417713, 35.841080, 36.717880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165140, 35.651711, 36.907299>,  <26.646143, 35.787746, 37.377407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165140, 35.651711, 36.907299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918453, 35.867760, 36.678238>,  <26.770441, 35.997387, 36.540802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918453, 35.867760, 36.678238>,  <27.165140, 35.651711, 36.907299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918453, 35.867760, 36.678238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784491, 0.361585, -0.503816,
		-0.065058, -0.759952, -0.646715,
		-0.616719, 0.540119, -0.572651,
		26.733438, 36.029797, 36.506443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060898, 35.421471, 36.174328>,  <27.165140, 35.651711, 36.907299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060898, 35.421471, 36.174328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013309, 35.817516, 36.204025>,  <26.984756, 36.055145, 36.221844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013309, 35.817516, 36.204025>,  <27.060898, 35.421471, 36.174328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013309, 35.817516, 36.204025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825969, 0.140188, -0.546006,
		-0.551018, -0.003639, -0.834485,
		-0.118972, 0.990118, 0.074240,
		26.977617, 36.114552, 36.226295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085432, 35.576912, 35.455143>,  <27.060898, 35.421471, 36.174328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085432, 35.576912, 35.455143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168659, 35.874435, 35.709213>,  <27.218596, 36.052952, 35.861656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168659, 35.874435, 35.709213>,  <27.085432, 35.576912, 35.455143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168659, 35.874435, 35.709213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855966, 0.175777, -0.486236,
		-0.473318, 0.644861, -0.600104,
		0.208070, 0.743812, 0.635177,
		27.231081, 36.097580, 35.899765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296991, 36.178787, 35.024609>,  <27.085432, 35.576912, 35.455143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296991, 36.178787, 35.024609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413643, 36.216015, 35.405407>,  <27.483633, 36.238350, 35.633884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413643, 36.216015, 35.405407>,  <27.296991, 36.178787, 35.024609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413643, 36.216015, 35.405407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887488, 0.344934, -0.305590,
		-0.356816, 0.934002, 0.017996,
		0.291629, 0.093068, 0.951993,
		27.501131, 36.243935, 35.691006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655594, 36.859436, 35.055767>,  <27.296991, 36.178787, 35.024609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655594, 36.859436, 35.055767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778824, 36.586105, 35.320541>,  <27.852762, 36.422108, 35.479404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778824, 36.586105, 35.320541>,  <27.655594, 36.859436, 35.055767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778824, 36.586105, 35.320541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913210, 0.017347, -0.407120,
		0.266713, 0.729907, 0.629365,
		0.308077, -0.683327, 0.661931,
		27.871246, 36.381107, 35.519119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272295, 36.974583, 35.404335>,  <27.655594, 36.859436, 35.055767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272295, 36.974583, 35.404335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341351, 36.580956, 35.387341>,  <28.382784, 36.344780, 35.377144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341351, 36.580956, 35.387341>,  <28.272295, 36.974583, 35.404335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341351, 36.580956, 35.387341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840199, 0.169637, -0.515061,
		0.514062, 0.053227, 0.856100,
		0.172641, -0.984068, -0.042483,
		28.393143, 36.285736, 35.374596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951218, 36.909939, 35.636585>,  <28.272295, 36.974583, 35.404335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951218, 36.909939, 35.636585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844891, 36.602585, 35.403717>,  <28.781096, 36.418171, 35.263996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844891, 36.602585, 35.403717>,  <28.951218, 36.909939, 35.636585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844891, 36.602585, 35.403717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803714, 0.156840, -0.573973,
		0.532340, -0.620473, 0.575871,
		-0.265815, -0.768384, -0.582175,
		28.765146, 36.372070, 35.229065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549053, 36.390110, 35.656715>,  <28.951218, 36.909939, 35.636585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549053, 36.390110, 35.656715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323032, 36.420490, 35.328094>,  <29.187420, 36.438717, 35.130920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323032, 36.420490, 35.328094>,  <29.549053, 36.390110, 35.656715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323032, 36.420490, 35.328094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807930, 0.252762, -0.532316,
		0.167227, -0.964543, -0.204188,
		-0.565052, 0.075952, -0.821552,
		29.153517, 36.443275, 35.081631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771866, 36.009865, 35.064205>,  <29.549053, 36.390110, 35.656715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771866, 36.009865, 35.064205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615999, 36.371010, 34.991539>,  <29.522480, 36.587696, 34.947941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615999, 36.371010, 34.991539>,  <29.771866, 36.009865, 35.064205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615999, 36.371010, 34.991539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895467, 0.325350, -0.303786,
		-0.215172, -0.281050, -0.935260,
		-0.389666, 0.902861, -0.181665,
		29.499100, 36.641869, 34.937038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038301, 36.166039, 34.404636>,  <29.771866, 36.009865, 35.064205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038301, 36.166039, 34.404636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941326, 36.501869, 34.599094>,  <29.883141, 36.703369, 34.715767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941326, 36.501869, 34.599094>,  <30.038301, 36.166039, 34.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941326, 36.501869, 34.599094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924634, 0.351667, -0.146228,
		-0.293730, 0.414051, -0.861559,
		-0.242436, 0.839578, 0.486141,
		29.868595, 36.753742, 34.744938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973047, 36.811028, 34.026363>,  <30.038301, 36.166039, 34.404636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973047, 36.811028, 34.026363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111250, 36.863224, 34.398083>,  <30.194172, 36.894543, 34.621117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111250, 36.863224, 34.398083>,  <29.973047, 36.811028, 34.026363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111250, 36.863224, 34.398083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847480, 0.381880, -0.368707,
		-0.402993, 0.914954, 0.021356,
		0.345506, 0.130487, 0.929300,
		30.214901, 36.902370, 34.676872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465372, 37.396530, 33.978542>,  <29.973047, 36.811028, 34.026363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465372, 37.396530, 33.978542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519381, 37.077908, 34.214260>,  <30.551786, 36.886734, 34.355690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519381, 37.077908, 34.214260>,  <30.465372, 37.396530, 33.978542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519381, 37.077908, 34.214260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961176, -0.039147, -0.273145,
		0.240645, 0.603293, 0.760347,
		0.135021, -0.796558, 0.589291,
		30.559887, 36.838940, 34.391048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803148, 37.403366, 34.707150>,  <30.465372, 37.396530, 33.978542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803148, 37.403366, 34.707150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822517, 37.123997, 34.421532>,  <30.834139, 36.956375, 34.250160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822517, 37.123997, 34.421532>,  <30.803148, 37.403366, 34.707150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822517, 37.123997, 34.421532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976909, 0.182054, -0.111822,
		0.208094, -0.692138, 0.691117,
		0.048424, -0.698428, -0.714040,
		30.837044, 36.914467, 34.207321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428844, 36.900543, 34.724751>,  <30.803148, 37.403366, 34.707150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428844, 36.900543, 34.724751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311289, 36.929420, 34.343506>,  <31.240755, 36.946747, 34.114761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311289, 36.929420, 34.343506>,  <31.428844, 36.900543, 34.724751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311289, 36.929420, 34.343506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955825, 0.016640, -0.293465,
		-0.005326, -0.997252, -0.073893,
		-0.293888, 0.072192, -0.953110,
		31.223122, 36.951077, 34.057571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738789, 36.437248, 34.319927>,  <31.428844, 36.900543, 34.724751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738789, 36.437248, 34.319927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657206, 36.744724, 34.077435>,  <31.608255, 36.929211, 33.931938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657206, 36.744724, 34.077435>,  <31.738789, 36.437248, 34.319927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657206, 36.744724, 34.077435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953154, 0.014622, -0.302134,
		-0.223382, -0.639456, -0.735661,
		-0.203958, 0.768689, -0.606233,
		31.596018, 36.975330, 33.895565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403973, 36.423122, 33.680916>,  <31.738789, 36.437248, 34.319927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403973, 36.423122, 33.680916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479151, 36.788280, 33.535976>,  <31.524258, 37.007374, 33.449013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479151, 36.788280, 33.535976>,  <31.403973, 36.423122, 33.680916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479151, 36.788280, 33.535976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364285, -0.277823, -0.888882,
		-0.912126, 0.299061, 0.280338,
		0.187946, 0.912895, -0.362353,
		31.535534, 37.062149, 33.427269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821283, 36.687859, 33.337677>,  <31.403973, 36.423122, 33.680916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821283, 36.687859, 33.337677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140919, 36.872383, 33.183456>,  <31.332701, 36.983097, 33.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140919, 36.872383, 33.183456>,  <30.821283, 36.687859, 33.337677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140919, 36.872383, 33.183456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361644, -0.143478, -0.921210,
		-0.480280, 0.875562, 0.052178,
		0.799090, 0.461309, -0.385551,
		31.380646, 37.010777, 33.067791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553856, 37.073608, 32.793297>,  <30.821283, 36.687859, 33.337677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553856, 37.073608, 32.793297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942785, 37.096943, 32.702801>,  <31.176142, 37.110943, 32.648502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942785, 37.096943, 32.702801>,  <30.553856, 37.073608, 32.793297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942785, 37.096943, 32.702801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211804, -0.188705, -0.958921,
		-0.098636, 0.980299, -0.171125,
		0.972322, 0.058339, -0.226245,
		31.234482, 37.114445, 32.634926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503042, 37.539848, 32.331833>,  <30.553856, 37.073608, 32.793297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503042, 37.539848, 32.331833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846689, 37.343964, 32.272362>,  <31.052877, 37.226433, 32.236679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846689, 37.343964, 32.272362>,  <30.503042, 37.539848, 32.331833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846689, 37.343964, 32.272362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205457, -0.063956, -0.976574,
		0.468728, 0.869537, -0.155560,
		0.859117, -0.489709, -0.148674,
		31.104424, 37.197052, 32.227760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864563, 37.894718, 31.781000>,  <30.503042, 37.539848, 32.331833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864563, 37.894718, 31.781000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019142, 37.525997, 31.793245>,  <31.111891, 37.304764, 31.800592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019142, 37.525997, 31.793245>,  <30.864563, 37.894718, 31.781000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019142, 37.525997, 31.793245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171984, -0.104634, -0.979527,
		0.906134, 0.373273, -0.198971,
		0.386450, -0.921802, 0.030615,
		31.135077, 37.249458, 31.802429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342907, 37.837696, 31.173214>,  <30.864563, 37.894718, 31.781000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342907, 37.837696, 31.173214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260527, 37.461124, 31.280014>,  <31.211098, 37.235180, 31.344093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260527, 37.461124, 31.280014>,  <31.342907, 37.837696, 31.173214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260527, 37.461124, 31.280014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025003, -0.267697, -0.963179,
		0.978243, -0.205045, 0.031594,
		-0.205953, -0.941432, 0.266999,
		31.198740, 37.178696, 31.360113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662468, 37.532558, 30.622835>,  <31.342907, 37.837696, 31.173214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662468, 37.532558, 30.622835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460829, 37.224571, 30.779312>,  <31.339846, 37.039780, 30.873199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460829, 37.224571, 30.779312>,  <31.662468, 37.532558, 30.622835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460829, 37.224571, 30.779312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279156, -0.283376, -0.917480,
		0.817286, -0.571705, -0.072092,
		-0.504098, -0.769969, 0.391194,
		31.309599, 36.993580, 30.896671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834415, 36.916756, 30.231573>,  <31.662468, 37.532558, 30.622835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834415, 36.916756, 30.231573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499775, 36.807640, 30.421597>,  <31.298990, 36.742168, 30.535610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499775, 36.807640, 30.421597>,  <31.834415, 36.916756, 30.231573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499775, 36.807640, 30.421597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403424, -0.279877, -0.871159,
		0.370605, -0.920463, 0.124094,
		-0.836601, -0.272793, 0.475061,
		31.248795, 36.725803, 30.564116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757139, 36.283131, 30.160782>,  <31.834415, 36.916756, 30.231573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757139, 36.283131, 30.160782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378839, 36.380619, 30.246719>,  <31.151859, 36.439114, 30.298283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378839, 36.380619, 30.246719>,  <31.757139, 36.283131, 30.160782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378839, 36.380619, 30.246719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313387, -0.509866, -0.801140,
		-0.085714, -0.825006, 0.558585,
		-0.945750, 0.243722, 0.214843,
		31.095116, 36.453735, 30.311172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495173, 35.690014, 30.239712>,  <31.757139, 36.283131, 30.160782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495173, 35.690014, 30.239712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247274, 35.982597, 30.125950>,  <31.098536, 36.158146, 30.057693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247274, 35.982597, 30.125950>,  <31.495173, 35.690014, 30.239712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247274, 35.982597, 30.125950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274009, -0.541255, -0.794961,
		-0.735417, -0.414742, 0.535865,
		-0.619743, 0.731459, -0.284405,
		31.061352, 36.202034, 30.040628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055367, 35.324924, 29.819386>,  <31.495173, 35.690014, 30.239712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055367, 35.324924, 29.819386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978037, 35.704842, 29.720985>,  <30.931639, 35.932793, 29.661945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978037, 35.704842, 29.720985>,  <31.055367, 35.324924, 29.819386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978037, 35.704842, 29.720985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030072, -0.256350, -0.966116,
		-0.980674, -0.179374, 0.078121,
		-0.193322, 0.949795, -0.246002,
		30.920040, 35.989780, 29.647184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480556, 35.259739, 29.343428>,  <31.055367, 35.324924, 29.819386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480556, 35.259739, 29.343428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617844, 35.629532, 29.277044>,  <30.700216, 35.851406, 29.237215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617844, 35.629532, 29.277044>,  <30.480556, 35.259739, 29.343428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617844, 35.629532, 29.277044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005556, -0.178684, -0.983891,
		-0.939240, 0.336766, -0.066464,
		0.343217, 0.924478, -0.165956,
		30.720808, 35.906876, 29.227257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963476, 35.610729, 28.882792>,  <30.480556, 35.259739, 29.343428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963476, 35.610729, 28.882792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294012, 35.833916, 28.852228>,  <30.492332, 35.967827, 28.833889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294012, 35.833916, 28.852228>,  <29.963476, 35.610729, 28.882792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294012, 35.833916, 28.852228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120590, 0.042772, -0.991780,
		-0.550112, 0.828760, 0.102630,
		0.826338, 0.557967, -0.076411,
		30.541914, 36.001305, 28.829306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866327, 36.085758, 28.444492>,  <29.963476, 35.610729, 28.882792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866327, 36.085758, 28.444492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266138, 36.082577, 28.432619>,  <30.506025, 36.080669, 28.425495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266138, 36.082577, 28.432619>,  <29.866327, 36.085758, 28.444492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266138, 36.082577, 28.432619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028633, 0.109703, -0.993552,
		0.011157, 0.993933, 0.109424,
		0.999528, -0.007952, -0.029684,
		30.565996, 36.080193, 28.423714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880711, 36.593269, 27.955488>,  <29.866327, 36.085758, 28.444492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880711, 36.593269, 27.955488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227785, 36.394848, 27.942526>,  <30.436029, 36.275795, 27.934750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227785, 36.394848, 27.942526>,  <29.880711, 36.593269, 27.955488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227785, 36.394848, 27.942526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053165, -0.027790, -0.998199,
		0.494262, 0.867846, -0.050486,
		0.867686, -0.496056, -0.032404,
		30.488091, 36.246033, 27.932804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289940, 37.017918, 27.522106>,  <29.880711, 36.593269, 27.955488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289940, 37.017918, 27.522106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443655, 36.648842, 27.509687>,  <30.535885, 36.427395, 27.502235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443655, 36.648842, 27.509687>,  <30.289940, 37.017918, 27.522106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443655, 36.648842, 27.509687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005780, 0.036035, -0.999334,
		0.923195, 0.383852, 0.019181,
		0.384288, -0.922691, -0.031049,
		30.558941, 36.372036, 27.500372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788094, 37.037495, 27.148783>,  <30.289940, 37.017918, 27.522106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788094, 37.037495, 27.148783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717258, 36.644821, 27.120686>,  <30.674757, 36.409218, 27.103828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717258, 36.644821, 27.120686>,  <30.788094, 37.037495, 27.148783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717258, 36.644821, 27.120686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107833, 0.051586, -0.992830,
		0.978269, -0.183394, 0.096722,
		-0.177090, -0.981685, -0.070241,
		30.664131, 36.350315, 27.099613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988802, 36.948853, 26.551727>,  <30.788094, 37.037495, 27.148783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988802, 36.948853, 26.551727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806433, 36.597088, 26.606531>,  <30.697012, 36.386028, 26.639414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806433, 36.597088, 26.606531>,  <30.988802, 36.948853, 26.551727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806433, 36.597088, 26.606531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060694, -0.122861, -0.990566,
		0.887947, -0.459937, 0.002640,
		-0.455923, -0.879411, 0.137010,
		30.669657, 36.333263, 26.647635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296745, 36.565872, 26.037069>,  <30.988802, 36.948853, 26.551727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296745, 36.565872, 26.037069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962391, 36.364349, 26.124222>,  <30.761778, 36.243435, 26.176514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962391, 36.364349, 26.124222>,  <31.296745, 36.565872, 26.037069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962391, 36.364349, 26.124222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158569, -0.158382, -0.974562,
		0.525503, -0.849171, 0.052500,
		-0.835885, -0.503810, 0.217882,
		30.711626, 36.213207, 26.189587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234797, 35.907593, 25.621666>,  <31.296745, 36.565872, 26.037069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234797, 35.907593, 25.621666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863134, 36.018841, 25.719086>,  <30.640137, 36.085590, 25.777536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863134, 36.018841, 25.719086>,  <31.234797, 35.907593, 25.621666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863134, 36.018841, 25.719086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295410, -0.162499, -0.941449,
		-0.222260, -0.946701, 0.233147,
		-0.929157, 0.278120, 0.243548,
		30.584387, 36.102276, 25.792150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936783, 35.534832, 25.203432>,  <31.234797, 35.907593, 25.621666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936783, 35.534832, 25.203432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659090, 35.793888, 25.329035>,  <30.492476, 35.949322, 25.404396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659090, 35.793888, 25.329035>,  <30.936783, 35.534832, 25.203432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659090, 35.793888, 25.329035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385065, 0.034382, -0.922249,
		-0.608086, -0.761166, 0.225517,
		-0.694231, 0.647645, 0.314006,
		30.450821, 35.988182, 25.423237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254593, 35.298401, 24.880688>,  <30.936783, 35.534832, 25.203432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254593, 35.298401, 24.880688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221697, 35.690895, 24.950453>,  <30.201960, 35.926392, 24.992311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221697, 35.690895, 24.950453>,  <30.254593, 35.298401, 24.880688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221697, 35.690895, 24.950453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483705, 0.113712, -0.867813,
		-0.871359, -0.155735, 0.465275,
		-0.082241, 0.981232, 0.174414,
		30.197025, 35.985264, 25.002777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595182, 35.408592, 24.524246>,  <30.254593, 35.298401, 24.880688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595182, 35.408592, 24.524246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807871, 35.741642, 24.586226>,  <29.935484, 35.941471, 24.623413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807871, 35.741642, 24.586226>,  <29.595182, 35.408592, 24.524246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807871, 35.741642, 24.586226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313170, 0.363289, -0.877465,
		-0.786889, 0.418043, 0.453922,
		0.531723, 0.832623, 0.154950,
		29.967388, 35.991428, 24.632711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210440, 35.874783, 24.295790>,  <29.595182, 35.408592, 24.524246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210440, 35.874783, 24.295790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571239, 36.047478, 24.295126>,  <29.787720, 36.151093, 24.294727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571239, 36.047478, 24.295126>,  <29.210440, 35.874783, 24.295790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571239, 36.047478, 24.295126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132667, 0.273514, -0.952675,
		-0.410848, 0.859533, 0.303986,
		0.902000, 0.431733, -0.001659,
		29.841839, 36.176998, 24.294628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023808, 36.557510, 23.973433>,  <29.210440, 35.874783, 24.295790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023808, 36.557510, 23.973433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414165, 36.478642, 23.936012>,  <29.648380, 36.431320, 23.913559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414165, 36.478642, 23.936012>,  <29.023808, 36.557510, 23.973433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414165, 36.478642, 23.936012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018597, 0.351970, -0.935827,
		0.217449, 0.915008, 0.339818,
		0.975894, -0.197175, -0.093552,
		29.706934, 36.419491, 23.907946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403538, 37.185760, 23.766720>,  <29.023808, 36.557510, 23.973433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403538, 37.185760, 23.766720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629906, 36.879597, 23.644161>,  <29.765726, 36.695896, 23.570625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629906, 36.879597, 23.644161>,  <29.403538, 37.185760, 23.766720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629906, 36.879597, 23.644161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069859, 0.325779, -0.942861,
		0.821496, 0.554988, 0.130893,
		0.565919, -0.765413, -0.306397,
		29.799681, 36.649971, 23.552242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895840, 37.442322, 23.211060>,  <29.403538, 37.185760, 23.766720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895840, 37.442322, 23.211060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897631, 37.044090, 23.173517>,  <29.898706, 36.805153, 23.150991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897631, 37.044090, 23.173517>,  <29.895840, 37.442322, 23.211060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897631, 37.044090, 23.173517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067836, 0.093944, -0.993264,
		0.997686, -0.001919, 0.067956,
		0.004478, -0.995575, -0.093857,
		29.898973, 36.745419, 23.145361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408035, 37.350410, 22.760693>,  <29.895840, 37.442322, 23.211060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408035, 37.350410, 22.760693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178770, 37.023079, 22.743631>,  <30.041210, 36.826679, 22.733395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178770, 37.023079, 22.743631>,  <30.408035, 37.350410, 22.760693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178770, 37.023079, 22.743631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044193, 0.021105, -0.998800,
		0.818248, -0.574361, 0.024068,
		-0.573164, -0.818330, -0.042652,
		30.006821, 36.777580, 22.730835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765808, 36.853802, 22.351759>,  <30.408035, 37.350410, 22.760693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765808, 36.853802, 22.351759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391100, 36.714050, 22.343826>,  <30.166275, 36.630199, 22.339067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391100, 36.714050, 22.343826>,  <30.765808, 36.853802, 22.351759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391100, 36.714050, 22.343826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052940, -0.085469, -0.994933,
		0.345915, -0.933075, 0.098561,
		-0.936771, -0.349380, -0.019832,
		30.110069, 36.609238, 22.337877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837183, 36.233685, 22.108799>,  <30.765808, 36.853802, 22.351759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837183, 36.233685, 22.108799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441275, 36.258820, 22.057564>,  <30.203730, 36.273903, 22.026823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441275, 36.258820, 22.057564>,  <30.837183, 36.233685, 22.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441275, 36.258820, 22.057564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110882, -0.226149, -0.967761,
		-0.089780, -0.972064, 0.216868,
		-0.989770, 0.062839, -0.128088,
		30.144344, 36.277672, 22.019136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611319, 35.591553, 21.680649>,  <30.837183, 36.233685, 22.108799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611319, 35.591553, 21.680649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316921, 35.856277, 21.623623>,  <30.140284, 36.015110, 21.589407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316921, 35.856277, 21.623623>,  <30.611319, 35.591553, 21.680649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316921, 35.856277, 21.623623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199949, 0.011307, -0.979741,
		-0.646790, -0.749587, -0.140650,
		-0.735992, 0.661809, -0.142566,
		30.096123, 36.054821, 21.580853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187943, 35.292973, 21.253994>,  <30.611319, 35.591553, 21.680649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187943, 35.292973, 21.253994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078773, 35.673725, 21.198233>,  <30.013271, 35.902176, 21.164776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078773, 35.673725, 21.198233>,  <30.187943, 35.292973, 21.253994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078773, 35.673725, 21.198233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325713, -0.044921, -0.944401,
		-0.905220, -0.303154, -0.297781,
		-0.272922, 0.951882, -0.139404,
		29.996897, 35.959290, 21.156412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723822, 35.359749, 20.554522>,  <30.187943, 35.292973, 21.253994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723822, 35.359749, 20.554522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867121, 35.723183, 20.640442>,  <29.953100, 35.941242, 20.691994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867121, 35.723183, 20.640442>,  <29.723822, 35.359749, 20.554522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867121, 35.723183, 20.640442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245748, 0.130190, -0.960551,
		-0.900703, 0.396903, -0.176642,
		0.358249, 0.908580, 0.214801,
		29.974596, 35.995758, 20.704882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474289, 35.679283, 20.046055>,  <29.723822, 35.359749, 20.554522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474289, 35.679283, 20.046055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763363, 35.925526, 20.171755>,  <29.936808, 36.073273, 20.247175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763363, 35.925526, 20.171755>,  <29.474289, 35.679283, 20.046055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763363, 35.925526, 20.171755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194179, 0.255515, -0.947104,
		-0.663343, 0.745477, 0.065118,
		0.722683, 0.615610, 0.314250,
		29.980167, 36.110210, 20.266029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428331, 36.395794, 19.732183>,  <29.474289, 35.679283, 20.046055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428331, 36.395794, 19.732183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810251, 36.337727, 19.835941>,  <30.039404, 36.302887, 19.898197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810251, 36.337727, 19.835941>,  <29.428331, 36.395794, 19.732183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810251, 36.337727, 19.835941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279948, 0.145744, -0.948888,
		0.099940, 0.978614, 0.179795,
		0.954799, -0.145165, 0.259396,
		30.096691, 36.294178, 19.913759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860325, 36.955982, 19.342897>,  <29.428331, 36.395794, 19.732183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860325, 36.955982, 19.342897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106682, 36.654060, 19.433178>,  <30.254496, 36.472908, 19.487347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106682, 36.654060, 19.433178>,  <29.860325, 36.955982, 19.342897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106682, 36.654060, 19.433178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532724, 0.187945, -0.825155,
		0.580413, 0.628445, 0.517858,
		0.615894, -0.754807, 0.225702,
		30.291451, 36.427620, 19.500889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538733, 37.214718, 19.134851>,  <29.860325, 36.955982, 19.342897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538733, 37.214718, 19.134851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598230, 36.820503, 19.167332>,  <30.633928, 36.583973, 19.186821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598230, 36.820503, 19.167332>,  <30.538733, 37.214718, 19.134851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598230, 36.820503, 19.167332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519700, 0.008045, -0.854311,
		0.841301, 0.169274, 0.513380,
		0.148743, -0.985536, 0.081203,
		30.642853, 36.524841, 19.191692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258270, 37.102909, 19.270086>,  <30.538733, 37.214718, 19.134851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258270, 37.102909, 19.270086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104523, 36.777439, 19.095640>,  <31.012274, 36.582157, 18.990973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104523, 36.777439, 19.095640>,  <31.258270, 37.102909, 19.270086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104523, 36.777439, 19.095640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703888, 0.047361, -0.708730,
		0.597329, -0.579391, 0.554530,
		-0.384369, -0.813672, -0.436117,
		30.989212, 36.533337, 18.964806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838713, 36.749981, 19.071711>,  <31.258270, 37.102909, 19.270086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838713, 36.749981, 19.071711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532108, 36.601219, 18.862274>,  <31.348146, 36.511963, 18.736612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532108, 36.601219, 18.862274>,  <31.838713, 36.749981, 19.071711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532108, 36.601219, 18.862274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575598, -0.036209, -0.816931,
		0.284863, -0.927564, 0.241823,
		-0.766512, -0.371906, -0.523589,
		31.302155, 36.489647, 18.705198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203571, 36.395267, 18.560219>,  <31.838713, 36.749981, 19.071711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203571, 36.395267, 18.560219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827398, 36.450684, 18.436028>,  <31.601694, 36.483932, 18.361513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827398, 36.450684, 18.436028>,  <32.203571, 36.395267, 18.560219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827398, 36.450684, 18.436028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328980, 0.140335, -0.933851,
		-0.085804, -0.980364, -0.177552,
		-0.940431, 0.138539, -0.310479,
		31.545269, 36.492245, 18.342884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182690, 36.000900, 17.988974>,  <32.203571, 36.395267, 18.560219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182690, 36.000900, 17.988974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876858, 36.256344, 17.954121>,  <31.693359, 36.409611, 17.933208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876858, 36.256344, 17.954121>,  <32.182690, 36.000900, 17.988974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876858, 36.256344, 17.954121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318181, 0.256419, -0.912694,
		-0.560516, -0.725551, -0.399247,
		-0.764580, 0.638612, -0.087130,
		31.647484, 36.447926, 17.927982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873081, 35.788517, 17.432989>,  <32.182690, 36.000900, 17.988974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873081, 35.788517, 17.432989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777569, 36.176395, 17.453690>,  <31.720261, 36.409122, 17.466110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777569, 36.176395, 17.453690>,  <31.873081, 35.788517, 17.432989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777569, 36.176395, 17.453690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300749, 0.124520, -0.945540,
		-0.923328, -0.210212, -0.321367,
		-0.238781, 0.969694, 0.051751,
		31.705935, 36.467304, 17.469215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551367, 35.964283, 16.878542>,  <31.873081, 35.788517, 17.432989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551367, 35.964283, 16.878542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637726, 36.331932, 17.010361>,  <31.689541, 36.552521, 17.089453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637726, 36.331932, 17.010361>,  <31.551367, 35.964283, 16.878542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637726, 36.331932, 17.010361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147458, 0.302946, -0.941531,
		-0.965217, 0.251870, -0.070126,
		0.215899, 0.919122, 0.329549,
		31.702496, 36.607670, 17.109226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267281, 36.272568, 16.320240>,  <31.551367, 35.964283, 16.878542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267281, 36.272568, 16.320240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523659, 36.512264, 16.512112>,  <31.677486, 36.656082, 16.627235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523659, 36.512264, 16.512112>,  <31.267281, 36.272568, 16.320240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523659, 36.512264, 16.512112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371143, 0.305069, -0.877032,
		-0.671893, 0.740161, -0.026873,
		0.640947, 0.599245, 0.479680,
		31.715942, 36.692039, 16.656015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231331, 36.967354, 16.087458>,  <31.267281, 36.272568, 16.320240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231331, 36.967354, 16.087458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601435, 36.872398, 16.205803>,  <31.823498, 36.815426, 16.276810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601435, 36.872398, 16.205803>,  <31.231331, 36.967354, 16.087458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601435, 36.872398, 16.205803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318525, 0.062676, -0.945840,
		0.205992, 0.969390, 0.133607,
		0.925262, -0.237393, 0.295864,
		31.879013, 36.801182, 16.294561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674789, 37.538090, 15.955266>,  <31.231331, 36.967354, 16.087458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674789, 37.538090, 15.955266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887062, 37.200344, 15.925821>,  <32.014427, 36.997696, 15.908154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887062, 37.200344, 15.925821>,  <31.674789, 37.538090, 15.955266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887062, 37.200344, 15.925821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398170, 0.325031, -0.857796,
		0.748223, 0.425906, 0.508691,
		0.530681, -0.844369, -0.073612,
		32.046265, 36.947033, 15.903738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170994, 38.041370, 16.180935>,  <31.674789, 37.538090, 15.955266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170994, 38.041370, 16.180935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456760, 38.320999, 16.168886>,  <32.628220, 38.488777, 16.161657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456760, 38.320999, 16.168886>,  <32.170994, 38.041370, 16.180935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456760, 38.320999, 16.168886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120642, 0.080659, -0.989414,
		-0.689242, 0.710488, 0.141961,
		0.714417, 0.699072, -0.030121,
		32.671085, 38.530720, 16.159849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835976, 38.628849, 15.967123>,  <32.170994, 38.041370, 16.180935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835976, 38.628849, 15.967123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220455, 38.671703, 15.865442>,  <32.451141, 38.697418, 15.804434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220455, 38.671703, 15.865442>,  <31.835976, 38.628849, 15.967123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220455, 38.671703, 15.865442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219538, -0.260872, -0.940079,
		-0.167034, 0.959409, -0.227229,
		0.961199, 0.107140, -0.254201,
		32.508816, 38.703846, 15.789182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795919, 38.986771, 15.393485>,  <31.835976, 38.628849, 15.967123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795919, 38.986771, 15.393485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173801, 38.856197, 15.381043>,  <32.400532, 38.777851, 15.373578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173801, 38.856197, 15.381043>,  <31.795919, 38.986771, 15.393485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173801, 38.856197, 15.381043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109880, -0.225758, -0.967967,
		0.308958, 0.917863, -0.249144,
		0.944707, -0.326437, -0.031105,
		32.457214, 38.758266, 15.371712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623981, 39.224346, 14.756967>,  <31.795919, 38.986771, 15.393485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623981, 39.224346, 14.756967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488285, 39.357822, 15.108777>,  <31.406868, 39.437908, 15.319863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488285, 39.357822, 15.108777>,  <31.623981, 39.224346, 14.756967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488285, 39.357822, 15.108777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532175, 0.839050, -0.113071,
		-0.775697, 0.429703, -0.462223,
		-0.339241, 0.333692, 0.879525,
		31.386513, 39.457932, 15.372635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961832, 38.546028, 14.855044>,  <31.623981, 39.224346, 14.756967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961832, 38.546028, 14.855044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279224, 38.680363, 14.652026>,  <32.469658, 38.760963, 14.530215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279224, 38.680363, 14.652026>,  <31.961832, 38.546028, 14.855044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279224, 38.680363, 14.652026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501766, 0.110950, 0.857858,
		0.344415, -0.935362, -0.080477,
		0.793479, 0.335839, -0.507546,
		32.517269, 38.781113, 14.499763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653332, 38.102314, 14.915680>,  <31.961832, 38.546028, 14.855044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653332, 38.102314, 14.915680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689655, 38.497681, 14.867042>,  <32.711449, 38.734901, 14.837858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689655, 38.497681, 14.867042>,  <32.653332, 38.102314, 14.915680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689655, 38.497681, 14.867042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496842, 0.060856, 0.865704,
		0.863077, -0.139024, -0.485562,
		0.090804, 0.988417, -0.121597,
		32.716896, 38.794205, 14.830563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309906, 38.273830, 15.137499>,  <32.653332, 38.102314, 14.915680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309906, 38.273830, 15.137499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079620, 38.596462, 15.191135>,  <32.941448, 38.790039, 15.223317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079620, 38.596462, 15.191135>,  <33.309906, 38.273830, 15.137499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079620, 38.596462, 15.191135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420907, 0.151757, 0.894319,
		0.700988, 0.571316, -0.426864,
		-0.575719, 0.806578, 0.134091,
		32.906906, 38.838436, 15.231362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675816, 38.902447, 15.390692>,  <33.309906, 38.273830, 15.137499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675816, 38.902447, 15.390692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304390, 38.879162, 15.537325>,  <33.081535, 38.865189, 15.625305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304390, 38.879162, 15.537325>,  <33.675816, 38.902447, 15.390692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304390, 38.879162, 15.537325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348361, 0.204246, 0.914838,
		-0.128130, 0.977187, -0.169375,
		-0.928562, -0.058214, 0.366584,
		33.025822, 38.861698, 15.647300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497387, 39.498436, 15.926121>,  <33.675816, 38.902447, 15.390692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497387, 39.498436, 15.926121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278984, 39.172062, 16.002150>,  <33.147942, 38.976238, 16.047768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278984, 39.172062, 16.002150>,  <33.497387, 39.498436, 15.926121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278984, 39.172062, 16.002150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141407, 0.133864, 0.980859,
		-0.825762, 0.562432, 0.042288,
		-0.546005, -0.815936, 0.190071,
		33.115181, 38.927280, 16.059172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187855, 39.664459, 16.470055>,  <33.497387, 39.498436, 15.926121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187855, 39.664459, 16.470055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125740, 39.269932, 16.492186>,  <33.088470, 39.033215, 16.505465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125740, 39.269932, 16.492186>,  <33.187855, 39.664459, 16.470055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125740, 39.269932, 16.492186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105244, 0.072208, 0.991821,
		-0.982247, 0.148198, -0.115017,
		-0.155291, -0.986318, 0.055330,
		33.079151, 38.974037, 16.508785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485085, 39.525955, 16.816778>,  <33.187855, 39.664459, 16.470055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485085, 39.525955, 16.816778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745224, 39.222683, 16.835598>,  <32.901306, 39.040722, 16.846889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745224, 39.222683, 16.835598>,  <32.485085, 39.525955, 16.816778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745224, 39.222683, 16.835598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107946, -0.030931, 0.993675,
		-0.751926, -0.651315, -0.101958,
		0.650349, -0.758177, 0.047049,
		32.940331, 38.995232, 16.849712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228420, 39.024956, 17.476322>,  <32.485085, 39.525955, 16.816778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228420, 39.024956, 17.476322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588963, 38.880169, 17.381207>,  <32.805286, 38.793297, 17.324137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588963, 38.880169, 17.381207>,  <32.228420, 39.024956, 17.476322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588963, 38.880169, 17.381207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118224, -0.322561, 0.939137,
		-0.416637, -0.874606, -0.247948,
		0.901353, -0.361966, -0.237790,
		32.859367, 38.771580, 17.309870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210789, 38.436123, 17.797985>,  <32.228420, 39.024956, 17.476322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210789, 38.436123, 17.797985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596306, 38.530861, 17.748993>,  <32.827618, 38.587704, 17.719597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596306, 38.530861, 17.748993>,  <32.210789, 38.436123, 17.797985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596306, 38.530861, 17.748993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172270, -0.202494, 0.964012,
		0.203516, -0.950212, -0.235964,
		0.963797, 0.236841, -0.122482,
		32.885445, 38.601913, 17.712248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589508, 37.935898, 18.071526>,  <32.210789, 38.436123, 17.797985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589508, 37.935898, 18.071526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860470, 38.229935, 18.060444>,  <33.023045, 38.406357, 18.053795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860470, 38.229935, 18.060444>,  <32.589508, 37.935898, 18.071526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860470, 38.229935, 18.060444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416859, -0.352569, 0.837809,
		0.606101, -0.579079, -0.545260,
		0.677399, 0.735093, -0.027702,
		33.063690, 38.450462, 18.052134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202694, 37.532253, 18.094126>,  <32.589508, 37.935898, 18.071526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202694, 37.532253, 18.094126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221466, 37.913891, 18.212444>,  <33.232731, 38.142876, 18.283436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221466, 37.913891, 18.212444>,  <33.202694, 37.532253, 18.094126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221466, 37.913891, 18.212444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347285, -0.293235, 0.890734,
		0.936585, 0.060919, -0.345106,
		0.046935, 0.954098, 0.295796,
		33.235546, 38.200119, 18.301184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812622, 37.514896, 18.641973>,  <33.202694, 37.532253, 18.094126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812622, 37.514896, 18.641973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623325, 37.860851, 18.708918>,  <33.509747, 38.068424, 18.749084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623325, 37.860851, 18.708918>,  <33.812622, 37.514896, 18.641973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623325, 37.860851, 18.708918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320734, -0.007783, 0.947137,
		0.820471, 0.501903, -0.273716,
		-0.473241, 0.864889, 0.167363,
		33.481354, 38.120319, 18.759127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225845, 37.927944, 18.957916>,  <33.812622, 37.514896, 18.641973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225845, 37.927944, 18.957916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880001, 38.096680, 19.067093>,  <33.672493, 38.197922, 19.132599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880001, 38.096680, 19.067093>,  <34.225845, 37.927944, 18.957916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880001, 38.096680, 19.067093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309699, 0.019683, 0.950631,
		0.395638, 0.906458, -0.147661,
		-0.864614, 0.421836, 0.272942,
		33.620617, 38.223232, 19.148975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463070, 38.368599, 19.360691>,  <34.225845, 37.927944, 18.957916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463070, 38.368599, 19.360691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074448, 38.328484, 19.446508>,  <33.841274, 38.304417, 19.497999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074448, 38.328484, 19.446508>,  <34.463070, 38.368599, 19.360691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074448, 38.328484, 19.446508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213417, 0.021935, 0.976715,
		-0.102657, 0.994717, 0.000092,
		-0.971553, -0.100286, 0.214542,
		33.782982, 38.298397, 19.510870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467422, 38.598854, 20.034430>,  <34.463070, 38.368599, 19.360691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467422, 38.598854, 20.034430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103043, 38.436077, 20.007418>,  <33.884415, 38.338409, 19.991211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103043, 38.436077, 20.007418>,  <34.467422, 38.598854, 20.034430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103043, 38.436077, 20.007418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019068, -0.121985, 0.992349,
		-0.412067, 0.905272, 0.103363,
		-0.910954, -0.406944, -0.067528,
		33.829758, 38.313995, 19.987160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113724, 38.944443, 20.459002>,  <34.467422, 38.598854, 20.034430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113724, 38.944443, 20.459002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919312, 38.596962, 20.420786>,  <33.802662, 38.388474, 20.397856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919312, 38.596962, 20.420786>,  <34.113724, 38.944443, 20.459002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919312, 38.596962, 20.420786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064080, -0.073605, 0.995227,
		-0.871588, 0.489835, -0.019892,
		-0.486033, -0.868703, -0.095541,
		33.773502, 38.336349, 20.392124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454987, 38.878342, 20.872829>,  <34.113724, 38.944443, 20.459002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454987, 38.878342, 20.872829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575150, 38.498165, 20.840813>,  <33.647247, 38.270058, 20.821602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575150, 38.498165, 20.840813>,  <33.454987, 38.878342, 20.872829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575150, 38.498165, 20.840813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182884, -0.139758, 0.973150,
		-0.936113, -0.277706, -0.215806,
		0.300410, -0.950446, -0.080041,
		33.665272, 38.213032, 20.816801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146904, 38.609505, 21.526958>,  <33.454987, 38.878342, 20.872829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146904, 38.609505, 21.526958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385250, 38.318626, 21.390642>,  <33.528255, 38.144100, 21.308851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385250, 38.318626, 21.390642>,  <33.146904, 38.609505, 21.526958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385250, 38.318626, 21.390642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134763, -0.327795, 0.935088,
		-0.791698, -0.603110, -0.097323,
		0.595863, -0.727192, -0.340792,
		33.564011, 38.100468, 21.288404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819824, 37.934704, 21.707726>,  <33.146904, 38.609505, 21.526958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819824, 37.934704, 21.707726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213631, 37.888565, 21.654924>,  <33.449913, 37.860882, 21.623243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213631, 37.888565, 21.654924>,  <32.819824, 37.934704, 21.707726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213631, 37.888565, 21.654924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057715, -0.497740, 0.865404,
		-0.165527, -0.859622, -0.483375,
		0.984515, -0.115350, -0.132002,
		33.508984, 37.853958, 21.615324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852448, 37.282215, 22.068560>,  <32.819824, 37.934704, 21.707726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852448, 37.282215, 22.068560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228035, 37.416306, 22.037687>,  <33.453388, 37.496761, 22.019163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228035, 37.416306, 22.037687>,  <32.852448, 37.282215, 22.068560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228035, 37.416306, 22.037687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170321, -0.258116, 0.950982,
		0.298873, -0.906090, -0.299459,
		0.938970, 0.335227, -0.077182,
		33.509727, 37.516872, 22.014532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270725, 36.772449, 22.363995>,  <32.852448, 37.282215, 22.068560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270725, 36.772449, 22.363995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472229, 37.117748, 22.376894>,  <33.593132, 37.324928, 22.384634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472229, 37.117748, 22.376894>,  <33.270725, 36.772449, 22.363995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472229, 37.117748, 22.376894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143789, -0.120607, 0.982231,
		0.851794, -0.490170, -0.184881,
		0.503758, 0.863243, 0.032251,
		33.623356, 37.376720, 22.386570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887760, 36.612770, 22.790770>,  <33.270725, 36.772449, 22.363995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887760, 36.612770, 22.790770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805695, 37.004250, 22.787886>,  <33.756454, 37.239140, 22.786156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805695, 37.004250, 22.787886>,  <33.887760, 36.612770, 22.790770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805695, 37.004250, 22.787886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228436, 0.055045, 0.972002,
		0.951696, 0.197774, -0.234864,
		-0.205165, 0.978701, -0.007208,
		33.744144, 37.297859, 22.785723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402794, 36.805298, 23.248062>,  <33.887760, 36.612770, 22.790770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402794, 36.805298, 23.248062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145554, 37.111191, 23.232048>,  <33.991211, 37.294727, 23.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145554, 37.111191, 23.232048>,  <34.402794, 36.805298, 23.248062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145554, 37.111191, 23.232048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067377, 0.108583, 0.991801,
		0.762814, 0.635128, -0.121355,
		-0.643098, 0.764737, -0.040036,
		33.952625, 37.340611, 23.220037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649220, 37.158062, 23.764324>,  <34.402794, 36.805298, 23.248062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649220, 37.158062, 23.764324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274929, 37.279720, 23.692865>,  <34.050354, 37.352715, 23.649990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274929, 37.279720, 23.692865>,  <34.649220, 37.158062, 23.764324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274929, 37.279720, 23.692865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173326, 0.044644, 0.983852,
		0.307210, 0.951579, 0.010942,
		-0.935724, 0.304146, -0.178649,
		33.994213, 37.370964, 23.639271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558876, 37.492596, 24.322746>,  <34.649220, 37.158062, 23.764324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558876, 37.492596, 24.322746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191483, 37.465424, 24.166912>,  <33.971046, 37.449120, 24.073412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191483, 37.465424, 24.166912>,  <34.558876, 37.492596, 24.322746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191483, 37.465424, 24.166912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388506, -0.028955, 0.920991,
		-0.073845, 0.997270, 0.000203,
		-0.918482, -0.067932, -0.389584,
		33.915939, 37.445045, 24.050037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185589, 38.167168, 24.336065>,  <34.558876, 37.492596, 24.322746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185589, 38.167168, 24.336065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961395, 37.836700, 24.359068>,  <33.826878, 37.638420, 24.372869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961395, 37.836700, 24.359068>,  <34.185589, 38.167168, 24.336065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961395, 37.836700, 24.359068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403371, 0.332981, 0.852300,
		-0.723290, 0.454505, -0.519882,
		-0.560485, -0.826165, 0.057508,
		33.793251, 37.588852, 24.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730618, 38.473122, 24.940254>,  <34.185589, 38.167168, 24.336065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730618, 38.473122, 24.940254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626915, 38.092232, 24.875685>,  <33.564693, 37.863697, 24.836943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626915, 38.092232, 24.875685>,  <33.730618, 38.473122, 24.940254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626915, 38.092232, 24.875685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457314, -0.026181, 0.888920,
		-0.850676, 0.304280, -0.428677,
		-0.259257, -0.952223, -0.161423,
		33.549137, 37.806564, 24.827257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930492, 38.383926, 25.043310>,  <33.730618, 38.473122, 24.940254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930492, 38.383926, 25.043310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121548, 38.038280, 25.106758>,  <33.236179, 37.830891, 25.144827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121548, 38.038280, 25.106758>,  <32.930492, 38.383926, 25.043310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121548, 38.038280, 25.106758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421756, -0.067142, 0.904220,
		-0.770703, -0.498790, -0.396516,
		0.477639, -0.864118, 0.158621,
		33.264839, 37.779045, 25.154345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397930, 37.944241, 25.296236>,  <32.930492, 38.383926, 25.043310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397930, 37.944241, 25.296236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747410, 37.780632, 25.401575>,  <32.957096, 37.682468, 25.464779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747410, 37.780632, 25.401575>,  <32.397930, 37.944241, 25.296236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747410, 37.780632, 25.401575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340723, -0.128141, 0.931390,
		-0.347215, -0.903482, -0.251320,
		0.873699, -0.409023, 0.263345,
		33.009518, 37.657925, 25.480579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242870, 37.411469, 25.817574>,  <32.397930, 37.944241, 25.296236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242870, 37.411469, 25.817574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639645, 37.440269, 25.859287>,  <32.877708, 37.457550, 25.884315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639645, 37.440269, 25.859287>,  <32.242870, 37.411469, 25.817574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639645, 37.440269, 25.859287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088366, -0.196873, 0.976439,
		0.090841, -0.977781, -0.188923,
		0.991937, 0.072006, 0.104287,
		32.937225, 37.461872, 25.890574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417088, 36.864117, 26.262192>,  <32.242870, 37.411469, 25.817574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417088, 36.864117, 26.262192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728889, 37.112335, 26.296371>,  <32.915970, 37.261265, 26.316879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728889, 37.112335, 26.296371>,  <32.417088, 36.864117, 26.262192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728889, 37.112335, 26.296371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020585, -0.110959, 0.993612,
		0.626063, -0.776280, -0.073719,
		0.779501, 0.620546, 0.085447,
		32.962738, 37.298500, 26.322006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751034, 36.548031, 26.796274>,  <32.417088, 36.864117, 26.262192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751034, 36.548031, 26.796274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890675, 36.922863, 26.796488>,  <32.974461, 37.147762, 26.796616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890675, 36.922863, 26.796488>,  <32.751034, 36.548031, 26.796274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890675, 36.922863, 26.796488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017052, -0.006924, 0.999831,
		0.936930, -0.349034, -0.018397,
		0.349102, 0.937084, 0.000536,
		32.995407, 37.203987, 26.796648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377235, 36.538250, 27.240627>,  <32.751034, 36.548031, 26.796274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377235, 36.538250, 27.240627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260204, 36.920700, 27.234592>,  <33.189983, 37.150169, 27.230970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260204, 36.920700, 27.234592>,  <33.377235, 36.538250, 27.240627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260204, 36.920700, 27.234592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042480, 0.028760, 0.998683,
		0.955296, 0.291556, -0.049031,
		-0.292582, 0.956122, -0.015089,
		33.172428, 37.207535, 27.230066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783630, 36.689548, 27.768560>,  <33.377235, 36.538250, 27.240627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783630, 36.689548, 27.768560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513985, 36.976173, 27.696871>,  <33.352200, 37.148148, 27.653856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513985, 36.976173, 27.696871>,  <33.783630, 36.689548, 27.768560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513985, 36.976173, 27.696871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083603, 0.167066, 0.982395,
		0.733885, 0.677225, -0.052714,
		-0.674109, 0.716558, -0.179225,
		33.311752, 37.191139, 27.643103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190598, 37.215103, 28.043072>,  <33.783630, 36.689548, 27.768560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190598, 37.215103, 28.043072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810871, 37.340076, 28.029266>,  <33.583035, 37.415062, 28.020983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810871, 37.340076, 28.029266>,  <34.190598, 37.215103, 28.043072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810871, 37.340076, 28.029266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006406, 0.129011, 0.991623,
		0.314271, 0.941138, -0.124473,
		-0.949312, 0.312436, -0.034515,
		33.526077, 37.433807, 28.018911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076027, 37.871799, 28.301596>,  <34.190598, 37.215103, 28.043072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076027, 37.871799, 28.301596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713444, 37.706547, 28.336575>,  <33.495892, 37.607395, 28.357561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713444, 37.706547, 28.336575>,  <34.076027, 37.871799, 28.301596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713444, 37.706547, 28.336575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051379, 0.097644, 0.993894,
		-0.419152, 0.905420, -0.067284,
		-0.906461, -0.413135, 0.087447,
		33.441505, 37.582607, 28.362808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781689, 38.244278, 28.886072>,  <34.076027, 37.871799, 28.301596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781689, 38.244278, 28.886072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540104, 37.926807, 28.856897>,  <33.395153, 37.736324, 28.839392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540104, 37.926807, 28.856897>,  <33.781689, 38.244278, 28.886072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540104, 37.926807, 28.856897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010359, -0.099323, 0.995001,
		-0.796949, 0.600184, 0.068208,
		-0.603958, -0.793672, -0.072937,
		33.358917, 37.688705, 28.835016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367958, 38.233017, 29.512438>,  <33.781689, 38.244278, 28.886072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367958, 38.233017, 29.512438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338253, 37.862007, 29.365915>,  <33.320431, 37.639400, 29.278002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338253, 37.862007, 29.365915>,  <33.367958, 38.233017, 29.512438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338253, 37.862007, 29.365915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035975, -0.369575, 0.928504,
		-0.996590, 0.055771, 0.060812,
		-0.074258, -0.927526, -0.366308,
		33.315975, 37.583748, 29.256023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774574, 37.933109, 29.815336>,  <33.367958, 38.233017, 29.512438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774574, 37.933109, 29.815336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009243, 37.629101, 29.703484>,  <33.150043, 37.446697, 29.636372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009243, 37.629101, 29.703484>,  <32.774574, 37.933109, 29.815336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009243, 37.629101, 29.703484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052358, -0.380172, 0.923433,
		-0.808134, -0.527107, -0.262828,
		0.586667, -0.760018, -0.279631,
		33.185242, 37.401096, 29.619595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545475, 37.192108, 30.161880>,  <32.774574, 37.933109, 29.815336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545475, 37.192108, 30.161880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919682, 37.161324, 30.023960>,  <33.144207, 37.142853, 29.941208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919682, 37.161324, 30.023960>,  <32.545475, 37.192108, 30.161880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919682, 37.161324, 30.023960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295293, -0.365445, 0.882753,
		-0.193941, -0.927646, -0.319154,
		0.935515, -0.076958, -0.344802,
		33.200336, 37.138237, 29.920519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726002, 36.502640, 30.330563>,  <32.545475, 37.192108, 30.161880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726002, 36.502640, 30.330563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053070, 36.727112, 30.279190>,  <33.249310, 36.861797, 30.248367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053070, 36.727112, 30.279190>,  <32.726002, 36.502640, 30.330563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053070, 36.727112, 30.279190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445125, -0.474812, 0.759222,
		0.365082, -0.677958, -0.638035,
		0.817667, 0.561183, -0.128430,
		33.298370, 36.895466, 30.240662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234661, 36.031925, 30.532772>,  <32.726002, 36.502640, 30.330563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234661, 36.031925, 30.532772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395550, 36.398140, 30.531765>,  <33.492085, 36.617870, 30.531160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395550, 36.398140, 30.531765>,  <33.234661, 36.031925, 30.532772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395550, 36.398140, 30.531765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405989, -0.175896, 0.896791,
		0.820603, -0.361733, -0.442448,
		0.402224, 0.915538, -0.002519,
		33.516216, 36.672802, 30.531010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852852, 35.884964, 30.657810>,  <33.234661, 36.031925, 30.532772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852852, 35.884964, 30.657810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834038, 36.274574, 30.746418>,  <33.822750, 36.508339, 30.799582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834038, 36.274574, 30.746418>,  <33.852852, 35.884964, 30.657810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834038, 36.274574, 30.746418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534150, -0.162867, 0.829553,
		0.844080, 0.157344, -0.512612,
		-0.047037, 0.974021, 0.221518,
		33.819927, 36.566780, 30.812874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562004, 36.229549, 30.735287>,  <33.852852, 35.884964, 30.657810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562004, 36.229549, 30.735287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316013, 36.470615, 30.938696>,  <34.168419, 36.615257, 31.060741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316013, 36.470615, 30.938696>,  <34.562004, 36.229549, 30.735287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316013, 36.470615, 30.938696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600739, -0.059672, 0.797215,
		0.510800, 0.795758, -0.325349,
		-0.614977, 0.602667, 0.508523,
		34.131519, 36.651417, 31.091253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240307, 36.357742, 30.497700>,  <34.562004, 36.229549, 30.735287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240307, 36.357742, 30.497700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597954, 36.184174, 30.453386>,  <35.812542, 36.080032, 30.426798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597954, 36.184174, 30.453386>,  <35.240307, 36.357742, 30.497700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597954, 36.184174, 30.453386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106679, 0.033885, -0.993716,
		0.434946, 0.900314, -0.015993,
		0.894115, -0.433919, -0.110782,
		35.866188, 36.053997, 30.420151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538128, 36.654770, 29.920414>,  <35.240307, 36.357742, 30.497700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538128, 36.654770, 29.920414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701950, 36.290257, 29.937510>,  <35.800243, 36.071548, 29.947767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701950, 36.290257, 29.937510>,  <35.538128, 36.654770, 29.920414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701950, 36.290257, 29.937510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204605, 0.046097, -0.977759,
		0.889045, 0.409191, 0.205333,
		0.409555, -0.911284, 0.042740,
		35.824818, 36.016872, 29.950331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304634, 36.632935, 29.798553>,  <35.538128, 36.654770, 29.920414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304634, 36.632935, 29.798553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196144, 36.261486, 29.697281>,  <36.131050, 36.038616, 29.636517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196144, 36.261486, 29.697281>,  <36.304634, 36.632935, 29.798553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196144, 36.261486, 29.697281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354924, 0.148015, -0.923104,
		0.894687, -0.340231, 0.289444,
		-0.271226, -0.928620, -0.253184,
		36.114777, 35.982899, 29.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645481, 36.479225, 29.282358>,  <36.304634, 36.632935, 29.798553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645481, 36.479225, 29.282358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369289, 36.196266, 29.221931>,  <36.203575, 36.026489, 29.185677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369289, 36.196266, 29.221931>,  <36.645481, 36.479225, 29.282358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369289, 36.196266, 29.221931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254145, -0.041720, -0.966266,
		0.677235, -0.705580, 0.208589,
		-0.690481, -0.707401, -0.151065,
		36.162144, 35.984047, 29.176611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974087, 35.987926, 28.932898>,  <36.645481, 36.479225, 29.282358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974087, 35.987926, 28.932898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591686, 35.888401, 28.870743>,  <36.362244, 35.828686, 28.833450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591686, 35.888401, 28.870743>,  <36.974087, 35.987926, 28.932898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591686, 35.888401, 28.870743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198758, -0.159814, -0.966931,
		0.215753, -0.955275, 0.202237,
		-0.956005, -0.248814, -0.155389,
		36.304886, 35.813755, 28.824127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988022, 35.333729, 28.619726>,  <36.974087, 35.987926, 28.932898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988022, 35.333729, 28.619726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629036, 35.485268, 28.529362>,  <36.413647, 35.576191, 28.475143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629036, 35.485268, 28.529362>,  <36.988022, 35.333729, 28.619726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629036, 35.485268, 28.529362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211687, -0.079406, -0.974107,
		-0.386978, -0.922046, -0.008934,
		-0.897461, 0.378849, -0.225913,
		36.359798, 35.598923, 28.461588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694843, 34.861504, 28.120773>,  <36.988022, 35.333729, 28.619726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694843, 34.861504, 28.120773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550488, 35.231987, 28.077152>,  <36.463875, 35.454277, 28.050980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550488, 35.231987, 28.077152>,  <36.694843, 34.861504, 28.120773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550488, 35.231987, 28.077152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077802, -0.086626, -0.993198,
		-0.929360, -0.366915, -0.040799,
		-0.360885, 0.926212, -0.109054,
		36.442223, 35.509850, 28.044436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206146, 34.796104, 27.675697>,  <36.694843, 34.861504, 28.120773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206146, 34.796104, 27.675697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311382, 35.180393, 27.640364>,  <36.374523, 35.410965, 27.619164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311382, 35.180393, 27.640364>,  <36.206146, 34.796104, 27.675697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311382, 35.180393, 27.640364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062268, -0.108277, -0.992169,
		-0.962760, 0.255527, -0.088309,
		0.263088, 0.960719, -0.088334,
		36.390308, 35.468609, 27.613863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778313, 35.054245, 27.031906>,  <36.206146, 34.796104, 27.675697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778313, 35.054245, 27.031906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076691, 35.308376, 27.111826>,  <36.255718, 35.460854, 27.159777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076691, 35.308376, 27.111826>,  <35.778313, 35.054245, 27.031906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076691, 35.308376, 27.111826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175617, 0.101740, -0.979187,
		-0.642432, 0.765512, -0.035681,
		0.745949, 0.635327, 0.199797,
		36.300476, 35.498974, 27.171764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685928, 35.510231, 26.518986>,  <35.778313, 35.054245, 27.031906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685928, 35.510231, 26.518986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054054, 35.574448, 26.661673>,  <36.274929, 35.612976, 26.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054054, 35.574448, 26.661673>,  <35.685928, 35.510231, 26.518986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054054, 35.574448, 26.661673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356896, 0.028706, -0.933703,
		-0.160135, 0.986612, -0.030877,
		0.920316, 0.160538, 0.356715,
		36.330151, 35.622608, 26.768686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928646, 36.130608, 26.119251>,  <35.685928, 35.510231, 26.518986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928646, 36.130608, 26.119251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233200, 35.929012, 26.282364>,  <36.415932, 35.808056, 26.380232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233200, 35.929012, 26.282364>,  <35.928646, 36.130608, 26.119251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233200, 35.929012, 26.282364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494940, 0.045628, -0.867728,
		0.418721, 0.862503, 0.284186,
		0.761385, -0.503991, 0.407782,
		36.461617, 35.777817, 26.404699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562572, 36.549103, 25.932634>,  <35.928646, 36.130608, 26.119251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562572, 36.549103, 25.932634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655502, 36.166130, 26.001162>,  <36.711262, 35.936348, 26.042278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655502, 36.166130, 26.001162>,  <36.562572, 36.549103, 25.932634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655502, 36.166130, 26.001162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470466, -0.043541, -0.881343,
		0.851284, 0.285362, 0.440322,
		0.232329, -0.957430, 0.171319,
		36.725201, 35.878902, 26.052557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240543, 36.441914, 25.717125>,  <36.562572, 36.549103, 25.932634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240543, 36.441914, 25.717125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095844, 36.069004, 25.716524>,  <37.009026, 35.845257, 25.716164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095844, 36.069004, 25.716524>,  <37.240543, 36.441914, 25.717125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095844, 36.069004, 25.716524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121400, -0.045508, -0.991560,
		0.924338, -0.358877, 0.129641,
		-0.361748, -0.932275, -0.001503,
		36.987320, 35.789322, 25.716074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657711, 36.099388, 25.274113>,  <37.240543, 36.441914, 25.717125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657711, 36.099388, 25.274113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315395, 35.893246, 25.292128>,  <37.110004, 35.769558, 25.302937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315395, 35.893246, 25.292128>,  <37.657711, 36.099388, 25.274113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315395, 35.893246, 25.292128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037076, -0.025736, -0.998981,
		0.515993, -0.856587, 0.002917,
		-0.855790, -0.515360, 0.045039,
		37.058659, 35.738636, 25.305639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743031, 35.497494, 24.736778>,  <37.657711, 36.099388, 25.274113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743031, 35.497494, 24.736778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356960, 35.531937, 24.835594>,  <37.125320, 35.552601, 24.894884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356960, 35.531937, 24.835594>,  <37.743031, 35.497494, 24.736778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356960, 35.531937, 24.835594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259359, -0.191171, -0.946671,
		-0.034288, -0.977773, 0.206845,
		-0.965172, 0.086106, 0.247040,
		37.067410, 35.557770, 24.909706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338341, 34.953243, 24.350147>,  <37.743031, 35.497494, 24.736778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338341, 34.953243, 24.350147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080124, 35.244129, 24.443476>,  <36.925194, 35.418659, 24.499472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080124, 35.244129, 24.443476>,  <37.338341, 34.953243, 24.350147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080124, 35.244129, 24.443476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166409, 0.164228, -0.972284,
		-0.745375, -0.666477, 0.014999,
		-0.645542, 0.727212, 0.233319,
		36.886459, 35.462292, 24.513472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026188, 34.950333, 23.828539>,  <37.338341, 34.953243, 24.350147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026188, 34.950333, 23.828539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867188, 35.289925, 23.967806>,  <36.771790, 35.493679, 24.051367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867188, 35.289925, 23.967806>,  <37.026188, 34.950333, 23.828539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867188, 35.289925, 23.967806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190560, 0.294784, -0.936370,
		-0.897598, -0.438552, 0.044607,
		-0.397498, 0.848985, 0.348168,
		36.747936, 35.544621, 24.072256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392582, 35.079220, 23.470715>,  <37.026188, 34.950333, 23.828539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392582, 35.079220, 23.470715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517147, 35.431309, 23.613956>,  <36.591885, 35.642563, 23.699902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517147, 35.431309, 23.613956>,  <36.392582, 35.079220, 23.470715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517147, 35.431309, 23.613956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020850, 0.383082, -0.923479,
		-0.950047, 0.280114, 0.137648,
		0.311409, 0.880219, 0.358106,
		36.610569, 35.695374, 23.721388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056427, 35.585201, 23.041304>,  <36.392582, 35.079220, 23.470715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056427, 35.585201, 23.041304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297714, 35.846024, 23.225025>,  <36.442486, 36.002518, 23.335258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297714, 35.846024, 23.225025>,  <36.056427, 35.585201, 23.041304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297714, 35.846024, 23.225025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059901, 0.611286, -0.789140,
		-0.795326, 0.448508, 0.407795,
		0.603215, 0.652051, 0.459305,
		36.478680, 36.041637, 23.362818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735508, 36.107262, 22.983118>,  <36.056427, 35.585201, 23.041304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735508, 36.107262, 22.983118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105404, 36.242893, 23.052265>,  <36.327339, 36.324272, 23.093754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105404, 36.242893, 23.052265>,  <35.735508, 36.107262, 22.983118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105404, 36.242893, 23.052265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080903, 0.618937, -0.781263,
		-0.371907, 0.708478, 0.599787,
		0.924738, 0.339082, 0.172869,
		36.382824, 36.344616, 23.104126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704674, 36.808506, 23.049973>,  <35.735508, 36.107262, 22.983118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704674, 36.808506, 23.049973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070354, 36.711658, 22.919981>,  <36.289764, 36.653549, 22.841986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070354, 36.711658, 22.919981>,  <35.704674, 36.808506, 23.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070354, 36.711658, 22.919981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179324, 0.477440, -0.860171,
		0.363424, 0.844647, 0.393059,
		0.914202, -0.242122, -0.324979,
		36.344616, 36.639023, 22.822487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980297, 37.449646, 22.762764>,  <35.704674, 36.808506, 23.049973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980297, 37.449646, 22.762764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206264, 37.167034, 22.592272>,  <36.341846, 36.997467, 22.489977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206264, 37.167034, 22.592272>,  <35.980297, 37.449646, 22.762764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206264, 37.167034, 22.592272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123450, 0.438372, -0.890275,
		0.815857, 0.555554, 0.160425,
		0.564922, -0.706533, -0.426232,
		36.375740, 36.955074, 22.464401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250027, 37.757256, 22.111763>,  <35.980297, 37.449646, 22.762764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250027, 37.757256, 22.111763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309326, 37.366665, 22.049139>,  <36.344906, 37.132309, 22.011564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309326, 37.366665, 22.049139>,  <36.250027, 37.757256, 22.111763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309326, 37.366665, 22.049139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150353, 0.134215, -0.979480,
		0.977454, 0.168743, -0.126920,
		0.148246, -0.976480, -0.156560,
		36.353798, 37.073723, 22.002171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696140, 37.647995, 21.497204>,  <36.250027, 37.757256, 22.111763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696140, 37.647995, 21.497204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509438, 37.296303, 21.535330>,  <36.397415, 37.085285, 21.558205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509438, 37.296303, 21.535330>,  <36.696140, 37.647995, 21.497204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509438, 37.296303, 21.535330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116430, -0.045746, -0.992145,
		0.876689, -0.474186, -0.081017,
		-0.466755, -0.879235, 0.095315,
		36.369411, 37.032532, 21.563925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877651, 37.278313, 20.922716>,  <36.696140, 37.647995, 21.497204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877651, 37.278313, 20.922716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546337, 37.094818, 21.051411>,  <36.347549, 36.984722, 21.128628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546337, 37.094818, 21.051411>,  <36.877651, 37.278313, 20.922716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546337, 37.094818, 21.051411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264752, -0.185647, -0.946278,
		0.493820, -0.868964, 0.032317,
		-0.828281, -0.458735, 0.321736,
		36.297852, 36.957199, 21.147932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877869, 36.668442, 20.573935>,  <36.877651, 37.278313, 20.922716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877869, 36.668442, 20.573935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495102, 36.730343, 20.672213>,  <36.265442, 36.767483, 20.731180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495102, 36.730343, 20.672213>,  <36.877869, 36.668442, 20.573935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495102, 36.730343, 20.672213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282719, -0.303601, -0.909888,
		-0.066216, -0.940148, 0.334272,
		-0.956914, 0.154754, 0.245694,
		36.208027, 36.776768, 20.745920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590057, 36.157513, 20.224901>,  <36.877869, 36.668442, 20.573935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590057, 36.157513, 20.224901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287731, 36.401253, 20.320768>,  <36.106335, 36.547497, 20.378288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287731, 36.401253, 20.320768>,  <36.590057, 36.157513, 20.224901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287731, 36.401253, 20.320768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491611, -0.286311, -0.822402,
		-0.432514, -0.739402, 0.515962,
		-0.755811, 0.609352, 0.239665,
		36.060989, 36.584057, 20.392668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113388, 35.772041, 19.982092>,  <36.590057, 36.157513, 20.224901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113388, 35.772041, 19.982092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943844, 36.131130, 20.030161>,  <35.842117, 36.346584, 20.059002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943844, 36.131130, 20.030161>,  <36.113388, 35.772041, 19.982092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943844, 36.131130, 20.030161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425201, -0.080074, -0.901550,
		-0.799716, -0.433229, 0.415652,
		-0.423861, 0.897720, 0.120173,
		35.816685, 36.400448, 20.066214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403332, 35.686867, 19.820763>,  <36.113388, 35.772041, 19.982092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403332, 35.686867, 19.820763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479717, 36.077911, 19.785416>,  <35.525551, 36.312538, 19.764208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479717, 36.077911, 19.785416>,  <35.403332, 35.686867, 19.820763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479717, 36.077911, 19.785416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436483, 0.003937, -0.899704,
		-0.879212, 0.210383, 0.427462,
		0.190966, 0.977611, -0.088367,
		35.537006, 36.371193, 19.758905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790268, 35.998238, 19.552147>,  <35.403332, 35.686867, 19.820763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790268, 35.998238, 19.552147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065342, 36.280090, 19.482187>,  <35.230385, 36.449203, 19.440212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065342, 36.280090, 19.482187>,  <34.790268, 35.998238, 19.552147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065342, 36.280090, 19.482187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280171, 0.035321, -0.959300,
		-0.669775, 0.708694, 0.221707,
		0.687681, 0.704631, -0.174898,
		35.271645, 36.491478, 19.429718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375557, 36.488800, 19.216188>,  <34.790268, 35.998238, 19.552147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375557, 36.488800, 19.216188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756920, 36.560207, 19.118914>,  <34.985737, 36.603054, 19.060549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756920, 36.560207, 19.118914>,  <34.375557, 36.488800, 19.216188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756920, 36.560207, 19.118914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258030, 0.064899, -0.963955,
		-0.156304, 0.981793, 0.107939,
		0.953409, 0.178522, -0.243188,
		35.042942, 36.613766, 19.045958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401180, 37.105927, 18.652523>,  <34.375557, 36.488800, 19.216188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401180, 37.105927, 18.652523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742302, 36.897282, 18.642406>,  <34.946976, 36.772095, 18.636335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742302, 36.897282, 18.642406>,  <34.401180, 37.105927, 18.652523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742302, 36.897282, 18.642406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086546, -0.093401, -0.991860,
		0.515008, 0.848052, -0.124797,
		0.852805, -0.521616, -0.025293,
		34.998142, 36.740795, 18.634819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872673, 37.437969, 18.079737>,  <34.401180, 37.105927, 18.652523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872673, 37.437969, 18.079737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001602, 37.062164, 18.126072>,  <35.078960, 36.836681, 18.153873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001602, 37.062164, 18.126072>,  <34.872673, 37.437969, 18.079737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001602, 37.062164, 18.126072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049072, -0.105621, -0.993195,
		0.945358, 0.325813, 0.012060,
		0.322322, -0.939516, 0.115838,
		35.098297, 36.780308, 18.160824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406948, 37.396828, 17.641350>,  <34.872673, 37.437969, 18.079737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406948, 37.396828, 17.641350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271088, 37.030163, 17.725597>,  <35.189571, 36.810162, 17.776146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271088, 37.030163, 17.725597>,  <35.406948, 37.396828, 17.641350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271088, 37.030163, 17.725597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054164, -0.204499, -0.977367,
		0.938991, -0.343371, 0.019808,
		-0.339650, -0.916666, 0.210621,
		35.169193, 36.755161, 17.788784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873901, 36.878471, 17.239140>,  <35.406948, 37.396828, 17.641350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873901, 36.878471, 17.239140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504124, 36.743980, 17.311083>,  <35.282257, 36.663284, 17.354250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504124, 36.743980, 17.311083>,  <35.873901, 36.878471, 17.239140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504124, 36.743980, 17.311083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160704, -0.084207, -0.983404,
		0.345793, -0.938009, 0.023811,
		-0.924446, -0.336228, 0.179860,
		35.226791, 36.643112, 17.365042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715889, 36.418423, 16.629219>,  <35.873901, 36.878471, 17.239140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715889, 36.418423, 16.629219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354927, 36.467186, 16.794533>,  <35.138351, 36.496445, 16.893721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354927, 36.467186, 16.794533>,  <35.715889, 36.418423, 16.629219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354927, 36.467186, 16.794533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430799, -0.274955, -0.859541,
		0.008851, -0.953697, 0.300638,
		-0.902404, 0.121907, 0.413286,
		35.084206, 36.503757, 16.918518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429195, 35.905445, 16.392742>,  <35.715889, 36.418423, 16.629219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429195, 35.905445, 16.392742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103027, 36.092686, 16.528955>,  <34.907326, 36.205029, 16.610683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103027, 36.092686, 16.528955>,  <35.429195, 35.905445, 16.392742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103027, 36.092686, 16.528955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470350, -0.192879, -0.861143,
		-0.337424, -0.862366, 0.377452,
		-0.815423, 0.468105, 0.340532,
		34.858398, 36.233116, 16.631115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807507, 35.414932, 16.374302>,  <35.429195, 35.905445, 16.392742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807507, 35.414932, 16.374302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702984, 35.799622, 16.341311>,  <34.640270, 36.030437, 16.321516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702984, 35.799622, 16.341311>,  <34.807507, 35.414932, 16.374302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702984, 35.799622, 16.341311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457954, -0.198740, -0.866476,
		-0.849705, -0.188643, 0.492358,
		-0.261306, 0.961726, -0.082481,
		34.624592, 36.088139, 16.316566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192715, 34.735836, 16.292597>,  <34.807507, 35.414932, 16.374302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192715, 34.735836, 16.292597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245037, 34.342426, 16.242699>,  <35.276432, 34.106380, 16.212759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245037, 34.342426, 16.242699>,  <35.192715, 34.735836, 16.292597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245037, 34.342426, 16.242699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255227, -0.088178, 0.962852,
		-0.957992, -0.157786, 0.239488,
		0.130807, -0.983528, -0.124745,
		35.284279, 34.047367, 16.205275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848469, 34.448627, 16.766006>,  <35.192715, 34.735836, 16.292597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848469, 34.448627, 16.766006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102291, 34.144775, 16.709021>,  <35.254585, 33.962463, 16.674829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102291, 34.144775, 16.709021>,  <34.848469, 34.448627, 16.766006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102291, 34.144775, 16.709021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121000, -0.084417, 0.989057,
		-0.763344, -0.644854, 0.038348,
		0.634560, -0.759630, -0.142466,
		35.292660, 33.916885, 16.666281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660942, 34.007248, 17.223347>,  <34.848469, 34.448627, 16.766006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660942, 34.007248, 17.223347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021244, 33.858089, 17.134272>,  <35.237427, 33.768593, 17.080828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021244, 33.858089, 17.134272>,  <34.660942, 34.007248, 17.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021244, 33.858089, 17.134272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189206, -0.124612, 0.973999,
		-0.390952, -0.919466, -0.041690,
		0.900754, -0.372899, -0.222686,
		35.291470, 33.746220, 17.067467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765285, 33.561592, 17.750782>,  <34.660942, 34.007248, 17.223347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765285, 33.561592, 17.750782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128395, 33.619987, 17.593483>,  <35.346260, 33.655025, 17.499104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128395, 33.619987, 17.593483>,  <34.765285, 33.561592, 17.750782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128395, 33.619987, 17.593483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414868, -0.173988, 0.893092,
		0.061959, -0.973867, -0.218506,
		0.907770, 0.145986, -0.393246,
		35.400726, 33.663784, 17.475510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256233, 33.081295, 18.066496>,  <34.765285, 33.561592, 17.750782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256233, 33.081295, 18.066496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475895, 33.373516, 17.904152>,  <35.607693, 33.548847, 17.806746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475895, 33.373516, 17.904152>,  <35.256233, 33.081295, 18.066496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475895, 33.373516, 17.904152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494850, 0.107108, 0.862352,
		0.673465, -0.674404, -0.302695,
		0.549153, 0.730552, -0.405862,
		35.640640, 33.592682, 17.782393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969238, 32.857685, 18.172688>,  <35.256233, 33.081295, 18.066496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969238, 32.857685, 18.172688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925930, 33.253780, 18.137568>,  <35.899944, 33.491436, 18.116495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925930, 33.253780, 18.137568>,  <35.969238, 32.857685, 18.172688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925930, 33.253780, 18.137568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465693, 0.128553, 0.875560,
		0.878298, 0.053914, -0.475065,
		-0.108275, 0.990236, -0.087801,
		35.893448, 33.550850, 18.111227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565533, 33.127975, 18.417303>,  <35.969238, 32.857685, 18.172688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565533, 33.127975, 18.417303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318577, 33.440552, 18.453489>,  <36.170403, 33.628098, 18.475201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318577, 33.440552, 18.453489>,  <36.565533, 33.127975, 18.417303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318577, 33.440552, 18.453489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251753, 0.087321, 0.963844,
		0.745287, 0.617840, -0.250641,
		-0.617388, 0.781440, 0.090464,
		36.133362, 33.674984, 18.480629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974060, 33.718174, 18.695755>,  <36.565533, 33.127975, 18.417303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974060, 33.718174, 18.695755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588539, 33.787395, 18.776884>,  <36.357227, 33.828926, 18.825562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588539, 33.787395, 18.776884>,  <36.974060, 33.718174, 18.695755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588539, 33.787395, 18.776884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229568, 0.151798, 0.961382,
		0.135580, 0.973145, -0.186030,
		-0.963803, 0.173051, 0.202823,
		36.299397, 33.839310, 18.837730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011467, 34.061134, 19.308712>,  <36.974060, 33.718174, 18.695755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011467, 34.061134, 19.308712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626507, 33.954708, 19.286812>,  <36.395531, 33.890850, 19.273672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626507, 33.954708, 19.286812>,  <37.011467, 34.061134, 19.308712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626507, 33.954708, 19.286812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083632, 0.098456, 0.991621,
		-0.258448, 0.958913, -0.117006,
		-0.962398, -0.266068, -0.054750,
		36.337788, 33.874889, 19.270388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614540, 34.562107, 19.710526>,  <37.011467, 34.061134, 19.308712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614540, 34.562107, 19.710526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382030, 34.236729, 19.702278>,  <36.242523, 34.041504, 19.697329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382030, 34.236729, 19.702278>,  <36.614540, 34.562107, 19.710526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382030, 34.236729, 19.702278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134522, 0.071073, 0.988358,
		-0.802509, 0.577285, -0.150739,
		-0.581278, -0.813444, -0.020620,
		36.207645, 33.992695, 19.696093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160641, 34.668259, 20.252350>,  <36.614540, 34.562107, 19.710526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160641, 34.668259, 20.252350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107491, 34.284218, 20.153927>,  <36.075600, 34.053795, 20.094873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107491, 34.284218, 20.153927>,  <36.160641, 34.668259, 20.252350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107491, 34.284218, 20.153927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126043, -0.229875, 0.965024,
		-0.983085, 0.159244, -0.090469,
		-0.132878, -0.960104, -0.246058,
		36.067627, 33.996185, 20.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554916, 34.414944, 20.694464>,  <36.160641, 34.668259, 20.252350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554916, 34.414944, 20.694464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791710, 34.105946, 20.602539>,  <35.933784, 33.920547, 20.547384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791710, 34.105946, 20.602539>,  <35.554916, 34.414944, 20.694464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791710, 34.105946, 20.602539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020081, -0.299193, 0.953981,
		-0.805702, -0.560124, -0.192629,
		0.591981, -0.772493, -0.229812,
		35.969303, 33.874199, 20.533596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275116, 33.909107, 21.034580>,  <35.554916, 34.414944, 20.694464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275116, 33.909107, 21.034580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635685, 33.755196, 20.955206>,  <35.852028, 33.662849, 20.907581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635685, 33.755196, 20.955206>,  <35.275116, 33.909107, 21.034580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635685, 33.755196, 20.955206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083976, -0.294241, 0.952035,
		-0.424715, -0.874851, -0.232923,
		0.901424, -0.384783, -0.198435,
		35.906113, 33.639759, 20.895676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235893, 33.256023, 21.361794>,  <35.275116, 33.909107, 21.034580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235893, 33.256023, 21.361794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621162, 33.353359, 21.316038>,  <35.852325, 33.411762, 21.288584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621162, 33.353359, 21.316038>,  <35.235893, 33.256023, 21.361794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621162, 33.353359, 21.316038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224210, -0.492010, 0.841223,
		0.148422, -0.835890, -0.528449,
		0.963172, 0.243340, -0.114390,
		35.910114, 33.426361, 21.281721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560593, 32.595375, 21.662806>,  <35.235893, 33.256023, 21.361794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560593, 32.595375, 21.662806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857845, 32.862728, 21.649992>,  <36.036198, 33.023140, 21.642303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857845, 32.862728, 21.649992>,  <35.560593, 32.595375, 21.662806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857845, 32.862728, 21.649992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475593, -0.493888, 0.727933,
		0.470716, -0.556183, -0.684900,
		0.743127, 0.668383, -0.032036,
		36.080784, 33.063244, 21.640381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014500, 32.146362, 21.972902>,  <35.560593, 32.595375, 21.662806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014500, 32.146362, 21.972902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090611, 32.538914, 21.983368>,  <36.136276, 32.774445, 21.989647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090611, 32.538914, 21.983368>,  <36.014500, 32.146362, 21.972902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090611, 32.538914, 21.983368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364616, -0.095389, 0.926259,
		0.911510, -0.166701, -0.375978,
		0.190272, 0.981383, 0.026166,
		36.147694, 32.833328, 21.991219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630726, 32.227451, 22.218275>,  <36.014500, 32.146362, 21.972902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630726, 32.227451, 22.218275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534813, 32.609825, 22.286037>,  <36.477264, 32.839249, 22.326694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534813, 32.609825, 22.286037>,  <36.630726, 32.227451, 22.218275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534813, 32.609825, 22.286037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254995, -0.106357, 0.961075,
		0.936740, 0.273648, -0.218256,
		-0.239783, 0.955932, 0.169408,
		36.462879, 32.896606, 22.336861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168682, 32.393055, 22.612511>,  <36.630726, 32.227451, 22.218275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168682, 32.393055, 22.612511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857864, 32.637390, 22.673275>,  <36.671375, 32.783993, 22.709734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857864, 32.637390, 22.673275>,  <37.168682, 32.393055, 22.612511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857864, 32.637390, 22.673275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087701, -0.133921, 0.987104,
		0.623307, 0.780345, 0.050492,
		-0.777043, 0.610841, 0.151911,
		36.624752, 32.820641, 22.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572937, 32.816399, 23.097010>,  <37.168682, 32.393055, 22.612511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572937, 32.816399, 23.097010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190090, 32.929138, 23.123785>,  <36.960381, 32.996780, 23.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190090, 32.929138, 23.123785>,  <37.572937, 32.816399, 23.097010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190090, 32.929138, 23.123785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092024, 0.076706, 0.992798,
		0.274682, 0.956388, -0.099354,
		-0.957121, 0.281847, 0.066941,
		36.902954, 33.013691, 23.143867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517300, 33.561134, 23.460709>,  <37.572937, 32.816399, 23.097010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517300, 33.561134, 23.460709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168476, 33.367661, 23.490530>,  <36.959183, 33.251575, 23.508423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168476, 33.367661, 23.490530>,  <37.517300, 33.561134, 23.460709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168476, 33.367661, 23.490530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067440, 0.032113, 0.997206,
		-0.484728, 0.874653, 0.004615,
		-0.872061, -0.483685, 0.074552,
		36.906857, 33.222553, 23.512896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106846, 33.992825, 24.017380>,  <37.517300, 33.561134, 23.460709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106846, 33.992825, 24.017380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920025, 33.641762, 23.974333>,  <36.807934, 33.431126, 23.948503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920025, 33.641762, 23.974333>,  <37.106846, 33.992825, 24.017380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920025, 33.641762, 23.974333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147128, -0.042877, 0.988188,
		-0.871905, 0.477366, -0.109102,
		-0.467049, -0.877658, -0.107619,
		36.779911, 33.378464, 23.942047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502140, 34.065956, 24.431353>,  <37.106846, 33.992825, 24.017380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502140, 34.065956, 24.431353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565804, 33.673801, 24.384861>,  <36.604004, 33.438507, 24.356966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565804, 33.673801, 24.384861>,  <36.502140, 34.065956, 24.431353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565804, 33.673801, 24.384861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259860, -0.155182, 0.953096,
		-0.952439, -0.121491, -0.279462,
		0.159160, -0.980387, -0.116231,
		36.613552, 33.379684, 24.349993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984837, 33.776726, 24.858122>,  <36.502140, 34.065956, 24.431353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984837, 33.776726, 24.858122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246029, 33.475861, 24.822662>,  <36.402744, 33.295341, 24.801386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246029, 33.475861, 24.822662>,  <35.984837, 33.776726, 24.858122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246029, 33.475861, 24.822662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028437, -0.141314, 0.989556,
		-0.756838, -0.643643, -0.113665,
		0.652984, -0.752167, -0.088648,
		36.441925, 33.250210, 24.796068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673923, 33.226837, 25.177153>,  <35.984837, 33.776726, 24.858122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673923, 33.226837, 25.177153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070171, 33.175339, 25.158873>,  <36.307922, 33.144440, 25.147903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070171, 33.175339, 25.158873>,  <35.673923, 33.226837, 25.177153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070171, 33.175339, 25.158873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035645, -0.079356, 0.996209,
		-0.131888, -0.988497, -0.074023,
		0.990623, -0.128750, -0.045701,
		36.367359, 33.136715, 25.145163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860710, 32.669971, 25.681400>,  <35.673923, 33.226837, 25.177153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860710, 32.669971, 25.681400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215244, 32.848164, 25.630867>,  <36.427963, 32.955078, 25.600548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215244, 32.848164, 25.630867>,  <35.860710, 32.669971, 25.681400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215244, 32.848164, 25.630867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159894, -0.038398, 0.986387,
		0.434567, -0.894467, -0.105263,
		0.886333, 0.445482, -0.126333,
		36.481144, 32.981808, 25.592966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384880, 32.186836, 25.888006>,  <35.860710, 32.669971, 25.681400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384880, 32.186836, 25.888006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564224, 32.543453, 25.913664>,  <36.671833, 32.757423, 25.929058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564224, 32.543453, 25.913664>,  <36.384880, 32.186836, 25.888006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564224, 32.543453, 25.913664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214482, -0.176973, 0.960561,
		0.867737, -0.416923, -0.270569,
		0.448364, 0.891547, 0.064144,
		36.698734, 32.810917, 25.932907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058086, 32.094398, 26.301929>,  <36.384880, 32.186836, 25.888006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058086, 32.094398, 26.301929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956429, 32.481209, 26.308601>,  <36.895435, 32.713295, 26.312605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956429, 32.481209, 26.308601>,  <37.058086, 32.094398, 26.301929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956429, 32.481209, 26.308601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053741, -0.003101, 0.998550,
		0.965673, 0.254669, -0.051180,
		-0.254141, 0.967023, 0.016681,
		36.880184, 32.771317, 26.313606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580807, 32.378105, 26.693430>,  <37.058086, 32.094398, 26.301929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580807, 32.378105, 26.693430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299252, 32.661739, 26.710100>,  <37.130318, 32.831921, 26.720102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299252, 32.661739, 26.710100>,  <37.580807, 32.378105, 26.693430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299252, 32.661739, 26.710100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277359, 0.220365, 0.935153,
		0.653918, 0.669806, -0.351784,
		-0.703892, 0.709084, 0.041676,
		37.088085, 32.874466, 26.722603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929550, 32.857323, 27.082705>,  <37.580807, 32.378105, 26.693430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929550, 32.857323, 27.082705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544182, 32.962650, 27.102617>,  <37.312962, 33.025848, 27.114565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544182, 32.962650, 27.102617>,  <37.929550, 32.857323, 27.082705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544182, 32.962650, 27.102617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124610, 0.275722, 0.953126,
		0.237249, 0.924468, -0.298449,
		-0.963424, 0.263318, 0.049784,
		37.255154, 33.041645, 27.117552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981937, 33.486290, 27.430687>,  <37.929550, 32.857323, 27.082705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981937, 33.486290, 27.430687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606346, 33.360641, 27.486759>,  <37.380993, 33.285252, 27.520403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606346, 33.360641, 27.486759>,  <37.981937, 33.486290, 27.430687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606346, 33.360641, 27.486759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085502, 0.181593, 0.979650,
		-0.333189, 0.931852, -0.143652,
		-0.938975, -0.314126, 0.140180,
		37.324654, 33.266403, 27.528812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777840, 33.934883, 27.914503>,  <37.981937, 33.486290, 27.430687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777840, 33.934883, 27.914503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504726, 33.644222, 27.944920>,  <37.340858, 33.469826, 27.963169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504726, 33.644222, 27.944920>,  <37.777840, 33.934883, 27.914503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504726, 33.644222, 27.944920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028331, 0.077669, 0.996577,
		-0.730074, 0.682598, -0.032444,
		-0.682781, -0.726655, 0.076043,
		37.299892, 33.426224, 27.967733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279900, 34.292473, 28.277735>,  <37.777840, 33.934883, 27.914503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279900, 34.292473, 28.277735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211979, 33.901424, 28.327408>,  <37.171227, 33.666794, 28.357212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211979, 33.901424, 28.327408>,  <37.279900, 34.292473, 28.277735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211979, 33.901424, 28.327408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109028, 0.106604, 0.988306,
		-0.979429, 0.181354, 0.088486,
		-0.169801, -0.977623, 0.124184,
		37.161037, 33.608139, 28.364662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733681, 34.140018, 28.661781>,  <37.279900, 34.292473, 28.277735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733681, 34.140018, 28.661781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979797, 33.829918, 28.718920>,  <37.127468, 33.643856, 28.753202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979797, 33.829918, 28.718920>,  <36.733681, 34.140018, 28.661781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979797, 33.829918, 28.718920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012885, 0.191073, 0.981491,
		-0.788195, -0.602062, 0.127554,
		0.615291, -0.775250, 0.142845,
		37.164383, 33.597343, 28.761774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426376, 33.849712, 29.234522>,  <36.733681, 34.140018, 28.661781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426376, 33.849712, 29.234522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783436, 33.670872, 29.211611>,  <36.997673, 33.563568, 29.197865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783436, 33.670872, 29.211611>,  <36.426376, 33.849712, 29.234522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783436, 33.670872, 29.211611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076725, 0.025492, 0.996726,
		-0.444176, -0.894121, 0.057059,
		0.892648, -0.447099, -0.057278,
		37.051231, 33.536743, 29.194427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381824, 33.304501, 29.711016>,  <36.426376, 33.849712, 29.234522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381824, 33.304501, 29.711016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773460, 33.362785, 29.654224>,  <37.008442, 33.397755, 29.620150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773460, 33.362785, 29.654224>,  <36.381824, 33.304501, 29.711016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773460, 33.362785, 29.654224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139564, 0.026713, 0.989853,
		0.148026, -0.988966, 0.005818,
		0.979087, 0.145712, -0.141978,
		37.067188, 33.406498, 29.611631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663052, 32.794655, 30.048166>,  <36.381824, 33.304501, 29.711016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663052, 32.794655, 30.048166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961628, 33.057392, 30.005495>,  <37.140774, 33.215034, 29.979893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961628, 33.057392, 30.005495>,  <36.663052, 32.794655, 30.048166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961628, 33.057392, 30.005495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122805, 0.021589, 0.992196,
		0.654025, -0.753714, -0.064549,
		0.746438, 0.656848, -0.106679,
		37.185558, 33.254448, 29.973492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018581, 32.549488, 30.545975>,  <36.663052, 32.794655, 30.048166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018581, 32.549488, 30.545975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149330, 32.914894, 30.449106>,  <37.227779, 33.134136, 30.390985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149330, 32.914894, 30.449106>,  <37.018581, 32.549488, 30.545975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149330, 32.914894, 30.449106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015767, 0.250943, 0.967873,
		0.944937, -0.320190, 0.067623,
		0.326873, 0.913513, -0.242174,
		37.247391, 33.188950, 30.376453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614735, 32.568932, 30.900190>,  <37.018581, 32.549488, 30.545975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614735, 32.568932, 30.900190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472893, 32.940289, 30.855757>,  <37.387787, 33.163105, 30.829096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472893, 32.940289, 30.855757>,  <37.614735, 32.568932, 30.900190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472893, 32.940289, 30.855757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052028, 0.099028, 0.993723,
		0.933569, 0.358156, 0.013187,
		-0.354602, 0.928395, -0.111084,
		37.366512, 33.218807, 30.822432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858513, 32.832191, 31.502518>,  <37.614735, 32.568932, 30.900190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858513, 32.832191, 31.502518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595982, 33.115696, 31.399075>,  <37.438461, 33.285801, 31.337009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595982, 33.115696, 31.399075>,  <37.858513, 32.832191, 31.502518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595982, 33.115696, 31.399075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035043, 0.313759, 0.948856,
		0.753657, 0.631828, -0.181093,
		-0.656333, 0.708766, -0.258608,
		37.399082, 33.328327, 31.321491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096779, 33.460979, 31.761978>,  <37.858513, 32.832191, 31.502518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096779, 33.460979, 31.761978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702843, 33.506382, 31.709513>,  <37.466480, 33.533623, 31.678034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702843, 33.506382, 31.709513>,  <38.096779, 33.460979, 31.761978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702843, 33.506382, 31.709513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102567, 0.228734, 0.968071,
		0.139880, 0.966849, -0.213626,
		-0.984842, 0.113503, -0.131162,
		37.407391, 33.540432, 31.670164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869171, 33.471283, 31.430542>,  <38.096779, 33.460979, 31.761978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869171, 33.471283, 31.430542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008545, 33.682949, 31.740015>,  <39.092171, 33.809948, 31.925699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008545, 33.682949, 31.740015>,  <38.869171, 33.471283, 31.430542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008545, 33.682949, 31.740015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629216, -0.479748, 0.611497,
		0.694753, -0.699879, 0.165796,
		0.348434, 0.529161, 0.773682,
		39.113075, 33.841698, 31.972120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872440, 32.981407, 31.976313>,  <38.869171, 33.471283, 31.430542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872440, 32.981407, 31.976313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935665, 33.318226, 32.182606>,  <38.973598, 33.520317, 32.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935665, 33.318226, 32.182606>,  <38.872440, 32.981407, 31.976313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935665, 33.318226, 32.182606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426959, -0.412665, 0.804620,
		0.890350, -0.347373, 0.294293,
		0.158059, 0.842045, 0.515731,
		38.983082, 33.570839, 32.337326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259243, 32.819736, 32.629436>,  <38.872440, 32.981407, 31.976313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259243, 32.819736, 32.629436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074062, 33.172306, 32.666897>,  <38.962955, 33.383846, 32.689373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074062, 33.172306, 32.666897>,  <39.259243, 32.819736, 32.629436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074062, 33.172306, 32.666897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428967, -0.315247, 0.846527,
		0.775672, 0.351725, 0.524045,
		-0.462948, 0.881425, 0.093650,
		38.935177, 33.436733, 32.694992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455933, 33.069752, 33.264370>,  <39.259243, 32.819736, 32.629436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455933, 33.069752, 33.264370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108421, 33.244667, 33.171410>,  <38.899914, 33.349617, 33.115631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108421, 33.244667, 33.171410>,  <39.455933, 33.069752, 33.264370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108421, 33.244667, 33.171410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435122, -0.450008, 0.779847,
		0.236435, 0.778634, 0.581229,
		-0.868773, 0.437289, -0.232403,
		38.847790, 33.375854, 33.101688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069908, 32.948055, 33.832443>,  <39.455933, 33.069752, 33.264370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069908, 32.948055, 33.832443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780483, 33.096313, 33.599518>,  <38.606831, 33.185268, 33.459763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780483, 33.096313, 33.599518>,  <39.069908, 32.948055, 33.832443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780483, 33.096313, 33.599518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685367, -0.285472, 0.669909,
		0.082064, 0.883815, 0.460583,
		-0.723560, 0.370643, -0.582310,
		38.563416, 33.207508, 33.424824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596558, 33.215263, 34.298553>,  <39.069908, 32.948055, 33.832443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596558, 33.215263, 34.298553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382778, 33.182892, 33.962029>,  <38.254509, 33.163467, 33.760113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382778, 33.182892, 33.962029>,  <38.596558, 33.215263, 34.298553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382778, 33.182892, 33.962029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794833, -0.290360, 0.532852,
		-0.287407, 0.953489, 0.090858,
		-0.534450, -0.080929, -0.841316,
		38.222443, 33.158615, 33.709633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026382, 33.554859, 34.418301>,  <38.596558, 33.215263, 34.298553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026382, 33.554859, 34.418301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922626, 33.336739, 34.099461>,  <37.860374, 33.205868, 33.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922626, 33.336739, 34.099461>,  <38.026382, 33.554859, 34.418301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922626, 33.336739, 34.099461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828593, -0.298340, 0.473737,
		-0.496135, 0.783351, -0.374448,
		-0.259390, -0.545302, -0.797096,
		37.844810, 33.173149, 33.860332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224823, 33.609844, 34.264839>,  <38.026382, 33.554859, 34.418301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224823, 33.609844, 34.264839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345856, 33.248734, 34.142570>,  <37.418476, 33.032066, 34.069210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345856, 33.248734, 34.142570>,  <37.224823, 33.609844, 34.264839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345856, 33.248734, 34.142570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725637, -0.426135, 0.540241,
		-0.617977, 0.058342, -0.784029,
		0.302583, -0.902776, -0.305677,
		37.436630, 32.977901, 34.050869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643665, 33.304520, 34.002354>,  <37.224823, 33.609844, 34.264839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643665, 33.304520, 34.002354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898842, 33.010868, 34.095379>,  <37.051949, 32.834675, 34.151196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898842, 33.010868, 34.095379>,  <36.643665, 33.304520, 34.002354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898842, 33.010868, 34.095379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727772, -0.476004, 0.493729,
		-0.251761, -0.484221, -0.837942,
		0.637937, -0.734132, 0.232564,
		37.090221, 32.790627, 34.165150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322693, 32.668343, 33.918991>,  <36.643665, 33.304520, 34.002354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322693, 32.668343, 33.918991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641060, 32.555267, 34.133133>,  <36.832081, 32.487423, 34.261616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641060, 32.555267, 34.133133>,  <36.322693, 32.668343, 33.918991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641060, 32.555267, 34.133133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586648, -0.578532, 0.566697,
		0.149520, -0.765108, -0.626302,
		0.795920, -0.282686, 0.535351,
		36.879837, 32.470463, 34.293739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166897, 31.930918, 34.092216>,  <36.322693, 32.668343, 33.918991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166897, 31.930918, 34.092216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430141, 32.082729, 34.352325>,  <36.588089, 32.173817, 34.508389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430141, 32.082729, 34.352325>,  <36.166897, 31.930918, 34.092216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430141, 32.082729, 34.352325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491330, -0.437946, 0.752860,
		0.570516, -0.814960, -0.101741,
		0.658108, 0.379531, 0.650270,
		36.627575, 32.196587, 34.547405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629353, 31.323315, 34.453720>,  <36.166897, 31.930918, 34.092216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629353, 31.323315, 34.453720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581322, 31.658567, 34.666553>,  <36.552505, 31.859720, 34.794254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581322, 31.658567, 34.666553>,  <36.629353, 31.323315, 34.453720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581322, 31.658567, 34.666553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484576, -0.517261, 0.705427,
		0.866469, -0.173132, 0.468249,
		-0.120075, 0.838133, 0.532086,
		36.545300, 31.910007, 34.826180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863258, 31.191326, 35.098827>,  <36.629353, 31.323315, 34.453720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863258, 31.191326, 35.098827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642666, 31.516115, 35.175320>,  <36.510311, 31.710989, 35.221214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642666, 31.516115, 35.175320>,  <36.863258, 31.191326, 35.098827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642666, 31.516115, 35.175320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293347, -0.403366, 0.866743,
		0.780907, 0.421897, 0.460638,
		-0.551482, 0.811972, 0.191229,
		36.477222, 31.759706, 35.232689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620113, 31.037098, 35.766178>,  <36.863258, 31.191326, 35.098827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620113, 31.037098, 35.766178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419060, 31.380850, 35.728607>,  <36.298428, 31.587101, 35.706062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419060, 31.380850, 35.728607>,  <36.620113, 31.037098, 35.766178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419060, 31.380850, 35.728607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507863, -0.205608, 0.836541,
		0.699593, 0.468181, 0.539793,
		-0.502638, 0.859379, -0.093930,
		36.268269, 31.638664, 35.700428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500973, 31.254971, 36.446556>,  <36.620113, 31.037098, 35.766178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500973, 31.254971, 36.446556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242428, 31.457142, 36.217907>,  <36.087299, 31.578445, 36.080719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242428, 31.457142, 36.217907>,  <36.500973, 31.254971, 36.446556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242428, 31.457142, 36.217907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686110, -0.057198, 0.725246,
		0.333866, 0.860970, 0.383751,
		-0.646365, 0.505430, -0.571623,
		36.048519, 31.608770, 36.046421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200539, 31.781181, 36.903339>,  <36.500973, 31.254971, 36.446556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200539, 31.781181, 36.903339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930901, 31.721525, 36.613964>,  <35.769119, 31.685732, 36.440338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930901, 31.721525, 36.613964>,  <36.200539, 31.781181, 36.903339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930901, 31.721525, 36.613964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728617, -0.026604, 0.684404,
		-0.121319, 0.988458, -0.090732,
		-0.674091, -0.149140, -0.723435,
		35.728672, 31.676783, 36.396935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600918, 32.204338, 37.046928>,  <36.200539, 31.781181, 36.903339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600918, 32.204338, 37.046928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445976, 31.948341, 36.781487>,  <35.353012, 31.794744, 36.622223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445976, 31.948341, 36.781487>,  <35.600918, 32.204338, 37.046928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445976, 31.948341, 36.781487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913358, 0.168474, 0.370667,
		-0.125424, 0.749686, -0.649800,
		-0.387358, -0.639991, -0.663601,
		35.329769, 31.756344, 36.582405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010784, 32.595501, 36.704212>,  <35.600918, 32.204338, 37.046928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010784, 32.595501, 36.704212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915443, 32.208763, 36.667530>,  <34.858238, 31.976721, 36.645523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915443, 32.208763, 36.667530>,  <35.010784, 32.595501, 36.704212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915443, 32.208763, 36.667530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923755, 0.196551, 0.328701,
		-0.299778, 0.163054, -0.939972,
		-0.238348, -0.966840, -0.091701,
		34.843941, 31.918711, 36.640018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345329, 32.646843, 36.382637>,  <35.010784, 32.595501, 36.704212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345329, 32.646843, 36.382637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375988, 32.292915, 36.566471>,  <34.394382, 32.080559, 36.676769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375988, 32.292915, 36.566471>,  <34.345329, 32.646843, 36.382637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375988, 32.292915, 36.566471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948131, 0.077938, 0.308176,
		-0.308500, -0.459365, -0.832953,
		0.076647, -0.884822, 0.459583,
		34.398983, 32.027470, 36.704346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687332, 32.376549, 36.373981>,  <34.345329, 32.646843, 36.382637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687332, 32.376549, 36.373981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882565, 32.137665, 36.628574>,  <33.999706, 31.994333, 36.781330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882565, 32.137665, 36.628574>,  <33.687332, 32.376549, 36.373981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882565, 32.137665, 36.628574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861202, -0.211063, 0.462366,
		-0.141792, -0.773815, -0.617337,
		0.488084, -0.597212, 0.636485,
		34.028988, 31.958502, 36.819519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255150, 32.575268, 35.822113>,  <33.687332, 32.376549, 36.373981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255150, 32.575268, 35.822113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942757, 32.387825, 35.987263>,  <32.755322, 32.275360, 36.086353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942757, 32.387825, 35.987263>,  <33.255150, 32.575268, 35.822113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942757, 32.387825, 35.987263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548727, -0.199137, 0.811938,
		-0.298259, 0.860670, 0.412660,
		-0.780987, -0.468605, 0.412879,
		32.708462, 32.247242, 36.111126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135464, 32.941822, 36.485783>,  <33.255150, 32.575268, 35.822113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135464, 32.941822, 36.485783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997135, 32.566650, 36.496284>,  <32.914139, 32.341545, 36.502586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997135, 32.566650, 36.496284>,  <33.135464, 32.941822, 36.485783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997135, 32.566650, 36.496284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364238, -0.108403, 0.924975,
		-0.864718, 0.329443, 0.379119,
		-0.345824, -0.937932, 0.026258,
		32.893387, 32.285271, 36.504162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179192, 32.599636, 37.084122>,  <33.135464, 32.941822, 36.485783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179192, 32.599636, 37.084122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122337, 32.333538, 37.377308>,  <33.088226, 32.173878, 37.553219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122337, 32.333538, 37.377308>,  <33.179192, 32.599636, 37.084122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122337, 32.333538, 37.377308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642041, -0.625549, -0.443252,
		0.753380, 0.407597, 0.516026,
		-0.142131, -0.665247, 0.732970,
		33.079697, 32.133965, 37.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690380, 32.457588, 37.499485>,  <33.179192, 32.599636, 37.084122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690380, 32.457588, 37.499485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473400, 32.121693, 37.489807>,  <33.343212, 31.920155, 37.484001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473400, 32.121693, 37.489807>,  <33.690380, 32.457588, 37.499485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473400, 32.121693, 37.489807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733306, -0.459254, -0.501347,
		0.409890, -0.289696, 0.864908,
		-0.542451, -0.839739, -0.024192,
		33.310665, 31.869770, 37.482548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994122, 31.874956, 37.813194>,  <33.690380, 32.457588, 37.499485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994122, 31.874956, 37.813194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760654, 31.752537, 37.512352>,  <33.620575, 31.679085, 37.331848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760654, 31.752537, 37.512352>,  <33.994122, 31.874956, 37.813194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760654, 31.752537, 37.512352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793303, -0.412500, -0.447788,
		-0.173198, -0.858008, 0.483554,
		-0.583672, -0.306049, -0.752105,
		33.585552, 31.660723, 37.286720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433231, 31.327072, 37.538330>,  <33.994122, 31.874956, 37.813194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433231, 31.327072, 37.538330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180355, 31.428654, 37.245525>,  <34.028629, 31.489603, 37.069843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180355, 31.428654, 37.245525>,  <34.433231, 31.327072, 37.538330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180355, 31.428654, 37.245525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726268, -0.134930, -0.674039,
		-0.269946, -0.957758, -0.099137,
		-0.632190, 0.253954, -0.732013,
		33.990700, 31.504841, 37.025921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506477, 30.764475, 37.058456>,  <34.433231, 31.327072, 37.538330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506477, 30.764475, 37.058456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455780, 31.143000, 36.939510>,  <34.425362, 31.370115, 36.868141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455780, 31.143000, 36.939510>,  <34.506477, 30.764475, 37.058456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455780, 31.143000, 36.939510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815609, -0.071196, -0.574207,
		-0.564551, -0.315314, -0.762797,
		-0.126747, 0.946313, -0.297367,
		34.417755, 31.426893, 36.850300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454033, 30.744596, 36.339695>,  <34.506477, 30.764475, 37.058456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454033, 30.744596, 36.339695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592987, 31.098124, 36.465034>,  <34.676357, 31.310240, 36.540237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592987, 31.098124, 36.465034>,  <34.454033, 30.744596, 36.339695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592987, 31.098124, 36.465034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750814, -0.061959, -0.657602,
		-0.561786, 0.463708, -0.685107,
		0.347384, 0.883819, 0.313350,
		34.697201, 31.363270, 36.559040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892387, 30.874857, 35.760750>,  <34.454033, 30.744596, 36.339695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892387, 30.874857, 35.760750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016624, 31.163855, 36.007824>,  <35.091167, 31.337254, 36.156067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016624, 31.163855, 36.007824>,  <34.892387, 30.874857, 35.760750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016624, 31.163855, 36.007824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818218, 0.127517, -0.560587,
		-0.483787, 0.679514, -0.551554,
		0.310594, 0.722496, 0.617682,
		35.109802, 31.380604, 36.193127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196075, 31.186790, 35.246922>,  <34.892387, 30.874857, 35.760750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196075, 31.186790, 35.246922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319820, 31.368597, 35.581036>,  <35.394066, 31.477680, 35.781506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319820, 31.368597, 35.581036>,  <35.196075, 31.186790, 35.246922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319820, 31.368597, 35.581036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757511, 0.413211, -0.505404,
		-0.574866, 0.789095, -0.216469,
		0.309364, 0.454517, 0.835289,
		35.412628, 31.504951, 35.831623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100788, 32.029739, 35.305920>,  <35.196075, 31.186790, 35.246922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100788, 32.029739, 35.305920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389183, 31.890917, 35.545830>,  <35.562222, 31.807625, 35.689777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389183, 31.890917, 35.545830>,  <35.100788, 32.029739, 35.305920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389183, 31.890917, 35.545830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687672, 0.464938, -0.557621,
		-0.085335, 0.814486, 0.573873,
		0.720989, -0.347052, 0.599775,
		35.605480, 31.786800, 35.725761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457443, 32.621128, 35.580959>,  <35.100788, 32.029739, 35.305920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457443, 32.621128, 35.580959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718918, 32.319817, 35.609974>,  <35.875805, 32.139030, 35.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718918, 32.319817, 35.609974>,  <35.457443, 32.621128, 35.580959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718918, 32.319817, 35.609974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653457, 0.513510, -0.556149,
		0.381688, 0.410947, 0.827911,
		0.653689, -0.753279, 0.072536,
		35.915024, 32.093834, 35.631733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775139, 32.556843, 35.019054>,  <35.457443, 32.621128, 35.580959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775139, 32.556843, 35.019054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790527, 32.161282, 34.961651>,  <35.799759, 31.923944, 34.927208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790527, 32.161282, 34.961651>,  <35.775139, 32.556843, 35.019054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790527, 32.161282, 34.961651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117714, -0.138130, 0.983394,
		-0.992302, -0.054724, 0.111094,
		0.038470, -0.988901, -0.143508,
		35.802067, 31.864611, 34.918598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145390, 32.957634, 35.521191>,  <35.775139, 32.556843, 35.019054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145390, 32.957634, 35.521191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193916, 32.575951, 35.411808>,  <36.223034, 32.346943, 35.346180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193916, 32.575951, 35.411808>,  <36.145390, 32.957634, 35.521191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193916, 32.575951, 35.411808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705331, 0.276709, -0.652641,
		0.698420, -0.113698, 0.706599,
		0.121318, -0.954204, -0.273454,
		36.230312, 32.289688, 35.329773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889858, 32.952446, 35.498684>,  <36.145390, 32.957634, 35.521191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889858, 32.952446, 35.498684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749439, 32.634464, 35.300770>,  <36.665188, 32.443676, 35.182022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749439, 32.634464, 35.300770>,  <36.889858, 32.952446, 35.498684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749439, 32.634464, 35.300770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797916, 0.022548, -0.602346,
		0.489996, -0.606247, 0.626394,
		-0.351046, -0.794957, -0.494783,
		36.644127, 32.395977, 35.152336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471737, 32.552860, 35.446457>,  <36.889858, 32.952446, 35.498684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471737, 32.552860, 35.446457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199478, 32.443550, 35.174561>,  <37.036125, 32.377964, 35.011421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199478, 32.443550, 35.174561>,  <37.471737, 32.552860, 35.446457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199478, 32.443550, 35.174561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699907, 0.031588, -0.713535,
		0.216462, -0.961417, 0.169766,
		-0.680643, -0.273274, -0.679740,
		36.995285, 32.361568, 34.970638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710083, 31.925549, 34.992085>,  <37.471737, 32.552860, 35.446457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710083, 31.925549, 34.992085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470253, 32.187305, 34.807789>,  <37.326355, 32.344360, 34.697212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470253, 32.187305, 34.807789>,  <37.710083, 31.925549, 34.992085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470253, 32.187305, 34.807789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744218, 0.244138, -0.621721,
		-0.294365, -0.715660, -0.633388,
		-0.599575, 0.654391, -0.460741,
		37.290382, 32.383621, 34.669567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812508, 31.709385, 34.260887>,  <37.710083, 31.925549, 34.992085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812508, 31.709385, 34.260887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593166, 32.042336, 34.293022>,  <37.461559, 32.242107, 34.312302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593166, 32.042336, 34.293022>,  <37.812508, 31.709385, 34.260887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593166, 32.042336, 34.293022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478959, 0.391365, -0.785768,
		-0.685496, -0.392402, -0.613282,
		-0.548355, 0.832378, 0.080335,
		37.428661, 32.292049, 34.317123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605625, 31.819675, 33.554173>,  <37.812508, 31.709385, 34.260887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605625, 31.819675, 33.554173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568523, 32.183983, 33.715118>,  <37.546261, 32.402565, 33.811687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568523, 32.183983, 33.715118>,  <37.605625, 31.819675, 33.554173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568523, 32.183983, 33.715118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563345, 0.381216, -0.733019,
		-0.820999, 0.158680, -0.548436,
		-0.092757, 0.910766, 0.402369,
		37.540695, 32.457214, 33.835831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574295, 32.296997, 32.991211>,  <37.605625, 31.819675, 33.554173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574295, 32.296997, 32.991211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667747, 32.556965, 33.280491>,  <37.723820, 32.712944, 33.454060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667747, 32.556965, 33.280491>,  <37.574295, 32.296997, 32.991211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667747, 32.556965, 33.280491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613865, 0.478221, -0.628072,
		-0.754047, 0.590684, -0.287237,
		0.233629, 0.649920, 0.723202,
		37.737835, 32.751942, 33.497452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647224, 32.843987, 32.579166>,  <37.574295, 32.296997, 32.991211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647224, 32.843987, 32.579166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819885, 32.938950, 32.927261>,  <37.923481, 32.995930, 33.136120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819885, 32.938950, 32.927261>,  <37.647224, 32.843987, 32.579166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819885, 32.938950, 32.927261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634444, 0.605882, -0.479986,
		-0.641216, 0.759304, 0.110906,
		0.431651, 0.237411, 0.870237,
		37.949379, 33.010174, 33.188332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697411, 33.603870, 32.572197>,  <37.647224, 32.843987, 32.579166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697411, 33.603870, 32.572197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949368, 33.502129, 32.865738>,  <38.100540, 33.441082, 33.041862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949368, 33.502129, 32.865738>,  <37.697411, 33.603870, 32.572197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949368, 33.502129, 32.865738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645118, 0.697494, -0.311968,
		-0.432507, 0.669928, 0.603436,
		0.629889, -0.254359, 0.733853,
		38.138336, 33.425819, 33.085896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872047, 34.137417, 33.009567>,  <37.697411, 33.603870, 32.572197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872047, 34.137417, 33.009567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197479, 33.904869, 33.013485>,  <38.392738, 33.765339, 33.015835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197479, 33.904869, 33.013485>,  <37.872047, 34.137417, 33.009567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197479, 33.904869, 33.013485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533518, 0.739711, -0.410105,
		0.231177, 0.338880, 0.911986,
		0.813582, -0.581368, 0.009795,
		38.441555, 33.730457, 33.016422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414322, 34.611641, 32.881218>,  <37.872047, 34.137417, 33.009567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414322, 34.611641, 32.881218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578373, 34.247402, 32.860794>,  <38.676804, 34.028858, 32.848537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578373, 34.247402, 32.860794>,  <38.414322, 34.611641, 32.881218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578373, 34.247402, 32.860794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700240, 0.350264, -0.622076,
		0.584347, 0.219374, 0.781290,
		0.410125, -0.910599, -0.051062,
		38.701412, 33.974224, 32.845474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102665, 34.481632, 33.214275>,  <38.414322, 34.611641, 32.881218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102665, 34.481632, 33.214275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053696, 34.233452, 32.904423>,  <39.024315, 34.084545, 32.718510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053696, 34.233452, 32.904423>,  <39.102665, 34.481632, 33.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053696, 34.233452, 32.904423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658652, 0.533063, -0.531057,
		0.742422, -0.575227, 0.343400,
		-0.122425, -0.620449, -0.774632,
		39.016968, 34.047318, 32.672031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685738, 34.712543, 33.607452>,  <39.102665, 34.481632, 33.214275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685738, 34.712543, 33.607452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967396, 34.823357, 33.345940>,  <40.136391, 34.889847, 33.189034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967396, 34.823357, 33.345940>,  <39.685738, 34.712543, 33.607452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967396, 34.823357, 33.345940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153516, 0.958367, 0.240761,
		0.693258, -0.069166, 0.717362,
		0.704149, 0.277037, -0.653778,
		40.178638, 34.906467, 33.149807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019371, 35.164303, 34.026367>,  <39.685738, 34.712543, 33.607452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019371, 35.164303, 34.026367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153694, 35.249947, 33.659458>,  <40.234287, 35.301334, 33.439312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153694, 35.249947, 33.659458>,  <40.019371, 35.164303, 34.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153694, 35.249947, 33.659458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090765, 0.976646, 0.194742,
		0.937547, 0.017860, 0.347400,
		0.335809, 0.214111, -0.917272,
		40.254436, 35.314178, 33.384277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546829, 35.670719, 34.080482>,  <40.019371, 35.164303, 34.026367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546829, 35.670719, 34.080482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341740, 35.665947, 33.737095>,  <40.218685, 35.663086, 33.531063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341740, 35.665947, 33.737095>,  <40.546829, 35.670719, 34.080482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341740, 35.665947, 33.737095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102399, 0.993616, 0.047352,
		0.852424, 0.112185, -0.510673,
		-0.512725, -0.011929, -0.858470,
		40.187923, 35.662369, 33.479553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456791, 36.317955, 34.483150>,  <40.546829, 35.670719, 34.080482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456791, 36.317955, 34.483150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643570, 36.446392, 34.812721>,  <40.755638, 36.523453, 35.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643570, 36.446392, 34.812721>,  <40.456791, 36.317955, 34.483150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643570, 36.446392, 34.812721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656824, 0.497903, -0.566282,
		-0.592066, 0.805600, 0.021592,
		0.466947, 0.321094, 0.823929,
		40.783653, 36.542721, 35.059898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661243, 37.012863, 34.290550>,  <40.456791, 36.317955, 34.483150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661243, 37.012863, 34.290550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904690, 36.890114, 34.583241>,  <41.050758, 36.816463, 34.758854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904690, 36.890114, 34.583241>,  <40.661243, 37.012863, 34.290550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904690, 36.890114, 34.583241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761689, 0.484323, -0.430419,
		-0.222306, 0.819304, 0.528508,
		0.608613, -0.306874, 0.731723,
		41.087273, 36.798050, 34.802757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114445, 37.623013, 34.568481>,  <40.661243, 37.012863, 34.290550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114445, 37.623013, 34.568481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296234, 37.274357, 34.641907>,  <41.405308, 37.065163, 34.685963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296234, 37.274357, 34.641907>,  <41.114445, 37.623013, 34.568481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296234, 37.274357, 34.641907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890565, 0.448937, -0.073139,
		-0.018659, 0.196718, 0.980283,
		0.454473, -0.871641, 0.183567,
		41.432575, 37.012863, 34.696976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563545, 37.531391, 35.134079>,  <41.114445, 37.623013, 34.568481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563545, 37.531391, 35.134079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675499, 37.336327, 34.803299>,  <41.742672, 37.219288, 34.604832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675499, 37.336327, 34.803299>,  <41.563545, 37.531391, 35.134079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675499, 37.336327, 34.803299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890750, 0.453203, 0.034222,
		0.358090, -0.746188, 0.561227,
		0.279885, -0.487658, -0.826954,
		41.759464, 37.190029, 34.555214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224121, 37.502392, 35.103527>,  <41.563545, 37.531391, 35.134079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224121, 37.502392, 35.103527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191105, 37.380646, 34.723938>,  <42.171295, 37.307598, 34.496185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191105, 37.380646, 34.723938>,  <42.224121, 37.502392, 35.103527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191105, 37.380646, 34.723938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980693, 0.144583, -0.131672,
		0.177282, -0.941520, 0.286551,
		-0.082541, -0.304362, -0.948974,
		42.166344, 37.289337, 34.439247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726074, 37.006470, 34.880699>,  <42.224121, 37.502392, 35.103527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726074, 37.006470, 34.880699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645386, 37.210247, 34.546089>,  <42.596973, 37.332516, 34.345322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645386, 37.210247, 34.546089>,  <42.726074, 37.006470, 34.880699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645386, 37.210247, 34.546089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973190, 0.007907, -0.229865,
		-0.110489, -0.860467, -0.497382,
		-0.201724, 0.509445, -0.836524,
		42.584869, 37.363079, 34.295132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112614, 36.683319, 34.422424>,  <42.726074, 37.006470, 34.880699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112614, 36.683319, 34.422424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020439, 37.063622, 34.339516>,  <42.965134, 37.291801, 34.289768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020439, 37.063622, 34.339516>,  <43.112614, 36.683319, 34.422424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020439, 37.063622, 34.339516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922376, 0.145547, -0.357825,
		-0.310036, -0.273642, -0.910493,
		-0.230435, 0.950756, -0.207276,
		42.951309, 37.348846, 34.277332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784878, 36.460220, 34.356106>,  <43.112614, 36.683319, 34.422424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784878, 36.460220, 34.356106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885921, 36.187462, 34.081528>,  <43.946548, 36.023808, 33.916779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885921, 36.187462, 34.081528>,  <43.784878, 36.460220, 34.356106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885921, 36.187462, 34.081528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609271, -0.439036, 0.660331,
		-0.751651, -0.585036, 0.304555,
		0.252607, -0.681895, -0.686447,
		43.961704, 35.982895, 33.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825161, 35.763180, 34.667366>,  <43.784878, 36.460220, 34.356106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825161, 35.763180, 34.667366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089310, 35.761494, 34.366997>,  <44.247799, 35.760483, 34.186775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089310, 35.761494, 34.366997>,  <43.825161, 35.763180, 34.667366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089310, 35.761494, 34.366997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721453, -0.273893, 0.635994,
		-0.208353, -0.961751, -0.177832,
		0.660375, -0.004214, -0.750924,
		44.287422, 35.760231, 34.141720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129177, 35.097740, 34.645706>,  <43.825161, 35.763180, 34.667366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129177, 35.097740, 34.645706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367031, 35.390961, 34.513618>,  <44.509743, 35.566895, 34.434364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367031, 35.390961, 34.513618>,  <44.129177, 35.097740, 34.645706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367031, 35.390961, 34.513618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701450, -0.272287, 0.658656,
		0.392915, -0.623290, -0.676111,
		0.594630, 0.733054, -0.330221,
		44.545422, 35.610878, 34.414551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727428, 34.806644, 34.511208>,  <44.129177, 35.097740, 34.645706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727428, 34.806644, 34.511208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824112, 35.188808, 34.579048>,  <44.882122, 35.418106, 34.619755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824112, 35.188808, 34.579048>,  <44.727428, 34.806644, 34.511208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824112, 35.188808, 34.579048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832357, -0.293988, 0.469844,
		0.498756, 0.027605, -0.866303,
		0.241713, 0.955410, 0.169606,
		44.896626, 35.475433, 34.629929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397270, 35.120064, 34.097260>,  <44.727428, 34.806644, 34.511208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397270, 35.120064, 34.097260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342281, 35.284161, 34.457882>,  <45.309288, 35.382618, 34.674255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342281, 35.284161, 34.457882>,  <45.397270, 35.120064, 34.097260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342281, 35.284161, 34.457882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873472, -0.378984, 0.305643,
		0.467063, 0.829499, -0.306240,
		-0.137470, 0.410246, 0.901554,
		45.301041, 35.407234, 34.728348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883965, 35.553967, 34.356590>,  <45.397270, 35.120064, 34.097260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883965, 35.553967, 34.356590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717533, 35.405170, 34.688496>,  <45.617676, 35.315895, 34.887638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717533, 35.405170, 34.688496>,  <45.883965, 35.553967, 34.356590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717533, 35.405170, 34.688496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909295, -0.178118, 0.376106,
		0.007889, 0.910988, 0.412357,
		-0.416077, -0.371987, 0.829762,
		45.592709, 35.293575, 34.937424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978092, 35.849094, 35.118042>,  <45.883965, 35.553967, 34.356590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978092, 35.849094, 35.118042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940983, 35.450840, 35.114182>,  <45.918716, 35.211887, 35.111866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940983, 35.450840, 35.114182>,  <45.978092, 35.849094, 35.118042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940983, 35.450840, 35.114182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853041, -0.084479, 0.514960,
		-0.513530, 0.039539, 0.857160,
		-0.092773, -0.995641, -0.009654,
		45.913151, 35.152149, 35.111286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759960, 35.502003, 35.853878>,  <45.978092, 35.849094, 35.118042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759960, 35.502003, 35.853878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000008, 35.316040, 35.593502>,  <46.144035, 35.204464, 35.437279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000008, 35.316040, 35.593502>,  <45.759960, 35.502003, 35.853878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000008, 35.316040, 35.593502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789331, 0.212277, 0.576103,
		-0.129655, -0.859535, 0.494357,
		0.600122, -0.464906, -0.650935,
		46.180046, 35.176567, 35.398220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170406, 34.902798, 36.126747>,  <45.759960, 35.502003, 35.853878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170406, 34.902798, 36.126747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349350, 35.104454, 35.831261>,  <46.456718, 35.225449, 35.653969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349350, 35.104454, 35.831261>,  <46.170406, 34.902798, 36.126747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349350, 35.104454, 35.831261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757878, 0.224858, 0.612421,
		0.474855, -0.833833, -0.281486,
		0.447362, 0.504143, -0.738719,
		46.483559, 35.255695, 35.609646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895325, 34.738731, 36.056152>,  <46.170406, 34.902798, 36.126747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895325, 34.738731, 36.056152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864891, 35.103413, 35.894657>,  <46.846630, 35.322224, 35.797760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864891, 35.103413, 35.894657>,  <46.895325, 34.738731, 36.056152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864891, 35.103413, 35.894657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841139, 0.276119, 0.465020,
		0.535441, -0.304216, -0.787881,
		-0.076082, 0.911708, -0.403733,
		46.842068, 35.376926, 35.773537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413097, 34.792175, 35.684334>,  <46.895325, 34.738731, 36.056152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413097, 34.792175, 35.684334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270878, 35.129604, 35.845314>,  <47.185547, 35.332062, 35.941902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270878, 35.129604, 35.845314>,  <47.413097, 34.792175, 35.684334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.270878, 35.129604, 35.845314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909861, 0.213862, 0.355549,
		0.213862, 0.492592, -0.843573,
		-0.355549, 0.843573, 0.402454,
		47.164211, 35.382675, 35.966049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154175, 35.194324, 35.118778>,  <47.413097, 34.792175, 35.684334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154175, 35.194324, 35.118778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.471428, 34.955715, 35.167912>,  <47.661781, 34.812550, 35.197392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.471428, 34.955715, 35.167912>,  <47.154175, 35.194324, 35.118778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.471428, 34.955715, 35.167912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081372, -0.096085, -0.992041,
		0.603583, 0.796820, -0.027668,
		0.793137, -0.596527, 0.122834,
		47.709370, 34.776756, 35.204762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.795462, 32.572342, 23.710747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.686495, 32.954960, 23.669174>,  <30.621115, 33.184532, 23.644230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.686495, 32.954960, 23.669174>,  <30.795462, 32.572342, 23.710747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686495, 32.954960, 23.669174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252283, 0.175249, 0.951652,
		0.928516, 0.233028, -0.289063,
		-0.272419, 0.956549, -0.103932,
		30.604769, 33.241924, 23.637995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380684, 33.005253, 23.858957>,  <30.795462, 32.572342, 23.710747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380684, 33.005253, 23.858957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.043459, 33.211830, 23.919001>,  <30.841124, 33.335777, 23.955027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.043459, 33.211830, 23.919001>,  <31.380684, 33.005253, 23.858957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043459, 33.211830, 23.919001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236674, 0.105625, 0.965831,
		0.482942, 0.849782, -0.211277,
		-0.843061, 0.516444, 0.150110,
		30.790541, 33.366764, 23.964033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598789, 33.664410, 24.285519>,  <31.380684, 33.005253, 23.858957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598789, 33.664410, 24.285519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.202423, 33.632195, 24.328609>,  <30.964603, 33.612865, 24.354464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.202423, 33.632195, 24.328609>,  <31.598789, 33.664410, 24.285519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202423, 33.632195, 24.328609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090980, 0.188570, 0.977837,
		-0.099063, 0.978752, -0.179529,
		-0.990913, -0.080534, 0.107727,
		30.905149, 33.608036, 24.360928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397539, 34.287151, 24.657776>,  <31.598789, 33.664410, 24.285519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397539, 34.287151, 24.657776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.133406, 33.988522, 24.690250>,  <30.974926, 33.809345, 24.709734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.133406, 33.988522, 24.690250>,  <31.397539, 34.287151, 24.657776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133406, 33.988522, 24.690250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128277, 0.218651, 0.967335,
		-0.739935, 0.628350, -0.240151,
		-0.660334, -0.746571, 0.081185,
		30.935305, 33.764549, 24.714605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807314, 34.603657, 24.993105>,  <31.397539, 34.287151, 24.657776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807314, 34.603657, 24.993105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.736126, 34.215935, 25.060947>,  <30.693413, 33.983299, 25.101652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.736126, 34.215935, 25.060947>,  <30.807314, 34.603657, 24.993105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736126, 34.215935, 25.060947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262872, 0.212925, 0.941043,
		-0.948275, 0.122892, -0.292699,
		-0.177969, -0.969309, 0.169606,
		30.682735, 33.925140, 25.111830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232706, 34.597015, 25.460636>,  <30.807314, 34.603657, 24.993105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232706, 34.597015, 25.460636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.382034, 34.226341, 25.477989>,  <30.471632, 34.003937, 25.488401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.382034, 34.226341, 25.477989>,  <30.232706, 34.597015, 25.460636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382034, 34.226341, 25.477989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019429, 0.038944, 0.999052,
		-0.927498, -0.373812, -0.003466,
		0.373322, -0.926687, 0.043383,
		30.494032, 33.948334, 25.491005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867256, 34.098583, 25.925173>,  <30.232706, 34.597015, 25.460636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867256, 34.098583, 25.925173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.222254, 33.917645, 25.889992>,  <30.435253, 33.809082, 25.868883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.222254, 33.917645, 25.889992>,  <29.867256, 34.098583, 25.925173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222254, 33.917645, 25.889992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100522, 0.003767, 0.994928,
		-0.449723, -0.891833, 0.048814,
		0.887493, -0.452348, -0.087955,
		30.488503, 33.781940, 25.863605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890209, 33.473690, 26.482176>,  <29.867256, 34.098583, 25.925173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890209, 33.473690, 26.482176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.263670, 33.578987, 26.385023>,  <30.487747, 33.642166, 26.326731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.263670, 33.578987, 26.385023>,  <29.890209, 33.473690, 26.482176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263670, 33.578987, 26.385023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304685, -0.227229, 0.924951,
		0.188300, -0.937586, -0.292360,
		0.933654, 0.263247, -0.242881,
		30.543766, 33.657963, 26.312159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264593, 32.941338, 26.743011>,  <29.890209, 33.473690, 26.482176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264593, 32.941338, 26.743011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.534655, 33.234535, 26.709818>,  <30.696692, 33.410454, 26.689901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.534655, 33.234535, 26.709818>,  <30.264593, 32.941338, 26.743011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534655, 33.234535, 26.709818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358875, -0.228085, 0.905089,
		0.644499, -0.640854, -0.417046,
		0.675152, 0.732996, -0.082985,
		30.737200, 33.454433, 26.684923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847786, 32.627892, 27.053083>,  <30.264593, 32.941338, 26.743011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847786, 32.627892, 27.053083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939335, 33.017056, 27.066145>,  <30.994265, 33.250553, 27.073982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939335, 33.017056, 27.066145>,  <30.847786, 32.627892, 27.053083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939335, 33.017056, 27.066145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422399, -0.129476, 0.897115,
		0.877038, -0.191532, -0.440590,
		0.228872, 0.972909, 0.032652,
		31.007996, 33.308929, 27.075941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510256, 32.708942, 27.311937>,  <30.847786, 32.627892, 27.053083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510256, 32.708942, 27.311937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.393723, 33.088390, 27.361332>,  <31.323803, 33.316059, 27.390968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.393723, 33.088390, 27.361332>,  <31.510256, 32.708942, 27.311937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393723, 33.088390, 27.361332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280840, -0.038587, 0.958978,
		0.914469, 0.314065, -0.255168,
		-0.291335, 0.948617, 0.123488,
		31.306322, 33.372974, 27.398378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009064, 33.051918, 27.703293>,  <31.510256, 32.708942, 27.311937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009064, 33.051918, 27.703293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.710009, 33.308952, 27.770384>,  <31.530577, 33.463173, 27.810638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.710009, 33.308952, 27.770384>,  <32.009064, 33.051918, 27.703293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710009, 33.308952, 27.770384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311196, 0.115859, 0.943257,
		0.586686, 0.757407, -0.286589,
		-0.747634, 0.642581, 0.167729,
		31.485718, 33.501728, 27.820702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291729, 33.706028, 28.037758>,  <32.009064, 33.051918, 27.703293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291729, 33.706028, 28.037758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911808, 33.635841, 28.141361>,  <31.683855, 33.593731, 28.203524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911808, 33.635841, 28.141361>,  <32.291729, 33.706028, 28.037758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911808, 33.635841, 28.141361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242620, 0.109538, 0.963918,
		-0.197503, 0.978373, -0.061469,
		-0.949804, -0.175463, 0.259007,
		31.626867, 33.583202, 28.219063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125126, 34.290222, 28.499556>,  <32.291729, 33.706028, 28.037758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125126, 34.290222, 28.499556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876232, 33.987663, 28.580242>,  <31.726896, 33.806129, 28.628654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876232, 33.987663, 28.580242>,  <32.125126, 34.290222, 28.499556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876232, 33.987663, 28.580242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189658, 0.104343, 0.976290,
		-0.759507, 0.645741, 0.078530,
		-0.622237, -0.756393, 0.201719,
		31.689562, 33.760746, 28.640759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907696, 34.478985, 29.074238>,  <32.125126, 34.290222, 28.499556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907696, 34.478985, 29.074238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.777147, 34.101395, 29.054684>,  <31.698818, 33.874840, 29.042952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.777147, 34.101395, 29.054684>,  <31.907696, 34.478985, 29.074238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777147, 34.101395, 29.054684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153933, -0.104105, 0.982582,
		-0.932623, 0.313162, 0.179286,
		-0.326372, -0.943977, -0.048885,
		31.679235, 33.818203, 29.040018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324127, 34.395889, 29.583971>,  <31.907696, 34.478985, 29.074238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324127, 34.395889, 29.583971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470819, 34.033001, 29.501551>,  <31.558834, 33.815269, 29.452099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470819, 34.033001, 29.501551>,  <31.324127, 34.395889, 29.583971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470819, 34.033001, 29.501551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039275, -0.206187, 0.977724,
		-0.929498, -0.366653, -0.039984,
		0.366729, -0.907222, -0.206051,
		31.580839, 33.760834, 29.439735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063276, 33.931915, 30.147680>,  <31.324127, 34.395889, 29.583971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063276, 33.931915, 30.147680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.374355, 33.740170, 29.985006>,  <31.561003, 33.625122, 29.887402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.374355, 33.740170, 29.985006>,  <31.063276, 33.931915, 30.147680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374355, 33.740170, 29.985006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310760, -0.269202, 0.911570,
		-0.546457, -0.835307, -0.060389,
		0.777697, -0.479367, -0.406687,
		31.607664, 33.596359, 29.863001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097885, 33.405830, 30.550602>,  <31.063276, 33.931915, 30.147680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097885, 33.405830, 30.550602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.457907, 33.409767, 30.376335>,  <31.673920, 33.412128, 30.271774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.457907, 33.409767, 30.376335>,  <31.097885, 33.405830, 30.550602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457907, 33.409767, 30.376335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430946, -0.168580, 0.886491,
		-0.064717, -0.985639, -0.155974,
		0.900054, 0.009845, -0.435667,
		31.727922, 33.412720, 30.245634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495499, 32.864864, 30.778439>,  <31.097885, 33.405830, 30.550602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495499, 32.864864, 30.778439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.788910, 33.098423, 30.639297>,  <31.964956, 33.238556, 30.555813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.788910, 33.098423, 30.639297>,  <31.495499, 32.864864, 30.778439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788910, 33.098423, 30.639297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518712, -0.150234, 0.841646,
		0.439172, -0.797808, -0.413074,
		0.733530, 0.583894, -0.347855,
		32.008968, 33.273590, 30.534941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060310, 32.467564, 30.836514>,  <31.495499, 32.864864, 30.778439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060310, 32.467564, 30.836514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.159901, 32.854858, 30.827316>,  <32.219654, 33.087234, 30.821798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.159901, 32.854858, 30.827316>,  <32.060310, 32.467564, 30.836514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159901, 32.854858, 30.827316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602466, -0.136248, 0.786429,
		0.758316, -0.209657, -0.617253,
		0.248979, 0.968236, -0.022992,
		32.234596, 33.145329, 30.820419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756172, 32.447090, 30.895933>,  <32.060310, 32.467564, 30.836514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756172, 32.447090, 30.895933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647175, 32.812790, 31.015860>,  <32.581776, 33.032211, 31.087816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647175, 32.812790, 31.015860>,  <32.756172, 32.447090, 30.895933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647175, 32.812790, 31.015860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538617, -0.113258, 0.834904,
		0.797269, 0.388994, -0.461569,
		-0.272496, 0.914252, 0.299816,
		32.565426, 33.087067, 31.105804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309410, 32.832417, 31.004303>,  <32.756172, 32.447090, 30.895933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309410, 32.832417, 31.004303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.029755, 32.972050, 31.253895>,  <32.861961, 33.055832, 31.403650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.029755, 32.972050, 31.253895>,  <33.309410, 32.832417, 31.004303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029755, 32.972050, 31.253895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631240, -0.108482, 0.767964,
		0.335776, 0.930790, -0.144514,
		-0.699136, 0.349087, 0.623977,
		32.820015, 33.076775, 31.441088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976315, 32.375320, 31.356087>,  <33.309410, 32.832417, 31.004303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976315, 32.375320, 31.356087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363529, 32.302490, 31.287092>,  <34.595860, 32.258793, 31.245695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363529, 32.302490, 31.287092>,  <33.976315, 32.375320, 31.356087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363529, 32.302490, 31.287092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184968, -0.053841, -0.981269,
		0.169374, 0.981810, -0.085797,
		0.968039, -0.182071, -0.172484,
		34.653942, 32.247868, 31.235348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125130, 32.906178, 30.854744>,  <33.976315, 32.375320, 31.356087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125130, 32.906178, 30.854744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381775, 32.600998, 30.823168>,  <34.535763, 32.417889, 30.804222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.381775, 32.600998, 30.823168>,  <34.125130, 32.906178, 30.854744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381775, 32.600998, 30.823168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117140, 0.004242, -0.993106,
		0.758027, 0.646442, -0.086650,
		0.641618, -0.762952, -0.078940,
		34.574261, 32.372112, 30.799486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464863, 33.074463, 30.267714>,  <34.125130, 32.906178, 30.854744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464863, 33.074463, 30.267714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567612, 32.690300, 30.310860>,  <34.629261, 32.459801, 30.336748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567612, 32.690300, 30.310860>,  <34.464863, 33.074463, 30.267714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567612, 32.690300, 30.310860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054633, -0.125863, -0.990542,
		0.964900, 0.248549, -0.084800,
		0.256871, -0.960407, 0.107866,
		34.644672, 32.402176, 30.343220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997902, 32.954960, 29.821667>,  <34.464863, 33.074463, 30.267714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997902, 32.954960, 29.821667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861763, 32.582573, 29.874531>,  <34.780079, 32.359142, 29.906250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861763, 32.582573, 29.874531>,  <34.997902, 32.954960, 29.821667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861763, 32.582573, 29.874531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053480, -0.159489, -0.985750,
		0.938777, -0.328431, 0.104070,
		-0.340348, -0.930965, 0.132160,
		34.759659, 32.303284, 29.914179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294411, 32.648026, 29.200922>,  <34.997902, 32.954960, 29.821667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294411, 32.648026, 29.200922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033062, 32.367500, 29.314953>,  <34.876255, 32.199184, 29.383371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033062, 32.367500, 29.314953>,  <35.294411, 32.648026, 29.200922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033062, 32.367500, 29.314953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030638, -0.351766, -0.935587,
		0.756419, -0.620018, 0.208346,
		-0.653369, -0.701312, 0.285078,
		34.837051, 32.157108, 29.400476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587162, 32.021599, 28.924286>,  <35.294411, 32.648026, 29.200922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587162, 32.021599, 28.924286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192692, 31.971859, 28.968103>,  <34.956009, 31.942017, 28.994394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192692, 31.971859, 28.968103>,  <35.587162, 32.021599, 28.924286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192692, 31.971859, 28.968103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098655, -0.090612, -0.990988,
		0.133151, -0.988093, 0.077092,
		-0.986174, -0.124346, 0.109545,
		34.896839, 31.934555, 29.000967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427475, 31.544840, 28.511593>,  <35.587162, 32.021599, 28.924286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427475, 31.544840, 28.511593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079132, 31.732676, 28.569696>,  <34.870129, 31.845377, 28.604559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079132, 31.732676, 28.569696>,  <35.427475, 31.544840, 28.511593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079132, 31.732676, 28.569696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217603, -0.103325, -0.970553,
		-0.440753, -0.876818, 0.192165,
		-0.870854, 0.469590, 0.145257,
		34.817875, 31.873552, 28.613274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978874, 31.114685, 28.263819>,  <35.427475, 31.544840, 28.511593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978874, 31.114685, 28.263819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757999, 31.447174, 28.289608>,  <34.625473, 31.646667, 28.305082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757999, 31.447174, 28.289608>,  <34.978874, 31.114685, 28.263819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757999, 31.447174, 28.289608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315022, -0.136421, -0.939229,
		-0.771912, -0.538943, 0.337183,
		-0.552189, 0.831222, 0.064474,
		34.592342, 31.696541, 28.308950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495140, 30.971733, 27.875835>,  <34.978874, 31.114685, 28.263819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495140, 30.971733, 27.875835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460876, 31.369427, 27.901638>,  <34.440319, 31.608044, 27.917120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460876, 31.369427, 27.901638>,  <34.495140, 30.971733, 27.875835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460876, 31.369427, 27.901638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001204, 0.064639, -0.997908,
		-0.996324, -0.085559, -0.004340,
		-0.085661, 0.994234, 0.064505,
		34.435177, 31.667698, 27.920990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123943, 31.213787, 27.299973>,  <34.495140, 30.971733, 27.875835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123943, 31.213787, 27.299973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306751, 31.555246, 27.399906>,  <34.416435, 31.760122, 27.459866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306751, 31.555246, 27.399906>,  <34.123943, 31.213787, 27.299973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306751, 31.555246, 27.399906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004283, 0.278769, -0.960349,
		-0.889446, 0.439968, 0.123747,
		0.457020, 0.853649, 0.249834,
		34.443855, 31.811340, 27.474857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735641, 31.699123, 26.969442>,  <34.123943, 31.213787, 27.299973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735641, 31.699123, 26.969442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.071320, 31.897697, 27.058262>,  <34.272724, 32.016842, 27.111553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.071320, 31.897697, 27.058262>,  <33.735641, 31.699123, 26.969442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071320, 31.897697, 27.058262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068106, 0.501025, -0.862749,
		-0.539552, 0.708890, 0.454267,
		0.839193, 0.496436, 0.222049,
		34.323078, 32.046627, 27.124876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615353, 32.461437, 26.821186>,  <33.735641, 31.699123, 26.969442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615353, 32.461437, 26.821186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.006287, 32.378105, 26.806145>,  <34.240849, 32.328106, 26.797119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.006287, 32.378105, 26.806145>,  <33.615353, 32.461437, 26.821186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006287, 32.378105, 26.806145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009952, 0.222653, -0.974847,
		0.211463, 0.952378, 0.219680,
		0.977335, -0.208331, -0.037605,
		34.299488, 32.315605, 26.794863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991497, 33.141037, 26.677048>,  <33.615353, 32.461437, 26.821186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991497, 33.141037, 26.677048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173489, 32.811306, 26.542303>,  <34.282684, 32.613468, 26.461456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173489, 32.811306, 26.542303>,  <33.991497, 33.141037, 26.677048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173489, 32.811306, 26.542303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208179, 0.269343, -0.940275,
		0.865826, 0.497934, -0.049062,
		0.454980, -0.824328, -0.336863,
		34.309982, 32.564007, 26.441244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568653, 33.313469, 26.112537>,  <33.991497, 33.141037, 26.677048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568653, 33.313469, 26.112537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463169, 32.932899, 26.048983>,  <34.399879, 32.704556, 26.010851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463169, 32.932899, 26.048983>,  <34.568653, 33.313469, 26.112537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463169, 32.932899, 26.048983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082752, 0.186422, -0.978979,
		0.961046, -0.245018, -0.127894,
		-0.263710, -0.951427, -0.158885,
		34.384056, 32.647472, 26.001318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793587, 33.193382, 25.508759>,  <34.568653, 33.313469, 26.112537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793587, 33.193382, 25.508759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542801, 32.883049, 25.537054>,  <34.392330, 32.696850, 25.554031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.542801, 32.883049, 25.537054>,  <34.793587, 33.193382, 25.508759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542801, 32.883049, 25.537054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235204, 0.101944, -0.966585,
		0.742693, -0.622653, -0.246393,
		-0.626966, -0.775829, 0.070738,
		34.354710, 32.650299, 25.558275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994751, 32.785309, 24.919231>,  <34.793587, 33.193382, 25.508759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994751, 32.785309, 24.919231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629921, 32.681965, 25.046585>,  <34.411022, 32.619957, 25.122997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629921, 32.681965, 25.046585>,  <34.994751, 32.785309, 24.919231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629921, 32.681965, 25.046585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324248, -0.020793, -0.945744,
		0.250966, -0.965824, -0.064809,
		-0.912075, -0.258363, 0.318385,
		34.356300, 32.604458, 25.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737968, 32.063026, 24.636889>,  <34.994751, 32.785309, 24.919231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737968, 32.063026, 24.636889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405575, 32.262386, 24.735723>,  <34.206139, 32.382004, 24.795025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405575, 32.262386, 24.735723>,  <34.737968, 32.063026, 24.636889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405575, 32.262386, 24.735723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365979, -0.155298, -0.917574,
		-0.418948, -0.852923, 0.311456,
		-0.830989, 0.498402, 0.247090,
		34.156277, 32.411907, 24.809851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227631, 31.736496, 24.318350>,  <34.737968, 32.063026, 24.636889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227631, 31.736496, 24.318350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043541, 32.078266, 24.414808>,  <33.933086, 32.283329, 24.472683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043541, 32.078266, 24.414808>,  <34.227631, 31.736496, 24.318350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043541, 32.078266, 24.414808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501598, -0.026131, -0.864706,
		-0.732524, -0.518920, 0.440603,
		-0.460227, 0.854424, 0.241147,
		33.905472, 32.334595, 24.487152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.527306, 31.672680, 24.077436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577568, 32.067463, 24.117687>,  <33.607727, 32.304333, 24.141838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577568, 32.067463, 24.117687>,  <33.527306, 31.672680, 24.077436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577568, 32.067463, 24.117687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418979, 0.144736, -0.896386,
		-0.899259, 0.070474, 0.431702,
		0.125655, 0.986957, 0.100628,
		33.615265, 32.363548, 24.147875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862991, 32.004314, 23.969225>,  <33.527306, 31.672680, 24.077436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862991, 32.004314, 23.969225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150028, 32.275852, 23.906969>,  <33.322250, 32.438774, 23.869616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150028, 32.275852, 23.906969>,  <32.862991, 32.004314, 23.969225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150028, 32.275852, 23.906969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322931, 0.126321, -0.937954,
		-0.617067, 0.723333, 0.309869,
		0.717596, 0.678847, -0.155638,
		33.365307, 32.479507, 23.860277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546944, 32.514748, 23.609650>,  <32.862991, 32.004314, 23.969225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546944, 32.514748, 23.609650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928646, 32.580181, 23.509544>,  <33.157669, 32.619442, 23.449480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928646, 32.580181, 23.509544>,  <32.546944, 32.514748, 23.609650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928646, 32.580181, 23.509544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243789, -0.058861, -0.968040,
		-0.173083, 0.984773, -0.016289,
		0.954258, 0.163580, -0.250265,
		33.214924, 32.629253, 23.434465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547199, 33.109421, 23.185987>,  <32.546944, 32.514748, 23.609650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547199, 33.109421, 23.185987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906845, 32.959827, 23.095016>,  <33.122635, 32.870071, 23.040434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906845, 32.959827, 23.095016>,  <32.547199, 33.109421, 23.185987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906845, 32.959827, 23.095016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167594, 0.185850, -0.968180,
		0.404348, 0.908625, 0.104425,
		0.899119, -0.373980, -0.227428,
		33.176582, 32.847633, 23.026789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894512, 33.555092, 22.740036>,  <32.547199, 33.109421, 23.185987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894512, 33.555092, 22.740036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041245, 33.190666, 22.664772>,  <33.129284, 32.972012, 22.619614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041245, 33.190666, 22.664772>,  <32.894512, 33.555092, 22.740036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041245, 33.190666, 22.664772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142354, 0.144905, -0.979151,
		0.919332, 0.385968, -0.076537,
		0.366830, -0.911060, -0.188160,
		33.151295, 32.917347, 22.608324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224728, 33.650280, 22.086863>,  <32.894512, 33.555092, 22.740036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224728, 33.650280, 22.086863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158344, 33.258110, 22.129250>,  <33.118515, 33.022808, 22.154682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158344, 33.258110, 22.129250>,  <33.224728, 33.650280, 22.086863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158344, 33.258110, 22.129250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317611, -0.048589, -0.946975,
		0.933586, -0.190811, -0.303329,
		-0.165955, -0.980423, 0.105965,
		33.108559, 32.963982, 22.161039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565971, 33.408054, 21.506378>,  <33.224728, 33.650280, 22.086863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565971, 33.408054, 21.506378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321537, 33.113430, 21.622351>,  <33.174877, 32.936657, 21.691935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321537, 33.113430, 21.622351>,  <33.565971, 33.408054, 21.506378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321537, 33.113430, 21.622351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276972, -0.144160, -0.950003,
		0.741530, -0.660831, -0.115913,
		-0.611081, -0.736560, 0.289930,
		33.138214, 32.892464, 21.709330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736534, 32.676762, 21.070011>,  <33.565971, 33.408054, 21.506378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736534, 32.676762, 21.070011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.362415, 32.679214, 21.211538>,  <33.137943, 32.680687, 21.296453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.362415, 32.679214, 21.211538>,  <33.736534, 32.676762, 21.070011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362415, 32.679214, 21.211538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352712, -0.096937, -0.930697,
		0.028597, -0.995272, 0.092825,
		-0.935295, 0.006126, 0.353817,
		33.081825, 32.681053, 21.317684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382969, 32.147625, 20.605520>,  <33.736534, 32.676762, 21.070011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382969, 32.147625, 20.605520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087181, 32.353668, 20.778883>,  <32.909710, 32.477295, 20.882900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087181, 32.353668, 20.778883>,  <33.382969, 32.147625, 20.605520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087181, 32.353668, 20.778883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505305, 0.000677, -0.862941,
		-0.444804, -0.857122, 0.259789,
		-0.739470, 0.515112, 0.433409,
		32.865341, 32.508202, 20.908905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776573, 31.686153, 20.579111>,  <33.382969, 32.147625, 20.605520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776573, 31.686153, 20.579111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668850, 32.071198, 20.590797>,  <32.604218, 32.302223, 20.597809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668850, 32.071198, 20.590797>,  <32.776573, 31.686153, 20.579111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668850, 32.071198, 20.590797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438989, -0.095701, -0.893381,
		-0.857183, -0.253419, 0.448349,
		-0.269307, 0.962611, 0.029215,
		32.588058, 32.359982, 20.599562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180069, 31.664070, 20.207752>,  <32.776573, 31.686153, 20.579111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180069, 31.664070, 20.207752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.294941, 32.047184, 20.202425>,  <32.363865, 32.277054, 20.199228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.294941, 32.047184, 20.202425>,  <32.180069, 31.664070, 20.207752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294941, 32.047184, 20.202425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114496, 0.020521, -0.993212,
		-0.951010, 0.286753, 0.115556,
		0.287177, 0.957785, -0.013317,
		32.381096, 32.334518, 20.198429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757240, 31.947544, 19.699743>,  <32.180069, 31.664070, 20.207752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757240, 31.947544, 19.699743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048443, 32.220055, 19.730383>,  <32.223164, 32.383560, 19.748766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048443, 32.220055, 19.730383>,  <31.757240, 31.947544, 19.699743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048443, 32.220055, 19.730383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014104, 0.126590, -0.991855,
		-0.685426, 0.720996, 0.101767,
		0.728006, 0.681278, 0.076599,
		32.266846, 32.424438, 19.753363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538967, 32.539406, 19.254976>,  <31.757240, 31.947544, 19.699743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538967, 32.539406, 19.254976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938040, 32.548401, 19.280674>,  <32.177483, 32.553799, 19.296093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938040, 32.548401, 19.280674>,  <31.538967, 32.539406, 19.254976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938040, 32.548401, 19.280674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063219, 0.043677, -0.997043,
		-0.025225, 0.998793, 0.042154,
		0.997681, 0.022486, 0.064244,
		32.237343, 32.555145, 19.299948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717333, 33.117989, 18.761051>,  <31.538967, 32.539406, 19.254976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717333, 33.117989, 18.761051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033329, 32.891525, 18.855181>,  <32.222927, 32.755646, 18.911659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033329, 32.891525, 18.855181>,  <31.717333, 33.117989, 18.761051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033329, 32.891525, 18.855181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282943, -0.003856, -0.959129,
		0.543926, 0.824288, 0.157144,
		0.789992, -0.566158, 0.235324,
		32.270329, 32.721680, 18.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312920, 33.501366, 18.461884>,  <31.717333, 33.117989, 18.761051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312920, 33.501366, 18.461884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490719, 33.147366, 18.517315>,  <32.597397, 32.934967, 18.550573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490719, 33.147366, 18.517315>,  <32.312920, 33.501366, 18.461884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490719, 33.147366, 18.517315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256647, -0.022396, -0.966245,
		0.858229, 0.465056, 0.217177,
		0.444494, -0.884998, 0.138576,
		32.624065, 32.881866, 18.558887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015320, 33.551029, 18.162285>,  <32.312920, 33.501366, 18.461884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015320, 33.551029, 18.162285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928547, 33.161766, 18.131575>,  <32.876484, 32.928207, 18.113148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928547, 33.161766, 18.131575>,  <33.015320, 33.551029, 18.162285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928547, 33.161766, 18.131575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141668, 0.046432, -0.988824,
		0.965851, -0.225388, 0.127793,
		-0.216936, -0.973162, -0.076777,
		32.863464, 32.869816, 18.108541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567623, 33.317825, 17.773321>,  <33.015320, 33.551029, 18.162285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567623, 33.317825, 17.773321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317245, 33.008522, 17.732790>,  <33.167019, 32.822941, 17.708471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317245, 33.008522, 17.732790>,  <33.567623, 33.317825, 17.773321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317245, 33.008522, 17.732790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246417, -0.072828, -0.966424,
		0.739917, -0.629893, 0.236130,
		-0.625940, -0.773260, -0.101330,
		33.129463, 32.776543, 17.702391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929096, 32.738693, 17.640230>,  <33.567623, 33.317825, 17.773321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929096, 32.738693, 17.640230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559547, 32.640614, 17.522699>,  <33.337818, 32.581768, 17.452181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559547, 32.640614, 17.522699>,  <33.929096, 32.738693, 17.640230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559547, 32.640614, 17.522699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330649, -0.124847, -0.935460,
		0.192688, -0.961401, 0.196417,
		-0.923874, -0.245197, -0.293829,
		33.282387, 32.567055, 17.434551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983177, 32.094555, 17.258184>,  <33.929096, 32.738693, 17.640230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983177, 32.094555, 17.258184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648304, 32.264374, 17.120270>,  <33.447380, 32.366264, 17.037521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648304, 32.264374, 17.120270>,  <33.983177, 32.094555, 17.258184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648304, 32.264374, 17.120270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199270, -0.350304, -0.915193,
		-0.509325, -0.834893, 0.208669,
		-0.837185, 0.424549, -0.344788,
		33.397148, 32.391739, 17.016834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910519, 31.629936, 16.788374>,  <33.983177, 32.094555, 17.258184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910519, 31.629936, 16.788374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669861, 31.942911, 16.724104>,  <33.525467, 32.130695, 16.685541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669861, 31.942911, 16.724104>,  <33.910519, 31.629936, 16.788374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669861, 31.942911, 16.724104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063984, -0.153299, -0.986106,
		-0.796196, -0.603567, 0.042168,
		-0.601646, 0.782436, -0.160675,
		33.489368, 32.177643, 16.675901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415920, 31.328106, 16.373375>,  <33.910519, 31.629936, 16.788374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415920, 31.328106, 16.373375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405357, 31.719242, 16.290304>,  <33.399017, 31.953924, 16.240461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405357, 31.719242, 16.290304>,  <33.415920, 31.328106, 16.373375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405357, 31.719242, 16.290304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006959, -0.207924, -0.978120,
		-0.999627, -0.024388, 0.012297,
		-0.026411, 0.977841, -0.207677,
		33.397434, 32.012596, 16.228001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952667, 31.296043, 15.790375>,  <33.415920, 31.328106, 16.373375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952667, 31.296043, 15.790375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144577, 31.646494, 15.809199>,  <33.259724, 31.856764, 15.820495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144577, 31.646494, 15.809199>,  <32.952667, 31.296043, 15.790375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144577, 31.646494, 15.809199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018800, 0.043361, -0.998883,
		-0.877188, 0.480127, 0.004333,
		0.479779, 0.876127, 0.047062,
		33.288509, 31.909332, 15.823318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573387, 31.719395, 15.314967>,  <32.952667, 31.296043, 15.790375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573387, 31.719395, 15.314967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959717, 31.810776, 15.363932>,  <33.191517, 31.865604, 15.393311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959717, 31.810776, 15.363932>,  <32.573387, 31.719395, 15.314967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959717, 31.810776, 15.363932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165379, -0.179556, -0.969747,
		-0.199561, 0.956854, -0.211202,
		0.965829, 0.228452, 0.122411,
		33.249466, 31.879311, 15.400655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033108, 31.769873, 15.740896>,  <32.573387, 31.719395, 15.314967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033108, 31.769873, 15.740896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292717, 32.064507, 15.664786>,  <32.448483, 32.241287, 15.619121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292717, 32.064507, 15.664786>,  <32.033108, 31.769873, 15.740896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292717, 32.064507, 15.664786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316429, -0.488824, -0.812972,
		-0.691835, 0.467433, -0.550337,
		0.649028, 0.736585, -0.190276,
		32.487427, 32.285480, 15.607703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648136, 32.095299, 16.330591>,  <32.033108, 31.769873, 15.740896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648136, 32.095299, 16.330591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301947, 32.202045, 16.161009>,  <31.094233, 32.266094, 16.059259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301947, 32.202045, 16.161009>,  <31.648136, 32.095299, 16.330591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301947, 32.202045, 16.161009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137279, 0.687555, 0.713037,
		0.481780, 0.675315, -0.558425,
		-0.865472, 0.266867, -0.423957,
		31.042305, 32.282104, 16.033821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686960, 32.757092, 16.198269>,  <31.648136, 32.095299, 16.330591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686960, 32.757092, 16.198269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292168, 32.694221, 16.211901>,  <31.055292, 32.656498, 16.220079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292168, 32.694221, 16.211901>,  <31.686960, 32.757092, 16.198269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292168, 32.694221, 16.211901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111280, 0.820398, 0.560860,
		-0.116113, 0.549767, -0.827209,
		-0.986983, -0.157175, 0.034081,
		30.996073, 32.647068, 16.222124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390341, 33.412552, 16.411402>,  <31.686960, 32.757092, 16.198269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390341, 33.412552, 16.411402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095240, 33.161644, 16.511206>,  <30.918179, 33.011101, 16.571089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095240, 33.161644, 16.511206>,  <31.390341, 33.412552, 16.411402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095240, 33.161644, 16.511206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154514, 0.516695, 0.842111,
		-0.657152, 0.582715, -0.478115,
		-0.737751, -0.627271, 0.249510,
		30.873915, 32.973461, 16.586060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848738, 33.828438, 16.571835>,  <31.390341, 33.412552, 16.411402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848738, 33.828438, 16.571835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744852, 33.480282, 16.739155>,  <30.682520, 33.271389, 16.839546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744852, 33.480282, 16.739155>,  <30.848738, 33.828438, 16.571835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744852, 33.480282, 16.739155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199133, 0.472126, 0.858745,
		-0.944930, 0.139733, -0.295941,
		-0.259717, -0.870386, 0.418301,
		30.666937, 33.219166, 16.864645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210320, 33.962940, 16.898701>,  <30.848738, 33.828438, 16.571835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210320, 33.962940, 16.898701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354874, 33.636436, 17.078976>,  <30.441607, 33.440533, 17.187141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354874, 33.636436, 17.078976>,  <30.210320, 33.962940, 16.898701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354874, 33.636436, 17.078976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335456, 0.337172, 0.879650,
		-0.869982, -0.469080, -0.151970,
		0.361386, -0.816259, 0.450690,
		30.463289, 33.391560, 17.214182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697271, 33.787594, 17.340969>,  <30.210320, 33.962940, 16.898701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697271, 33.787594, 17.340969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015160, 33.590103, 17.482193>,  <30.205893, 33.471607, 17.566927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015160, 33.590103, 17.482193>,  <29.697271, 33.787594, 17.340969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015160, 33.590103, 17.482193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226603, 0.298279, 0.927189,
		-0.563088, -0.816862, 0.125169,
		0.794722, -0.493726, 0.353061,
		30.253576, 33.441986, 17.588112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477554, 33.376465, 17.926985>,  <29.697271, 33.787594, 17.340969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477554, 33.376465, 17.926985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.871824, 33.431538, 17.965961>,  <30.108385, 33.464581, 17.989347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.871824, 33.431538, 17.965961>,  <29.477554, 33.376465, 17.926985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871824, 33.431538, 17.965961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123505, 0.195674, 0.972861,
		0.114874, -0.970956, 0.209875,
		0.985673, 0.137677, 0.097440,
		30.167526, 33.472839, 17.995193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555859, 33.075550, 18.566990>,  <29.477554, 33.376465, 17.926985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555859, 33.075550, 18.566990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.892822, 33.279545, 18.497402>,  <30.094999, 33.401939, 18.455648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.892822, 33.279545, 18.497402>,  <29.555859, 33.075550, 18.566990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892822, 33.279545, 18.497402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087827, 0.188591, 0.978121,
		0.531637, -0.839255, 0.114080,
		0.842407, 0.509986, -0.173971,
		30.145544, 33.432541, 18.445211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214207, 32.813717, 18.897129>,  <29.555859, 33.075550, 18.566990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214207, 32.813717, 18.897129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264297, 33.206940, 18.843578>,  <30.294352, 33.442871, 18.811447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264297, 33.206940, 18.843578>,  <30.214207, 32.813717, 18.897129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264297, 33.206940, 18.843578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072622, 0.125494, 0.989433,
		0.989467, -0.133624, -0.055677,
		0.125225, 0.983054, -0.133876,
		30.301865, 33.501858, 18.803415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658623, 32.936562, 19.403595>,  <30.214207, 32.813717, 18.897129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658623, 32.936562, 19.403595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.573023, 33.320843, 19.332874>,  <30.521664, 33.551411, 19.290442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.573023, 33.320843, 19.332874>,  <30.658623, 32.936562, 19.403595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573023, 33.320843, 19.332874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069512, 0.195514, 0.978234,
		0.974357, 0.197051, -0.108620,
		-0.213999, 0.960700, -0.176803,
		30.508823, 33.609055, 19.279833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258810, 33.212177, 19.571650>,  <30.658623, 32.936562, 19.403595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258810, 33.212177, 19.571650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.992887, 33.510902, 19.578659>,  <30.833334, 33.690136, 19.582865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.992887, 33.510902, 19.578659>,  <31.258810, 33.212177, 19.571650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992887, 33.510902, 19.578659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300645, 0.246012, 0.921461,
		0.683845, 0.617862, -0.388076,
		-0.664807, 0.746809, 0.017523,
		30.793446, 33.734943, 19.583916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591253, 33.656307, 19.916090>,  <31.258810, 33.212177, 19.571650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591253, 33.656307, 19.916090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225107, 33.814404, 19.946796>,  <31.005419, 33.909260, 19.965219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225107, 33.814404, 19.946796>,  <31.591253, 33.656307, 19.916090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225107, 33.814404, 19.946796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154289, 0.168231, 0.973598,
		0.371887, 0.903043, -0.214974,
		-0.915366, 0.395236, 0.076766,
		30.950497, 33.932976, 19.969826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569210, 34.191204, 20.434074>,  <31.591253, 33.656307, 19.916090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569210, 34.191204, 20.434074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185112, 34.080448, 20.419855>,  <30.954653, 34.013996, 20.411324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185112, 34.080448, 20.419855>,  <31.569210, 34.191204, 20.434074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185112, 34.080448, 20.419855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024554, -0.043070, 0.998770,
		-0.278081, 0.959936, 0.034559,
		-0.960244, -0.276890, -0.035547,
		30.897039, 33.997379, 20.409191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290024, 34.566841, 21.012226>,  <31.569210, 34.191204, 20.434074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290024, 34.566841, 21.012226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028133, 34.278015, 20.922823>,  <30.870998, 34.104721, 20.869181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028133, 34.278015, 20.922823>,  <31.290024, 34.566841, 21.012226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028133, 34.278015, 20.922823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256876, -0.065544, 0.964219,
		-0.710878, 0.688713, -0.142568,
		-0.654726, -0.722065, -0.223508,
		30.831715, 34.061394, 20.855770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753269, 34.754921, 21.327143>,  <31.290024, 34.566841, 21.012226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753269, 34.754921, 21.327143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719151, 34.360611, 21.269205>,  <30.698679, 34.124027, 21.234444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719151, 34.360611, 21.269205>,  <30.753269, 34.754921, 21.327143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719151, 34.360611, 21.269205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195984, -0.125934, 0.972487,
		-0.976891, 0.111335, -0.182454,
		-0.085294, -0.985772, -0.144843,
		30.693562, 34.064880, 21.225752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105461, 34.498543, 21.580885>,  <30.753269, 34.754921, 21.327143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105461, 34.498543, 21.580885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320858, 34.161892, 21.564411>,  <30.450096, 33.959904, 21.554527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320858, 34.161892, 21.564411>,  <30.105461, 34.498543, 21.580885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320858, 34.161892, 21.564411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288369, -0.229992, 0.929488,
		-0.791752, -0.488643, -0.366547,
		0.538491, -0.841624, -0.041186,
		30.482405, 33.909405, 21.552055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755161, 34.001072, 21.983480>,  <30.105461, 34.498543, 21.580885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755161, 34.001072, 21.983480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.110891, 33.823002, 21.941685>,  <30.324329, 33.716160, 21.916607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.110891, 33.823002, 21.941685>,  <29.755161, 34.001072, 21.983480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110891, 33.823002, 21.941685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092471, -0.398865, 0.912335,
		-0.447834, -0.801697, -0.395886,
		0.889322, -0.445183, -0.104492,
		30.377689, 33.689449, 21.910337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661461, 33.339920, 22.221472>,  <29.755161, 34.001072, 21.983480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661461, 33.339920, 22.221472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052671, 33.418304, 22.249939>,  <30.287397, 33.465336, 22.267019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052671, 33.418304, 22.249939>,  <29.661461, 33.339920, 22.221472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052671, 33.418304, 22.249939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006053, -0.314523, 0.949230,
		0.208392, -0.928803, -0.306426,
		0.978026, 0.195958, 0.071166,
		30.346079, 33.477093, 22.271288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877642, 32.800415, 22.576544>,  <29.661461, 33.339920, 22.221472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877642, 32.800415, 22.576544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.157650, 33.078445, 22.642075>,  <30.325655, 33.245262, 22.681393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.157650, 33.078445, 22.642075>,  <29.877642, 32.800415, 22.576544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157650, 33.078445, 22.642075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022696, -0.250947, 0.967735,
		0.713763, -0.673715, -0.191444,
		0.700020, 0.695077, 0.163826,
		30.367657, 33.286968, 22.691223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247816, 32.519897, 23.090549>,  <29.877642, 32.800415, 22.576544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247816, 32.519897, 23.090549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.339369, 32.907166, 23.131048>,  <30.394300, 33.139526, 23.155348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.339369, 32.907166, 23.131048>,  <30.247816, 32.519897, 23.090549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339369, 32.907166, 23.131048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145333, -0.136828, 0.979876,
		0.962544, -0.209561, -0.172025,
		0.228882, 0.968175, 0.101246,
		30.408033, 33.197617, 23.161423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.627033, 32.031521, 26.893797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.245594, 32.145695, 26.855469>,  <35.016731, 32.214199, 26.832472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.245594, 32.145695, 26.855469>,  <35.627033, 32.031521, 26.893797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245594, 32.145695, 26.855469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153370, -0.186623, 0.970386,
		0.259097, 0.940053, 0.221740,
		-0.953596, 0.285433, -0.095823,
		34.959515, 32.231323, 26.826721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472893, 32.444305, 27.459980>,  <35.627033, 32.031521, 26.893797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472893, 32.444305, 27.459980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105034, 32.330997, 27.351166>,  <34.884319, 32.263012, 27.285877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105034, 32.330997, 27.351166>,  <35.472893, 32.444305, 27.459980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105034, 32.330997, 27.351166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194655, -0.272846, 0.942159,
		-0.341105, 0.919411, 0.195784,
		-0.919650, -0.283265, -0.272037,
		34.829140, 32.246017, 27.269554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066639, 32.792702, 27.857624>,  <35.472893, 32.444305, 27.459980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066639, 32.792702, 27.857624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.818108, 32.510735, 27.720774>,  <34.668991, 32.341553, 27.638664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.818108, 32.510735, 27.720774>,  <35.066639, 32.792702, 27.857624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818108, 32.510735, 27.720774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300175, -0.189183, 0.934936,
		-0.723776, 0.683595, -0.094055,
		-0.621324, -0.704917, -0.342124,
		34.631710, 32.299259, 27.618137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443119, 32.955921, 28.055264>,  <35.066639, 32.792702, 27.857624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443119, 32.955921, 28.055264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.460072, 32.558750, 28.010918>,  <34.470245, 32.320446, 27.984310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.460072, 32.558750, 28.010918>,  <34.443119, 32.955921, 28.055264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460072, 32.558750, 28.010918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264222, -0.118155, 0.957197,
		-0.963530, -0.011278, -0.267362,
		0.042386, -0.992931, -0.110866,
		34.472786, 32.260872, 27.977657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892273, 32.803062, 28.426102>,  <34.443119, 32.955921, 28.055264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892273, 32.803062, 28.426102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.117207, 32.473698, 28.395702>,  <34.252167, 32.276077, 28.377462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.117207, 32.473698, 28.395702>,  <33.892273, 32.803062, 28.426102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117207, 32.473698, 28.395702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001236, -0.091070, 0.995843,
		-0.826911, -0.560088, -0.050194,
		0.562331, -0.823412, -0.075999,
		34.285908, 32.226673, 28.372902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616459, 32.240002, 28.814043>,  <33.892273, 32.803062, 28.426102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616459, 32.240002, 28.814043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.995098, 32.119785, 28.767336>,  <34.222282, 32.047657, 28.739311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.995098, 32.119785, 28.767336>,  <33.616459, 32.240002, 28.814043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995098, 32.119785, 28.767336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066439, -0.172571, 0.982754,
		-0.315510, -0.938026, -0.143387,
		0.946593, -0.300543, -0.116769,
		34.279076, 32.029621, 28.732306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577530, 31.616486, 29.075075>,  <33.616459, 32.240002, 28.814043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577530, 31.616486, 29.075075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.961159, 31.729284, 29.064817>,  <34.191338, 31.796963, 29.058662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.961159, 31.729284, 29.064817>,  <33.577530, 31.616486, 29.075075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961159, 31.729284, 29.064817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145650, -0.413630, 0.898719,
		0.242829, -0.865672, -0.437774,
		0.959072, 0.281997, -0.025643,
		34.248882, 31.813883, 29.057125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906445, 31.336479, 29.625109>,  <33.577530, 31.616486, 29.075075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906445, 31.336479, 29.625109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205090, 31.593645, 29.556713>,  <34.384277, 31.747944, 29.515675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205090, 31.593645, 29.556713>,  <33.906445, 31.336479, 29.625109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205090, 31.593645, 29.556713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188437, 0.042126, 0.981181,
		0.638019, -0.764779, -0.089697,
		0.746608, 0.642914, -0.170990,
		34.429073, 31.786520, 29.505417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203346, 31.139978, 30.103046>,  <33.906445, 31.336479, 29.625109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203346, 31.139978, 30.103046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356792, 31.504580, 30.043709>,  <34.448860, 31.723339, 30.008106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356792, 31.504580, 30.043709>,  <34.203346, 31.139978, 30.103046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356792, 31.504580, 30.043709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124691, 0.108039, 0.986296,
		0.915037, -0.396853, -0.072211,
		0.383613, 0.911502, -0.148344,
		34.471878, 31.778030, 29.999207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859100, 31.124840, 30.478128>,  <34.203346, 31.139978, 30.103046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859100, 31.124840, 30.478128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.768639, 31.513277, 30.447577>,  <34.714363, 31.746340, 30.429245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.768639, 31.513277, 30.447577>,  <34.859100, 31.124840, 30.478128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768639, 31.513277, 30.447577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375192, 0.159198, 0.913174,
		0.898936, 0.177859, -0.400349,
		-0.226151, 0.971093, -0.076378,
		34.700794, 31.804605, 30.424664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476204, 31.467045, 30.617619>,  <34.859100, 31.124840, 30.478128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476204, 31.467045, 30.617619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.199081, 31.747917, 30.683298>,  <35.032806, 31.916441, 30.722706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.199081, 31.747917, 30.683298>,  <35.476204, 31.467045, 30.617619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199081, 31.747917, 30.683298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416818, 0.204123, 0.885774,
		0.588455, 0.682113, -0.434099,
		-0.692808, 0.702179, 0.164200,
		34.991238, 31.958570, 30.732557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813560, 31.993162, 30.906511>,  <35.476204, 31.467045, 30.617619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813560, 31.993162, 30.906511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434303, 32.032333, 31.027464>,  <35.206749, 32.055836, 31.100035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434303, 32.032333, 31.027464>,  <35.813560, 31.993162, 30.906511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434303, 32.032333, 31.027464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317617, 0.256037, 0.912998,
		0.011986, 0.961694, -0.273863,
		-0.948143, 0.097927, 0.302382,
		35.149860, 32.061710, 31.118179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756573, 32.613487, 31.333982>,  <35.813560, 31.993162, 30.906511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756573, 32.613487, 31.333982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.460430, 32.365643, 31.438250>,  <35.282745, 32.216934, 31.500809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.460430, 32.365643, 31.438250>,  <35.756573, 32.613487, 31.333982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460430, 32.365643, 31.438250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277073, 0.072017, 0.958146,
		-0.612451, 0.781598, 0.118359,
		-0.740361, -0.619611, 0.260667,
		35.238323, 32.179760, 31.516449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863640, 33.199921, 31.798649>,  <35.756573, 32.613487, 31.333982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863640, 33.199921, 31.798649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.170948, 33.066574, 31.580061>,  <36.355331, 32.986565, 31.448908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.170948, 33.066574, 31.580061>,  <35.863640, 33.199921, 31.798649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170948, 33.066574, 31.580061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100818, 0.906049, -0.410988,
		0.632141, 0.260654, 0.729697,
		0.768267, -0.333369, -0.546472,
		36.401428, 32.966564, 31.416119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158195, 33.702980, 31.328060>,  <35.863640, 33.199921, 31.798649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158195, 33.702980, 31.328060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539959, 33.698143, 31.447367>,  <36.769016, 33.695240, 31.518951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539959, 33.698143, 31.447367>,  <36.158195, 33.702980, 31.328060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539959, 33.698143, 31.447367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294349, -0.128142, -0.947068,
		0.049673, 0.991682, -0.118740,
		0.954406, -0.012093, 0.298266,
		36.826283, 33.694515, 31.536846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519806, 34.213676, 30.950977>,  <36.158195, 33.702980, 31.328060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519806, 34.213676, 30.950977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784805, 33.940453, 31.073952>,  <36.943806, 33.776516, 31.147736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784805, 33.940453, 31.073952>,  <36.519806, 34.213676, 30.950977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784805, 33.940453, 31.073952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306012, -0.127813, -0.943409,
		0.683701, 0.719090, 0.124349,
		0.662503, -0.683062, 0.307436,
		36.983555, 33.735535, 31.166183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214596, 34.453770, 30.772953>,  <36.519806, 34.213676, 30.950977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214596, 34.453770, 30.772953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.232979, 34.054237, 30.767048>,  <37.244011, 33.814518, 30.763506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.232979, 34.054237, 30.767048>,  <37.214596, 34.453770, 30.772953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232979, 34.054237, 30.767048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249293, 0.025778, -0.968085,
		0.967337, 0.040814, 0.250187,
		0.045961, -0.998834, -0.014762,
		37.246769, 33.754585, 30.762619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801865, 34.413605, 30.427111>,  <37.214596, 34.453770, 30.772953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801865, 34.413605, 30.427111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659470, 34.040287, 30.408243>,  <37.574032, 33.816296, 30.396923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659470, 34.040287, 30.408243>,  <37.801865, 34.413605, 30.427111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659470, 34.040287, 30.408243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266856, -0.053158, -0.962269,
		0.895577, -0.355147, 0.267980,
		-0.355992, -0.933298, -0.047166,
		37.552673, 33.760296, 30.394093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221615, 34.046051, 29.965494>,  <37.801865, 34.413605, 30.427111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221615, 34.046051, 29.965494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899269, 33.809296, 29.971949>,  <37.705864, 33.667244, 29.975821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899269, 33.809296, 29.971949>,  <38.221615, 34.046051, 29.965494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899269, 33.809296, 29.971949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062610, -0.112281, -0.991702,
		0.588787, -0.798163, 0.127541,
		-0.805860, -0.591886, 0.016137,
		37.657513, 33.631729, 29.976789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352543, 33.565826, 29.500406>,  <38.221615, 34.046051, 29.965494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352543, 33.565826, 29.500406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953751, 33.537724, 29.513689>,  <37.714478, 33.520863, 29.521658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953751, 33.537724, 29.513689>,  <38.352543, 33.565826, 29.500406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953751, 33.537724, 29.513689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006991, -0.344489, -0.938765,
		0.077392, -0.936158, 0.342956,
		-0.996976, -0.070255, 0.033205,
		37.654659, 33.516647, 29.523651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185448, 32.901596, 29.126543>,  <38.352543, 33.565826, 29.500406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185448, 32.901596, 29.126543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836086, 33.095104, 29.148939>,  <37.626469, 33.211208, 29.162376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836086, 33.095104, 29.148939>,  <38.185448, 32.901596, 29.126543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836086, 33.095104, 29.148939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194880, -0.241826, -0.950548,
		-0.446307, -0.841123, 0.305488,
		-0.873402, 0.483770, 0.055990,
		37.574066, 33.240234, 29.165735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742775, 32.462330, 28.666985>,  <38.185448, 32.901596, 29.126543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742775, 32.462330, 28.666985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556404, 32.811443, 28.725159>,  <37.444580, 33.020912, 28.760063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556404, 32.811443, 28.725159>,  <37.742775, 32.462330, 28.666985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556404, 32.811443, 28.725159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429339, -0.079284, -0.899657,
		-0.773679, -0.481618, 0.411663,
		-0.465928, 0.872788, 0.145437,
		37.416626, 33.073280, 28.768789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007706, 32.295181, 28.579233>,  <37.742775, 32.462330, 28.666985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007706, 32.295181, 28.579233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083027, 32.682732, 28.514967>,  <37.128220, 32.915264, 28.476408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083027, 32.682732, 28.514967>,  <37.007706, 32.295181, 28.579233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083027, 32.682732, 28.514967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407304, -0.071817, -0.910465,
		-0.893669, 0.236886, 0.381105,
		0.188307, 0.968879, -0.160666,
		37.139519, 32.973396, 28.466766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374004, 32.602455, 28.223036>,  <37.007706, 32.295181, 28.579233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374004, 32.602455, 28.223036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.672100, 32.849503, 28.122503>,  <36.850956, 32.997730, 28.062183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.672100, 32.849503, 28.122503>,  <36.374004, 32.602455, 28.223036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672100, 32.849503, 28.122503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258165, -0.080268, -0.962761,
		-0.614791, 0.782372, 0.099629,
		0.745240, 0.617617, -0.251329,
		36.895672, 33.034786, 28.047104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096947, 32.836720, 27.583282>,  <36.374004, 32.602455, 28.223036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096947, 32.836720, 27.583282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470387, 32.979923, 27.577305>,  <36.694450, 33.065845, 27.573719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470387, 32.979923, 27.577305>,  <36.096947, 32.836720, 27.583282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470387, 32.979923, 27.577305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013598, -0.006275, -0.999888,
		-0.358064, 0.933697, -0.000990,
		0.933598, 0.358010, -0.014944,
		36.750465, 33.087326, 27.572823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060791, 33.440372, 27.218487>,  <36.096947, 32.836720, 27.583282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060791, 33.440372, 27.218487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443722, 33.328762, 27.188354>,  <36.673481, 33.261795, 27.170275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443722, 33.328762, 27.188354>,  <36.060791, 33.440372, 27.218487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443722, 33.328762, 27.188354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068302, 0.034841, -0.997056,
		0.280831, 0.959651, 0.014296,
		0.957324, -0.279028, -0.075331,
		36.730919, 33.245052, 27.165756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278759, 33.831059, 26.757072>,  <36.060791, 33.440372, 27.218487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278759, 33.831059, 26.757072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.522774, 33.514111, 26.757429>,  <36.669182, 33.323940, 26.757643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.522774, 33.514111, 26.757429>,  <36.278759, 33.831059, 26.757072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522774, 33.514111, 26.757429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102855, 0.078068, -0.991628,
		0.785668, 0.605023, 0.129124,
		0.610038, -0.792372, 0.000894,
		36.705784, 33.276398, 26.757698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761650, 34.045551, 26.390192>,  <36.278759, 33.831059, 26.757072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761650, 34.045551, 26.390192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.765900, 33.645977, 26.372231>,  <36.768448, 33.406231, 26.361454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.765900, 33.645977, 26.372231>,  <36.761650, 34.045551, 26.390192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765900, 33.645977, 26.372231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245235, 0.046140, -0.968365,
		0.969405, -0.000723, 0.245464,
		0.010625, -0.998935, -0.044905,
		36.769089, 33.346298, 26.358759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226017, 34.722687, 26.414131>,  <36.761650, 34.045551, 26.390192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226017, 34.722687, 26.414131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066254, 35.067341, 26.288874>,  <36.970394, 35.274132, 26.213718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066254, 35.067341, 26.288874>,  <37.226017, 34.722687, 26.414131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066254, 35.067341, 26.288874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083772, 0.305843, 0.948389,
		0.912936, 0.405030, -0.049976,
		-0.399411, 0.861633, -0.313146,
		36.946430, 35.325832, 26.194929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454029, 35.162075, 26.872513>,  <37.226017, 34.722687, 26.414131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454029, 35.162075, 26.872513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.146309, 35.362595, 26.714083>,  <36.961678, 35.482906, 26.619024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.146309, 35.362595, 26.714083>,  <37.454029, 35.162075, 26.872513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146309, 35.362595, 26.714083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156483, 0.453215, 0.877559,
		0.619431, 0.737083, -0.270211,
		-0.769298, 0.501303, -0.396076,
		36.915520, 35.512985, 26.595261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509171, 35.829613, 27.198433>,  <37.454029, 35.162075, 26.872513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509171, 35.829613, 27.198433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.143650, 35.806732, 27.037590>,  <36.924335, 35.793003, 26.941084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.143650, 35.806732, 27.037590>,  <37.509171, 35.829613, 27.198433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143650, 35.806732, 27.037590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395472, 0.350872, 0.848817,
		0.092537, 0.934675, -0.343249,
		-0.913805, -0.057199, -0.402106,
		36.869507, 35.789574, 26.916958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237423, 36.460899, 27.278402>,  <37.509171, 35.829613, 27.198433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237423, 36.460899, 27.278402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.954109, 36.180401, 27.245955>,  <36.784119, 36.012100, 27.226486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.954109, 36.180401, 27.245955>,  <37.237423, 36.460899, 27.278402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954109, 36.180401, 27.245955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252709, 0.144580, 0.956679,
		-0.659140, 0.698104, -0.279615,
		-0.708288, -0.701247, -0.081118,
		36.741623, 35.970028, 27.221619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675640, 36.755680, 27.640984>,  <37.237423, 36.460899, 27.278402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675640, 36.755680, 27.640984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.582245, 36.366932, 27.628647>,  <36.526207, 36.133682, 27.621244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.582245, 36.366932, 27.628647>,  <36.675640, 36.755680, 27.640984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582245, 36.366932, 27.628647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379815, 0.061958, 0.922985,
		-0.895111, 0.227223, -0.383597,
		-0.233490, -0.971870, -0.030844,
		36.512199, 36.075371, 27.619394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897598, 36.676521, 27.840475>,  <36.675640, 36.755680, 27.640984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897598, 36.676521, 27.840475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.030388, 36.302368, 27.889215>,  <36.110062, 36.077877, 27.918459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.030388, 36.302368, 27.889215>,  <35.897598, 36.676521, 27.840475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030388, 36.302368, 27.889215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357601, -0.005264, 0.933860,
		-0.872877, -0.353591, -0.336243,
		0.331974, -0.935386, 0.121850,
		36.129978, 36.021751, 27.925770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322655, 36.313919, 28.150541>,  <35.897598, 36.676521, 27.840475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322655, 36.313919, 28.150541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.655155, 36.120636, 28.260479>,  <35.854656, 36.004665, 28.326443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.655155, 36.120636, 28.260479>,  <35.322655, 36.313919, 28.150541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655155, 36.120636, 28.260479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402594, -0.182343, 0.897033,
		-0.383334, -0.856308, -0.346108,
		0.831248, -0.483205, 0.274846,
		35.904530, 35.975674, 28.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036503, 35.706924, 28.563566>,  <35.322655, 36.313919, 28.150541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036503, 35.706924, 28.563566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.428135, 35.746178, 28.634863>,  <35.663113, 35.769730, 28.677641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.428135, 35.746178, 28.634863>,  <35.036503, 35.706924, 28.563566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428135, 35.746178, 28.634863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156798, -0.194380, 0.968313,
		0.129676, -0.976005, -0.174926,
		0.979080, 0.098139, 0.178242,
		35.721859, 35.775620, 28.688335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206146, 35.127995, 29.037722>,  <35.036503, 35.706924, 28.563566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206146, 35.127995, 29.037722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.507523, 35.390125, 29.059139>,  <35.688351, 35.547405, 29.071989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.507523, 35.390125, 29.059139>,  <35.206146, 35.127995, 29.037722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507523, 35.390125, 29.059139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145005, 0.086183, 0.985670,
		0.641325, -0.750410, 0.159960,
		0.753443, 0.655330, 0.053542,
		35.733555, 35.586723, 29.075201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804073, 34.742756, 29.305618>,  <35.206146, 35.127995, 29.037722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804073, 34.742756, 29.305618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897312, 35.122635, 29.389278>,  <35.953255, 35.350563, 29.439474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897312, 35.122635, 29.389278>,  <35.804073, 34.742756, 29.305618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897312, 35.122635, 29.389278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064940, -0.229796, 0.971070,
		0.970282, -0.212775, -0.115239,
		0.233101, 0.949695, 0.209149,
		35.967243, 35.407543, 29.452023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175919, 34.759697, 29.993809>,  <35.804073, 34.742756, 29.305618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175919, 34.759697, 29.993809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072720, 35.144764, 29.961065>,  <36.010799, 35.375805, 29.941420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072720, 35.144764, 29.961065>,  <36.175919, 34.759697, 29.993809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072720, 35.144764, 29.961065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123604, 0.051143, 0.991013,
		0.958205, 0.265800, 0.105795,
		-0.258001, 0.962671, -0.081859,
		35.995319, 35.433563, 29.936508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510872, 35.144691, 30.048092>,  <36.175919, 34.759697, 29.993809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510872, 35.144691, 30.048092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.426041, 34.862854, 30.318964>,  <35.375141, 34.693752, 30.481487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.426041, 34.862854, 30.318964>,  <35.510872, 35.144691, 30.048092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426041, 34.862854, 30.318964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679764, -0.391480, -0.620213,
		0.702099, -0.591859, -0.395930,
		-0.212080, -0.704590, 0.677182,
		35.362415, 34.651478, 30.522118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.585129, 36.472473, 22.479502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201878, 36.524307, 22.581642>,  <36.971928, 36.555408, 22.642927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201878, 36.524307, 22.581642>,  <37.585129, 36.472473, 22.479502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201878, 36.524307, 22.581642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230429, -0.180491, 0.956204,
		0.169995, 0.975003, 0.143074,
		-0.958125, 0.129582, 0.255351,
		36.914440, 36.563183, 22.658247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594276, 36.659416, 23.229570>,  <37.585129, 36.472473, 22.479502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594276, 36.659416, 23.229570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199360, 36.597088, 23.217070>,  <36.962410, 36.559692, 23.209568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199360, 36.597088, 23.217070>,  <37.594276, 36.659416, 23.229570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199360, 36.597088, 23.217070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020550, -0.320174, 0.947136,
		-0.157590, 0.934456, 0.319307,
		-0.987291, -0.155821, -0.031253,
		36.903172, 36.550343, 23.207693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267090, 36.903400, 23.897415>,  <37.594276, 36.659416, 23.229570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267090, 36.903400, 23.897415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021572, 36.632545, 23.735058>,  <36.874264, 36.470032, 23.637644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021572, 36.632545, 23.735058>,  <37.267090, 36.903400, 23.897415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021572, 36.632545, 23.735058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153915, -0.401630, 0.902776,
		-0.774319, 0.616589, 0.142296,
		-0.613792, -0.677135, -0.405891,
		36.837433, 36.429405, 23.613291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728298, 36.877762, 24.320175>,  <37.267090, 36.903400, 23.897415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728298, 36.877762, 24.320175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678097, 36.530830, 24.127516>,  <36.647976, 36.322670, 24.011921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678097, 36.530830, 24.127516>,  <36.728298, 36.877762, 24.320175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678097, 36.530830, 24.127516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206084, -0.452104, 0.867832,
		-0.970453, 0.208176, -0.122003,
		-0.125503, -0.867332, -0.481647,
		36.640446, 36.270630, 23.983021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046223, 36.599602, 24.425076>,  <36.728298, 36.877762, 24.320175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046223, 36.599602, 24.425076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289520, 36.288521, 24.361561>,  <36.435497, 36.101871, 24.323452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289520, 36.288521, 24.361561>,  <36.046223, 36.599602, 24.425076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289520, 36.288521, 24.361561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246628, -0.375312, 0.893485,
		-0.754464, -0.504294, -0.420084,
		0.608242, -0.777707, -0.158787,
		36.471992, 36.055210, 24.313925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986454, 36.257744, 24.996578>,  <36.046223, 36.599602, 24.425076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986454, 36.257744, 24.996578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250961, 36.012451, 24.823753>,  <36.409664, 35.865276, 24.720058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250961, 36.012451, 24.823753>,  <35.986454, 36.257744, 24.996578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250961, 36.012451, 24.823753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212801, -0.398958, 0.891935,
		-0.719334, -0.681750, -0.133322,
		0.661267, -0.613228, -0.432062,
		36.449341, 35.828484, 24.694136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860569, 35.653908, 25.392651>,  <35.986454, 36.257744, 24.996578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860569, 35.653908, 25.392651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201683, 35.570328, 25.201197>,  <36.406353, 35.520180, 25.086325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201683, 35.570328, 25.201197>,  <35.860569, 35.653908, 25.392651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201683, 35.570328, 25.201197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373248, -0.397184, 0.838410,
		-0.365294, -0.893635, -0.260723,
		0.852787, -0.208952, -0.478636,
		36.457520, 35.507641, 25.057606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999584, 34.970486, 25.598207>,  <35.860569, 35.653908, 25.392651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999584, 34.970486, 25.598207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326885, 35.180534, 25.504644>,  <36.523266, 35.306564, 25.448507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326885, 35.180534, 25.504644>,  <35.999584, 34.970486, 25.598207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326885, 35.180534, 25.504644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371930, -0.173339, 0.911933,
		0.438330, -0.833187, -0.337144,
		0.818251, 0.525121, -0.233908,
		36.572361, 35.338070, 25.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596344, 34.568001, 25.848137>,  <35.999584, 34.970486, 25.598207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596344, 34.568001, 25.848137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700424, 34.951809, 25.805010>,  <36.762871, 35.182095, 25.779135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700424, 34.951809, 25.805010>,  <36.596344, 34.568001, 25.848137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700424, 34.951809, 25.805010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395010, -0.003891, 0.918669,
		0.881058, -0.281625, -0.380031,
		0.260199, 0.959517, -0.107816,
		36.778484, 35.239662, 25.772665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176975, 34.005539, 25.809217>,  <36.596344, 34.568001, 25.848137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176975, 34.005539, 25.809217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032818, 33.634262, 25.846249>,  <36.946323, 33.411495, 25.868467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032818, 33.634262, 25.846249>,  <37.176975, 34.005539, 25.809217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032818, 33.634262, 25.846249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049370, -0.080128, -0.995561,
		0.931493, -0.363363, -0.016947,
		-0.360393, -0.928196, 0.092578,
		36.924702, 33.355804, 25.874022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621220, 33.526974, 25.404638>,  <37.176975, 34.005539, 25.809217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621220, 33.526974, 25.404638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275635, 33.333954, 25.462217>,  <37.068283, 33.218143, 25.496765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275635, 33.333954, 25.462217>,  <37.621220, 33.526974, 25.404638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275635, 33.333954, 25.462217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071005, -0.166263, -0.983522,
		0.498527, -0.859945, 0.109382,
		-0.863961, -0.482546, 0.143947,
		37.016445, 33.189190, 25.505402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667419, 32.945190, 25.014217>,  <37.621220, 33.526974, 25.404638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667419, 32.945190, 25.014217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274311, 32.996601, 25.067356>,  <37.038448, 33.027447, 25.099239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274311, 32.996601, 25.067356>,  <37.667419, 32.945190, 25.014217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274311, 32.996601, 25.067356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163280, -0.266763, -0.949830,
		-0.086639, -0.955154, 0.283152,
		-0.982768, 0.128525, 0.132845,
		36.979481, 33.035160, 25.107210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371418, 32.381626, 24.728373>,  <37.667419, 32.945190, 25.014217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371418, 32.381626, 24.728373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077412, 32.652050, 24.749157>,  <36.901009, 32.814304, 24.761627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077412, 32.652050, 24.749157>,  <37.371418, 32.381626, 24.728373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077412, 32.652050, 24.749157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055094, 0.016834, -0.998339,
		-0.675809, -0.736657, 0.024874,
		-0.735015, 0.676057, 0.051962,
		36.856907, 32.854866, 24.764746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838703, 32.098576, 24.351551>,  <37.371418, 32.381626, 24.728373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838703, 32.098576, 24.351551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764313, 32.491550, 24.357721>,  <36.719681, 32.727333, 24.361423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764313, 32.491550, 24.357721>,  <36.838703, 32.098576, 24.351551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764313, 32.491550, 24.357721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215209, -0.025412, -0.976237,
		-0.958696, -0.184874, 0.216154,
		-0.185974, 0.982434, 0.015424,
		36.708519, 32.786282, 24.362349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216442, 32.198040, 23.965145>,  <36.838703, 32.098576, 24.351551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216442, 32.198040, 23.965145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370193, 32.567196, 23.955894>,  <36.462444, 32.788689, 23.950344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370193, 32.567196, 23.955894>,  <36.216442, 32.198040, 23.965145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370193, 32.567196, 23.955894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267845, 0.087512, -0.959479,
		-0.883465, 0.375000, 0.280828,
		0.384380, 0.922885, -0.023128,
		36.485508, 32.844063, 23.948956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731369, 32.613705, 23.631224>,  <36.216442, 32.198040, 23.965145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731369, 32.613705, 23.631224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089878, 32.786201, 23.589811>,  <36.304985, 32.889698, 23.564964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089878, 32.786201, 23.589811>,  <35.731369, 32.613705, 23.631224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089878, 32.786201, 23.589811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239657, 0.274524, -0.931236,
		-0.373165, 0.859458, 0.349400,
		0.896277, 0.431241, -0.103532,
		36.358761, 32.915573, 23.558752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527668, 33.149021, 23.290335>,  <35.731369, 32.613705, 23.631224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527668, 33.149021, 23.290335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921505, 33.118202, 23.227551>,  <36.157806, 33.099709, 23.189880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921505, 33.118202, 23.227551>,  <35.527668, 33.149021, 23.290335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921505, 33.118202, 23.227551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149916, 0.089990, -0.984595,
		0.089990, 0.992957, 0.077052,
		0.984595, -0.077052, -0.156958,
		36.216885, 33.095085, 23.180464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717453, 33.665352, 23.024952>,  <35.527668, 33.149021, 23.290335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717453, 33.665352, 23.024952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014496, 33.419968, 22.917471>,  <36.192722, 33.272736, 22.852983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014496, 33.419968, 22.917471>,  <35.717453, 33.665352, 23.024952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014496, 33.419968, 22.917471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069537, 0.328412, -0.941971,
		0.666109, 0.718198, 0.201222,
		0.742605, -0.613463, -0.268700,
		36.237278, 33.235928, 22.836861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989609, 34.060787, 22.561926>,  <35.717453, 33.665352, 23.024952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989609, 34.060787, 22.561926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154102, 33.703392, 22.489744>,  <36.252796, 33.488953, 22.446434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154102, 33.703392, 22.489744>,  <35.989609, 34.060787, 22.561926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154102, 33.703392, 22.489744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034499, 0.213083, -0.976425,
		0.910878, 0.395311, 0.118451,
		0.411231, -0.893490, -0.180455,
		36.277473, 33.435345, 22.435608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542244, 34.112877, 22.113297>,  <35.989609, 34.060787, 22.561926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542244, 34.112877, 22.113297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385033, 33.746925, 22.076380>,  <36.290707, 33.527355, 22.054230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385033, 33.746925, 22.076380>,  <36.542244, 34.112877, 22.113297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385033, 33.746925, 22.076380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060996, 0.126087, -0.990142,
		0.917501, -0.383525, -0.105360,
		-0.393029, -0.914883, -0.092291,
		36.267124, 33.472462, 22.048693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946568, 34.025505, 21.593039>,  <36.542244, 34.112877, 22.113297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946568, 34.025505, 21.593039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681248, 33.726322, 21.602739>,  <36.522057, 33.546810, 21.608561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681248, 33.726322, 21.602739>,  <36.946568, 34.025505, 21.593039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681248, 33.726322, 21.602739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137244, 0.089725, -0.986465,
		0.735661, -0.657651, -0.162168,
		-0.663301, -0.747960, 0.024251,
		36.482258, 33.501934, 21.610014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190521, 33.618919, 21.105364>,  <36.946568, 34.025505, 21.593039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190521, 33.618919, 21.105364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796307, 33.568314, 21.150476>,  <36.559780, 33.537952, 21.177544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796307, 33.568314, 21.150476>,  <37.190521, 33.618919, 21.105364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796307, 33.568314, 21.150476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127163, 0.112045, -0.985533,
		0.112045, -0.985617, -0.126511,
		0.985533, 0.126511, -0.112781,
		36.500648, 33.530361, 21.184311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050865, 33.174072, 20.553719>,  <37.190521, 33.618919, 21.105364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050865, 33.174072, 20.553719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699692, 33.327667, 20.668114>,  <36.488987, 33.419823, 20.736750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699692, 33.327667, 20.668114>,  <37.050865, 33.174072, 20.553719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699692, 33.327667, 20.668114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263050, 0.112243, -0.958231,
		-0.400049, -0.916490, 0.002466,
		-0.877933, 0.383988, 0.285985,
		36.436314, 33.442863, 20.753910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.848982, 36.378307, 21.787590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.241385, 36.395931, 21.863155>,  <29.476826, 36.406506, 21.908495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.241385, 36.395931, 21.863155>,  <28.848982, 36.378307, 21.787590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241385, 36.395931, 21.863155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192578, 0.104259, 0.975727,
		0.023297, -0.993574, 0.110764,
		0.981005, 0.044062, 0.188911,
		29.535686, 36.409149, 21.919828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911076, 36.026821, 22.339331>,  <28.848982, 36.378307, 21.787590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911076, 36.026821, 22.339331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.274382, 36.194176, 22.340210>,  <29.492365, 36.294590, 22.340736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.274382, 36.194176, 22.340210>,  <28.911076, 36.026821, 22.339331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274382, 36.194176, 22.340210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002607, -0.010910, 0.999937,
		0.418385, -0.908203, -0.011000,
		0.908266, 0.418387, 0.002197,
		29.546862, 36.319691, 22.340870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269775, 35.663143, 22.838039>,  <28.911076, 36.026821, 22.339331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269775, 35.663143, 22.838039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.462688, 36.010910, 22.795115>,  <29.578436, 36.219570, 22.769360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.462688, 36.010910, 22.795115>,  <29.269775, 35.663143, 22.838039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462688, 36.010910, 22.795115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336212, -0.070587, 0.939137,
		0.808927, -0.489010, -0.326352,
		0.482284, 0.869417, -0.107311,
		29.607374, 36.271736, 22.762920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964727, 35.473778, 22.981739>,  <29.269775, 35.663143, 22.838039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964727, 35.473778, 22.981739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.922821, 35.867908, 23.035637>,  <29.897678, 36.104385, 23.067976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.922821, 35.867908, 23.035637>,  <29.964727, 35.473778, 22.981739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922821, 35.867908, 23.035637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376796, -0.086061, 0.922290,
		0.920353, 0.147394, -0.362251,
		-0.104764, 0.985327, 0.134744,
		29.891392, 36.163506, 23.076059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667770, 35.744343, 23.271194>,  <29.964727, 35.473778, 22.981739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667770, 35.744343, 23.271194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405407, 36.030163, 23.368525>,  <30.247990, 36.201653, 23.426924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405407, 36.030163, 23.368525>,  <30.667770, 35.744343, 23.271194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405407, 36.030163, 23.368525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333722, -0.014636, 0.942558,
		0.677064, 0.699433, -0.228861,
		-0.655906, 0.714548, 0.243326,
		30.208635, 36.244526, 23.441523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992489, 36.164471, 23.790331>,  <30.667770, 35.744343, 23.271194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992489, 36.164471, 23.790331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.601404, 36.241058, 23.824778>,  <30.366753, 36.287010, 23.845446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.601404, 36.241058, 23.824778>,  <30.992489, 36.164471, 23.790331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601404, 36.241058, 23.824778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089625, 0.009721, 0.995928,
		0.189852, 0.981450, -0.026664,
		-0.977713, 0.191469, 0.086117,
		30.308090, 36.298500, 23.850613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027411, 36.675240, 24.251793>,  <30.992489, 36.164471, 23.790331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027411, 36.675240, 24.251793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.651625, 36.539322, 24.269442>,  <30.426153, 36.457771, 24.280031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.651625, 36.539322, 24.269442>,  <31.027411, 36.675240, 24.251793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651625, 36.539322, 24.269442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090440, -0.121703, 0.988438,
		-0.330493, 0.932593, 0.145067,
		-0.939465, -0.339792, 0.044122,
		30.369785, 36.437386, 24.282679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658520, 37.126884, 24.661945>,  <31.027411, 36.675240, 24.251793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658520, 37.126884, 24.661945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.430672, 36.798325, 24.673512>,  <30.293962, 36.601189, 24.680452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.430672, 36.798325, 24.673512>,  <30.658520, 37.126884, 24.661945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430672, 36.798325, 24.673512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027381, 0.016199, 0.999494,
		-0.821451, 0.570125, 0.013263,
		-0.569621, -0.821398, 0.028917,
		30.259785, 36.551907, 24.682186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205044, 37.240734, 25.282690>,  <30.658520, 37.126884, 24.661945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205044, 37.240734, 25.282690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.176737, 36.850742, 25.198406>,  <30.159752, 36.616745, 25.147837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.176737, 36.850742, 25.198406>,  <30.205044, 37.240734, 25.282690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176737, 36.850742, 25.198406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036786, -0.208543, 0.977321,
		-0.996814, 0.076913, -0.021107,
		-0.070767, -0.974984, -0.210708,
		30.155506, 36.558247, 25.135193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616533, 36.928883, 25.659836>,  <30.205044, 37.240734, 25.282690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616533, 36.928883, 25.659836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.864782, 36.622211, 25.594076>,  <30.013733, 36.438210, 25.554621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.864782, 36.622211, 25.594076>,  <29.616533, 36.928883, 25.659836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864782, 36.622211, 25.594076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113967, -0.295639, 0.948477,
		-0.775782, -0.569911, -0.270856,
		0.620623, -0.766681, -0.164401,
		30.050970, 36.392208, 25.544756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381083, 36.429306, 26.117361>,  <29.616533, 36.928883, 25.659836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381083, 36.429306, 26.117361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743502, 36.299320, 26.008932>,  <29.960953, 36.221329, 25.943874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743502, 36.299320, 26.008932>,  <29.381083, 36.429306, 26.117361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743502, 36.299320, 26.008932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158984, -0.332249, 0.929696,
		-0.392183, -0.885443, -0.249368,
		0.906044, -0.324965, -0.271074,
		30.015316, 36.201832, 25.927610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546345, 35.626575, 26.300468>,  <29.381083, 36.429306, 26.117361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546345, 35.626575, 26.300468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.900404, 35.812061, 26.285070>,  <30.112839, 35.923351, 26.275831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.900404, 35.812061, 26.285070>,  <29.546345, 35.626575, 26.300468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900404, 35.812061, 26.285070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277584, -0.459838, 0.843502,
		0.373443, -0.757310, -0.535744,
		0.885148, 0.463714, -0.038494,
		30.165949, 35.951176, 26.273521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931274, 35.269375, 26.709219>,  <29.546345, 35.626575, 26.300468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931274, 35.269375, 26.709219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.134022, 35.613865, 26.694363>,  <30.255671, 35.820560, 26.685448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.134022, 35.613865, 26.694363>,  <29.931274, 35.269375, 26.709219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134022, 35.613865, 26.694363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467216, -0.238257, 0.851436,
		0.724428, -0.448918, -0.523142,
		0.506867, 0.861224, -0.037142,
		30.286081, 35.872231, 26.683220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494802, 35.117935, 27.076002>,  <29.931274, 35.269375, 26.709219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494802, 35.117935, 27.076002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.542820, 35.515038, 27.077908>,  <30.571630, 35.753300, 27.079050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.542820, 35.515038, 27.077908>,  <30.494802, 35.117935, 27.076002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542820, 35.515038, 27.077908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537764, -0.069058, 0.840262,
		0.834505, -0.098307, -0.542159,
		0.120044, 0.992757, 0.004763,
		30.578833, 35.812866, 27.079336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081533, 34.589203, 27.053066>,  <30.494802, 35.117935, 27.076002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081533, 34.589203, 27.053066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.083303, 34.189217, 27.055935>,  <31.084366, 33.949226, 27.057657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.083303, 34.189217, 27.055935>,  <31.081533, 34.589203, 27.053066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083303, 34.189217, 27.055935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154916, -0.007772, -0.987897,
		0.987918, 0.003259, -0.154945,
		0.004424, -0.999965, 0.007174,
		31.084631, 33.889229, 27.058086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618210, 34.397331, 26.570736>,  <31.081533, 34.589203, 27.053066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618210, 34.397331, 26.570736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.360054, 34.092136, 26.585300>,  <31.205160, 33.909019, 26.594040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.360054, 34.092136, 26.585300>,  <31.618210, 34.397331, 26.570736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360054, 34.092136, 26.585300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203917, 0.126158, -0.970826,
		0.736134, -0.633984, -0.237007,
		-0.645388, -0.762987, 0.036411,
		31.166437, 33.863239, 26.596224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780273, 33.983665, 25.978931>,  <31.618210, 34.397331, 26.570736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780273, 33.983665, 25.978931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411985, 33.860558, 26.074888>,  <31.191011, 33.786694, 26.132463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411985, 33.860558, 26.074888>,  <31.780273, 33.983665, 25.978931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411985, 33.860558, 26.074888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224912, -0.083827, -0.970766,
		0.318883, -0.947761, 0.007960,
		-0.920722, -0.307770, 0.239894,
		31.135769, 33.768227, 26.146856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647522, 33.348141, 25.640368>,  <31.780273, 33.983665, 25.978931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647522, 33.348141, 25.640368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.276999, 33.473206, 25.724459>,  <31.054684, 33.548244, 25.774914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.276999, 33.473206, 25.724459>,  <31.647522, 33.348141, 25.640368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276999, 33.473206, 25.724459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255663, -0.111768, -0.960283,
		-0.276749, -0.943265, 0.183469,
		-0.926308, 0.312664, 0.210226,
		30.999105, 33.567005, 25.787527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229660, 32.759785, 25.324684>,  <31.647522, 33.348141, 25.640368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229660, 32.759785, 25.324684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.022034, 33.096668, 25.383009>,  <30.897457, 33.298798, 25.418003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.022034, 33.096668, 25.383009>,  <31.229660, 32.759785, 25.324684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022034, 33.096668, 25.383009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305581, -0.023538, -0.951875,
		-0.798243, -0.538642, 0.269580,
		-0.519066, 0.842206, 0.145810,
		30.866314, 33.349331, 25.426752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462271, 32.674244, 25.213570>,  <31.229660, 32.759785, 25.324684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462271, 32.674244, 25.213570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.541378, 33.065464, 25.187325>,  <30.588842, 33.300198, 25.171577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.541378, 33.065464, 25.187325>,  <30.462271, 32.674244, 25.213570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541378, 33.065464, 25.187325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319058, 0.000935, -0.947735,
		-0.926870, 0.208368, 0.312240,
		0.197769, 0.978050, -0.065615,
		30.600708, 33.358879, 25.167641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847507, 33.013550, 24.963306>,  <30.462271, 32.674244, 25.213570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847507, 33.013550, 24.963306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.190437, 33.199661, 24.875212>,  <30.396196, 33.311329, 24.822355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.190437, 33.199661, 24.875212>,  <29.847507, 33.013550, 24.963306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190437, 33.199661, 24.875212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222692, -0.050507, -0.973580,
		-0.464111, 0.883721, 0.060313,
		0.857327, 0.465281, -0.220238,
		30.447636, 33.339245, 24.809141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628904, 33.471443, 24.484278>,  <29.847507, 33.013550, 24.963306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628904, 33.471443, 24.484278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025673, 33.517704, 24.463423>,  <30.263733, 33.545460, 24.450911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025673, 33.517704, 24.463423>,  <29.628904, 33.471443, 24.484278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025673, 33.517704, 24.463423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050572, -0.016431, -0.998585,
		-0.116345, 0.993154, -0.010450,
		0.991920, 0.115652, -0.052138,
		30.323250, 33.552399, 24.447781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746706, 34.183453, 24.052034>,  <29.628904, 33.471443, 24.484278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746706, 34.183453, 24.052034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.062328, 33.939587, 24.021835>,  <30.251701, 33.793266, 24.003716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.062328, 33.939587, 24.021835>,  <29.746706, 34.183453, 24.052034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062328, 33.939587, 24.021835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082593, 0.016496, -0.996447,
		0.608742, 0.792489, -0.037338,
		0.789058, -0.609662, -0.075495,
		30.299046, 33.756687, 23.999187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183531, 34.458210, 23.553642>,  <29.746706, 34.183453, 24.052034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183531, 34.458210, 23.553642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.295542, 34.074787, 23.574640>,  <30.362747, 33.844734, 23.587238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.295542, 34.074787, 23.574640>,  <30.183531, 34.458210, 23.553642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295542, 34.074787, 23.574640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051120, -0.039715, -0.997902,
		0.958630, 0.282122, 0.037880,
		0.280026, -0.958556, 0.052494,
		30.379549, 33.787220, 23.590389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839304, 34.420536, 23.235867>,  <30.183531, 34.458210, 23.553642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839304, 34.420536, 23.235867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720266, 34.039261, 23.214437>,  <30.648844, 33.810497, 23.201580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720266, 34.039261, 23.214437>,  <30.839304, 34.420536, 23.235867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720266, 34.039261, 23.214437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239611, -0.020252, -0.970658,
		0.924135, -0.301697, 0.234422,
		-0.297592, -0.953189, -0.053574,
		30.630989, 33.753304, 23.198366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346994, 34.055222, 22.848976>,  <30.839304, 34.420536, 23.235867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346994, 34.055222, 22.848976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.040150, 33.799843, 22.823925>,  <30.856043, 33.646614, 22.808895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.040150, 33.799843, 22.823925>,  <31.346994, 34.055222, 22.848976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040150, 33.799843, 22.823925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154460, -0.089064, -0.983976,
		0.622643, -0.764492, 0.166937,
		-0.767110, -0.638451, -0.062628,
		30.810017, 33.608307, 22.805136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623995, 33.658192, 22.459625>,  <31.346994, 34.055222, 22.848976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623995, 33.658192, 22.459625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.235521, 33.590019, 22.392982>,  <31.002438, 33.549114, 22.352997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.235521, 33.590019, 22.392982>,  <31.623995, 33.658192, 22.459625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235521, 33.590019, 22.392982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178778, -0.058630, -0.982141,
		0.157621, -0.983623, 0.087410,
		-0.971182, -0.170433, -0.166609,
		30.944166, 33.538891, 22.343000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607115, 33.237335, 21.901035>,  <31.623995, 33.658192, 22.459625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607115, 33.237335, 21.901035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.236097, 33.386799, 21.903446>,  <31.013487, 33.476479, 21.904894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.236097, 33.386799, 21.903446>,  <31.607115, 33.237335, 21.901035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236097, 33.386799, 21.903446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029809, 0.090055, -0.995491,
		-0.372521, -0.923183, -0.094669,
		-0.927545, 0.373663, 0.006028,
		30.957834, 33.498898, 21.905254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866625, 32.413704, 21.701750>,  <31.607115, 33.237335, 21.901035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866625, 32.413704, 21.701750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.242298, 32.495285, 21.591232>,  <32.467701, 32.544235, 21.524921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.242298, 32.495285, 21.591232>,  <31.866625, 32.413704, 21.701750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242298, 32.495285, 21.591232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279503, 0.013494, 0.960050,
		0.199538, -0.978887, -0.044333,
		0.939182, 0.203957, -0.276294,
		32.524052, 32.556473, 21.508345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219337, 31.963907, 22.062181>,  <31.866625, 32.413704, 21.701750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219337, 31.963907, 22.062181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.494637, 32.236736, 21.963318>,  <32.659817, 32.400433, 21.903999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.494637, 32.236736, 21.963318>,  <32.219337, 31.963907, 22.062181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494637, 32.236736, 21.963318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331811, 0.007008, 0.943320,
		0.645146, -0.731249, -0.221496,
		0.688250, 0.682074, -0.247158,
		32.701111, 32.441357, 21.889170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957214, 31.690533, 22.283567>,  <32.219337, 31.963907, 22.062181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957214, 31.690533, 22.283567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013733, 32.082165, 22.225002>,  <33.047646, 32.317142, 22.189863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013733, 32.082165, 22.225002>,  <32.957214, 31.690533, 22.283567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013733, 32.082165, 22.225002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550749, 0.045150, 0.833449,
		0.822624, -0.198402, -0.532848,
		0.141300, 0.979080, -0.146411,
		33.056122, 32.375889, 22.181080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711964, 31.807249, 22.354788>,  <32.957214, 31.690533, 22.283567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711964, 31.807249, 22.354788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.520180, 32.148304, 22.437860>,  <33.405109, 32.352936, 22.487705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.520180, 32.148304, 22.437860>,  <33.711964, 31.807249, 22.354788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520180, 32.148304, 22.437860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357008, -0.026681, 0.933720,
		0.801666, 0.521822, -0.291606,
		-0.479455, 0.852637, 0.207684,
		33.376343, 32.404095, 22.500166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200512, 32.161804, 22.760460>,  <33.711964, 31.807249, 22.354788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200512, 32.161804, 22.760460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.887997, 32.398369, 22.840290>,  <33.700489, 32.540306, 22.888187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.887997, 32.398369, 22.840290>,  <34.200512, 32.161804, 22.760460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887997, 32.398369, 22.840290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324939, 0.112376, 0.939035,
		0.532927, 0.798502, -0.279970,
		-0.781284, 0.591410, 0.199576,
		33.653610, 32.575790, 22.900164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469788, 32.813580, 23.158615>,  <34.200512, 32.161804, 22.760460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469788, 32.813580, 23.158615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085220, 32.755875, 23.252302>,  <33.854481, 32.721252, 23.308514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085220, 32.755875, 23.252302>,  <34.469788, 32.813580, 23.158615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085220, 32.755875, 23.252302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193521, 0.250396, 0.948605,
		-0.195497, 0.957335, -0.212817,
		-0.961421, -0.144265, 0.234216,
		33.796795, 32.712597, 23.322567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341705, 33.328213, 23.646189>,  <34.469788, 32.813580, 23.158615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341705, 33.328213, 23.646189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044292, 33.067753, 23.707067>,  <33.865845, 32.911476, 23.743595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044292, 33.067753, 23.707067>,  <34.341705, 33.328213, 23.646189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044292, 33.067753, 23.707067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077557, 0.142091, 0.986811,
		-0.664191, 0.745526, -0.055147,
		-0.743529, -0.651153, 0.152197,
		33.821232, 32.872406, 23.752726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980701, 33.624130, 24.177940>,  <34.341705, 33.328213, 23.646189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980701, 33.624130, 24.177940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870533, 33.239601, 24.177309>,  <33.804432, 33.008884, 24.176931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870533, 33.239601, 24.177309>,  <33.980701, 33.624130, 24.177940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870533, 33.239601, 24.177309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159684, -0.047368, 0.986031,
		-0.947967, 0.271326, 0.166554,
		-0.275425, -0.961321, -0.001577,
		33.787907, 32.951206, 24.176836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488632, 33.551617, 24.738005>,  <33.980701, 33.624130, 24.177940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488632, 33.551617, 24.738005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612064, 33.180744, 24.653046>,  <33.686123, 32.958221, 24.602070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612064, 33.180744, 24.653046>,  <33.488632, 33.551617, 24.738005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612064, 33.180744, 24.653046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030170, -0.213642, 0.976446,
		-0.950720, -0.307718, -0.037952,
		0.308578, -0.927182, -0.212398,
		33.704639, 32.902588, 24.589327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239155, 33.172569, 25.307116>,  <33.488632, 33.551617, 24.738005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239155, 33.172569, 25.307116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507900, 32.924217, 25.145569>,  <33.669147, 32.775208, 25.048641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507900, 32.924217, 25.145569>,  <33.239155, 33.172569, 25.307116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507900, 32.924217, 25.145569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171755, -0.399803, 0.900365,
		-0.720486, -0.674288, -0.161974,
		0.671863, -0.620881, -0.403865,
		33.709457, 32.737953, 25.024410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101463, 32.354950, 25.540741>,  <33.239155, 33.172569, 25.307116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101463, 32.354950, 25.540741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480442, 32.414059, 25.427240>,  <33.707829, 32.449524, 25.359140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480442, 32.414059, 25.427240>,  <33.101463, 32.354950, 25.540741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480442, 32.414059, 25.427240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319630, -0.399018, 0.859431,
		0.013780, -0.904957, -0.425280,
		0.947442, 0.147776, -0.283753,
		33.764675, 32.458393, 25.342113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426895, 31.765520, 25.761070>,  <33.101463, 32.354950, 25.540741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426895, 31.765520, 25.761070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718288, 32.027409, 25.680426>,  <33.893124, 32.184540, 25.632038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718288, 32.027409, 25.680426>,  <33.426895, 31.765520, 25.761070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718288, 32.027409, 25.680426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436097, -0.216239, 0.873533,
		0.528323, -0.724280, -0.443049,
		0.728487, 0.654720, -0.201613,
		33.936836, 32.223824, 25.619942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129688, 31.431963, 25.695620>,  <33.426895, 31.765520, 25.761070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129688, 31.431963, 25.695620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221054, 31.807837, 25.797462>,  <34.275871, 32.033360, 25.858568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221054, 31.807837, 25.797462>,  <34.129688, 31.431963, 25.695620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221054, 31.807837, 25.797462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243748, -0.308386, 0.919503,
		0.942558, -0.147965, -0.299485,
		0.228411, 0.939683, 0.254605,
		34.289577, 32.089741, 25.873844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830509, 31.475597, 25.976564>,  <34.129688, 31.431963, 25.695620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830509, 31.475597, 25.976564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609325, 31.772686, 26.127611>,  <34.476616, 31.950939, 26.218239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609325, 31.772686, 26.127611>,  <34.830509, 31.475597, 25.976564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609325, 31.772686, 26.127611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349526, -0.204629, 0.914308,
		0.756349, 0.637565, -0.146449,
		-0.552963, 0.742723, 0.377617,
		34.443436, 31.995502, 26.240896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.573685, 32.815964, 20.017475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387085, 33.127831, 20.184563>,  <36.275124, 33.314953, 20.284815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387085, 33.127831, 20.184563>,  <36.573685, 32.815964, 20.017475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387085, 33.127831, 20.184563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327280, 0.286592, -0.900418,
		-0.821746, -0.556756, 0.121476,
		-0.466499, 0.779672, 0.417721,
		36.247135, 33.361732, 20.309879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851051, 32.720783, 19.918823>,  <36.573685, 32.815964, 20.017475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851051, 32.720783, 19.918823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901310, 33.115925, 19.955381>,  <35.931465, 33.353008, 19.977316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901310, 33.115925, 19.955381>,  <35.851051, 32.720783, 19.918823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901310, 33.115925, 19.955381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235362, 0.119180, -0.964573,
		-0.963751, 0.099688, 0.247479,
		0.125651, 0.987856, 0.091397,
		35.939007, 33.412281, 19.982801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355606, 32.937500, 19.550314>,  <35.851051, 32.720783, 19.918823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355606, 32.937500, 19.550314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595284, 33.256145, 19.582268>,  <35.739090, 33.447330, 19.601440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595284, 33.256145, 19.582268>,  <35.355606, 32.937500, 19.550314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595284, 33.256145, 19.582268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076275, 0.156125, -0.984788,
		-0.796964, 0.583984, 0.154310,
		0.599192, 0.796610, 0.079883,
		35.775040, 33.495129, 19.606232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076729, 33.529434, 19.195139>,  <35.355606, 32.937500, 19.550314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076729, 33.529434, 19.195139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453098, 33.659771, 19.231972>,  <35.678921, 33.737972, 19.254072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453098, 33.659771, 19.231972>,  <35.076729, 33.529434, 19.195139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453098, 33.659771, 19.231972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014575, 0.232718, -0.972435,
		-0.338292, 0.916334, 0.214221,
		0.940928, 0.325845, 0.092082,
		35.735378, 33.757523, 19.259596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066429, 34.282036, 19.078106>,  <35.076729, 33.529434, 19.195139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066429, 34.282036, 19.078106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430737, 34.133705, 19.005463>,  <35.649323, 34.044704, 18.961876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430737, 34.133705, 19.005463>,  <35.066429, 34.282036, 19.078106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430737, 34.133705, 19.005463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125401, 0.170640, -0.977321,
		0.393409, 0.912889, 0.108912,
		0.910771, -0.370830, -0.181609,
		35.703968, 34.022457, 18.950979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334194, 34.690247, 18.560556>,  <35.066429, 34.282036, 19.078106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334194, 34.690247, 18.560556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574696, 34.373814, 18.515514>,  <35.718994, 34.183952, 18.488489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574696, 34.373814, 18.515514>,  <35.334194, 34.690247, 18.560556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574696, 34.373814, 18.515514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069629, 0.088519, -0.993638,
		0.796021, 0.605267, -0.001860,
		0.601251, -0.791086, -0.112607,
		35.755070, 34.136486, 18.481731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815960, 34.899067, 18.025364>,  <35.334194, 34.690247, 18.560556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815960, 34.899067, 18.025364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841141, 34.500896, 18.054127>,  <35.856251, 34.261993, 18.071384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841141, 34.500896, 18.054127>,  <35.815960, 34.899067, 18.025364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841141, 34.500896, 18.054127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041180, -0.069396, -0.996739,
		0.997167, 0.065709, 0.036623,
		0.062953, -0.995423, 0.071906,
		35.860027, 34.202271, 18.075699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201626, 34.737286, 17.416782>,  <35.815960, 34.899067, 18.025364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201626, 34.737286, 17.416782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058632, 34.388771, 17.551285>,  <35.972836, 34.179665, 17.631987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058632, 34.388771, 17.551285>,  <36.201626, 34.737286, 17.416782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058632, 34.388771, 17.551285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089645, -0.326372, -0.940981,
		0.929605, -0.366534, 0.038568,
		-0.357489, -0.871283, 0.336255,
		35.951385, 34.127384, 17.652161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560040, 34.179676, 17.099716>,  <36.201626, 34.737286, 17.416782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560040, 34.179676, 17.099716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209991, 34.032848, 17.225840>,  <35.999962, 33.944752, 17.301514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209991, 34.032848, 17.225840>,  <36.560040, 34.179676, 17.099716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209991, 34.032848, 17.225840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167655, -0.381242, -0.909146,
		0.453931, -0.848477, 0.272091,
		-0.875122, -0.367072, 0.315309,
		35.947456, 33.922726, 17.320433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511848, 33.505127, 16.830391>,  <36.560040, 34.179676, 17.099716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511848, 33.505127, 16.830391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132206, 33.616417, 16.889442>,  <35.904423, 33.683189, 16.924873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132206, 33.616417, 16.889442>,  <36.511848, 33.505127, 16.830391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132206, 33.616417, 16.889442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246435, -0.364083, -0.898172,
		-0.196141, -0.888840, 0.414117,
		-0.949104, 0.278221, 0.147630,
		35.847473, 33.699883, 16.933731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079800, 32.932037, 16.552485>,  <36.511848, 33.505127, 16.830391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079800, 32.932037, 16.552485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859745, 33.265934, 16.561872>,  <35.727711, 33.466274, 16.567505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859745, 33.265934, 16.561872>,  <36.079800, 32.932037, 16.552485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859745, 33.265934, 16.561872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278753, -0.157071, -0.947431,
		-0.787177, -0.527759, 0.319098,
		-0.550136, 0.834746, 0.023471,
		35.694706, 33.516357, 16.568914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507896, 32.765476, 16.297382>,  <36.079800, 32.932037, 16.552485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507896, 32.765476, 16.297382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446270, 33.155499, 16.233465>,  <35.409294, 33.389511, 16.195114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446270, 33.155499, 16.233465>,  <35.507896, 32.765476, 16.297382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446270, 33.155499, 16.233465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263274, -0.196389, -0.944520,
		-0.952340, -0.103445, 0.286963,
		-0.154062, 0.975054, -0.159795,
		35.400051, 33.448013, 16.185526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816296, 32.836243, 16.029974>,  <35.507896, 32.765476, 16.297382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816296, 32.836243, 16.029974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013264, 33.169872, 15.930496>,  <35.131443, 33.370049, 15.870810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013264, 33.169872, 15.930496>,  <34.816296, 32.836243, 16.029974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013264, 33.169872, 15.930496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384248, -0.048055, -0.921979,
		-0.780945, 0.549562, 0.296826,
		0.492421, 0.834070, -0.248696,
		35.160992, 33.420094, 15.855887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325493, 32.301815, 15.793443>,  <34.816296, 32.836243, 16.029974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325493, 32.301815, 15.793443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983578, 32.266102, 15.588944>,  <33.778431, 32.244675, 15.466246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983578, 32.266102, 15.588944>,  <34.325493, 32.301815, 15.793443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983578, 32.266102, 15.588944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518887, 0.128093, 0.845191,
		-0.009971, 0.987736, -0.155818,
		-0.854785, -0.089280, -0.511246,
		33.727142, 32.239319, 15.435571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961632, 32.985226, 15.759774>,  <34.325493, 32.301815, 15.793443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961632, 32.985226, 15.759774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.748837, 32.646534, 15.757137>,  <33.621159, 32.443321, 15.755555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.748837, 32.646534, 15.757137>,  <33.961632, 32.985226, 15.759774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748837, 32.646534, 15.757137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338177, 0.205322, 0.918411,
		-0.776288, 0.490816, -0.395572,
		-0.531990, -0.846725, -0.006593,
		33.589241, 32.392517, 15.755159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349899, 33.257835, 16.030075>,  <33.961632, 32.985226, 15.759774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349899, 33.257835, 16.030075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352615, 32.864548, 16.102995>,  <33.354244, 32.628574, 16.146748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352615, 32.864548, 16.102995>,  <33.349899, 33.257835, 16.030075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352615, 32.864548, 16.102995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351975, 0.168288, 0.920756,
		-0.935985, -0.070419, -0.344926,
		0.006792, -0.983220, 0.182301,
		33.354652, 32.569580, 16.157686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693600, 33.166946, 16.245188>,  <33.349899, 33.257835, 16.030075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693600, 33.166946, 16.245188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952492, 32.898186, 16.389212>,  <33.107826, 32.736931, 16.475626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952492, 32.898186, 16.389212>,  <32.693600, 33.166946, 16.245188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952492, 32.898186, 16.389212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409773, 0.091627, 0.907574,
		-0.642791, -0.734952, -0.216022,
		0.647230, -0.671900, 0.360060,
		33.146660, 32.696617, 16.497231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222542, 32.941891, 16.800186>,  <32.693600, 33.166946, 16.245188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222542, 32.941891, 16.800186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577236, 32.763523, 16.848949>,  <32.790051, 32.656502, 16.878208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577236, 32.763523, 16.848949>,  <32.222542, 32.941891, 16.800186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577236, 32.763523, 16.848949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202784, -0.138219, 0.969419,
		-0.415430, -0.884338, -0.212988,
		0.886734, -0.445916, 0.121909,
		32.843258, 32.629749, 16.885523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098846, 32.223087, 17.003328>,  <32.222542, 32.941891, 16.800186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098846, 32.223087, 17.003328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452953, 32.356987, 17.132479>,  <32.665417, 32.437325, 17.209969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452953, 32.356987, 17.132479>,  <32.098846, 32.223087, 17.003328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452953, 32.356987, 17.132479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287574, -0.151627, 0.945680,
		0.365520, -0.930029, -0.037966,
		0.885266, 0.334747, 0.322875,
		32.718533, 32.457413, 17.229342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131233, 31.889509, 17.733963>,  <32.098846, 32.223087, 17.003328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131233, 31.889509, 17.733963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.432632, 32.151505, 17.711212>,  <32.613472, 32.308701, 17.697561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.432632, 32.151505, 17.711212>,  <32.131233, 31.889509, 17.733963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432632, 32.151505, 17.711212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048247, 0.031189, 0.998348,
		0.655679, -0.754997, -0.008100,
		0.753497, 0.654987, -0.056876,
		32.658680, 32.348000, 17.694149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585320, 31.643475, 18.221327>,  <32.131233, 31.889509, 17.733963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585320, 31.643475, 18.221327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666500, 32.032005, 18.171793>,  <32.715206, 32.265125, 18.142073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666500, 32.032005, 18.171793>,  <32.585320, 31.643475, 18.221327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666500, 32.032005, 18.171793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027852, 0.120689, 0.992299,
		0.978793, -0.204834, -0.002560,
		0.202948, 0.971328, -0.123835,
		32.727383, 32.323402, 18.134642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990334, 31.706047, 18.695719>,  <32.585320, 31.643475, 18.221327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990334, 31.706047, 18.695719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858952, 32.079082, 18.635862>,  <32.780121, 32.302906, 18.599949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858952, 32.079082, 18.635862>,  <32.990334, 31.706047, 18.695719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858952, 32.079082, 18.635862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050346, 0.140918, 0.988740,
		0.943177, 0.332290, 0.000667,
		-0.328455, 0.932591, -0.149640,
		32.760414, 32.358860, 18.590971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374779, 32.046825, 19.060852>,  <32.990334, 31.706047, 18.695719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374779, 32.046825, 19.060852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.048359, 32.275303, 19.025524>,  <32.852509, 32.412388, 19.004328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.048359, 32.275303, 19.025524>,  <33.374779, 32.046825, 19.060852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048359, 32.275303, 19.025524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004041, 0.158442, 0.987360,
		0.577966, 0.805379, -0.131605,
		-0.816051, 0.571193, -0.088319,
		32.803543, 32.446659, 18.999029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503052, 32.613319, 19.442144>,  <33.374779, 32.046825, 19.060852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503052, 32.613319, 19.442144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104630, 32.637341, 19.415998>,  <32.865578, 32.651752, 19.400311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104630, 32.637341, 19.415998>,  <33.503052, 32.613319, 19.442144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104630, 32.637341, 19.415998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049133, 0.240302, 0.969454,
		0.073928, 0.968839, -0.236403,
		-0.996053, 0.060055, -0.065367,
		32.805813, 32.655357, 19.396389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242722, 33.320011, 19.657372>,  <33.503052, 32.613319, 19.442144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242722, 33.320011, 19.657372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969315, 33.032780, 19.709774>,  <32.805271, 32.860439, 19.741215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.969315, 33.032780, 19.709774>,  <33.242722, 33.320011, 19.657372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969315, 33.032780, 19.709774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038948, 0.143339, 0.988907,
		-0.728893, 0.681039, -0.070007,
		-0.683519, -0.718081, 0.131004,
		32.764259, 32.817356, 19.749075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863510, 33.582031, 20.136278>,  <33.242722, 33.320011, 19.657372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863510, 33.582031, 20.136278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730297, 33.206608, 20.172520>,  <32.650372, 32.981354, 20.194263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730297, 33.206608, 20.172520>,  <32.863510, 33.582031, 20.136278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730297, 33.206608, 20.172520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046644, 0.112368, 0.992571,
		-0.941763, 0.326328, -0.081200,
		-0.333028, -0.938554, 0.090603,
		32.630390, 32.925041, 20.199701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333912, 33.621792, 20.686247>,  <32.863510, 33.582031, 20.136278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333912, 33.621792, 20.686247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394394, 33.226715, 20.670191>,  <32.430683, 32.989670, 20.660557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394394, 33.226715, 20.670191>,  <32.333912, 33.621792, 20.686247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394394, 33.226715, 20.670191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168159, -0.014314, 0.985656,
		-0.974095, -0.155783, 0.163925,
		0.151202, -0.987688, -0.040140,
		32.439754, 32.930408, 20.658150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862974, 33.254971, 21.209322>,  <32.333912, 33.621792, 20.686247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862974, 33.254971, 21.209322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188591, 33.034218, 21.136915>,  <32.383961, 32.901768, 21.093472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188591, 33.034218, 21.136915>,  <31.862974, 33.254971, 21.209322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188591, 33.034218, 21.136915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081240, -0.200407, 0.976339,
		-0.575098, -0.809485, -0.118305,
		0.814041, -0.551879, -0.181016,
		32.432804, 32.868656, 21.082611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250458, 32.911137, 21.371716>,  <31.862974, 33.254971, 21.209322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250458, 32.911137, 21.371716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996624, 33.211971, 21.442898>,  <30.844324, 33.392471, 21.485607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996624, 33.211971, 21.442898>,  <31.250458, 32.911137, 21.371716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996624, 33.211971, 21.442898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108925, 0.140928, -0.984009,
		-0.765141, -0.643819, -0.007509,
		-0.634583, 0.752088, 0.177958,
		30.806250, 33.437599, 21.496284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799110, 32.808407, 20.776749>,  <31.250458, 32.911137, 21.371716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799110, 32.808407, 20.776749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.738047, 33.161007, 20.955475>,  <30.701408, 33.372566, 21.062712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.738047, 33.161007, 20.955475>,  <30.799110, 32.808407, 20.776749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738047, 33.161007, 20.955475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343275, 0.376669, -0.860397,
		-0.926746, -0.284730, 0.245095,
		-0.152661, 0.881504, 0.446817,
		30.692249, 33.425457, 21.089520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190432, 32.948284, 20.580015>,  <30.799110, 32.808407, 20.776749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190432, 32.948284, 20.580015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388247, 33.285416, 20.664934>,  <30.506935, 33.487694, 20.715885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388247, 33.285416, 20.664934>,  <30.190432, 32.948284, 20.580015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388247, 33.285416, 20.664934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302755, 0.396003, -0.866903,
		-0.814722, 0.364443, 0.451009,
		0.494538, 0.842830, 0.212296,
		30.536608, 33.538265, 20.728622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706547, 33.566170, 20.389151>,  <30.190432, 32.948284, 20.580015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706547, 33.566170, 20.389151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.070749, 33.730721, 20.405867>,  <30.289270, 33.829453, 20.415897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.070749, 33.730721, 20.405867>,  <29.706547, 33.566170, 20.389151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070749, 33.730721, 20.405867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112312, 0.343314, -0.932481,
		-0.397948, 0.844338, 0.358792,
		0.910507, 0.411376, 0.041792,
		30.343901, 33.854134, 20.418404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728426, 34.264858, 20.156034>,  <29.706547, 33.566170, 20.389151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728426, 34.264858, 20.156034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.113008, 34.178417, 20.088032>,  <30.343758, 34.126553, 20.047230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.113008, 34.178417, 20.088032>,  <29.728426, 34.264858, 20.156034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113008, 34.178417, 20.088032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130883, 0.184056, -0.974163,
		0.241805, 0.958866, 0.148679,
		0.961457, -0.216098, -0.170005,
		30.401445, 34.113586, 20.037031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839314, 34.642872, 19.513168>,  <29.728426, 34.264858, 20.156034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839314, 34.642872, 19.513168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.146385, 34.386627, 19.519894>,  <30.330627, 34.232880, 19.523928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.146385, 34.386627, 19.519894>,  <29.839314, 34.642872, 19.513168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146385, 34.386627, 19.519894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038320, -0.072077, -0.996663,
		0.639687, 0.764474, -0.079881,
		0.767680, -0.640613, 0.016812,
		30.376690, 34.194443, 19.524937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253654, 34.867435, 19.025297>,  <29.839314, 34.642872, 19.513168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253654, 34.867435, 19.025297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.341177, 34.481903, 19.086151>,  <30.393690, 34.250584, 19.122663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.341177, 34.481903, 19.086151>,  <30.253654, 34.867435, 19.025297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341177, 34.481903, 19.086151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168027, -0.116369, -0.978890,
		0.961193, 0.239749, 0.136488,
		0.218805, -0.963835, 0.152137,
		30.406818, 34.192753, 19.131792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980709, 35.271484, 19.234972>,  <30.253654, 34.867435, 19.025297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980709, 35.271484, 19.234972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.847792, 35.648735, 19.231237>,  <30.768042, 35.875088, 19.228996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.847792, 35.648735, 19.231237>,  <30.980709, 35.271484, 19.234972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847792, 35.648735, 19.231237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265375, -0.083993, 0.960480,
		0.905073, 0.321639, 0.278193,
		-0.332293, 0.943130, -0.009336,
		30.748104, 35.931675, 19.228437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271881, 35.646706, 19.838940>,  <30.980709, 35.271484, 19.234972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271881, 35.646706, 19.838940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.970055, 35.887081, 19.733488>,  <30.788960, 36.031307, 19.670218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.970055, 35.887081, 19.733488>,  <31.271881, 35.646706, 19.838940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970055, 35.887081, 19.733488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223623, 0.142215, 0.964245,
		0.616947, 0.786539, 0.027074,
		-0.754565, 0.600942, -0.263628,
		30.743685, 36.067364, 19.654400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329897, 36.200958, 20.200268>,  <31.271881, 35.646706, 19.838940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329897, 36.200958, 20.200268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.940071, 36.211578, 20.111259>,  <30.706175, 36.217953, 20.057856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.940071, 36.211578, 20.111259>,  <31.329897, 36.200958, 20.200268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940071, 36.211578, 20.111259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214006, 0.184346, 0.959280,
		0.066493, 0.982503, -0.173975,
		-0.974567, 0.026553, -0.222519,
		30.647701, 36.219543, 20.044504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067959, 36.708065, 20.651236>,  <31.329897, 36.200958, 20.200268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067959, 36.708065, 20.651236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720236, 36.561016, 20.519079>,  <30.511602, 36.472786, 20.439785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720236, 36.561016, 20.519079>,  <31.067959, 36.708065, 20.651236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720236, 36.561016, 20.519079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410412, 0.164359, 0.896966,
		-0.275445, 0.915335, -0.293756,
		-0.869306, -0.367626, -0.330392,
		30.459444, 36.450729, 20.419962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483992, 37.170502, 20.923069>,  <31.067959, 36.708065, 20.651236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483992, 37.170502, 20.923069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.335890, 36.804283, 20.860224>,  <30.247028, 36.584553, 20.822515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.335890, 36.804283, 20.860224>,  <30.483992, 37.170502, 20.923069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335890, 36.804283, 20.860224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385754, -0.002323, 0.922599,
		-0.845047, 0.402204, -0.352316,
		-0.370254, -0.915547, -0.157115,
		30.224813, 36.529617, 20.813089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839556, 37.231976, 21.170835>,  <30.483992, 37.170502, 20.923069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839556, 37.231976, 21.170835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.933332, 36.843128, 21.169046>,  <29.989599, 36.609818, 21.167973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.933332, 36.843128, 21.169046>,  <29.839556, 37.231976, 21.170835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933332, 36.843128, 21.169046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352842, -0.089379, 0.931404,
		-0.905836, -0.216781, -0.363959,
		0.234441, -0.972120, -0.004473,
		30.003664, 36.551491, 21.167704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185902, 36.939964, 21.262079>,  <29.839556, 37.231976, 21.170835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185902, 36.939964, 21.262079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.462130, 36.683147, 21.395283>,  <29.627867, 36.529057, 21.475204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.462130, 36.683147, 21.395283>,  <29.185902, 36.939964, 21.262079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462130, 36.683147, 21.395283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433635, 0.000956, 0.901088,
		-0.578856, -0.766667, -0.277752,
		0.690569, -0.642044, 0.333007,
		29.669300, 36.490536, 21.495186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.105003, 37.275570, 16.383453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.264408, 36.910152, 16.350914>,  <34.360050, 36.690903, 16.331390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.264408, 36.910152, 16.350914>,  <34.105003, 37.275570, 16.383453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264408, 36.910152, 16.350914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003529, -0.087168, 0.996187,
		-0.917155, -0.397282, -0.031514,
		0.398514, -0.913548, -0.081349,
		34.383961, 36.636089, 16.326509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729351, 36.834801, 16.924734>,  <34.105003, 37.275570, 16.383453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729351, 36.834801, 16.924734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094543, 36.693130, 16.843706>,  <34.313660, 36.608128, 16.795090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094543, 36.693130, 16.843706>,  <33.729351, 36.834801, 16.924734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094543, 36.693130, 16.843706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155395, -0.157227, 0.975260,
		-0.377263, -0.921867, -0.088507,
		0.912976, -0.354176, -0.202569,
		34.368435, 36.586880, 16.782936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966263, 36.519852, 17.534170>,  <33.729351, 36.834801, 16.924734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966263, 36.519852, 17.534170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.307690, 36.525169, 17.325844>,  <34.512547, 36.528358, 17.200848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.307690, 36.525169, 17.325844>,  <33.966263, 36.519852, 17.534170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307690, 36.525169, 17.325844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515229, -0.169708, 0.840082,
		-0.077222, -0.985405, -0.151704,
		0.853567, 0.013289, -0.520814,
		34.563759, 36.529156, 17.169600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246635, 35.982906, 17.909262>,  <33.966263, 36.519852, 17.534170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246635, 35.982906, 17.909262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.536217, 36.164005, 17.701065>,  <34.709965, 36.272663, 17.576147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.536217, 36.164005, 17.701065>,  <34.246635, 35.982906, 17.909262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536217, 36.164005, 17.701065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590943, -0.017733, 0.806518,
		0.355918, -0.891463, -0.280385,
		0.723953, 0.452746, -0.520492,
		34.753403, 36.299828, 17.544918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849777, 35.472252, 18.009024>,  <34.246635, 35.982906, 17.909262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849777, 35.472252, 18.009024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949528, 35.854858, 17.948507>,  <35.009377, 36.084423, 17.912197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949528, 35.854858, 17.948507>,  <34.849777, 35.472252, 18.009024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949528, 35.854858, 17.948507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465607, 0.018559, 0.884797,
		0.849131, -0.291087, -0.440733,
		0.249373, 0.956516, -0.151292,
		35.024342, 36.141815, 17.903120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446304, 35.606689, 18.366724>,  <34.849777, 35.472252, 18.009024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446304, 35.606689, 18.366724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.355042, 35.988678, 18.290857>,  <35.300282, 36.217873, 18.245337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.355042, 35.988678, 18.290857>,  <35.446304, 35.606689, 18.366724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355042, 35.988678, 18.290857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242467, 0.244400, 0.938871,
		0.942949, 0.168223, -0.287311,
		-0.228159, 0.954971, -0.189669,
		35.286594, 36.275169, 18.233957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086895, 36.080181, 18.493994>,  <35.446304, 35.606689, 18.366724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086895, 36.080181, 18.493994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.769169, 36.321545, 18.522181>,  <35.578533, 36.466362, 18.539093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.769169, 36.321545, 18.522181>,  <36.086895, 36.080181, 18.493994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769169, 36.321545, 18.522181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299948, 0.288659, 0.909235,
		0.528300, 0.743353, -0.410276,
		-0.794312, 0.603410, 0.070468,
		35.530876, 36.502567, 18.543322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335426, 36.701771, 18.720884>,  <36.086895, 36.080181, 18.493994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335426, 36.701771, 18.720884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.950226, 36.687286, 18.827700>,  <35.719105, 36.678596, 18.891788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.950226, 36.687286, 18.827700>,  <36.335426, 36.701771, 18.720884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950226, 36.687286, 18.827700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251647, 0.233661, 0.939189,
		-0.096401, 0.971644, -0.215905,
		-0.963006, -0.036207, 0.267036,
		35.661324, 36.676426, 18.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163818, 37.296497, 19.049116>,  <36.335426, 36.701771, 18.720884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163818, 37.296497, 19.049116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889660, 37.036572, 19.180548>,  <35.725163, 36.880615, 19.259407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889660, 37.036572, 19.180548>,  <36.163818, 37.296497, 19.049116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889660, 37.036572, 19.180548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205922, 0.259852, 0.943437,
		-0.698443, 0.714293, -0.044291,
		-0.685400, -0.649817, 0.328581,
		35.684040, 36.841625, 19.279121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714729, 37.625595, 19.627768>,  <36.163818, 37.296497, 19.049116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714729, 37.625595, 19.627768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.667404, 37.230427, 19.667780>,  <35.639008, 36.993324, 19.691788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.667404, 37.230427, 19.667780>,  <35.714729, 37.625595, 19.627768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667404, 37.230427, 19.667780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138120, 0.083384, 0.986899,
		-0.983323, 0.130582, 0.126586,
		-0.118316, -0.987925, 0.100029,
		35.631908, 36.934048, 19.697788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255077, 37.586155, 20.181789>,  <35.714729, 37.625595, 19.627768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255077, 37.586155, 20.181789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.431610, 37.229343, 20.142767>,  <35.537529, 37.015259, 20.119354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.431610, 37.229343, 20.142767>,  <35.255077, 37.586155, 20.181789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431610, 37.229343, 20.142767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152818, -0.032412, 0.987723,
		-0.884234, -0.450824, 0.122013,
		0.441334, -0.892024, -0.097554,
		35.564011, 36.961735, 20.113501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030277, 37.255577, 20.655003>,  <35.255077, 37.586155, 20.181789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030277, 37.255577, 20.655003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372734, 37.062950, 20.580040>,  <35.578209, 36.947376, 20.535063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372734, 37.062950, 20.580040>,  <35.030277, 37.255577, 20.655003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372734, 37.062950, 20.580040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196385, -0.032234, 0.979997,
		-0.477973, -0.875817, 0.066976,
		0.856139, -0.481565, -0.187404,
		35.629578, 36.918480, 20.523819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322086, 37.203918, 20.773867>,  <35.030277, 37.255577, 20.655003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322086, 37.203918, 20.773867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.065056, 37.464520, 20.935181>,  <33.910839, 37.620880, 21.031969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.065056, 37.464520, 20.935181>,  <34.322086, 37.203918, 20.773867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065056, 37.464520, 20.935181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352018, 0.216483, -0.910615,
		-0.680573, -0.727103, 0.090234,
		-0.642576, 0.651504, 0.403285,
		33.872284, 37.659969, 21.056166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782677, 36.965160, 20.527067>,  <34.322086, 37.203918, 20.773867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782677, 36.965160, 20.527067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.745464, 37.355564, 20.605814>,  <33.723137, 37.589806, 20.653063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.745464, 37.355564, 20.605814>,  <33.782677, 36.965160, 20.527067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745464, 37.355564, 20.605814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260465, 0.166983, -0.950934,
		-0.960991, -0.139741, 0.238681,
		-0.093029, 0.976007, 0.196867,
		33.717556, 37.648365, 20.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196556, 37.184238, 20.160295>,  <33.782677, 36.965160, 20.527067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196556, 37.184238, 20.160295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.358555, 37.537842, 20.253679>,  <33.455753, 37.750004, 20.309710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.358555, 37.537842, 20.253679>,  <33.196556, 37.184238, 20.160295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358555, 37.537842, 20.253679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257844, 0.355399, -0.898448,
		-0.877208, 0.303673, 0.371872,
		0.404997, 0.884010, 0.233459,
		33.480053, 37.803043, 20.323717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714443, 37.597527, 19.870413>,  <33.196556, 37.184238, 20.160295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714443, 37.597527, 19.870413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044807, 37.814098, 19.933313>,  <33.243027, 37.944042, 19.971054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044807, 37.814098, 19.933313>,  <32.714443, 37.597527, 19.870413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044807, 37.814098, 19.933313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173335, 0.509247, -0.842984,
		-0.536496, 0.668972, 0.514441,
		0.825910, 0.541428, 0.157253,
		33.292580, 37.976528, 19.980490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464058, 38.302055, 19.879242>,  <32.714443, 37.597527, 19.870413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464058, 38.302055, 19.879242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.846077, 38.286495, 19.761684>,  <33.075287, 38.277157, 19.691151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.846077, 38.286495, 19.761684>,  <32.464058, 38.302055, 19.879242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846077, 38.286495, 19.761684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231925, 0.519442, -0.822430,
		0.184656, 0.853620, 0.487068,
		0.955046, -0.038904, -0.293894,
		33.132591, 38.274822, 19.673515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627350, 38.878441, 19.490658>,  <32.464058, 38.302055, 19.879242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627350, 38.878441, 19.490658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943058, 38.661945, 19.374645>,  <33.132481, 38.532047, 19.305038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943058, 38.661945, 19.374645>,  <32.627350, 38.878441, 19.490658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943058, 38.661945, 19.374645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035740, 0.431035, -0.901627,
		0.613007, 0.721991, 0.320859,
		0.789269, -0.541236, -0.290031,
		33.179840, 38.499573, 19.287636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827068, 39.274250, 19.016226>,  <32.627350, 38.878441, 19.490658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827068, 39.274250, 19.016226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021034, 38.933186, 18.938435>,  <33.137413, 38.728546, 18.891760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021034, 38.933186, 18.938435>,  <32.827068, 39.274250, 19.016226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021034, 38.933186, 18.938435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099025, 0.167413, -0.980901,
		0.868939, 0.494909, -0.003254,
		0.484912, -0.852665, -0.194480,
		33.166508, 38.677387, 18.880091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486828, 39.428593, 18.692247>,  <32.827068, 39.274250, 19.016226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486828, 39.428593, 18.692247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.403637, 39.058720, 18.564684>,  <33.353722, 38.836796, 18.488146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.403637, 39.058720, 18.564684>,  <33.486828, 39.428593, 18.692247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403637, 39.058720, 18.564684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097087, 0.304914, -0.947418,
		0.973303, -0.228007, 0.026359,
		-0.207980, -0.924684, -0.318910,
		33.341244, 38.781315, 18.469011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928158, 39.379627, 18.112213>,  <33.486828, 39.428593, 18.692247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928158, 39.379627, 18.112213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.651073, 39.091503, 18.097757>,  <33.484821, 38.918629, 18.089085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.651073, 39.091503, 18.097757>,  <33.928158, 39.379627, 18.112213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651073, 39.091503, 18.097757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023997, 0.073101, -0.997036,
		0.720817, -0.689789, -0.067923,
		-0.692710, -0.720310, -0.036140,
		33.443260, 38.875412, 18.086916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136608, 38.993855, 17.480343>,  <33.928158, 39.379627, 18.112213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136608, 38.993855, 17.480343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.768738, 38.848358, 17.539534>,  <33.548016, 38.761059, 17.575048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.768738, 38.848358, 17.539534>,  <34.136608, 38.993855, 17.480343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768738, 38.848358, 17.539534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127589, -0.079603, -0.988627,
		0.371384, -0.928093, 0.026799,
		-0.919671, -0.363741, 0.147978,
		33.492836, 38.739235, 17.583927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013325, 38.321812, 17.105545>,  <34.136608, 38.993855, 17.480343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013325, 38.321812, 17.105545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.643654, 38.466061, 17.155905>,  <33.421852, 38.552612, 17.186121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.643654, 38.466061, 17.155905>,  <34.013325, 38.321812, 17.105545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643654, 38.466061, 17.155905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173649, -0.103086, -0.979397,
		-0.340217, -0.926997, 0.157891,
		-0.924174, 0.360625, 0.125900,
		33.366402, 38.574249, 17.193674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624832, 37.930222, 16.736338>,  <34.013325, 38.321812, 17.105545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624832, 37.930222, 16.736338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.389824, 38.250160, 16.785439>,  <33.248817, 38.442123, 16.814899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.389824, 38.250160, 16.785439>,  <33.624832, 37.930222, 16.736338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389824, 38.250160, 16.785439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252087, -0.036764, -0.967006,
		-0.768943, -0.599079, 0.223230,
		-0.587519, 0.799846, 0.122751,
		33.213570, 38.490112, 16.822264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979748, 37.742470, 16.511490>,  <33.624832, 37.930222, 16.736338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979748, 37.742470, 16.511490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945107, 38.140949, 16.507887>,  <32.924320, 38.380039, 16.505726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945107, 38.140949, 16.507887>,  <32.979748, 37.742470, 16.511490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945107, 38.140949, 16.507887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253895, -0.030814, -0.966741,
		-0.963347, -0.081438, 0.255599,
		-0.086606, 0.996202, -0.009008,
		32.919125, 38.439812, 16.505184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817135, 37.023094, 16.764139>,  <32.979748, 37.742470, 16.511490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817135, 37.023094, 16.764139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453362, 37.111507, 16.623241>,  <32.235096, 37.164555, 16.538704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453362, 37.111507, 16.623241>,  <32.817135, 37.023094, 16.764139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453362, 37.111507, 16.623241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360873, 0.001427, 0.932614,
		0.206638, 0.975266, 0.078466,
		-0.909435, 0.221029, -0.352242,
		32.180531, 37.177814, 16.517569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616360, 37.507389, 17.249708>,  <32.817135, 37.023094, 16.764139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616360, 37.507389, 17.249708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331089, 37.296436, 17.064995>,  <32.159927, 37.169865, 16.954166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331089, 37.296436, 17.064995>,  <32.616360, 37.507389, 17.249708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331089, 37.296436, 17.064995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536316, -0.013679, 0.843907,
		-0.451375, 0.849520, -0.273086,
		-0.713180, -0.527379, -0.461786,
		32.117134, 37.138222, 16.926458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013206, 37.735943, 17.580648>,  <32.616360, 37.507389, 17.249708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013206, 37.735943, 17.580648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.892509, 37.394703, 17.410395>,  <31.820091, 37.189957, 17.308243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.892509, 37.394703, 17.410395>,  <32.013206, 37.735943, 17.580648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892509, 37.394703, 17.410395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396146, -0.293890, 0.869883,
		-0.867191, 0.431094, -0.249275,
		-0.301742, -0.853104, -0.425635,
		31.801987, 37.138771, 17.282703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283749, 37.712276, 17.642187>,  <32.013206, 37.735943, 17.580648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283749, 37.712276, 17.642187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.394020, 37.332581, 17.581591>,  <31.460182, 37.104763, 17.545233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.394020, 37.332581, 17.581591>,  <31.283749, 37.712276, 17.642187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394020, 37.332581, 17.581591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521246, -0.280035, 0.806153,
		-0.807654, -0.143273, -0.571986,
		0.275676, -0.949238, -0.151491,
		31.476723, 37.047810, 17.536142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681763, 37.260727, 17.852345>,  <31.283749, 37.712276, 17.642187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681763, 37.260727, 17.852345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986584, 37.001755, 17.856590>,  <31.169476, 36.846371, 17.859137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986584, 37.001755, 17.856590>,  <30.681763, 37.260727, 17.852345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986584, 37.001755, 17.856590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439621, -0.505278, 0.742582,
		-0.475407, -0.570551, -0.669672,
		0.762051, -0.647430, 0.010613,
		31.215199, 36.807526, 17.859774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402966, 36.650101, 17.765432>,  <30.681763, 37.260727, 17.852345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402966, 36.650101, 17.765432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752987, 36.584213, 17.947487>,  <30.962999, 36.544682, 18.056721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752987, 36.584213, 17.947487>,  <30.402966, 36.650101, 17.765432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752987, 36.584213, 17.947487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479475, -0.423649, 0.768522,
		0.066229, -0.890724, -0.449693,
		0.875053, -0.164718, 0.455138,
		31.015503, 36.534798, 18.084028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277191, 35.983814, 18.027222>,  <30.402966, 36.650101, 17.765432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277191, 35.983814, 18.027222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572731, 36.160572, 18.230724>,  <30.750055, 36.266628, 18.352825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572731, 36.160572, 18.230724>,  <30.277191, 35.983814, 18.027222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572731, 36.160572, 18.230724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405521, -0.311405, 0.859406,
		0.538196, -0.841282, -0.050884,
		0.738848, 0.441894, 0.508755,
		30.794386, 36.293140, 18.383350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549364, 35.427902, 18.452967>,  <30.277191, 35.983814, 18.027222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549364, 35.427902, 18.452967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651388, 35.787312, 18.595848>,  <30.712603, 36.002956, 18.681576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651388, 35.787312, 18.595848>,  <30.549364, 35.427902, 18.452967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651388, 35.787312, 18.595848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273551, -0.287274, 0.917956,
		0.927424, -0.331846, 0.172522,
		0.255060, 0.898528, 0.357202,
		30.727905, 36.056870, 18.703009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728453, 34.627621, 18.515551>,  <30.549364, 35.427902, 18.452967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728453, 34.627621, 18.515551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600609, 34.266441, 18.630461>,  <30.523903, 34.049732, 18.699408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600609, 34.266441, 18.630461>,  <30.728453, 34.627621, 18.515551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600609, 34.266441, 18.630461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106147, -0.335389, -0.936081,
		0.941584, -0.268689, 0.203040,
		-0.319611, -0.902951, 0.287277,
		30.504725, 33.995556, 18.716644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245768, 34.215603, 18.376801>,  <30.728453, 34.627621, 18.515551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245768, 34.215603, 18.376801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.904762, 34.007042, 18.362049>,  <30.700159, 33.881905, 18.353197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.904762, 34.007042, 18.362049>,  <31.245768, 34.215603, 18.376801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904762, 34.007042, 18.362049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289666, -0.412524, -0.863665,
		0.435105, -0.746968, 0.502715,
		-0.852512, -0.521405, -0.036880,
		30.649008, 33.850620, 18.350985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459984, 33.553902, 18.157953>,  <31.245768, 34.215603, 18.376801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459984, 33.553902, 18.157953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062700, 33.535892, 18.115042>,  <30.824329, 33.525085, 18.089294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062700, 33.535892, 18.115042>,  <31.459984, 33.553902, 18.157953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062700, 33.535892, 18.115042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113922, -0.563482, -0.818236,
		-0.023612, -0.824901, 0.564784,
		-0.993209, -0.045021, -0.107279,
		30.764738, 33.522385, 18.082857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329342, 32.870361, 18.004951>,  <31.459984, 33.553902, 18.157953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329342, 32.870361, 18.004951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001619, 33.064339, 17.882599>,  <30.804985, 33.180725, 17.809187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001619, 33.064339, 17.882599>,  <31.329342, 32.870361, 18.004951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001619, 33.064339, 17.882599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072632, -0.616982, -0.783619,
		-0.568734, -0.619809, 0.540721,
		-0.819309, 0.484944, -0.305880,
		30.755827, 33.209824, 17.790834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848953, 32.307362, 17.845364>,  <31.329342, 32.870361, 18.004951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848953, 32.307362, 17.845364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730621, 32.641254, 17.659588>,  <30.659622, 32.841591, 17.548122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730621, 32.641254, 17.659588>,  <30.848953, 32.307362, 17.845364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730621, 32.641254, 17.659588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140879, -0.519007, -0.843081,
		-0.944796, -0.183977, 0.271133,
		-0.295828, 0.834736, -0.464438,
		30.641872, 32.891674, 17.520256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390001, 32.018230, 17.320768>,  <30.848953, 32.307362, 17.845364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390001, 32.018230, 17.320768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.451799, 32.388641, 17.183008>,  <30.488878, 32.610886, 17.100351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.451799, 32.388641, 17.183008>,  <30.390001, 32.018230, 17.320768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451799, 32.388641, 17.183008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033845, -0.343420, -0.938572,
		-0.987414, 0.156660, -0.021715,
		0.154494, 0.926024, -0.344400,
		30.498148, 32.666447, 17.079689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853947, 32.206261, 16.781525>,  <30.390001, 32.018230, 17.320768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853947, 32.206261, 16.781525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181673, 32.428631, 16.725428>,  <30.378309, 32.562054, 16.691771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181673, 32.428631, 16.725428>,  <29.853947, 32.206261, 16.781525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181673, 32.428631, 16.725428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015646, -0.222832, -0.974731,
		-0.573127, 0.800808, -0.173873,
		0.819317, 0.555924, -0.140241,
		30.427467, 32.595409, 16.683355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705450, 32.468567, 16.216946>,  <29.853947, 32.206261, 16.781525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705450, 32.468567, 16.216946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099970, 32.532314, 16.233992>,  <30.336681, 32.570564, 16.244219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099970, 32.532314, 16.233992>,  <29.705450, 32.468567, 16.216946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099970, 32.532314, 16.233992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098281, -0.360176, -0.927693,
		-0.132498, 0.919170, -0.370904,
		0.986299, 0.159370, 0.042614,
		30.395859, 32.580124, 16.246777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915281, 32.829880, 15.549067>,  <29.705450, 32.468567, 16.216946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915281, 32.829880, 15.549067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238821, 32.652046, 15.703011>,  <30.432945, 32.545345, 15.795376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238821, 32.652046, 15.703011>,  <29.915281, 32.829880, 15.549067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238821, 32.652046, 15.703011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307519, -0.238039, -0.921287,
		0.501196, 0.863531, -0.055820,
		0.808847, -0.444580, 0.384857,
		30.481476, 32.518673, 15.818467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.726707, 33.794910, 31.788998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102837, 33.694744, 31.696835>,  <32.328514, 33.634644, 31.641537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102837, 33.694744, 31.696835>,  <31.726707, 33.794910, 31.788998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102837, 33.694744, 31.696835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179646, 0.209748, -0.961111,
		0.289005, 0.945144, 0.152244,
		0.940321, -0.250416, -0.230409,
		32.384933, 33.619621, 31.627712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139355, 34.327412, 31.409771>,  <31.726707, 33.794910, 31.788998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139355, 34.327412, 31.409771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270100, 33.961285, 31.315655>,  <32.348545, 33.741608, 31.259184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270100, 33.961285, 31.315655>,  <32.139355, 34.327412, 31.409771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270100, 33.961285, 31.315655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236746, 0.161727, -0.958017,
		0.914939, 0.368844, -0.163834,
		0.326862, -0.915313, -0.235292,
		32.368156, 33.686691, 31.245068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605587, 34.385788, 30.749094>,  <32.139355, 34.327412, 31.409771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605587, 34.385788, 30.749094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482109, 34.006165, 30.774403>,  <32.408024, 33.778393, 30.789587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482109, 34.006165, 30.774403>,  <32.605587, 34.385788, 30.749094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482109, 34.006165, 30.774403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298460, 0.033487, -0.953834,
		0.903124, -0.313323, -0.293592,
		-0.308690, -0.949056, 0.063271,
		32.389503, 33.721447, 30.793385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830235, 34.158596, 30.118641>,  <32.605587, 34.385788, 30.749094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830235, 34.158596, 30.118641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583885, 33.871845, 30.249355>,  <32.436077, 33.699795, 30.327784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583885, 33.871845, 30.249355>,  <32.830235, 34.158596, 30.118641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583885, 33.871845, 30.249355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266100, -0.201130, -0.942729,
		0.741547, -0.667558, -0.066891,
		-0.615872, -0.716877, 0.326785,
		32.399124, 33.656780, 30.347391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953770, 33.537468, 29.708298>,  <32.830235, 34.158596, 30.118641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953770, 33.537468, 29.708298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580757, 33.521263, 29.851822>,  <32.356949, 33.511539, 29.937937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.580757, 33.521263, 29.851822>,  <32.953770, 33.537468, 29.708298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580757, 33.521263, 29.851822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349404, -0.149535, -0.924963,
		0.091131, -0.987926, 0.125289,
		-0.932530, -0.040516, 0.358812,
		32.300999, 33.509109, 29.959465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676170, 33.036926, 29.290039>,  <32.953770, 33.537468, 29.708298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676170, 33.036926, 29.290039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350807, 33.179501, 29.473919>,  <32.155590, 33.265045, 29.584248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350807, 33.179501, 29.473919>,  <32.676170, 33.036926, 29.290039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350807, 33.179501, 29.473919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529419, -0.126195, -0.838922,
		-0.241010, -0.925759, 0.291351,
		-0.813406, 0.356435, 0.459700,
		32.106785, 33.286430, 29.611830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042458, 32.559681, 29.230274>,  <32.676170, 33.036926, 29.290039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042458, 32.559681, 29.230274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915268, 32.935013, 29.284582>,  <31.838955, 33.160213, 29.317167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915268, 32.935013, 29.284582>,  <32.042458, 32.559681, 29.230274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915268, 32.935013, 29.284582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566573, -0.073239, -0.820750,
		-0.760190, -0.337897, 0.554920,
		-0.317971, 0.938329, 0.135768,
		31.819876, 33.216511, 29.325312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293190, 32.595062, 29.121307>,  <32.042458, 32.559681, 29.230274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293190, 32.595062, 29.121307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406120, 32.977287, 29.087370>,  <31.473879, 33.206623, 29.067007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406120, 32.977287, 29.087370>,  <31.293190, 32.595062, 29.121307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406120, 32.977287, 29.087370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515952, 0.076687, -0.853178,
		-0.808757, 0.284647, 0.514673,
		0.282323, 0.955560, -0.084843,
		31.490818, 33.263954, 29.061916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719101, 32.898495, 28.934200>,  <31.293190, 32.595062, 29.121307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719101, 32.898495, 28.934200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017084, 33.147171, 28.837423>,  <31.195873, 33.296379, 28.779358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017084, 33.147171, 28.837423>,  <30.719101, 32.898495, 28.934200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017084, 33.147171, 28.837423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415788, 0.149083, -0.897159,
		-0.521688, 0.768942, 0.369554,
		0.744957, 0.621694, -0.241942,
		31.240572, 33.333679, 28.764841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371168, 33.435471, 28.619360>,  <30.719101, 32.898495, 28.934200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371168, 33.435471, 28.619360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.747213, 33.456551, 28.484655>,  <30.972841, 33.469200, 28.403833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.747213, 33.456551, 28.484655>,  <30.371168, 33.435471, 28.619360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747213, 33.456551, 28.484655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339875, 0.219970, -0.914384,
		0.025888, 0.974082, 0.224709,
		0.940114, 0.052701, -0.336760,
		31.029247, 33.472363, 28.383627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407791, 34.021015, 28.167582>,  <30.371168, 33.435471, 28.619360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407791, 34.021015, 28.167582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758959, 33.871243, 28.048210>,  <30.969660, 33.781380, 27.976587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758959, 33.871243, 28.048210>,  <30.407791, 34.021015, 28.167582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758959, 33.871243, 28.048210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250790, 0.171344, -0.952757,
		0.407875, 0.911287, 0.056523,
		0.877920, -0.374430, -0.298428,
		31.022335, 33.758915, 27.958681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666496, 34.498199, 27.630878>,  <30.407791, 34.021015, 28.167582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666496, 34.498199, 27.630878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883383, 34.169945, 27.558712>,  <31.013515, 33.972992, 27.515411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883383, 34.169945, 27.558712>,  <30.666496, 34.498199, 27.630878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883383, 34.169945, 27.558712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205915, 0.078394, -0.975425,
		0.814617, 0.566042, -0.126476,
		0.542217, -0.820640, -0.180417,
		31.046047, 33.923752, 27.504587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062639, 35.178509, 27.532846>,  <30.666496, 34.498199, 27.630878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062639, 35.178509, 27.532846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908195, 35.547394, 27.524389>,  <30.815529, 35.768723, 27.519314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908195, 35.547394, 27.524389>,  <31.062639, 35.178509, 27.532846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908195, 35.547394, 27.524389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232080, 0.119302, 0.965353,
		0.892780, 0.367826, -0.260091,
		-0.386112, 0.922210, -0.021145,
		30.792362, 35.824059, 27.518045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556379, 35.551033, 27.815565>,  <31.062639, 35.178509, 27.532846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556379, 35.551033, 27.815565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215538, 35.754711, 27.863960>,  <31.011034, 35.876919, 27.892998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215538, 35.754711, 27.863960>,  <31.556379, 35.551033, 27.815565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215538, 35.754711, 27.863960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189127, 0.084028, 0.978351,
		0.488007, 0.856538, -0.167904,
		-0.852103, 0.509197, 0.120988,
		30.959908, 35.907471, 27.900257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837545, 36.014874, 28.235998>,  <31.556379, 35.551033, 27.815565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837545, 36.014874, 28.235998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443449, 36.043755, 28.298079>,  <31.206991, 36.061085, 28.335327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443449, 36.043755, 28.298079>,  <31.837545, 36.014874, 28.235998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443449, 36.043755, 28.298079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164391, 0.146373, 0.975475,
		0.047717, 0.986591, -0.156083,
		-0.985240, 0.072205, 0.155202,
		31.147877, 36.065414, 28.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775539, 36.512794, 28.763632>,  <31.837545, 36.014874, 28.235998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775539, 36.512794, 28.763632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409117, 36.352501, 28.769939>,  <31.189262, 36.256325, 28.773724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409117, 36.352501, 28.769939>,  <31.775539, 36.512794, 28.763632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409117, 36.352501, 28.769939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170088, 0.423819, 0.889633,
		-0.363190, 0.812274, -0.456403,
		-0.916058, -0.400735, 0.015769,
		31.134298, 36.232281, 28.774670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359068, 37.063068, 29.067081>,  <31.775539, 36.512794, 28.763632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359068, 37.063068, 29.067081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.164230, 36.717762, 29.120014>,  <31.047329, 36.510578, 29.151773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.164230, 36.717762, 29.120014>,  <31.359068, 37.063068, 29.067081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164230, 36.717762, 29.120014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293693, 0.304610, 0.906067,
		-0.822487, 0.402473, -0.401909,
		-0.487093, -0.863266, 0.132334,
		31.018103, 36.458782, 29.159714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693657, 37.262573, 29.369038>,  <31.359068, 37.063068, 29.067081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693657, 37.262573, 29.369038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764032, 36.876682, 29.447367>,  <30.806257, 36.645149, 29.494364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764032, 36.876682, 29.447367>,  <30.693657, 37.262573, 29.369038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764032, 36.876682, 29.447367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140264, 0.172326, 0.975002,
		-0.974357, -0.199005, -0.104998,
		0.175937, -0.964728, 0.195821,
		30.816813, 36.587265, 29.506113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155207, 37.111084, 29.844393>,  <30.693657, 37.262573, 29.369038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155207, 37.111084, 29.844393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.444706, 36.839241, 29.892250>,  <30.618406, 36.676136, 29.920965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.444706, 36.839241, 29.892250>,  <30.155207, 37.111084, 29.844393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444706, 36.839241, 29.892250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040407, 0.131346, 0.990513,
		-0.688878, -0.721718, 0.067600,
		0.723750, -0.679611, 0.119644,
		30.661831, 36.635357, 29.928143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900341, 36.960411, 30.498163>,  <30.155207, 37.111084, 29.844393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900341, 36.960411, 30.498163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.267700, 36.814594, 30.436649>,  <30.488115, 36.727104, 30.399742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.267700, 36.814594, 30.436649>,  <29.900341, 36.960411, 30.498163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267700, 36.814594, 30.436649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238526, 0.200032, 0.950312,
		-0.315672, -0.909447, 0.270663,
		0.918399, -0.364547, -0.153782,
		30.543221, 36.705231, 30.390514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113459, 36.507164, 31.106270>,  <29.900341, 36.960411, 30.498163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113459, 36.507164, 31.106270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.467194, 36.567337, 30.929489>,  <30.679434, 36.603439, 30.823421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.467194, 36.567337, 30.929489>,  <30.113459, 36.507164, 31.106270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467194, 36.567337, 30.929489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410986, 0.198190, 0.889838,
		0.221462, -0.968549, 0.113435,
		0.884333, 0.150445, -0.441952,
		30.732494, 36.612465, 30.796904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580978, 36.033226, 31.457640>,  <30.113459, 36.507164, 31.106270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580978, 36.033226, 31.457640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791130, 36.343456, 31.317661>,  <30.917221, 36.529594, 31.233675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791130, 36.343456, 31.317661>,  <30.580978, 36.033226, 31.457640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791130, 36.343456, 31.317661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476312, 0.072723, 0.876264,
		0.705057, -0.627053, -0.331209,
		0.525378, 0.775575, -0.349947,
		30.948744, 36.576130, 31.212677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247736, 35.917953, 31.635303>,  <30.580978, 36.033226, 31.457640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247736, 35.917953, 31.635303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211372, 36.311172, 31.571621>,  <31.189554, 36.547104, 31.533411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211372, 36.311172, 31.571621>,  <31.247736, 35.917953, 31.635303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211372, 36.311172, 31.571621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539260, 0.182994, 0.822017,
		0.837218, -0.011126, -0.546755,
		-0.090907, 0.983051, -0.159206,
		31.184101, 36.606087, 31.523859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854027, 36.197800, 31.681917>,  <31.247736, 35.917953, 31.635303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854027, 36.197800, 31.681917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629856, 36.526039, 31.726721>,  <31.495354, 36.722980, 31.753603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629856, 36.526039, 31.726721>,  <31.854027, 36.197800, 31.681917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629856, 36.526039, 31.726721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557204, 0.273528, 0.784032,
		0.612735, 0.501805, -0.610531,
		-0.560428, 0.820594, 0.112007,
		31.461727, 36.772217, 31.760323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153469, 36.443325, 32.172493>,  <31.854027, 36.197800, 31.681917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153469, 36.443325, 32.172493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837566, 36.687702, 32.150459>,  <31.648026, 36.834328, 32.137238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837566, 36.687702, 32.150459>,  <32.153469, 36.443325, 32.172493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837566, 36.687702, 32.150459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204843, 0.347306, 0.915105,
		0.578210, 0.711425, -0.399434,
		-0.789755, 0.610944, -0.055086,
		31.600639, 36.870987, 32.133934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432831, 37.148540, 32.244789>,  <32.153469, 36.443325, 32.172493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432831, 37.148540, 32.244789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047710, 37.166370, 32.351395>,  <31.816639, 37.177067, 32.415356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047710, 37.166370, 32.351395>,  <32.432831, 37.148540, 32.244789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047710, 37.166370, 32.351395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247155, 0.543921, 0.801913,
		-0.109219, 0.837952, -0.534703,
		-0.962801, 0.044570, 0.266511,
		31.758871, 37.179741, 32.431347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889999, 36.805096, 32.710720>,  <32.432831, 37.148540, 32.244789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889999, 36.805096, 32.710720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118534, 36.735542, 33.031555>,  <33.255653, 36.693810, 33.224056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118534, 36.735542, 33.031555>,  <32.889999, 36.805096, 32.710720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118534, 36.735542, 33.031555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648334, 0.503616, 0.570994,
		-0.503232, -0.846247, 0.174995,
		0.571332, -0.173888, 0.802087,
		33.289932, 36.683376, 33.272182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375927, 36.729473, 32.215374>,  <32.889999, 36.805096, 32.710720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375927, 36.729473, 32.215374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666317, 36.843399, 31.964985>,  <33.840549, 36.911755, 31.814751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666317, 36.843399, 31.964985>,  <33.375927, 36.729473, 32.215374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666317, 36.843399, 31.964985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594622, -0.197363, -0.779405,
		-0.345528, 0.938046, 0.026075,
		0.725972, 0.284811, -0.625977,
		33.884109, 36.928841, 31.777191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231056, 37.320858, 31.658323>,  <33.375927, 36.729473, 32.215374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231056, 37.320858, 31.658323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527046, 37.123688, 31.475254>,  <33.704639, 37.005386, 31.365412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527046, 37.123688, 31.475254>,  <33.231056, 37.320858, 31.658323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527046, 37.123688, 31.475254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441238, 0.157844, -0.883399,
		0.507690, 0.855635, -0.100696,
		0.739973, -0.492924, -0.457674,
		33.749039, 36.975811, 31.337952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545647, 37.802029, 31.125490>,  <33.231056, 37.320858, 31.658323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545647, 37.802029, 31.125490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616421, 37.421741, 31.023647>,  <33.658886, 37.193569, 30.962542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616421, 37.421741, 31.023647>,  <33.545647, 37.802029, 31.125490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616421, 37.421741, 31.023647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298946, 0.194555, -0.934227,
		0.937724, 0.241411, -0.249791,
		0.176935, -0.950720, -0.254608,
		33.669502, 37.136524, 30.947266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031181, 37.898731, 30.627850>,  <33.545647, 37.802029, 31.125490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031181, 37.898731, 30.627850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878708, 37.530594, 30.592831>,  <33.787224, 37.309711, 30.571819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878708, 37.530594, 30.592831>,  <34.031181, 37.898731, 30.627850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878708, 37.530594, 30.592831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206658, 0.177125, -0.962247,
		0.901107, -0.348698, -0.257714,
		-0.381181, -0.920346, -0.087548,
		33.764355, 37.254490, 30.566566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437134, 37.491096, 30.149006>,  <34.031181, 37.898731, 30.627850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437134, 37.491096, 30.149006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072376, 37.328079, 30.168474>,  <33.853523, 37.230270, 30.180155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072376, 37.328079, 30.168474>,  <34.437134, 37.491096, 30.149006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072376, 37.328079, 30.168474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182149, 0.295571, -0.937795,
		0.367803, -0.864031, -0.343761,
		-0.911890, -0.407539, 0.048670,
		33.798809, 37.205818, 30.183075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404915, 37.135426, 29.510933>,  <34.437134, 37.491096, 30.149006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404915, 37.135426, 29.510933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025703, 37.134953, 29.638205>,  <33.798176, 37.134666, 29.714567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025703, 37.134953, 29.638205>,  <34.404915, 37.135426, 29.510933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025703, 37.134953, 29.638205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318170, 0.011268, -0.947967,
		-0.002442, -0.999936, -0.011066,
		-0.948031, -0.001206, 0.318177,
		33.741295, 37.134598, 29.733658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991245, 36.523968, 29.136570>,  <34.404915, 37.135426, 29.510933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991245, 36.523968, 29.136570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762932, 36.822830, 29.272789>,  <33.625946, 37.002148, 29.354521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762932, 36.822830, 29.272789>,  <33.991245, 36.523968, 29.136570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762932, 36.822830, 29.272789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324171, 0.176007, -0.929481,
		-0.754403, -0.640925, 0.141744,
		-0.570780, 0.747152, 0.340549,
		33.591698, 37.046974, 29.374954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350082, 36.434010, 28.777340>,  <33.991245, 36.523968, 29.136570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350082, 36.434010, 28.777340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350815, 36.804596, 28.927891>,  <33.351254, 37.026947, 29.018221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350815, 36.804596, 28.927891>,  <33.350082, 36.434010, 28.777340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350815, 36.804596, 28.927891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228157, 0.366839, -0.901872,
		-0.973623, -0.084226, 0.212049,
		0.001827, 0.926464, 0.376379,
		33.351364, 37.082535, 29.040804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615387, 36.646408, 28.692068>,  <33.350082, 36.434010, 28.777340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615387, 36.646408, 28.692068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853897, 36.962486, 28.748713>,  <32.997002, 37.152134, 28.782700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853897, 36.962486, 28.748713>,  <32.615387, 36.646408, 28.692068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853897, 36.962486, 28.748713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348077, 0.413443, -0.841372,
		-0.723394, 0.452397, 0.521573,
		0.596275, 0.790191, 0.141613,
		33.032780, 37.199543, 28.791197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206200, 37.255836, 28.671204>,  <32.615387, 36.646408, 28.692068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206200, 37.255836, 28.671204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583126, 37.319954, 28.553661>,  <32.809280, 37.358425, 28.483137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583126, 37.319954, 28.553661>,  <32.206200, 37.255836, 28.671204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583126, 37.319954, 28.553661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327574, 0.261065, -0.908042,
		-0.068838, 0.951920, 0.298513,
		0.942314, 0.160293, -0.293853,
		32.865822, 37.368042, 28.465506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149708, 37.489658, 27.998262>,  <32.206200, 37.255836, 28.671204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149708, 37.489658, 27.998262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.549530, 37.488365, 28.010136>,  <32.789425, 37.487587, 28.017260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.549530, 37.488365, 28.010136>,  <32.149708, 37.489658, 27.998262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549530, 37.488365, 28.010136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029268, 0.303169, -0.952487,
		-0.005915, 0.952931, 0.303129,
		0.999554, -0.003237, 0.029683,
		32.849396, 37.487392, 28.019041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429016, 38.226753, 27.649755>,  <32.149708, 37.489658, 27.998262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429016, 38.226753, 27.649755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697384, 37.930470, 27.635759>,  <32.858402, 37.752701, 27.627361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697384, 37.930470, 27.635759>,  <32.429016, 38.226753, 27.649755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697384, 37.930470, 27.635759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031444, 0.075559, -0.996645,
		0.740867, 0.667565, 0.073984,
		0.670915, -0.740708, -0.034989,
		32.898659, 37.708256, 27.625263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753109, 38.421467, 27.143660>,  <32.429016, 38.226753, 27.649755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753109, 38.421467, 27.143660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899601, 38.051632, 27.185637>,  <32.987495, 37.829731, 27.210823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899601, 38.051632, 27.185637>,  <32.753109, 38.421467, 27.143660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899601, 38.051632, 27.185637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215365, -0.025494, -0.976201,
		0.905260, 0.380112, 0.189788,
		0.366227, -0.924589, 0.104942,
		33.009468, 37.774254, 27.217119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420872, 38.413811, 26.790632>,  <32.753109, 38.421467, 27.143660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420872, 38.413811, 26.790632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.311161, 38.029232, 26.782665>,  <33.245335, 37.798485, 26.777885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.311161, 38.029232, 26.782665>,  <33.420872, 38.413811, 26.790632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311161, 38.029232, 26.782665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198373, -0.036302, -0.979454,
		0.940968, -0.272593, 0.200681,
		-0.274277, -0.961444, -0.019916,
		33.228878, 37.740799, 26.776690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986130, 38.055386, 26.449478>,  <33.420872, 38.413811, 26.790632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986130, 38.055386, 26.449478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663944, 37.821869, 26.408667>,  <33.470631, 37.681759, 26.384180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663944, 37.821869, 26.408667>,  <33.986130, 38.055386, 26.449478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663944, 37.821869, 26.408667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185889, -0.085401, -0.978852,
		0.562735, -0.807398, 0.177309,
		-0.805466, -0.583794, -0.102028,
		33.422306, 37.646732, 26.378057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226139, 37.506439, 26.060852>,  <33.986130, 38.055386, 26.449478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226139, 37.506439, 26.060852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832371, 37.456882, 26.010952>,  <33.596107, 37.427151, 25.981012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832371, 37.456882, 26.010952>,  <34.226139, 37.506439, 26.060852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832371, 37.456882, 26.010952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138357, -0.108083, -0.984467,
		0.108481, -0.986392, 0.123541,
		-0.984423, -0.123888, -0.124749,
		33.537045, 37.419716, 25.973528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171688, 37.004776, 25.665453>,  <34.226139, 37.506439, 26.060852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171688, 37.004776, 25.665453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824265, 37.196041, 25.613354>,  <33.615810, 37.310799, 25.582094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824265, 37.196041, 25.613354>,  <34.171688, 37.004776, 25.665453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824265, 37.196041, 25.613354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044242, -0.186954, -0.981372,
		-0.493605, -0.858143, 0.141226,
		-0.868560, 0.478162, -0.130247,
		33.563698, 37.339489, 25.574280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846649, 36.627945, 25.310232>,  <34.171688, 37.004776, 25.665453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846649, 36.627945, 25.310232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663914, 36.979076, 25.252666>,  <33.554272, 37.189754, 25.218126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663914, 36.979076, 25.252666>,  <33.846649, 36.627945, 25.310232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663914, 36.979076, 25.252666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087657, -0.116573, -0.989306,
		-0.885223, -0.464564, -0.023694,
		-0.456834, 0.877833, -0.143915,
		33.526863, 37.242428, 25.209492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319485, 36.535168, 24.817307>,  <33.846649, 36.627945, 25.310232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319485, 36.535168, 24.817307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364296, 36.932499, 24.806324>,  <33.391182, 37.170898, 24.799734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364296, 36.932499, 24.806324>,  <33.319485, 36.535168, 24.817307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364296, 36.932499, 24.806324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034426, -0.023732, -0.999125,
		-0.993108, 0.112880, 0.031537,
		0.112033, 0.993325, -0.027455,
		33.397907, 37.230495, 24.798088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793995, 36.726940, 24.347010>,  <33.319485, 36.535168, 24.817307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793995, 36.726940, 24.347010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103252, 36.979797, 24.367599>,  <33.288807, 37.131512, 24.379953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103252, 36.979797, 24.367599>,  <32.793995, 36.726940, 24.347010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103252, 36.979797, 24.367599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024837, 0.111274, -0.993479,
		-0.633748, 0.766821, 0.101730,
		0.773141, 0.632142, 0.051474,
		33.335194, 37.169441, 24.383041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701347, 37.193829, 23.773062>,  <32.793995, 36.726940, 24.347010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701347, 37.193829, 23.773062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073895, 37.310905, 23.859680>,  <33.297421, 37.381149, 23.911652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073895, 37.310905, 23.859680>,  <32.701347, 37.193829, 23.773062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073895, 37.310905, 23.859680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128754, 0.291555, -0.947849,
		-0.340560, 0.910675, 0.233859,
		0.931365, 0.292690, 0.216545,
		33.353306, 37.398712, 23.924644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749752, 37.846272, 23.476400>,  <32.701347, 37.193829, 23.773062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749752, 37.846272, 23.476400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126369, 37.723259, 23.531408>,  <33.352341, 37.649452, 23.564413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126369, 37.723259, 23.531408>,  <32.749752, 37.846272, 23.476400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126369, 37.723259, 23.531408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187737, 0.140046, -0.972184,
		0.279719, 0.941175, 0.189595,
		0.941547, -0.307533, 0.137520,
		33.408833, 37.631001, 23.572664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093872, 38.253067, 23.080681>,  <32.749752, 37.846272, 23.476400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093872, 38.253067, 23.080681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371456, 37.969769, 23.132544>,  <33.538006, 37.799789, 23.163662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371456, 37.969769, 23.132544>,  <33.093872, 38.253067, 23.080681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371456, 37.969769, 23.132544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284324, 0.104115, -0.953058,
		0.661499, 0.698248, 0.273623,
		0.693959, -0.708245, 0.129657,
		33.579643, 37.757294, 23.171440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746922, 38.566010, 22.776211>,  <33.093872, 38.253067, 23.080681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746922, 38.566010, 22.776211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799103, 38.169651, 22.789572>,  <33.830410, 37.931835, 22.797588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799103, 38.169651, 22.789572>,  <33.746922, 38.566010, 22.776211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799103, 38.169651, 22.789572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272023, 0.003375, -0.962285,
		0.953408, 0.134616, 0.269986,
		0.130450, -0.990892, 0.033401,
		33.838238, 37.872383, 22.799593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344742, 38.401047, 22.369299>,  <33.746922, 38.566010, 22.776211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344742, 38.401047, 22.369299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137150, 38.059448, 22.383986>,  <34.012596, 37.854488, 22.392797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137150, 38.059448, 22.383986>,  <34.344742, 38.401047, 22.369299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137150, 38.059448, 22.383986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188891, -0.156472, -0.969452,
		0.833655, -0.496189, 0.242518,
		-0.518979, -0.853998, 0.036718,
		33.981457, 37.803249, 22.395000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740154, 38.004364, 21.851425>,  <34.344742, 38.401047, 22.369299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740154, 38.004364, 21.851425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371899, 37.850552, 21.878443>,  <34.150948, 37.758263, 21.894653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371899, 37.850552, 21.878443>,  <34.740154, 38.004364, 21.851425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371899, 37.850552, 21.878443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058462, -0.035270, -0.997666,
		0.386020, -0.922436, 0.009990,
		-0.920636, -0.384535, 0.067542,
		34.095707, 37.735191, 21.898705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692745, 37.472542, 21.336260>,  <34.740154, 38.004364, 21.851425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692745, 37.472542, 21.336260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320053, 37.590225, 21.421412>,  <34.096436, 37.660835, 21.472504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320053, 37.590225, 21.421412>,  <34.692745, 37.472542, 21.336260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320053, 37.590225, 21.421412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254127, -0.109480, -0.960954,
		-0.259411, -0.949451, 0.176771,
		-0.931732, 0.294205, 0.212881,
		34.040535, 37.678486, 21.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014412, 36.801476, 21.214275>,  <34.692745, 37.472542, 21.336260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014412, 36.801476, 21.214275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373310, 36.796951, 21.037718>,  <35.588650, 36.794235, 20.931784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373310, 36.796951, 21.037718>,  <35.014412, 36.801476, 21.214275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373310, 36.796951, 21.037718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437696, -0.108786, 0.892518,
		-0.058112, -0.994001, -0.092657,
		0.897243, -0.011310, -0.441392,
		35.642483, 36.793556, 20.905300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346302, 36.203556, 21.622234>,  <35.014412, 36.801476, 21.214275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346302, 36.203556, 21.622234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630695, 36.426113, 21.450216>,  <35.801331, 36.559647, 21.347006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630695, 36.426113, 21.450216>,  <35.346302, 36.203556, 21.622234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630695, 36.426113, 21.450216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430427, 0.139283, 0.891814,
		0.556095, -0.819164, -0.140458,
		0.710979, 0.556390, -0.430045,
		35.843990, 36.593029, 21.321203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969059, 35.832558, 21.695637>,  <35.346302, 36.203556, 21.622234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969059, 35.832558, 21.695637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077248, 36.216175, 21.661964>,  <36.142159, 36.446346, 21.641762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077248, 36.216175, 21.661964>,  <35.969059, 35.832558, 21.695637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077248, 36.216175, 21.661964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474574, -0.056738, 0.878385,
		0.837632, -0.277525, -0.470482,
		0.270468, 0.959042, -0.084181,
		36.158386, 36.503887, 21.636709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579914, 35.781143, 21.866104>,  <35.969059, 35.832558, 21.695637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579914, 35.781143, 21.866104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536999, 36.175983, 21.913639>,  <36.511250, 36.412888, 21.942160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536999, 36.175983, 21.913639>,  <36.579914, 35.781143, 21.866104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536999, 36.175983, 21.913639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425188, -0.062489, 0.902945,
		0.898723, 0.147407, -0.412999,
		-0.107293, 0.987100, 0.118836,
		36.504810, 36.472115, 21.949289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186443, 36.074741, 22.063910>,  <36.579914, 35.781143, 21.866104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186443, 36.074741, 22.063910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907001, 36.334461, 22.184151>,  <36.739338, 36.490295, 22.256294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907001, 36.334461, 22.184151>,  <37.186443, 36.074741, 22.063910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907001, 36.334461, 22.184151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310977, -0.102834, 0.944838,
		0.644397, 0.753547, -0.130077,
		-0.698603, 0.649301, 0.300602,
		36.697422, 36.529251, 22.274332>
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
