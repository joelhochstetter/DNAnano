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
	<24.642906, 34.752834, 34.941341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451334, 35.101578, 34.982304>,  <24.336390, 35.310825, 35.006882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451334, 35.101578, 34.982304>,  <24.642906, 34.752834, 34.941341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451334, 35.101578, 34.982304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678797, -0.293831, -0.672977,
		-0.556651, -0.391824, 0.732540,
		-0.478932, 0.871859, 0.102407,
		24.307655, 35.363136, 35.013027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045879, 35.335522, 34.612942>,  <24.642906, 34.752834, 34.941341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045879, 35.335522, 34.612942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047077, 35.698341, 34.444534>,  <25.047796, 35.916031, 34.343491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047077, 35.698341, 34.444534>,  <25.045879, 35.335522, 34.612942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047077, 35.698341, 34.444534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044838, 0.420723, 0.906080,
		0.998990, 0.016163, 0.041931,
		0.002996, 0.907045, -0.421023,
		25.047976, 35.970455, 34.318226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581347, 35.851063, 34.896408>,  <25.045879, 35.335522, 34.612942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581347, 35.851063, 34.896408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254541, 36.023048, 34.742725>,  <25.058458, 36.126240, 34.650517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254541, 36.023048, 34.742725>,  <25.581347, 35.851063, 34.896408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254541, 36.023048, 34.742725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065196, 0.593162, 0.802439,
		0.572923, 0.680652, -0.456588,
		-0.817012, 0.429968, -0.384211,
		25.009438, 36.152039, 34.627460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658257, 36.626293, 34.992493>,  <25.581347, 35.851063, 34.896408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658257, 36.626293, 34.992493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282150, 36.490131, 34.990650>,  <25.056486, 36.408432, 34.989544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282150, 36.490131, 34.990650>,  <25.658257, 36.626293, 34.992493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282150, 36.490131, 34.990650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233481, 0.634949, 0.736428,
		-0.247761, 0.693514, -0.676500,
		-0.940266, -0.340408, -0.004607,
		25.000071, 36.388008, 34.989269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728331, 36.991707, 35.667343>,  <25.658257, 36.626293, 34.992493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728331, 36.991707, 35.667343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345346, 36.967606, 35.554462>,  <25.115557, 36.953144, 35.486732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345346, 36.967606, 35.554462>,  <25.728331, 36.991707, 35.667343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345346, 36.967606, 35.554462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140608, 0.951416, 0.273929,
		0.251988, 0.301956, -0.919415,
		-0.957461, -0.060250, -0.282203,
		25.058107, 36.949532, 35.469803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726072, 37.649723, 35.424465>,  <25.728331, 36.991707, 35.667343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726072, 37.649723, 35.424465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361273, 37.494751, 35.478355>,  <25.142393, 37.401768, 35.510689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361273, 37.494751, 35.478355>,  <25.726072, 37.649723, 35.424465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361273, 37.494751, 35.478355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352076, 0.907892, 0.227539,
		-0.210476, 0.160081, -0.964403,
		-0.911999, -0.387435, 0.134729,
		25.087673, 37.378521, 35.518776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237480, 37.345314, 35.016808>,  <25.726072, 37.649723, 35.424465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237480, 37.345314, 35.016808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450792, 37.023273, 35.120667>,  <26.578779, 36.830048, 35.182980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450792, 37.023273, 35.120667>,  <26.237480, 37.345314, 35.016808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450792, 37.023273, 35.120667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619033, 0.580593, 0.528875,
		-0.576548, -0.121312, 0.808007,
		0.533282, -0.805106, 0.259644,
		26.610777, 36.781742, 35.198559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425730, 37.322052, 35.821930>,  <26.237480, 37.345314, 35.016808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425730, 37.322052, 35.821930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693455, 37.115005, 35.608727>,  <26.854090, 36.990776, 35.480804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693455, 37.115005, 35.608727>,  <26.425730, 37.322052, 35.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693455, 37.115005, 35.608727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742438, 0.438494, 0.506467,
		-0.028435, -0.734709, 0.677787,
		0.669311, -0.517616, -0.533007,
		26.894247, 36.959721, 35.448826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038836, 37.297894, 36.261772>,  <26.425730, 37.322052, 35.821930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038836, 37.297894, 36.261772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162317, 37.193558, 35.895897>,  <27.236406, 37.130955, 35.676373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162317, 37.193558, 35.895897>,  <27.038836, 37.297894, 36.261772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162317, 37.193558, 35.895897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798068, 0.594231, 0.099887,
		0.517483, -0.760823, 0.391612,
		0.308704, -0.260843, -0.914693,
		27.254929, 37.115303, 35.621490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758144, 37.344818, 36.383625>,  <27.038836, 37.297894, 36.261772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758144, 37.344818, 36.383625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690401, 37.366142, 35.989979>,  <27.649755, 37.378937, 35.753792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690401, 37.366142, 35.989979>,  <27.758144, 37.344818, 36.383625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690401, 37.366142, 35.989979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721936, 0.686461, -0.087055,
		0.670914, -0.725210, -0.154741,
		-0.169357, 0.053306, -0.984112,
		27.639593, 37.382133, 35.694744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412399, 37.424618, 36.068302>,  <27.758144, 37.344818, 36.383625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412399, 37.424618, 36.068302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156164, 37.559292, 35.792248>,  <28.002422, 37.640095, 35.626614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156164, 37.559292, 35.792248>,  <28.412399, 37.424618, 36.068302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156164, 37.559292, 35.792248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650490, 0.715529, -0.254720,
		0.408053, -0.612098, -0.677368,
		-0.640590, 0.336682, -0.690137,
		27.963987, 37.660297, 35.585205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672245, 37.339058, 35.447262>,  <28.412399, 37.424618, 36.068302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672245, 37.339058, 35.447262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396837, 37.613308, 35.352730>,  <28.231592, 37.777859, 35.296013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396837, 37.613308, 35.352730>,  <28.672245, 37.339058, 35.447262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396837, 37.613308, 35.352730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724823, 0.661308, -0.193141,
		0.023863, -0.304278, -0.952285,
		-0.688522, 0.685629, -0.236328,
		28.190281, 37.818996, 35.281830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984989, 37.669941, 34.914982>,  <28.672245, 37.339058, 35.447262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984989, 37.669941, 34.914982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706982, 37.927563, 35.042820>,  <28.540176, 38.082134, 35.119522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706982, 37.927563, 35.042820>,  <28.984989, 37.669941, 34.914982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706982, 37.927563, 35.042820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565513, 0.764185, -0.310188,
		-0.444006, -0.034853, -0.895346,
		-0.695020, 0.644055, 0.319593,
		28.498476, 38.120781, 35.138699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766518, 38.106251, 34.364956>,  <28.984989, 37.669941, 34.914982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766518, 38.106251, 34.364956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687346, 38.305225, 34.702801>,  <28.639841, 38.424610, 34.905510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687346, 38.305225, 34.702801>,  <28.766518, 38.106251, 34.364956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687346, 38.305225, 34.702801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680142, 0.690181, -0.247097,
		-0.705854, 0.525551, -0.474938,
		-0.197931, 0.497440, 0.844616,
		28.627966, 38.454456, 34.956184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638550, 38.883602, 34.236641>,  <28.766518, 38.106251, 34.364956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638550, 38.883602, 34.236641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758633, 38.891743, 34.618103>,  <28.830683, 38.896629, 34.846981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758633, 38.891743, 34.618103>,  <28.638550, 38.883602, 34.236641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758633, 38.891743, 34.618103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613005, 0.761871, -0.209231,
		-0.730823, 0.647409, 0.216241,
		0.300205, 0.020354, 0.953657,
		28.848694, 38.897850, 34.904202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760231, 39.558277, 34.388638>,  <28.638550, 38.883602, 34.236641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760231, 39.558277, 34.388638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942299, 39.388809, 34.701897>,  <29.051540, 39.287128, 34.889854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942299, 39.388809, 34.701897>,  <28.760231, 39.558277, 34.388638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942299, 39.388809, 34.701897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640753, 0.766582, 0.042296,
		-0.618269, 0.482555, 0.620391,
		0.455170, -0.423667, 0.783152,
		29.078850, 39.261707, 34.936844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967600, 40.093155, 34.776627>,  <28.760231, 39.558277, 34.388638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967600, 40.093155, 34.776627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207024, 39.797714, 34.900688>,  <29.350677, 39.620449, 34.975124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207024, 39.797714, 34.900688>,  <28.967600, 40.093155, 34.776627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207024, 39.797714, 34.900688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796903, 0.588484, -0.136500,
		-0.081700, 0.328864, 0.940837,
		0.598557, -0.738604, 0.310152,
		29.386591, 39.576134, 34.993732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454250, 40.331036, 35.283123>,  <28.967600, 40.093155, 34.776627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454250, 40.331036, 35.283123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662325, 40.018509, 35.145164>,  <29.787170, 39.830994, 35.062389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662325, 40.018509, 35.145164>,  <29.454250, 40.331036, 35.283123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662325, 40.018509, 35.145164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769920, 0.603785, -0.206562,
		0.369635, -0.158095, 0.915629,
		0.520186, -0.781313, -0.344901,
		29.818380, 39.784115, 35.041695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045023, 40.391876, 35.680454>,  <29.454250, 40.331036, 35.283123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045023, 40.391876, 35.680454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123032, 40.146393, 35.374428>,  <30.169838, 39.999104, 35.190811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123032, 40.146393, 35.374428>,  <30.045023, 40.391876, 35.680454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123032, 40.146393, 35.374428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870602, 0.467553, -0.153125,
		0.451684, -0.636209, 0.625476,
		0.195023, -0.613704, -0.765071,
		30.181538, 39.962280, 35.144905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746733, 40.171780, 35.771599>,  <30.045023, 40.391876, 35.680454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746733, 40.171780, 35.771599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667126, 40.109657, 35.384556>,  <30.619362, 40.072384, 35.152328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667126, 40.109657, 35.384556>,  <30.746733, 40.171780, 35.771599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667126, 40.109657, 35.384556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882019, 0.401950, -0.245925,
		0.427124, -0.902395, 0.056985,
		-0.199017, -0.155303, -0.967612,
		30.607420, 40.063065, 35.094273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351620, 39.835434, 35.536770>,  <30.746733, 40.171780, 35.771599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351620, 39.835434, 35.536770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164896, 39.985260, 35.216320>,  <31.052862, 40.075153, 35.024052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164896, 39.985260, 35.216320>,  <31.351620, 39.835434, 35.536770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164896, 39.985260, 35.216320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875496, 0.323653, -0.358824,
		0.124883, -0.868880, -0.479011,
		-0.466808, 0.374561, -0.801120,
		31.024853, 40.097630, 34.975983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779478, 39.700874, 35.014301>,  <31.351620, 39.835434, 35.536770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779478, 39.700874, 35.014301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572140, 39.995552, 34.840591>,  <31.447737, 40.172359, 34.736366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572140, 39.995552, 34.840591>,  <31.779478, 39.700874, 35.014301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572140, 39.995552, 34.840591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835161, 0.326871, -0.442337,
		-0.183915, -0.591974, -0.784692,
		-0.518345, 0.736697, -0.434277,
		31.416636, 40.216560, 34.710308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818581, 39.652908, 34.309837>,  <31.779478, 39.700874, 35.014301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818581, 39.652908, 34.309837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736635, 40.040359, 34.366119>,  <31.687468, 40.272831, 34.399887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736635, 40.040359, 34.366119>,  <31.818581, 39.652908, 34.309837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736635, 40.040359, 34.366119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740759, 0.247397, -0.624556,
		-0.639770, -0.023720, -0.768200,
		-0.204865, 0.968624, 0.140706,
		31.675177, 40.330948, 34.408333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997797, 39.961613, 33.723377>,  <31.818581, 39.652908, 34.309837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997797, 39.961613, 33.723377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978764, 40.264023, 33.984501>,  <31.967344, 40.445469, 34.141174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978764, 40.264023, 33.984501>,  <31.997797, 39.961613, 33.723377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978764, 40.264023, 33.984501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594628, 0.546567, -0.589646,
		-0.802592, 0.360122, -0.475561,
		-0.047582, 0.756027, 0.652809,
		31.964489, 40.490829, 34.180344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969757, 40.532822, 33.303654>,  <31.997797, 39.961613, 33.723377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969757, 40.532822, 33.303654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095612, 40.675087, 33.655678>,  <32.171124, 40.760448, 33.866894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095612, 40.675087, 33.655678>,  <31.969757, 40.532822, 33.303654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095612, 40.675087, 33.655678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714003, 0.522244, -0.466326,
		-0.625463, 0.775089, -0.089630,
		0.314636, 0.355665, 0.880060,
		32.190002, 40.781788, 33.919697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801809, 41.195156, 33.342300>,  <31.969757, 40.532822, 33.303654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801809, 41.195156, 33.342300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134457, 41.098770, 33.542439>,  <32.334045, 41.040939, 33.662521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134457, 41.098770, 33.542439>,  <31.801809, 41.195156, 33.342300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134457, 41.098770, 33.542439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505477, 0.701594, -0.502254,
		-0.230016, 0.670598, 0.705260,
		0.831616, -0.240966, 0.500350,
		32.383942, 41.026482, 33.692543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283096, 41.758293, 33.087032>,  <31.801809, 41.195156, 33.342300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283096, 41.758293, 33.087032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536736, 41.532360, 33.298271>,  <32.688919, 41.396801, 33.425014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536736, 41.532360, 33.298271>,  <32.283096, 41.758293, 33.087032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536736, 41.532360, 33.298271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748092, 0.275296, -0.603797,
		0.195664, 0.777929, 0.597112,
		0.634093, -0.564836, 0.528097,
		32.726963, 41.362907, 33.456699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383347, 42.276569, 33.670444>,  <32.283096, 41.758293, 33.087032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383347, 42.276569, 33.670444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613277, 41.949287, 33.674801>,  <32.751236, 41.752918, 33.677414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613277, 41.949287, 33.674801>,  <32.383347, 42.276569, 33.670444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613277, 41.949287, 33.674801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762961, 0.540737, 0.354252,
		-0.295740, -0.195322, 0.935087,
		0.574829, -0.818201, 0.010895,
		32.785725, 41.703827, 33.678070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811241, 42.425449, 34.118961>,  <32.383347, 42.276569, 33.670444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811241, 42.425449, 34.118961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003494, 42.110744, 33.964039>,  <33.118847, 41.921921, 33.871086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003494, 42.110744, 33.964039>,  <32.811241, 42.425449, 34.118961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003494, 42.110744, 33.964039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865484, 0.354481, 0.353950,
		-0.141180, -0.505326, 0.851301,
		0.480630, -0.786758, -0.387306,
		33.147682, 41.874718, 33.847847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186981, 42.119213, 34.671974>,  <32.811241, 42.425449, 34.118961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186981, 42.119213, 34.671974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377293, 42.009651, 34.337643>,  <33.491482, 41.943913, 34.137043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377293, 42.009651, 34.337643>,  <33.186981, 42.119213, 34.671974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377293, 42.009651, 34.337643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874618, 0.247960, 0.416604,
		0.093140, -0.929242, 0.357539,
		0.475782, -0.273908, -0.835827,
		33.520027, 41.927479, 34.086895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823170, 41.620449, 34.898586>,  <33.186981, 42.119213, 34.671974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823170, 41.620449, 34.898586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878021, 41.807873, 34.549496>,  <33.910931, 41.920326, 34.340042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878021, 41.807873, 34.549496>,  <33.823170, 41.620449, 34.898586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878021, 41.807873, 34.549496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808590, 0.455968, 0.371854,
		0.572170, -0.756669, -0.316343,
		0.137128, 0.468556, -0.872726,
		33.919159, 41.948441, 34.287678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491459, 41.705532, 34.900169>,  <33.823170, 41.620449, 34.898586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491459, 41.705532, 34.900169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377205, 41.947086, 34.602516>,  <34.308655, 42.092018, 34.423923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377205, 41.947086, 34.602516>,  <34.491459, 41.705532, 34.900169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377205, 41.947086, 34.602516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811276, 0.565704, 0.147684,
		0.510142, -0.561512, -0.651505,
		-0.285632, 0.603890, -0.744131,
		34.291515, 42.128254, 34.379276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204079, 41.451946, 35.090107>,  <34.491459, 41.705532, 34.900169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204079, 41.451946, 35.090107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274914, 41.798622, 34.903564>,  <35.317413, 42.006626, 34.791637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274914, 41.798622, 34.903564>,  <35.204079, 41.451946, 35.090107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274914, 41.798622, 34.903564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261053, 0.498236, 0.826808,
		0.948943, -0.024671, 0.314482,
		0.177085, 0.866690, -0.466357,
		35.328037, 42.058628, 34.763657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577168, 40.840496, 35.382240>,  <35.204079, 41.451946, 35.090107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577168, 40.840496, 35.382240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538052, 40.979164, 35.755390>,  <35.514584, 41.062366, 35.979282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538052, 40.979164, 35.755390>,  <35.577168, 40.840496, 35.382240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538052, 40.979164, 35.755390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551273, -0.799289, 0.239241,
		0.828575, -0.490875, 0.269268,
		-0.097786, 0.346669, 0.932876,
		35.508717, 41.083164, 36.035252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806675, 40.319557, 35.947269>,  <35.577168, 40.840496, 35.382240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806675, 40.319557, 35.947269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535194, 40.590469, 36.060875>,  <35.372307, 40.753017, 36.129036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535194, 40.590469, 36.060875>,  <35.806675, 40.319557, 35.947269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535194, 40.590469, 36.060875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657465, -0.732643, 0.175997,
		0.327277, -0.067279, 0.942530,
		-0.678697, 0.677280, 0.284011,
		35.331585, 40.793652, 36.146080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847164, 39.697002, 36.155212>,  <35.806675, 40.319557, 35.947269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847164, 39.697002, 36.155212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126667, 39.972237, 36.233479>,  <36.294369, 40.137379, 36.280437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126667, 39.972237, 36.233479>,  <35.847164, 39.697002, 36.155212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126667, 39.972237, 36.233479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695184, -0.717655, 0.041117,
		0.168712, 0.107292, -0.979808,
		0.698753, 0.688084, 0.195665,
		36.336292, 40.178661, 36.292179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300545, 40.033085, 36.451569>,  <35.847164, 39.697002, 36.155212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300545, 40.033085, 36.451569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082630, 40.329121, 36.293846>,  <34.951881, 40.506741, 36.199215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082630, 40.329121, 36.293846>,  <35.300545, 40.033085, 36.451569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082630, 40.329121, 36.293846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774443, -0.624379, -0.101926,
		-0.321630, 0.249839, 0.913310,
		-0.544786, 0.740089, -0.394305,
		34.919193, 40.551147, 36.175556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758335, 40.069622, 36.767357>,  <35.300545, 40.033085, 36.451569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758335, 40.069622, 36.767357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656254, 40.202431, 36.404121>,  <34.595005, 40.282116, 36.186180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656254, 40.202431, 36.404121>,  <34.758335, 40.069622, 36.767357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656254, 40.202431, 36.404121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808278, -0.588681, 0.011919,
		-0.530620, 0.737034, 0.418598,
		-0.255205, 0.332019, -0.908094,
		34.579693, 40.302036, 36.131695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079849, 39.996727, 36.876373>,  <34.758335, 40.069622, 36.767357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079849, 39.996727, 36.876373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134159, 40.052395, 36.484009>,  <34.166744, 40.085796, 36.248589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134159, 40.052395, 36.484009>,  <34.079849, 39.996727, 36.876373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134159, 40.052395, 36.484009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771254, -0.606619, -0.192823,
		-0.621878, 0.782716, 0.024973,
		0.135776, 0.139172, -0.980916,
		34.174892, 40.094147, 36.189735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445995, 40.139347, 36.627693>,  <34.079849, 39.996727, 36.876373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445995, 40.139347, 36.627693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655594, 40.018204, 36.309269>,  <33.781353, 39.945518, 36.118214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655594, 40.018204, 36.309269>,  <33.445995, 40.139347, 36.627693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655594, 40.018204, 36.309269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840696, -0.333815, -0.426378,
		-0.136605, 0.892662, -0.429526,
		0.523994, -0.302856, -0.796058,
		33.812794, 39.927345, 36.070450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913742, 40.144913, 36.179974>,  <33.445995, 40.139347, 36.627693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913742, 40.144913, 36.179974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207283, 39.949474, 35.991192>,  <33.383408, 39.832211, 35.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207283, 39.949474, 35.991192>,  <32.913742, 40.144913, 36.179974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207283, 39.949474, 35.991192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667863, -0.645950, -0.369741,
		-0.124204, 0.586534, -0.800344,
		0.733848, -0.488596, -0.471954,
		33.427437, 39.802895, 35.849606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675312, 40.177853, 35.522469>,  <32.913742, 40.144913, 36.179974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675312, 40.177853, 35.522469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931931, 39.878429, 35.589497>,  <33.085903, 39.698776, 35.629711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931931, 39.878429, 35.589497>,  <32.675312, 40.177853, 35.522469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931931, 39.878429, 35.589497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654503, -0.648095, -0.389358,
		0.400057, 0.140117, -0.905716,
		0.641545, -0.748559, 0.167567,
		33.124393, 39.653862, 35.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698463, 39.741447, 34.986984>,  <32.675312, 40.177853, 35.522469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698463, 39.741447, 34.986984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838745, 39.504883, 35.277431>,  <32.922916, 39.362946, 35.451698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838745, 39.504883, 35.277431>,  <32.698463, 39.741447, 34.986984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838745, 39.504883, 35.277431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745230, -0.645801, -0.166053,
		0.567130, -0.482886, -0.667221,
		0.350708, -0.591407, 0.726115,
		32.943958, 39.327461, 35.495266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694702, 39.034576, 34.660618>,  <32.698463, 39.741447, 34.986984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694702, 39.034576, 34.660618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721756, 38.943527, 35.049175>,  <32.737988, 38.888897, 35.282310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721756, 38.943527, 35.049175>,  <32.694702, 39.034576, 34.660618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721756, 38.943527, 35.049175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673808, -0.728465, -0.123781,
		0.735805, -0.646164, -0.202643,
		0.067636, -0.227621, 0.971398,
		32.742046, 38.875240, 35.340595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797054, 38.286217, 34.710011>,  <32.694702, 39.034576, 34.660618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797054, 38.286217, 34.710011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642750, 38.401276, 35.060658>,  <32.550167, 38.470310, 35.271046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642750, 38.401276, 35.060658>,  <32.797054, 38.286217, 34.710011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642750, 38.401276, 35.060658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617873, -0.786155, -0.013934,
		0.685146, -0.547011, 0.480993,
		-0.385757, 0.287646, 0.876614,
		32.527023, 38.487568, 35.323643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684826, 37.633339, 34.947533>,  <32.797054, 38.286217, 34.710011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684826, 37.633339, 34.947533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474358, 37.864670, 35.196907>,  <32.348076, 38.003468, 35.346531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474358, 37.864670, 35.196907>,  <32.684826, 37.633339, 34.947533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474358, 37.864670, 35.196907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592885, -0.775053, 0.218588,
		0.609613, -0.254611, 0.750696,
		-0.526174, 0.578330, 0.623437,
		32.316505, 38.038170, 35.383938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539062, 37.185528, 35.507549>,  <32.684826, 37.633339, 34.947533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539062, 37.185528, 35.507549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283081, 37.489540, 35.552834>,  <32.129494, 37.671947, 35.580006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283081, 37.489540, 35.552834>,  <32.539062, 37.185528, 35.507549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283081, 37.489540, 35.552834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697626, -0.636427, 0.329057,
		0.322144, 0.131600, 0.937499,
		-0.639954, 0.760028, 0.113214,
		32.091095, 37.717548, 35.586796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244534, 37.009750, 36.069820>,  <32.539062, 37.185528, 35.507549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244534, 37.009750, 36.069820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988743, 37.253361, 35.882137>,  <31.835268, 37.399529, 35.769527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988743, 37.253361, 35.882137>,  <32.244534, 37.009750, 36.069820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988743, 37.253361, 35.882137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742554, -0.647409, 0.171682,
		-0.199210, 0.458198, 0.866239,
		-0.639475, 0.609029, -0.469207,
		31.796900, 37.436069, 35.741375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669270, 37.160374, 36.507656>,  <32.244534, 37.009750, 36.069820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669270, 37.160374, 36.507656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549963, 37.222569, 36.130962>,  <31.478378, 37.259884, 35.904945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549963, 37.222569, 36.130962>,  <31.669270, 37.160374, 36.507656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549963, 37.222569, 36.130962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776446, -0.613358, 0.144650,
		-0.555128, 0.774349, 0.303670,
		-0.298268, 0.155484, -0.941733,
		31.460482, 37.269215, 35.848442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950953, 37.248043, 36.603474>,  <31.669270, 37.160374, 36.507656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950953, 37.248043, 36.603474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015743, 37.185841, 36.213688>,  <31.054617, 37.148521, 35.979816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015743, 37.185841, 36.213688>,  <30.950953, 37.248043, 36.603474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015743, 37.185841, 36.213688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811663, -0.582618, -0.041943,
		-0.561219, 0.797731, -0.220587,
		0.161977, -0.155503, -0.974465,
		31.064337, 37.139191, 35.921349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273277, 37.366390, 36.303936>,  <30.950953, 37.248043, 36.603474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273277, 37.366390, 36.303936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470146, 37.135128, 36.043629>,  <30.588266, 36.996368, 35.887444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470146, 37.135128, 36.043629>,  <30.273277, 37.366390, 36.303936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470146, 37.135128, 36.043629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730444, -0.680949, 0.052540,
		-0.473517, 0.449492, -0.757455,
		0.492171, -0.578157, -0.650770,
		30.617798, 36.961681, 35.848396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797037, 37.152966, 35.792034>,  <30.273277, 37.366390, 36.303936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797037, 37.152966, 35.792034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086143, 36.880993, 35.742542>,  <30.259607, 36.717812, 35.712849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086143, 36.880993, 35.742542>,  <29.797037, 37.152966, 35.792034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086143, 36.880993, 35.742542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677461, -0.732446, 0.067602,
		-0.136588, 0.034960, -0.990011,
		0.722766, -0.679927, -0.123727,
		30.302973, 36.677013, 35.705425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409245, 36.760826, 35.329079>,  <29.797037, 37.152966, 35.792034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409245, 36.760826, 35.329079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705711, 36.528027, 35.462914>,  <29.883591, 36.388348, 35.543213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705711, 36.528027, 35.462914>,  <29.409245, 36.760826, 35.329079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705711, 36.528027, 35.462914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594414, -0.800575, -0.075841,
		0.311999, -0.142670, -0.939309,
		0.741167, -0.582001, 0.334584,
		29.928062, 36.353428, 35.563290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549377, 36.245636, 34.851379>,  <29.409245, 36.760826, 35.329079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549377, 36.245636, 34.851379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697966, 36.089916, 35.188534>,  <29.787119, 35.996483, 35.390827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697966, 36.089916, 35.188534>,  <29.549377, 36.245636, 34.851379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697966, 36.089916, 35.188534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660659, -0.748696, -0.054636,
		0.652335, -0.536565, -0.535311,
		0.371469, -0.389299, 0.842886,
		29.809406, 35.973125, 35.441399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554522, 35.563671, 34.678875>,  <29.549377, 36.245636, 34.851379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554522, 35.563671, 34.678875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573952, 35.546120, 35.078018>,  <29.585609, 35.535587, 35.317505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573952, 35.546120, 35.078018>,  <29.554522, 35.563671, 34.678875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573952, 35.546120, 35.078018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400783, -0.915938, -0.020767,
		0.914884, -0.398914, -0.062079,
		0.048576, -0.043879, 0.997855,
		29.588524, 35.532955, 35.377377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644754, 34.854591, 34.814293>,  <29.554522, 35.563671, 34.678875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644754, 34.854591, 34.814293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515322, 34.992149, 35.166889>,  <29.437662, 35.074684, 35.378448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515322, 34.992149, 35.166889>,  <29.644754, 34.854591, 34.814293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515322, 34.992149, 35.166889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588506, -0.802641, 0.097098,
		0.740915, -0.487345, 0.462103,
		-0.323583, 0.343891, 0.881495,
		29.418247, 35.095318, 35.431339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752222, 34.405231, 35.242519>,  <29.644754, 34.854591, 34.814293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752222, 34.405231, 35.242519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444796, 34.619583, 35.382313>,  <29.260340, 34.748196, 35.466187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444796, 34.619583, 35.382313>,  <29.752222, 34.405231, 35.242519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444796, 34.619583, 35.382313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509685, -0.843035, 0.171794,
		0.386686, -0.046090, 0.921059,
		-0.768567, 0.535880, 0.349481,
		29.214226, 34.780346, 35.487156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126905, 33.892021, 35.630585>,  <29.752222, 34.405231, 35.242519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126905, 33.892021, 35.630585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319294, 33.541866, 35.611115>,  <30.434727, 33.331776, 35.599434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319294, 33.541866, 35.611115>,  <30.126905, 33.892021, 35.630585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319294, 33.541866, 35.611115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867347, 0.483191, -0.119311,
		0.127960, 0.015170, 0.991663,
		0.480973, -0.875384, -0.048671,
		30.463585, 33.279251, 35.596512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741863, 33.582272, 36.091789>,  <30.126905, 33.892021, 35.630585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741863, 33.582272, 36.091789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759123, 33.511467, 35.698486>,  <30.769478, 33.468983, 35.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759123, 33.511467, 35.698486>,  <30.741863, 33.582272, 36.091789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759123, 33.511467, 35.698486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653313, 0.749592, -0.106279,
		0.755858, -0.637792, 0.147988,
		0.043147, -0.177014, -0.983262,
		30.772066, 33.458363, 35.403507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307508, 33.241554, 35.691792>,  <30.741863, 33.582272, 36.091789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307508, 33.241554, 35.691792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149567, 33.564396, 35.516216>,  <31.054802, 33.758102, 35.410870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149567, 33.564396, 35.516216>,  <31.307508, 33.241554, 35.691792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149567, 33.564396, 35.516216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875220, 0.475750, 0.087476,
		0.279430, -0.349631, -0.894247,
		-0.394854, 0.807106, -0.438942,
		31.031111, 33.806526, 35.384533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631330, 33.366390, 35.064056>,  <31.307508, 33.241554, 35.691792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631330, 33.366390, 35.064056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485731, 33.656261, 35.298096>,  <31.398371, 33.830185, 35.438519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485731, 33.656261, 35.298096>,  <31.631330, 33.366390, 35.064056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485731, 33.656261, 35.298096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930562, 0.256332, 0.261435,
		0.039477, 0.639635, -0.767665,
		-0.364000, 0.724680, 0.585101,
		31.376532, 33.873665, 35.473625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881556, 34.015400, 34.912964>,  <31.631330, 33.366390, 35.064056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881556, 34.015400, 34.912964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819870, 34.020947, 35.308140>,  <31.782858, 34.024273, 35.545246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819870, 34.020947, 35.308140>,  <31.881556, 34.015400, 34.912964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819870, 34.020947, 35.308140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970008, 0.192267, 0.148717,
		-0.187886, 0.981245, -0.043099,
		-0.154215, 0.013865, 0.987940,
		31.773605, 34.025105, 35.604523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289181, 34.538097, 35.240833>,  <31.881556, 34.015400, 34.912964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289181, 34.538097, 35.240833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233902, 34.267994, 35.530640>,  <32.200737, 34.105930, 35.704525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233902, 34.267994, 35.530640>,  <32.289181, 34.538097, 35.240833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233902, 34.267994, 35.530640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950483, 0.115179, 0.288646,
		-0.278361, 0.728529, 0.625908,
		-0.138195, -0.675262, 0.724516,
		32.192444, 34.065414, 35.747993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682129, 34.889008, 35.800018>,  <32.289181, 34.538097, 35.240833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682129, 34.889008, 35.800018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639729, 34.493504, 35.842178>,  <32.614288, 34.256199, 35.867474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639729, 34.493504, 35.842178>,  <32.682129, 34.889008, 35.800018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639729, 34.493504, 35.842178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976783, -0.083700, 0.197203,
		-0.186165, 0.123853, 0.974681,
		-0.106005, -0.988764, 0.105396,
		32.607925, 34.196873, 35.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787907, 34.653767, 36.509209>,  <32.682129, 34.889008, 35.800018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787907, 34.653767, 36.509209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881500, 34.384178, 36.228916>,  <32.937656, 34.222427, 36.060741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881500, 34.384178, 36.228916>,  <32.787907, 34.653767, 36.509209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881500, 34.384178, 36.228916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947859, -0.002265, 0.318682,
		-0.216369, -0.738756, 0.638297,
		0.233983, -0.673969, -0.700727,
		32.951694, 34.181988, 36.018700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045395, 34.649105, 37.223030>,  <32.787907, 34.653767, 36.509209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045395, 34.649105, 37.223030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409199, 34.486313, 37.256882>,  <33.627480, 34.388638, 37.277195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409199, 34.486313, 37.256882>,  <33.045395, 34.649105, 37.223030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409199, 34.486313, 37.256882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112755, -0.045577, 0.992577,
		-0.400100, -0.912300, -0.087341,
		0.909509, -0.406978, 0.084631,
		33.682053, 34.364220, 37.282272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980789, 34.043976, 37.649837>,  <33.045395, 34.649105, 37.223030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980789, 34.043976, 37.649837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374416, 34.111294, 37.672783>,  <33.610592, 34.151684, 37.686550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374416, 34.111294, 37.672783>,  <32.980789, 34.043976, 37.649837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374416, 34.111294, 37.672783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024754, -0.189794, 0.981512,
		0.176071, -0.967293, -0.182604,
		0.984066, 0.168296, 0.057362,
		33.669636, 34.161781, 37.689991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121918, 33.424149, 38.061565>,  <32.980789, 34.043976, 37.649837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121918, 33.424149, 38.061565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433868, 33.674061, 38.076752>,  <33.621040, 33.824009, 38.085861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433868, 33.674061, 38.076752>,  <33.121918, 33.424149, 38.061565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433868, 33.674061, 38.076752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189547, -0.293531, 0.936969,
		0.596545, -0.723524, -0.347343,
		0.779876, 0.624782, 0.037962,
		33.667831, 33.861496, 38.088139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585781, 33.068260, 38.445473>,  <33.121918, 33.424149, 38.061565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585781, 33.068260, 38.445473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736900, 33.437168, 38.478184>,  <33.827572, 33.658512, 38.497810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736900, 33.437168, 38.478184>,  <33.585781, 33.068260, 38.445473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736900, 33.437168, 38.478184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234844, -0.180888, 0.955054,
		0.895609, -0.341614, -0.284929,
		0.377799, 0.922269, 0.081779,
		33.850239, 33.713848, 38.502716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219284, 33.081608, 38.799000>,  <33.585781, 33.068260, 38.445473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219284, 33.081608, 38.799000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030903, 33.431004, 38.848358>,  <33.917873, 33.640640, 38.877972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030903, 33.431004, 38.848358>,  <34.219284, 33.081608, 38.799000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030903, 33.431004, 38.848358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276088, 0.013090, 0.961043,
		0.837842, 0.486674, -0.247323,
		-0.470952, 0.873486, 0.123397,
		33.889618, 33.693050, 38.885376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693249, 33.578163, 39.250839>,  <34.219284, 33.081608, 38.799000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693249, 33.578163, 39.250839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322235, 33.727280, 39.261524>,  <34.099628, 33.816750, 39.267933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322235, 33.727280, 39.261524>,  <34.693249, 33.578163, 39.250839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322235, 33.727280, 39.261524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028599, -0.000463, 0.999591,
		0.372652, 0.927915, -0.010232,
		-0.927530, 0.372792, 0.026710,
		34.043976, 33.839119, 39.269539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670658, 34.193653, 39.662762>,  <34.693249, 33.578163, 39.250839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670658, 34.193653, 39.662762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305794, 34.030121, 39.674255>,  <34.086876, 33.931999, 39.681152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305794, 34.030121, 39.674255>,  <34.670658, 34.193653, 39.662762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305794, 34.030121, 39.674255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057348, -0.057890, 0.996674,
		-0.405811, 0.910771, 0.076251,
		-0.912156, -0.408834, 0.028738,
		34.032146, 33.907471, 39.682877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430515, 34.584766, 40.187378>,  <34.670658, 34.193653, 39.662762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430515, 34.584766, 40.187378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207237, 34.256187, 40.140663>,  <34.073269, 34.059040, 40.112633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207237, 34.256187, 40.140663>,  <34.430515, 34.584766, 40.187378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207237, 34.256187, 40.140663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002374, -0.139177, 0.990265,
		-0.829704, 0.553042, 0.075738,
		-0.558199, -0.821446, -0.116789,
		34.039776, 34.009754, 40.105625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865761, 34.677872, 40.594185>,  <34.430515, 34.584766, 40.187378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865761, 34.677872, 40.594185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879303, 34.282322, 40.536243>,  <33.887428, 34.044991, 40.501476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879303, 34.282322, 40.536243>,  <33.865761, 34.677872, 40.594185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879303, 34.282322, 40.536243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131027, -0.148081, 0.980257,
		-0.990801, -0.014203, -0.134582,
		0.033852, -0.988873, -0.144858,
		33.889458, 33.985661, 40.492786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457775, 34.441372, 41.082081>,  <33.865761, 34.677872, 40.594185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457775, 34.441372, 41.082081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640079, 34.100204, 40.980255>,  <33.749462, 33.895504, 40.919159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640079, 34.100204, 40.980255>,  <33.457775, 34.441372, 41.082081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640079, 34.100204, 40.980255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158845, -0.359344, 0.919587,
		-0.875812, -0.378678, -0.299258,
		0.455764, -0.852922, -0.254566,
		33.776810, 33.844330, 40.903885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986088, 33.731274, 41.197044>,  <33.457775, 34.441372, 41.082081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986088, 33.731274, 41.197044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368862, 33.616673, 41.215736>,  <33.598526, 33.547913, 41.226952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368862, 33.616673, 41.215736>,  <32.986088, 33.731274, 41.197044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368862, 33.616673, 41.215736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190386, -0.497918, 0.846068,
		-0.219132, -0.818532, -0.531024,
		0.956940, -0.286500, 0.046727,
		33.655945, 33.530724, 41.229755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881138, 32.987888, 41.209133>,  <32.986088, 33.731274, 41.197044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881138, 32.987888, 41.209133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248230, 33.072029, 41.343903>,  <33.468487, 33.122513, 41.424767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248230, 33.072029, 41.343903>,  <32.881138, 32.987888, 41.209133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248230, 33.072029, 41.343903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215002, -0.450162, 0.866677,
		0.333978, -0.867817, -0.367902,
		0.917732, 0.210351, 0.336927,
		33.523548, 33.135136, 41.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139938, 32.376675, 41.408386>,  <32.881138, 32.987888, 41.209133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139938, 32.376675, 41.408386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345509, 32.657871, 41.605034>,  <33.468849, 32.826591, 41.723022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345509, 32.657871, 41.605034>,  <33.139938, 32.376675, 41.408386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345509, 32.657871, 41.605034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004902, -0.570670, 0.821165,
		0.857823, -0.424424, -0.289833,
		0.513921, 0.702994, 0.491615,
		33.499683, 32.868771, 41.752518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811634, 32.041542, 41.608711>,  <33.139938, 32.376675, 41.408386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811634, 32.041542, 41.608711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734985, 32.348961, 41.852882>,  <33.688995, 32.533413, 41.999386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734985, 32.348961, 41.852882>,  <33.811634, 32.041542, 41.608711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734985, 32.348961, 41.852882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082217, -0.607195, 0.790288,
		0.978019, 0.201622, 0.053164,
		-0.191620, 0.768546, 0.610425,
		33.677498, 32.579525, 42.036011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224319, 31.945726, 42.219112>,  <33.811634, 32.041542, 41.608711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224319, 31.945726, 42.219112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960438, 32.217136, 42.348354>,  <33.802109, 32.379982, 42.425900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960438, 32.217136, 42.348354>,  <34.224319, 31.945726, 42.219112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960438, 32.217136, 42.348354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040862, -0.396907, 0.916949,
		0.750416, 0.618115, 0.234115,
		-0.659701, 0.678527, 0.323103,
		33.762527, 32.420696, 42.445286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573940, 32.057503, 42.754631>,  <34.224319, 31.945726, 42.219112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573940, 32.057503, 42.754631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203808, 32.202835, 42.797993>,  <33.981728, 32.290035, 42.824009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203808, 32.202835, 42.797993>,  <34.573940, 32.057503, 42.754631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203808, 32.202835, 42.797993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052890, -0.406812, 0.911980,
		0.375453, 0.838149, 0.395652,
		-0.925331, 0.363332, 0.108409,
		33.926208, 32.311836, 42.830517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469807, 32.542160, 43.412483>,  <34.573940, 32.057503, 42.754631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469807, 32.542160, 43.412483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110977, 32.382160, 43.337364>,  <33.895679, 32.286160, 43.292294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110977, 32.382160, 43.337364>,  <34.469807, 32.542160, 43.412483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110977, 32.382160, 43.337364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120671, -0.187085, 0.974904,
		-0.425093, 0.897219, 0.119560,
		-0.897070, -0.399998, -0.187797,
		33.841858, 32.262161, 43.281025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105267, 32.708790, 44.093937>,  <34.469807, 32.542160, 43.412483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105267, 32.708790, 44.093937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873569, 32.447868, 43.898396>,  <33.734550, 32.291313, 43.781071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873569, 32.447868, 43.898396>,  <34.105267, 32.708790, 44.093937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873569, 32.447868, 43.898396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227553, -0.446471, 0.865380,
		-0.782752, 0.612502, 0.110180,
		-0.579240, -0.652307, -0.488853,
		33.699799, 32.252174, 43.751740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555893, 32.677250, 44.568718>,  <34.105267, 32.708790, 44.093937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555893, 32.677250, 44.568718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539593, 32.336395, 44.360027>,  <33.529812, 32.131882, 44.234814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539593, 32.336395, 44.360027>,  <33.555893, 32.677250, 44.568718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539593, 32.336395, 44.360027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257052, -0.495646, 0.829614,
		-0.965538, 0.167919, -0.198846,
		-0.040751, -0.852138, -0.521729,
		33.527367, 32.080753, 44.203510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041172, 32.186378, 44.843468>,  <33.555893, 32.677250, 44.568718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041172, 32.186378, 44.843468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224369, 31.923903, 44.603580>,  <33.334286, 31.766417, 44.459648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224369, 31.923903, 44.603580>,  <33.041172, 32.186378, 44.843468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224369, 31.923903, 44.603580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207532, -0.734908, 0.645631,
		-0.864394, -0.171231, -0.472760,
		0.457988, -0.656193, -0.599715,
		33.361767, 31.727045, 44.423668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620155, 31.601776, 44.745052>,  <33.041172, 32.186378, 44.843468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620155, 31.601776, 44.745052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987644, 31.458437, 44.678665>,  <33.208138, 31.372433, 44.638832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987644, 31.458437, 44.678665>,  <32.620155, 31.601776, 44.745052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987644, 31.458437, 44.678665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151911, -0.708599, 0.689065,
		-0.364527, -0.607844, -0.705440,
		0.918718, -0.358347, -0.165966,
		33.263260, 31.350933, 44.628876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560501, 30.873480, 44.869576>,  <32.620155, 31.601776, 44.745052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560501, 30.873480, 44.869576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955276, 30.934250, 44.890980>,  <33.192142, 30.970713, 44.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955276, 30.934250, 44.890980>,  <32.560501, 30.873480, 44.869576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955276, 30.934250, 44.890980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084504, -0.771195, 0.630966,
		0.137125, -0.618205, -0.773963,
		0.986942, 0.151924, 0.053509,
		33.251358, 30.979828, 44.907032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785866, 30.170235, 44.793522>,  <32.560501, 30.873480, 44.869576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785866, 30.170235, 44.793522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059162, 30.417526, 44.948944>,  <33.223141, 30.565901, 45.042198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059162, 30.417526, 44.948944>,  <32.785866, 30.170235, 44.793522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059162, 30.417526, 44.948944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120802, -0.620492, 0.774853,
		0.720131, -0.482474, -0.498629,
		0.683241, 0.618231, 0.388552,
		33.264133, 30.602995, 45.065510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304485, 29.707035, 45.043964>,  <32.785866, 30.170235, 44.793522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304485, 29.707035, 45.043964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383797, 30.048626, 45.236385>,  <33.431385, 30.253580, 45.351837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383797, 30.048626, 45.236385>,  <33.304485, 29.707035, 45.043964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383797, 30.048626, 45.236385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203719, -0.515983, 0.832021,
		0.958740, -0.066976, -0.276282,
		0.198283, 0.853976, 0.481050,
		33.443283, 30.304819, 45.380699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820015, 29.551575, 45.410480>,  <33.304485, 29.707035, 45.043964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820015, 29.551575, 45.410480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709545, 29.865768, 45.632019>,  <33.643265, 30.054285, 45.764942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709545, 29.865768, 45.632019>,  <33.820015, 29.551575, 45.410480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709545, 29.865768, 45.632019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246021, -0.499280, 0.830778,
		0.929087, 0.365695, -0.055358,
		-0.276173, 0.785485, 0.553844,
		33.626694, 30.101414, 45.798172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373207, 29.688395, 45.789951>,  <33.820015, 29.551575, 45.410480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373207, 29.688395, 45.789951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063675, 29.845942, 45.988365>,  <33.877956, 29.940470, 46.107414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063675, 29.845942, 45.988365>,  <34.373207, 29.688395, 45.789951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063675, 29.845942, 45.988365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224313, -0.561973, 0.796160,
		0.592339, 0.727362, 0.346524,
		-0.773834, 0.393867, 0.496035,
		33.831524, 29.964102, 46.137177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535500, 30.019350, 46.498692>,  <34.373207, 29.688395, 45.789951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535500, 30.019350, 46.498692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149956, 29.914640, 46.518478>,  <33.918629, 29.851814, 46.530350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149956, 29.914640, 46.518478>,  <34.535500, 30.019350, 46.498692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149956, 29.914640, 46.518478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173330, -0.475211, 0.862630,
		-0.202307, 0.840030, 0.503410,
		-0.963861, -0.261772, 0.049464,
		33.860798, 29.836109, 46.533318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368744, 30.165319, 47.243961>,  <34.535500, 30.019350, 46.498692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368744, 30.165319, 47.243961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112591, 29.877731, 47.135895>,  <33.958900, 29.705177, 47.071056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112591, 29.877731, 47.135895>,  <34.368744, 30.165319, 47.243961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112591, 29.877731, 47.135895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128050, -0.446768, 0.885439,
		-0.757306, 0.532426, 0.378167,
		-0.640384, -0.718972, -0.270163,
		33.920475, 29.662039, 47.054848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920944, 30.124151, 47.811657>,  <34.368744, 30.165319, 47.243961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920944, 30.124151, 47.811657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837795, 29.791061, 47.606384>,  <33.787907, 29.591208, 47.483219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837795, 29.791061, 47.606384>,  <33.920944, 30.124151, 47.811657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837795, 29.791061, 47.606384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371506, -0.552541, 0.746111,
		-0.904860, -0.035552, 0.424222,
		-0.207875, -0.832727, -0.513180,
		33.775433, 29.541243, 47.452431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522591, 29.735432, 48.299229>,  <33.920944, 30.124151, 47.811657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522591, 29.735432, 48.299229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651417, 29.453875, 48.045990>,  <33.728714, 29.284941, 47.894047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651417, 29.453875, 48.045990>,  <33.522591, 29.735432, 48.299229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651417, 29.453875, 48.045990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213954, -0.597310, 0.772945,
		-0.922223, -0.384394, -0.041774,
		0.322067, -0.703891, -0.633096,
		33.748035, 29.242708, 47.856060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171730, 29.160364, 48.536537>,  <33.522591, 29.735432, 48.299229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171730, 29.160364, 48.536537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504284, 29.057146, 48.339676>,  <33.703815, 28.995214, 48.221558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504284, 29.057146, 48.339676>,  <33.171730, 29.160364, 48.536537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504284, 29.057146, 48.339676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245561, -0.623890, 0.741931,
		-0.498505, -0.737681, -0.455323,
		0.831380, -0.258046, -0.492158,
		33.753696, 28.979733, 48.192028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193501, 28.358213, 48.525150>,  <33.171730, 29.160364, 48.536537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193501, 28.358213, 48.525150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570347, 28.482491, 48.474720>,  <33.796455, 28.557056, 48.444462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570347, 28.482491, 48.474720>,  <33.193501, 28.358213, 48.525150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570347, 28.482491, 48.474720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316200, -0.698172, 0.642319,
		0.111541, -0.645002, -0.755997,
		0.942113, 0.310691, -0.126075,
		33.852982, 28.575697, 48.436897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515865, 27.736633, 48.492065>,  <33.193501, 28.358213, 48.525150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515865, 27.736633, 48.492065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791897, 28.016264, 48.566982>,  <33.957516, 28.184042, 48.611931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791897, 28.016264, 48.566982>,  <33.515865, 27.736633, 48.492065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791897, 28.016264, 48.566982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588465, -0.692635, 0.417093,
		0.421305, -0.177613, -0.889357,
		0.690080, 0.699079, 0.187291,
		33.998920, 28.225988, 48.623169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112816, 27.455324, 48.357769>,  <33.515865, 27.736633, 48.492065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112816, 27.455324, 48.357769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223179, 27.746271, 48.609104>,  <34.289398, 27.920839, 48.759907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223179, 27.746271, 48.609104>,  <34.112816, 27.455324, 48.357769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223179, 27.746271, 48.609104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625120, -0.632368, 0.457531,
		0.730136, 0.266552, -0.629167,
		0.275910, 0.727365, 0.628342,
		34.305950, 27.964481, 48.797607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646400, 27.136778, 48.449265>,  <34.112816, 27.455324, 48.357769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646400, 27.136778, 48.449265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648075, 27.411945, 48.739574>,  <34.649082, 27.577045, 48.913761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648075, 27.411945, 48.739574>,  <34.646400, 27.136778, 48.449265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648075, 27.411945, 48.739574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635288, -0.562331, 0.529333,
		0.772264, 0.458859, -0.439383,
		0.004190, 0.687919, 0.725775,
		34.649334, 27.618320, 48.957306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291679, 27.235950, 48.630707>,  <34.646400, 27.136778, 48.449265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291679, 27.235950, 48.630707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130981, 27.393053, 48.961605>,  <35.034561, 27.487314, 49.160145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130981, 27.393053, 48.961605>,  <35.291679, 27.235950, 48.630707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130981, 27.393053, 48.961605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617672, -0.550704, 0.561432,
		0.676076, 0.736523, -0.021351,
		-0.401749, 0.392759, 0.827247,
		35.010456, 27.510881, 49.209778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844948, 27.407124, 49.181248>,  <35.291679, 27.235950, 48.630707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844948, 27.407124, 49.181248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496361, 27.367392, 49.373360>,  <35.287209, 27.343552, 49.488628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496361, 27.367392, 49.373360>,  <35.844948, 27.407124, 49.181248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496361, 27.367392, 49.373360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416951, -0.665683, 0.618885,
		0.258242, 0.739594, 0.621539,
		-0.871472, -0.099329, 0.480282,
		35.234921, 27.337593, 49.517445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061855, 27.333260, 49.885136>,  <35.844948, 27.407124, 49.181248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061855, 27.333260, 49.885136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686836, 27.194113, 49.885563>,  <35.461826, 27.110624, 49.885818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686836, 27.194113, 49.885563>,  <36.061855, 27.333260, 49.885136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686836, 27.194113, 49.885563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247186, -0.664032, 0.705663,
		-0.244768, 0.661854, 0.708546,
		-0.937543, -0.347867, 0.001068,
		35.405575, 27.089752, 49.885883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897907, 27.470394, 50.489700>,  <36.061855, 27.333260, 49.885136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897907, 27.470394, 50.489700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664116, 27.164652, 50.380779>,  <35.523842, 26.981207, 50.315426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664116, 27.164652, 50.380779>,  <35.897907, 27.470394, 50.489700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664116, 27.164652, 50.380779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376437, -0.552719, 0.743504,
		-0.718806, 0.332057, 0.610783,
		-0.584477, -0.764356, -0.272299,
		35.488773, 26.935345, 50.299091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627357, 27.217354, 51.108788>,  <35.897907, 27.470394, 50.489700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627357, 27.217354, 51.108788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597771, 26.938267, 50.823769>,  <35.580017, 26.770815, 50.652760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597771, 26.938267, 50.823769>,  <35.627357, 27.217354, 51.108788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597771, 26.938267, 50.823769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158337, -0.713654, 0.682368,
		-0.984610, -0.062346, 0.163264,
		-0.073971, -0.697718, -0.712543,
		35.575581, 26.728951, 50.610004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370094, 27.450157, 51.354050>,  <35.627357, 27.217354, 51.108788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370094, 27.450157, 51.354050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597496, 27.324181, 51.658054>,  <36.733936, 27.248594, 51.840458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597496, 27.324181, 51.658054>,  <36.370094, 27.450157, 51.354050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597496, 27.324181, 51.658054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246474, -0.816181, -0.522589,
		0.784890, 0.484417, -0.386378,
		0.568505, -0.314943, 0.760009,
		36.768047, 27.229698, 51.886059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966557, 27.339478, 51.020828>,  <36.370094, 27.450157, 51.354050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966557, 27.339478, 51.020828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915569, 27.105921, 51.341534>,  <36.884975, 26.965788, 51.533958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915569, 27.105921, 51.341534>,  <36.966557, 27.339478, 51.020828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915569, 27.105921, 51.341534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124992, -0.811369, -0.571014,
		0.983935, 0.027428, 0.176404,
		-0.127467, -0.583890, 0.801763,
		36.877331, 26.930754, 51.582062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498871, 26.862806, 51.144852>,  <36.966557, 27.339478, 51.020828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498871, 26.862806, 51.144852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150723, 26.716673, 51.276905>,  <36.941833, 26.628992, 51.356136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150723, 26.716673, 51.276905>,  <37.498871, 26.862806, 51.144852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150723, 26.716673, 51.276905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116762, -0.804468, -0.582408,
		0.478357, -0.468362, 0.742840,
		-0.870368, -0.365335, 0.330136,
		36.889610, 26.607073, 51.375946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544979, 26.190737, 51.332691>,  <37.498871, 26.862806, 51.144852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544979, 26.190737, 51.332691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151451, 26.224977, 51.269733>,  <36.915333, 26.245522, 51.231960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151451, 26.224977, 51.269733>,  <37.544979, 26.190737, 51.332691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151451, 26.224977, 51.269733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024224, -0.806863, -0.590241,
		-0.177520, -0.584503, 0.791734,
		-0.983819, 0.085601, -0.157394,
		36.856304, 26.250658, 51.222515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403748, 25.695108, 50.819191>,  <37.544979, 26.190737, 51.332691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403748, 25.695108, 50.819191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018082, 25.779907, 50.882984>,  <36.786682, 25.830788, 50.921261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018082, 25.779907, 50.882984>,  <37.403748, 25.695108, 50.819191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018082, 25.779907, 50.882984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260639, -0.869046, -0.420507,
		0.049451, -0.447008, 0.893162,
		-0.964169, 0.211998, 0.159483,
		36.728832, 25.843506, 50.930828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002045, 25.086050, 51.103050>,  <37.403748, 25.695108, 50.819191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002045, 25.086050, 51.103050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784958, 25.344631, 50.888554>,  <36.654705, 25.499781, 50.759857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784958, 25.344631, 50.888554>,  <37.002045, 25.086050, 51.103050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784958, 25.344631, 50.888554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245493, -0.732656, -0.634782,
		-0.803238, -0.212864, 0.556326,
		-0.542718, 0.646455, -0.536240,
		36.622143, 25.538568, 50.727680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249641, 25.024881, 51.033012>,  <37.002045, 25.086050, 51.103050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249641, 25.024881, 51.033012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423664, 25.178102, 50.707069>,  <36.528076, 25.270035, 50.511501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423664, 25.178102, 50.707069>,  <36.249641, 25.024881, 51.033012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423664, 25.178102, 50.707069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280109, -0.802511, -0.526797,
		-0.855727, 0.457434, -0.241837,
		0.435052, 0.383054, -0.814862,
		36.554180, 25.293018, 50.462612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299774, 24.454542, 50.619591>,  <36.249641, 25.024881, 51.033012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299774, 24.454542, 50.619591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429909, 24.729197, 50.359531>,  <36.507988, 24.893990, 50.203495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429909, 24.729197, 50.359531>,  <36.299774, 24.454542, 50.619591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429909, 24.729197, 50.359531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222014, -0.612867, -0.758356,
		-0.919168, 0.391060, -0.046943,
		0.325332, 0.686634, -0.650148,
		36.527508, 24.935186, 50.164486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028393, 24.241745, 50.499470>,  <36.299774, 24.454542, 50.619591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028393, 24.241745, 50.499470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706753, 24.197498, 50.265827>,  <36.513767, 24.170950, 50.125641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706753, 24.197498, 50.265827>,  <37.028393, 24.241745, 50.499470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706753, 24.197498, 50.265827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467442, 0.489425, -0.736180,
		0.367313, -0.865001, -0.341840,
		-0.804101, -0.110618, -0.584110,
		36.465523, 24.164312, 50.090595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496643, 24.134718, 49.933628>,  <37.028393, 24.241745, 50.499470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496643, 24.134718, 49.933628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121323, 24.248455, 49.854904>,  <36.896130, 24.316698, 49.807671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121323, 24.248455, 49.854904>,  <37.496643, 24.134718, 49.933628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121323, 24.248455, 49.854904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330924, 0.573113, -0.749687,
		-0.100376, -0.768563, -0.631850,
		-0.938303, 0.284345, -0.196810,
		36.839832, 24.333759, 49.795860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349667, 24.176338, 49.126278>,  <37.496643, 24.134718, 49.933628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349667, 24.176338, 49.126278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067089, 24.397793, 49.302650>,  <36.897541, 24.530666, 49.408474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067089, 24.397793, 49.302650>,  <37.349667, 24.176338, 49.126278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067089, 24.397793, 49.302650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006274, 0.618068, -0.786100,
		-0.707742, -0.558101, -0.433156,
		-0.706443, 0.553638, 0.440934,
		36.855156, 24.563885, 49.434929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760727, 24.261837, 48.628414>,  <37.349667, 24.176338, 49.126278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760727, 24.261837, 48.628414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705330, 24.563553, 48.885120>,  <36.672092, 24.744583, 49.039146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705330, 24.563553, 48.885120>,  <36.760727, 24.261837, 48.628414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705330, 24.563553, 48.885120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141557, 0.626281, -0.766638,
		-0.980195, -0.197018, 0.020042,
		-0.138490, 0.754291, 0.641767,
		36.663784, 24.789841, 49.077652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125023, 24.726816, 48.453346>,  <36.760727, 24.261837, 48.628414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125023, 24.726816, 48.453346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343811, 24.961143, 48.692558>,  <36.475082, 25.101740, 48.836086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343811, 24.961143, 48.692558>,  <36.125023, 24.726816, 48.453346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343811, 24.961143, 48.692558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157082, 0.773496, -0.614028,
		-0.822284, 0.241913, 0.515099,
		0.546968, 0.585818, 0.598033,
		36.507900, 25.136889, 48.871967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743889, 25.358805, 48.664680>,  <36.125023, 24.726816, 48.453346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743889, 25.358805, 48.664680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122086, 25.461727, 48.744526>,  <36.349003, 25.523481, 48.792431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122086, 25.461727, 48.744526>,  <35.743889, 25.358805, 48.664680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122086, 25.461727, 48.744526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110769, 0.830505, -0.545887,
		-0.306238, 0.494019, 0.813734,
		0.945489, 0.257308, 0.199610,
		36.405731, 25.538919, 48.804409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706692, 26.066973, 49.016071>,  <35.743889, 25.358805, 48.664680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706692, 26.066973, 49.016071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064388, 26.006987, 48.847389>,  <36.279007, 25.970995, 48.746181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064388, 26.006987, 48.847389>,  <35.706692, 26.066973, 49.016071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064388, 26.006987, 48.847389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134439, 0.808692, -0.572663,
		0.426909, 0.568795, 0.703008,
		0.894245, -0.149964, -0.421706,
		36.332661, 25.961998, 48.720879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907265, 26.710579, 48.893623>,  <35.706692, 26.066973, 49.016071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907265, 26.710579, 48.893623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192226, 26.537096, 48.672939>,  <36.363201, 26.433006, 48.540531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192226, 26.537096, 48.672939>,  <35.907265, 26.710579, 48.893623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192226, 26.537096, 48.672939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009095, 0.780392, -0.625225,
		0.701713, 0.450429, 0.552008,
		0.712402, -0.433708, -0.551707,
		36.405949, 26.406984, 48.507427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377480, 27.250860, 48.734070>,  <35.907265, 26.710579, 48.893623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377480, 27.250860, 48.734070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466530, 26.967857, 48.465778>,  <36.519958, 26.798056, 48.304806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466530, 26.967857, 48.465778>,  <36.377480, 27.250860, 48.734070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466530, 26.967857, 48.465778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229187, 0.706691, -0.669374,
		0.947583, -0.004704, 0.319476,
		0.222622, -0.707507, -0.670726,
		36.533318, 26.755606, 48.264561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970531, 27.533428, 48.313332>,  <36.377480, 27.250860, 48.734070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970531, 27.533428, 48.313332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787544, 27.254738, 48.092319>,  <36.677750, 27.087524, 47.959713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787544, 27.254738, 48.092319>,  <36.970531, 27.533428, 48.313332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787544, 27.254738, 48.092319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009372, 0.625109, -0.780482,
		0.889175, -0.351870, -0.292499,
		-0.457471, -0.696726, -0.552533,
		36.650303, 27.045721, 47.926559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276093, 27.454901, 47.674477>,  <36.970531, 27.533428, 48.313332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276093, 27.454901, 47.674477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912151, 27.308891, 47.595558>,  <36.693787, 27.221285, 47.548206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912151, 27.308891, 47.595558>,  <37.276093, 27.454901, 47.674477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912151, 27.308891, 47.595558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008945, 0.492629, -0.870194,
		0.414831, -0.789985, -0.451485,
		-0.909854, -0.365022, -0.197292,
		36.639194, 27.199385, 47.536369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328342, 27.188274, 47.082237>,  <37.276093, 27.454901, 47.674477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328342, 27.188274, 47.082237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931137, 27.209642, 47.124336>,  <36.692814, 27.222464, 47.149593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931137, 27.209642, 47.124336>,  <37.328342, 27.188274, 47.082237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931137, 27.209642, 47.124336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071483, 0.437350, -0.896446,
		-0.093916, -0.897704, -0.430474,
		-0.993011, 0.053419, 0.105245,
		36.633232, 27.225668, 47.155910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012524, 26.867889, 46.487438>,  <37.328342, 27.188274, 47.082237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012524, 26.867889, 46.487438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716370, 27.104498, 46.615147>,  <36.538677, 27.246464, 46.691772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716370, 27.104498, 46.615147>,  <37.012524, 26.867889, 46.487438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716370, 27.104498, 46.615147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170606, 0.294054, -0.940439,
		-0.650173, -0.750755, -0.116796,
		-0.740384, 0.591523, 0.319269,
		36.494255, 27.281954, 46.710926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426384, 26.781269, 45.977589>,  <37.012524, 26.867889, 46.487438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426384, 26.781269, 45.977589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369156, 27.123503, 46.176586>,  <36.334820, 27.328844, 46.295986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369156, 27.123503, 46.176586>,  <36.426384, 26.781269, 45.977589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369156, 27.123503, 46.176586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149871, 0.478144, -0.865400,
		-0.978300, -0.198371, 0.059821,
		-0.143067, 0.855586, 0.497498,
		36.326237, 27.380178, 46.325836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901405, 27.055431, 45.569794>,  <36.426384, 26.781269, 45.977589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901405, 27.055431, 45.569794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040802, 27.366762, 45.778698>,  <36.124439, 27.553560, 45.904041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040802, 27.366762, 45.778698>,  <35.901405, 27.055431, 45.569794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040802, 27.366762, 45.778698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183463, 0.603057, -0.776314,
		-0.919182, 0.174723, 0.352954,
		0.348491, 0.778328, 0.522264,
		36.145348, 27.600260, 45.935379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504143, 27.612619, 45.307503>,  <35.901405, 27.055431, 45.569794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504143, 27.612619, 45.307503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837891, 27.766598, 45.465313>,  <36.038139, 27.858984, 45.559998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837891, 27.766598, 45.465313>,  <35.504143, 27.612619, 45.307503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837891, 27.766598, 45.465313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033115, 0.749456, -0.661225,
		-0.550213, 0.538640, 0.638069,
		0.834367, 0.384945, 0.394523,
		36.088200, 27.882082, 45.583672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327412, 28.186241, 45.548611>,  <35.504143, 27.612619, 45.307503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327412, 28.186241, 45.548611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723835, 28.225428, 45.512360>,  <35.961689, 28.248940, 45.490608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723835, 28.225428, 45.512360>,  <35.327412, 28.186241, 45.548611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723835, 28.225428, 45.512360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133420, 0.743086, -0.655761,
		0.003098, 0.661986, 0.749510,
		0.991055, 0.097968, -0.090624,
		36.021152, 28.254818, 45.485172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555386, 28.919424, 45.362259>,  <35.327412, 28.186241, 45.548611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555386, 28.919424, 45.362259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885246, 28.740574, 45.223682>,  <36.083164, 28.633263, 45.140537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885246, 28.740574, 45.223682>,  <35.555386, 28.919424, 45.362259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885246, 28.740574, 45.223682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001952, 0.614731, -0.788735,
		0.565635, 0.649757, 0.507812,
		0.824653, -0.447127, -0.346445,
		36.132641, 28.606436, 45.119747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024910, 29.496454, 45.161781>,  <35.555386, 28.919424, 45.362259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024910, 29.496454, 45.161781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144112, 29.160854, 44.979675>,  <36.215633, 28.959494, 44.870411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144112, 29.160854, 44.979675>,  <36.024910, 29.496454, 45.161781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144112, 29.160854, 44.979675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042088, 0.488023, -0.871815,
		0.953635, 0.240646, 0.180747,
		0.298007, -0.839001, -0.455267,
		36.233513, 28.909153, 44.843094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408733, 29.657400, 44.621571>,  <36.024910, 29.496454, 45.161781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408733, 29.657400, 44.621571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342449, 29.286919, 44.486107>,  <36.302681, 29.064631, 44.404831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342449, 29.286919, 44.486107>,  <36.408733, 29.657400, 44.621571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342449, 29.286919, 44.486107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060549, 0.352310, -0.933923,
		0.984315, -0.134252, -0.114461,
		-0.165707, -0.926204, -0.338655,
		36.292736, 29.009058, 44.384510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949150, 29.589077, 44.213612>,  <36.408733, 29.657400, 44.621571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949150, 29.589077, 44.213612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670517, 29.326155, 44.098568>,  <36.503338, 29.168402, 44.029541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670517, 29.326155, 44.098568>,  <36.949150, 29.589077, 44.213612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670517, 29.326155, 44.098568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098484, 0.309471, -0.945795,
		0.710686, -0.687149, -0.150837,
		-0.696582, -0.657308, -0.287610,
		36.461544, 29.128962, 44.012283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259274, 29.221001, 43.701702>,  <36.949150, 29.589077, 44.213612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259274, 29.221001, 43.701702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862041, 29.207201, 43.656815>,  <36.623703, 29.198921, 43.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862041, 29.207201, 43.656815>,  <37.259274, 29.221001, 43.701702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862041, 29.207201, 43.656815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094744, 0.328991, -0.939568,
		0.069335, -0.943703, -0.323447,
		-0.993084, -0.034500, -0.112220,
		36.564117, 29.196850, 43.623150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131710, 28.979773, 43.010185>,  <37.259274, 29.221001, 43.701702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131710, 28.979773, 43.010185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801250, 29.176039, 43.120987>,  <36.602974, 29.293798, 43.187469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801250, 29.176039, 43.120987>,  <37.131710, 28.979773, 43.010185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801250, 29.176039, 43.120987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030768, 0.530164, -0.847337,
		-0.562618, -0.691500, -0.453088,
		-0.826145, 0.490667, 0.277003,
		36.553406, 29.323238, 43.204086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591793, 28.926626, 42.401875>,  <37.131710, 28.979773, 43.010185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591793, 28.926626, 42.401875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443180, 29.223368, 42.625164>,  <36.354012, 29.401413, 42.759136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443180, 29.223368, 42.625164>,  <36.591793, 28.926626, 42.401875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443180, 29.223368, 42.625164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118305, 0.558529, -0.821005,
		-0.920851, -0.371072, -0.119748,
		-0.371535, 0.741856, 0.558222,
		36.331718, 29.445925, 42.792629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104485, 29.104395, 41.974152>,  <36.591793, 28.926626, 42.401875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104485, 29.104395, 41.974152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126606, 29.404905, 42.237217>,  <36.139877, 29.585213, 42.395058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126606, 29.404905, 42.237217>,  <36.104485, 29.104395, 41.974152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126606, 29.404905, 42.237217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227643, 0.650813, -0.724307,
		-0.972173, -0.109655, 0.207016,
		0.055305, 0.751277, 0.657665,
		36.143196, 29.630289, 42.434517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424408, 29.360415, 42.003559>,  <36.104485, 29.104395, 41.974152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424408, 29.360415, 42.003559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674679, 29.647762, 42.125198>,  <35.824841, 29.820171, 42.198181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674679, 29.647762, 42.125198>,  <35.424408, 29.360415, 42.003559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674679, 29.647762, 42.125198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241525, 0.549065, -0.800121,
		-0.741755, 0.427166, 0.517039,
		0.625672, 0.718371, 0.304100,
		35.862381, 29.863274, 42.216427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057869, 30.019863, 42.048061>,  <35.424408, 29.360415, 42.003559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057869, 30.019863, 42.048061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442547, 30.121502, 42.006939>,  <35.673355, 30.182486, 41.982265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442547, 30.121502, 42.006939>,  <35.057869, 30.019863, 42.048061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442547, 30.121502, 42.006939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264169, 0.759076, -0.594995,
		-0.073148, 0.599365, 0.797127,
		0.961698, 0.254099, -0.102809,
		35.731056, 30.197731, 41.976097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894749, 30.675446, 41.835827>,  <35.057869, 30.019863, 42.048061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894749, 30.675446, 41.835827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286049, 30.618237, 41.775723>,  <35.520828, 30.583912, 41.739662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286049, 30.618237, 41.775723>,  <34.894749, 30.675446, 41.835827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286049, 30.618237, 41.775723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051480, 0.534301, -0.843725,
		0.200954, 0.833107, 0.515315,
		0.978247, -0.143021, -0.150258,
		35.579521, 30.575331, 41.730644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247719, 31.330233, 41.919495>,  <34.894749, 30.675446, 41.835827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247719, 31.330233, 41.919495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449242, 31.090494, 41.670670>,  <35.570156, 30.946651, 41.521374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449242, 31.090494, 41.670670>,  <35.247719, 31.330233, 41.919495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449242, 31.090494, 41.670670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055318, 0.741042, -0.669176,
		0.862044, 0.302724, 0.406496,
		0.503806, -0.599345, -0.622065,
		35.600384, 30.910690, 41.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841759, 31.818768, 41.527920>,  <35.247719, 31.330233, 41.919495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841759, 31.818768, 41.527920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764183, 31.490204, 41.313377>,  <35.717636, 31.293066, 41.184654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764183, 31.490204, 41.313377>,  <35.841759, 31.818768, 41.527920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764183, 31.490204, 41.313377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056234, 0.536527, -0.842007,
		0.979400, -0.193462, -0.057864,
		-0.193942, -0.821408, -0.536354,
		35.706001, 31.243782, 41.152470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264793, 31.963388, 40.845089>,  <35.841759, 31.818768, 41.527920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264793, 31.963388, 40.845089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012177, 31.660419, 40.778805>,  <35.860607, 31.478638, 40.739033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012177, 31.660419, 40.778805>,  <36.264793, 31.963388, 40.845089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012177, 31.660419, 40.778805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043887, 0.248306, -0.967687,
		0.774097, -0.603864, -0.190058,
		-0.631544, -0.757424, -0.165711,
		35.822712, 31.433191, 40.729092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482265, 31.673113, 40.183453>,  <36.264793, 31.963388, 40.845089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482265, 31.673113, 40.183453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109882, 31.528660, 40.205009>,  <35.886452, 31.441988, 40.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109882, 31.528660, 40.205009>,  <36.482265, 31.673113, 40.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109882, 31.528660, 40.205009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125868, 0.178850, -0.975792,
		0.342754, -0.915202, -0.211956,
		-0.930955, -0.361135, 0.053893,
		35.830597, 31.420321, 40.221176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420021, 31.387674, 39.517647>,  <36.482265, 31.673113, 40.183453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420021, 31.387674, 39.517647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042610, 31.417505, 39.646767>,  <35.816162, 31.435404, 39.724239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042610, 31.417505, 39.646767>,  <36.420021, 31.387674, 39.517647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042610, 31.417505, 39.646767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278063, 0.351436, -0.893965,
		-0.180112, -0.933237, -0.310852,
		-0.943526, 0.074577, 0.322796,
		35.759552, 31.439878, 39.743607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085064, 31.040504, 39.054497>,  <36.420021, 31.387674, 39.517647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085064, 31.040504, 39.054497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803921, 31.265223, 39.229027>,  <35.635235, 31.400053, 39.333744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803921, 31.265223, 39.229027>,  <36.085064, 31.040504, 39.054497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803921, 31.265223, 39.229027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377056, 0.225889, -0.898222,
		-0.603179, -0.795838, 0.053062,
		-0.702853, 0.561796, 0.436327,
		35.593063, 31.433762, 39.359924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459564, 30.911486, 38.736172>,  <36.085064, 31.040504, 39.054497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459564, 30.911486, 38.736172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376091, 31.274399, 38.882210>,  <35.326008, 31.492146, 38.969833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376091, 31.274399, 38.882210>,  <35.459564, 30.911486, 38.736172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376091, 31.274399, 38.882210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427669, 0.251063, -0.868370,
		-0.879516, -0.337356, 0.335622,
		-0.208687, 0.907281, 0.365091,
		35.313484, 31.546583, 38.991737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912437, 31.079733, 38.295944>,  <35.459564, 30.911486, 38.736172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912437, 31.079733, 38.295944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049374, 31.415525, 38.464741>,  <35.131535, 31.617001, 38.566017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049374, 31.415525, 38.464741>,  <34.912437, 31.079733, 38.295944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049374, 31.415525, 38.464741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029333, 0.458459, -0.888232,
		-0.939118, 0.291700, 0.181573,
		0.342341, 0.839480, 0.421990,
		35.152077, 31.667370, 38.591339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489586, 31.633842, 38.048672>,  <34.912437, 31.079733, 38.295944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489586, 31.633842, 38.048672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839844, 31.789742, 38.162754>,  <35.049999, 31.883282, 38.231205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839844, 31.789742, 38.162754>,  <34.489586, 31.633842, 38.048672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839844, 31.789742, 38.162754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107924, 0.417701, -0.902152,
		-0.470745, 0.820744, 0.323694,
		0.875644, 0.389749, 0.285209,
		35.102535, 31.906666, 38.248318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449070, 32.350124, 37.862022>,  <34.489586, 31.633842, 38.048672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449070, 32.350124, 37.862022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836906, 32.262886, 37.906422>,  <35.069611, 32.210545, 37.933060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836906, 32.262886, 37.906422>,  <34.449070, 32.350124, 37.862022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836906, 32.262886, 37.906422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190733, 0.389335, -0.901132,
		0.153318, 0.894904, 0.419095,
		0.969595, -0.218095, 0.110995,
		35.127785, 32.197456, 37.939720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730145, 32.843487, 37.508602>,  <34.449070, 32.350124, 37.862022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730145, 32.843487, 37.508602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058441, 32.616787, 37.537380>,  <35.255421, 32.480766, 37.554646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058441, 32.616787, 37.537380>,  <34.730145, 32.843487, 37.508602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058441, 32.616787, 37.537380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249738, 0.242659, -0.937415,
		0.513821, 0.787345, 0.340700,
		0.820743, -0.566749, 0.071947,
		35.304665, 32.446762, 37.558964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289791, 33.294575, 37.270306>,  <34.730145, 32.843487, 37.508602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289791, 33.294575, 37.270306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397163, 32.910030, 37.245850>,  <35.461586, 32.679306, 37.231178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397163, 32.910030, 37.245850>,  <35.289791, 33.294575, 37.270306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397163, 32.910030, 37.245850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361577, 0.159376, -0.918619,
		0.892866, 0.224476, 0.390385,
		0.268426, -0.961358, -0.061136,
		35.477692, 32.621624, 37.227509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970863, 33.262035, 36.899296>,  <35.289791, 33.294575, 37.270306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970863, 33.262035, 36.899296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820045, 32.893200, 36.864433>,  <35.729557, 32.671898, 36.843517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820045, 32.893200, 36.864433>,  <35.970863, 33.262035, 36.899296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820045, 32.893200, 36.864433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277766, -0.022803, -0.960378,
		0.883564, -0.386312, 0.264722,
		-0.377042, -0.922086, -0.087157,
		35.706932, 32.616573, 36.838287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715775, 33.239811, 36.958763>,  <35.970863, 33.262035, 36.899296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715775, 33.239811, 36.958763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089405, 33.099449, 36.985203>,  <37.313583, 33.015232, 37.001068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089405, 33.099449, 36.985203>,  <36.715775, 33.239811, 36.958763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089405, 33.099449, 36.985203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239216, -0.477514, 0.845432,
		-0.265101, -0.805510, -0.529976,
		0.934076, -0.350904, 0.066101,
		37.369629, 32.994179, 37.005032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680210, 32.649559, 37.291473>,  <36.715775, 33.239811, 36.958763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680210, 32.649559, 37.291473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067112, 32.743355, 37.330315>,  <37.299255, 32.799633, 37.353619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067112, 32.743355, 37.330315>,  <36.680210, 32.649559, 37.291473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067112, 32.743355, 37.330315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049867, -0.550749, 0.833180,
		0.248850, -0.801057, -0.544409,
		0.967257, 0.234485, 0.097107,
		37.357288, 32.813702, 37.359447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075577, 32.042183, 37.404011>,  <36.680210, 32.649559, 37.291473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075577, 32.042183, 37.404011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357738, 32.288410, 37.544567>,  <37.527035, 32.436146, 37.628899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357738, 32.288410, 37.544567>,  <37.075577, 32.042183, 37.404011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357738, 32.288410, 37.544567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146562, -0.611711, 0.777386,
		0.693483, -0.496875, -0.521725,
		0.705408, 0.615569, 0.351388,
		37.569363, 32.473080, 37.649982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754688, 31.612825, 37.501171>,  <37.075577, 32.042183, 37.404011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754688, 31.612825, 37.501171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767582, 31.929049, 37.745785>,  <37.775318, 32.118782, 37.892555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767582, 31.929049, 37.745785>,  <37.754688, 31.612825, 37.501171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767582, 31.929049, 37.745785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211799, -0.603363, 0.768826,
		0.976781, 0.104741, -0.186889,
		0.032234, 0.790558, 0.611538,
		37.777252, 32.166218, 37.929245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421310, 31.650215, 37.827381>,  <37.754688, 31.612825, 37.501171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421310, 31.650215, 37.827381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189651, 31.886934, 38.051655>,  <38.050655, 32.028965, 38.186218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189651, 31.886934, 38.051655>,  <38.421310, 31.650215, 37.827381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189651, 31.886934, 38.051655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339104, -0.450566, 0.825832,
		0.741351, 0.668406, 0.060261,
		-0.579143, 0.591797, 0.560687,
		38.015907, 32.064472, 38.219860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837269, 31.956980, 38.326954>,  <38.421310, 31.650215, 37.827381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837269, 31.956980, 38.326954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483971, 32.044632, 38.492775>,  <38.271992, 32.097225, 38.592266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483971, 32.044632, 38.492775>,  <38.837269, 31.956980, 38.326954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483971, 32.044632, 38.492775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334735, -0.324446, 0.884696,
		0.328364, 0.920172, 0.213216,
		-0.883249, 0.219131, 0.414550,
		38.218994, 32.110371, 38.617142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975277, 32.383720, 38.953545>,  <38.837269, 31.956980, 38.326954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975277, 32.383720, 38.953545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598221, 32.267887, 39.019970>,  <38.371986, 32.198387, 39.059826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598221, 32.267887, 39.019970>,  <38.975277, 32.383720, 38.953545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598221, 32.267887, 39.019970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219918, -0.164477, 0.961552,
		-0.251134, 0.942916, 0.218727,
		-0.942638, -0.289581, 0.166059,
		38.315430, 32.181011, 39.069786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003090, 32.507374, 39.630520>,  <38.975277, 32.383720, 38.953545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003090, 32.507374, 39.630520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650574, 32.325146, 39.580261>,  <38.439064, 32.215809, 39.550106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650574, 32.325146, 39.580261>,  <39.003090, 32.507374, 39.630520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650574, 32.325146, 39.580261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015793, -0.237337, 0.971299,
		-0.472318, 0.857977, 0.201967,
		-0.881287, -0.455573, -0.125649,
		38.386189, 32.188473, 39.542568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440571, 32.763626, 40.112419>,  <39.003090, 32.507374, 39.630520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440571, 32.763626, 40.112419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365791, 32.386280, 40.002789>,  <38.320923, 32.159874, 39.937012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365791, 32.386280, 40.002789>,  <38.440571, 32.763626, 40.112419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365791, 32.386280, 40.002789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120640, -0.298929, 0.946619,
		-0.974933, 0.143908, 0.169692,
		-0.186952, -0.943362, -0.274074,
		38.309704, 32.103271, 39.920567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893326, 32.471142, 40.603081>,  <38.440571, 32.763626, 40.112419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893326, 32.471142, 40.603081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094593, 32.163918, 40.444633>,  <38.215355, 31.979584, 40.349567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094593, 32.163918, 40.444633>,  <37.893326, 32.471142, 40.603081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094593, 32.163918, 40.444633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253827, -0.306799, 0.917304,
		-0.826071, -0.562103, 0.040583,
		0.503168, -0.768059, -0.396114,
		38.245544, 31.933500, 40.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714359, 31.861626, 41.065079>,  <37.893326, 32.471142, 40.603081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714359, 31.861626, 41.065079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048653, 31.763460, 40.868580>,  <38.249229, 31.704561, 40.750683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048653, 31.763460, 40.868580>,  <37.714359, 31.861626, 41.065079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048653, 31.763460, 40.868580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273813, -0.589204, 0.760175,
		-0.475997, -0.769813, -0.425222,
		0.835735, -0.245410, -0.491244,
		38.299374, 31.689837, 40.721207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723385, 31.201891, 41.118778>,  <37.714359, 31.861626, 41.065079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723385, 31.201891, 41.118778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103073, 31.288782, 41.027748>,  <38.330887, 31.340918, 40.973129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103073, 31.288782, 41.027748>,  <37.723385, 31.201891, 41.118778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103073, 31.288782, 41.027748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311820, -0.553423, 0.772328,
		0.041826, -0.804073, -0.593057,
		0.949220, 0.217230, -0.227579,
		38.387840, 31.353951, 40.959473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110535, 30.537926, 41.035053>,  <37.723385, 31.201891, 41.118778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110535, 30.537926, 41.035053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388920, 30.809599, 41.128307>,  <38.555950, 30.972603, 41.184258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388920, 30.809599, 41.128307>,  <38.110535, 30.537926, 41.035053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388920, 30.809599, 41.128307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377325, -0.622118, 0.686000,
		0.610955, -0.389462, -0.689241,
		0.695960, 0.679182, 0.233132,
		38.597710, 31.013353, 41.198246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681629, 30.152332, 41.200520>,  <38.110535, 30.537926, 41.035053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681629, 30.152332, 41.200520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784626, 30.514484, 41.335564>,  <38.846424, 30.731775, 41.416592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784626, 30.514484, 41.335564>,  <38.681629, 30.152332, 41.200520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784626, 30.514484, 41.335564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510941, -0.424126, 0.747701,
		0.820145, -0.020025, -0.571805,
		0.257490, 0.905382, 0.337613,
		38.861874, 30.786098, 41.436848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404491, 30.125507, 41.365765>,  <38.681629, 30.152332, 41.200520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404491, 30.125507, 41.365765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246761, 30.422125, 41.582882>,  <39.152122, 30.600096, 41.713150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246761, 30.422125, 41.582882>,  <39.404491, 30.125507, 41.365765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246761, 30.422125, 41.582882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310389, -0.448468, 0.838174,
		0.864966, 0.498990, -0.053324,
		-0.394327, 0.741543, 0.542790,
		39.128464, 30.644588, 41.745720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834549, 30.163347, 41.880676>,  <39.404491, 30.125507, 41.365765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834549, 30.163347, 41.880676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511002, 30.346310, 42.028473>,  <39.316875, 30.456087, 42.117149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511002, 30.346310, 42.028473>,  <39.834549, 30.163347, 41.880676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511002, 30.346310, 42.028473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258779, -0.287336, 0.922210,
		0.527990, 0.841558, 0.114049,
		-0.808864, 0.457404, 0.369488,
		39.268341, 30.483530, 42.139320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098919, 30.634380, 42.449192>,  <39.834549, 30.163347, 41.880676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098919, 30.634380, 42.449192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708130, 30.568298, 42.503204>,  <39.473656, 30.528648, 42.535610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708130, 30.568298, 42.503204>,  <40.098919, 30.634380, 42.449192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708130, 30.568298, 42.503204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188023, -0.367453, 0.910838,
		-0.100859, 0.915252, 0.390054,
		-0.976972, -0.165205, 0.135027,
		39.415039, 30.518736, 42.543713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012932, 30.738806, 43.180866>,  <40.098919, 30.634380, 42.449192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012932, 30.738806, 43.180866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658924, 30.584656, 43.076382>,  <39.446522, 30.492167, 43.013691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658924, 30.584656, 43.076382>,  <40.012932, 30.738806, 43.180866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658924, 30.584656, 43.076382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108147, -0.375545, 0.920473,
		-0.452823, 0.842884, 0.290687,
		-0.885017, -0.385374, -0.261210,
		39.393417, 30.469044, 42.998020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372372, 30.939447, 43.644787>,  <40.012932, 30.738806, 43.180866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372372, 30.939447, 43.644787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286190, 30.587074, 43.476246>,  <39.234482, 30.375650, 43.375122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286190, 30.587074, 43.476246>,  <39.372372, 30.939447, 43.644787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286190, 30.587074, 43.476246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221998, -0.376004, 0.899632,
		-0.950945, 0.287368, -0.114554,
		-0.215453, -0.880932, -0.421355,
		39.221554, 30.322794, 43.349838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808983, 30.757572, 43.982685>,  <39.372372, 30.939447, 43.644787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808983, 30.757572, 43.982685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941566, 30.406599, 43.843979>,  <39.021118, 30.196014, 43.760754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941566, 30.406599, 43.843979>,  <38.808983, 30.757572, 43.982685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941566, 30.406599, 43.843979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169061, -0.416833, 0.893123,
		-0.928199, -0.237409, -0.286503,
		0.331460, -0.877432, -0.346767,
		39.041004, 30.143370, 43.739948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265011, 30.245190, 44.225166>,  <38.808983, 30.757572, 43.982685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265011, 30.245190, 44.225166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571884, 30.022005, 44.098606>,  <38.756008, 29.888094, 44.022671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571884, 30.022005, 44.098606>,  <38.265011, 30.245190, 44.225166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571884, 30.022005, 44.098606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143667, -0.630218, 0.763011,
		-0.625110, -0.539928, -0.563662,
		0.767201, -0.557945, -0.316386,
		38.802040, 29.854616, 44.003685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988071, 29.568081, 44.324741>,  <38.265011, 30.245190, 44.225166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988071, 29.568081, 44.324741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378887, 29.498281, 44.275852>,  <38.613377, 29.456402, 44.246517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378887, 29.498281, 44.275852>,  <37.988071, 29.568081, 44.324741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378887, 29.498281, 44.275852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036863, -0.703510, 0.709729,
		-0.209834, -0.688930, -0.693791,
		0.977042, -0.174501, -0.122224,
		38.672001, 29.445930, 44.239185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101059, 28.895851, 44.128605>,  <37.988071, 29.568081, 44.324741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101059, 28.895851, 44.128605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426628, 29.030821, 44.317783>,  <38.621971, 29.111803, 44.431290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426628, 29.030821, 44.317783>,  <38.101059, 28.895851, 44.128605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426628, 29.030821, 44.317783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171486, -0.638250, 0.750486,
		0.555089, -0.691940, -0.461622,
		0.813922, 0.337425, 0.472944,
		38.670803, 29.132048, 44.459667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441025, 28.265741, 44.406639>,  <38.101059, 28.895851, 44.128605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441025, 28.265741, 44.406639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613335, 28.579805, 44.584610>,  <38.716721, 28.768244, 44.691391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613335, 28.579805, 44.584610>,  <38.441025, 28.265741, 44.406639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613335, 28.579805, 44.584610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120680, -0.438467, 0.890608,
		0.894353, -0.437347, -0.094128,
		0.430777, 0.785159, 0.444924,
		38.742569, 28.815353, 44.718086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077713, 28.041172, 44.770123>,  <38.441025, 28.265741, 44.406639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077713, 28.041172, 44.770123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956554, 28.383614, 44.937614>,  <38.883862, 28.589079, 45.038109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956554, 28.383614, 44.937614>,  <39.077713, 28.041172, 44.770123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956554, 28.383614, 44.937614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001818, -0.439892, 0.898049,
		0.953023, 0.271252, 0.134796,
		-0.302893, 0.856106, 0.418734,
		38.865688, 28.640446, 45.063236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499596, 28.124191, 45.336857>,  <39.077713, 28.041172, 44.770123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499596, 28.124191, 45.336857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224773, 28.398724, 45.432278>,  <39.059879, 28.563444, 45.489532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224773, 28.398724, 45.432278>,  <39.499596, 28.124191, 45.336857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224773, 28.398724, 45.432278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047146, -0.285512, 0.957215,
		0.725078, 0.668903, 0.163803,
		-0.687051, 0.686333, 0.238554,
		39.018658, 28.604624, 45.503845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649441, 28.306391, 46.115826>,  <39.499596, 28.124191, 45.336857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649441, 28.306391, 46.115826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278423, 28.452293, 46.083294>,  <39.055813, 28.539835, 46.063774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278423, 28.452293, 46.083294>,  <39.649441, 28.306391, 46.115826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278423, 28.452293, 46.083294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105243, -0.046126, 0.993376,
		0.358591, 0.929959, 0.081172,
		-0.927543, 0.364758, -0.081331,
		39.000160, 28.561722, 46.058895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575729, 28.961264, 46.580872>,  <39.649441, 28.306391, 46.115826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575729, 28.961264, 46.580872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210285, 28.809427, 46.522602>,  <38.991016, 28.718325, 46.487640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210285, 28.809427, 46.522602>,  <39.575729, 28.961264, 46.580872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210285, 28.809427, 46.522602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149696, -0.019087, 0.988548,
		-0.378025, 0.924957, -0.039386,
		-0.913613, -0.379592, -0.145678,
		38.936203, 28.695549, 46.478897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093460, 29.428293, 47.040283>,  <39.575729, 28.961264, 46.580872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093460, 29.428293, 47.040283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954395, 29.059505, 46.972046>,  <38.870956, 28.838232, 46.931103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954395, 29.059505, 46.972046>,  <39.093460, 29.428293, 47.040283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954395, 29.059505, 46.972046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021194, -0.174166, 0.984488,
		-0.937379, 0.345887, 0.041011,
		-0.347665, -0.921970, -0.170591,
		38.850098, 28.782915, 46.920868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538555, 29.351528, 47.458076>,  <39.093460, 29.428293, 47.040283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538555, 29.351528, 47.458076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612343, 28.972157, 47.354961>,  <38.656616, 28.744534, 47.293095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612343, 28.972157, 47.354961>,  <38.538555, 29.351528, 47.458076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612343, 28.972157, 47.354961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128299, -0.283280, 0.950417,
		-0.974428, -0.142252, -0.173940,
		0.184473, -0.948429, -0.257785,
		38.667686, 28.687628, 47.277626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066898, 29.010090, 47.788822>,  <38.538555, 29.351528, 47.458076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066898, 29.010090, 47.788822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362007, 28.752956, 47.706406>,  <38.539074, 28.598677, 47.656956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362007, 28.752956, 47.706406>,  <38.066898, 29.010090, 47.788822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362007, 28.752956, 47.706406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103410, -0.409248, 0.906544,
		-0.667079, -0.647519, -0.368409,
		0.737775, -0.642833, -0.206040,
		38.583340, 28.560106, 47.644592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840729, 28.333769, 47.934219>,  <38.066898, 29.010090, 47.788822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840729, 28.333769, 47.934219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240440, 28.321823, 47.943569>,  <38.480267, 28.314655, 47.949181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240440, 28.321823, 47.943569>,  <37.840729, 28.333769, 47.934219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240440, 28.321823, 47.943569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032448, -0.354216, 0.934601,
		-0.019629, -0.934687, -0.354930,
		0.999281, -0.029862, 0.023376,
		38.540226, 28.312864, 47.950581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935215, 27.690714, 48.215614>,  <37.840729, 28.333769, 47.934219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935215, 27.690714, 48.215614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285881, 27.877605, 48.261497>,  <38.496281, 27.989740, 48.289028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285881, 27.877605, 48.261497>,  <37.935215, 27.690714, 48.215614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285881, 27.877605, 48.261497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019184, -0.272190, 0.962052,
		0.480722, -0.841195, -0.247582,
		0.876663, 0.467229, 0.114711,
		38.548882, 28.017775, 48.295910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260303, 27.250202, 48.461769>,  <37.935215, 27.690714, 48.215614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260303, 27.250202, 48.461769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386608, 27.619894, 48.547649>,  <38.462391, 27.841709, 48.599178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386608, 27.619894, 48.547649>,  <38.260303, 27.250202, 48.461769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386608, 27.619894, 48.547649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051100, -0.242516, 0.968801,
		0.947463, -0.294935, -0.123804,
		0.315758, 0.924229, 0.214704,
		38.481335, 27.897163, 48.612061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629574, 27.173504, 49.139523>,  <38.260303, 27.250202, 48.461769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629574, 27.173504, 49.139523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653339, 27.572788, 49.136814>,  <38.667599, 27.812359, 49.135189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653339, 27.572788, 49.136814>,  <38.629574, 27.173504, 49.139523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653339, 27.572788, 49.136814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053372, 0.009952, 0.998525,
		0.996806, -0.058964, 0.053867,
		0.059413, 0.998211, -0.006774,
		38.671162, 27.872252, 49.134781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114815, 27.296135, 49.689281>,  <38.629574, 27.173504, 49.139523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114815, 27.296135, 49.689281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881702, 27.614975, 49.626038>,  <38.741833, 27.806278, 49.588093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881702, 27.614975, 49.626038>,  <39.114815, 27.296135, 49.689281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881702, 27.614975, 49.626038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223981, 0.029467, 0.974148,
		0.781151, 0.603130, 0.161362,
		-0.582783, 0.797098, -0.158108,
		38.706867, 27.854105, 49.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380127, 27.791847, 50.119053>,  <39.114815, 27.296135, 49.689281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380127, 27.791847, 50.119053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020233, 27.949738, 50.044563>,  <38.804298, 28.044472, 49.999870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020233, 27.949738, 50.044563>,  <39.380127, 27.791847, 50.119053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020233, 27.949738, 50.044563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116984, 0.192957, 0.974209,
		0.420477, 0.898309, -0.127433,
		-0.899730, 0.394725, -0.186222,
		38.750313, 28.068155, 49.988697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400776, 28.514503, 50.451813>,  <39.380127, 27.791847, 50.119053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400776, 28.514503, 50.451813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021301, 28.406252, 50.386375>,  <38.793617, 28.341301, 50.347115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021301, 28.406252, 50.386375>,  <39.400776, 28.514503, 50.451813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021301, 28.406252, 50.386375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223062, 0.205992, 0.952791,
		-0.224156, 0.940387, -0.255788,
		-0.948682, -0.270630, -0.163590,
		38.736698, 28.325064, 50.337299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291245, 29.163818, 50.797241>,  <39.400776, 28.514503, 50.451813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291245, 29.163818, 50.797241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314590, 29.475170, 51.047272>,  <39.328598, 29.661982, 51.197289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314590, 29.475170, 51.047272>,  <39.291245, 29.163818, 50.797241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314590, 29.475170, 51.047272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345472, 0.571705, -0.744179,
		-0.936612, 0.259383, -0.235539,
		0.058369, 0.778379, 0.625076,
		39.332100, 29.708683, 51.234795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929573, 29.732981, 50.724487>,  <39.291245, 29.163818, 50.797241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929573, 29.732981, 50.724487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234131, 29.913513, 50.910641>,  <39.416866, 30.021833, 51.022331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234131, 29.913513, 50.910641>,  <38.929573, 29.732981, 50.724487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234131, 29.913513, 50.910641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120766, 0.606554, -0.785817,
		-0.636944, 0.654517, 0.407320,
		0.761392, 0.451331, 0.465384,
		39.462547, 30.048912, 51.050255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750889, 30.483189, 50.829113>,  <38.929573, 29.732981, 50.724487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750889, 30.483189, 50.829113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144585, 30.428480, 50.784275>,  <39.380802, 30.395655, 50.757370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144585, 30.428480, 50.784275>,  <38.750889, 30.483189, 50.829113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144585, 30.428480, 50.784275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019252, 0.547260, -0.836741,
		0.175787, 0.825712, 0.536003,
		0.984240, -0.136770, -0.112098,
		39.439857, 30.387449, 50.750645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115788, 31.185253, 50.785622>,  <38.750889, 30.483189, 50.829113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115788, 31.185253, 50.785622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387901, 30.924492, 50.651611>,  <39.551170, 30.768036, 50.571205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387901, 30.924492, 50.651611>,  <39.115788, 31.185253, 50.785622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387901, 30.924492, 50.651611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244932, 0.633007, -0.734378,
		0.690815, 0.417525, 0.590294,
		0.680281, -0.651901, -0.335025,
		39.591988, 30.728922, 50.551105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626114, 31.666458, 50.681229>,  <39.115788, 31.185253, 50.785622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626114, 31.666458, 50.681229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704525, 31.341101, 50.462154>,  <39.751572, 31.145885, 50.330708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704525, 31.341101, 50.462154>,  <39.626114, 31.666458, 50.681229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704525, 31.341101, 50.462154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353938, 0.579563, -0.734053,
		0.914495, -0.049953, 0.401501,
		0.196027, -0.813395, -0.547688,
		39.763332, 31.097082, 50.297848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237484, 31.836021, 50.375755>,  <39.626114, 31.666458, 50.681229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237484, 31.836021, 50.375755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094746, 31.540215, 50.147446>,  <40.009102, 31.362730, 50.010460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094746, 31.540215, 50.147446>,  <40.237484, 31.836021, 50.375755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094746, 31.540215, 50.147446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134551, 0.563936, -0.814783,
		0.924424, -0.367546, -0.101733,
		-0.356842, -0.739517, -0.570770,
		39.987694, 31.318359, 49.976215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734863, 31.826015, 49.867996>,  <40.237484, 31.836021, 50.375755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734863, 31.826015, 49.867996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417900, 31.644310, 49.705154>,  <40.227722, 31.535286, 49.607449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417900, 31.644310, 49.705154>,  <40.734863, 31.826015, 49.867996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417900, 31.644310, 49.705154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137138, 0.517647, -0.844533,
		0.594382, -0.725041, -0.347888,
		-0.792404, -0.454266, -0.407110,
		40.180180, 31.508032, 49.583023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066235, 31.645943, 49.310318>,  <40.734863, 31.826015, 49.867996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066235, 31.645943, 49.310318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678566, 31.584047, 49.233631>,  <40.445965, 31.546911, 49.187618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678566, 31.584047, 49.233631>,  <41.066235, 31.645943, 49.310318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678566, 31.584047, 49.233631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154058, 0.226633, -0.961719,
		0.192258, -0.961611, -0.195810,
		-0.969176, -0.154733, -0.191716,
		40.387814, 31.537626, 49.176117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923267, 31.285427, 48.611927>,  <41.066235, 31.645943, 49.310318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923267, 31.285427, 48.611927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584095, 31.473400, 48.710045>,  <40.380592, 31.586184, 48.768917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584095, 31.473400, 48.710045>,  <40.923267, 31.285427, 48.611927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584095, 31.473400, 48.710045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027960, 0.501741, -0.864566,
		-0.529361, -0.726238, -0.438583,
		-0.847935, 0.469930, 0.245297,
		40.329716, 31.614380, 48.783634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376427, 31.051590, 47.995987>,  <40.923267, 31.285427, 48.611927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376427, 31.051590, 47.995987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279137, 31.393126, 48.180077>,  <40.220764, 31.598047, 48.290531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279137, 31.393126, 48.180077>,  <40.376427, 31.051590, 47.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279137, 31.393126, 48.180077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143718, 0.437512, -0.887653,
		-0.959265, -0.282038, 0.016300,
		-0.243220, 0.853837, 0.460224,
		40.206169, 31.649277, 48.318142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846546, 31.255890, 47.637264>,  <40.376427, 31.051590, 47.995987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846546, 31.255890, 47.637264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957279, 31.590818, 47.825840>,  <40.023720, 31.791775, 47.938988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957279, 31.590818, 47.825840>,  <39.846546, 31.255890, 47.637264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957279, 31.590818, 47.825840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017716, 0.494981, -0.868723,
		-0.960755, 0.232137, 0.151860,
		0.276831, 0.837320, 0.471444,
		40.040329, 31.842014, 47.967274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357765, 31.753942, 47.368248>,  <39.846546, 31.255890, 47.637264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357765, 31.753942, 47.368248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665222, 31.958786, 47.521572>,  <39.849697, 32.081692, 47.613567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665222, 31.958786, 47.521572>,  <39.357765, 31.753942, 47.368248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665222, 31.958786, 47.521572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190396, 0.388915, -0.901385,
		-0.610686, 0.765825, 0.201433,
		0.768643, 0.512111, 0.383315,
		39.895817, 32.112419, 47.636566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220192, 32.546303, 47.211548>,  <39.357765, 31.753942, 47.368248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220192, 32.546303, 47.211548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609882, 32.465126, 47.250946>,  <39.843697, 32.416420, 47.274586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609882, 32.465126, 47.250946>,  <39.220192, 32.546303, 47.211548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609882, 32.465126, 47.250946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171438, 0.382320, -0.907987,
		0.146612, 0.901469, 0.407258,
		0.974225, -0.202941, 0.098494,
		39.902149, 32.404243, 47.280495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568447, 33.161751, 47.020821>,  <39.220192, 32.546303, 47.211548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568447, 33.161751, 47.020821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832157, 32.864521, 46.974854>,  <39.990383, 32.686184, 46.947273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832157, 32.864521, 46.974854>,  <39.568447, 33.161751, 47.020821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832157, 32.864521, 46.974854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204615, 0.324363, -0.923537,
		0.723527, 0.585350, 0.365887,
		0.659273, -0.743070, -0.114914,
		40.029938, 32.641602, 46.940380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931625, 33.386471, 46.565369>,  <39.568447, 33.161751, 47.020821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931625, 33.386471, 46.565369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063309, 33.010006, 46.534832>,  <40.142319, 32.784126, 46.516510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063309, 33.010006, 46.534832>,  <39.931625, 33.386471, 46.565369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063309, 33.010006, 46.534832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283362, 0.175595, -0.942800,
		0.900737, 0.288744, 0.324498,
		0.329209, -0.941166, -0.076346,
		40.162071, 32.727657, 46.511929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537960, 33.373985, 46.225430>,  <39.931625, 33.386471, 46.565369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537960, 33.373985, 46.225430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442726, 32.986267, 46.200825>,  <40.385586, 32.753635, 46.186062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442726, 32.986267, 46.200825>,  <40.537960, 33.373985, 46.225430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442726, 32.986267, 46.200825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176471, 0.019107, -0.984120,
		0.955079, -0.245156, 0.166503,
		-0.238081, -0.969295, -0.061511,
		40.371304, 32.695480, 46.182373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128727, 33.039318, 45.911003>,  <40.537960, 33.373985, 46.225430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128727, 33.039318, 45.911003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821342, 32.792896, 45.841793>,  <40.636909, 32.645042, 45.800266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821342, 32.792896, 45.841793>,  <41.128727, 33.039318, 45.911003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821342, 32.792896, 45.841793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170929, 0.062940, -0.983271,
		0.616639, -0.785185, 0.056934,
		-0.768466, -0.616055, -0.173022,
		40.590801, 32.608078, 45.789886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366749, 32.428017, 45.549248>,  <41.128727, 33.039318, 45.911003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366749, 32.428017, 45.549248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979988, 32.467091, 45.454964>,  <40.747932, 32.490536, 45.398392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979988, 32.467091, 45.454964>,  <41.366749, 32.428017, 45.549248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979988, 32.467091, 45.454964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225474, -0.105277, -0.968544,
		-0.119433, -0.989633, 0.079766,
		-0.966901, 0.097691, -0.235710,
		40.689919, 32.496395, 45.384251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231930, 31.938824, 45.077278>,  <41.366749, 32.428017, 45.549248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231930, 31.938824, 45.077278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919445, 32.179768, 45.011715>,  <40.731953, 32.324333, 44.972378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919445, 32.179768, 45.011715>,  <41.231930, 31.938824, 45.077278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919445, 32.179768, 45.011715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138285, -0.089063, -0.986380,
		-0.608754, -0.793240, -0.013720,
		-0.781214, 0.602360, -0.163910,
		40.685081, 32.360477, 44.962543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906269, 31.656069, 44.504112>,  <41.231930, 31.938824, 45.077278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906269, 31.656069, 44.504112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749405, 32.024006, 44.508018>,  <40.655285, 32.244770, 44.510365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749405, 32.024006, 44.508018>,  <40.906269, 31.656069, 44.504112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749405, 32.024006, 44.508018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071555, -0.019917, -0.997238,
		-0.917108, -0.391779, 0.073630,
		-0.392164, 0.919844, 0.009768,
		40.631756, 32.299957, 44.510948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341434, 31.620092, 44.038445>,  <40.906269, 31.656069, 44.504112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341434, 31.620092, 44.038445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431835, 32.006161, 44.091152>,  <40.486076, 32.237801, 44.122776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431835, 32.006161, 44.091152>,  <40.341434, 31.620092, 44.038445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431835, 32.006161, 44.091152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191754, 0.176702, -0.965405,
		-0.955066, 0.192920, 0.225012,
		0.226006, 0.965173, 0.131768,
		40.499638, 32.295712, 44.130684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810349, 31.991642, 43.748417>,  <40.341434, 31.620092, 44.038445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810349, 31.991642, 43.748417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146099, 32.208935, 43.755913>,  <40.347549, 32.339310, 43.760410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146099, 32.208935, 43.755913>,  <39.810349, 31.991642, 43.748417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146099, 32.208935, 43.755913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085674, 0.166259, -0.982353,
		-0.536761, 0.822956, 0.186094,
		0.839374, 0.543232, 0.018735,
		40.397911, 32.371906, 43.761532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719074, 32.415176, 43.288700>,  <39.810349, 31.991642, 43.748417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719074, 32.415176, 43.288700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110245, 32.491550, 43.322670>,  <40.344948, 32.537376, 43.343052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110245, 32.491550, 43.322670>,  <39.719074, 32.415176, 43.288700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110245, 32.491550, 43.322670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015190, 0.340368, -0.940169,
		-0.208415, 0.920703, 0.329954,
		0.977922, 0.190934, 0.084924,
		40.403622, 32.548832, 43.348148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907402, 33.023399, 43.011936>,  <39.719074, 32.415176, 43.288700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907402, 33.023399, 43.011936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253944, 32.828083, 42.969997>,  <40.461872, 32.710892, 42.944836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253944, 32.828083, 42.969997>,  <39.907402, 33.023399, 43.011936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253944, 32.828083, 42.969997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110619, 0.392338, -0.913145,
		0.487018, 0.779513, 0.393920,
		0.866358, -0.488293, -0.104847,
		40.513851, 32.681595, 42.938541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321976, 33.513493, 42.645824>,  <39.907402, 33.023399, 43.011936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321976, 33.513493, 42.645824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529339, 33.173908, 42.604805>,  <40.653755, 32.970158, 42.580193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529339, 33.173908, 42.604805>,  <40.321976, 33.513493, 42.645824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529339, 33.173908, 42.604805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289811, 0.287243, -0.912963,
		0.804528, 0.443566, 0.394948,
		0.518406, -0.848964, -0.102545,
		40.684860, 32.919220, 42.574043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058147, 33.651585, 42.239521>,  <40.321976, 33.513493, 42.645824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058147, 33.651585, 42.239521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987751, 33.258820, 42.211575>,  <40.945515, 33.023163, 42.194805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987751, 33.258820, 42.211575>,  <41.058147, 33.651585, 42.239521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987751, 33.258820, 42.211575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104985, 0.051850, -0.993121,
		0.978777, -0.182116, 0.093961,
		-0.175991, -0.981909, -0.069869,
		40.934952, 32.964249, 42.190613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510086, 33.360645, 41.808331>,  <41.058147, 33.651585, 42.239521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510086, 33.360645, 41.808331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208019, 33.098476, 41.803455>,  <41.026779, 32.941174, 41.800529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208019, 33.098476, 41.803455>,  <41.510086, 33.360645, 41.808331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208019, 33.098476, 41.803455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029692, 0.052776, -0.998165,
		0.654863, -0.753416, -0.059315,
		-0.755164, -0.655423, -0.012191,
		40.981468, 32.901852, 41.799797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705593, 32.908287, 41.270882>,  <41.510086, 33.360645, 41.808331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705593, 32.908287, 41.270882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318886, 32.821278, 41.324612>,  <41.086861, 32.769073, 41.356850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318886, 32.821278, 41.324612>,  <41.705593, 32.908287, 41.270882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318886, 32.821278, 41.324612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092172, -0.193523, -0.976756,
		0.238464, -0.956677, 0.167043,
		-0.966768, -0.217524, 0.134327,
		41.028854, 32.756020, 41.364910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510509, 32.286510, 40.821003>,  <41.705593, 32.908287, 41.270882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510509, 32.286510, 40.821003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176296, 32.495655, 40.888535>,  <40.975769, 32.621140, 40.929054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176296, 32.495655, 40.888535>,  <41.510509, 32.286510, 40.821003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176296, 32.495655, 40.888535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155004, 0.070489, -0.985396,
		-0.527124, -0.849499, 0.022150,
		-0.835532, 0.522859, 0.168832,
		40.925636, 32.652512, 40.939186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124565, 32.074921, 40.214149>,  <41.510509, 32.286510, 40.821003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124565, 32.074921, 40.214149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923355, 32.398197, 40.336655>,  <40.802628, 32.592163, 40.410160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923355, 32.398197, 40.336655>,  <41.124565, 32.074921, 40.214149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923355, 32.398197, 40.336655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217674, 0.224469, -0.949859,
		-0.836412, -0.544467, 0.063008,
		-0.503024, 0.808189, 0.306265,
		40.772449, 32.640656, 40.428535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473038, 32.128468, 39.770481>,  <41.124565, 32.074921, 40.214149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473038, 32.128468, 39.770481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519241, 32.496811, 39.919434>,  <40.546963, 32.717819, 40.008804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519241, 32.496811, 39.919434>,  <40.473038, 32.128468, 39.770481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519241, 32.496811, 39.919434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016842, 0.376656, -0.926200,
		-0.993163, 0.100717, 0.059017,
		0.115513, 0.920862, 0.372384,
		40.553894, 32.773071, 40.031147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926907, 32.534637, 39.380383>,  <40.473038, 32.128468, 39.770481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926907, 32.534637, 39.380383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176235, 32.807053, 39.534088>,  <40.325832, 32.970501, 39.626312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176235, 32.807053, 39.534088>,  <39.926907, 32.534637, 39.380383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176235, 32.807053, 39.534088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010732, 0.483917, -0.875048,
		-0.781892, 0.549561, 0.294327,
		0.623322, 0.681034, 0.384268,
		40.363232, 33.011364, 39.649368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675331, 33.152111, 39.152920>,  <39.926907, 32.534637, 39.380383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675331, 33.152111, 39.152920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047791, 33.250160, 39.260902>,  <40.271267, 33.308990, 39.325691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047791, 33.250160, 39.260902>,  <39.675331, 33.152111, 39.152920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047791, 33.250160, 39.260902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054062, 0.639359, -0.767005,
		-0.360611, 0.728790, 0.582086,
		0.931148, 0.245122, 0.269961,
		40.327133, 33.323696, 39.341892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618168, 33.894711, 39.123104>,  <39.675331, 33.152111, 39.152920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618168, 33.894711, 39.123104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010006, 33.815472, 39.109524>,  <40.245110, 33.767929, 39.101376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010006, 33.815472, 39.109524>,  <39.618168, 33.894711, 39.123104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010006, 33.815472, 39.109524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113299, 0.683799, -0.720821,
		0.166007, 0.702266, 0.692290,
		0.979594, -0.198097, -0.033950,
		40.303883, 33.756042, 39.099339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855339, 34.500977, 39.265850>,  <39.618168, 33.894711, 39.123104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855339, 34.500977, 39.265850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133762, 34.278999, 39.083626>,  <40.300816, 34.145813, 38.974289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133762, 34.278999, 39.083626>,  <39.855339, 34.500977, 39.265850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133762, 34.278999, 39.083626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014156, 0.644988, -0.764061,
		0.717845, 0.525382, 0.456806,
		0.696059, -0.554944, -0.455564,
		40.342579, 34.112514, 38.946957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352577, 35.000126, 39.088329>,  <39.855339, 34.500977, 39.265850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352577, 35.000126, 39.088329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391479, 34.679203, 38.852753>,  <40.414822, 34.486649, 38.711407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391479, 34.679203, 38.852753>,  <40.352577, 35.000126, 39.088329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391479, 34.679203, 38.852753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128606, 0.596915, -0.791930,
		0.986915, 0.001282, 0.161238,
		0.097260, -0.802303, -0.588939,
		40.420658, 34.438511, 38.676071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989624, 35.088650, 38.664944>,  <40.352577, 35.000126, 39.088329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989624, 35.088650, 38.664944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766342, 34.823425, 38.465443>,  <40.632374, 34.664291, 38.345741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766342, 34.823425, 38.465443>,  <40.989624, 35.088650, 38.664944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766342, 34.823425, 38.465443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082759, 0.553629, -0.828641,
		0.825566, -0.503827, -0.254164,
		-0.558204, -0.663064, -0.498754,
		40.598881, 34.624508, 38.315815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316383, 34.882683, 38.118027>,  <40.989624, 35.088650, 38.664944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316383, 34.882683, 38.118027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942314, 34.796322, 38.005714>,  <40.717873, 34.744503, 37.938328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942314, 34.796322, 38.005714>,  <41.316383, 34.882683, 38.118027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942314, 34.796322, 38.005714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145127, 0.489560, -0.859808,
		0.323093, -0.844818, -0.426490,
		-0.935173, -0.215903, -0.280779,
		40.661762, 34.731552, 37.921482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368118, 34.728588, 37.472820>,  <41.316383, 34.882683, 38.118027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368118, 34.728588, 37.472820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972210, 34.783764, 37.458302>,  <40.734665, 34.816872, 37.449589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972210, 34.783764, 37.458302>,  <41.368118, 34.728588, 37.472820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972210, 34.783764, 37.458302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112053, 0.594493, -0.796255,
		-0.088258, -0.792181, -0.603871,
		-0.989775, 0.137942, -0.036297,
		40.675278, 34.825146, 37.447411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246861, 34.577103, 36.851738>,  <41.368118, 34.728588, 37.472820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246861, 34.577103, 36.851738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928394, 34.787170, 36.971947>,  <40.737312, 34.913212, 37.044071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928394, 34.787170, 36.971947>,  <41.246861, 34.577103, 36.851738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928394, 34.787170, 36.971947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136970, 0.640203, -0.755896,
		-0.589367, -0.560659, -0.581643,
		-0.796169, 0.525168, 0.300521,
		40.689545, 34.944721, 37.062103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852146, 34.652725, 36.198215>,  <41.246861, 34.577103, 36.851738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852146, 34.652725, 36.198215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690468, 34.922436, 36.445431>,  <40.593460, 35.084263, 36.593761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690468, 34.922436, 36.445431>,  <40.852146, 34.652725, 36.198215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690468, 34.922436, 36.445431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214640, 0.726748, -0.652508,
		-0.889131, -0.131086, -0.438477,
		-0.404197, 0.674280, 0.618038,
		40.569210, 35.124722, 36.630840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316032, 35.082291, 35.888611>,  <40.852146, 34.652725, 36.198215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316032, 35.082291, 35.888611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482079, 35.291420, 36.186424>,  <40.581707, 35.416897, 36.365112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482079, 35.291420, 36.186424>,  <40.316032, 35.082291, 35.888611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482079, 35.291420, 36.186424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344332, 0.667210, -0.660505,
		-0.842089, 0.530555, 0.096946,
		0.415118, 0.522822, 0.744537,
		40.606613, 35.448265, 36.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099674, 35.748482, 35.879219>,  <40.316032, 35.082291, 35.888611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099674, 35.748482, 35.879219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467403, 35.728828, 36.035393>,  <40.688042, 35.717037, 36.129097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467403, 35.728828, 36.035393>,  <40.099674, 35.748482, 35.879219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467403, 35.728828, 36.035393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324186, 0.656965, -0.680661,
		-0.223061, 0.752318, 0.619888,
		0.919319, -0.049130, 0.390434,
		40.743198, 35.714088, 36.152523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493279, 36.506744, 35.861771>,  <40.099674, 35.748482, 35.879219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493279, 36.506744, 35.861771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783817, 36.232155, 35.848091>,  <40.958141, 36.067402, 35.839882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783817, 36.232155, 35.848091>,  <40.493279, 36.506744, 35.861771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783817, 36.232155, 35.848091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519517, 0.580910, -0.626615,
		0.450023, 0.437373, 0.778578,
		0.726348, -0.686476, -0.034200,
		41.001720, 36.026211, 35.837830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156158, 36.788040, 35.863029>,  <40.493279, 36.506744, 35.861771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156158, 36.788040, 35.863029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235634, 36.438004, 35.686512>,  <41.283318, 36.227982, 35.580601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235634, 36.438004, 35.686512>,  <41.156158, 36.788040, 35.863029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235634, 36.438004, 35.686512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605526, 0.463657, -0.646808,
		0.770625, -0.138701, 0.622013,
		0.198688, -0.875091, -0.441293,
		41.295238, 36.175476, 35.554123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870178, 36.718040, 35.804581>,  <41.156158, 36.788040, 35.863029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870178, 36.718040, 35.804581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678394, 36.534767, 35.505196>,  <41.563324, 36.424805, 35.325565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678394, 36.534767, 35.505196>,  <41.870178, 36.718040, 35.804581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678394, 36.534767, 35.505196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645896, 0.393134, -0.654419,
		0.594086, -0.797193, 0.107446,
		-0.479458, -0.458180, -0.748459,
		41.534557, 36.397312, 35.280659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304241, 36.906975, 35.207973>,  <41.870178, 36.718040, 35.804581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304241, 36.906975, 35.207973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006523, 36.722057, 35.015179>,  <41.827892, 36.611107, 34.899502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006523, 36.722057, 35.015179>,  <42.304241, 36.906975, 35.207973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006523, 36.722057, 35.015179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392280, 0.281455, -0.875728,
		0.540505, -0.840870, -0.028134,
		-0.744292, -0.462299, -0.481984,
		41.783234, 36.583366, 34.870583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538639, 36.380852, 34.824726>,  <42.304241, 36.906975, 35.207973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538639, 36.380852, 34.824726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209221, 36.523556, 34.648319>,  <42.011570, 36.609177, 34.542477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209221, 36.523556, 34.648319>,  <42.538639, 36.380852, 34.824726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209221, 36.523556, 34.648319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500781, 0.092085, -0.860662,
		-0.266441, -0.929646, -0.254496,
		-0.823546, 0.356762, -0.441014,
		41.962158, 36.630585, 34.516014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104534, 36.881702, 34.771553>,  <42.538639, 36.380852, 34.824726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104534, 36.881702, 34.771553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497528, 36.953022, 34.749878>,  <43.733322, 36.995815, 34.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497528, 36.953022, 34.749878>,  <43.104534, 36.881702, 34.771553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497528, 36.953022, 34.749878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125540, 0.848160, 0.514650,
		0.137722, -0.498832, 0.855687,
		0.982483, 0.178302, -0.054187,
		43.792274, 37.006512, 34.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372021, 36.717663, 35.380325>,  <43.104534, 36.881702, 34.771553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372021, 36.717663, 35.380325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617775, 36.992363, 35.224941>,  <43.765228, 37.157185, 35.131710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617775, 36.992363, 35.224941>,  <43.372021, 36.717663, 35.380325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617775, 36.992363, 35.224941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181372, 0.602087, 0.777557,
		0.767876, -0.407265, 0.494472,
		0.614386, 0.686750, -0.388462,
		43.802090, 37.198387, 35.108402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791615, 36.933372, 35.912762>,  <43.372021, 36.717663, 35.380325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791615, 36.933372, 35.912762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840939, 37.213249, 35.631271>,  <43.870533, 37.381176, 35.462379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840939, 37.213249, 35.631271>,  <43.791615, 36.933372, 35.912762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840939, 37.213249, 35.631271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039624, 0.705097, 0.708003,
		0.991577, -0.115187, 0.059221,
		0.123309, 0.699693, -0.703722,
		43.877930, 37.423157, 35.420155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076653, 37.452263, 36.402458>,  <43.791615, 36.933372, 35.912762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076653, 37.452263, 36.402458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975697, 37.634514, 36.061001>,  <43.915123, 37.743866, 35.856129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975697, 37.634514, 36.061001>,  <44.076653, 37.452263, 36.402458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975697, 37.634514, 36.061001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070970, 0.871108, 0.485937,
		0.965019, 0.183230, -0.187525,
		-0.252393, 0.455630, -0.853639,
		43.899979, 37.771202, 35.804909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547001, 37.958298, 36.256351>,  <44.076653, 37.452263, 36.402458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547001, 37.958298, 36.256351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238441, 38.082794, 36.034336>,  <44.053307, 38.157494, 35.901127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238441, 38.082794, 36.034336>,  <44.547001, 37.958298, 36.256351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238441, 38.082794, 36.034336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102081, 0.800402, 0.590708,
		0.628107, 0.512332, -0.585660,
		-0.771402, 0.311243, -0.555038,
		44.007019, 38.176167, 35.867825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601429, 38.698929, 36.162018>,  <44.547001, 37.958298, 36.256351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601429, 38.698929, 36.162018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212528, 38.641975, 36.087765>,  <43.979187, 38.607803, 36.043213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212528, 38.641975, 36.087765>,  <44.601429, 38.698929, 36.162018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212528, 38.641975, 36.087765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200043, 0.917385, 0.344075,
		0.121304, 0.371661, -0.920410,
		-0.972249, -0.142384, -0.185630,
		43.920853, 38.599258, 36.032074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293079, 39.205410, 35.677849>,  <44.601429, 38.698929, 36.162018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293079, 39.205410, 35.677849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016834, 39.083542, 35.940216>,  <43.851086, 39.010422, 36.097637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016834, 39.083542, 35.940216>,  <44.293079, 39.205410, 35.677849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016834, 39.083542, 35.940216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060099, 0.927975, 0.367765,
		-0.720724, 0.214563, -0.659181,
		-0.690612, -0.304674, 0.655918,
		43.809650, 38.992142, 36.136993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005966, 39.855400, 35.904716>,  <44.293079, 39.205410, 35.677849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005966, 39.855400, 35.904716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798237, 39.606258, 36.138763>,  <43.673599, 39.456772, 36.279190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798237, 39.606258, 36.138763>,  <44.005966, 39.855400, 35.904716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798237, 39.606258, 36.138763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081366, 0.717608, 0.691678,
		-0.850696, 0.311595, -0.423349,
		-0.519323, -0.622854, 0.585113,
		43.642441, 39.419403, 36.314297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435177, 40.244911, 36.111622>,  <44.005966, 39.855400, 35.904716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435177, 40.244911, 36.111622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464813, 39.933064, 36.360363>,  <43.482594, 39.745953, 36.509609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464813, 39.933064, 36.360363>,  <43.435177, 40.244911, 36.111622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464813, 39.933064, 36.360363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256034, 0.587794, 0.767428,
		-0.963824, -0.216072, -0.156062,
		0.074087, -0.779623, 0.621852,
		43.487038, 39.699177, 36.546917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833309, 40.192120, 36.569374>,  <43.435177, 40.244911, 36.111622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833309, 40.192120, 36.569374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084167, 39.984646, 36.801807>,  <43.234680, 39.860161, 36.941269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084167, 39.984646, 36.801807>,  <42.833309, 40.192120, 36.569374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084167, 39.984646, 36.801807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182464, 0.627435, 0.756989,
		-0.757231, -0.580767, 0.298849,
		0.627142, -0.518686, 0.581083,
		43.272308, 39.829041, 36.976131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495846, 39.918018, 37.223808>,  <42.833309, 40.192120, 36.569374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495846, 39.918018, 37.223808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888432, 39.945721, 37.295277>,  <43.123985, 39.962341, 37.338158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888432, 39.945721, 37.295277>,  <42.495846, 39.918018, 37.223808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888432, 39.945721, 37.295277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191285, 0.409556, 0.892005,
		-0.011400, -0.909652, 0.415214,
		0.981468, 0.069255, 0.178672,
		43.182873, 39.966499, 37.348877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584995, 39.768150, 37.961555>,  <42.495846, 39.918018, 37.223808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584995, 39.768150, 37.961555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925083, 39.952515, 37.859825>,  <43.129135, 40.063133, 37.798786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925083, 39.952515, 37.859825>,  <42.584995, 39.768150, 37.961555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925083, 39.952515, 37.859825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035010, 0.531555, 0.846300,
		0.525229, -0.710655, 0.468085,
		0.850240, 0.460889, -0.254308,
		43.180149, 40.090790, 37.783527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968010, 39.636368, 38.531754>,  <42.584995, 39.768150, 37.961555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968010, 39.636368, 38.531754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157310, 39.944260, 38.360382>,  <43.270889, 40.128994, 38.257561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157310, 39.944260, 38.360382>,  <42.968010, 39.636368, 38.531754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157310, 39.944260, 38.360382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247533, 0.350550, 0.903240,
		0.845435, -0.533510, -0.024634,
		0.473252, 0.769728, -0.428429,
		43.299286, 40.175179, 38.231853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624035, 39.628712, 38.775448>,  <42.968010, 39.636368, 38.531754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624035, 39.628712, 38.775448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557125, 40.004253, 38.655064>,  <43.516979, 40.229576, 38.582832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557125, 40.004253, 38.655064>,  <43.624035, 39.628712, 38.775448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557125, 40.004253, 38.655064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234351, 0.334374, 0.912838,
		0.957652, 0.082169, -0.275954,
		-0.167278, 0.938852, -0.300958,
		43.506943, 40.285908, 38.564777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034317, 39.978268, 39.165184>,  <43.624035, 39.628712, 38.775448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034317, 39.978268, 39.165184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824432, 40.281105, 39.009502>,  <43.698502, 40.462807, 38.916092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824432, 40.281105, 39.009502>,  <44.034317, 39.978268, 39.165184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824432, 40.281105, 39.009502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241756, 0.570903, 0.784617,
		0.816228, 0.317609, -0.482594,
		-0.524715, 0.757096, -0.389203,
		43.667019, 40.508232, 38.892742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425476, 40.508060, 39.257690>,  <44.034317, 39.978268, 39.165184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425476, 40.508060, 39.257690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066776, 40.679802, 39.214798>,  <43.851559, 40.782848, 39.189064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066776, 40.679802, 39.214798>,  <44.425476, 40.508060, 39.257690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066776, 40.679802, 39.214798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223695, 0.648844, 0.727298,
		0.381847, 0.628214, -0.677893,
		-0.896746, 0.429358, -0.107230,
		43.797752, 40.808609, 39.182629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580185, 41.180779, 39.385357>,  <44.425476, 40.508060, 39.257690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580185, 41.180779, 39.385357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184105, 41.143448, 39.426922>,  <43.946457, 41.121048, 39.451862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184105, 41.143448, 39.426922>,  <44.580185, 41.180779, 39.385357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184105, 41.143448, 39.426922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025518, 0.610567, 0.791553,
		-0.137320, 0.786446, -0.602201,
		-0.990198, -0.093329, 0.103911,
		43.887047, 41.115448, 39.458096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294880, 41.887222, 39.487019>,  <44.580185, 41.180779, 39.385357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294880, 41.887222, 39.487019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014362, 41.648514, 39.642994>,  <43.846054, 41.505287, 39.736580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014362, 41.648514, 39.642994>,  <44.294880, 41.887222, 39.487019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014362, 41.648514, 39.642994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003591, 0.549948, 0.835191,
		-0.712867, 0.584311, -0.387816,
		-0.701290, -0.596773, 0.389941,
		43.803974, 41.469482, 39.759975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928013, 42.288918, 39.879513>,  <44.294880, 41.887222, 39.487019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928013, 42.288918, 39.879513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780254, 41.959103, 40.050941>,  <43.691597, 41.761211, 40.153801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780254, 41.959103, 40.050941>,  <43.928013, 42.288918, 39.879513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780254, 41.959103, 40.050941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047785, 0.443732, 0.894885,
		-0.928041, 0.351050, -0.124514,
		-0.369400, -0.824540, 0.428576,
		43.669434, 41.711742, 40.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452477, 42.486427, 40.386971>,  <43.928013, 42.288918, 39.879513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452477, 42.486427, 40.386971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577972, 42.124393, 40.501781>,  <43.653271, 41.907173, 40.570667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577972, 42.124393, 40.501781>,  <43.452477, 42.486427, 40.386971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577972, 42.124393, 40.501781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187093, 0.355295, 0.915839,
		-0.930895, -0.233631, 0.280805,
		0.313737, -0.905087, 0.287032,
		43.672092, 41.852867, 40.587891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128887, 42.371441, 41.038231>,  <43.452477, 42.486427, 40.386971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128887, 42.371441, 41.038231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437561, 42.117210, 41.028885>,  <43.622765, 41.964672, 41.023277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437561, 42.117210, 41.028885>,  <43.128887, 42.371441, 41.038231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437561, 42.117210, 41.028885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210598, 0.220684, 0.952338,
		-0.600130, -0.739823, 0.304149,
		0.771682, -0.635579, -0.023366,
		43.669067, 41.926537, 41.021873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018200, 41.864052, 41.626606>,  <43.128887, 42.371441, 41.038231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018200, 41.864052, 41.626606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378532, 41.956867, 41.479824>,  <43.594734, 42.012554, 41.391754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378532, 41.956867, 41.479824>,  <43.018200, 41.864052, 41.626606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378532, 41.956867, 41.479824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210043, 0.506791, 0.836089,
		0.379971, -0.830255, 0.407798,
		0.900835, 0.232035, -0.366955,
		43.648785, 42.026478, 41.369736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382183, 42.159695, 42.146439>,  <43.018200, 41.864052, 41.626606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382183, 42.159695, 42.146439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651196, 42.246029, 41.863281>,  <43.812603, 42.297829, 41.693386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651196, 42.246029, 41.863281>,  <43.382183, 42.159695, 42.146439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651196, 42.246029, 41.863281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375734, 0.724500, 0.577861,
		0.637593, -0.654610, 0.406153,
		0.672531, 0.215835, -0.707896,
		43.852955, 42.310780, 41.650913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901562, 42.498119, 42.223141>,  <43.382183, 42.159695, 42.146439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901562, 42.498119, 42.223141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104549, 42.585400, 41.889706>,  <44.226341, 42.637768, 41.689644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104549, 42.585400, 41.889706>,  <43.901562, 42.498119, 42.223141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104549, 42.585400, 41.889706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710792, 0.440854, 0.548108,
		0.487089, -0.870652, 0.068622,
		0.507464, 0.218202, -0.833588,
		44.256790, 42.650860, 41.639629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591450, 42.472641, 42.562679>,  <43.901562, 42.498119, 42.223141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591450, 42.472641, 42.562679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499756, 42.814312, 42.375992>,  <44.444740, 43.019314, 42.263981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499756, 42.814312, 42.375992>,  <44.591450, 42.472641, 42.562679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499756, 42.814312, 42.375992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378748, 0.519976, 0.765621,
		0.896661, -0.001262, -0.442716,
		-0.229236, 0.854180, -0.466720,
		44.430984, 43.070564, 42.235977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178196, 43.036770, 42.354454>,  <44.591450, 42.472641, 42.562679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178196, 43.036770, 42.354454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845917, 43.245613, 42.431763>,  <44.646549, 43.370918, 42.478149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845917, 43.245613, 42.431763>,  <45.178196, 43.036770, 42.354454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845917, 43.245613, 42.431763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431315, 0.384033, 0.816386,
		0.352014, 0.761529, -0.544205,
		-0.830694, 0.522103, 0.193274,
		44.596710, 43.402245, 42.489746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323212, 42.522408, 41.722847>,  <45.178196, 43.036770, 42.354454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323212, 42.522408, 41.722847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021854, 42.758919, 41.607761>,  <44.841038, 42.900826, 41.538708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021854, 42.758919, 41.607761>,  <45.323212, 42.522408, 41.722847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021854, 42.758919, 41.607761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655419, 0.639895, -0.401199,
		-0.053114, -0.490836, -0.869632,
		-0.753396, 0.591283, -0.287716,
		44.795837, 42.936302, 41.521446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489750, 41.768978, 41.716743>,  <45.323212, 42.522408, 41.722847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489750, 41.768978, 41.716743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694572, 41.570522, 41.997211>,  <45.817467, 41.451450, 42.165493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694572, 41.570522, 41.997211>,  <45.489750, 41.768978, 41.716743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694572, 41.570522, 41.997211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109824, -0.847428, -0.519427,
		0.851900, 0.188972, -0.488422,
		0.512059, -0.496141, 0.701170,
		45.848190, 41.421680, 42.207561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164577, 41.483662, 41.461918>,  <45.489750, 41.768978, 41.716743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164577, 41.483662, 41.461918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992733, 41.258919, 41.744690>,  <45.889626, 41.124073, 41.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992733, 41.258919, 41.744690>,  <46.164577, 41.483662, 41.461918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992733, 41.258919, 41.744690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169304, -0.718854, -0.674229,
		0.886999, -0.409344, 0.213705,
		-0.429614, -0.561859, 0.706927,
		45.863850, 41.090363, 41.956768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428192, 40.786476, 41.394604>,  <46.164577, 41.483662, 41.461918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428192, 40.786476, 41.394604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085037, 40.727844, 41.591602>,  <45.879147, 40.692665, 41.709801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085037, 40.727844, 41.591602>,  <46.428192, 40.786476, 41.394604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085037, 40.727844, 41.591602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162515, -0.831853, -0.530670,
		0.487468, -0.535290, 0.689811,
		-0.857884, -0.146580, 0.492494,
		45.827671, 40.683868, 41.739349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407719, 40.156361, 41.804100>,  <46.428192, 40.786476, 41.394604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407719, 40.156361, 41.804100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058224, 40.265659, 41.643143>,  <45.848526, 40.331238, 41.546570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058224, 40.265659, 41.643143>,  <46.407719, 40.156361, 41.804100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058224, 40.265659, 41.643143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007002, -0.834272, -0.551309,
		-0.486345, -0.478882, 0.730849,
		-0.873739, 0.273244, -0.402391,
		45.796101, 40.347633, 41.522427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107754, 39.472370, 41.740402>,  <46.407719, 40.156361, 41.804100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107754, 39.472370, 41.740402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965004, 39.760876, 41.502941>,  <45.879353, 39.933979, 41.360466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965004, 39.760876, 41.502941>,  <46.107754, 39.472370, 41.740402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965004, 39.760876, 41.502941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073484, -0.655200, -0.751873,
		-0.931257, -0.224701, 0.286827,
		-0.356876, 0.721264, -0.593648,
		45.857941, 39.977257, 41.324848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459927, 39.192215, 41.392708>,  <46.107754, 39.472370, 41.740402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459927, 39.192215, 41.392708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580654, 39.493694, 41.159180>,  <45.653091, 39.674580, 41.019062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580654, 39.493694, 41.159180>,  <45.459927, 39.192215, 41.392708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580654, 39.493694, 41.159180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007596, -0.610459, -0.792011,
		-0.953334, 0.243480, -0.178524,
		0.301821, 0.753696, -0.583821,
		45.671200, 39.719803, 40.984032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971802, 39.167015, 40.813122>,  <45.459927, 39.192215, 41.392708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971802, 39.167015, 40.813122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296543, 39.367706, 40.693684>,  <45.491390, 39.488121, 40.622021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296543, 39.367706, 40.693684>,  <44.971802, 39.167015, 40.813122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296543, 39.367706, 40.693684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076988, -0.598944, -0.797082,
		-0.578758, 0.624128, -0.524884,
		0.811857, 0.501727, -0.298593,
		45.540100, 39.518223, 40.604107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760132, 39.591335, 40.237556>,  <44.971802, 39.167015, 40.813122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760132, 39.591335, 40.237556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154205, 39.524319, 40.222897>,  <45.390648, 39.484108, 40.214100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154205, 39.524319, 40.222897>,  <44.760132, 39.591335, 40.237556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154205, 39.524319, 40.222897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112732, -0.471584, -0.874586,
		0.129242, 0.865760, -0.483484,
		0.985184, -0.167538, -0.036650,
		45.449760, 39.474056, 40.211903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862659, 39.645878, 39.584480>,  <44.760132, 39.591335, 40.237556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862659, 39.645878, 39.584480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197498, 39.473545, 39.719330>,  <45.398403, 39.370148, 39.800240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197498, 39.473545, 39.719330>,  <44.862659, 39.645878, 39.584480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197498, 39.473545, 39.719330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044292, -0.560853, -0.826730,
		0.545255, 0.706987, -0.450407,
		0.837099, -0.430829, 0.337122,
		45.448627, 39.344296, 39.820465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318474, 39.625046, 39.034248>,  <44.862659, 39.645878, 39.584480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318474, 39.625046, 39.034248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.421093, 39.315598, 39.266003>,  <45.482662, 39.129929, 39.405056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.421093, 39.315598, 39.266003>,  <45.318474, 39.625046, 39.034248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421093, 39.315598, 39.266003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169443, -0.554171, -0.814975,
		0.951564, 0.307251, -0.011084,
		0.256544, -0.773622, 0.579391,
		45.498055, 39.083511, 39.439819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978130, 39.431103, 38.911259>,  <45.318474, 39.625046, 39.034248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978130, 39.431103, 38.911259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853706, 39.081974, 39.061684>,  <45.779053, 38.872498, 39.151939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853706, 39.081974, 39.061684>,  <45.978130, 39.431103, 38.911259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853706, 39.081974, 39.061684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293391, -0.464555, -0.835530,
		0.903970, -0.149568, 0.400584,
		-0.311062, -0.872822, 0.376062,
		45.760387, 38.820129, 39.174503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420319, 39.029507, 38.636902>,  <45.978130, 39.431103, 38.911259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420319, 39.029507, 38.636902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152416, 38.760906, 38.763714>,  <45.991676, 38.599747, 38.839802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152416, 38.760906, 38.763714>,  <46.420319, 39.029507, 38.636902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152416, 38.760906, 38.763714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284011, -0.626115, -0.726166,
		0.686122, -0.396313, 0.610059,
		-0.669756, -0.671502, 0.317034,
		45.951488, 38.559456, 38.858826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754341, 38.389111, 38.591454>,  <46.420319, 39.029507, 38.636902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754341, 38.389111, 38.591454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365707, 38.294785, 38.599594>,  <46.132526, 38.238190, 38.604481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365707, 38.294785, 38.599594>,  <46.754341, 38.389111, 38.591454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365707, 38.294785, 38.599594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146932, -0.668317, -0.729220,
		0.185564, -0.705509, 0.683976,
		-0.971584, -0.235816, 0.020354,
		46.074230, 38.224041, 38.605701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760201, 37.732887, 38.526875>,  <46.754341, 38.389111, 38.591454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760201, 37.732887, 38.526875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369137, 37.769035, 38.450970>,  <46.134499, 37.790726, 38.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369137, 37.769035, 38.450970>,  <46.760201, 37.732887, 38.526875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369137, 37.769035, 38.450970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082516, -0.665324, -0.741980,
		-0.193308, -0.741064, 0.643005,
		-0.977662, 0.090373, -0.189762,
		46.075840, 37.796146, 38.394039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521645, 37.063736, 38.452106>,  <46.760201, 37.732887, 38.526875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521645, 37.063736, 38.452106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261353, 37.299290, 38.260376>,  <46.105175, 37.440624, 38.145336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261353, 37.299290, 38.260376>,  <46.521645, 37.063736, 38.452106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261353, 37.299290, 38.260376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003347, -0.629044, -0.777363,
		-0.759299, -0.507461, 0.407369,
		-0.650734, 0.588887, -0.479331,
		46.066132, 37.475956, 38.116577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094494, 36.679749, 38.089413>,  <46.521645, 37.063736, 38.452106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094494, 36.679749, 38.089413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028053, 37.018784, 37.887817>,  <45.988190, 37.222206, 37.766861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028053, 37.018784, 37.887817>,  <46.094494, 36.679749, 38.089413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028053, 37.018784, 37.887817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110526, -0.523865, -0.844600,
		-0.979895, -0.084584, 0.180695,
		-0.166100, 0.847591, -0.503984,
		45.978222, 37.273060, 37.736622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529400, 36.528675, 37.670139>,  <46.094494, 36.679749, 38.089413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529400, 36.528675, 37.670139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715141, 36.842178, 37.505165>,  <45.826588, 37.030281, 37.406181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715141, 36.842178, 37.505165>,  <45.529400, 36.528675, 37.670139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715141, 36.842178, 37.505165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116580, -0.407539, -0.905715,
		-0.877943, 0.468655, -0.097872,
		0.464355, 0.783757, -0.412432,
		45.854446, 37.077305, 37.381435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089710, 36.651997, 37.073536>,  <45.529400, 36.528675, 37.670139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089710, 36.651997, 37.073536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436508, 36.826015, 36.976326>,  <45.644585, 36.930428, 36.917999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436508, 36.826015, 36.976326>,  <45.089710, 36.651997, 37.073536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436508, 36.826015, 36.976326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138268, -0.258514, -0.956061,
		-0.478756, 0.862499, -0.163976,
		0.866991, 0.435047, -0.243022,
		45.696606, 36.956532, 36.903419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986950, 36.929714, 36.453529>,  <45.089710, 36.651997, 37.073536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986950, 36.929714, 36.453529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385651, 36.911076, 36.479774>,  <45.624870, 36.899895, 36.495522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385651, 36.911076, 36.479774>,  <44.986950, 36.929714, 36.453529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385651, 36.911076, 36.479774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037442, -0.453230, -0.890607,
		0.071237, 0.890175, -0.450015,
		0.996756, -0.046595, 0.065617,
		45.684677, 36.897099, 36.499458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218090, 37.245594, 35.830029>,  <44.986950, 36.929714, 36.453529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218090, 37.245594, 35.830029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517406, 37.003098, 35.937756>,  <45.696999, 36.857601, 36.002392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517406, 37.003098, 35.937756>,  <45.218090, 37.245594, 35.830029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517406, 37.003098, 35.937756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159526, -0.229614, -0.960119,
		0.643899, 0.761415, -0.075109,
		0.748295, -0.606238, 0.269313,
		45.741894, 36.821224, 36.018551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681396, 37.385811, 35.360081>,  <45.218090, 37.245594, 35.830029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681396, 37.385811, 35.360081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792751, 37.035843, 35.518578>,  <45.859566, 36.825863, 35.613678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792751, 37.035843, 35.518578>,  <45.681396, 37.385811, 35.360081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792751, 37.035843, 35.518578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194325, -0.352714, -0.915331,
		0.940605, 0.331817, 0.071828,
		0.278387, -0.874923, 0.396245,
		45.876266, 36.773365, 35.637451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262608, 37.257473, 35.027988>,  <45.681396, 37.385811, 35.360081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262608, 37.257473, 35.027988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123268, 36.906490, 35.159878>,  <46.039665, 36.695900, 35.239010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123268, 36.906490, 35.159878>,  <46.262608, 37.257473, 35.027988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123268, 36.906490, 35.159878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258811, -0.428113, -0.865873,
		0.900927, -0.216292, 0.376229,
		-0.348350, -0.877461, 0.329720,
		46.018764, 36.643253, 35.258793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.776794, 36.859234, 34.794796>,  <46.262608, 37.257473, 35.027988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.776794, 36.859234, 34.794796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475861, 36.609489, 34.878857>,  <46.295300, 36.459644, 34.929295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475861, 36.609489, 34.878857>,  <46.776794, 36.859234, 34.794796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475861, 36.609489, 34.878857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120462, -0.444006, -0.887889,
		0.647672, -0.642676, 0.409254,
		-0.752336, -0.624361, 0.210153,
		46.250160, 36.422180, 34.941902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047279, 36.219238, 34.814285>,  <46.776794, 36.859234, 34.794796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047279, 36.219238, 34.814285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657459, 36.185341, 34.731274>,  <46.423569, 36.165001, 34.681465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657459, 36.185341, 34.731274>,  <47.047279, 36.219238, 34.814285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657459, 36.185341, 34.731274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221565, -0.223590, -0.949166,
		0.034036, -0.970992, 0.236676,
		-0.974551, -0.084745, -0.207528,
		46.365093, 36.159916, 34.669014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764908, 35.468903, 34.525612>,  <47.047279, 36.219238, 34.814285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764908, 35.468903, 34.525612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536743, 35.768593, 34.390976>,  <46.399845, 35.948406, 34.310196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536743, 35.768593, 34.390976>,  <46.764908, 35.468903, 34.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536743, 35.768593, 34.390976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197726, -0.272486, -0.941624,
		-0.797202, -0.603669, 0.007289,
		-0.570415, 0.749223, -0.336587,
		46.365620, 35.993359, 34.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.827988, 35.851013, 33.788761>,  <46.764908, 35.468903, 34.525612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.827988, 35.851013, 33.788761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.076725, 35.758217, 33.489567>,  <47.225967, 35.702538, 33.310051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.076725, 35.758217, 33.489567>,  <46.827988, 35.851013, 33.788761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.076725, 35.758217, 33.489567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666576, -0.344555, 0.661028,
		-0.411079, -0.909648, -0.059616,
		0.621844, -0.231996, -0.747989,
		47.263279, 35.688618, 33.265171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992981, 35.101429, 33.918114>,  <46.827988, 35.851013, 33.788761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992981, 35.101429, 33.918114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275261, 35.268848, 33.689445>,  <47.444630, 35.369301, 33.552246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275261, 35.268848, 33.689445>,  <46.992981, 35.101429, 33.918114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275261, 35.268848, 33.689445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703002, -0.313264, 0.638478,
		0.088149, -0.852458, -0.515310,
		0.705704, 0.418545, -0.571666,
		47.486973, 35.394413, 33.517944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584141, 34.685501, 34.006981>,  <46.992981, 35.101429, 33.918114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584141, 34.685501, 34.006981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728474, 35.029709, 33.863148>,  <47.815071, 35.236233, 33.776848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728474, 35.029709, 33.863148>,  <47.584141, 34.685501, 34.006981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.728474, 35.029709, 33.863148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731540, -0.021992, 0.681444,
		0.578490, -0.508935, -0.637443,
		0.360830, 0.860524, -0.359584,
		47.836723, 35.287865, 33.755272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710026, 35.216732, 34.521950>,  <47.584141, 34.685501, 34.006981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710026, 35.216732, 34.521950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695797, 35.106773, 34.906277>,  <47.687260, 35.040798, 35.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695797, 35.106773, 34.906277>,  <47.710026, 35.216732, 34.521950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695797, 35.106773, 34.906277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814508, 0.565050, 0.131509,
		-0.579061, -0.777916, -0.244001,
		-0.035570, -0.274892, 0.960817,
		47.685127, 35.024307, 35.194523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.559696, 33.626263, 46.337353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263882, 33.393555, 46.201920>,  <35.086395, 33.253929, 46.120659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263882, 33.393555, 46.201920>,  <35.559696, 33.626263, 46.337353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263882, 33.393555, 46.201920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029575, 0.474439, -0.879792,
		0.672471, -0.660648, -0.333658,
		-0.739533, -0.581766, -0.338584,
		35.042023, 33.219025, 46.100346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841572, 33.371490, 45.805904>,  <35.559696, 33.626263, 46.337353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841572, 33.371490, 45.805904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445965, 33.337872, 45.757290>,  <35.208599, 33.317699, 45.728123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445965, 33.337872, 45.757290>,  <35.841572, 33.371490, 45.805904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445965, 33.337872, 45.757290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066303, 0.482619, -0.873317,
		0.132058, -0.871788, -0.471749,
		-0.989022, -0.084050, -0.121536,
		35.149258, 33.312656, 45.720829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824131, 33.253895, 45.148109>,  <35.841572, 33.371490, 45.805904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824131, 33.253895, 45.148109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446606, 33.359913, 45.227077>,  <35.220093, 33.423523, 45.274460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446606, 33.359913, 45.227077>,  <35.824131, 33.253895, 45.148109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446606, 33.359913, 45.227077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070042, 0.423367, -0.903247,
		-0.322984, -0.866320, -0.381013,
		-0.943809, 0.265047, 0.197420,
		35.163464, 33.439426, 45.286304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411304, 33.079334, 44.534885>,  <35.824131, 33.253895, 45.148109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411304, 33.079334, 44.534885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224033, 33.359856, 44.749912>,  <35.111671, 33.528168, 44.878929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224033, 33.359856, 44.749912>,  <35.411304, 33.079334, 44.534885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224033, 33.359856, 44.749912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124995, 0.549682, -0.825969,
		-0.874746, -0.453898, -0.169692,
		-0.468183, 0.701303, 0.537568,
		35.083580, 33.570248, 44.911182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894520, 33.226871, 44.095009>,  <35.411304, 33.079334, 44.534885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894520, 33.226871, 44.095009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915737, 33.540337, 44.342575>,  <34.928467, 33.728416, 44.491116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915737, 33.540337, 44.342575>,  <34.894520, 33.226871, 44.095009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915737, 33.540337, 44.342575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011189, 0.620212, -0.784355,
		-0.998529, 0.034683, 0.041669,
		0.053047, 0.783667, 0.618912,
		34.931652, 33.775436, 44.528248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233616, 33.640606, 43.844910>,  <34.894520, 33.226871, 44.095009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233616, 33.640606, 43.844910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504025, 33.856232, 44.045872>,  <34.666267, 33.985607, 44.166451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504025, 33.856232, 44.045872>,  <34.233616, 33.640606, 43.844910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504025, 33.856232, 44.045872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042118, 0.652419, -0.756688,
		-0.735681, 0.532694, 0.418342,
		0.676017, 0.539061, 0.502408,
		34.706829, 34.017948, 44.196594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921047, 34.358768, 43.875553>,  <34.233616, 33.640606, 43.844910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921047, 34.358768, 43.875553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314213, 34.385715, 43.944073>,  <34.550114, 34.401882, 43.985184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314213, 34.385715, 43.944073>,  <33.921047, 34.358768, 43.875553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314213, 34.385715, 43.944073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098262, 0.594902, -0.797769,
		-0.155651, 0.800970, 0.578117,
		0.982913, 0.067367, 0.171302,
		34.609085, 34.405926, 43.995464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116508, 35.070801, 43.708122>,  <33.921047, 34.358768, 43.875553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116508, 35.070801, 43.708122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467323, 34.879368, 43.724953>,  <34.677811, 34.764507, 43.735050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467323, 34.879368, 43.724953>,  <34.116508, 35.070801, 43.708122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467323, 34.879368, 43.724953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336113, 0.548658, -0.765508,
		0.343271, 0.685520, 0.642049,
		0.877037, -0.478578, 0.042074,
		34.730434, 34.735794, 43.737576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681820, 35.631210, 43.550953>,  <34.116508, 35.070801, 43.708122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681820, 35.631210, 43.550953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851051, 35.270737, 43.513260>,  <34.952591, 35.054455, 43.490646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851051, 35.270737, 43.513260>,  <34.681820, 35.631210, 43.550953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851051, 35.270737, 43.513260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616536, 0.362526, -0.698899,
		0.663994, 0.237593, 0.708986,
		0.423079, -0.901180, -0.094231,
		34.977974, 35.000381, 43.484989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447636, 35.660397, 43.399902>,  <34.681820, 35.631210, 43.550953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447636, 35.660397, 43.399902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344006, 35.309513, 43.238220>,  <35.281830, 35.098984, 43.141209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344006, 35.309513, 43.238220>,  <35.447636, 35.660397, 43.399902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344006, 35.309513, 43.238220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433213, 0.268504, -0.860367,
		0.863254, -0.398006, 0.310457,
		-0.259072, -0.877209, -0.404209,
		35.266285, 35.046349, 43.116959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052528, 35.515015, 43.075962>,  <35.447636, 35.660397, 43.399902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052528, 35.515015, 43.075962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771286, 35.272408, 42.927483>,  <35.602539, 35.126842, 42.838394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771286, 35.272408, 42.927483>,  <36.052528, 35.515015, 43.075962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771286, 35.272408, 42.927483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270224, 0.254951, -0.928428,
		0.657740, -0.753088, -0.015362,
		-0.703105, -0.606514, -0.371194,
		35.560356, 35.090454, 42.816124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288296, 35.085732, 42.673965>,  <36.052528, 35.515015, 43.075962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288296, 35.085732, 42.673965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915047, 35.103279, 42.531216>,  <35.691097, 35.113808, 42.445568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915047, 35.103279, 42.531216>,  <36.288296, 35.085732, 42.673965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915047, 35.103279, 42.531216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355252, 0.265639, -0.896232,
		0.055479, -0.963074, -0.263460,
		-0.933123, 0.043873, -0.356871,
		35.635109, 35.116440, 42.424152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442650, 35.075584, 42.008087>,  <36.288296, 35.085732, 42.673965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442650, 35.075584, 42.008087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050976, 35.150105, 41.975849>,  <35.815971, 35.194817, 41.956509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050976, 35.150105, 41.975849>,  <36.442650, 35.075584, 42.008087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050976, 35.150105, 41.975849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155734, 0.434863, -0.886928,
		-0.130188, -0.881015, -0.454823,
		-0.979182, 0.186299, -0.080590,
		35.757221, 35.205994, 41.951672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315609, 34.743519, 41.303753>,  <36.442650, 35.075584, 42.008087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315609, 34.743519, 41.303753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055740, 35.014835, 41.441067>,  <35.899818, 35.177624, 41.523457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055740, 35.014835, 41.441067>,  <36.315609, 34.743519, 41.303753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055740, 35.014835, 41.441067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032881, 0.476216, -0.878714,
		-0.759502, -0.559589, -0.331688,
		-0.649674, 0.678291, 0.343287,
		35.860840, 35.218323, 41.544052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803242, 34.854897, 40.818989>,  <36.315609, 34.743519, 41.303753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803242, 34.854897, 40.818989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783127, 35.186455, 41.041847>,  <35.771057, 35.385387, 41.175564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783127, 35.186455, 41.041847>,  <35.803242, 34.854897, 40.818989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783127, 35.186455, 41.041847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111692, 0.549685, -0.827872,
		-0.992470, -0.103860, 0.064939,
		-0.050287, 0.828891, 0.557146,
		35.768040, 35.435123, 41.208992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409977, 35.182213, 40.405659>,  <35.803242, 34.854897, 40.818989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409977, 35.182213, 40.405659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599827, 35.464851, 40.615589>,  <35.713737, 35.634434, 40.741547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599827, 35.464851, 40.615589>,  <35.409977, 35.182213, 40.405659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599827, 35.464851, 40.615589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203308, 0.492133, -0.846446,
		-0.856384, 0.508449, 0.089923,
		0.474628, 0.706601, 0.524827,
		35.742214, 35.676830, 40.773037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405048, 35.751205, 39.965427>,  <35.409977, 35.182213, 40.405659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405048, 35.751205, 39.965427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655952, 35.874878, 40.251350>,  <35.806496, 35.949081, 40.422905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655952, 35.874878, 40.251350>,  <35.405048, 35.751205, 39.965427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655952, 35.874878, 40.251350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518752, 0.518713, -0.679583,
		-0.580896, 0.797083, 0.164979,
		0.627261, 0.309184, 0.714807,
		35.844131, 35.967632, 40.465794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420265, 36.529629, 39.982121>,  <35.405048, 35.751205, 39.965427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420265, 36.529629, 39.982121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751728, 36.356514, 40.124119>,  <35.950607, 36.252644, 40.209316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751728, 36.356514, 40.124119>,  <35.420265, 36.529629, 39.982121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751728, 36.356514, 40.124119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545918, 0.484714, -0.683393,
		0.123691, 0.760098, 0.637928,
		0.828658, -0.432786, 0.354996,
		36.000324, 36.226677, 40.230618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905045, 37.065620, 40.129700>,  <35.420265, 36.529629, 39.982121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905045, 37.065620, 40.129700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114609, 36.727650, 40.086597>,  <36.240349, 36.524868, 40.060734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114609, 36.727650, 40.086597>,  <35.905045, 37.065620, 40.129700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114609, 36.727650, 40.086597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579274, 0.446192, -0.682169,
		0.624465, 0.294976, 0.723210,
		0.523914, -0.844927, -0.107759,
		36.271782, 36.474171, 40.054268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592575, 37.242805, 39.838058>,  <35.905045, 37.065620, 40.129700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592575, 37.242805, 39.838058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604042, 36.848492, 39.771847>,  <36.610920, 36.611904, 39.732121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604042, 36.848492, 39.771847>,  <36.592575, 37.242805, 39.838058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604042, 36.848492, 39.771847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492636, 0.158018, -0.855769,
		0.869763, -0.057015, 0.490165,
		0.028663, -0.985789, -0.165526,
		36.612640, 36.552753, 39.722191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326069, 37.108429, 39.720802>,  <36.592575, 37.242805, 39.838058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326069, 37.108429, 39.720802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146252, 36.795914, 39.547600>,  <37.038361, 36.608402, 39.443680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146252, 36.795914, 39.547600>,  <37.326069, 37.108429, 39.720802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146252, 36.795914, 39.547600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550559, 0.139376, -0.823079,
		0.703414, -0.608407, 0.367491,
		-0.449548, -0.781291, -0.433003,
		37.011387, 36.561527, 39.417698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798248, 36.726532, 39.300343>,  <37.326069, 37.108429, 39.720802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798248, 36.726532, 39.300343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441174, 36.641392, 39.141441>,  <37.226929, 36.590309, 39.046101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441174, 36.641392, 39.141441>,  <37.798248, 36.726532, 39.300343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441174, 36.641392, 39.141441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380173, 0.117747, -0.917390,
		0.242042, -0.969964, -0.024191,
		-0.892684, -0.212850, -0.397254,
		37.173367, 36.577538, 39.022266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337009, 36.237946, 39.056938>,  <37.798248, 36.726532, 39.300343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337009, 36.237946, 39.056938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688534, 36.409847, 39.139889>,  <38.899448, 36.512989, 39.189659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688534, 36.409847, 39.139889>,  <38.337009, 36.237946, 39.056938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688534, 36.409847, 39.139889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041749, -0.502180, 0.863754,
		0.475341, -0.750419, -0.459263,
		0.878811, 0.429752, 0.207377,
		38.952175, 36.538773, 39.202103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794106, 35.661636, 39.318497>,  <38.337009, 36.237946, 39.056938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794106, 35.661636, 39.318497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961250, 35.999905, 39.451302>,  <39.061539, 36.202866, 39.530983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961250, 35.999905, 39.451302>,  <38.794106, 35.661636, 39.318497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961250, 35.999905, 39.451302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252354, -0.459104, 0.851787,
		0.872757, -0.272149, -0.405252,
		0.417866, 0.845671, 0.332009,
		39.086609, 36.253605, 39.550903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430065, 35.436184, 39.645157>,  <38.794106, 35.661636, 39.318497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430065, 35.436184, 39.645157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354252, 35.805771, 39.778042>,  <39.308765, 36.027523, 39.857773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354252, 35.805771, 39.778042>,  <39.430065, 35.436184, 39.645157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354252, 35.805771, 39.778042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323326, -0.260748, 0.909654,
		0.927112, 0.279825, -0.249320,
		-0.189534, 0.923963, 0.332217,
		39.297390, 36.082958, 39.877708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990990, 35.673141, 40.085251>,  <39.430065, 35.436184, 39.645157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990990, 35.673141, 40.085251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661293, 35.869801, 40.197617>,  <39.463474, 35.987797, 40.265038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661293, 35.869801, 40.197617>,  <39.990990, 35.673141, 40.085251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661293, 35.869801, 40.197617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163266, -0.268689, 0.949289,
		0.542193, 0.828306, 0.141196,
		-0.824240, 0.491645, 0.280915,
		39.414021, 36.017296, 40.281891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185654, 35.848278, 40.794643>,  <39.990990, 35.673141, 40.085251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185654, 35.848278, 40.794643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.795044, 35.934433, 40.794697>,  <39.560677, 35.986126, 40.794727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.795044, 35.934433, 40.794697>,  <40.185654, 35.848278, 40.794643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795044, 35.934433, 40.794697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066708, -0.303018, 0.950647,
		0.204799, 0.928325, 0.310274,
		-0.976528, 0.215390, 0.000131,
		39.502087, 35.999050, 40.794735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025185, 36.026745, 41.453625>,  <40.185654, 35.848278, 40.794643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025185, 36.026745, 41.453625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643124, 35.983032, 41.343544>,  <39.413887, 35.956806, 41.277496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643124, 35.983032, 41.343544>,  <40.025185, 36.026745, 41.453625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643124, 35.983032, 41.343544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228883, -0.317172, 0.920334,
		-0.187862, 0.942051, 0.277936,
		-0.955155, -0.109281, -0.275204,
		39.356579, 35.950249, 41.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591484, 36.537994, 41.765255>,  <40.025185, 36.026745, 41.453625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591484, 36.537994, 41.765255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365261, 36.225246, 41.660328>,  <39.229527, 36.037598, 41.597370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365261, 36.225246, 41.660328>,  <39.591484, 36.537994, 41.765255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365261, 36.225246, 41.660328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328765, -0.077962, 0.941188,
		-0.756342, 0.618543, -0.212961,
		-0.565562, -0.781874, -0.262321,
		39.195591, 35.990685, 41.581631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888214, 36.606754, 42.117390>,  <39.591484, 36.537994, 41.765255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888214, 36.606754, 42.117390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906689, 36.218838, 42.021587>,  <38.917774, 35.986088, 41.964104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906689, 36.218838, 42.021587>,  <38.888214, 36.606754, 42.117390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906689, 36.218838, 42.021587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396924, -0.237844, 0.886500,
		-0.916689, 0.054119, -0.395921,
		0.046191, -0.969795, -0.239510,
		38.920547, 35.927898, 41.949734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293083, 36.403069, 42.245361>,  <38.888214, 36.606754, 42.117390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293083, 36.403069, 42.245361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508904, 36.066685, 42.229000>,  <38.638393, 35.864853, 42.219181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508904, 36.066685, 42.229000>,  <38.293083, 36.403069, 42.245361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508904, 36.066685, 42.229000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519826, -0.370946, 0.769532,
		-0.662321, -0.393935, -0.637296,
		0.539548, -0.840960, -0.040908,
		38.670769, 35.814396, 42.216728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818073, 35.957115, 42.370834>,  <38.293083, 36.403069, 42.245361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818073, 35.957115, 42.370834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150898, 35.746006, 42.439098>,  <38.350594, 35.619339, 42.480057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150898, 35.746006, 42.439098>,  <37.818073, 35.957115, 42.370834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150898, 35.746006, 42.439098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426532, -0.412105, 0.805134,
		-0.354600, -0.742714, -0.568010,
		0.832064, -0.527775, 0.170659,
		38.400517, 35.587673, 42.490295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610256, 35.178413, 42.493111>,  <37.818073, 35.957115, 42.370834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610256, 35.178413, 42.493111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970161, 35.234764, 42.658318>,  <38.186104, 35.268574, 42.757442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970161, 35.234764, 42.658318>,  <37.610256, 35.178413, 42.493111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970161, 35.234764, 42.658318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335592, -0.381589, 0.861260,
		0.278936, -0.913533, -0.296061,
		0.899763, 0.140881, 0.413013,
		38.240089, 35.277027, 42.782223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771576, 34.516876, 42.773186>,  <37.610256, 35.178413, 42.493111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771576, 34.516876, 42.773186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010094, 34.783962, 42.951439>,  <38.153206, 34.944214, 43.058392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010094, 34.783962, 42.951439>,  <37.771576, 34.516876, 42.773186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010094, 34.783962, 42.951439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170994, -0.436738, 0.883188,
		0.784342, -0.602842, -0.146250,
		0.596296, 0.667713, 0.445634,
		38.188984, 34.984276, 43.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216843, 34.129860, 43.265507>,  <37.771576, 34.516876, 42.773186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216843, 34.129860, 43.265507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196735, 34.512314, 43.380936>,  <38.184669, 34.741787, 43.450195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196735, 34.512314, 43.380936>,  <38.216843, 34.129860, 43.265507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196735, 34.512314, 43.380936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230058, -0.292257, 0.928256,
		0.971878, -0.019725, 0.234659,
		-0.050271, 0.956136, 0.288576,
		38.181656, 34.799156, 43.467510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710331, 34.299530, 43.872410>,  <38.216843, 34.129860, 43.265507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710331, 34.299530, 43.872410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416435, 34.569653, 43.898056>,  <38.240097, 34.731728, 43.913445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416435, 34.569653, 43.898056>,  <38.710331, 34.299530, 43.872410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416435, 34.569653, 43.898056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012569, -0.080949, 0.996639,
		0.678230, 0.733078, 0.050989,
		-0.734742, 0.675310, 0.064117,
		38.196014, 34.772247, 43.917290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849812, 34.628597, 44.639111>,  <38.710331, 34.299530, 43.872410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849812, 34.628597, 44.639111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491234, 34.755585, 44.515438>,  <38.276085, 34.831776, 44.441235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491234, 34.755585, 44.515438>,  <38.849812, 34.628597, 44.639111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491234, 34.755585, 44.515438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339947, -0.045066, 0.939364,
		0.284283, 0.947198, 0.148321,
		-0.896448, 0.317466, -0.309185,
		38.222298, 34.850826, 44.422684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657688, 34.965389, 45.177769>,  <38.849812, 34.628597, 44.639111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657688, 34.965389, 45.177769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303581, 34.944931, 44.992863>,  <38.091118, 34.932655, 44.881920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303581, 34.944931, 44.992863>,  <38.657688, 34.965389, 45.177769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303581, 34.944931, 44.992863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464520, 0.048359, 0.884241,
		-0.022868, 0.997520, -0.066567,
		-0.885267, -0.051143, -0.462262,
		38.038002, 34.929588, 44.854183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288353, 35.356834, 45.500576>,  <38.657688, 34.965389, 45.177769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288353, 35.356834, 45.500576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017323, 35.108284, 45.343204>,  <37.854706, 34.959152, 45.248783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017323, 35.108284, 45.343204>,  <38.288353, 35.356834, 45.500576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017323, 35.108284, 45.343204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363354, -0.182263, 0.913649,
		-0.639429, 0.762016, -0.102284,
		-0.677572, -0.621379, -0.393426,
		37.814053, 34.921871, 45.225178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679176, 35.388317, 45.895031>,  <38.288353, 35.356834, 45.500576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679176, 35.388317, 45.895031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639164, 35.035984, 45.709938>,  <37.615158, 34.824585, 45.598881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639164, 35.035984, 45.709938>,  <37.679176, 35.388317, 45.895031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639164, 35.035984, 45.709938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554191, -0.336925, 0.761153,
		-0.826358, 0.332578, -0.454451,
		-0.100027, -0.880837, -0.462732,
		37.609158, 34.771732, 45.571117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.091511, 35.138309, 46.205730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248344, 34.823906, 46.014542>,  <37.342445, 34.635262, 45.899830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248344, 34.823906, 46.014542>,  <37.091511, 35.138309, 46.205730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248344, 34.823906, 46.014542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467770, -0.617733, 0.632137,
		-0.792125, -0.024271, -0.609876,
		0.392083, -0.786013, -0.477968,
		37.365971, 34.588100, 45.871151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520115, 34.707577, 46.057976>,  <37.091511, 35.138309, 46.205730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520115, 34.707577, 46.057976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848038, 34.479668, 46.080875>,  <37.044792, 34.342922, 46.094616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848038, 34.479668, 46.080875>,  <36.520115, 34.707577, 46.057976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848038, 34.479668, 46.080875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453438, -0.584848, 0.672568,
		-0.349729, -0.577334, -0.737818,
		0.819807, -0.569771, 0.057247,
		37.093979, 34.308735, 46.098049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284317, 34.034264, 46.180832>,  <36.520115, 34.707577, 46.057976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284317, 34.034264, 46.180832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671806, 34.006622, 46.276157>,  <36.904301, 33.990036, 46.333351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671806, 34.006622, 46.276157>,  <36.284317, 34.034264, 46.180832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671806, 34.006622, 46.276157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235716, -0.556240, 0.796891,
		0.077490, -0.828144, -0.555134,
		0.968728, -0.069103, 0.238310,
		36.962425, 33.985893, 46.347649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425667, 33.348278, 46.313206>,  <36.284317, 34.034264, 46.180832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425667, 33.348278, 46.313206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729530, 33.533634, 46.495716>,  <36.911850, 33.644848, 46.605221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729530, 33.533634, 46.495716>,  <36.425667, 33.348278, 46.313206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729530, 33.533634, 46.495716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108581, -0.601382, 0.791549,
		0.641194, -0.650849, -0.406529,
		0.759658, 0.463395, 0.456273,
		36.957428, 33.672653, 46.632599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789059, 32.851715, 46.610619>,  <36.425667, 33.348278, 46.313206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789059, 32.851715, 46.610619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879837, 33.189068, 46.805435>,  <36.934303, 33.391479, 46.922325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879837, 33.189068, 46.805435>,  <36.789059, 32.851715, 46.610619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879837, 33.189068, 46.805435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149782, -0.463910, 0.873128,
		0.962320, -0.271103, 0.021039,
		0.226948, 0.843380, 0.487037,
		36.947922, 33.442081, 46.951546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196087, 32.587753, 47.121792>,  <36.789059, 32.851715, 46.610619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196087, 32.587753, 47.121792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097740, 32.951859, 47.255039>,  <37.038731, 33.170322, 47.334988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097740, 32.951859, 47.255039>,  <37.196087, 32.587753, 47.121792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097740, 32.951859, 47.255039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205758, -0.384847, 0.899753,
		0.947213, 0.152677, 0.281916,
		-0.245866, 0.910265, 0.333118,
		37.023979, 33.224937, 47.354973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562756, 32.699184, 47.733582>,  <37.196087, 32.587753, 47.121792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562756, 32.699184, 47.733582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237595, 32.931889, 47.744530>,  <37.042500, 33.071510, 47.751099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237595, 32.931889, 47.744530>,  <37.562756, 32.699184, 47.733582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237595, 32.931889, 47.744530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173208, -0.286359, 0.942336,
		0.556046, 0.761288, 0.333547,
		-0.812903, 0.581756, 0.027368,
		36.993725, 33.106415, 47.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576683, 32.918728, 48.316616>,  <37.562756, 32.699184, 47.733582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576683, 32.918728, 48.316616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197208, 33.011814, 48.230972>,  <36.969524, 33.067665, 48.179588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197208, 33.011814, 48.230972>,  <37.576683, 32.918728, 48.316616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197208, 33.011814, 48.230972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288270, -0.358112, 0.888063,
		0.129992, 0.904212, 0.406820,
		-0.948685, 0.232715, -0.214105,
		36.912601, 33.081627, 48.166740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277615, 33.611088, 48.688820>,  <37.576683, 32.918728, 48.316616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277615, 33.611088, 48.688820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001755, 33.342400, 48.580616>,  <36.836239, 33.181187, 48.515694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001755, 33.342400, 48.580616>,  <37.277615, 33.611088, 48.688820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001755, 33.342400, 48.580616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128754, -0.253861, 0.958633,
		-0.712607, 0.695948, 0.088588,
		-0.689647, -0.671723, -0.270509,
		36.794861, 33.140884, 48.499462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812771, 33.513641, 49.244816>,  <37.277615, 33.611088, 48.688820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812771, 33.513641, 49.244816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682644, 33.197029, 49.037880>,  <36.604568, 33.007061, 48.913719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682644, 33.197029, 49.037880>,  <36.812771, 33.513641, 49.244816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682644, 33.197029, 49.037880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048994, -0.532259, 0.845163,
		-0.944334, 0.300294, 0.134373,
		-0.325319, -0.791533, -0.517343,
		36.585049, 32.959568, 48.882675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293678, 33.109089, 49.664692>,  <36.812771, 33.513641, 49.244816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293678, 33.109089, 49.664692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425041, 32.838188, 49.401337>,  <36.503860, 32.675648, 49.243324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425041, 32.838188, 49.401337>,  <36.293678, 33.109089, 49.664692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425041, 32.838188, 49.401337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201428, -0.630796, 0.749349,
		-0.922807, -0.378712, -0.070743,
		0.328412, -0.677255, -0.658386,
		36.523563, 32.635014, 49.203819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038322, 32.476631, 49.912815>,  <36.293678, 33.109089, 49.664692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038322, 32.476631, 49.912815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329628, 32.351398, 49.668976>,  <36.504414, 32.276260, 49.522675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329628, 32.351398, 49.668976>,  <36.038322, 32.476631, 49.912815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329628, 32.351398, 49.668976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328593, -0.621081, 0.711537,
		-0.601368, -0.718502, -0.349444,
		0.728274, -0.313071, -0.609593,
		36.548107, 32.257477, 49.486095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938068, 31.759304, 49.916348>,  <36.038322, 32.476631, 49.912815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938068, 31.759304, 49.916348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306763, 31.860920, 49.799133>,  <36.527977, 31.921888, 49.728806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306763, 31.860920, 49.799133>,  <35.938068, 31.759304, 49.916348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306763, 31.860920, 49.799133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387705, -0.584922, 0.712426,
		0.009579, -0.770280, -0.637635,
		0.921734, 0.254038, -0.293038,
		36.583282, 31.937132, 49.711224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281792, 31.150631, 49.785259>,  <35.938068, 31.759304, 49.916348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281792, 31.150631, 49.785259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563988, 31.422136, 49.866806>,  <36.733307, 31.585039, 49.915733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563988, 31.422136, 49.866806>,  <36.281792, 31.150631, 49.785259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563988, 31.422136, 49.866806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391627, -0.613117, 0.686087,
		0.590683, -0.404191, -0.698372,
		0.705493, 0.678762, 0.203866,
		36.775635, 31.625765, 49.927967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801914, 30.785921, 49.802338>,  <36.281792, 31.150631, 49.785259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801914, 30.785921, 49.802338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923466, 31.113413, 49.997208>,  <36.996395, 31.309908, 50.114128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923466, 31.113413, 49.997208>,  <36.801914, 30.785921, 49.802338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923466, 31.113413, 49.997208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578487, -0.564865, 0.588456,
		0.756975, 0.103006, -0.645274,
		0.303878, 0.818729, 0.487176,
		37.014629, 31.359032, 50.143360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608395, 30.757507, 49.923187>,  <36.801914, 30.785921, 49.802338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608395, 30.757507, 49.923187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454491, 31.021132, 50.181675>,  <37.362148, 31.179306, 50.336769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454491, 31.021132, 50.181675>,  <37.608395, 30.757507, 49.923187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454491, 31.021132, 50.181675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521464, -0.422470, 0.741346,
		0.761601, 0.622220, -0.181127,
		-0.384760, 0.659061, 0.646219,
		37.339062, 31.218849, 50.375542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172119, 31.017870, 50.366753>,  <37.608395, 30.757507, 49.923187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172119, 31.017870, 50.366753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830311, 31.089886, 50.561638>,  <37.625225, 31.133095, 50.678570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830311, 31.089886, 50.561638>,  <38.172119, 31.017870, 50.366753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830311, 31.089886, 50.561638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427247, -0.289779, 0.856439,
		0.295375, 0.940008, 0.170702,
		-0.854525, 0.180039, 0.487209,
		37.573952, 31.143898, 50.707802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377922, 31.517530, 50.916798>,  <38.172119, 31.017870, 50.366753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377922, 31.517530, 50.916798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035053, 31.340210, 51.021671>,  <37.829330, 31.233818, 51.084595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035053, 31.340210, 51.021671>,  <38.377922, 31.517530, 50.916798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035053, 31.340210, 51.021671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437285, -0.357479, 0.825222,
		-0.272100, 0.822004, 0.500271,
		-0.857172, -0.443303, 0.262180,
		37.777901, 31.207218, 51.100327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347057, 31.547569, 51.658989>,  <38.377922, 31.517530, 50.916798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347057, 31.547569, 51.658989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066051, 31.268194, 51.604351>,  <37.897446, 31.100569, 51.571568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066051, 31.268194, 51.604351>,  <38.347057, 31.547569, 51.658989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066051, 31.268194, 51.604351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268013, -0.437452, 0.858373,
		-0.659272, 0.566413, 0.494507,
		-0.702516, -0.698436, -0.136594,
		37.855297, 31.058664, 51.563374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034573, 31.445948, 52.356499>,  <38.347057, 31.547569, 51.658989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034573, 31.445948, 52.356499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951561, 31.133446, 52.121017>,  <37.901752, 30.945944, 51.979729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951561, 31.133446, 52.121017>,  <38.034573, 31.445948, 52.356499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951561, 31.133446, 52.121017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381556, -0.618787, 0.686671,
		-0.900748, -0.082118, 0.426510,
		-0.207531, -0.781255, -0.588704,
		37.889301, 30.899069, 51.944405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821449, 31.000612, 52.755802>,  <38.034573, 31.445948, 52.356499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821449, 31.000612, 52.755802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888180, 30.758945, 52.444122>,  <37.928219, 30.613945, 52.257114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888180, 30.758945, 52.444122>,  <37.821449, 31.000612, 52.755802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888180, 30.758945, 52.444122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299147, -0.722008, 0.623871,
		-0.939510, -0.337175, 0.060282,
		0.166830, -0.604166, -0.779199,
		37.938229, 30.577696, 52.210361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614758, 30.232128, 52.914158>,  <37.821449, 31.000612, 52.755802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614758, 30.232128, 52.914158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891869, 30.245205, 52.625996>,  <38.058136, 30.253052, 52.453098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891869, 30.245205, 52.625996>,  <37.614758, 30.232128, 52.914158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891869, 30.245205, 52.625996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534737, -0.693543, 0.482756,
		-0.483853, -0.719673, -0.497954,
		0.692779, 0.032692, -0.720408,
		38.099701, 30.255013, 52.409874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368931, 29.946880, 53.591213>,  <37.614758, 30.232128, 52.914158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368931, 29.946880, 53.591213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573208, 29.711256, 53.841717>,  <37.695774, 29.569881, 53.992020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573208, 29.711256, 53.841717>,  <37.368931, 29.946880, 53.591213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573208, 29.711256, 53.841717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552534, -0.782936, -0.285862,
		0.658709, -0.200039, -0.725318,
		0.510694, -0.589063, 0.626256,
		37.726418, 29.534536, 54.029594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804386, 29.467823, 53.527901>,  <37.368931, 29.946880, 53.591213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804386, 29.467823, 53.527901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034752, 29.193512, 53.705902>,  <37.172970, 29.028925, 53.812702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034752, 29.193512, 53.705902>,  <36.804386, 29.467823, 53.527901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034752, 29.193512, 53.705902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065379, 0.503964, 0.861247,
		-0.814892, -0.525097, 0.245404,
		0.575913, -0.685780, 0.445007,
		37.207527, 28.987778, 53.839405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262573, 29.316187, 53.034927>,  <36.804386, 29.467823, 53.527901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262573, 29.316187, 53.034927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890800, 29.185137, 52.967037>,  <35.667736, 29.106506, 52.926304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890800, 29.185137, 52.967037>,  <36.262573, 29.316187, 53.034927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890800, 29.185137, 52.967037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014089, 0.428147, -0.903599,
		0.368710, -0.842230, -0.393320,
		-0.929437, -0.327625, -0.169729,
		35.611969, 29.086849, 52.916119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315735, 29.022533, 52.383095>,  <36.262573, 29.316187, 53.034927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315735, 29.022533, 52.383095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916473, 29.039268, 52.400677>,  <35.676914, 29.049311, 52.411224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916473, 29.039268, 52.400677>,  <36.315735, 29.022533, 52.383095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916473, 29.039268, 52.400677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026510, 0.350928, -0.936027,
		-0.054589, -0.935467, -0.349172,
		-0.998157, 0.041841, 0.043956,
		35.617027, 29.051821, 52.413864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033451, 28.719530, 51.740101>,  <36.315735, 29.022533, 52.383095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033451, 28.719530, 51.740101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720581, 28.914448, 51.895409>,  <35.532860, 29.031399, 51.988594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720581, 28.914448, 51.895409>,  <36.033451, 28.719530, 51.740101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720581, 28.914448, 51.895409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275252, 0.288802, -0.916968,
		-0.558963, -0.824099, -0.091765,
		-0.782174, 0.487293, 0.388265,
		35.485928, 29.060635, 52.011887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414444, 28.473169, 51.300701>,  <36.033451, 28.719530, 51.740101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414444, 28.473169, 51.300701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332531, 28.823845, 51.474819>,  <35.283382, 29.034250, 51.579288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332531, 28.823845, 51.474819>,  <35.414444, 28.473169, 51.300701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332531, 28.823845, 51.474819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275286, 0.375179, -0.885132,
		-0.939299, -0.301088, 0.164511,
		-0.204781, 0.876691, 0.435290,
		35.271095, 29.086853, 51.605408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781082, 28.559910, 51.036095>,  <35.414444, 28.473169, 51.300701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781082, 28.559910, 51.036095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927288, 28.914297, 51.150257>,  <35.015011, 29.126930, 51.218754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927288, 28.914297, 51.150257>,  <34.781082, 28.559910, 51.036095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927288, 28.914297, 51.150257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161401, 0.362307, -0.917978,
		-0.916705, 0.289470, 0.275425,
		0.365516, 0.885969, 0.285408,
		35.036942, 29.180088, 51.235878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345863, 29.060757, 50.860878>,  <34.781082, 28.559910, 51.036095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345863, 29.060757, 50.860878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678299, 29.279293, 50.902443>,  <34.877762, 29.410414, 50.927380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678299, 29.279293, 50.902443>,  <34.345863, 29.060757, 50.860878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678299, 29.279293, 50.902443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218400, 0.492465, -0.842484,
		-0.511455, 0.677488, 0.528605,
		0.831093, 0.546340, 0.103911,
		34.927628, 29.443195, 50.933617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029156, 29.743473, 50.708225>,  <34.345863, 29.060757, 50.860878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029156, 29.743473, 50.708225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427017, 29.782272, 50.694046>,  <34.665733, 29.805552, 50.685539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427017, 29.782272, 50.694046>,  <34.029156, 29.743473, 50.708225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427017, 29.782272, 50.694046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081684, 0.528884, -0.844754,
		-0.063192, 0.843133, 0.533979,
		0.994653, 0.096999, -0.035449,
		34.725414, 29.811373, 50.683411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140846, 30.443403, 50.588451>,  <34.029156, 29.743473, 50.708225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140846, 30.443403, 50.588451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490421, 30.268881, 50.502785>,  <34.700165, 30.164167, 50.451385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490421, 30.268881, 50.502785>,  <34.140846, 30.443403, 50.588451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490421, 30.268881, 50.502785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078849, 0.562080, -0.823316,
		0.479600, 0.702640, 0.525625,
		0.873938, -0.436307, -0.214171,
		34.752602, 30.137989, 50.438534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590420, 30.988533, 50.420334>,  <34.140846, 30.443403, 50.588451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590420, 30.988533, 50.420334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712067, 30.650963, 50.243561>,  <34.785053, 30.448421, 50.137497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712067, 30.650963, 50.243561>,  <34.590420, 30.988533, 50.420334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712067, 30.650963, 50.243561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053864, 0.447931, -0.892444,
		0.951110, 0.295213, 0.090767,
		0.304118, -0.843924, -0.441933,
		34.803303, 30.397785, 50.110981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149433, 31.211214, 49.932510>,  <34.590420, 30.988533, 50.420334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149433, 31.211214, 49.932510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.001503, 30.865179, 49.796951>,  <34.912743, 30.657558, 49.715618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.001503, 30.865179, 49.796951>,  <35.149433, 31.211214, 49.932510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001503, 30.865179, 49.796951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069572, 0.337947, -0.938590,
		0.926492, -0.370694, -0.064796,
		-0.369827, -0.865088, -0.338895,
		34.890556, 30.605652, 49.695282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614014, 31.137621, 49.444729>,  <35.149433, 31.211214, 49.932510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614014, 31.137621, 49.444729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303646, 30.908381, 49.339272>,  <35.117424, 30.770836, 49.275997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.303646, 30.908381, 49.339272>,  <35.614014, 31.137621, 49.444729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303646, 30.908381, 49.339272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056563, 0.353036, -0.933898,
		0.628292, -0.739542, -0.241511,
		-0.775919, -0.573100, -0.263640,
		35.070869, 30.736450, 49.260181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821087, 31.086906, 48.741760>,  <35.614014, 31.137621, 49.444729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821087, 31.086906, 48.741760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447094, 30.946854, 48.764465>,  <35.222698, 30.862822, 48.778088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447094, 30.946854, 48.764465>,  <35.821087, 31.086906, 48.741760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447094, 30.946854, 48.764465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181479, 0.334696, -0.924686,
		0.304753, -0.874867, -0.376474,
		-0.934982, -0.350123, 0.056770,
		35.166599, 30.841814, 48.781494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718975, 30.683584, 48.176147>,  <35.821087, 31.086906, 48.741760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718975, 30.683584, 48.176147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.360794, 30.813686, 48.297714>,  <35.145885, 30.891748, 48.370655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.360794, 30.813686, 48.297714>,  <35.718975, 30.683584, 48.176147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360794, 30.813686, 48.297714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148762, 0.424822, -0.892970,
		-0.419555, -0.844827, -0.332024,
		-0.895457, 0.325257, 0.303915,
		35.092155, 30.911264, 48.388889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277447, 30.550451, 47.666550>,  <35.718975, 30.683584, 48.176147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277447, 30.550451, 47.666550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090916, 30.846958, 47.859653>,  <34.978996, 31.024862, 47.975517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090916, 30.846958, 47.859653>,  <35.277447, 30.550451, 47.666550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090916, 30.846958, 47.859653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155962, 0.468288, -0.869702,
		-0.870754, -0.480860, -0.102767,
		-0.466330, 0.741269, 0.482760,
		34.951015, 31.069340, 48.004482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667126, 30.913197, 47.275375>,  <35.277447, 30.550451, 47.666550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667126, 30.913197, 47.275375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739601, 31.201530, 47.542976>,  <34.783085, 31.374531, 47.703537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739601, 31.201530, 47.542976>,  <34.667126, 30.913197, 47.275375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739601, 31.201530, 47.542976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279505, 0.689956, -0.667710,
		-0.942894, -0.066010, 0.326487,
		0.181186, 0.720835, 0.669006,
		34.793957, 31.417782, 47.743679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085636, 31.338306, 47.202930>,  <34.667126, 30.913197, 47.275375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085636, 31.338306, 47.202930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356495, 31.576824, 47.375397>,  <34.519009, 31.719934, 47.478878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356495, 31.576824, 47.375397>,  <34.085636, 31.338306, 47.202930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356495, 31.576824, 47.375397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213172, 0.719781, -0.660661,
		-0.704294, 0.355452, 0.614511,
		0.677147, 0.596296, 0.431165,
		34.559639, 31.755713, 47.504745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754242, 32.011112, 47.437321>,  <34.085636, 31.338306, 47.202930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754242, 32.011112, 47.437321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146206, 32.068134, 47.381535>,  <34.381386, 32.102348, 47.348064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146206, 32.068134, 47.381535>,  <33.754242, 32.011112, 47.437321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146206, 32.068134, 47.381535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197915, 0.781136, -0.592163,
		0.024524, 0.607869, 0.793658,
		0.979912, 0.142555, -0.139463,
		34.440178, 32.110901, 47.339695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768051, 32.681320, 47.289806>,  <33.754242, 32.011112, 47.437321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768051, 32.681320, 47.289806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147911, 32.585499, 47.209026>,  <34.375828, 32.528008, 47.160561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147911, 32.585499, 47.209026>,  <33.768051, 32.681320, 47.289806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147911, 32.585499, 47.209026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037298, 0.726401, -0.686258,
		0.311087, 0.644172, 0.698761,
		0.949649, -0.239549, -0.201947,
		34.432804, 32.513634, 47.148441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110607, 33.317913, 47.179653>,  <33.768051, 32.681320, 47.289806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110607, 33.317913, 47.179653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377922, 33.064735, 47.023312>,  <34.538311, 32.912830, 46.929504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377922, 33.064735, 47.023312>,  <34.110607, 33.317913, 47.179653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377922, 33.064735, 47.023312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209068, 0.664043, -0.717870,
		0.713919, 0.398029, 0.576101,
		0.668289, -0.632945, -0.390858,
		34.578407, 32.874851, 46.906055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637157, 33.684032, 47.056152>,  <34.110607, 33.317913, 47.179653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637157, 33.684032, 47.056152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673698, 33.382568, 46.795799>,  <34.695625, 33.201691, 46.639587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673698, 33.382568, 46.795799>,  <34.637157, 33.684032, 47.056152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673698, 33.382568, 46.795799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275932, 0.647185, -0.710643,
		0.956826, -0.114680, 0.267082,
		0.091356, -0.753658, -0.650887,
		34.701103, 33.156471, 46.600533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.580452, 41.078053, 41.262836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285614, 41.335316, 41.179855>,  <44.108711, 41.489674, 41.130066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285614, 41.335316, 41.179855>,  <44.580452, 41.078053, 41.262836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285614, 41.335316, 41.179855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184190, -0.486553, -0.854014,
		-0.650202, -0.591281, 0.477100,
		-0.737097, 0.643158, -0.207450,
		44.064484, 41.528263, 41.117622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114300, 40.724297, 40.922340>,  <44.580452, 41.078053, 41.262836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114300, 40.724297, 40.922340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934147, 41.070271, 40.833767>,  <43.826054, 41.277855, 40.780621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934147, 41.070271, 40.833767>,  <44.114300, 40.724297, 40.922340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934147, 41.070271, 40.833767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328847, -0.391282, -0.859510,
		-0.830068, -0.314292, 0.460660,
		-0.450385, 0.864939, -0.221437,
		43.799030, 41.329754, 40.767338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403538, 40.504570, 40.683018>,  <44.114300, 40.724297, 40.922340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403538, 40.504570, 40.683018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514317, 40.854893, 40.524895>,  <43.580784, 41.065086, 40.430023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514317, 40.854893, 40.524895>,  <43.403538, 40.504570, 40.683018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514317, 40.854893, 40.524895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146538, -0.368089, -0.918171,
		-0.949645, 0.312216, 0.026396,
		0.276951, 0.875804, -0.395305,
		43.597401, 41.117634, 40.406303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901714, 40.645840, 40.145718>,  <43.403538, 40.504570, 40.683018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901714, 40.645840, 40.145718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208401, 40.885590, 40.053719>,  <43.392414, 41.029438, 39.998520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208401, 40.885590, 40.053719>,  <42.901714, 40.645840, 40.145718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208401, 40.885590, 40.053719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055434, -0.295107, -0.953855,
		-0.639586, 0.744087, -0.193039,
		0.766718, 0.599371, -0.229994,
		43.438416, 41.065399, 39.984722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625294, 40.989166, 39.654018>,  <42.901714, 40.645840, 40.145718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625294, 40.989166, 39.654018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016796, 41.044144, 39.593159>,  <43.251698, 41.077129, 39.556644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016796, 41.044144, 39.593159>,  <42.625294, 40.989166, 39.654018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016796, 41.044144, 39.593159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111139, -0.267934, -0.957005,
		-0.172300, 0.953583, -0.246967,
		0.978755, 0.137445, -0.152145,
		43.310421, 41.085377, 39.547516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600216, 41.270985, 39.013145>,  <42.625294, 40.989166, 39.654018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600216, 41.270985, 39.013145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978657, 41.151031, 39.062069>,  <43.205723, 41.079060, 39.091423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978657, 41.151031, 39.062069>,  <42.600216, 41.270985, 39.013145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978657, 41.151031, 39.062069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017743, -0.329093, -0.944131,
		0.323384, 0.895413, -0.306035,
		0.946101, -0.299887, 0.122311,
		43.262486, 41.061066, 39.098763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031944, 41.598377, 38.551189>,  <42.600216, 41.270985, 39.013145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031944, 41.598377, 38.551189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.194397, 41.244743, 38.643661>,  <43.291870, 41.032562, 38.699142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.194397, 41.244743, 38.643661>,  <43.031944, 41.598377, 38.551189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194397, 41.244743, 38.643661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060599, -0.278479, -0.958529,
		0.911802, 0.375283, -0.166675,
		0.406135, -0.884088, 0.231176,
		43.316238, 40.979515, 38.713013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533611, 41.535416, 38.057129>,  <43.031944, 41.598377, 38.551189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533611, 41.535416, 38.057129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.505463, 41.165455, 38.206577>,  <43.488575, 40.943478, 38.296246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.505463, 41.165455, 38.206577>,  <43.533611, 41.535416, 38.057129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505463, 41.165455, 38.206577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126994, -0.379813, -0.916305,
		0.989404, -0.017031, 0.144184,
		-0.070369, -0.924906, 0.373625,
		43.484352, 40.887981, 38.318665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904026, 41.151695, 37.604668>,  <43.533611, 41.535416, 38.057129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904026, 41.151695, 37.604668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729897, 40.844463, 37.792519>,  <43.625420, 40.660126, 37.905228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729897, 40.844463, 37.792519>,  <43.904026, 41.151695, 37.604668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729897, 40.844463, 37.792519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151685, -0.576769, -0.802701,
		0.887402, -0.278202, 0.367588,
		-0.435326, -0.768076, 0.469627,
		43.599300, 40.614040, 37.933407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384212, 40.514183, 37.474552>,  <43.904026, 41.151695, 37.604668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384212, 40.514183, 37.474552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020340, 40.384148, 37.577938>,  <43.802017, 40.306126, 37.639969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020340, 40.384148, 37.577938>,  <44.384212, 40.514183, 37.474552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020340, 40.384148, 37.577938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119851, -0.801335, -0.586087,
		0.397647, -0.502173, 0.767919,
		-0.909677, -0.325092, 0.258463,
		43.747437, 40.286621, 37.655476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408756, 39.752907, 37.703930>,  <44.384212, 40.514183, 37.474552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408756, 39.752907, 37.703930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035759, 39.825996, 37.579311>,  <43.811958, 39.869850, 37.504539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035759, 39.825996, 37.579311>,  <44.408756, 39.752907, 37.703930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035759, 39.825996, 37.579311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059461, -0.773148, -0.631432,
		-0.356248, -0.607333, 0.710094,
		-0.932498, 0.182723, -0.311545,
		43.756008, 39.880814, 37.485847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142494, 39.141392, 37.631184>,  <44.408756, 39.752907, 37.703930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142494, 39.141392, 37.631184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884075, 39.366146, 37.424534>,  <43.729023, 39.500999, 37.300545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884075, 39.366146, 37.424534>,  <44.142494, 39.141392, 37.631184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884075, 39.366146, 37.424534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144043, -0.754425, -0.640387,
		-0.749556, -0.339326, 0.568351,
		-0.646078, 0.561873, -0.516606,
		43.690258, 39.534710, 37.269547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699234, 38.690399, 37.284237>,  <44.142494, 39.141392, 37.631184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699234, 38.690399, 37.284237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593800, 39.008301, 37.065556>,  <43.530540, 39.199043, 36.934345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593800, 39.008301, 37.065556>,  <43.699234, 38.690399, 37.284237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593800, 39.008301, 37.065556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192301, -0.598667, -0.777572,
		-0.945274, -0.099825, 0.310632,
		-0.263587, 0.794754, -0.546708,
		43.514725, 39.246727, 36.901543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970322, 38.545444, 37.089783>,  <43.699234, 38.690399, 37.284237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970322, 38.545444, 37.089783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187771, 38.784634, 36.854187>,  <43.318241, 38.928146, 36.712830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187771, 38.784634, 36.854187>,  <42.970322, 38.545444, 37.089783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187771, 38.784634, 36.854187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136005, -0.629702, -0.764839,
		-0.828240, 0.495886, -0.260991,
		0.543619, 0.597974, -0.588987,
		43.350857, 38.964027, 36.677490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610836, 38.613640, 36.476768>,  <42.970322, 38.545444, 37.089783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610836, 38.613640, 36.476768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981327, 38.723000, 36.372955>,  <43.203621, 38.788616, 36.310669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981327, 38.723000, 36.372955>,  <42.610836, 38.613640, 36.476768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981327, 38.723000, 36.372955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074888, -0.541298, -0.837489,
		-0.369453, 0.795141, -0.480890,
		0.926227, 0.273400, -0.259531,
		43.259193, 38.805019, 36.295097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650005, 38.693619, 35.768711>,  <42.610836, 38.613640, 36.476768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650005, 38.693619, 35.768711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032837, 38.626068, 35.862923>,  <43.262535, 38.585537, 35.919449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032837, 38.626068, 35.862923>,  <42.650005, 38.693619, 35.768711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032837, 38.626068, 35.862923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103352, -0.560359, -0.821777,
		0.270760, 0.810850, -0.518855,
		0.957083, -0.168880, 0.235526,
		43.319962, 38.575405, 35.933582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993511, 38.581985, 35.145592>,  <42.650005, 38.693619, 35.768711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993511, 38.581985, 35.145592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284351, 38.436623, 35.378578>,  <43.458855, 38.349403, 35.518368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284351, 38.436623, 35.378578>,  <42.993511, 38.581985, 35.145592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284351, 38.436623, 35.378578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187355, -0.711171, -0.677594,
		0.660475, 0.601804, -0.449004,
		0.727097, -0.363411, 0.582462,
		43.502480, 38.327599, 35.553318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558662, 38.500008, 34.762833>,  <42.993511, 38.581985, 35.145592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558662, 38.500008, 34.762833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641991, 38.256985, 35.069420>,  <43.691986, 38.111172, 35.253372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641991, 38.256985, 35.069420>,  <43.558662, 38.500008, 34.762833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641991, 38.256985, 35.069420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435815, -0.643903, -0.628852,
		0.875596, 0.465043, 0.130644,
		0.208321, -0.607556, 0.766471,
		43.704487, 38.074718, 35.299362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243561, 38.481560, 34.822906>,  <43.558662, 38.500008, 34.762833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243561, 38.481560, 34.822906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.049942, 38.147102, 34.926109>,  <43.933769, 37.946426, 34.988029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.049942, 38.147102, 34.926109>,  <44.243561, 38.481560, 34.822906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049942, 38.147102, 34.926109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507502, -0.508445, -0.695647,
		0.712840, -0.205788, 0.670455,
		-0.484046, -0.836142, 0.258003,
		43.904728, 37.896259, 35.003510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695324, 37.984409, 34.520832>,  <44.243561, 38.481560, 34.822906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695324, 37.984409, 34.520832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420269, 37.746689, 34.687664>,  <44.255234, 37.604057, 34.787762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420269, 37.746689, 34.687664>,  <44.695324, 37.984409, 34.520832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420269, 37.746689, 34.687664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403856, -0.790468, -0.460501,
		0.603365, -0.148218, 0.783570,
		-0.687642, -0.594300, 0.417081,
		44.213978, 37.568398, 34.812790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038269, 37.335365, 34.618763>,  <44.695324, 37.984409, 34.520832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038269, 37.335365, 34.618763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655537, 37.225918, 34.657982>,  <44.425900, 37.160248, 34.681515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655537, 37.225918, 34.657982>,  <45.038269, 37.335365, 34.618763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655537, 37.225918, 34.657982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202882, -0.870293, -0.448809,
		0.208135, -0.409540, 0.888232,
		-0.956828, -0.273619, 0.098050,
		44.368488, 37.143833, 34.687397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094517, 36.582989, 34.804436>,  <45.038269, 37.335365, 34.618763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094517, 36.582989, 34.804436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.731007, 36.677139, 34.666611>,  <44.512901, 36.733627, 34.583916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.731007, 36.677139, 34.666611>,  <45.094517, 36.582989, 34.804436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731007, 36.677139, 34.666611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010246, -0.812890, -0.582326,
		-0.417152, -0.532736, 0.736326,
		-0.908779, 0.235374, -0.344558,
		44.458374, 36.747753, 34.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071182, 35.927692, 34.673195>,  <45.094517, 36.582989, 34.804436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071182, 35.927692, 34.673195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467636, 35.980667, 34.669136>,  <45.705509, 36.012451, 34.666702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467636, 35.980667, 34.669136>,  <45.071182, 35.927692, 34.673195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467636, 35.980667, 34.669136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022118, 0.239861, 0.970555,
		0.130969, -0.961731, 0.240665,
		0.991140, 0.132435, -0.010143,
		45.764977, 36.020397, 34.666092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320801, 35.602577, 35.314209>,  <45.071182, 35.927692, 34.673195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320801, 35.602577, 35.314209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.603886, 35.853722, 35.184639>,  <45.773739, 36.004410, 35.106899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.603886, 35.853722, 35.184639>,  <45.320801, 35.602577, 35.314209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603886, 35.853722, 35.184639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081301, 0.383067, 0.920136,
		0.701804, -0.677530, 0.220057,
		0.707715, 0.627864, -0.323922,
		45.816200, 36.042080, 35.087463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874176, 35.450424, 35.831223>,  <45.320801, 35.602577, 35.314209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874176, 35.450424, 35.831223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.903210, 35.811760, 35.662128>,  <45.920631, 36.028561, 35.560673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.903210, 35.811760, 35.662128>,  <45.874176, 35.450424, 35.831223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903210, 35.811760, 35.662128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125560, 0.412206, 0.902397,
		0.989427, -0.118581, -0.083503,
		0.072587, 0.903341, -0.422736,
		45.924984, 36.082764, 35.535309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370529, 35.659664, 36.152424>,  <45.874176, 35.450424, 35.831223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370529, 35.659664, 36.152424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.254635, 36.004578, 35.986279>,  <46.185101, 36.211525, 35.886593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.254635, 36.004578, 35.986279>,  <46.370529, 35.659664, 36.152424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254635, 36.004578, 35.986279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003760, 0.434995, 0.900425,
		0.957100, 0.259322, -0.129275,
		-0.289734, 0.862282, -0.415359,
		46.167713, 36.263264, 35.861671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.759262, 36.111000, 36.504944>,  <46.370529, 35.659664, 36.152424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.759262, 36.111000, 36.504944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441010, 36.293877, 36.345978>,  <46.250057, 36.403603, 36.250599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441010, 36.293877, 36.345978>,  <46.759262, 36.111000, 36.504944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441010, 36.293877, 36.345978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141369, 0.497792, 0.855698,
		0.589048, 0.737006, -0.331428,
		-0.795636, 0.457194, -0.397413,
		46.202320, 36.431034, 36.226753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949608, 36.769356, 36.643909>,  <46.759262, 36.111000, 36.504944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949608, 36.769356, 36.643909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556068, 36.814449, 36.588287>,  <46.319946, 36.841507, 36.554913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556068, 36.814449, 36.588287>,  <46.949608, 36.769356, 36.643909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556068, 36.814449, 36.588287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040659, 0.615765, 0.786880,
		0.174333, 0.779823, -0.601235,
		-0.983847, 0.112734, -0.139055,
		46.260914, 36.848270, 36.546570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875576, 37.459774, 36.767300>,  <46.949608, 36.769356, 36.643909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875576, 37.459774, 36.767300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.505005, 37.311504, 36.793613>,  <46.282661, 37.222542, 36.809402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.505005, 37.311504, 36.793613>,  <46.875576, 37.459774, 36.767300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505005, 37.311504, 36.793613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176782, 0.582606, 0.793296,
		-0.332381, 0.723304, -0.605272,
		-0.926429, -0.370678, 0.065780,
		46.227077, 37.200302, 36.813347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371212, 38.034046, 36.695736>,  <46.875576, 37.459774, 36.767300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371212, 38.034046, 36.695736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.197186, 37.749611, 36.916668>,  <46.092770, 37.578949, 37.049229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.197186, 37.749611, 36.916668>,  <46.371212, 38.034046, 36.695736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197186, 37.749611, 36.916668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209208, 0.676475, 0.706125,
		-0.875758, 0.191656, -0.443075,
		-0.435063, -0.711090, 0.552333,
		46.066666, 37.536285, 37.082367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683987, 38.200500, 36.922169>,  <46.371212, 38.034046, 36.695736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683987, 38.200500, 36.922169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801659, 37.937004, 37.199158>,  <45.872261, 37.778908, 37.365353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801659, 37.937004, 37.199158>,  <45.683987, 38.200500, 36.922169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801659, 37.937004, 37.199158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480317, 0.524492, 0.702996,
		-0.826289, -0.539413, -0.162110,
		0.294180, -0.658742, 0.692472,
		45.889912, 37.739380, 37.406898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317146, 38.414265, 37.454201>,  <45.683987, 38.200500, 36.922169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317146, 38.414265, 37.454201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538624, 38.139290, 37.642178>,  <45.671513, 37.974304, 37.754963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538624, 38.139290, 37.642178>,  <45.317146, 38.414265, 37.454201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538624, 38.139290, 37.642178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287209, 0.372067, 0.882653,
		-0.781621, -0.623695, 0.008573,
		0.553697, -0.687438, 0.469946,
		45.704731, 37.933060, 37.783161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899323, 37.993542, 37.951202>,  <45.317146, 38.414265, 37.454201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899323, 37.993542, 37.951202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274368, 37.960171, 38.086208>,  <45.499397, 37.940147, 38.167213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274368, 37.960171, 38.086208>,  <44.899323, 37.993542, 37.951202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274368, 37.960171, 38.086208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313999, 0.213609, 0.925082,
		-0.149274, -0.973350, 0.174087,
		0.937615, -0.083427, 0.337517,
		45.555653, 37.935143, 38.187462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802902, 37.940365, 38.560753>,  <44.899323, 37.993542, 37.951202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802902, 37.940365, 38.560753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193535, 38.019585, 38.594372>,  <45.427914, 38.067116, 38.614544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193535, 38.019585, 38.594372>,  <44.802902, 37.940365, 38.560753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193535, 38.019585, 38.594372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156042, 0.383052, 0.910451,
		0.148119, -0.902246, 0.404986,
		0.976582, 0.198050, 0.084051,
		45.486507, 38.078999, 38.619587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021984, 37.787006, 39.302647>,  <44.802902, 37.940365, 38.560753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021984, 37.787006, 39.302647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326420, 38.013962, 39.176914>,  <45.509083, 38.150135, 39.101475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326420, 38.013962, 39.176914>,  <45.021984, 37.787006, 39.302647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326420, 38.013962, 39.176914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012157, 0.472036, 0.881496,
		0.648531, -0.674720, 0.352364,
		0.761091, 0.567393, -0.314332,
		45.554749, 38.184181, 39.082615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498447, 37.698963, 39.795719>,  <45.021984, 37.787006, 39.302647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498447, 37.698963, 39.795719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.564102, 38.045177, 39.606441>,  <45.603493, 38.252907, 39.492874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.564102, 38.045177, 39.606441>,  <45.498447, 37.698963, 39.795719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564102, 38.045177, 39.606441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018403, 0.482299, 0.875813,
		0.986267, -0.135042, 0.095090,
		0.164133, 0.865536, -0.473190,
		45.613342, 38.304836, 39.464485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014271, 38.209942, 40.148186>,  <45.498447, 37.698963, 39.795719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014271, 38.209942, 40.148186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.896137, 38.521553, 39.926952>,  <45.825256, 38.708519, 39.794212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.896137, 38.521553, 39.926952>,  <46.014271, 38.209942, 40.148186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896137, 38.521553, 39.926952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072891, 0.595588, 0.799976,
		0.952609, 0.195947, -0.232682,
		-0.295336, 0.779025, -0.553079,
		45.807537, 38.755260, 39.761028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481621, 38.714218, 40.323257>,  <46.014271, 38.209942, 40.148186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481621, 38.714218, 40.323257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.164619, 38.907429, 40.174328>,  <45.974419, 39.023357, 40.084969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.164619, 38.907429, 40.174328>,  <46.481621, 38.714218, 40.323257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164619, 38.907429, 40.174328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127680, 0.728377, 0.673176,
		0.596358, 0.485953, -0.638911,
		-0.792499, 0.483029, -0.372327,
		45.926868, 39.052338, 40.062630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674320, 39.407547, 40.385769>,  <46.481621, 38.714218, 40.323257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674320, 39.407547, 40.385769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290298, 39.457275, 40.285492>,  <46.059887, 39.487114, 40.225327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290298, 39.457275, 40.285492>,  <46.674320, 39.407547, 40.385769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290298, 39.457275, 40.285492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024751, 0.854646, 0.518620,
		0.278726, 0.504107, -0.817428,
		-0.960052, 0.124321, -0.250690,
		46.002281, 39.494572, 40.210285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584778, 40.144573, 40.114014>,  <46.674320, 39.407547, 40.385769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584778, 40.144573, 40.114014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.269913, 39.959808, 40.277481>,  <46.080994, 39.848949, 40.375561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.269913, 39.959808, 40.277481>,  <46.584778, 40.144573, 40.114014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269913, 39.959808, 40.277481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065960, 0.721876, 0.688872,
		-0.613206, 0.515300, -0.598702,
		-0.787164, -0.461911, 0.408670,
		46.033764, 39.821236, 40.400082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182301, 40.667297, 40.296894>,  <46.584778, 40.144573, 40.114014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182301, 40.667297, 40.296894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.035267, 40.362946, 40.510788>,  <45.947048, 40.180332, 40.639126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.035267, 40.362946, 40.510788>,  <46.182301, 40.667297, 40.296894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035267, 40.362946, 40.510788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366550, 0.646980, 0.668624,
		-0.854707, 0.049767, -0.516720,
		-0.367583, -0.760881, 0.534736,
		45.924992, 40.134682, 40.671207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348663, 40.725586, 40.369892>,  <46.182301, 40.667297, 40.296894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348663, 40.725586, 40.369892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.527962, 40.540977, 40.676117>,  <45.635540, 40.430214, 40.859852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.527962, 40.540977, 40.676117>,  <45.348663, 40.725586, 40.369892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527962, 40.540977, 40.676117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365325, 0.687051, 0.628092,
		-0.815853, -0.561215, 0.139362,
		0.448243, -0.461518, 0.765558,
		45.662434, 40.402523, 40.905785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.885033, 35.900169, 43.792084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680080, 35.629559, 43.580505>,  <38.557110, 35.467194, 43.453560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680080, 35.629559, 43.580505>,  <38.885033, 35.900169, 43.792084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680080, 35.629559, 43.580505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668918, 0.071840, -0.739856,
		0.538533, -0.732904, 0.415732,
		-0.512378, -0.676528, -0.528941,
		38.526367, 35.426601, 43.421822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375549, 35.598061, 43.411041>,  <38.885033, 35.900169, 43.792084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375549, 35.598061, 43.411041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034409, 35.493752, 43.230087>,  <38.829723, 35.431164, 43.121517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034409, 35.493752, 43.230087>,  <39.375549, 35.598061, 43.411041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034409, 35.493752, 43.230087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466921, 0.006961, -0.884272,
		0.233745, -0.965374, 0.115825,
		-0.852847, -0.260775, -0.452380,
		38.778553, 35.415520, 43.094372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567738, 35.094139, 42.884708>,  <39.375549, 35.598061, 43.411041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567738, 35.094139, 42.884708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207279, 35.232746, 42.780514>,  <38.991005, 35.315910, 42.717999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207279, 35.232746, 42.780514>,  <39.567738, 35.094139, 42.884708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207279, 35.232746, 42.780514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321478, 0.131068, -0.937802,
		-0.290827, -0.928841, -0.229510,
		-0.901150, 0.346520, -0.260484,
		38.936935, 35.336700, 42.702370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405682, 34.708206, 42.222832>,  <39.567738, 35.094139, 42.884708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405682, 34.708206, 42.222832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172688, 35.033337, 42.220581>,  <39.032890, 35.228416, 42.219231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172688, 35.033337, 42.220581>,  <39.405682, 34.708206, 42.222832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172688, 35.033337, 42.220581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166242, 0.112350, -0.979664,
		-0.795663, -0.571571, -0.200567,
		-0.582480, 0.812825, -0.005626,
		38.997944, 35.277184, 42.218895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904945, 34.692917, 41.647720>,  <39.405682, 34.708206, 42.222832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904945, 34.692917, 41.647720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926804, 35.077919, 41.754005>,  <38.939919, 35.308918, 41.817776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926804, 35.077919, 41.754005>,  <38.904945, 34.692917, 41.647720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926804, 35.077919, 41.754005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036488, 0.267859, -0.962767,
		-0.997839, 0.042912, 0.049756,
		0.054642, 0.962502, 0.265714,
		38.943195, 35.366669, 41.833721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593777, 34.981197, 41.108685>,  <38.904945, 34.692917, 41.647720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593777, 34.981197, 41.108685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750706, 35.308624, 41.276508>,  <38.844864, 35.505081, 41.377201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750706, 35.308624, 41.276508>,  <38.593777, 34.981197, 41.108685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750706, 35.308624, 41.276508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078058, 0.424856, -0.901889,
		-0.916511, 0.386580, 0.102784,
		0.392321, 0.818568, 0.419561,
		38.868401, 35.554195, 41.402378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189285, 35.641045, 40.943474>,  <38.593777, 34.981197, 41.108685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189285, 35.641045, 40.943474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564381, 35.754280, 41.023983>,  <38.789436, 35.822220, 41.072289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564381, 35.754280, 41.023983>,  <38.189285, 35.641045, 40.943474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564381, 35.754280, 41.023983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032933, 0.504387, -0.862849,
		-0.345778, 0.815756, 0.463660,
		0.937738, 0.283084, 0.201271,
		38.845703, 35.839207, 41.084366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180134, 36.227402, 40.620560>,  <38.189285, 35.641045, 40.943474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180134, 36.227402, 40.620560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570976, 36.181839, 40.692432>,  <38.805481, 36.154499, 40.735554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570976, 36.181839, 40.692432>,  <38.180134, 36.227402, 40.620560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570976, 36.181839, 40.692432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212724, 0.511440, -0.832573,
		0.002945, 0.851735, 0.523964,
		0.977108, -0.113912, 0.179679,
		38.864109, 36.147667, 40.746338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502026, 36.885674, 40.677101>,  <38.180134, 36.227402, 40.620560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502026, 36.885674, 40.677101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757584, 36.609688, 40.541012>,  <38.910919, 36.444096, 40.459358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757584, 36.609688, 40.541012>,  <38.502026, 36.885674, 40.677101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757584, 36.609688, 40.541012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084868, 0.502778, -0.860240,
		0.764596, 0.520731, 0.379780,
		0.638898, -0.689967, -0.340228,
		38.949253, 36.402699, 40.438942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998920, 37.266689, 40.331379>,  <38.502026, 36.885674, 40.677101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998920, 37.266689, 40.331379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064945, 36.892162, 40.207401>,  <39.104561, 36.667446, 40.133015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064945, 36.892162, 40.207401>,  <38.998920, 37.266689, 40.331379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064945, 36.892162, 40.207401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111805, 0.329995, -0.937338,
		0.979926, 0.120066, 0.159154,
		0.165062, -0.936316, -0.309946,
		39.114464, 36.611267, 40.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635174, 37.395847, 39.874088>,  <38.998920, 37.266689, 40.331379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635174, 37.395847, 39.874088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462654, 37.047897, 39.778339>,  <39.359142, 36.839127, 39.720890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462654, 37.047897, 39.778339>,  <39.635174, 37.395847, 39.874088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462654, 37.047897, 39.778339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118774, 0.208264, -0.970834,
		0.894355, -0.447155, 0.013493,
		-0.431303, -0.869873, -0.239372,
		39.333263, 36.786934, 39.706528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133907, 37.020733, 39.392513>,  <39.635174, 37.395847, 39.874088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133907, 37.020733, 39.392513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753937, 36.905853, 39.343281>,  <39.525955, 36.836926, 39.313744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753937, 36.905853, 39.343281>,  <40.133907, 37.020733, 39.392513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753937, 36.905853, 39.343281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065718, 0.201446, -0.977292,
		0.305475, -0.936448, -0.172486,
		-0.949930, -0.287203, -0.123078,
		39.468956, 36.819695, 39.306358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110516, 36.856339, 38.724689>,  <40.133907, 37.020733, 39.392513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110516, 36.856339, 38.724689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720139, 36.818993, 38.803505>,  <39.485912, 36.796585, 38.850796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720139, 36.818993, 38.803505>,  <40.110516, 36.856339, 38.724689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720139, 36.818993, 38.803505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190164, -0.077672, -0.978675,
		0.106680, -0.992598, 0.058049,
		-0.975939, -0.093366, 0.197042,
		39.427357, 36.790981, 38.862617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889797, 36.470078, 38.122402>,  <40.110516, 36.856339, 38.724689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889797, 36.470078, 38.122402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549248, 36.616631, 38.272564>,  <39.344917, 36.704563, 38.362659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549248, 36.616631, 38.272564>,  <39.889797, 36.470078, 38.122402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549248, 36.616631, 38.272564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424775, -0.061631, -0.903199,
		-0.307777, -0.928422, 0.208100,
		-0.851375, 0.366379, 0.375402,
		39.293835, 36.726543, 38.385185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222637, 36.061848, 37.549652>,  <39.889797, 36.470078, 38.122402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222637, 36.061848, 37.549652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297535, 35.774086, 37.282101>,  <40.342472, 35.601429, 37.121571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297535, 35.774086, 37.282101>,  <40.222637, 36.061848, 37.549652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297535, 35.774086, 37.282101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314645, -0.688964, 0.652937,
		-0.930559, 0.088202, -0.355360,
		0.187240, -0.719408, -0.668874,
		40.353706, 35.558262, 37.081440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599667, 35.587471, 37.382832>,  <40.222637, 36.061848, 37.549652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599667, 35.587471, 37.382832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943649, 35.401218, 37.299244>,  <40.150040, 35.289467, 37.249092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943649, 35.401218, 37.299244>,  <39.599667, 35.587471, 37.382832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943649, 35.401218, 37.299244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239717, -0.729978, 0.640052,
		-0.450570, -0.500322, -0.739367,
		0.859955, -0.465628, -0.208970,
		40.201637, 35.261532, 37.236553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426311, 34.912090, 37.370167>,  <39.599667, 35.587471, 37.382832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426311, 34.912090, 37.370167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818111, 34.929565, 37.448822>,  <40.053192, 34.940052, 37.496017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818111, 34.929565, 37.448822>,  <39.426311, 34.912090, 37.370167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818111, 34.929565, 37.448822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097294, -0.752162, 0.651757,
		0.176383, -0.657528, -0.732493,
		0.979501, 0.043692, 0.196642,
		40.111961, 34.942673, 37.507816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515896, 34.217876, 37.574951>,  <39.426311, 34.912090, 37.370167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515896, 34.217876, 37.574951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878353, 34.366982, 37.654896>,  <40.095829, 34.456444, 37.702862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878353, 34.366982, 37.654896>,  <39.515896, 34.217876, 37.574951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878353, 34.366982, 37.654896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090538, -0.632520, 0.769234,
		0.413161, -0.678943, -0.606905,
		0.906146, 0.372765, 0.199863,
		40.150196, 34.478809, 37.714855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916389, 33.665028, 37.815529>,  <39.515896, 34.217876, 37.574951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916389, 33.665028, 37.815529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134583, 33.966610, 37.961948>,  <40.265499, 34.147560, 38.049801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134583, 33.966610, 37.961948>,  <39.916389, 33.665028, 37.815529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134583, 33.966610, 37.961948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205911, -0.543927, 0.813477,
		0.812433, -0.368365, -0.451952,
		0.545485, 0.753957, 0.366053,
		40.298229, 34.192799, 38.071766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547180, 33.320019, 37.968266>,  <39.916389, 33.665028, 37.815529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547180, 33.320019, 37.968266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538036, 33.654934, 38.186783>,  <40.532551, 33.855881, 38.317894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538036, 33.654934, 38.186783>,  <40.547180, 33.320019, 37.968266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538036, 33.654934, 38.186783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378078, -0.498609, 0.780029,
		0.925491, 0.224372, -0.305161,
		-0.022861, 0.837285, 0.546289,
		40.531178, 33.906120, 38.350670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226368, 33.380104, 38.294914>,  <40.547180, 33.320019, 37.968266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226368, 33.380104, 38.294914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967037, 33.604473, 38.500843>,  <40.811440, 33.739094, 38.624401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967037, 33.604473, 38.500843>,  <41.226368, 33.380104, 38.294914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967037, 33.604473, 38.500843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273975, -0.459009, 0.845132,
		0.710357, 0.688972, 0.143911,
		-0.648329, 0.560918, 0.514821,
		40.772537, 33.772747, 38.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589947, 33.542633, 38.870392>,  <41.226368, 33.380104, 38.294914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589947, 33.542633, 38.870392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201145, 33.594185, 38.948986>,  <40.967865, 33.625114, 38.996143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201145, 33.594185, 38.948986>,  <41.589947, 33.542633, 38.870392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201145, 33.594185, 38.948986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141890, -0.344593, 0.927967,
		0.187302, 0.929863, 0.316658,
		-0.972001, 0.128880, 0.196481,
		40.909546, 33.632851, 39.007931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564423, 33.426723, 39.593178>,  <41.589947, 33.542633, 38.870392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564423, 33.426723, 39.593178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172497, 33.445065, 39.515347>,  <40.937340, 33.456070, 39.468647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172497, 33.445065, 39.515347>,  <41.564423, 33.426723, 39.593178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172497, 33.445065, 39.515347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194978, -0.434055, 0.879534,
		-0.044132, 0.899719, 0.434233,
		-0.979814, 0.045850, -0.194581,
		40.878551, 33.458820, 39.456974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256351, 33.897873, 40.088272>,  <41.564423, 33.426723, 39.593178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256351, 33.897873, 40.088272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987740, 33.633801, 39.953686>,  <40.826572, 33.475357, 39.872936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987740, 33.633801, 39.953686>,  <41.256351, 33.897873, 40.088272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987740, 33.633801, 39.953686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140692, -0.332217, 0.932651,
		-0.727497, 0.673642, 0.130212,
		-0.671531, -0.660181, -0.336463,
		40.786282, 33.435745, 39.852745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716946, 33.982964, 40.514187>,  <41.256351, 33.897873, 40.088272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716946, 33.982964, 40.514187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676094, 33.613377, 40.366753>,  <40.651585, 33.391624, 40.278294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676094, 33.613377, 40.366753>,  <40.716946, 33.982964, 40.514187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676094, 33.613377, 40.366753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274954, -0.329868, 0.903099,
		-0.956018, 0.193573, -0.220361,
		-0.102125, -0.923968, -0.368583,
		40.645458, 33.336185, 40.256176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235012, 33.742233, 40.954262>,  <40.716946, 33.982964, 40.514187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235012, 33.742233, 40.954262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411392, 33.415936, 40.804527>,  <40.517220, 33.220158, 40.714687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411392, 33.415936, 40.804527>,  <40.235012, 33.742233, 40.954262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411392, 33.415936, 40.804527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116842, -0.465697, 0.877197,
		-0.889896, -0.343058, -0.300660,
		0.440946, -0.815743, -0.374338,
		40.543674, 33.171211, 40.692226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796974, 33.222210, 41.084232>,  <40.235012, 33.742233, 40.954262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796974, 33.222210, 41.084232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170628, 33.083755, 41.049419>,  <40.394821, 33.000683, 41.028530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170628, 33.083755, 41.049419>,  <39.796974, 33.222210, 41.084232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170628, 33.083755, 41.049419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046119, -0.358875, 0.932246,
		-0.353877, -0.866848, -0.351206,
		0.934155, -0.346097, -0.087019,
		40.450871, 32.979916, 41.023308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782402, 32.550251, 41.376949>,  <39.796974, 33.222210, 41.084232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782402, 32.550251, 41.376949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174503, 32.627144, 41.395500>,  <40.409763, 32.673279, 41.406631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174503, 32.627144, 41.395500>,  <39.782402, 32.550251, 41.376949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174503, 32.627144, 41.395500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024250, -0.115912, 0.992963,
		0.196258, -0.974479, -0.108962,
		0.980253, 0.192234, 0.046379,
		40.468578, 32.684814, 41.409412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594177, 31.866282, 41.327957>,  <39.782402, 32.550251, 41.376949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594177, 31.866282, 41.327957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279114, 31.623137, 41.287754>,  <39.090076, 31.477249, 41.263630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279114, 31.623137, 41.287754>,  <39.594177, 31.866282, 41.327957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279114, 31.623137, 41.287754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104204, 0.292219, -0.950657,
		0.607240, -0.738317, -0.293510,
		-0.787655, -0.607862, -0.100511,
		39.042816, 31.440779, 41.257603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592388, 31.644007, 40.616272>,  <39.594177, 31.866282, 41.327957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592388, 31.644007, 40.616272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217972, 31.568184, 40.734867>,  <38.993324, 31.522690, 40.806023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217972, 31.568184, 40.734867>,  <39.592388, 31.644007, 40.616272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217972, 31.568184, 40.734867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347450, 0.364246, -0.864062,
		0.055797, -0.911807, -0.406810,
		-0.936037, -0.189558, 0.296483,
		38.937160, 31.511316, 40.823811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371914, 31.295200, 40.066517>,  <39.592388, 31.644007, 40.616272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371914, 31.295200, 40.066517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053177, 31.420898, 40.272930>,  <38.861935, 31.496317, 40.396778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053177, 31.420898, 40.272930>,  <39.371914, 31.295200, 40.066517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053177, 31.420898, 40.272930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499213, 0.138656, -0.855313,
		-0.340330, -0.939161, 0.046389,
		-0.796845, 0.314247, 0.516030,
		38.814125, 31.515173, 40.427738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811710, 30.858356, 39.840088>,  <39.371914, 31.295200, 40.066517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811710, 30.858356, 39.840088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638451, 31.187628, 39.986927>,  <38.534496, 31.385191, 40.075031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638451, 31.187628, 39.986927>,  <38.811710, 30.858356, 39.840088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638451, 31.187628, 39.986927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624905, 0.019232, -0.780464,
		-0.649521, -0.567458, 0.506078,
		-0.433147, 0.823178, 0.367099,
		38.508507, 31.434582, 40.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242130, 30.787590, 39.579365>,  <38.811710, 30.858356, 39.840088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242130, 30.787590, 39.579365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221207, 31.170942, 39.691628>,  <38.208652, 31.400953, 39.758984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221207, 31.170942, 39.691628>,  <38.242130, 30.787590, 39.579365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221207, 31.170942, 39.691628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538134, 0.209693, -0.816358,
		-0.841234, -0.193737, 0.504768,
		-0.052312, 0.958381, 0.280657,
		38.205513, 31.458456, 39.775826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587723, 31.154863, 39.374474>,  <38.242130, 30.787590, 39.579365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587723, 31.154863, 39.374474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813942, 31.479853, 39.431099>,  <37.949673, 31.674847, 39.465073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813942, 31.479853, 39.431099>,  <37.587723, 31.154863, 39.374474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813942, 31.479853, 39.431099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336720, 0.384169, -0.859671,
		-0.752842, 0.438523, 0.490843,
		0.565552, 0.812473, 0.141559,
		37.983608, 31.723595, 39.473568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165623, 31.726789, 39.459820>,  <37.587723, 31.154863, 39.374474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165623, 31.726789, 39.459820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516727, 31.858099, 39.320236>,  <37.727390, 31.936884, 39.236488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516727, 31.858099, 39.320236>,  <37.165623, 31.726789, 39.459820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516727, 31.858099, 39.320236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472772, 0.475552, -0.741847,
		-0.077583, 0.816141, 0.572620,
		0.877763, 0.328273, -0.348954,
		37.780056, 31.956581, 39.215549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013477, 32.231972, 39.061264>,  <37.165623, 31.726789, 39.459820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013477, 32.231972, 39.061264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395561, 32.203762, 38.946304>,  <37.624813, 32.186836, 38.877327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395561, 32.203762, 38.946304>,  <37.013477, 32.231972, 39.061264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395561, 32.203762, 38.946304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210665, 0.520002, -0.827779,
		0.207827, 0.851248, 0.481855,
		0.955211, -0.070524, -0.287399,
		37.682125, 32.182606, 38.860085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231529, 32.894669, 38.888191>,  <37.013477, 32.231972, 39.061264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231529, 32.894669, 38.888191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498817, 32.650833, 38.717598>,  <37.659191, 32.504532, 38.615242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498817, 32.650833, 38.717598>,  <37.231529, 32.894669, 38.888191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498817, 32.650833, 38.717598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027069, 0.592802, -0.804893,
		0.743472, 0.526299, 0.412623,
		0.668218, -0.609585, -0.426486,
		37.699284, 32.467957, 38.589653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928329, 33.241486, 38.642841>,  <37.231529, 32.894669, 38.888191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928329, 33.241486, 38.642841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882744, 32.908344, 38.426186>,  <37.855392, 32.708458, 38.296192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882744, 32.908344, 38.426186>,  <37.928329, 33.241486, 38.642841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882744, 32.908344, 38.426186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279212, 0.496366, -0.821986,
		0.953443, -0.244906, 0.175976,
		-0.113960, -0.832852, -0.541637,
		37.848557, 32.658489, 38.263695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467686, 33.228577, 38.124538>,  <37.928329, 33.241486, 38.642841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467686, 33.228577, 38.124538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174515, 33.005642, 37.968494>,  <37.998611, 32.871880, 37.874866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174515, 33.005642, 37.968494>,  <38.467686, 33.228577, 38.124538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174515, 33.005642, 37.968494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178435, 0.395869, -0.900804,
		0.656489, -0.729834, -0.190694,
		-0.732928, -0.557342, -0.390111,
		37.954636, 32.838440, 37.851460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724716, 32.799816, 37.515938>,  <38.467686, 33.228577, 38.124538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724716, 32.799816, 37.515938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326797, 32.823200, 37.482582>,  <38.088047, 32.837231, 37.462566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326797, 32.823200, 37.482582>,  <38.724716, 32.799816, 37.515938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326797, 32.823200, 37.482582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095881, 0.261599, -0.960403,
		-0.034330, -0.963405, -0.265844,
		-0.994801, 0.058460, -0.083391,
		38.028358, 32.840736, 37.457565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.001812, 29.434490, 44.291988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601833, 29.438215, 44.293404>,  <39.361847, 29.440451, 44.294250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601833, 29.438215, 44.293404>,  <40.001812, 29.434490, 44.291988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601833, 29.438215, 44.293404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000886, 0.270294, -0.962777,
		-0.009924, -0.962733, -0.270273,
		-0.999950, 0.009316, 0.003535,
		39.301849, 29.441010, 44.294464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919003, 29.182220, 43.657104>,  <40.001812, 29.434490, 44.291988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919003, 29.182220, 43.657104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583157, 29.385851, 43.732887>,  <39.381649, 29.508030, 43.778355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583157, 29.385851, 43.732887>,  <39.919003, 29.182220, 43.657104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583157, 29.385851, 43.732887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017868, 0.374478, -0.927064,
		-0.542893, -0.774989, -0.323512,
		-0.839612, 0.509077, 0.189454,
		39.331272, 29.538574, 43.789722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460297, 29.044506, 43.145340>,  <39.919003, 29.182220, 43.657104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460297, 29.044506, 43.145340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323536, 29.382568, 43.309689>,  <39.241482, 29.585405, 43.408298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323536, 29.382568, 43.309689>,  <39.460297, 29.044506, 43.145340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323536, 29.382568, 43.309689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108276, 0.398883, -0.910587,
		-0.933479, -0.355816, -0.044867,
		-0.341898, 0.845156, 0.410875,
		39.220966, 29.636114, 43.432953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847584, 29.203644, 42.846947>,  <39.460297, 29.044506, 43.145340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847584, 29.203644, 42.846947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985516, 29.551899, 42.987278>,  <39.068275, 29.760853, 43.071476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985516, 29.551899, 42.987278>,  <38.847584, 29.203644, 42.846947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985516, 29.551899, 42.987278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154030, 0.421171, -0.893806,
		-0.925942, 0.254171, 0.279336,
		0.344827, 0.870639, 0.350830,
		39.088963, 29.813091, 43.092525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412685, 29.670200, 42.655632>,  <38.847584, 29.203644, 42.846947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412685, 29.670200, 42.655632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730553, 29.898880, 42.737274>,  <38.921272, 30.036087, 42.786259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730553, 29.898880, 42.737274>,  <38.412685, 29.670200, 42.655632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730553, 29.898880, 42.737274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257892, 0.622326, -0.739055,
		-0.549535, 0.534669, 0.641981,
		0.794672, 0.571698, 0.204104,
		38.968956, 30.070389, 42.798504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128231, 30.420465, 42.644474>,  <38.412685, 29.670200, 42.655632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128231, 30.420465, 42.644474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526791, 30.441122, 42.617588>,  <38.765926, 30.453516, 42.601456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526791, 30.441122, 42.617588>,  <38.128231, 30.420465, 42.644474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526791, 30.441122, 42.617588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084597, 0.556300, -0.826664,
		-0.005300, 0.829375, 0.558667,
		0.996401, 0.051643, -0.067214,
		38.825710, 30.456615, 42.597424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369404, 31.133017, 42.702507>,  <38.128231, 30.420465, 42.644474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369404, 31.133017, 42.702507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659779, 30.935871, 42.510632>,  <38.834003, 30.817583, 42.395504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659779, 30.935871, 42.510632>,  <38.369404, 31.133017, 42.702507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659779, 30.935871, 42.510632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111960, 0.603477, -0.789482,
		0.678592, 0.626817, 0.382902,
		0.725933, -0.492866, -0.479692,
		38.877560, 30.788012, 42.366722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815304, 31.588741, 42.511578>,  <38.369404, 31.133017, 42.702507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815304, 31.588741, 42.511578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923450, 31.298416, 42.258564>,  <38.988338, 31.124222, 42.106754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923450, 31.298416, 42.258564>,  <38.815304, 31.588741, 42.511578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923450, 31.298416, 42.258564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005424, 0.658142, -0.752874,
		0.962743, 0.200118, 0.181874,
		0.270363, -0.725811, -0.632537,
		39.004559, 31.080673, 42.068802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290245, 31.891083, 42.016682>,  <38.815304, 31.588741, 42.511578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290245, 31.891083, 42.016682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184746, 31.559023, 41.820198>,  <39.121445, 31.359787, 41.702309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184746, 31.559023, 41.820198>,  <39.290245, 31.891083, 42.016682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184746, 31.559023, 41.820198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239881, 0.549696, -0.800182,
		0.934287, -0.093216, -0.344120,
		-0.263751, -0.830147, -0.491214,
		39.105621, 31.309978, 41.672832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070614, 32.016544, 41.834339>,  <39.290245, 31.891083, 42.016682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070614, 32.016544, 41.834339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.364704, 32.287479, 41.824074>,  <40.541157, 32.450043, 41.817913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.364704, 32.287479, 41.824074>,  <40.070614, 32.016544, 41.834339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364704, 32.287479, 41.824074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138718, -0.113296, 0.983830,
		0.663479, -0.726894, -0.177257,
		0.735223, 0.677339, -0.025664,
		40.585270, 32.490681, 41.816376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705696, 31.724501, 41.980934>,  <40.070614, 32.016544, 41.834339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705696, 31.724501, 41.980934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754776, 32.108040, 42.083347>,  <40.784222, 32.338165, 42.144794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754776, 32.108040, 42.083347>,  <40.705696, 31.724501, 41.980934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754776, 32.108040, 42.083347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258830, -0.279972, 0.924458,
		0.958098, -0.047160, -0.282531,
		0.122698, 0.958849, 0.256035,
		40.791584, 32.395695, 42.160156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177460, 31.734493, 42.456596>,  <40.705696, 31.724501, 41.980934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177460, 31.734493, 42.456596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040852, 32.107815, 42.500977>,  <40.958889, 32.331806, 42.527603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040852, 32.107815, 42.500977>,  <41.177460, 31.734493, 42.456596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040852, 32.107815, 42.500977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119926, -0.073807, 0.990036,
		0.932193, 0.351421, -0.086721,
		-0.341518, 0.933304, 0.110947,
		40.938396, 32.387806, 42.534260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650406, 32.132057, 42.953842>,  <41.177460, 31.734493, 42.456596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650406, 32.132057, 42.953842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.283577, 32.291523, 42.956768>,  <41.063480, 32.387203, 42.958523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.283577, 32.291523, 42.956768>,  <41.650406, 32.132057, 42.953842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283577, 32.291523, 42.956768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022916, 0.034388, 0.999146,
		0.398069, 0.916454, -0.040672,
		-0.917069, 0.398661, 0.007313,
		41.008457, 32.411121, 42.958961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675545, 32.559486, 43.472343>,  <41.650406, 32.132057, 42.953842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675545, 32.559486, 43.472343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277950, 32.537506, 43.434464>,  <41.039394, 32.524319, 43.411736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277950, 32.537506, 43.434464>,  <41.675545, 32.559486, 43.472343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277950, 32.537506, 43.434464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103898, 0.200437, 0.974182,
		-0.034553, 0.978164, -0.204941,
		-0.993988, -0.054953, -0.094703,
		40.979755, 32.521019, 43.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383167, 33.183903, 43.754047>,  <41.675545, 32.559486, 43.472343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383167, 33.183903, 43.754047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082676, 32.919949, 43.759785>,  <40.902382, 32.761574, 43.763229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082676, 32.919949, 43.759785>,  <41.383167, 33.183903, 43.754047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082676, 32.919949, 43.759785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172143, 0.216862, 0.960904,
		-0.637203, 0.719386, -0.276508,
		-0.751226, -0.659890, 0.014348,
		40.857307, 32.721981, 43.764088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947960, 33.502129, 44.175186>,  <41.383167, 33.183903, 43.754047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947960, 33.502129, 44.175186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.805569, 33.128525, 44.163155>,  <40.720135, 32.904362, 44.155937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.805569, 33.128525, 44.163155>,  <40.947960, 33.502129, 44.175186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805569, 33.128525, 44.163155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248579, 0.063618, 0.966520,
		-0.900825, 0.351540, -0.254822,
		-0.355982, -0.934009, -0.030077,
		40.698772, 32.848324, 44.154133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251797, 33.550343, 44.451111>,  <40.947960, 33.502129, 44.175186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251797, 33.550343, 44.451111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.347713, 33.163559, 44.485733>,  <40.405266, 32.931488, 44.506504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.347713, 33.163559, 44.485733>,  <40.251797, 33.550343, 44.451111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347713, 33.163559, 44.485733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381634, -0.011912, 0.924237,
		-0.892667, -0.254658, -0.371880,
		0.239794, -0.966958, 0.086553,
		40.419651, 32.873470, 44.511700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640839, 33.062687, 44.760719>,  <40.251797, 33.550343, 44.451111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640839, 33.062687, 44.760719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993084, 32.891987, 44.843082>,  <40.204433, 32.789566, 44.892502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993084, 32.891987, 44.843082>,  <39.640839, 33.062687, 44.760719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993084, 32.891987, 44.843082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340133, -0.266787, 0.901740,
		-0.329889, -0.864121, -0.380090,
		0.880615, -0.426755, 0.205906,
		40.257267, 32.763962, 44.904854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445831, 32.431461, 45.122398>,  <39.640839, 33.062687, 44.760719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445831, 32.431461, 45.122398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830578, 32.485474, 45.217548>,  <40.061424, 32.517879, 45.274639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830578, 32.485474, 45.217548>,  <39.445831, 32.431461, 45.122398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830578, 32.485474, 45.217548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166315, -0.401714, 0.900536,
		0.217157, -0.905755, -0.363937,
		0.961864, 0.135030, 0.237876,
		40.119137, 32.525982, 45.288910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492706, 31.892338, 45.551762>,  <39.445831, 32.431461, 45.122398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492706, 31.892338, 45.551762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.823200, 32.105347, 45.625248>,  <40.021496, 32.233150, 45.669338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.823200, 32.105347, 45.625248>,  <39.492706, 31.892338, 45.551762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823200, 32.105347, 45.625248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040363, -0.269323, 0.962204,
		0.561874, -0.802424, -0.201031,
		0.826238, 0.532523, 0.183714,
		40.071072, 32.265102, 45.680363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919914, 31.507223, 45.980606>,  <39.492706, 31.892338, 45.551762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919914, 31.507223, 45.980606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072369, 31.870705, 46.048717>,  <40.163841, 32.088795, 46.089584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072369, 31.870705, 46.048717>,  <39.919914, 31.507223, 45.980606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072369, 31.870705, 46.048717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074753, -0.213865, 0.973999,
		0.921491, -0.358500, -0.149440,
		0.381138, 0.908702, 0.170276,
		40.186710, 32.143314, 46.099800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572365, 31.494226, 46.421097>,  <39.919914, 31.507223, 45.980606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572365, 31.494226, 46.421097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423473, 31.863876, 46.455597>,  <40.334141, 32.085667, 46.476295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423473, 31.863876, 46.455597>,  <40.572365, 31.494226, 46.421097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423473, 31.863876, 46.455597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073105, -0.063443, 0.995304,
		0.925259, 0.376783, -0.043943,
		-0.372226, 0.924127, 0.086246,
		40.311806, 32.141113, 46.481472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069958, 31.935213, 46.697937>,  <40.572365, 31.494226, 46.421097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069958, 31.935213, 46.697937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.721069, 32.111279, 46.783253>,  <40.511738, 32.216919, 46.834442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.721069, 32.111279, 46.783253>,  <41.069958, 31.935213, 46.697937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721069, 32.111279, 46.783253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237199, -0.000717, 0.971461,
		0.427756, 0.897917, -0.103781,
		-0.872216, 0.440165, 0.213291,
		40.459404, 32.243328, 46.847240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.908669, 30.624355, 46.746708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201897, 30.421959, 46.564903>,  <33.377834, 30.300520, 46.455822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201897, 30.421959, 46.564903>,  <32.908669, 30.624355, 46.746708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201897, 30.421959, 46.564903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062443, 0.615356, -0.785772,
		0.677279, 0.604407, 0.419504,
		0.733071, -0.505992, -0.454509,
		33.421818, 30.270161, 46.428551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057487, 31.096317, 46.309124>,  <32.908669, 30.624355, 46.746708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057487, 31.096317, 46.309124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263485, 30.786442, 46.162350>,  <33.387081, 30.600517, 46.074284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263485, 30.786442, 46.162350>,  <33.057487, 31.096317, 46.309124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263485, 30.786442, 46.162350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075754, 0.467521, -0.880730,
		0.853842, 0.425771, 0.299455,
		0.514991, -0.774689, -0.366935,
		33.417984, 30.554035, 46.052269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681282, 31.434450, 46.093853>,  <33.057487, 31.096317, 46.309124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681282, 31.434450, 46.093853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603394, 31.100309, 45.888226>,  <33.556660, 30.899824, 45.764847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603394, 31.100309, 45.888226>,  <33.681282, 31.434450, 46.093853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603394, 31.100309, 45.888226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237594, 0.468326, -0.851011,
		0.951647, -0.287850, 0.107282,
		-0.194721, -0.835352, -0.514073,
		33.544979, 30.849705, 45.734005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216034, 31.485481, 45.616611>,  <33.681282, 31.434450, 46.093853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216034, 31.485481, 45.616611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968132, 31.214272, 45.458527>,  <33.819393, 31.051546, 45.363674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968132, 31.214272, 45.458527>,  <34.216034, 31.485481, 45.616611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968132, 31.214272, 45.458527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186516, 0.361903, -0.913366,
		0.762312, -0.639774, -0.097828,
		-0.619752, -0.678024, -0.395211,
		33.782207, 31.010864, 45.339962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513435, 31.160194, 45.007439>,  <34.216034, 31.485481, 45.616611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513435, 31.160194, 45.007439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124603, 31.080091, 44.958511>,  <33.891304, 31.032030, 44.929153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124603, 31.080091, 44.958511>,  <34.513435, 31.160194, 45.007439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124603, 31.080091, 44.958511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025706, 0.427260, -0.903763,
		0.233249, -0.881672, -0.410182,
		-0.972077, -0.200258, -0.122322,
		33.832981, 31.020014, 44.921814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466160, 31.058052, 44.329552>,  <34.513435, 31.160194, 45.007439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466160, 31.058052, 44.329552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.086514, 31.141014, 44.424355>,  <33.858727, 31.190792, 44.481236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.086514, 31.141014, 44.424355>,  <34.466160, 31.058052, 44.329552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086514, 31.141014, 44.424355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114808, 0.472900, -0.873604,
		-0.293269, -0.856358, -0.425023,
		-0.949111, 0.207405, 0.237003,
		33.801781, 31.203236, 44.495457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996582, 30.819500, 43.794273>,  <34.466160, 31.058052, 44.329552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996582, 30.819500, 43.794273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804695, 31.116434, 43.981380>,  <33.689564, 31.294596, 44.093647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804695, 31.116434, 43.981380>,  <33.996582, 30.819500, 43.794273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804695, 31.116434, 43.981380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108190, 0.479005, -0.871119,
		-0.870728, -0.468498, -0.149473,
		-0.479716, 0.742337, 0.467770,
		33.660782, 31.339134, 44.121712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427948, 31.067919, 43.290470>,  <33.996582, 30.819500, 43.794273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427948, 31.067919, 43.290470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453491, 31.366310, 43.555630>,  <33.468819, 31.545345, 43.714725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453491, 31.366310, 43.555630>,  <33.427948, 31.067919, 43.290470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453491, 31.366310, 43.555630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035067, 0.662167, -0.748535,
		-0.997343, 0.071048, 0.016127,
		0.063860, 0.745980, 0.662899,
		33.472649, 31.590105, 43.754501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893791, 31.395884, 43.158985>,  <33.427948, 31.067919, 43.290470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893791, 31.395884, 43.158985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159672, 31.638556, 43.333389>,  <33.319202, 31.784159, 43.438030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159672, 31.638556, 43.333389>,  <32.893791, 31.395884, 43.158985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159672, 31.638556, 43.333389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005539, 0.579582, -0.814895,
		-0.747086, 0.544080, 0.381891,
		0.664705, 0.606681, 0.436011,
		33.359085, 31.820560, 43.464191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619755, 31.993637, 43.266724>,  <32.893791, 31.395884, 43.158985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619755, 31.993637, 43.266724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006950, 32.090523, 43.240417>,  <33.239269, 32.148655, 43.224632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006950, 32.090523, 43.240417>,  <32.619755, 31.993637, 43.266724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006950, 32.090523, 43.240417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222288, 0.705684, -0.672754,
		-0.116540, 0.665839, 0.736937,
		0.967991, 0.242215, -0.065767,
		33.297348, 32.163189, 43.220688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613384, 32.730175, 43.045383>,  <32.619755, 31.993637, 43.266724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613384, 32.730175, 43.045383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994362, 32.620125, 42.992977>,  <33.222946, 32.554096, 42.961533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994362, 32.620125, 42.992977>,  <32.613384, 32.730175, 43.045383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994362, 32.620125, 42.992977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080986, 0.643019, -0.761557,
		0.293768, 0.714726, 0.634718,
		0.952440, -0.275125, -0.131015,
		33.280094, 32.537586, 42.953674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089611, 33.362354, 43.093166>,  <32.613384, 32.730175, 43.045383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089611, 33.362354, 43.093166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269875, 33.076355, 42.879368>,  <33.378033, 32.904755, 42.751087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269875, 33.076355, 42.879368>,  <33.089611, 33.362354, 43.093166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269875, 33.076355, 42.879368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352432, 0.692606, -0.629356,
		0.820184, 0.095250, 0.564116,
		0.450656, -0.715000, -0.534495,
		33.405071, 32.861855, 42.719021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730766, 33.672443, 42.787621>,  <33.089611, 33.362354, 43.093166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730766, 33.672443, 42.787621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684895, 33.340790, 42.568756>,  <33.657372, 33.141796, 42.437439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684895, 33.340790, 42.568756>,  <33.730766, 33.672443, 42.787621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684895, 33.340790, 42.568756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277057, 0.502246, -0.819139,
		0.953986, -0.245531, 0.172122,
		-0.114676, -0.829135, -0.547161,
		33.650490, 33.092049, 42.404610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295338, 33.774712, 42.403416>,  <33.730766, 33.672443, 42.787621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295338, 33.774712, 42.403416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064514, 33.511814, 42.209492>,  <33.926022, 33.354076, 42.093136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064514, 33.511814, 42.209492>,  <34.295338, 33.774712, 42.403416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064514, 33.511814, 42.209492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326828, 0.358176, -0.874582,
		0.748458, -0.663132, 0.008117,
		-0.577056, -0.657241, -0.484810,
		33.891396, 33.314640, 42.064049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089691, 33.860245, 42.672260>,  <34.295338, 33.774712, 42.403416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089691, 33.860245, 42.672260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.144184, 34.228634, 42.818275>,  <35.176880, 34.449665, 42.905884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.144184, 34.228634, 42.818275>,  <35.089691, 33.860245, 42.672260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144184, 34.228634, 42.818275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072865, -0.358164, 0.930811,
		0.987993, -0.153408, 0.018312,
		0.136235, 0.920969, 0.365042,
		35.185055, 34.504925, 42.927788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396896, 33.760693, 43.298382>,  <35.089691, 33.860245, 42.672260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396896, 33.760693, 43.298382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269447, 34.137592, 43.339668>,  <35.192978, 34.363731, 43.364441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269447, 34.137592, 43.339668>,  <35.396896, 33.760693, 43.298382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269447, 34.137592, 43.339668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189576, -0.170035, 0.967031,
		0.928730, 0.288554, 0.232805,
		-0.318625, 0.942245, 0.103214,
		35.173859, 34.420265, 43.370632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822849, 34.042011, 43.719215>,  <35.396896, 33.760693, 43.298382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822849, 34.042011, 43.719215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492680, 34.267437, 43.732288>,  <35.294579, 34.402691, 43.740131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492680, 34.267437, 43.732288>,  <35.822849, 34.042011, 43.719215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492680, 34.267437, 43.732288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111775, -0.219911, 0.969095,
		0.553332, 0.796265, 0.244513,
		-0.825427, 0.563562, 0.032681,
		35.245052, 34.436504, 43.742092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878567, 34.544960, 44.258282>,  <35.822849, 34.042011, 43.719215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878567, 34.544960, 44.258282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492485, 34.477982, 44.177940>,  <35.260838, 34.437794, 44.129734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492485, 34.477982, 44.177940>,  <35.878567, 34.544960, 44.258282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492485, 34.477982, 44.177940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152873, -0.261857, 0.952922,
		-0.212159, 0.950469, 0.227148,
		-0.965204, -0.167446, -0.200857,
		35.202923, 34.427750, 44.117683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539291, 34.781235, 44.844395>,  <35.878567, 34.544960, 44.258282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539291, 34.781235, 44.844395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.283306, 34.550522, 44.641312>,  <35.129715, 34.412094, 44.519463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.283306, 34.550522, 44.641312>,  <35.539291, 34.781235, 44.844395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283306, 34.550522, 44.641312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303780, -0.416994, 0.856641,
		-0.705805, 0.702453, 0.091648,
		-0.639967, -0.576780, -0.507708,
		35.091316, 34.377487, 44.488998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990589, 34.782730, 45.308205>,  <35.539291, 34.781235, 44.844395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990589, 34.782730, 45.308205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964684, 34.463161, 45.069031>,  <34.949139, 34.271420, 44.925526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964684, 34.463161, 45.069031>,  <34.990589, 34.782730, 45.308205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964684, 34.463161, 45.069031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245782, -0.567961, 0.785501,
		-0.967159, 0.197835, -0.159578,
		-0.064766, -0.798926, -0.597932,
		34.945255, 34.223484, 44.889652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486656, 34.483482, 45.611961>,  <34.990589, 34.782730, 45.308205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486656, 34.483482, 45.611961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.658298, 34.194351, 45.395302>,  <34.761284, 34.020874, 45.265305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.658298, 34.194351, 45.395302>,  <34.486656, 34.483482, 45.611961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658298, 34.194351, 45.395302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246147, -0.670550, 0.699838,
		-0.869068, -0.166979, -0.465660,
		0.429107, -0.722828, -0.541652,
		34.787029, 33.977505, 45.232807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053505, 33.893826, 45.766090>,  <34.486656, 34.483482, 45.611961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053505, 33.893826, 45.766090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389084, 33.751701, 45.601204>,  <34.590431, 33.666428, 45.502274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389084, 33.751701, 45.601204>,  <34.053505, 33.893826, 45.766090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389084, 33.751701, 45.601204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071724, -0.678654, 0.730948,
		-0.539467, -0.642792, -0.543869,
		0.838946, -0.355314, -0.412215,
		34.640766, 33.645107, 45.477539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805401, 33.259838, 45.458092>,  <34.053505, 33.893826, 45.766090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805401, 33.259838, 45.458092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.189972, 33.298740, 45.561012>,  <34.420715, 33.322083, 45.622765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.189972, 33.298740, 45.561012>,  <33.805401, 33.259838, 45.458092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189972, 33.298740, 45.561012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083939, -0.787060, 0.611139,
		0.261947, -0.609162, -0.748536,
		0.961425, 0.097254, 0.257300,
		34.478401, 33.327915, 45.638203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026417, 32.539570, 45.829128>,  <33.805401, 33.259838, 45.458092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026417, 32.539570, 45.829128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327419, 32.787369, 45.918537>,  <34.508022, 32.936047, 45.972183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327419, 32.787369, 45.918537>,  <34.026417, 32.539570, 45.829128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327419, 32.787369, 45.918537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113292, -0.456102, 0.882687,
		0.648768, -0.638904, -0.413403,
		0.752506, 0.619494, 0.223521,
		34.553169, 32.973217, 45.985592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692936, 32.170044, 45.818211>,  <34.026417, 32.539570, 45.829128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692936, 32.170044, 45.818211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716839, 32.482094, 46.067314>,  <34.731182, 32.669323, 46.216778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716839, 32.482094, 46.067314>,  <34.692936, 32.170044, 45.818211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716839, 32.482094, 46.067314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191623, -0.621236, 0.759833,
		0.979648, 0.073928, -0.186615,
		0.059760, 0.780128, 0.622759,
		34.734768, 32.716133, 46.254143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196411, 31.937584, 46.267975>,  <34.692936, 32.170044, 45.818211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196411, 31.937584, 46.267975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008625, 32.235237, 46.458076>,  <34.895954, 32.413830, 46.572140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008625, 32.235237, 46.458076>,  <35.196411, 31.937584, 46.267975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008625, 32.235237, 46.458076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196637, -0.436629, 0.877889,
		0.860778, 0.505589, 0.058657,
		-0.469462, 0.744134, 0.475258,
		34.867786, 32.458477, 46.600655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634228, 32.199448, 46.816238>,  <35.196411, 31.937584, 46.267975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634228, 32.199448, 46.816238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261089, 32.292458, 46.926323>,  <35.037209, 32.348263, 46.992374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261089, 32.292458, 46.926323>,  <35.634228, 32.199448, 46.816238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261089, 32.292458, 46.926323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106295, -0.552238, 0.826882,
		0.344249, 0.800604, 0.490435,
		-0.932842, 0.232523, 0.275208,
		34.981236, 32.362213, 47.008884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679325, 32.481228, 47.394802>,  <35.634228, 32.199448, 46.816238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679325, 32.481228, 47.394802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286434, 32.406155, 47.394539>,  <35.050697, 32.361111, 47.394382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286434, 32.406155, 47.394539>,  <35.679325, 32.481228, 47.394802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286434, 32.406155, 47.394539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091317, -0.480946, 0.871982,
		-0.163967, 0.856427, 0.489538,
		-0.982230, -0.187679, -0.000654,
		34.991764, 32.349850, 47.394344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652523, 33.187122, 47.745846>,  <35.679325, 32.481228, 47.394802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652523, 33.187122, 47.745846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024494, 33.160603, 47.890530>,  <36.247677, 33.144691, 47.977341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024494, 33.160603, 47.890530>,  <35.652523, 33.187122, 47.745846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024494, 33.160603, 47.890530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347672, 0.478966, -0.806050,
		-0.119807, 0.875327, 0.468455,
		0.929930, -0.066298, 0.361710,
		36.303474, 33.140713, 47.999043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964333, 33.906212, 47.858055>,  <35.652523, 33.187122, 47.745846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964333, 33.906212, 47.858055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268291, 33.651844, 47.804157>,  <36.450668, 33.499222, 47.771816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268291, 33.651844, 47.804157>,  <35.964333, 33.906212, 47.858055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268291, 33.651844, 47.804157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376321, 0.599389, -0.706481,
		0.530033, 0.486146, 0.694786,
		0.759899, -0.635921, -0.134749,
		36.496262, 33.461067, 47.763733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590008, 34.363510, 47.750961>,  <35.964333, 33.906212, 47.858055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590008, 34.363510, 47.750961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775162, 34.024769, 47.646217>,  <36.886253, 33.821522, 47.583370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775162, 34.024769, 47.646217>,  <36.590008, 34.363510, 47.750961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775162, 34.024769, 47.646217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390937, 0.460167, -0.797129,
		0.795556, 0.266605, 0.544071,
		0.462882, -0.846858, -0.261863,
		36.914024, 33.770710, 47.567657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338608, 34.545036, 47.635117>,  <36.590008, 34.363510, 47.750961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338608, 34.545036, 47.635117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236519, 34.211254, 47.439754>,  <37.175266, 34.010983, 47.322536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236519, 34.211254, 47.439754>,  <37.338608, 34.545036, 47.635117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236519, 34.211254, 47.439754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424908, 0.356948, -0.831890,
		0.868514, -0.419844, 0.263467,
		-0.255220, -0.834457, -0.488410,
		37.159954, 33.960918, 47.293232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897388, 34.370937, 47.240173>,  <37.338608, 34.545036, 47.635117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897388, 34.370937, 47.240173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658085, 34.123772, 47.036110>,  <37.514503, 33.975471, 46.913673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658085, 34.123772, 47.036110>,  <37.897388, 34.370937, 47.240173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658085, 34.123772, 47.036110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484549, 0.228094, -0.844503,
		0.638197, -0.752430, 0.162952,
		-0.598261, -0.617917, -0.510158,
		37.478607, 33.938396, 46.883064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267868, 34.107300, 46.648411>,  <37.897388, 34.370937, 47.240173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267868, 34.107300, 46.648411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887569, 34.035339, 46.547443>,  <37.659389, 33.992165, 46.486862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887569, 34.035339, 46.547443>,  <38.267868, 34.107300, 46.648411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887569, 34.035339, 46.547443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192460, 0.295729, -0.935684,
		0.242976, -0.938180, -0.246540,
		-0.950748, -0.179900, -0.252417,
		37.602345, 33.981369, 46.471718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276699, 33.771923, 46.016331>,  <38.267868, 34.107300, 46.648411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276699, 33.771923, 46.016331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895344, 33.890072, 46.040993>,  <37.666531, 33.960960, 46.055790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895344, 33.890072, 46.040993>,  <38.276699, 33.771923, 46.016331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895344, 33.890072, 46.040993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039342, 0.324271, -0.945146,
		-0.299162, -0.898668, -0.320777,
		-0.953391, 0.295372, 0.061655,
		37.609325, 33.978683, 46.059490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965645, 33.567715, 45.357624>,  <38.276699, 33.771923, 46.016331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965645, 33.567715, 45.357624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762276, 33.875336, 45.512581>,  <37.640255, 34.059906, 45.605556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762276, 33.875336, 45.512581>,  <37.965645, 33.567715, 45.357624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762276, 33.875336, 45.512581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031947, 0.466413, -0.883990,
		-0.860517, -0.437061, -0.261703,
		-0.508420, 0.769049, 0.387393,
		37.609749, 34.106049, 45.628799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426590, 33.683876, 44.941216>,  <37.965645, 33.567715, 45.357624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426590, 33.683876, 44.941216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459126, 34.029594, 45.139763>,  <37.478645, 34.237026, 45.258892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459126, 34.029594, 45.139763>,  <37.426590, 33.683876, 44.941216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459126, 34.029594, 45.139763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085633, 0.490118, -0.867440,
		-0.993001, 0.113064, -0.034146,
		0.081340, 0.864292, 0.496369,
		37.483528, 34.288883, 45.288673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033546, 34.138836, 44.568733>,  <37.426590, 33.683876, 44.941216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033546, 34.138836, 44.568733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.268936, 34.384888, 44.778614>,  <37.410172, 34.532516, 44.904545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.268936, 34.384888, 44.778614>,  <37.033546, 34.138836, 44.568733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268936, 34.384888, 44.778614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235929, 0.490083, -0.839140,
		-0.773327, 0.617606, 0.143275,
		0.588475, 0.615128, 0.524705,
		37.445480, 34.569427, 44.936028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962788, 34.705399, 44.201584>,  <37.033546, 34.138836, 44.568733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962788, 34.705399, 44.201584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.288204, 34.802734, 44.412842>,  <37.483456, 34.861134, 44.539597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.288204, 34.802734, 44.412842>,  <36.962788, 34.705399, 44.201584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288204, 34.802734, 44.412842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382590, 0.459988, -0.801272,
		-0.437916, 0.853932, 0.281123,
		0.813544, 0.243335, 0.528142,
		37.532269, 34.875736, 44.571285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107456, 35.404041, 44.156940>,  <36.962788, 34.705399, 44.201584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107456, 35.404041, 44.156940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448860, 35.211334, 44.236362>,  <37.653702, 35.095711, 44.284016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448860, 35.211334, 44.236362>,  <37.107456, 35.404041, 44.156940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448860, 35.211334, 44.236362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438963, 0.459450, -0.772151,
		0.280772, 0.746195, 0.603623,
		0.853509, -0.481767, 0.198551,
		37.704914, 35.066803, 44.295929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588753, 35.819805, 44.243149>,  <37.107456, 35.404041, 44.156940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588753, 35.819805, 44.243149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.765205, 35.482296, 44.120869>,  <37.871078, 35.279789, 44.047501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.765205, 35.482296, 44.120869>,  <37.588753, 35.819805, 44.243149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765205, 35.482296, 44.120869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425541, 0.496566, -0.756530,
		0.790137, 0.203644, 0.578111,
		0.441133, -0.843772, -0.305697,
		37.897545, 35.229164, 44.029160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234776, 35.996632, 44.059406>,  <37.588753, 35.819805, 44.243149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234776, 35.996632, 44.059406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209267, 35.644253, 43.871849>,  <38.193962, 35.432827, 43.759315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209267, 35.644253, 43.871849>,  <38.234776, 35.996632, 44.059406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209267, 35.644253, 43.871849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409496, 0.405376, -0.817303,
		0.910080, -0.244134, 0.334892,
		-0.063775, -0.880948, -0.468897,
		38.190136, 35.379967, 43.731178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.471161, 41.370113, 35.076710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.393826, 41.196651, 34.724670>,  <32.347424, 41.092575, 34.513447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.393826, 41.196651, 34.724670>,  <32.471161, 41.370113, 35.076710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393826, 41.196651, 34.724670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902074, -0.274208, 0.333275,
		-0.385854, 0.858345, -0.338172,
		-0.193336, -0.433652, -0.880095,
		32.335823, 41.066555, 34.460640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760359, 41.497551, 35.037178>,  <32.471161, 41.370113, 35.076710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760359, 41.497551, 35.037178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845287, 41.224945, 34.757046>,  <31.896244, 41.061382, 34.588966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845287, 41.224945, 34.757046>,  <31.760359, 41.497551, 35.037178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845287, 41.224945, 34.757046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943441, -0.329707, 0.034823,
		-0.254636, 0.653328, -0.712968,
		0.212319, -0.681510, -0.700331,
		31.908983, 41.020493, 34.546947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212841, 41.538464, 34.561485>,  <31.760359, 41.497551, 35.037178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212841, 41.538464, 34.561485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.362709, 41.167992, 34.544468>,  <31.452631, 40.945709, 34.534256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.362709, 41.167992, 34.544468>,  <31.212841, 41.538464, 34.561485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362709, 41.167992, 34.544468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921227, -0.377066, 0.095724,
		-0.104701, 0.003331, -0.994498,
		0.374672, -0.926180, -0.042547,
		31.475111, 40.890137, 34.531704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713232, 41.154865, 34.192421>,  <31.212841, 41.538464, 34.561485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713232, 41.154865, 34.192421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925106, 40.850037, 34.341381>,  <31.052231, 40.667141, 34.430756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925106, 40.850037, 34.341381>,  <30.713232, 41.154865, 34.192421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925106, 40.850037, 34.341381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847472, -0.493606, 0.195305,
		0.034982, -0.419048, -0.907290,
		0.529686, -0.762071, 0.372399,
		31.084011, 40.621414, 34.453102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336637, 40.615799, 33.932816>,  <30.713232, 41.154865, 34.192421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336637, 40.615799, 33.932816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558399, 40.464912, 34.229557>,  <30.691456, 40.374382, 34.407600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558399, 40.464912, 34.229557>,  <30.336637, 40.615799, 33.932816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558399, 40.464912, 34.229557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715310, -0.671605, 0.193074,
		0.425404, -0.637697, -0.642163,
		0.554403, -0.377212, 0.741855,
		30.724720, 40.351749, 34.452114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436937, 39.914291, 33.827782>,  <30.336637, 40.615799, 33.932816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436937, 39.914291, 33.827782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457771, 39.978188, 34.222095>,  <30.470272, 40.016525, 34.458683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457771, 39.978188, 34.222095>,  <30.436937, 39.914291, 33.827782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457771, 39.978188, 34.222095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538591, -0.826762, 0.162430,
		0.840956, -0.539395, 0.042972,
		0.052087, 0.159741, 0.985784,
		30.473398, 40.026112, 34.517830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312910, 39.193619, 34.097622>,  <30.436937, 39.914291, 33.827782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312910, 39.193619, 34.097622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289869, 39.436024, 34.414970>,  <30.276045, 39.581467, 34.605377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289869, 39.436024, 34.414970>,  <30.312910, 39.193619, 34.097622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289869, 39.436024, 34.414970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754931, -0.546449, 0.362592,
		0.653270, -0.578051, 0.488973,
		-0.057602, 0.606011, 0.793368,
		30.272589, 39.617828, 34.652981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510057, 38.769714, 34.757832>,  <30.312910, 39.193619, 34.097622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510057, 38.769714, 34.757832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281450, 39.087395, 34.840408>,  <30.144285, 39.278004, 34.889954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281450, 39.087395, 34.840408>,  <30.510057, 38.769714, 34.757832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281450, 39.087395, 34.840408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658299, -0.593938, 0.462471,
		0.489908, 0.128409, 0.862265,
		-0.571517, 0.794197, 0.206444,
		30.109995, 39.325653, 34.902340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212332, 38.692482, 35.413612>,  <30.510057, 38.769714, 34.757832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212332, 38.692482, 35.413612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.957304, 38.976799, 35.294762>,  <29.804287, 39.147388, 35.223454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.957304, 38.976799, 35.294762>,  <30.212332, 38.692482, 35.413612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957304, 38.976799, 35.294762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757591, -0.508449, 0.409311,
		0.139862, 0.486062, 0.862660,
		-0.637569, 0.710791, -0.297124,
		29.766033, 39.190037, 35.205624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760527, 38.833691, 35.928539>,  <30.212332, 38.692482, 35.413612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760527, 38.833691, 35.928539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537516, 38.956081, 35.619854>,  <29.403709, 39.029514, 35.434643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537516, 38.956081, 35.619854>,  <29.760527, 38.833691, 35.928539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537516, 38.956081, 35.619854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714185, -0.650682, 0.257976,
		-0.423208, 0.694976, 0.581295,
		-0.557525, 0.305975, -0.771716,
		29.370258, 39.047874, 35.388340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054073, 38.817299, 36.199764>,  <29.760527, 38.833691, 35.928539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054073, 38.817299, 36.199764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006268, 38.825840, 35.802723>,  <28.977583, 38.830963, 35.564499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006268, 38.825840, 35.802723>,  <29.054073, 38.817299, 36.199764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006268, 38.825840, 35.802723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710997, -0.699646, 0.070561,
		-0.692965, 0.714171, 0.098798,
		-0.119516, 0.021349, -0.992603,
		28.970413, 38.832245, 35.504944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320253, 39.015526, 36.097950>,  <29.054073, 38.817299, 36.199764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320253, 39.015526, 36.097950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413454, 38.840481, 35.750572>,  <28.469374, 38.735455, 35.542145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413454, 38.840481, 35.750572>,  <28.320253, 39.015526, 36.097950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413454, 38.840481, 35.750572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805341, -0.587398, 0.079926,
		-0.545102, 0.680775, -0.489295,
		0.233000, -0.437617, -0.868448,
		28.483355, 38.709194, 35.490036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665680, 39.019302, 35.664268>,  <28.320253, 39.015526, 36.097950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665680, 39.019302, 35.664268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906858, 38.744301, 35.502380>,  <28.051565, 38.579300, 35.405247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906858, 38.744301, 35.502380>,  <27.665680, 39.019302, 35.664268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906858, 38.744301, 35.502380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780174, -0.614126, -0.119076,
		-0.166682, 0.387546, -0.906656,
		0.602948, -0.687501, -0.404716,
		28.087744, 38.538052, 35.380966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266689, 38.662579, 35.068420>,  <27.665680, 39.019302, 35.664268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266689, 38.662579, 35.068420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563810, 38.403206, 35.135101>,  <27.742083, 38.247581, 35.175110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563810, 38.403206, 35.135101>,  <27.266689, 38.662579, 35.068420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563810, 38.403206, 35.135101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650768, -0.757770, -0.047798,
		0.157314, -0.072979, -0.984849,
		0.742801, -0.648428, 0.166700,
		27.786650, 38.208679, 35.185112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063772, 38.009167, 34.662960>,  <27.266689, 38.662579, 35.068420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063772, 38.009167, 34.662960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334196, 37.900314, 34.936863>,  <27.496450, 37.835003, 35.101204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334196, 37.900314, 34.936863>,  <27.063772, 38.009167, 34.662960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334196, 37.900314, 34.936863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330008, -0.942714, -0.048832,
		0.658817, -0.192961, -0.727136,
		0.676058, -0.272132, 0.684755,
		27.537014, 37.818676, 35.142288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431210, 37.419666, 34.435749>,  <27.063772, 38.009167, 34.662960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431210, 37.419666, 34.435749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524244, 37.387154, 34.823418>,  <27.580065, 37.367645, 35.056019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524244, 37.387154, 34.823418>,  <27.431210, 37.419666, 34.435749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524244, 37.387154, 34.823418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345450, -0.938428, 0.004204,
		0.909158, -0.335779, -0.246343,
		0.232586, -0.081277, 0.969174,
		27.594021, 37.362770, 35.114170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646612, 36.752666, 34.485020>,  <27.431210, 37.419666, 34.435749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646612, 36.752666, 34.485020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535568, 36.889732, 34.844021>,  <27.468943, 36.971970, 35.059422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535568, 36.889732, 34.844021>,  <27.646612, 36.752666, 34.485020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535568, 36.889732, 34.844021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585000, -0.801343, 0.124998,
		0.762042, -0.490340, 0.422917,
		-0.277610, 0.342660, 0.897506,
		27.452286, 36.992531, 35.113274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880768, 36.238182, 34.951801>,  <27.646612, 36.752666, 34.485020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880768, 36.238182, 34.951801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565874, 36.452686, 35.073582>,  <27.376938, 36.581387, 35.146648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565874, 36.452686, 35.073582>,  <27.880768, 36.238182, 34.951801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565874, 36.452686, 35.073582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557038, -0.830197, 0.021934,
		0.264514, -0.152322, 0.952276,
		-0.787236, 0.536256, 0.304449,
		27.329702, 36.613564, 35.164917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383005, 35.775246, 35.443863>,  <27.880768, 36.238182, 34.951801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383005, 35.775246, 35.443863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.142067, 36.078133, 35.342831>,  <26.997505, 36.259865, 35.282211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.142067, 36.078133, 35.342831>,  <27.383005, 35.775246, 35.443863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142067, 36.078133, 35.342831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790325, -0.610171, 0.055479,
		-0.112109, 0.233040, 0.965983,
		-0.602344, 0.757221, -0.252583,
		26.961363, 36.305298, 35.267056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086605, 35.488949, 35.401581>,  <27.383005, 35.775246, 35.443863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086605, 35.488949, 35.401581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814579, 35.233978, 35.546463>,  <27.651363, 35.080994, 35.633392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814579, 35.233978, 35.546463>,  <28.086605, 35.488949, 35.401581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814579, 35.233978, 35.546463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683958, -0.729521, 0.000328,
		0.264029, 0.247957, 0.932098,
		-0.680066, -0.637429, 0.362207,
		27.610559, 35.042751, 35.655125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417007, 35.645630, 36.004642>,  <28.086605, 35.488949, 35.401581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417007, 35.645630, 36.004642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636044, 35.321144, 35.922588>,  <28.767466, 35.126453, 35.873356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636044, 35.321144, 35.922588>,  <28.417007, 35.645630, 36.004642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636044, 35.321144, 35.922588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836026, 0.540588, 0.093945,
		0.034683, -0.222939, 0.974215,
		0.547592, -0.811211, -0.205132,
		28.800322, 35.077782, 35.861050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950209, 35.508472, 36.541584>,  <28.417007, 35.645630, 36.004642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950209, 35.508472, 36.541584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086031, 35.397686, 36.182030>,  <29.167524, 35.331215, 35.966297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086031, 35.397686, 36.182030>,  <28.950209, 35.508472, 36.541584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086031, 35.397686, 36.182030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814005, 0.565357, 0.133295,
		0.471272, -0.776957, 0.417422,
		0.339557, -0.276965, -0.898883,
		29.187899, 35.314598, 35.912365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576347, 35.508369, 36.648132>,  <28.950209, 35.508472, 36.541584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576347, 35.508369, 36.648132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596851, 35.509567, 36.248661>,  <29.609154, 35.510284, 36.008976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596851, 35.509567, 36.248661>,  <29.576347, 35.508369, 36.648132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596851, 35.509567, 36.248661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847245, 0.529287, 0.045073,
		0.528724, -0.848437, 0.024597,
		0.051261, 0.002991, -0.998681,
		29.612230, 35.510464, 35.949059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269485, 35.261734, 36.391861>,  <29.576347, 35.508369, 36.648132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269485, 35.261734, 36.391861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111427, 35.513275, 36.124008>,  <30.016592, 35.664200, 35.963299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111427, 35.513275, 36.124008>,  <30.269485, 35.261734, 36.391861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111427, 35.513275, 36.124008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803917, 0.589449, 0.079170,
		0.444499, -0.507043, -0.738463,
		-0.395143, 0.628854, -0.669630,
		29.992884, 35.701931, 35.923119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840172, 35.615650, 36.167439>,  <30.269485, 35.261734, 36.391861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840172, 35.615650, 36.167439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576445, 35.833279, 35.959866>,  <30.418209, 35.963856, 35.835323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576445, 35.833279, 35.959866>,  <30.840172, 35.615650, 36.167439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576445, 35.833279, 35.959866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732262, 0.621234, -0.279035,
		0.170565, -0.563968, -0.807990,
		-0.659318, 0.544067, -0.518933,
		30.378649, 35.996498, 35.804184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206392, 35.778000, 35.590679>,  <30.840172, 35.615650, 36.167439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206392, 35.778000, 35.590679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.924784, 36.060505, 35.620472>,  <30.755819, 36.230007, 35.638348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.924784, 36.060505, 35.620472>,  <31.206392, 35.778000, 35.590679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924784, 36.060505, 35.620472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685786, 0.703341, -0.187106,
		-0.184531, -0.080649, -0.979512,
		-0.704021, 0.706263, 0.074480,
		30.713577, 36.272385, 35.642815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326609, 36.277397, 35.006756>,  <31.206392, 35.778000, 35.590679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326609, 36.277397, 35.006756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083145, 36.496693, 35.236179>,  <30.937067, 36.628269, 35.373833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083145, 36.496693, 35.236179>,  <31.326609, 36.277397, 35.006756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083145, 36.496693, 35.236179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474206, 0.830926, -0.291016,
		-0.636131, 0.094855, -0.765729,
		-0.608660, 0.548237, 0.573558,
		30.900547, 36.661163, 35.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177299, 36.863964, 34.616474>,  <31.326609, 36.277397, 35.006756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177299, 36.863964, 34.616474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121630, 36.941471, 35.004925>,  <31.088228, 36.987976, 35.237995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121630, 36.941471, 35.004925>,  <31.177299, 36.863964, 34.616474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121630, 36.941471, 35.004925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589547, 0.804154, -0.075961,
		-0.795654, 0.561952, -0.226152,
		-0.139175, 0.193766, 0.971126,
		31.079878, 36.999599, 35.296261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958815, 37.580967, 34.753021>,  <31.177299, 36.863964, 34.616474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958815, 37.580967, 34.753021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112089, 37.463039, 35.103165>,  <31.204054, 37.392284, 35.313251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112089, 37.463039, 35.103165>,  <30.958815, 37.580967, 34.753021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112089, 37.463039, 35.103165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510931, 0.857158, 0.065027,
		-0.769491, 0.422330, 0.479084,
		0.383188, -0.294816, 0.875357,
		31.227045, 37.374596, 35.365772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050255, 38.234425, 35.032623>,  <30.958815, 37.580967, 34.753021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050255, 38.234425, 35.032623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.259735, 37.990047, 35.270103>,  <31.385424, 37.843422, 35.412594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.259735, 37.990047, 35.270103>,  <31.050255, 38.234425, 35.032623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259735, 37.990047, 35.270103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726842, 0.683941, 0.062656,
		-0.444338, 0.398717, 0.802240,
		0.523702, -0.610942, 0.593705,
		31.416845, 37.806767, 35.448215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167444, 38.719532, 35.587505>,  <31.050255, 38.234425, 35.032623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167444, 38.719532, 35.587505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433533, 38.420872, 35.587173>,  <31.593185, 38.241676, 35.586975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433533, 38.420872, 35.587173>,  <31.167444, 38.719532, 35.587505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433533, 38.420872, 35.587173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744772, 0.663468, 0.071581,
		-0.052894, -0.048237, 0.997434,
		0.665219, -0.746648, -0.000832,
		31.633099, 38.196877, 35.586926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565311, 38.852234, 36.136330>,  <31.167444, 38.719532, 35.587505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565311, 38.852234, 36.136330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.808167, 38.616699, 35.922916>,  <31.953880, 38.475380, 35.794868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.808167, 38.616699, 35.922916>,  <31.565311, 38.852234, 36.136330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808167, 38.616699, 35.922916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745773, 0.654010, 0.126861,
		0.274233, -0.474914, 0.836213,
		0.607140, -0.588836, -0.533529,
		31.990309, 38.440048, 35.762859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182198, 38.852390, 36.499752>,  <31.565311, 38.852234, 36.136330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182198, 38.852390, 36.499752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306736, 38.739700, 36.136723>,  <32.381458, 38.672085, 35.918903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306736, 38.739700, 36.136723>,  <32.182198, 38.852390, 36.499752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306736, 38.739700, 36.136723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863721, 0.482168, 0.146631,
		0.396294, -0.829545, 0.393455,
		0.311348, -0.281726, -0.907575,
		32.400139, 38.655182, 35.864449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979664, 38.479336, 36.550636>,  <32.182198, 38.852390, 36.499752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979664, 38.479336, 36.550636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910648, 38.616074, 36.181126>,  <32.869240, 38.698116, 35.959419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910648, 38.616074, 36.181126>,  <32.979664, 38.479336, 36.550636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910648, 38.616074, 36.181126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818659, 0.571293, 0.058503,
		0.547748, -0.746166, -0.378429,
		-0.172541, 0.341849, -0.923780,
		32.858887, 38.718628, 35.903992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582256, 38.447227, 36.234150>,  <32.979664, 38.479336, 36.550636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582256, 38.447227, 36.234150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.380337, 38.712215, 36.012768>,  <33.259186, 38.871208, 35.879936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.380337, 38.712215, 36.012768>,  <33.582256, 38.447227, 36.234150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380337, 38.712215, 36.012768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857227, 0.460217, -0.231001,
		0.101681, -0.591049, -0.800201,
		-0.504800, 0.662465, -0.553459,
		33.228897, 38.910954, 35.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030518, 38.752377, 35.905445>,  <33.582256, 38.447227, 36.234150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030518, 38.752377, 35.905445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743755, 39.014755, 35.810970>,  <33.571697, 39.172180, 35.754288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743755, 39.014755, 35.810970>,  <34.030518, 38.752377, 35.905445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743755, 39.014755, 35.810970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696197, 0.691452, -0.192885,
		0.036788, -0.302712, -0.952372,
		-0.716908, 0.655942, -0.236184,
		33.528683, 39.211536, 35.740116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253605, 39.002583, 35.246159>,  <34.030518, 38.752377, 35.905445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253605, 39.002583, 35.246159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.012920, 39.261810, 35.432896>,  <33.868507, 39.417347, 35.544937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.012920, 39.261810, 35.432896>,  <34.253605, 39.002583, 35.246159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012920, 39.261810, 35.432896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708077, 0.703263, -0.063623,
		-0.369548, 0.292280, -0.882047,
		-0.601715, 0.648069, 0.466846,
		33.832405, 39.456230, 35.572948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490051, 39.572018, 34.934532>,  <34.253605, 39.002583, 35.246159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490051, 39.572018, 34.934532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290054, 39.682064, 35.263000>,  <34.170055, 39.748093, 35.460083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290054, 39.682064, 35.263000>,  <34.490051, 39.572018, 34.934532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290054, 39.682064, 35.263000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662474, 0.732223, 0.158047,
		-0.557799, 0.623026, -0.548360,
		-0.499988, 0.275116, 0.821172,
		34.140057, 39.764599, 35.509354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325642, 40.281700, 34.887238>,  <34.490051, 39.572018, 34.934532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325642, 40.281700, 34.887238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.287575, 40.224758, 35.281330>,  <34.264736, 40.190594, 35.517784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.287575, 40.224758, 35.281330>,  <34.325642, 40.281700, 34.887238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287575, 40.224758, 35.281330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614283, 0.770411, 0.170654,
		-0.783326, 0.621451, 0.014131,
		-0.095166, -0.142358, 0.985230,
		34.259026, 40.182053, 35.576900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339867, 40.935699, 35.067558>,  <34.325642, 40.281700, 34.887238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339867, 40.935699, 35.067558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.419739, 40.716595, 35.392544>,  <34.467663, 40.585133, 35.587536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.419739, 40.716595, 35.392544>,  <34.339867, 40.935699, 35.067558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419739, 40.716595, 35.392544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606032, 0.720585, 0.336872,
		-0.769970, 0.425112, 0.475842,
		0.199676, -0.547757, 0.812460,
		34.479641, 40.552269, 35.636280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143879, 41.373333, 35.586769>,  <34.339867, 40.935699, 35.067558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143879, 41.373333, 35.586769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.403053, 41.123363, 35.760967>,  <34.558559, 40.973381, 35.865486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.403053, 41.123363, 35.760967>,  <34.143879, 41.373333, 35.586769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403053, 41.123363, 35.760967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432438, 0.772466, 0.465074,
		-0.627036, -0.113015, 0.770749,
		0.647937, -0.624919, 0.435492,
		34.597435, 40.935886, 35.891613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214554, 41.488075, 36.317188>,  <34.143879, 41.373333, 35.586769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214554, 41.488075, 36.317188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552414, 41.352528, 36.151428>,  <34.755131, 41.271198, 36.051971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552414, 41.352528, 36.151428>,  <34.214554, 41.488075, 36.317188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552414, 41.352528, 36.151428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480576, 0.821028, 0.308156,
		0.235809, -0.459435, 0.856337,
		0.844655, -0.338869, -0.414399,
		34.805809, 41.250866, 36.027107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.161804, 32.363880, 47.363182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.763199, 32.334873, 47.346634>,  <40.524036, 32.317471, 47.336704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.763199, 32.334873, 47.346634>,  <41.161804, 32.363880, 47.363182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763199, 32.334873, 47.346634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030514, -0.144851, 0.988983,
		-0.077708, 0.986793, 0.142132,
		-0.996509, -0.072515, -0.041367,
		40.464245, 32.313118, 47.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950985, 32.823357, 47.911327>,  <41.161804, 32.363880, 47.363182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950985, 32.823357, 47.911327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.633240, 32.596478, 47.824356>,  <40.442593, 32.460350, 47.772171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.633240, 32.596478, 47.824356>,  <40.950985, 32.823357, 47.911327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633240, 32.596478, 47.824356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106061, -0.222935, 0.969046,
		-0.598118, 0.792831, 0.116933,
		-0.794358, -0.567202, -0.217430,
		40.394932, 32.426315, 47.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463272, 32.918629, 48.520432>,  <40.950985, 32.823357, 47.911327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463272, 32.918629, 48.520432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.349941, 32.576206, 48.347507>,  <40.281944, 32.370750, 48.243755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.349941, 32.576206, 48.347507>,  <40.463272, 32.918629, 48.520432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349941, 32.576206, 48.347507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122228, -0.414869, 0.901634,
		-0.951203, 0.308294, 0.012908,
		-0.283324, -0.856060, -0.432306,
		40.264946, 32.319389, 48.217815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837650, 32.790318, 48.826870>,  <40.463272, 32.918629, 48.520432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837650, 32.790318, 48.826870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.957226, 32.437840, 48.680378>,  <40.028969, 32.226353, 48.592484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.957226, 32.437840, 48.680378>,  <39.837650, 32.790318, 48.826870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957226, 32.437840, 48.680378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133019, -0.418512, 0.898417,
		-0.944957, -0.219854, -0.242325,
		0.298937, -0.881199, -0.366231,
		40.046906, 32.173481, 48.570507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270004, 32.251114, 48.983040>,  <39.837650, 32.790318, 48.826870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270004, 32.251114, 48.983040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611488, 32.055038, 48.912735>,  <39.816380, 31.937393, 48.870552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611488, 32.055038, 48.912735>,  <39.270004, 32.251114, 48.983040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611488, 32.055038, 48.912735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225343, -0.652032, 0.723930,
		-0.469467, -0.578419, -0.667107,
		0.853710, -0.490189, -0.175765,
		39.867599, 31.907982, 48.860004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117229, 31.582823, 48.919010>,  <39.270004, 32.251114, 48.983040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117229, 31.582823, 48.919010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498608, 31.574984, 49.039375>,  <39.727436, 31.570280, 49.111595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498608, 31.574984, 49.039375>,  <39.117229, 31.582823, 48.919010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498608, 31.574984, 49.039375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243239, -0.639803, 0.729032,
		0.178237, -0.768289, -0.614787,
		0.953450, -0.019600, 0.300914,
		39.784641, 31.569103, 49.129650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168797, 30.904459, 49.010860>,  <39.117229, 31.582823, 48.919010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168797, 30.904459, 49.010860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483372, 31.076759, 49.187939>,  <39.672115, 31.180140, 49.294186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483372, 31.076759, 49.187939>,  <39.168797, 30.904459, 49.010860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483372, 31.076759, 49.187939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091283, -0.627787, 0.773014,
		0.610891, -0.648335, -0.454394,
		0.786435, 0.430749, 0.442691,
		39.719303, 31.205984, 49.320747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535950, 30.354946, 49.210381>,  <39.168797, 30.904459, 49.010860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535950, 30.354946, 49.210381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.673454, 30.659027, 49.430897>,  <39.755959, 30.841476, 49.563206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.673454, 30.659027, 49.430897>,  <39.535950, 30.354946, 49.210381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673454, 30.659027, 49.430897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044266, -0.599533, 0.799124,
		0.938012, -0.250306, -0.239748,
		0.343762, 0.760202, 0.551290,
		39.776585, 30.887087, 49.596283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002918, 30.064823, 49.540169>,  <39.535950, 30.354946, 49.210381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002918, 30.064823, 49.540169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937408, 30.385059, 49.770729>,  <39.898102, 30.577202, 49.909065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937408, 30.385059, 49.770729>,  <40.002918, 30.064823, 49.540169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937408, 30.385059, 49.770729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255894, -0.529810, 0.808591,
		0.952731, 0.279922, -0.118097,
		-0.163774, 0.800591, 0.576396,
		39.888275, 30.625237, 49.943649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513538, 29.987064, 50.118561>,  <40.002918, 30.064823, 49.540169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513538, 29.987064, 50.118561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229412, 30.240093, 50.242050>,  <40.058937, 30.391911, 50.316143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229412, 30.240093, 50.242050>,  <40.513538, 29.987064, 50.118561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229412, 30.240093, 50.242050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036632, -0.404786, 0.913678,
		0.702933, 0.660305, 0.264352,
		-0.710312, 0.632570, 0.308725,
		40.016319, 30.429865, 50.334667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769585, 30.287348, 50.785786>,  <40.513538, 29.987064, 50.118561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769585, 30.287348, 50.785786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.371948, 30.267681, 50.747074>,  <40.133366, 30.255880, 50.723846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.371948, 30.267681, 50.747074>,  <40.769585, 30.287348, 50.785786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371948, 30.267681, 50.747074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055789, -0.533380, 0.844034,
		-0.093120, 0.844446, 0.527485,
		-0.994091, -0.049169, -0.096779,
		40.073723, 30.252930, 50.718040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332558, 30.575647, 51.408566>,  <40.769585, 30.287348, 50.785786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332558, 30.575647, 51.408566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.123852, 30.286768, 51.226936>,  <39.998627, 30.113440, 51.117958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.123852, 30.286768, 51.226936>,  <40.332558, 30.575647, 51.408566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123852, 30.286768, 51.226936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107963, -0.472093, 0.874913,
		-0.846228, 0.505525, 0.168353,
		-0.521768, -0.722200, -0.454076,
		39.967319, 30.070108, 51.090714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932312, 30.330622, 51.984592>,  <40.332558, 30.575647, 51.408566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932312, 30.330622, 51.984592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.931526, 30.039654, 51.710117>,  <39.931053, 29.865072, 51.545433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.931526, 30.039654, 51.710117>,  <39.932312, 30.330622, 51.984592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931526, 30.039654, 51.710117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047153, -0.685359, 0.726677,
		-0.998886, 0.033787, -0.032951,
		-0.001969, -0.727421, -0.686188,
		39.930935, 29.821428, 51.504261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222202, 30.119900, 52.068569>,  <39.932312, 30.330622, 51.984592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222202, 30.119900, 52.068569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.849602, 29.995321, 52.143723>,  <38.626041, 29.920574, 52.188812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.849602, 29.995321, 52.143723>,  <39.222202, 30.119900, 52.068569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849602, 29.995321, 52.143723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338375, 0.552548, -0.761704,
		0.133417, -0.773105, -0.620088,
		-0.931505, -0.311447, 0.187880,
		38.570148, 29.901888, 52.200085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824104, 29.926908, 51.433895>,  <39.222202, 30.119900, 52.068569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824104, 29.926908, 51.433895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.557869, 30.022966, 51.716545>,  <38.398129, 30.080601, 51.886135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.557869, 30.022966, 51.716545>,  <38.824104, 29.926908, 51.433895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557869, 30.022966, 51.716545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567950, 0.451264, -0.688327,
		-0.484173, -0.859472, -0.163966,
		-0.665589, 0.240145, 0.706627,
		38.358192, 30.095009, 51.928532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152718, 29.856445, 51.195049>,  <38.824104, 29.926908, 51.433895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152718, 29.856445, 51.195049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082222, 30.082464, 51.517456>,  <38.039925, 30.218075, 51.710899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082222, 30.082464, 51.517456>,  <38.152718, 29.856445, 51.195049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082222, 30.082464, 51.517456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623185, 0.569788, -0.535707,
		-0.761957, -0.596711, 0.251708,
		-0.176242, 0.565047, 0.806015,
		38.029350, 30.251978, 51.759262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394436, 29.907179, 51.194771>,  <38.152718, 29.856445, 51.195049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394436, 29.907179, 51.194771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542412, 30.194191, 51.430836>,  <37.631199, 30.366398, 51.572475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542412, 30.194191, 51.430836>,  <37.394436, 29.907179, 51.194771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542412, 30.194191, 51.430836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494650, 0.689830, -0.528636,
		-0.786426, -0.096361, 0.610122,
		0.369940, 0.717530, 0.590165,
		37.653393, 30.409451, 51.607883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789494, 30.291477, 51.390102>,  <37.394436, 29.907179, 51.194771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789494, 30.291477, 51.390102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110046, 30.520859, 51.458153>,  <37.302376, 30.658487, 51.498981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110046, 30.520859, 51.458153>,  <36.789494, 30.291477, 51.390102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110046, 30.520859, 51.458153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433998, 0.753156, -0.494371,
		-0.411627, 0.322346, 0.852441,
		0.801379, 0.573454, 0.170122,
		37.350460, 30.692896, 51.509190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626808, 30.917759, 51.750275>,  <36.789494, 30.291477, 51.390102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626808, 30.917759, 51.750275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957211, 30.995169, 51.538517>,  <37.155453, 31.041615, 51.411461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957211, 30.995169, 51.538517>,  <36.626808, 30.917759, 51.750275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957211, 30.995169, 51.538517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503616, 0.675194, -0.538966,
		0.253140, 0.711802, 0.655178,
		0.826009, 0.193524, -0.529394,
		37.205013, 31.053226, 51.379700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623226, 31.600098, 51.475971>,  <36.626808, 30.917759, 51.750275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623226, 31.600098, 51.475971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911964, 31.452682, 51.241665>,  <37.085209, 31.364233, 51.101082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911964, 31.452682, 51.241665>,  <36.623226, 31.600098, 51.475971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911964, 31.452682, 51.241665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204176, 0.695328, -0.689080,
		0.661249, 0.617008, 0.426673,
		0.721846, -0.368538, -0.585763,
		37.128517, 31.342121, 51.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810596, 32.155369, 51.058796>,  <36.623226, 31.600098, 51.475971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810596, 32.155369, 51.058796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007305, 31.874046, 50.853458>,  <37.125332, 31.705254, 50.730255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007305, 31.874046, 50.853458>,  <36.810596, 32.155369, 51.058796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007305, 31.874046, 50.853458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186668, 0.490694, -0.851102,
		0.850480, 0.514372, 0.110024,
		0.491771, -0.703307, -0.513342,
		37.154835, 31.663054, 50.699455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401978, 32.455540, 50.638588>,  <36.810596, 32.155369, 51.058796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401978, 32.455540, 50.638588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280369, 32.110920, 50.475956>,  <37.207405, 31.904148, 50.378376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280369, 32.110920, 50.475956>,  <37.401978, 32.455540, 50.638588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280369, 32.110920, 50.475956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278888, 0.488571, -0.826752,
		0.910930, -0.137960, -0.388811,
		-0.304021, -0.861548, -0.406578,
		37.189163, 31.852455, 50.353981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714241, 32.492451, 50.038704>,  <37.401978, 32.455540, 50.638588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714241, 32.492451, 50.038704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416672, 32.227192, 50.005676>,  <37.238129, 32.068039, 49.985859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416672, 32.227192, 50.005676>,  <37.714241, 32.492451, 50.038704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416672, 32.227192, 50.005676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183511, 0.321528, -0.928947,
		0.642574, -0.675913, -0.360887,
		-0.743923, -0.663145, -0.082569,
		37.193493, 32.028248, 49.980907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794292, 32.382393, 49.308170>,  <37.714241, 32.492451, 50.038704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794292, 32.382393, 49.308170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453960, 32.229454, 49.452335>,  <37.249760, 32.137691, 49.538834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453960, 32.229454, 49.452335>,  <37.794292, 32.382393, 49.308170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453960, 32.229454, 49.452335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438676, 0.139334, -0.887778,
		0.289225, -0.913452, -0.286277,
		-0.850831, -0.382350, 0.360411,
		37.198711, 32.114750, 49.560459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649361, 31.872202, 48.891903>,  <37.794292, 32.382393, 49.308170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649361, 31.872202, 48.891903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315205, 32.002457, 49.069027>,  <37.114712, 32.080608, 49.175301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315205, 32.002457, 49.069027>,  <37.649361, 31.872202, 48.891903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315205, 32.002457, 49.069027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358166, 0.288596, -0.887935,
		-0.416936, -0.900374, -0.124460,
		-0.835392, 0.325635, 0.442810,
		37.064587, 32.100147, 49.201870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140827, 31.715290, 48.478588>,  <37.649361, 31.872202, 48.891903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140827, 31.715290, 48.478588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961262, 32.008541, 48.682941>,  <36.853523, 32.184490, 48.805553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961262, 32.008541, 48.682941>,  <37.140827, 31.715290, 48.478588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961262, 32.008541, 48.682941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376408, 0.363383, -0.852214,
		-0.810427, -0.574872, 0.112827,
		-0.448915, 0.733127, 0.510882,
		36.826588, 32.228477, 48.836205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416241, 31.820688, 48.295162>,  <37.140827, 31.715290, 48.478588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416241, 31.820688, 48.295162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505726, 32.173073, 48.461948>,  <36.559418, 32.384502, 48.562019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505726, 32.173073, 48.461948>,  <36.416241, 31.820688, 48.295162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505726, 32.173073, 48.461948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160691, 0.455293, -0.875720,
		-0.961316, 0.128911, 0.243419,
		0.223717, 0.880960, 0.416966,
		36.572842, 32.437359, 48.587040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991940, 32.215977, 48.019005>,  <36.416241, 31.820688, 48.295162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991940, 32.215977, 48.019005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.227634, 32.500729, 48.171864>,  <36.369049, 32.671577, 48.263577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.227634, 32.500729, 48.171864>,  <35.991940, 32.215977, 48.019005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227634, 32.500729, 48.171864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050533, 0.504516, -0.861922,
		-0.806379, 0.488564, 0.333252,
		0.589235, 0.711877, 0.382143,
		36.404404, 32.714291, 48.286507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431820, 32.488209, 48.132889>,  <35.991940, 32.215977, 48.019005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431820, 32.488209, 48.132889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162098, 32.266670, 47.937519>,  <35.000263, 32.133747, 47.820297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162098, 32.266670, 47.937519>,  <35.431820, 32.488209, 48.132889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162098, 32.266670, 47.937519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072437, -0.707839, 0.702650,
		-0.734888, 0.438424, 0.517421,
		-0.674309, -0.553849, -0.488424,
		34.959805, 32.100517, 47.790993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955147, 32.297298, 48.618706>,  <35.431820, 32.488209, 48.132889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955147, 32.297298, 48.618706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925682, 32.017216, 48.334656>,  <34.908005, 31.849165, 48.164227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925682, 32.017216, 48.334656>,  <34.955147, 32.297298, 48.618706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925682, 32.017216, 48.334656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186462, -0.689837, 0.699540,
		-0.979697, 0.183939, -0.079750,
		-0.073658, -0.700208, -0.710130,
		34.903584, 31.807154, 48.121616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273911, 31.915609, 48.662346>,  <34.955147, 32.297298, 48.618706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273911, 31.915609, 48.662346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518089, 31.660391, 48.474621>,  <34.664597, 31.507259, 48.361984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518089, 31.660391, 48.474621>,  <34.273911, 31.915609, 48.662346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518089, 31.660391, 48.474621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246500, -0.716136, 0.652983,
		-0.752725, -0.282925, -0.594440,
		0.610445, -0.638046, -0.469312,
		34.701221, 31.468977, 48.333828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951569, 31.353861, 48.797234>,  <34.273911, 31.915609, 48.662346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951569, 31.353861, 48.797234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300892, 31.217896, 48.657639>,  <34.510487, 31.136316, 48.573883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300892, 31.217896, 48.657639>,  <33.951569, 31.353861, 48.797234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300892, 31.217896, 48.657639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011729, -0.730816, 0.682473,
		-0.487026, -0.591917, -0.642215,
		0.873309, -0.339914, -0.348984,
		34.562885, 31.115921, 48.552944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889217, 30.579811, 48.874916>,  <33.951569, 31.353861, 48.797234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889217, 30.579811, 48.874916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275105, 30.683352, 48.855686>,  <34.506638, 30.745476, 48.844151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275105, 30.683352, 48.855686>,  <33.889217, 30.579811, 48.874916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275105, 30.683352, 48.855686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208758, -0.640834, 0.738750,
		0.160420, -0.722722, -0.672263,
		0.964720, 0.258851, -0.048071,
		34.564522, 30.761007, 48.841263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083668, 29.934612, 49.041973>,  <33.889217, 30.579811, 48.874916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083668, 29.934612, 49.041973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379063, 30.197405, 49.102646>,  <34.556301, 30.355082, 49.139050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379063, 30.197405, 49.102646>,  <34.083668, 29.934612, 49.041973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379063, 30.197405, 49.102646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369673, -0.582641, 0.723790,
		0.563894, -0.478438, -0.673143,
		0.738489, 0.656983, 0.151682,
		34.600609, 30.394501, 49.148151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706593, 29.516525, 49.096325>,  <34.083668, 29.934612, 49.041973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706593, 29.516525, 49.096325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750374, 29.857037, 49.301594>,  <34.776642, 30.061344, 49.424755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750374, 29.857037, 49.301594>,  <34.706593, 29.516525, 49.096325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750374, 29.857037, 49.301594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414419, -0.508341, 0.754882,
		0.903480, 0.130041, -0.408427,
		0.109454, 0.851281, 0.513168,
		34.783211, 30.112421, 49.455544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099056, 28.949514, 48.901764>,  <34.706593, 29.516525, 49.096325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099056, 28.949514, 48.901764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758724, 28.750931, 48.832932>,  <34.554523, 28.631781, 48.791634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758724, 28.750931, 48.832932>,  <35.099056, 28.949514, 48.901764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758724, 28.750931, 48.832932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186134, 0.591047, -0.784868,
		0.491361, -0.635762, -0.595290,
		-0.850834, -0.496457, -0.172080,
		34.503475, 28.601994, 48.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036892, 28.900766, 48.004032>,  <35.099056, 28.949514, 48.901764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036892, 28.900766, 48.004032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670086, 28.809624, 48.134975>,  <34.450001, 28.754938, 48.213539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670086, 28.809624, 48.134975>,  <35.036892, 28.900766, 48.004032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670086, 28.809624, 48.134975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394955, 0.404381, -0.824916,
		0.055585, -0.885752, -0.460817,
		-0.917017, -0.227855, 0.327355,
		34.394981, 28.741266, 48.233181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731632, 28.639942, 47.444489>,  <35.036892, 28.900766, 48.004032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731632, 28.639942, 47.444489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441605, 28.765850, 47.689503>,  <34.267590, 28.841394, 47.836510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441605, 28.765850, 47.689503>,  <34.731632, 28.639942, 47.444489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441605, 28.765850, 47.689503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510875, 0.350607, -0.784908,
		-0.461824, -0.882040, -0.093405,
		-0.725069, 0.314771, 0.612531,
		34.224083, 28.860281, 47.873260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258789, 28.331738, 47.118042>,  <34.731632, 28.639942, 47.444489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258789, 28.331738, 47.118042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094223, 28.627314, 47.331474>,  <33.995483, 28.804659, 47.459534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094223, 28.627314, 47.331474>,  <34.258789, 28.331738, 47.118042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094223, 28.627314, 47.331474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520788, 0.289861, -0.802970,
		-0.748011, -0.608233, 0.265579,
		-0.411412, 0.738941, 0.533579,
		33.970798, 28.848995, 47.491547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664413, 28.492708, 46.747375>,  <34.258789, 28.331738, 47.118042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664413, 28.492708, 46.747375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693810, 28.812626, 46.985680>,  <33.711449, 29.004576, 47.128662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693810, 28.812626, 46.985680>,  <33.664413, 28.492708, 46.747375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693810, 28.812626, 46.985680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368719, 0.576838, -0.728906,
		-0.926632, -0.166101, 0.337290,
		0.073490, 0.799793, 0.595761,
		33.715855, 29.052565, 47.164410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985909, 28.859680, 46.767963>,  <33.664413, 28.492708, 46.747375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985909, 28.859680, 46.767963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300209, 29.094662, 46.845413>,  <33.488789, 29.235651, 46.891884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300209, 29.094662, 46.845413>,  <32.985909, 28.859680, 46.767963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300209, 29.094662, 46.845413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129477, 0.462310, -0.877215,
		-0.604836, 0.664205, 0.439323,
		0.785754, 0.587453, 0.193623,
		33.535934, 29.270897, 46.903500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680084, 29.371239, 46.582893>,  <32.985909, 28.859680, 46.767963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680084, 29.371239, 46.582893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064865, 29.477676, 46.558125>,  <33.295734, 29.541540, 46.543262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064865, 29.477676, 46.558125>,  <32.680084, 29.371239, 46.582893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064865, 29.477676, 46.558125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188599, 0.482793, -0.855185,
		-0.197665, 0.834328, 0.514611,
		0.961956, 0.266096, -0.061922,
		33.353451, 29.557505, 46.539547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.848316, 27.579313, 50.887318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.004833, 27.936508, 50.798355>,  <38.098743, 28.150826, 50.744980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.004833, 27.936508, 50.798355>,  <37.848316, 27.579313, 50.887318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004833, 27.936508, 50.798355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068990, -0.269455, -0.960539,
		-0.917678, 0.360506, -0.167042,
		0.391290, 0.892989, -0.222402,
		38.122219, 28.204405, 50.731636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618767, 27.856585, 50.236271>,  <37.848316, 27.579313, 50.887318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618767, 27.856585, 50.236271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.957142, 28.066566, 50.273811>,  <38.160168, 28.192556, 50.296337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.957142, 28.066566, 50.273811>,  <37.618767, 27.856585, 50.236271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957142, 28.066566, 50.273811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108318, 0.003186, -0.994111,
		-0.522163, 0.851124, -0.054166,
		0.845939, 0.524955, 0.093856,
		38.210922, 28.224052, 50.301968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529274, 28.394758, 49.787918>,  <37.618767, 27.856585, 50.236271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529274, 28.394758, 49.787918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.922432, 28.336065, 49.832436>,  <38.158325, 28.300850, 49.859146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.922432, 28.336065, 49.832436>,  <37.529274, 28.394758, 49.787918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922432, 28.336065, 49.832436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140236, 0.204569, -0.968755,
		0.119380, 0.967792, 0.221647,
		0.982895, -0.146733, 0.111297,
		38.217300, 28.292046, 49.865826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924603, 28.908087, 49.442390>,  <37.529274, 28.394758, 49.787918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924603, 28.908087, 49.442390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.176361, 28.599379, 49.478680>,  <38.327415, 28.414154, 49.500454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.176361, 28.599379, 49.478680>,  <37.924603, 28.908087, 49.442390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176361, 28.599379, 49.478680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150796, 0.006776, -0.988542,
		0.762313, 0.635865, 0.120645,
		0.629396, -0.771771, 0.090721,
		38.365181, 28.367847, 49.505898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440613, 29.111214, 49.010193>,  <37.924603, 28.908087, 49.442390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440613, 29.111214, 49.010193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.516338, 28.720106, 49.046253>,  <38.561771, 28.485441, 49.067890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.516338, 28.720106, 49.046253>,  <38.440613, 29.111214, 49.010193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516338, 28.720106, 49.046253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168608, -0.058080, -0.983971,
		0.967333, 0.201477, 0.153865,
		0.189311, -0.977770, 0.090153,
		38.573132, 28.426775, 49.073299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130688, 28.995220, 48.752300>,  <38.440613, 29.111214, 49.010193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130688, 28.995220, 48.752300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968983, 28.629782, 48.734818>,  <38.871960, 28.410519, 48.724327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968983, 28.629782, 48.734818>,  <39.130688, 28.995220, 48.752300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968983, 28.629782, 48.734818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289441, -0.082453, -0.953638,
		0.867638, -0.398170, 0.297766,
		-0.404262, -0.913599, -0.043708,
		38.847706, 28.355701, 48.721706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709553, 28.609978, 48.559109>,  <39.130688, 28.995220, 48.752300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709553, 28.609978, 48.559109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.363026, 28.438717, 48.456215>,  <39.155109, 28.335960, 48.394478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.363026, 28.438717, 48.456215>,  <39.709553, 28.609978, 48.559109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363026, 28.438717, 48.456215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316212, -0.071463, -0.945993,
		0.386647, -0.900876, 0.197298,
		-0.866322, -0.428153, -0.257237,
		39.103130, 28.310270, 48.379044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806450, 28.096699, 48.021168>,  <39.709553, 28.609978, 48.559109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806450, 28.096699, 48.021168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.413284, 28.160418, 47.984287>,  <39.177383, 28.198648, 47.962158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.413284, 28.160418, 47.984287>,  <39.806450, 28.096699, 48.021168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413284, 28.160418, 47.984287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076868, -0.099859, -0.992028,
		-0.167239, -0.982167, 0.085907,
		-0.982915, 0.159302, -0.092197,
		39.118408, 28.208206, 47.956627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582367, 27.686810, 47.444759>,  <39.806450, 28.096699, 48.021168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582367, 27.686810, 47.444759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276863, 27.942106, 47.483387>,  <39.093563, 28.095284, 47.506561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276863, 27.942106, 47.483387>,  <39.582367, 27.686810, 47.444759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276863, 27.942106, 47.483387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111982, 0.016324, -0.993576,
		-0.635716, -0.769665, 0.059004,
		-0.763757, 0.638239, 0.096566,
		39.047737, 28.133577, 47.512356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971172, 27.472948, 47.037720>,  <39.582367, 27.686810, 47.444759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971172, 27.472948, 47.037720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.898567, 27.861771, 47.097271>,  <38.855003, 28.095064, 47.132999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.898567, 27.861771, 47.097271>,  <38.971172, 27.472948, 47.037720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898567, 27.861771, 47.097271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220116, 0.107390, -0.969544,
		-0.958438, -0.208751, 0.194472,
		-0.181509, 0.972055, 0.148876,
		38.844116, 28.153387, 47.141933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324741, 27.603733, 46.704258>,  <38.971172, 27.472948, 47.037720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324741, 27.603733, 46.704258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.493565, 27.963701, 46.748085>,  <38.594860, 28.179682, 46.774380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.493565, 27.963701, 46.748085>,  <38.324741, 27.603733, 46.704258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493565, 27.963701, 46.748085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315235, 0.259005, -0.912986,
		-0.849995, 0.350796, 0.393003,
		0.422062, 0.899922, 0.109569,
		38.620182, 28.233677, 46.780956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819435, 28.091284, 46.413155>,  <38.324741, 27.603733, 46.704258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819435, 28.091284, 46.413155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.176064, 28.272331, 46.419308>,  <38.390041, 28.380959, 46.423000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.176064, 28.272331, 46.419308>,  <37.819435, 28.091284, 46.413155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176064, 28.272331, 46.419308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124114, 0.276874, -0.952857,
		-0.435540, 0.847631, 0.303030,
		0.891572, 0.452618, 0.015387,
		38.443535, 28.408117, 46.423923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137470, 28.307095, 46.158218>,  <37.819435, 28.091284, 46.413155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137470, 28.307095, 46.158218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.802906, 28.183918, 45.976852>,  <36.602165, 28.110012, 45.868034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.802906, 28.183918, 45.976852>,  <37.137470, 28.307095, 46.158218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802906, 28.183918, 45.976852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191238, -0.611302, 0.767944,
		-0.513655, 0.729029, 0.452411,
		-0.836413, -0.307940, -0.453416,
		36.551983, 28.091536, 45.840828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628849, 28.508877, 46.675491>,  <37.137470, 28.307095, 46.158218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628849, 28.508877, 46.675491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.436676, 28.246202, 46.442955>,  <36.321373, 28.088598, 46.303432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.436676, 28.246202, 46.442955>,  <36.628849, 28.508877, 46.675491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436676, 28.246202, 46.442955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213271, -0.555472, 0.803720,
		-0.850708, 0.510113, 0.126813,
		-0.480429, -0.656686, -0.581336,
		36.292549, 28.049196, 46.268555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876919, 28.443426, 46.918396>,  <36.628849, 28.508877, 46.675491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876919, 28.443426, 46.918396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023411, 28.121880, 46.730919>,  <36.111305, 27.928951, 46.618431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023411, 28.121880, 46.730919>,  <35.876919, 28.443426, 46.918396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023411, 28.121880, 46.730919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184024, -0.556307, 0.810344,
		-0.912145, -0.210524, -0.351669,
		0.366232, -0.803867, -0.468691,
		36.133282, 27.880720, 46.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405102, 27.915306, 47.073223>,  <35.876919, 28.443426, 46.918396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405102, 27.915306, 47.073223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748409, 27.738955, 46.968155>,  <35.954395, 27.633144, 46.905113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748409, 27.738955, 46.968155>,  <35.405102, 27.915306, 47.073223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748409, 27.738955, 46.968155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082057, -0.623146, 0.777789,
		-0.506591, -0.646001, -0.571007,
		0.858273, -0.440876, -0.262671,
		36.005890, 27.606691, 46.889355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290630, 27.362524, 47.307899>,  <35.405102, 27.915306, 47.073223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290630, 27.362524, 47.307899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680485, 27.310278, 47.235203>,  <35.914398, 27.278931, 47.191586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680485, 27.310278, 47.235203>,  <35.290630, 27.362524, 47.307899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680485, 27.310278, 47.235203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016989, -0.766514, 0.642003,
		-0.223163, -0.628805, -0.744850,
		0.974633, -0.130617, -0.181741,
		35.972874, 27.271093, 47.180679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446598, 26.659683, 47.381725>,  <35.290630, 27.362524, 47.307899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446598, 26.659683, 47.381725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814159, 26.812820, 47.419792>,  <36.034695, 26.904703, 47.442631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814159, 26.812820, 47.419792>,  <35.446598, 26.659683, 47.381725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814159, 26.812820, 47.419792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219492, -0.696611, 0.683049,
		0.327791, -0.606766, -0.724147,
		0.918899, 0.382842, 0.095163,
		36.089828, 26.927673, 47.448341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981110, 26.129250, 47.278877>,  <35.446598, 26.659683, 47.381725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981110, 26.129250, 47.278877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.193768, 26.408001, 47.471424>,  <36.321362, 26.575251, 47.586952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.193768, 26.408001, 47.471424>,  <35.981110, 26.129250, 47.278877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193768, 26.408001, 47.471424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365795, -0.701526, 0.611601,
		0.763900, -0.149076, -0.627880,
		0.531649, 0.696877, 0.481365,
		36.353264, 26.617064, 47.615833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572346, 25.752445, 47.418606>,  <35.981110, 26.129250, 47.278877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572346, 25.752445, 47.418606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562023, 26.065811, 47.666992>,  <36.555828, 26.253830, 47.816025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562023, 26.065811, 47.666992>,  <36.572346, 25.752445, 47.418606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562023, 26.065811, 47.666992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310579, -0.584148, 0.749875,
		0.950197, 0.212209, -0.228238,
		-0.025806, 0.783415, 0.620963,
		36.554283, 26.300837, 47.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196957, 25.781446, 47.755287>,  <36.572346, 25.752445, 47.418606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196957, 25.781446, 47.755287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.926842, 25.970070, 47.982132>,  <36.764774, 26.083244, 48.118240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.926842, 25.970070, 47.982132>,  <37.196957, 25.781446, 47.755287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926842, 25.970070, 47.982132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163929, -0.653719, 0.738768,
		0.719108, 0.591847, 0.364145,
		-0.675286, 0.471560, 0.567115,
		36.724255, 26.111538, 48.152267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537159, 25.653135, 48.319359>,  <37.196957, 25.781446, 47.755287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537159, 25.653135, 48.319359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.175236, 25.779087, 48.434025>,  <36.958084, 25.854658, 48.502823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.175236, 25.779087, 48.434025>,  <37.537159, 25.653135, 48.319359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175236, 25.779087, 48.434025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080761, -0.534087, 0.841563,
		0.418096, 0.784603, 0.457815,
		-0.904806, 0.314881, 0.286665,
		36.903793, 25.873552, 48.520023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644836, 25.825912, 49.029339>,  <37.537159, 25.653135, 48.319359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644836, 25.825912, 49.029339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.264854, 25.739004, 48.939564>,  <37.036865, 25.686859, 48.885700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.264854, 25.739004, 48.939564>,  <37.644836, 25.825912, 49.029339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264854, 25.739004, 48.939564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029558, -0.652743, 0.757002,
		-0.310973, 0.725755, 0.613657,
		-0.949959, -0.217269, -0.224438,
		36.979866, 25.673822, 48.872234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225826, 25.947313, 49.669064>,  <37.644836, 25.825912, 49.029339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225826, 25.947313, 49.669064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.053673, 25.695570, 49.410244>,  <36.950382, 25.544523, 49.254951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.053673, 25.695570, 49.410244>,  <37.225826, 25.947313, 49.669064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053673, 25.695570, 49.410244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126784, -0.667584, 0.733660,
		-0.893698, 0.397792, 0.207525,
		-0.430384, -0.629359, -0.647052,
		36.924557, 25.506762, 49.216129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531490, 25.781084, 49.893040>,  <37.225826, 25.947313, 49.669064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531490, 25.781084, 49.893040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.629177, 25.468449, 49.663441>,  <36.687790, 25.280867, 49.525681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.629177, 25.468449, 49.663441>,  <36.531490, 25.781084, 49.893040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629177, 25.468449, 49.663441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369198, -0.622284, 0.690258,
		-0.896688, 0.043343, -0.440537,
		0.244221, -0.781591, -0.573996,
		36.702442, 25.233971, 49.491241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998917, 25.320274, 49.960327>,  <36.531490, 25.781084, 49.893040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998917, 25.320274, 49.960327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291714, 25.090170, 49.814304>,  <36.467392, 24.952108, 49.726692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291714, 25.090170, 49.814304>,  <35.998917, 25.320274, 49.960327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291714, 25.090170, 49.814304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219504, -0.706362, 0.672957,
		-0.644985, -0.412468, -0.643323,
		0.731992, -0.575259, -0.365055,
		36.511311, 24.917593, 49.704788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318352, 25.660988, 49.878891>,  <35.998917, 25.320274, 49.960327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318352, 25.660988, 49.878891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.382877, 26.004471, 50.073456>,  <35.421593, 26.210562, 50.190193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.382877, 26.004471, 50.073456>,  <35.318352, 25.660988, 49.878891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382877, 26.004471, 50.073456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794600, 0.405318, -0.452026,
		-0.585310, -0.313587, 0.747713,
		0.161312, 0.858709, 0.486413,
		35.431271, 26.262083, 50.219379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645508, 25.988665, 49.977123>,  <35.318352, 25.660988, 49.878891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645508, 25.988665, 49.977123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.896084, 26.282625, 50.081039>,  <35.046429, 26.459002, 50.143391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.896084, 26.282625, 50.081039>,  <34.645508, 25.988665, 49.977123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896084, 26.282625, 50.081039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560191, 0.656221, -0.505530,
		-0.541997, 0.171150, 0.822768,
		0.626439, 0.734903, 0.259792,
		35.084015, 26.503096, 50.158978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273060, 26.603075, 50.091125>,  <34.645508, 25.988665, 49.977123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273060, 26.603075, 50.091125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627804, 26.779467, 50.035969>,  <34.840652, 26.885302, 50.002876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627804, 26.779467, 50.035969>,  <34.273060, 26.603075, 50.091125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627804, 26.779467, 50.035969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440945, 0.718674, -0.537656,
		-0.137999, 0.537628, 0.831812,
		0.886861, 0.440980, -0.137888,
		34.893864, 26.911760, 49.994602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140926, 27.243164, 50.181480>,  <34.273060, 26.603075, 50.091125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140926, 27.243164, 50.181480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.483303, 27.270306, 49.976440>,  <34.688728, 27.286591, 49.853416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.483303, 27.270306, 49.976440>,  <34.140926, 27.243164, 50.181480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483303, 27.270306, 49.976440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375957, 0.762272, -0.526875,
		0.354987, 0.643690, 0.677972,
		0.855944, 0.067855, -0.512597,
		34.740086, 27.290663, 49.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223560, 27.929674, 50.220242>,  <34.140926, 27.243164, 50.181480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223560, 27.929674, 50.220242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.471272, 27.807812, 49.930779>,  <34.619900, 27.734695, 49.757099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.471272, 27.807812, 49.930779>,  <34.223560, 27.929674, 50.220242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471272, 27.807812, 49.930779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331734, 0.733834, -0.592824,
		0.711651, 0.607184, 0.353383,
		0.619278, -0.304655, -0.723658,
		34.657055, 27.716415, 49.713680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482159, 28.528366, 49.925777>,  <34.223560, 27.929674, 50.220242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482159, 28.528366, 49.925777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541157, 28.261599, 49.633625>,  <34.576557, 28.101538, 49.458332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541157, 28.261599, 49.633625>,  <34.482159, 28.528366, 49.925777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541157, 28.261599, 49.633625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194365, 0.704519, -0.682551,
		0.969776, 0.242637, -0.025709,
		0.147500, -0.666919, -0.730386,
		34.585407, 28.061523, 49.414509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855206, 28.889277, 49.564365>,  <34.482159, 28.528366, 49.925777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855206, 28.889277, 49.564365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688374, 28.621023, 49.318993>,  <34.588276, 28.460072, 49.171768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688374, 28.621023, 49.318993>,  <34.855206, 28.889277, 49.564365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688374, 28.621023, 49.318993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130901, 0.712223, -0.689640,
		0.899395, -0.207335, -0.384839,
		-0.417078, -0.670635, -0.613429,
		34.563251, 28.419832, 49.134964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411354, 29.361891, 49.552723>,  <34.855206, 28.889277, 49.564365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411354, 29.361891, 49.552723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230343, 29.679176, 49.715710>,  <35.121738, 29.869547, 49.813503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230343, 29.679176, 49.715710>,  <35.411354, 29.361891, 49.552723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230343, 29.679176, 49.715710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215481, -0.346128, 0.913107,
		0.865326, 0.501007, -0.014291,
		-0.452526, 0.793214, 0.407471,
		35.094585, 29.917141, 49.837952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871262, 29.588326, 50.039192>,  <35.411354, 29.361891, 49.552723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871262, 29.588326, 50.039192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520790, 29.746887, 50.148869>,  <35.310509, 29.842024, 50.214676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520790, 29.746887, 50.148869>,  <35.871262, 29.588326, 50.039192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520790, 29.746887, 50.148869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094982, -0.415718, 0.904520,
		0.472542, 0.818561, 0.326591,
		-0.876175, 0.396403, 0.274193,
		35.257938, 29.865808, 50.231125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064098, 29.953362, 50.510269>,  <35.871262, 29.588326, 50.039192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064098, 29.953362, 50.510269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.672977, 29.891619, 50.566956>,  <35.438305, 29.854572, 50.600967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.672977, 29.891619, 50.566956>,  <36.064098, 29.953362, 50.510269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672977, 29.891619, 50.566956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188894, -0.356489, 0.915005,
		-0.090716, 0.921460, 0.377732,
		-0.977798, -0.154357, 0.141719,
		35.379639, 29.845312, 50.609470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037571, 29.935392, 51.299927>,  <36.064098, 29.953362, 50.510269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037571, 29.935392, 51.299927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680496, 29.810652, 51.169788>,  <35.466251, 29.735807, 51.091705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680496, 29.810652, 51.169788>,  <36.037571, 29.935392, 51.299927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680496, 29.810652, 51.169788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218380, -0.332174, 0.917590,
		-0.394224, 0.890173, 0.228426,
		-0.892691, -0.311853, -0.325347,
		35.412689, 29.717096, 51.072186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486794, 30.296347, 51.721878>,  <36.037571, 29.935392, 51.299927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486794, 30.296347, 51.721878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332310, 29.957870, 51.575016>,  <35.239620, 29.754786, 51.486900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332310, 29.957870, 51.575016>,  <35.486794, 30.296347, 51.721878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332310, 29.957870, 51.575016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307456, -0.257181, 0.916149,
		-0.869662, 0.466711, -0.160840,
		-0.386211, -0.846191, -0.367153,
		35.216446, 29.704014, 51.464870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878548, 30.203583, 52.088997>,  <35.486794, 30.296347, 51.721878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878548, 30.203583, 52.088997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.999344, 29.852549, 51.940056>,  <35.071819, 29.641928, 51.850689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.999344, 29.852549, 51.940056>,  <34.878548, 30.203583, 52.088997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999344, 29.852549, 51.940056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189257, -0.438008, 0.878823,
		-0.934337, -0.194921, -0.298361,
		0.301986, -0.877585, -0.372357,
		35.089939, 29.589273, 51.828350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454197, 29.813622, 52.492893>,  <34.878548, 30.203583, 52.088997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454197, 29.813622, 52.492893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.768246, 29.620569, 52.337639>,  <34.956676, 29.504738, 52.244484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.768246, 29.620569, 52.337639>,  <34.454197, 29.813622, 52.492893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768246, 29.620569, 52.337639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014346, -0.612357, 0.790451,
		-0.619176, -0.626168, -0.473850,
		0.785121, -0.482631, -0.388140,
		35.003780, 29.475780, 52.221195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280346, 29.020460, 52.577793>,  <34.454197, 29.813622, 52.492893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280346, 29.020460, 52.577793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.676636, 29.045717, 52.529671>,  <34.914410, 29.060871, 52.500797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.676636, 29.045717, 52.529671>,  <34.280346, 29.020460, 52.577793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676636, 29.045717, 52.529671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124682, -0.774385, 0.620308,
		-0.053995, -0.629555, -0.775077,
		0.990727, 0.063145, -0.120307,
		34.973854, 29.064661, 52.493580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443573, 28.391285, 52.735016>,  <34.280346, 29.020460, 52.577793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443573, 28.391285, 52.735016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779140, 28.608984, 52.736572>,  <34.980480, 28.739603, 52.737507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779140, 28.608984, 52.736572>,  <34.443573, 28.391285, 52.735016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779140, 28.608984, 52.736572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381845, -0.593651, 0.708359,
		0.387833, -0.592767, -0.705842,
		0.838916, 0.544247, 0.003893,
		35.030815, 28.772259, 52.737740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.095203, 36.070759, 38.413853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418808, 36.211067, 38.602512>,  <36.612972, 36.295254, 38.715710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418808, 36.211067, 38.602512>,  <36.095203, 36.070759, 38.413853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418808, 36.211067, 38.602512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465543, -0.107487, 0.878474,
		0.358842, -0.930271, 0.076342,
		0.809013, 0.350773, 0.471652,
		36.661510, 36.316299, 38.744007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304806, 35.553219, 38.879452>,  <36.095203, 36.070759, 38.413853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304806, 35.553219, 38.879452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525772, 35.845535, 39.039845>,  <36.658352, 36.020924, 39.136082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525772, 35.845535, 39.039845>,  <36.304806, 35.553219, 38.879452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525772, 35.845535, 39.039845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185557, -0.361167, 0.913853,
		0.812656, -0.579229, -0.063910,
		0.552412, 0.730789, 0.400984,
		36.691498, 36.064774, 39.160141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610779, 35.239914, 39.468296>,  <36.304806, 35.553219, 38.879452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610779, 35.239914, 39.468296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605259, 35.634499, 39.533661>,  <36.601948, 35.871250, 39.572880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605259, 35.634499, 39.533661>,  <36.610779, 35.239914, 39.468296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605259, 35.634499, 39.533661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097019, -0.163977, 0.981681,
		0.995187, -0.002304, 0.097969,
		-0.013803, 0.986461, 0.163412,
		36.601120, 35.930435, 39.582684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919960, 35.340881, 40.053730>,  <36.610779, 35.239914, 39.468296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919960, 35.340881, 40.053730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718063, 35.686005, 40.042511>,  <36.596924, 35.893078, 40.035778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718063, 35.686005, 40.042511>,  <36.919960, 35.340881, 40.053730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718063, 35.686005, 40.042511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222675, -0.098735, 0.969880,
		0.834055, 0.495788, 0.241963,
		-0.504745, 0.862813, -0.028049,
		36.566639, 35.944847, 40.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016899, 35.649174, 40.772537>,  <36.919960, 35.340881, 40.053730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016899, 35.649174, 40.772537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711823, 35.832680, 40.590179>,  <36.528778, 35.942783, 40.480762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711823, 35.832680, 40.590179>,  <37.016899, 35.649174, 40.772537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711823, 35.832680, 40.590179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435392, 0.157066, 0.886433,
		0.478268, 0.874567, 0.079949,
		-0.762688, 0.458762, -0.455899,
		36.483017, 35.970310, 40.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822609, 36.130882, 41.272156>,  <37.016899, 35.649174, 40.772537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822609, 36.130882, 41.272156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497845, 36.096317, 41.041218>,  <36.302986, 36.075577, 40.902657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497845, 36.096317, 41.041218>,  <36.822609, 36.130882, 41.272156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497845, 36.096317, 41.041218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545483, -0.239989, 0.803028,
		-0.207947, 0.966922, 0.147714,
		-0.811915, -0.086412, -0.577345,
		36.254269, 36.070393, 40.868015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195934, 36.545403, 41.526691>,  <36.822609, 36.130882, 41.272156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195934, 36.545403, 41.526691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060860, 36.244392, 41.300533>,  <35.979813, 36.063786, 41.164837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060860, 36.244392, 41.300533>,  <36.195934, 36.545403, 41.526691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060860, 36.244392, 41.300533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691989, -0.208706, 0.691082,
		-0.638057, 0.624618, -0.450262,
		-0.337690, -0.752526, -0.565395,
		35.959553, 36.018635, 41.130917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564373, 36.528893, 41.744034>,  <36.195934, 36.545403, 41.526691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564373, 36.528893, 41.744034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638420, 36.177509, 41.567833>,  <35.682846, 35.966679, 41.462112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638420, 36.177509, 41.567833>,  <35.564373, 36.528893, 41.744034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638420, 36.177509, 41.567833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411437, -0.476355, 0.777049,
		-0.892442, 0.037399, -0.449609,
		0.185113, -0.878457, -0.440506,
		35.693954, 35.913971, 41.435680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967381, 36.164726, 41.805241>,  <35.564373, 36.528893, 41.744034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967381, 36.164726, 41.805241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233109, 35.875431, 41.729759>,  <35.392548, 35.701855, 41.684471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233109, 35.875431, 41.729759>,  <34.967381, 36.164726, 41.805241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233109, 35.875431, 41.729759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375753, -0.541390, 0.752135,
		-0.646131, -0.428754, -0.631415,
		0.664322, -0.723234, -0.188703,
		35.432404, 35.658463, 41.673149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503841, 35.574223, 41.843525>,  <34.967381, 36.164726, 41.805241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503841, 35.574223, 41.843525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884598, 35.453827, 41.866516>,  <35.113052, 35.381592, 41.880310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884598, 35.453827, 41.866516>,  <34.503841, 35.574223, 41.843525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884598, 35.453827, 41.866516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272746, -0.746743, 0.606617,
		-0.139663, -0.593112, -0.792913,
		0.951895, -0.300986, 0.057477,
		35.170166, 35.363533, 41.883759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531906, 34.895252, 41.782364>,  <34.503841, 35.574223, 41.843525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531906, 34.895252, 41.782364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835930, 35.001904, 42.019421>,  <35.018345, 35.065895, 42.161655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835930, 35.001904, 42.019421>,  <34.531906, 34.895252, 41.782364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835930, 35.001904, 42.019421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333507, -0.622665, 0.707856,
		0.557749, -0.735662, -0.384340,
		0.760058, 0.266626, 0.592639,
		35.063946, 35.081890, 42.197212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691948, 34.331913, 42.185448>,  <34.531906, 34.895252, 41.782364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691948, 34.331913, 42.185448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968353, 34.552776, 42.372044>,  <35.134197, 34.685295, 42.484001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968353, 34.552776, 42.372044>,  <34.691948, 34.331913, 42.185448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968353, 34.552776, 42.372044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146873, -0.524643, 0.838557,
		0.707760, -0.647972, -0.281439,
		0.691016, 0.552162, 0.466491,
		35.175659, 34.718426, 42.511990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719921, 33.669922, 41.840523>,  <34.691948, 34.331913, 42.185448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719921, 33.669922, 41.840523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372425, 33.501408, 41.736362>,  <34.163929, 33.400299, 41.673866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372425, 33.501408, 41.736362>,  <34.719921, 33.669922, 41.840523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372425, 33.501408, 41.736362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188382, 0.205182, -0.960423,
		0.458045, -0.883412, -0.098886,
		-0.868739, -0.421289, -0.260402,
		34.111805, 33.375023, 41.658241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888828, 33.115494, 41.232594>,  <34.719921, 33.669922, 41.840523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888828, 33.115494, 41.232594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509109, 33.240837, 41.222523>,  <34.281277, 33.316044, 41.216480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509109, 33.240837, 41.222523>,  <34.888828, 33.115494, 41.232594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509109, 33.240837, 41.222523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032851, 0.019240, -0.999275,
		-0.312649, -0.949439, -0.028559,
		-0.949300, 0.313361, -0.025175,
		34.224319, 33.334846, 41.214970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511383, 32.679806, 40.674583>,  <34.888828, 33.115494, 41.232594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511383, 32.679806, 40.674583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301067, 33.016361, 40.724545>,  <34.174877, 33.218296, 40.754520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301067, 33.016361, 40.724545>,  <34.511383, 32.679806, 40.674583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301067, 33.016361, 40.724545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130416, 0.065363, -0.989303,
		-0.840556, -0.536457, 0.075364,
		-0.525793, 0.841393, 0.124904,
		34.143330, 33.268780, 40.762016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852661, 32.675468, 40.263813>,  <34.511383, 32.679806, 40.674583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852661, 32.675468, 40.263813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877697, 33.068100, 40.336029>,  <33.892719, 33.303677, 40.379360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877697, 33.068100, 40.336029>,  <33.852661, 32.675468, 40.263813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877697, 33.068100, 40.336029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357269, 0.190943, -0.914275,
		-0.931902, -0.007282, 0.362636,
		0.062586, 0.981574, 0.180542,
		33.896473, 33.362572, 40.390190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234386, 33.043961, 39.884876>,  <33.852661, 32.675468, 40.263813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234386, 33.043961, 39.884876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492500, 33.338535, 39.966145>,  <33.647369, 33.515278, 40.014904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492500, 33.338535, 39.966145>,  <33.234386, 33.043961, 39.884876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492500, 33.338535, 39.966145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244101, 0.450765, -0.858618,
		-0.723895, 0.504458, 0.470635,
		0.645283, 0.736432, 0.203168,
		33.686085, 33.559464, 40.027096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804436, 33.610889, 39.676285>,  <33.234386, 33.043961, 39.884876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804436, 33.610889, 39.676285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195610, 33.694294, 39.681492>,  <33.430313, 33.744335, 39.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195610, 33.694294, 39.681492>,  <32.804436, 33.610889, 39.676285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195610, 33.694294, 39.681492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060194, 0.340879, -0.938178,
		-0.200059, 0.916692, 0.345908,
		0.977933, 0.208512, 0.013017,
		33.488991, 33.756847, 39.685398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848473, 34.315071, 39.383808>,  <32.804436, 33.610889, 39.676285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848473, 34.315071, 39.383808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218334, 34.166580, 39.349861>,  <33.440250, 34.077484, 39.329494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218334, 34.166580, 39.349861>,  <32.848473, 34.315071, 39.383808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218334, 34.166580, 39.349861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002280, 0.217450, -0.976069,
		0.380800, 0.902720, 0.200219,
		0.924655, -0.371230, -0.084863,
		33.495731, 34.055210, 39.324402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292007, 34.844032, 38.933640>,  <32.848473, 34.315071, 39.383808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292007, 34.844032, 38.933640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490875, 34.496971, 38.934498>,  <33.610195, 34.288734, 38.935013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490875, 34.496971, 38.934498>,  <33.292007, 34.844032, 38.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490875, 34.496971, 38.934498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177436, 0.099254, -0.979115,
		0.849319, 0.487162, 0.203298,
		0.497165, -0.867653, 0.002142,
		33.640026, 34.236675, 38.935139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933372, 34.972290, 38.495277>,  <33.292007, 34.844032, 38.933640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933372, 34.972290, 38.495277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899418, 34.574974, 38.526676>,  <33.879044, 34.336582, 38.545517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899418, 34.574974, 38.526676>,  <33.933372, 34.972290, 38.495277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899418, 34.574974, 38.526676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319459, -0.101753, -0.942121,
		0.943790, -0.054898, 0.325955,
		-0.084887, -0.993294, 0.078496,
		33.873951, 34.276985, 38.550224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627003, 34.709740, 38.325970>,  <33.933372, 34.972290, 38.495277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627003, 34.709740, 38.325970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329967, 34.455643, 38.241085>,  <34.151745, 34.303185, 38.190155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329967, 34.455643, 38.241085>,  <34.627003, 34.709740, 38.325970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329967, 34.455643, 38.241085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360007, -0.111407, -0.926274,
		0.564762, -0.764239, 0.311420,
		-0.742589, -0.635238, -0.212213,
		34.107189, 34.265072, 38.177422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931709, 34.198318, 37.952957>,  <34.627003, 34.709740, 38.325970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931709, 34.198318, 37.952957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544048, 34.225422, 37.858173>,  <34.311451, 34.241684, 37.801304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544048, 34.225422, 37.858173>,  <34.931709, 34.198318, 37.952957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544048, 34.225422, 37.858173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235167, -0.033476, -0.971378,
		-0.073753, -0.997140, 0.016509,
		-0.969153, 0.067760, -0.236964,
		34.253304, 34.245750, 37.787083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941139, 33.916821, 37.379688>,  <34.931709, 34.198318, 37.952957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941139, 33.916821, 37.379688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564384, 34.050526, 37.366379>,  <34.338329, 34.130749, 37.358395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564384, 34.050526, 37.366379>,  <34.941139, 33.916821, 37.379688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564384, 34.050526, 37.366379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041530, 0.017579, -0.998983,
		-0.333342, -0.942314, -0.030439,
		-0.941891, 0.334267, -0.033275,
		34.281818, 34.150806, 37.356396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490688, 33.632587, 36.702736>,  <34.941139, 33.916821, 37.379688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490688, 33.632587, 36.702736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308842, 33.959526, 36.844311>,  <34.199734, 34.155689, 36.929256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308842, 33.959526, 36.844311>,  <34.490688, 33.632587, 36.702736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308842, 33.959526, 36.844311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171590, 0.309561, -0.935270,
		-0.874004, -0.485919, -0.000483,
		-0.454614, 0.817347, 0.353936,
		34.172459, 34.204731, 36.950493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434036, 33.517086, 35.985027>,  <34.490688, 33.632587, 36.702736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434036, 33.517086, 35.985027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609447, 33.478264, 35.627644>,  <34.714695, 33.454971, 35.413212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609447, 33.478264, 35.627644>,  <34.434036, 33.517086, 35.985027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609447, 33.478264, 35.627644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248775, -0.942195, 0.224453,
		-0.863600, -0.320700, -0.389032,
		0.438526, -0.097056, -0.893462,
		34.741005, 33.449146, 35.359604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240078, 32.853943, 35.766262>,  <34.434036, 33.517086, 35.985027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240078, 32.853943, 35.766262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556744, 32.973835, 35.553310>,  <34.746742, 33.045769, 35.425541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556744, 32.973835, 35.553310>,  <34.240078, 32.853943, 35.766262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556744, 32.973835, 35.553310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451616, -0.873963, 0.179530,
		-0.411468, -0.382558, -0.827250,
		0.791667, 0.299729, -0.532377,
		34.794243, 33.063755, 35.393597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742710, 32.300884, 35.822693>,  <34.240078, 32.853943, 35.766262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742710, 32.300884, 35.822693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127365, 32.227676, 35.904434>,  <35.358158, 32.183754, 35.953480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127365, 32.227676, 35.904434>,  <34.742710, 32.300884, 35.822693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127365, 32.227676, 35.904434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199313, 0.045742, 0.978868,
		-0.188497, -0.982045, 0.007509,
		0.961636, -0.183017, 0.204357,
		35.415855, 32.172771, 35.965740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839264, 31.814302, 36.399487>,  <34.742710, 32.300884, 35.822693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839264, 31.814302, 36.399487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191048, 32.004677, 36.396946>,  <35.402119, 32.118900, 36.395420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191048, 32.004677, 36.396946>,  <34.839264, 31.814302, 36.399487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191048, 32.004677, 36.396946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009660, 0.031191, 0.999467,
		0.475881, -0.878927, 0.032029,
		0.879457, 0.475936, -0.006353,
		35.454884, 32.147457, 36.395039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201801, 31.396561, 36.736874>,  <34.839264, 31.814302, 36.399487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201801, 31.396561, 36.736874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358318, 31.764021, 36.758678>,  <35.452229, 31.984497, 36.771759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358318, 31.764021, 36.758678>,  <35.201801, 31.396561, 36.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358318, 31.764021, 36.758678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080064, -0.025025, 0.996476,
		0.916775, -0.394282, 0.063759,
		0.391297, 0.918649, 0.054510,
		35.475708, 32.039616, 36.775032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686855, 31.288506, 37.165001>,  <35.201801, 31.396561, 36.736874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686855, 31.288506, 37.165001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630905, 31.684448, 37.174908>,  <35.597336, 31.922014, 37.180851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630905, 31.684448, 37.174908>,  <35.686855, 31.288506, 37.165001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630905, 31.684448, 37.174908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081994, -0.013350, 0.996543,
		0.986768, 0.141426, -0.079295,
		-0.139879, 0.989859, 0.024770,
		35.588940, 31.981405, 37.182339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278095, 31.624451, 37.455536>,  <35.686855, 31.288506, 37.165001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278095, 31.624451, 37.455536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970322, 31.870659, 37.523785>,  <35.785660, 32.018383, 37.564732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970322, 31.870659, 37.523785>,  <36.278095, 31.624451, 37.455536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970322, 31.870659, 37.523785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081208, -0.170686, 0.981973,
		0.633546, 0.769417, 0.081346,
		-0.769431, 0.615520, 0.170620,
		35.739491, 32.055313, 37.574970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401260, 32.108536, 38.104610>,  <36.278095, 31.624451, 37.455536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401260, 32.108536, 38.104610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005871, 32.101913, 38.044403>,  <35.768639, 32.097939, 38.008278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005871, 32.101913, 38.044403>,  <36.401260, 32.108536, 38.104610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005871, 32.101913, 38.044403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150340, -0.011322, 0.988570,
		-0.018074, 0.999799, 0.008702,
		-0.988469, -0.016559, -0.150514,
		35.709332, 32.096947, 37.999249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090828, 32.568768, 38.631454>,  <36.401260, 32.108536, 38.104610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090828, 32.568768, 38.631454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776352, 32.350536, 38.515358>,  <35.587666, 32.219597, 38.445702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776352, 32.350536, 38.515358>,  <36.090828, 32.568768, 38.631454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776352, 32.350536, 38.515358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263680, -0.128607, 0.955999,
		-0.558902, 0.828131, -0.042749,
		-0.786194, -0.545582, -0.290240,
		35.540493, 32.186863, 38.428288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587154, 32.782162, 39.056873>,  <36.090828, 32.568768, 38.631454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587154, 32.782162, 39.056873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449768, 32.427582, 38.932785>,  <35.367336, 32.214832, 38.858334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449768, 32.427582, 38.932785>,  <35.587154, 32.782162, 39.056873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449768, 32.427582, 38.932785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249519, -0.232312, 0.940091,
		-0.905411, 0.400299, -0.141394,
		-0.343470, -0.886449, -0.310220,
		35.346725, 32.161648, 38.839718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006382, 32.682446, 39.526291>,  <35.587154, 32.782162, 39.056873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006382, 32.682446, 39.526291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117378, 32.334499, 39.363159>,  <35.183975, 32.125732, 39.265282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117378, 32.334499, 39.363159>,  <35.006382, 32.682446, 39.526291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117378, 32.334499, 39.363159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122863, -0.388883, 0.913058,
		-0.952839, -0.303474, -0.001038,
		0.277493, -0.869870, -0.407828,
		35.200626, 32.073540, 39.240810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663731, 32.172337, 39.951008>,  <35.006382, 32.682446, 39.526291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663731, 32.172337, 39.951008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954868, 31.970467, 39.765301>,  <35.129551, 31.849344, 39.653877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954868, 31.970467, 39.765301>,  <34.663731, 32.172337, 39.951008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954868, 31.970467, 39.765301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265031, -0.417394, 0.869218,
		-0.632458, -0.755700, -0.170042,
		0.727843, -0.504678, -0.464268,
		35.173222, 31.819063, 39.626019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473827, 31.584589, 40.110718>,  <34.663731, 32.172337, 39.951008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473827, 31.584589, 40.110718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854362, 31.519676, 40.005943>,  <35.082684, 31.480728, 39.943077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854362, 31.519676, 40.005943>,  <34.473827, 31.584589, 40.110718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854362, 31.519676, 40.005943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166448, -0.444739, 0.880058,
		-0.259314, -0.880836, -0.396087,
		0.951342, -0.162284, -0.261941,
		35.139767, 31.470991, 39.927361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677910, 30.959394, 40.402199>,  <34.473827, 31.584589, 40.110718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677910, 30.959394, 40.402199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041897, 31.111809, 40.336758>,  <35.260288, 31.203257, 40.297493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041897, 31.111809, 40.336758>,  <34.677910, 30.959394, 40.402199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041897, 31.111809, 40.336758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340683, -0.462022, 0.818823,
		0.236412, -0.800842, -0.550238,
		0.909970, 0.381036, -0.163605,
		35.314888, 31.226120, 40.287678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093494, 30.397451, 40.365627>,  <34.677910, 30.959394, 40.402199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093494, 30.397451, 40.365627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329018, 30.699301, 40.481453>,  <35.470333, 30.880411, 40.550949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329018, 30.699301, 40.481453>,  <35.093494, 30.397451, 40.365627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329018, 30.699301, 40.481453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405294, -0.585608, 0.701997,
		0.699315, -0.295983, -0.650655,
		0.588808, 0.754624, 0.289565,
		35.505661, 30.925688, 40.568321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752499, 30.208223, 40.403378>,  <35.093494, 30.397451, 40.365627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752499, 30.208223, 40.403378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724136, 30.510380, 40.663948>,  <35.707119, 30.691673, 40.820290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724136, 30.510380, 40.663948>,  <35.752499, 30.208223, 40.403378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724136, 30.510380, 40.663948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393796, -0.578825, 0.714063,
		0.916459, 0.307160, -0.256428,
		-0.070905, 0.755390, 0.651428,
		35.702866, 30.736998, 40.859375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423485, 30.243784, 40.772240>,  <35.752499, 30.208223, 40.403378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423485, 30.243784, 40.772240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163471, 30.441969, 41.002708>,  <36.007465, 30.560881, 41.140991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163471, 30.441969, 41.002708>,  <36.423485, 30.243784, 40.772240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163471, 30.441969, 41.002708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265352, -0.562491, 0.783066,
		0.712072, 0.661907, 0.234165,
		-0.650032, 0.495463, 0.576172,
		35.968460, 30.590609, 41.175560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822968, 30.423002, 41.348427>,  <36.423485, 30.243784, 40.772240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822968, 30.423002, 41.348427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443764, 30.453703, 41.471962>,  <36.216240, 30.472124, 41.546082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443764, 30.453703, 41.471962>,  <36.822968, 30.423002, 41.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443764, 30.453703, 41.471962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259606, -0.374779, 0.890025,
		0.184058, 0.923932, 0.335370,
		-0.948012, 0.076752, 0.308839,
		36.159359, 30.476728, 41.564613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965675, 30.619318, 42.085796>,  <36.822968, 30.423002, 41.348427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965675, 30.619318, 42.085796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585842, 30.499458, 42.048908>,  <36.357941, 30.427544, 42.026775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585842, 30.499458, 42.048908>,  <36.965675, 30.619318, 42.085796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585842, 30.499458, 42.048908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097614, -0.562096, 0.821291,
		-0.297935, 0.770882, 0.563007,
		-0.949582, -0.299648, -0.092219,
		36.300968, 30.409563, 42.021244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758183, 30.736883, 42.676861>,  <36.965675, 30.619318, 42.085796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758183, 30.736883, 42.676861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481178, 30.478445, 42.548489>,  <36.314976, 30.323381, 42.471466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481178, 30.478445, 42.548489>,  <36.758183, 30.736883, 42.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481178, 30.478445, 42.548489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040813, -0.479237, 0.876736,
		-0.720256, 0.594048, 0.358244,
		-0.692507, -0.646095, -0.320928,
		36.273426, 30.284616, 42.452209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226444, 30.762398, 43.106091>,  <36.758183, 30.736883, 42.676861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226444, 30.762398, 43.106091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182621, 30.404657, 42.932594>,  <36.156326, 30.190014, 42.828495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182621, 30.404657, 42.932594>,  <36.226444, 30.762398, 43.106091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182621, 30.404657, 42.932594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014001, -0.434939, 0.900351,
		-0.993882, 0.104709, 0.035127,
		-0.109553, -0.894351, -0.433745,
		36.149754, 30.136353, 42.802471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738148, 30.393982, 43.470325>,  <36.226444, 30.762398, 43.106091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738148, 30.393982, 43.470325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913124, 30.102377, 43.259727>,  <36.018108, 29.927414, 43.133369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913124, 30.102377, 43.259727>,  <35.738148, 30.393982, 43.470325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913124, 30.102377, 43.259727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016354, -0.591831, 0.805896,
		-0.899100, -0.343919, -0.270811,
		0.437437, -0.729010, -0.526491,
		36.044353, 29.883675, 43.101780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330105, 29.711533, 43.480324>,  <35.738148, 30.393982, 43.470325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330105, 29.711533, 43.480324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700619, 29.590782, 43.390106>,  <35.922928, 29.518332, 43.335976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700619, 29.590782, 43.390106>,  <35.330105, 29.711533, 43.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700619, 29.590782, 43.390106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037139, -0.668758, 0.742552,
		-0.374993, -0.679437, -0.630670,
		0.926283, -0.301875, -0.225546,
		35.978504, 29.500219, 43.322441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338917, 28.977650, 43.517818>,  <35.330105, 29.711533, 43.480324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338917, 28.977650, 43.517818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732296, 29.044216, 43.546501>,  <35.968323, 29.084156, 43.563709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732296, 29.044216, 43.546501>,  <35.338917, 28.977650, 43.517818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732296, 29.044216, 43.546501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042624, -0.597048, 0.801072,
		0.176121, -0.784755, -0.594258,
		0.983446, 0.166415, 0.071703,
		36.027328, 29.094141, 43.568012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613300, 28.330160, 43.561092>,  <35.338917, 28.977650, 43.517818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613300, 28.330160, 43.561092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867401, 28.584963, 43.735760>,  <36.019859, 28.737844, 43.840561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867401, 28.584963, 43.735760>,  <35.613300, 28.330160, 43.561092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867401, 28.584963, 43.735760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087242, -0.620975, 0.778961,
		0.767363, -0.456739, -0.450048,
		0.635250, 0.637009, 0.436667,
		36.057976, 28.776066, 43.866760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136597, 27.894283, 43.791073>,  <35.613300, 28.330160, 43.561092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136597, 27.894283, 43.791073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202587, 28.236221, 43.987858>,  <36.242180, 28.441383, 44.105927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202587, 28.236221, 43.987858>,  <36.136597, 27.894283, 43.791073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202587, 28.236221, 43.987858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267163, -0.518879, 0.812027,
		0.949424, -0.002533, -0.313986,
		0.164977, 0.854844, 0.491960,
		36.252079, 28.492674, 44.135445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739613, 27.814384, 44.193714>,  <36.136597, 27.894283, 43.791073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739613, 27.814384, 44.193714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560352, 28.129738, 44.362293>,  <36.452797, 28.318949, 44.463440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560352, 28.129738, 44.362293>,  <36.739613, 27.814384, 44.193714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560352, 28.129738, 44.362293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196360, -0.373115, 0.906768,
		0.872127, 0.489122, 0.012404,
		-0.448148, 0.788382, 0.421447,
		36.425907, 28.366253, 44.488728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211475, 28.166222, 44.694920>,  <36.739613, 27.814384, 44.193714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211475, 28.166222, 44.694920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849945, 28.251406, 44.843380>,  <36.633026, 28.302517, 44.932457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849945, 28.251406, 44.843380>,  <37.211475, 28.166222, 44.694920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849945, 28.251406, 44.843380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311971, -0.265716, 0.912178,
		0.292878, 0.940235, 0.173723,
		-0.903823, 0.212960, 0.371149,
		36.578796, 28.315294, 44.954723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361828, 28.399519, 45.363647>,  <37.211475, 28.166222, 44.694920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361828, 28.399519, 45.363647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969864, 28.321585, 45.380733>,  <36.734688, 28.274824, 45.390984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969864, 28.321585, 45.380733>,  <37.361828, 28.399519, 45.363647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969864, 28.321585, 45.380733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105051, -0.322093, 0.940862,
		-0.169558, 0.926442, 0.336088,
		-0.979905, -0.194837, 0.042711,
		36.675892, 28.263134, 45.393547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759193, 28.647709, 45.976677>,  <37.361828, 28.399519, 45.363647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759193, 28.647709, 45.976677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157997, 28.624651, 45.997288>,  <38.397278, 28.610815, 46.009655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157997, 28.624651, 45.997288>,  <37.759193, 28.647709, 45.976677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157997, 28.624651, 45.997288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071100, 0.421668, -0.903959,
		0.030382, 0.904916, 0.424504,
		0.997006, -0.057646, 0.051528,
		38.457100, 28.607357, 46.012745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024845, 29.260107, 45.969158>,  <37.759193, 28.647709, 45.976677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024845, 29.260107, 45.969158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328682, 29.059504, 45.803501>,  <38.510983, 28.939142, 45.704109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328682, 29.059504, 45.803501>,  <38.024845, 29.260107, 45.969158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328682, 29.059504, 45.803501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015160, 0.650223, -0.759592,
		0.650223, 0.570701, 0.501507,
		0.759592, -0.501507, -0.414138,
		38.556561, 28.909052, 45.679260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391479, 29.755266, 45.606354>,  <38.024845, 29.260107, 45.969158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391479, 29.755266, 45.606354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561501, 29.423689, 45.460926>,  <38.663513, 29.224743, 45.373669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561501, 29.423689, 45.460926>,  <38.391479, 29.755266, 45.606354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561501, 29.423689, 45.460926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252190, 0.494211, -0.831959,
		0.869328, 0.261937, 0.419116,
		0.425053, -0.828942, -0.363573,
		38.689014, 29.175007, 45.351852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152073, 29.890348, 45.448479>,  <38.391479, 29.755266, 45.606354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152073, 29.890348, 45.448479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015007, 29.590694, 45.221718>,  <38.932766, 29.410902, 45.085663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015007, 29.590694, 45.221718>,  <39.152073, 29.890348, 45.448479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015007, 29.590694, 45.221718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334438, 0.466630, -0.818784,
		0.877912, -0.470164, 0.090639,
		-0.342668, -0.749134, -0.566901,
		38.912205, 29.365953, 45.051647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696495, 29.755844, 44.977310>,  <39.152073, 29.890348, 45.448479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696495, 29.755844, 44.977310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376068, 29.567862, 44.829025>,  <39.183811, 29.455072, 44.740055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376068, 29.567862, 44.829025>,  <39.696495, 29.755844, 44.977310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376068, 29.567862, 44.829025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191611, 0.385406, -0.902633,
		0.567074, -0.794105, -0.218688,
		-0.801069, -0.469957, -0.370713,
		39.135746, 29.426874, 44.717812>
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
