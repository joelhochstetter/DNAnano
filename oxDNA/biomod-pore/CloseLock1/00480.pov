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
	<24.180122, 35.362091, 35.047295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.187195, 34.982445, 34.921520>,  <24.191439, 34.754658, 34.846054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.187195, 34.982445, 34.921520>,  <24.180122, 35.362091, 35.047295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.187195, 34.982445, 34.921520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531055, -0.275378, 0.801341,
		-0.847153, 0.152815, -0.508900,
		0.017683, -0.949113, -0.314441,
		24.192499, 34.697712, 34.827187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446243, 36.068172, 35.066860>,  <24.180122, 35.362091, 35.047295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446243, 36.068172, 35.066860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599918, 36.425415, 34.973251>,  <24.692123, 36.639759, 34.917088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599918, 36.425415, 34.973251>,  <24.446243, 36.068172, 35.066860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599918, 36.425415, 34.973251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913965, -0.403769, -0.040482,
		-0.130646, -0.198335, -0.971388,
		0.384187, 0.893103, -0.234022,
		24.715174, 36.693348, 34.903046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.961746, 36.073891, 34.600822>,  <24.446243, 36.068172, 35.066860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.961746, 36.073891, 34.600822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037195, 36.423073, 34.780769>,  <25.082464, 36.632580, 34.888737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037195, 36.423073, 34.780769>,  <24.961746, 36.073891, 34.600822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037195, 36.423073, 34.780769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971184, -0.233768, 0.046418,
		0.145684, 0.428147, -0.891889,
		0.188621, 0.872951, 0.449865,
		25.093782, 36.684959, 34.915730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424742, 36.557045, 34.303535>,  <24.961746, 36.073891, 34.600822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424742, 36.557045, 34.303535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467785, 36.606186, 34.698166>,  <25.493610, 36.635670, 34.934944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467785, 36.606186, 34.698166>,  <25.424742, 36.557045, 34.303535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467785, 36.606186, 34.698166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974194, -0.211068, -0.079976,
		0.198409, 0.969720, -0.142396,
		0.107609, 0.122853, 0.986574,
		25.500069, 36.643044, 34.994137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867918, 37.135445, 34.570320>,  <25.424742, 36.557045, 34.303535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867918, 37.135445, 34.570320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864424, 36.796402, 34.782539>,  <25.862328, 36.592976, 34.909870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864424, 36.796402, 34.782539>,  <25.867918, 37.135445, 34.570320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864424, 36.796402, 34.782539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998276, -0.038191, -0.044573,
		0.058043, 0.529246, 0.846481,
		-0.008738, -0.847609, 0.530550,
		25.861803, 36.542118, 34.941704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302210, 37.295910, 35.073780>,  <25.867918, 37.135445, 34.570320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302210, 37.295910, 35.073780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262054, 36.905098, 34.998596>,  <26.237961, 36.670609, 34.953484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262054, 36.905098, 34.998596>,  <26.302210, 37.295910, 35.073780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262054, 36.905098, 34.998596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993873, -0.107255, 0.026688,
		-0.046235, -0.184131, 0.981814,
		-0.100390, -0.977032, -0.187962,
		26.231937, 36.611988, 34.942207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047119, 37.339779, 34.754131>,  <26.302210, 37.295910, 35.073780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047119, 37.339779, 34.754131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397676, 37.526157, 34.705421>,  <27.608011, 37.637985, 34.676197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397676, 37.526157, 34.705421>,  <27.047119, 37.339779, 34.754131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397676, 37.526157, 34.705421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072262, -0.377218, -0.923301,
		-0.476148, 0.800373, -0.364261,
		0.876391, 0.465950, -0.121774,
		27.660593, 37.665943, 34.668888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042021, 37.594585, 34.145348>,  <27.047119, 37.339779, 34.754131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042021, 37.594585, 34.145348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437662, 37.629700, 34.192619>,  <27.675047, 37.650768, 34.220982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437662, 37.629700, 34.192619>,  <27.042021, 37.594585, 34.145348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437662, 37.629700, 34.192619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132311, -0.178068, -0.975082,
		-0.064556, 0.980094, -0.187743,
		0.989104, 0.087788, 0.118182,
		27.734394, 37.656036, 34.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314705, 38.173225, 33.606865>,  <27.042021, 37.594585, 34.145348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314705, 38.173225, 33.606865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581396, 37.895859, 33.716148>,  <27.741411, 37.729439, 33.781719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581396, 37.895859, 33.716148>,  <27.314705, 38.173225, 33.606865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581396, 37.895859, 33.716148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025152, -0.345430, -0.938107,
		0.744877, 0.632334, -0.212867,
		0.666728, -0.693420, 0.273207,
		27.781414, 37.687832, 33.798111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818138, 38.190029, 33.154327>,  <27.314705, 38.173225, 33.606865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818138, 38.190029, 33.154327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847374, 37.815693, 33.292229>,  <27.864916, 37.591091, 33.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847374, 37.815693, 33.292229>,  <27.818138, 38.190029, 33.154327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847374, 37.815693, 33.292229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044912, -0.348412, -0.936265,
		0.996314, 0.052949, -0.067496,
		0.073091, -0.935845, 0.344750,
		27.869301, 37.534939, 33.395653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099379, 37.839634, 32.601307>,  <27.818138, 38.190029, 33.154327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099379, 37.839634, 32.601307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987932, 37.535107, 32.835491>,  <27.921064, 37.352390, 32.976002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987932, 37.535107, 32.835491>,  <28.099379, 37.839634, 32.601307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987932, 37.535107, 32.835491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088651, -0.586610, -0.805003,
		0.956302, -0.276190, 0.095948,
		-0.278617, -0.761320, 0.585461,
		27.904346, 37.306709, 33.011131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510159, 37.235687, 32.476925>,  <28.099379, 37.839634, 32.601307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510159, 37.235687, 32.476925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154964, 37.111710, 32.612816>,  <27.941847, 37.037323, 32.694351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154964, 37.111710, 32.612816>,  <28.510159, 37.235687, 32.476925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154964, 37.111710, 32.612816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045296, -0.676199, -0.735325,
		0.457633, -0.668347, 0.586416,
		-0.887986, -0.309947, 0.339724,
		27.888569, 37.018726, 32.714733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569439, 36.478233, 32.443012>,  <28.510159, 37.235687, 32.476925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569439, 36.478233, 32.443012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176500, 36.549660, 32.465321>,  <27.940737, 36.592514, 32.478706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176500, 36.549660, 32.465321>,  <28.569439, 36.478233, 32.443012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176500, 36.549660, 32.465321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169893, -0.726785, -0.665522,
		-0.078307, -0.663248, 0.744292,
		-0.982346, 0.178565, 0.055769,
		27.881796, 36.603230, 32.482052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286709, 35.843082, 32.456200>,  <28.569439, 36.478233, 32.443012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286709, 35.843082, 32.456200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972824, 36.070297, 32.356953>,  <27.784494, 36.206627, 32.297405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972824, 36.070297, 32.356953>,  <28.286709, 35.843082, 32.456200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972824, 36.070297, 32.356953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304029, -0.701533, -0.644529,
		-0.540181, -0.430332, 0.723200,
		-0.784710, 0.568036, -0.248122,
		27.737411, 36.240707, 32.282516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615194, 35.472519, 32.647457>,  <28.286709, 35.843082, 32.456200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615194, 35.472519, 32.647457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540184, 35.751278, 32.370567>,  <27.495178, 35.918533, 32.204433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540184, 35.751278, 32.370567>,  <27.615194, 35.472519, 32.647457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540184, 35.751278, 32.370567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391329, -0.699388, -0.598095,
		-0.900942, 0.158731, 0.403866,
		-0.187523, 0.696894, -0.692224,
		27.483927, 35.960346, 32.162899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010157, 35.209492, 32.337425>,  <27.615194, 35.472519, 32.647457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010157, 35.209492, 32.337425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125757, 35.483261, 32.069683>,  <27.195118, 35.647522, 31.909039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125757, 35.483261, 32.069683>,  <27.010157, 35.209492, 32.337425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125757, 35.483261, 32.069683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299389, -0.599503, -0.742268,
		-0.909310, 0.414914, 0.031653,
		0.289001, 0.684428, -0.669355,
		27.212458, 35.688591, 31.868877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536024, 35.094036, 31.776419>,  <27.010157, 35.209492, 32.337425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536024, 35.094036, 31.776419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837934, 35.304901, 31.620258>,  <27.019081, 35.431419, 31.526562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837934, 35.304901, 31.620258>,  <26.536024, 35.094036, 31.776419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837934, 35.304901, 31.620258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028430, -0.620868, -0.783400,
		-0.655367, 0.580192, -0.483603,
		0.754776, 0.527163, -0.390401,
		27.064367, 35.463051, 31.503138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375793, 35.285160, 31.147715>,  <26.536024, 35.094036, 31.776419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375793, 35.285160, 31.147715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773636, 35.318077, 31.122469>,  <27.012342, 35.337826, 31.107321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773636, 35.318077, 31.122469>,  <26.375793, 35.285160, 31.147715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773636, 35.318077, 31.122469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002137, -0.592188, -0.805797,
		-0.103684, 0.801587, -0.588819,
		0.994608, 0.082290, -0.063113,
		27.072018, 35.342766, 31.103535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436605, 35.246922, 30.484770>,  <26.375793, 35.285160, 31.147715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436605, 35.246922, 30.484770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798124, 35.134998, 30.614300>,  <27.015036, 35.067844, 30.692019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798124, 35.134998, 30.614300>,  <26.436605, 35.246922, 30.484770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798124, 35.134998, 30.614300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090658, -0.614318, -0.783834,
		0.418251, 0.737783, -0.529851,
		0.903796, -0.279804, 0.323825,
		27.069263, 35.051056, 30.711447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962627, 35.405041, 29.844349>,  <26.436605, 35.246922, 30.484770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962627, 35.405041, 29.844349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085476, 35.128304, 30.105740>,  <27.159185, 34.962261, 30.262573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085476, 35.128304, 30.105740>,  <26.962627, 35.405041, 29.844349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085476, 35.128304, 30.105740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078464, -0.665916, -0.741889,
		0.948430, 0.279124, -0.150232,
		0.307121, -0.691842, 0.653476,
		27.177612, 34.920750, 30.301783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621191, 35.162235, 29.518841>,  <26.962627, 35.405041, 29.844349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621191, 35.162235, 29.518841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503572, 34.888905, 29.786152>,  <27.433001, 34.724907, 29.946539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503572, 34.888905, 29.786152>,  <27.621191, 35.162235, 29.518841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503572, 34.888905, 29.786152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219748, -0.728792, -0.648516,
		0.930187, -0.043841, 0.364460,
		-0.294047, -0.683330, 0.668279,
		27.415358, 34.683907, 29.986635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174225, 34.602531, 29.497841>,  <27.621191, 35.162235, 29.518841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174225, 34.602531, 29.497841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862076, 34.405464, 29.651882>,  <27.674788, 34.287224, 29.744307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862076, 34.405464, 29.651882>,  <28.174225, 34.602531, 29.497841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862076, 34.405464, 29.651882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328208, -0.846904, -0.418370,
		0.532259, -0.200091, 0.822596,
		-0.780371, -0.492664, 0.385101,
		27.627964, 34.257664, 29.767412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411587, 33.992031, 29.905970>,  <28.174225, 34.602531, 29.497841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411587, 33.992031, 29.905970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025700, 33.931992, 29.819448>,  <27.794167, 33.895966, 29.767536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025700, 33.931992, 29.819448>,  <28.411587, 33.992031, 29.905970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025700, 33.931992, 29.819448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230277, -0.879330, -0.416835,
		-0.127632, -0.451938, 0.882872,
		-0.964719, -0.150103, -0.216302,
		27.736284, 33.886959, 29.754559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364246, 33.346020, 30.037701>,  <28.411587, 33.992031, 29.905970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364246, 33.346020, 30.037701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038841, 33.410805, 29.814285>,  <27.843599, 33.449677, 29.680235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038841, 33.410805, 29.814285>,  <28.364246, 33.346020, 30.037701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038841, 33.410805, 29.814285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303733, -0.700700, -0.645574,
		-0.495929, -0.694829, 0.520833,
		-0.813511, 0.161965, -0.558540,
		27.794788, 33.459393, 29.646723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104631, 32.702179, 29.767694>,  <28.364246, 33.346020, 30.037701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104631, 32.702179, 29.767694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933220, 32.976147, 29.531982>,  <27.830374, 33.140526, 29.390556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933220, 32.976147, 29.531982>,  <28.104631, 32.702179, 29.767694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933220, 32.976147, 29.531982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266679, -0.527262, -0.806769,
		-0.863276, -0.502872, 0.043293,
		-0.428528, 0.684919, -0.589279,
		27.804661, 33.181622, 29.355200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752075, 32.336693, 29.221977>,  <28.104631, 32.702179, 29.767694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752075, 32.336693, 29.221977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861029, 32.709541, 29.126511>,  <27.926401, 32.933250, 29.069231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861029, 32.709541, 29.126511>,  <27.752075, 32.336693, 29.221977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861029, 32.709541, 29.126511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390856, -0.333847, -0.857775,
		-0.879225, 0.140362, -0.455259,
		0.272386, 0.932118, -0.238665,
		27.942745, 32.989178, 29.054911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495001, 32.407734, 28.486300>,  <27.752075, 32.336693, 29.221977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495001, 32.407734, 28.486300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802303, 32.650810, 28.566795>,  <27.986685, 32.796658, 28.615093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802303, 32.650810, 28.566795>,  <27.495001, 32.407734, 28.486300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802303, 32.650810, 28.566795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408523, -0.223398, -0.884987,
		-0.492841, 0.762107, -0.419882,
		0.768256, 0.607689, 0.201238,
		28.032780, 32.833118, 28.627167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837204, 32.716095, 27.887054>,  <27.495001, 32.407734, 28.486300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837204, 32.716095, 27.887054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141125, 32.798500, 28.133715>,  <28.323477, 32.847942, 28.281712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141125, 32.798500, 28.133715>,  <27.837204, 32.716095, 27.887054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141125, 32.798500, 28.133715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650124, -0.249877, -0.717565,
		0.006261, 0.946108, -0.323790,
		0.759802, 0.206011, 0.616652,
		28.369066, 32.860302, 28.318710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226377, 33.332100, 27.679153>,  <27.837204, 32.716095, 27.887054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226377, 33.332100, 27.679153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443186, 33.059395, 27.875689>,  <28.573271, 32.895771, 27.993608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443186, 33.059395, 27.875689>,  <28.226377, 33.332100, 27.679153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443186, 33.059395, 27.875689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542428, -0.162736, -0.824189,
		0.641862, 0.713241, 0.281602,
		0.542019, -0.681765, 0.491337,
		28.605791, 32.854866, 28.023090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774391, 33.038715, 27.190760>,  <28.226377, 33.332100, 27.679153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774391, 33.038715, 27.190760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891457, 32.863895, 27.530956>,  <28.961697, 32.759003, 27.735073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891457, 32.863895, 27.530956>,  <28.774391, 33.038715, 27.190760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891457, 32.863895, 27.530956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707416, -0.499466, -0.500097,
		0.643359, 0.748010, 0.163002,
		0.292663, -0.437052, 0.850490,
		28.979256, 32.732780, 27.786104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519613, 33.008556, 27.133514>,  <28.774391, 33.038715, 27.190760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519613, 33.008556, 27.133514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424652, 32.750080, 27.423641>,  <29.367676, 32.594994, 27.597717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424652, 32.750080, 27.423641>,  <29.519613, 33.008556, 27.133514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424652, 32.750080, 27.423641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763601, -0.585673, -0.271847,
		0.600461, 0.489315, 0.632469,
		-0.237401, -0.646187, 0.725316,
		29.353432, 32.556225, 27.641235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175743, 32.913528, 27.436932>,  <29.519613, 33.008556, 27.133514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175743, 32.913528, 27.436932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922544, 32.610775, 27.501976>,  <29.770626, 32.429123, 27.541002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922544, 32.610775, 27.501976>,  <30.175743, 32.913528, 27.436932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922544, 32.610775, 27.501976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752273, -0.650969, -0.101610,
		0.182762, 0.058011, 0.981444,
		-0.632995, -0.756884, 0.162613,
		29.732645, 32.383709, 27.550760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587610, 32.360233, 27.708961>,  <30.175743, 32.913528, 27.436932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587610, 32.360233, 27.708961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241301, 32.170967, 27.643789>,  <30.033514, 32.057407, 27.604687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241301, 32.170967, 27.643789>,  <30.587610, 32.360233, 27.708961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241301, 32.170967, 27.643789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491708, -0.864861, -0.101186,
		-0.093033, -0.167718, 0.981436,
		-0.865776, -0.473167, -0.162929,
		29.981567, 32.029018, 27.594912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105722, 32.718380, 28.153044>,  <30.587610, 32.360233, 27.708961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105722, 32.718380, 28.153044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433455, 32.927757, 28.059490>,  <31.630095, 33.053383, 28.003359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433455, 32.927757, 28.059490>,  <31.105722, 32.718380, 28.153044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433455, 32.927757, 28.059490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117680, 0.245713, 0.962173,
		0.561114, -0.815861, 0.139721,
		0.819331, 0.523446, -0.233883,
		31.679255, 33.084789, 27.989325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455307, 32.649567, 28.700623>,  <31.105722, 32.718380, 28.153044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455307, 32.649567, 28.700623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693783, 32.914288, 28.518820>,  <31.836868, 33.073120, 28.409739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693783, 32.914288, 28.518820>,  <31.455307, 32.649567, 28.700623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693783, 32.914288, 28.518820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005803, 0.562552, 0.826742,
		0.802823, -0.495533, 0.331547,
		0.596190, 0.661802, -0.454505,
		31.872641, 33.112827, 28.382469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144005, 32.733513, 29.056692>,  <31.455307, 32.649567, 28.700623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144005, 32.733513, 29.056692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990768, 33.056602, 28.877443>,  <31.898827, 33.250458, 28.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990768, 33.056602, 28.877443>,  <32.144005, 32.733513, 29.056692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990768, 33.056602, 28.877443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015114, 0.490551, 0.871282,
		0.923586, 0.327010, -0.200135,
		-0.383094, 0.807728, -0.448123,
		31.875841, 33.298920, 28.743006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434155, 33.293308, 29.304878>,  <32.144005, 32.733513, 29.056692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434155, 33.293308, 29.304878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109810, 33.477867, 29.160868>,  <31.915203, 33.588600, 29.074461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109810, 33.477867, 29.160868>,  <32.434155, 33.293308, 29.304878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109810, 33.477867, 29.160868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027383, 0.584598, 0.810861,
		0.584598, 0.667354, -0.461394,
		-0.810861, 0.461394, -0.360029,
		31.866552, 33.616283, 29.052858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496548, 33.962700, 29.352579>,  <32.434155, 33.293308, 29.304878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496548, 33.962700, 29.352579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097980, 33.941116, 29.326513>,  <31.858841, 33.928165, 29.310875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097980, 33.941116, 29.326513>,  <32.496548, 33.962700, 29.352579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097980, 33.941116, 29.326513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083312, 0.759714, 0.644898,
		0.014710, 0.648015, -0.761485,
		-0.996415, -0.053955, -0.065163,
		31.799055, 33.924931, 29.306965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285812, 34.648540, 29.151360>,  <32.496548, 33.962700, 29.352579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285812, 34.648540, 29.151360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982805, 34.456551, 29.328354>,  <31.801001, 34.341358, 29.434551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982805, 34.456551, 29.328354>,  <32.285812, 34.648540, 29.151360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982805, 34.456551, 29.328354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128854, 0.774410, 0.619424,
		-0.639973, 0.412208, -0.648475,
		-0.757516, -0.479973, 0.442487,
		31.755550, 34.312557, 29.461100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711634, 35.152336, 29.243883>,  <32.285812, 34.648540, 29.151360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711634, 35.152336, 29.243883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672041, 34.840710, 29.491514>,  <31.648285, 34.653732, 29.640093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672041, 34.840710, 29.491514>,  <31.711634, 35.152336, 29.243883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672041, 34.840710, 29.491514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056174, 0.625515, 0.778187,
		-0.993502, 0.042249, -0.105678,
		-0.098981, -0.779067, 0.619077,
		31.642347, 34.606991, 29.677237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057600, 35.300236, 29.583191>,  <31.711634, 35.152336, 29.243883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057600, 35.300236, 29.583191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275997, 35.043423, 29.798483>,  <31.407036, 34.889336, 29.927658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275997, 35.043423, 29.798483>,  <31.057600, 35.300236, 29.583191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275997, 35.043423, 29.798483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230541, 0.502501, 0.833273,
		-0.805447, -0.579044, 0.126347,
		0.545991, -0.642029, 0.538231,
		31.439795, 34.850815, 29.959951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721088, 35.249668, 30.248863>,  <31.057600, 35.300236, 29.583191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721088, 35.249668, 30.248863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100212, 35.132229, 30.298599>,  <31.327686, 35.061768, 30.328440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100212, 35.132229, 30.298599>,  <30.721088, 35.249668, 30.248863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100212, 35.132229, 30.298599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025428, 0.458336, 0.888415,
		-0.317824, -0.838886, 0.441880,
		0.947809, -0.293596, 0.124339,
		31.384554, 35.044151, 30.335901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788418, 35.347240, 30.888727>,  <30.721088, 35.249668, 30.248863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788418, 35.347240, 30.888727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173903, 35.289021, 30.799219>,  <31.405193, 35.254089, 30.745514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173903, 35.289021, 30.799219>,  <30.788418, 35.347240, 30.888727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173903, 35.289021, 30.799219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256796, 0.276562, 0.926050,
		-0.072903, -0.949909, 0.303904,
		0.963712, -0.145553, -0.223771,
		31.463017, 35.245354, 30.732088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128002, 34.834641, 31.340635>,  <30.788418, 35.347240, 30.888727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128002, 34.834641, 31.340635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405134, 35.089775, 31.206081>,  <31.571413, 35.242855, 31.125349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405134, 35.089775, 31.206081>,  <31.128002, 34.834641, 31.340635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405134, 35.089775, 31.206081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204425, 0.273622, 0.939862,
		0.691518, -0.719931, 0.059185,
		0.692830, 0.637833, -0.336387,
		31.612984, 35.281124, 31.105165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533821, 34.911739, 31.886885>,  <31.128002, 34.834641, 31.340635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533821, 34.911739, 31.886885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662336, 35.217251, 31.662951>,  <31.739445, 35.400558, 31.528589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662336, 35.217251, 31.662951>,  <31.533821, 34.911739, 31.886885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662336, 35.217251, 31.662951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291034, 0.482931, 0.825880,
		0.901151, -0.428276, -0.067125,
		0.321288, 0.763778, -0.559837,
		31.758722, 35.446384, 31.494999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125416, 35.102852, 32.186493>,  <31.533821, 34.911739, 31.886885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125416, 35.102852, 32.186493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011951, 35.425568, 31.979174>,  <31.943872, 35.619198, 31.854782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011951, 35.425568, 31.979174>,  <32.125416, 35.102852, 32.186493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011951, 35.425568, 31.979174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085437, 0.559613, 0.824338,
		0.955111, 0.189550, -0.227669,
		-0.283661, 0.806786, -0.518298,
		31.926853, 35.667603, 31.823685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505653, 35.598095, 32.472111>,  <32.125416, 35.102852, 32.186493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505653, 35.598095, 32.472111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214867, 35.810452, 32.297901>,  <32.040394, 35.937866, 32.193375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214867, 35.810452, 32.297901>,  <32.505653, 35.598095, 32.472111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214867, 35.810452, 32.297901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189103, 0.454940, 0.870212,
		0.660125, 0.714970, -0.230332,
		-0.726963, 0.530892, -0.435520,
		31.996778, 35.969719, 32.167244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588520, 36.243511, 32.748817>,  <32.505653, 35.598095, 32.472111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588520, 36.243511, 32.748817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226383, 36.255516, 32.579369>,  <32.009102, 36.262718, 32.477699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226383, 36.255516, 32.579369>,  <32.588520, 36.243511, 32.748817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226383, 36.255516, 32.579369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359419, 0.477186, 0.801942,
		0.226214, 0.878290, -0.421229,
		-0.905342, 0.030013, -0.423621,
		31.954781, 36.264519, 32.452282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440762, 36.954716, 32.626759>,  <32.588520, 36.243511, 32.748817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440762, 36.954716, 32.626759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093048, 36.759071, 32.655357>,  <31.884418, 36.641685, 32.672516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093048, 36.759071, 32.655357>,  <32.440762, 36.954716, 32.626759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093048, 36.759071, 32.655357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305121, 0.644747, 0.700858,
		-0.388895, 0.587431, -0.709708,
		-0.869288, -0.489107, 0.071502,
		31.832262, 36.612339, 32.676807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869833, 37.470783, 32.651257>,  <32.440762, 36.954716, 32.626759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869833, 37.470783, 32.651257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691261, 37.140980, 32.790333>,  <31.584118, 36.943096, 32.873779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691261, 37.140980, 32.790333>,  <31.869833, 37.470783, 32.651257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691261, 37.140980, 32.790333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433308, 0.539155, 0.722189,
		-0.782908, 0.171750, -0.597960,
		-0.446429, -0.824508, 0.347688,
		31.557333, 36.893627, 32.894638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262672, 37.746834, 32.863949>,  <31.869833, 37.470783, 32.651257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262672, 37.746834, 32.863949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277779, 37.390179, 33.044418>,  <31.286842, 37.176186, 33.152699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277779, 37.390179, 33.044418>,  <31.262672, 37.746834, 32.863949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277779, 37.390179, 33.044418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429126, 0.393274, 0.813134,
		-0.902455, -0.224316, -0.367774,
		0.037763, -0.891638, 0.451172,
		31.289108, 37.122688, 33.179771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602379, 37.543423, 33.121971>,  <31.262672, 37.746834, 32.863949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602379, 37.543423, 33.121971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859209, 37.321198, 33.333286>,  <31.013308, 37.187862, 33.460075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859209, 37.321198, 33.333286>,  <30.602379, 37.543423, 33.121971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859209, 37.321198, 33.333286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477689, 0.249056, 0.842487,
		-0.599627, -0.793298, -0.105473,
		0.642075, -0.555561, 0.528291,
		31.051832, 37.154530, 33.491776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205050, 37.261105, 33.638767>,  <30.602379, 37.543423, 33.121971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205050, 37.261105, 33.638767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561228, 37.227890, 33.817745>,  <30.774935, 37.207962, 33.925133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561228, 37.227890, 33.817745>,  <30.205050, 37.261105, 33.638767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561228, 37.227890, 33.817745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418590, 0.236367, 0.876877,
		-0.178573, -0.968110, 0.175715,
		0.890446, -0.083034, 0.447449,
		30.828362, 37.202980, 33.951981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152298, 36.928272, 34.278965>,  <30.205050, 37.261105, 33.638767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152298, 36.928272, 34.278965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486315, 37.139160, 34.341888>,  <30.686726, 37.265694, 34.379642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486315, 37.139160, 34.341888>,  <30.152298, 36.928272, 34.278965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486315, 37.139160, 34.341888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383929, 0.353585, 0.852981,
		0.394090, -0.772667, 0.497674,
		0.835040, 0.527222, 0.157305,
		30.736828, 37.297325, 34.389080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226227, 36.657032, 34.922588>,  <30.152298, 36.928272, 34.278965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226227, 36.657032, 34.922588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460291, 36.970825, 34.840446>,  <30.600729, 37.159100, 34.791161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460291, 36.970825, 34.840446>,  <30.226227, 36.657032, 34.922588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460291, 36.970825, 34.840446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226081, 0.401025, 0.887731,
		0.778764, -0.473039, 0.412021,
		0.585162, 0.784483, -0.205359,
		30.635839, 37.206169, 34.778839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601248, 36.787838, 35.482204>,  <30.226227, 36.657032, 34.922588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601248, 36.787838, 35.482204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627777, 37.143913, 35.301910>,  <30.643694, 37.357559, 35.193733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627777, 37.143913, 35.301910>,  <30.601248, 36.787838, 35.482204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627777, 37.143913, 35.301910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246538, 0.452345, 0.857090,
		0.966861, 0.054280, 0.249466,
		0.066322, 0.890190, -0.450737,
		30.647675, 37.410969, 35.166691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834158, 37.269478, 35.948910>,  <30.601248, 36.787838, 35.482204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834158, 37.269478, 35.948910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681410, 37.512428, 35.670265>,  <30.589762, 37.658199, 35.503078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681410, 37.512428, 35.670265>,  <30.834158, 37.269478, 35.948910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681410, 37.512428, 35.670265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222517, 0.671143, 0.707144,
		0.897030, 0.425045, -0.121138,
		-0.381869, 0.607374, -0.696615,
		30.566849, 37.694641, 35.461281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126017, 38.049496, 36.141792>,  <30.834158, 37.269478, 35.948910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126017, 38.049496, 36.141792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805304, 38.075676, 35.904182>,  <30.612877, 38.091385, 35.761616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805304, 38.075676, 35.904182>,  <31.126017, 38.049496, 36.141792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805304, 38.075676, 35.904182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223061, 0.889378, 0.399062,
		0.554429, 0.452464, -0.698488,
		-0.801781, 0.065446, -0.594024,
		30.564770, 38.095310, 35.725975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695505, 38.491638, 35.814945>,  <31.126017, 38.049496, 36.141792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695505, 38.491638, 35.814945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723188, 38.859661, 35.660698>,  <31.739799, 39.080475, 35.568150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723188, 38.859661, 35.660698>,  <31.695505, 38.491638, 35.814945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723188, 38.859661, 35.660698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043729, 0.383375, 0.922557,
		0.996643, -0.080712, -0.013700,
		0.069209, 0.920060, -0.385617,
		31.743952, 39.135677, 35.545013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331284, 38.695751, 35.964428>,  <31.695505, 38.491638, 35.814945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331284, 38.695751, 35.964428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071793, 38.994999, 35.908627>,  <31.916098, 39.174549, 35.875145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071793, 38.994999, 35.908627>,  <32.331284, 38.695751, 35.964428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071793, 38.994999, 35.908627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395352, 0.487944, 0.778208,
		0.650266, 0.449693, -0.612315,
		-0.648730, 0.748122, -0.139507,
		31.877174, 39.219437, 35.866776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688950, 39.354462, 35.861252>,  <32.331284, 38.695751, 35.964428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688950, 39.354462, 35.861252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323090, 39.456726, 35.986504>,  <32.103573, 39.518085, 36.061653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323090, 39.456726, 35.986504>,  <32.688950, 39.354462, 35.861252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323090, 39.456726, 35.986504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401957, 0.492930, 0.771654,
		0.042933, 0.831658, -0.553625,
		-0.914651, 0.255663, 0.313128,
		32.048695, 39.533424, 36.080441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675869, 40.110119, 35.951828>,  <32.688950, 39.354462, 35.861252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675869, 40.110119, 35.951828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398338, 39.951084, 36.192001>,  <32.231819, 39.855663, 36.336105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398338, 39.951084, 36.192001>,  <32.675869, 40.110119, 35.951828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398338, 39.951084, 36.192001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367225, 0.521891, 0.769919,
		-0.619471, 0.754689, -0.216102,
		-0.693831, -0.397585, 0.600437,
		32.190189, 39.831810, 36.372131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437634, 40.712177, 36.410801>,  <32.675869, 40.110119, 35.951828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437634, 40.712177, 36.410801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345657, 40.349159, 36.551369>,  <32.290474, 40.131348, 36.635708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345657, 40.349159, 36.551369>,  <32.437634, 40.712177, 36.410801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345657, 40.349159, 36.551369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245130, 0.295439, 0.923378,
		-0.941828, 0.298463, 0.154534,
		-0.229939, -0.907544, 0.351415,
		32.276676, 40.076897, 36.656792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098099, 40.817215, 37.010147>,  <32.437634, 40.712177, 36.410801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098099, 40.817215, 37.010147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210815, 40.434113, 37.033081>,  <32.278446, 40.204250, 37.046841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210815, 40.434113, 37.033081>,  <32.098099, 40.817215, 37.010147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210815, 40.434113, 37.033081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240091, 0.128239, 0.962243,
		-0.928950, -0.257390, 0.266087,
		0.281795, -0.957760, 0.057331,
		32.295353, 40.146786, 37.050282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801966, 40.570957, 37.653870>,  <32.098099, 40.817215, 37.010147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801966, 40.570957, 37.653870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115398, 40.351086, 37.538036>,  <32.303459, 40.219162, 37.468536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115398, 40.351086, 37.538036>,  <31.801966, 40.570957, 37.653870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115398, 40.351086, 37.538036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403559, 0.095919, 0.909912,
		-0.472379, -0.829854, 0.296986,
		0.783580, -0.549675, -0.289585,
		32.350471, 40.186184, 37.451160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923428, 40.088238, 38.275772>,  <31.801966, 40.570957, 37.653870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923428, 40.088238, 38.275772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251221, 40.094467, 38.046616>,  <32.447895, 40.098206, 37.909122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251221, 40.094467, 38.046616>,  <31.923428, 40.088238, 38.275772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251221, 40.094467, 38.046616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569106, -0.140002, 0.810258,
		-0.067584, -0.990029, -0.123595,
		0.819482, 0.015578, -0.572893,
		32.497066, 40.099140, 37.874748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364849, 39.436886, 38.479836>,  <31.923428, 40.088238, 38.275772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364849, 39.436886, 38.479836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606163, 39.717251, 38.327641>,  <32.750954, 39.885468, 38.236324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606163, 39.717251, 38.327641>,  <32.364849, 39.436886, 38.479836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606163, 39.717251, 38.327641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739975, -0.314004, 0.594843,
		0.297456, -0.640412, -0.708090,
		0.603288, 0.700909, -0.380487,
		32.787148, 39.927525, 38.213493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028133, 39.109722, 38.572395>,  <32.364849, 39.436886, 38.479836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028133, 39.109722, 38.572395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115433, 39.494930, 38.509197>,  <33.167812, 39.726055, 38.471279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115433, 39.494930, 38.509197>,  <33.028133, 39.109722, 38.572395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115433, 39.494930, 38.509197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776772, -0.073424, 0.625487,
		0.590755, -0.259238, -0.764071,
		0.218251, 0.963018, -0.157993,
		33.180908, 39.783836, 38.461800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731659, 39.060253, 38.596600>,  <33.028133, 39.109722, 38.572395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731659, 39.060253, 38.596600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665657, 39.453381, 38.629700>,  <33.626057, 39.689255, 38.649559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665657, 39.453381, 38.629700>,  <33.731659, 39.060253, 38.596600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665657, 39.453381, 38.629700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692280, 0.055645, 0.719481,
		0.702511, 0.176007, -0.689565,
		-0.165004, 0.982815, 0.082755,
		33.616158, 39.748226, 38.654526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426834, 39.395287, 38.627781>,  <33.731659, 39.060253, 38.596600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426834, 39.395287, 38.627781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174870, 39.659565, 38.791092>,  <34.023693, 39.818134, 38.889080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174870, 39.659565, 38.791092>,  <34.426834, 39.395287, 38.627781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174870, 39.659565, 38.791092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579589, 0.049951, 0.813376,
		0.517003, 0.748987, -0.414399,
		-0.629908, 0.660699, 0.408280,
		33.985897, 39.857777, 38.913574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898800, 39.901039, 38.909515>,  <34.426834, 39.395287, 38.627781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898800, 39.901039, 38.909515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541725, 39.918606, 39.088924>,  <34.327480, 39.929146, 39.196571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541725, 39.918606, 39.088924>,  <34.898800, 39.901039, 38.909515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541725, 39.918606, 39.088924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430964, -0.207900, 0.878093,
		0.131811, 0.977164, 0.166664,
		-0.892690, 0.043916, 0.448526,
		34.273918, 39.931782, 39.223480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050426, 40.066063, 39.537537>,  <34.898800, 39.901039, 38.909515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050426, 40.066063, 39.537537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675560, 39.980202, 39.647545>,  <34.450638, 39.928684, 39.713551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675560, 39.980202, 39.647545>,  <35.050426, 40.066063, 39.537537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675560, 39.980202, 39.647545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313439, -0.171879, 0.933924,
		-0.153197, 0.961448, 0.228360,
		-0.937169, -0.214652, 0.275024,
		34.394409, 39.915806, 39.730053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958344, 40.450184, 40.052078>,  <35.050426, 40.066063, 39.537537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958344, 40.450184, 40.052078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675785, 40.167969, 40.074780>,  <34.506248, 39.998642, 40.088402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675785, 40.167969, 40.074780>,  <34.958344, 40.450184, 40.052078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675785, 40.167969, 40.074780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150445, -0.071314, 0.986043,
		-0.691640, 0.705079, 0.156520,
		-0.706400, -0.705534, 0.056752,
		34.463863, 39.956310, 40.091805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584389, 40.619328, 40.603836>,  <34.958344, 40.450184, 40.052078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584389, 40.619328, 40.603836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529514, 40.225185, 40.563324>,  <34.496590, 39.988701, 40.539017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529514, 40.225185, 40.563324>,  <34.584389, 40.619328, 40.603836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529514, 40.225185, 40.563324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319997, -0.140848, 0.936890,
		-0.937434, 0.096117, 0.334633,
		-0.137184, -0.985354, -0.101279,
		34.488358, 39.929581, 40.532940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207119, 40.481377, 41.229275>,  <34.584389, 40.619328, 40.603836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207119, 40.481377, 41.229275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375595, 40.140011, 41.106457>,  <34.476681, 39.935192, 41.032764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375595, 40.140011, 41.106457>,  <34.207119, 40.481377, 41.229275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375595, 40.140011, 41.106457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141360, -0.272636, 0.951676,
		-0.895891, -0.444237, 0.005809,
		0.421186, -0.853419, -0.307049,
		34.501949, 39.883984, 41.014343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808125, 39.873241, 41.595478>,  <34.207119, 40.481377, 41.229275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808125, 39.873241, 41.595478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154331, 39.720886, 41.465370>,  <34.362057, 39.629475, 41.387306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154331, 39.720886, 41.465370>,  <33.808125, 39.873241, 41.595478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154331, 39.720886, 41.465370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205231, -0.322696, 0.923985,
		-0.456898, -0.866482, -0.201130,
		0.865520, -0.380889, -0.325268,
		34.413986, 39.606621, 41.367790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890148, 39.139233, 41.817959>,  <33.808125, 39.873241, 41.595478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890148, 39.139233, 41.817959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272114, 39.239956, 41.755058>,  <34.501293, 39.300388, 41.717319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272114, 39.239956, 41.755058>,  <33.890148, 39.139233, 41.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272114, 39.239956, 41.755058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226423, -0.275174, 0.934351,
		0.192004, -0.927833, -0.319783,
		0.954918, 0.251805, -0.157248,
		34.558590, 39.315498, 41.707886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190517, 38.675854, 42.148663>,  <33.890148, 39.139233, 41.817959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190517, 38.675854, 42.148663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492962, 38.934566, 42.108730>,  <34.674431, 39.089794, 42.084770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492962, 38.934566, 42.108730>,  <34.190517, 38.675854, 42.148663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492962, 38.934566, 42.108730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243368, -0.136282, 0.960312,
		0.607505, -0.750402, -0.260450,
		0.756115, 0.646780, -0.099832,
		34.719795, 39.128601, 42.078781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751949, 38.286655, 42.473686>,  <34.190517, 38.675854, 42.148663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751949, 38.286655, 42.473686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856949, 38.672527, 42.464916>,  <34.919949, 38.904053, 42.459656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856949, 38.672527, 42.464916>,  <34.751949, 38.286655, 42.473686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856949, 38.672527, 42.464916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115838, -0.008946, 0.993228,
		0.957953, -0.263265, -0.114095,
		0.262502, 0.964682, -0.021926,
		34.935699, 38.961933, 42.458340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476421, 38.256424, 42.754047>,  <34.751949, 38.286655, 42.473686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476421, 38.256424, 42.754047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265308, 38.594372, 42.789024>,  <35.138641, 38.797138, 42.810009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265308, 38.594372, 42.789024>,  <35.476421, 38.256424, 42.754047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265308, 38.594372, 42.789024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046315, -0.074166, 0.996170,
		0.848114, 0.529813, 0.000014,
		-0.527785, 0.844866, 0.087440,
		35.106972, 38.847832, 42.815258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831257, 38.558979, 43.302429>,  <35.476421, 38.256424, 42.754047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831257, 38.558979, 43.302429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484039, 38.754921, 43.270058>,  <35.275711, 38.872486, 43.250633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484039, 38.754921, 43.270058>,  <35.831257, 38.558979, 43.302429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484039, 38.754921, 43.270058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070699, 0.039388, 0.996720,
		0.491435, 0.870914, 0.000442,
		-0.868040, 0.489854, -0.080929,
		35.223629, 38.901878, 43.245777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950138, 38.940815, 43.777260>,  <35.831257, 38.558979, 43.302429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950138, 38.940815, 43.777260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556099, 38.975216, 43.717670>,  <35.319675, 38.995857, 43.681915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556099, 38.975216, 43.717670>,  <35.950138, 38.940815, 43.777260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556099, 38.975216, 43.717670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148873, 0.007649, 0.988827,
		0.086185, 0.996265, 0.005269,
		-0.985093, 0.086007, -0.148976,
		35.260571, 39.001019, 43.672977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637039, 39.487427, 44.224865>,  <35.950138, 38.940815, 43.777260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637039, 39.487427, 44.224865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318481, 39.273682, 44.111580>,  <35.127346, 39.145435, 44.043610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318481, 39.273682, 44.111580>,  <35.637039, 39.487427, 44.224865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318481, 39.273682, 44.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328545, -0.010891, 0.944426,
		-0.507749, 0.845186, -0.166888,
		-0.796398, -0.534361, -0.283211,
		35.079563, 39.113373, 44.026615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988934, 39.713100, 44.545845>,  <35.637039, 39.487427, 44.224865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988934, 39.713100, 44.545845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883018, 39.337826, 44.456669>,  <34.819469, 39.112663, 44.403164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883018, 39.337826, 44.456669>,  <34.988934, 39.713100, 44.545845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883018, 39.337826, 44.456669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365743, -0.116207, 0.923433,
		-0.892256, 0.326048, -0.312364,
		-0.264784, -0.938184, -0.222936,
		34.803585, 39.056370, 44.389790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330345, 39.669678, 44.736622>,  <34.988934, 39.713100, 44.545845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330345, 39.669678, 44.736622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422718, 39.281181, 44.713406>,  <34.478142, 39.048084, 44.699478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422718, 39.281181, 44.713406>,  <34.330345, 39.669678, 44.736622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422718, 39.281181, 44.713406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456482, -0.160829, 0.875076,
		-0.859241, -0.175589, -0.480493,
		0.230931, -0.971237, -0.058038,
		34.491997, 38.989811, 44.695995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695381, 39.295547, 44.857838>,  <34.330345, 39.669678, 44.736622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695381, 39.295547, 44.857838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008678, 39.055439, 44.922581>,  <34.196659, 38.911373, 44.961426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008678, 39.055439, 44.922581>,  <33.695381, 39.295547, 44.857838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008678, 39.055439, 44.922581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345682, -0.204086, 0.915889,
		-0.516751, -0.773318, -0.367353,
		0.783245, -0.600274, 0.161860,
		34.243652, 38.875359, 44.971138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424908, 38.575615, 44.943001>,  <33.695381, 39.295547, 44.857838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424908, 38.575615, 44.943001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781799, 38.601799, 45.121727>,  <33.995934, 38.617508, 45.228962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781799, 38.601799, 45.121727>,  <33.424908, 38.575615, 44.943001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781799, 38.601799, 45.121727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430462, -0.175780, 0.885327,
		0.136494, -0.982251, -0.128658,
		0.892229, 0.065459, 0.446814,
		34.049469, 38.621437, 45.255772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395664, 38.195721, 45.550953>,  <33.424908, 38.575615, 44.943001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395664, 38.195721, 45.550953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738171, 38.376976, 45.650131>,  <33.943676, 38.485729, 45.709637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738171, 38.376976, 45.650131>,  <33.395664, 38.195721, 45.550953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738171, 38.376976, 45.650131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185846, -0.177597, 0.966395,
		0.481946, -0.873569, -0.067856,
		0.856265, 0.453140, 0.247942,
		33.995049, 38.512917, 45.724514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589954, 37.867733, 46.152020>,  <33.395664, 38.195721, 45.550953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589954, 37.867733, 46.152020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818928, 38.195518, 46.163326>,  <33.956310, 38.392189, 46.170109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818928, 38.195518, 46.163326>,  <33.589954, 37.867733, 46.152020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818928, 38.195518, 46.163326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155897, 0.074932, 0.984927,
		0.804997, -0.568208, 0.170646,
		0.572430, 0.819467, 0.028262,
		33.990658, 38.441357, 46.171806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990128, 37.834564, 46.718643>,  <33.589954, 37.867733, 46.152020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990128, 37.834564, 46.718643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997978, 38.227108, 46.642166>,  <34.002689, 38.462635, 46.596279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997978, 38.227108, 46.642166>,  <33.990128, 37.834564, 46.718643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997978, 38.227108, 46.642166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102379, 0.192192, 0.976002,
		0.994552, 0.000419, 0.104242,
		0.019625, 0.981357, -0.191188,
		34.003864, 38.521515, 46.584808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334206, 38.004025, 47.262379>,  <33.990128, 37.834564, 46.718643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334206, 38.004025, 47.262379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171772, 38.343201, 47.126087>,  <34.074314, 38.546707, 47.044312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171772, 38.343201, 47.126087>,  <34.334206, 38.004025, 47.262379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171772, 38.343201, 47.126087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110553, 0.324529, 0.939393,
		0.907126, 0.419136, -0.038042,
		-0.406080, 0.847942, -0.340725,
		34.049950, 38.597584, 47.023869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479256, 38.431633, 47.803673>,  <34.334206, 38.004025, 47.262379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479256, 38.431633, 47.803673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227196, 38.654385, 47.587231>,  <34.075958, 38.788036, 47.457367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227196, 38.654385, 47.587231>,  <34.479256, 38.431633, 47.803673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227196, 38.654385, 47.587231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216519, 0.543212, 0.811197,
		0.745672, 0.628337, -0.221732,
		-0.630153, 0.556878, -0.541105,
		34.038151, 38.821449, 47.424900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703381, 39.201851, 47.812126>,  <34.479256, 38.431633, 47.803673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703381, 39.201851, 47.812126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314148, 39.126930, 47.758423>,  <34.080608, 39.081978, 47.726200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314148, 39.126930, 47.758423>,  <34.703381, 39.201851, 47.812126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314148, 39.126930, 47.758423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201882, 0.411851, 0.888607,
		-0.111145, 0.891793, -0.438579,
		-0.973083, -0.187305, -0.134262,
		34.022224, 39.070740, 47.718143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286877, 39.858669, 48.012310>,  <34.703381, 39.201851, 47.812126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286877, 39.858669, 48.012310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051693, 39.535385, 48.025520>,  <33.910583, 39.341415, 48.033447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051693, 39.535385, 48.025520>,  <34.286877, 39.858669, 48.012310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051693, 39.535385, 48.025520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301999, 0.257215, 0.917953,
		-0.750398, 0.529747, -0.395312,
		-0.587963, -0.808213, 0.033030,
		33.875305, 39.292923, 48.035431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642750, 40.154598, 48.312908>,  <34.286877, 39.858669, 48.012310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642750, 40.154598, 48.312908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605236, 39.759365, 48.361725>,  <33.582729, 39.522224, 48.391014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605236, 39.759365, 48.361725>,  <33.642750, 40.154598, 48.312908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605236, 39.759365, 48.361725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217530, 0.139953, 0.965968,
		-0.971538, 0.064043, -0.228063,
		-0.093781, -0.988085, 0.122038,
		33.577103, 39.462940, 48.398335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174206, 40.083633, 48.907516>,  <33.642750, 40.154598, 48.312908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174206, 40.083633, 48.907516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294353, 39.704815, 48.862129>,  <33.366444, 39.477524, 48.834896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294353, 39.704815, 48.862129>,  <33.174206, 40.083633, 48.907516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294353, 39.704815, 48.862129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036912, -0.130415, 0.990772,
		-0.953108, -0.293410, -0.074130,
		0.300370, -0.947049, -0.113470,
		33.384464, 39.420700, 48.828087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835766, 39.685135, 49.423088>,  <33.174206, 40.083633, 48.907516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835766, 39.685135, 49.423088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162231, 39.489407, 49.300159>,  <33.358112, 39.371971, 49.226402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162231, 39.489407, 49.300159>,  <32.835766, 39.685135, 49.423088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162231, 39.489407, 49.300159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201980, -0.256709, 0.945148,
		-0.541368, -0.833468, -0.110684,
		0.816165, -0.489318, -0.307318,
		33.407082, 39.342613, 49.207966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765369, 38.974384, 49.686817>,  <32.835766, 39.685135, 49.423088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765369, 38.974384, 49.686817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154728, 39.038532, 49.621346>,  <33.388344, 39.077019, 49.582062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154728, 39.038532, 49.621346>,  <32.765369, 38.974384, 49.686817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154728, 39.038532, 49.621346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221302, -0.472599, 0.853039,
		0.059445, -0.866564, -0.495514,
		0.973392, 0.160367, -0.163678,
		33.446747, 39.086643, 49.572243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040081, 38.391876, 49.869644>,  <32.765369, 38.974384, 49.686817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040081, 38.391876, 49.869644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349030, 38.645706, 49.880699>,  <33.534397, 38.798004, 49.887333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349030, 38.645706, 49.880699>,  <33.040081, 38.391876, 49.869644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349030, 38.645706, 49.880699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347130, -0.458150, 0.818290,
		0.531929, -0.622427, -0.574140,
		0.772368, 0.634573, 0.027640,
		33.580742, 38.836079, 49.888992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603252, 38.013222, 49.838058>,  <33.040081, 38.391876, 49.869644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603252, 38.013222, 49.838058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756596, 38.350361, 49.989132>,  <33.848602, 38.552647, 50.079777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756596, 38.350361, 49.989132>,  <33.603252, 38.013222, 49.838058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756596, 38.350361, 49.989132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389026, -0.518233, 0.761639,
		0.837675, -0.145049, -0.526557,
		0.383354, 0.842850, 0.377683,
		33.871601, 38.603214, 50.102436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272728, 37.838364, 50.139439>,  <33.603252, 38.013222, 49.838058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272728, 37.838364, 50.139439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172112, 38.184364, 50.313107>,  <34.111740, 38.391964, 50.417305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172112, 38.184364, 50.313107>,  <34.272728, 37.838364, 50.139439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172112, 38.184364, 50.313107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411758, -0.310323, 0.856828,
		0.875888, 0.394302, -0.278111,
		-0.251545, 0.865000, 0.434165,
		34.096649, 38.443863, 50.443356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723099, 37.841648, 50.766937>,  <34.272728, 37.838364, 50.139439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723099, 37.841648, 50.766937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463860, 38.137665, 50.838837>,  <34.308315, 38.315273, 50.881977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463860, 38.137665, 50.838837>,  <34.723099, 37.841648, 50.766937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463860, 38.137665, 50.838837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104975, -0.146967, 0.983555,
		0.754285, 0.656312, 0.017564,
		-0.648101, 0.740037, 0.179751,
		34.269428, 38.359676, 50.892761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090816, 38.294506, 51.180054>,  <34.723099, 37.841648, 50.766937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090816, 38.294506, 51.180054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698914, 38.355598, 51.231808>,  <34.463772, 38.392254, 51.262859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698914, 38.355598, 51.231808>,  <35.090816, 38.294506, 51.180054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698914, 38.355598, 51.231808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138312, 0.049320, 0.989160,
		0.144697, 0.987036, -0.069446,
		-0.979762, 0.152734, 0.129382,
		34.404984, 38.401417, 51.270622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032135, 38.787354, 51.718086>,  <35.090816, 38.294506, 51.180054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032135, 38.787354, 51.718086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686275, 38.586689, 51.707302>,  <34.478760, 38.466290, 51.700832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686275, 38.586689, 51.707302>,  <35.032135, 38.787354, 51.718086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686275, 38.586689, 51.707302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008763, -0.038606, 0.999216,
		-0.502305, 0.864205, 0.028985,
		-0.864646, -0.501658, -0.026965,
		34.426880, 38.436192, 51.699211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791798, 38.962196, 52.346035>,  <35.032135, 38.787354, 51.718086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791798, 38.962196, 52.346035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624027, 38.620716, 52.222565>,  <34.523365, 38.415829, 52.148483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624027, 38.620716, 52.222565>,  <34.791798, 38.962196, 52.346035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624027, 38.620716, 52.222565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087848, -0.300266, 0.949802,
		-0.903530, 0.425486, 0.050942,
		-0.419423, -0.853699, -0.308677,
		34.498199, 38.364605, 52.129963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071724, 38.825562, 52.616554>,  <34.791798, 38.962196, 52.346035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071724, 38.825562, 52.616554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267986, 38.481449, 52.561157>,  <34.385742, 38.274982, 52.527920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267986, 38.481449, 52.561157>,  <34.071724, 38.825562, 52.616554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267986, 38.481449, 52.561157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228230, -0.280271, 0.932395,
		-0.840932, -0.425878, -0.333858,
		0.490656, -0.860277, -0.138491,
		34.415184, 38.223366, 52.519611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163532, 38.932117, 53.326717>,  <34.071724, 38.825562, 52.616554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163532, 38.932117, 53.326717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798092, 38.955307, 53.487705>,  <33.578827, 38.969223, 53.584297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798092, 38.955307, 53.487705>,  <34.163532, 38.932117, 53.326717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798092, 38.955307, 53.487705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086877, -0.939096, 0.332493,
		0.397232, 0.338730, 0.852918,
		-0.913597, 0.057978, 0.402467,
		33.524014, 38.972702, 53.608444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112370, 38.667206, 54.129383>,  <34.163532, 38.932117, 53.326717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112370, 38.667206, 54.129383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767410, 38.592411, 53.941212>,  <33.560436, 38.547535, 53.828308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767410, 38.592411, 53.941212>,  <34.112370, 38.667206, 54.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767410, 38.592411, 53.941212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004035, -0.931788, 0.362981,
		-0.506212, 0.311137, 0.804327,
		-0.862399, -0.186991, -0.470427,
		33.508690, 38.536312, 53.800083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665771, 38.288673, 54.581345>,  <34.112370, 38.667206, 54.129383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665771, 38.288673, 54.581345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495525, 38.212402, 54.227509>,  <33.393379, 38.166641, 54.015209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495525, 38.212402, 54.227509>,  <33.665771, 38.288673, 54.581345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495525, 38.212402, 54.227509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318638, -0.883360, 0.343721,
		-0.846948, 0.428156, 0.315215,
		-0.425615, -0.190674, -0.884588,
		33.367840, 38.155201, 53.962132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000259, 37.728706, 54.884060>,  <33.665771, 38.288673, 54.581345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000259, 37.728706, 54.884060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284782, 37.485100, 54.743698>,  <34.455498, 37.338936, 54.659481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284782, 37.485100, 54.743698>,  <34.000259, 37.728706, 54.884060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284782, 37.485100, 54.743698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352850, -0.122368, 0.927644,
		-0.607892, -0.783659, 0.127850,
		0.711311, -0.609019, -0.350901,
		34.498177, 37.302395, 54.638428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988438, 37.042889, 55.072990>,  <34.000259, 37.728706, 54.884060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988438, 37.042889, 55.072990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370293, 37.150333, 55.021576>,  <34.599403, 37.214798, 54.990726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370293, 37.150333, 55.021576>,  <33.988438, 37.042889, 55.072990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370293, 37.150333, 55.021576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207109, -0.288781, 0.934725,
		0.213957, -0.918943, -0.331312,
		0.954635, 0.268609, -0.128534,
		34.656685, 37.230915, 54.983017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417385, 36.447834, 55.308434>,  <33.988438, 37.042889, 55.072990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417385, 36.447834, 55.308434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648880, 36.773861, 55.319237>,  <34.787777, 36.969479, 55.325718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648880, 36.773861, 55.319237>,  <34.417385, 36.447834, 55.308434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648880, 36.773861, 55.319237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417043, -0.324254, 0.849079,
		0.700816, -0.480126, -0.527575,
		0.578733, 0.815069, 0.027009,
		34.822498, 37.018383, 55.327339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095573, 36.300262, 54.653511>,  <34.417385, 36.447834, 55.308434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095573, 36.300262, 54.653511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986069, 36.658039, 54.512070>,  <33.920368, 36.872704, 54.427204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986069, 36.658039, 54.512070>,  <34.095573, 36.300262, 54.653511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986069, 36.658039, 54.512070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654071, -0.096413, -0.750264,
		-0.705158, -0.436669, -0.558634,
		-0.273758, 0.894441, -0.353599,
		33.903942, 36.926373, 54.405991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897343, 36.393757, 53.939404>,  <34.095573, 36.300262, 54.653511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897343, 36.393757, 53.939404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059834, 36.758289, 53.966087>,  <34.157330, 36.977009, 53.982098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059834, 36.758289, 53.966087>,  <33.897343, 36.393757, 53.939404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059834, 36.758289, 53.966087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627848, -0.225328, -0.745006,
		-0.663917, 0.344526, -0.663713,
		0.406228, 0.911334, 0.066711,
		34.181702, 37.031689, 53.986099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395855, 36.402588, 53.400787>,  <33.897343, 36.393757, 53.939404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395855, 36.402588, 53.400787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144764, 36.563637, 53.134296>,  <32.994110, 36.660267, 52.974403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144764, 36.563637, 53.134296>,  <33.395855, 36.402588, 53.400787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144764, 36.563637, 53.134296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067324, -0.824567, -0.561745,
		-0.775518, -0.397474, 0.490495,
		-0.627725, 0.402621, -0.666226,
		32.956448, 36.684422, 52.934429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942841, 35.919609, 53.144215>,  <33.395855, 36.402588, 53.400787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942841, 35.919609, 53.144215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998554, 36.201225, 52.865669>,  <33.031982, 36.370193, 52.698540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998554, 36.201225, 52.865669>,  <32.942841, 35.919609, 53.144215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998554, 36.201225, 52.865669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174623, -0.674738, -0.717102,
		-0.974734, 0.221484, 0.028960,
		0.139287, 0.704040, -0.696366,
		33.040340, 36.412437, 52.656761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463879, 35.883995, 52.683464>,  <32.942841, 35.919609, 53.144215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463879, 35.883995, 52.683464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800278, 36.013451, 52.510036>,  <33.002117, 36.091122, 52.405979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800278, 36.013451, 52.510036>,  <32.463879, 35.883995, 52.683464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800278, 36.013451, 52.510036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122340, -0.666856, -0.735075,
		-0.527025, 0.671240, -0.521231,
		0.840998, 0.323636, -0.433569,
		33.052578, 36.110542, 52.379967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270142, 36.068359, 52.023655>,  <32.463879, 35.883995, 52.683464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270142, 36.068359, 52.023655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668430, 36.050934, 51.991055>,  <32.907402, 36.040478, 51.971493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668430, 36.050934, 51.991055>,  <32.270142, 36.068359, 52.023655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668430, 36.050934, 51.991055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090957, -0.306084, -0.947649,
		0.016336, 0.951007, -0.308737,
		0.995721, -0.043563, -0.081501,
		32.967148, 36.037865, 51.966606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442200, 36.421783, 51.416351>,  <32.270142, 36.068359, 52.023655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442200, 36.421783, 51.416351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785797, 36.227089, 51.479866>,  <32.991955, 36.110271, 51.517975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785797, 36.227089, 51.479866>,  <32.442200, 36.421783, 51.416351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785797, 36.227089, 51.479866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068213, -0.198566, -0.977711,
		0.507419, 0.850680, -0.137365,
		0.858995, -0.486739, 0.158784,
		33.043495, 36.081066, 51.527500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947708, 36.716049, 51.021179>,  <32.442200, 36.421783, 51.416351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947708, 36.716049, 51.021179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084450, 36.350109, 51.107136>,  <33.166496, 36.130543, 51.158710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084450, 36.350109, 51.107136>,  <32.947708, 36.716049, 51.021179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084450, 36.350109, 51.107136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290141, -0.114753, -0.950079,
		0.893843, 0.387137, 0.226207,
		0.341853, -0.914853, 0.214896,
		33.187004, 36.075653, 51.171604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607662, 36.760502, 50.858627>,  <32.947708, 36.716049, 51.021179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607662, 36.760502, 50.858627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499451, 36.375679, 50.844463>,  <33.434525, 36.144783, 50.835964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499451, 36.375679, 50.844463>,  <33.607662, 36.760502, 50.858627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499451, 36.375679, 50.844463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306659, -0.051250, -0.950439,
		0.912565, -0.267978, 0.308889,
		-0.270527, -0.962061, -0.035409,
		33.418293, 36.087059, 50.833839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152523, 36.347580, 50.628822>,  <33.607662, 36.760502, 50.858627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152523, 36.347580, 50.628822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886677, 36.055466, 50.565624>,  <33.727169, 35.880196, 50.527706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886677, 36.055466, 50.565624>,  <34.152523, 36.347580, 50.628822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886677, 36.055466, 50.565624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257628, -0.025495, -0.965908,
		0.701361, -0.682665, 0.205087,
		-0.664620, -0.730286, -0.157993,
		33.687290, 35.836380, 50.518227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519550, 35.826019, 50.323357>,  <34.152523, 36.347580, 50.628822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519550, 35.826019, 50.323357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137131, 35.751575, 50.232727>,  <33.907681, 35.706909, 50.178349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137131, 35.751575, 50.232727>,  <34.519550, 35.826019, 50.323357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137131, 35.751575, 50.232727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259434, -0.176886, -0.949423,
		0.136623, -0.966474, 0.217396,
		-0.956048, -0.186113, -0.226570,
		33.850315, 35.695740, 50.164757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491730, 35.227646, 49.951889>,  <34.519550, 35.826019, 50.323357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491730, 35.227646, 49.951889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136517, 35.375931, 49.843094>,  <33.923389, 35.464901, 49.777817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136517, 35.375931, 49.843094>,  <34.491730, 35.227646, 49.951889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136517, 35.375931, 49.843094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238943, -0.133301, -0.961840,
		-0.392824, -0.919131, 0.029796,
		-0.888029, 0.370715, -0.271984,
		33.870110, 35.487144, 49.761497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195721, 34.649517, 49.532726>,  <34.491730, 35.227646, 49.951889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195721, 34.649517, 49.532726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016232, 34.989250, 49.421524>,  <33.908539, 35.193089, 49.354801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016232, 34.989250, 49.421524>,  <34.195721, 34.649517, 49.532726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016232, 34.989250, 49.421524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017467, -0.319359, -0.947473,
		-0.893500, -0.420297, 0.158139,
		-0.448723, 0.849329, -0.278007,
		33.881615, 35.244049, 49.338123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666550, 34.452076, 48.980438>,  <34.195721, 34.649517, 49.532726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666550, 34.452076, 48.980438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749756, 34.842133, 48.949905>,  <33.799679, 35.076168, 48.931583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749756, 34.842133, 48.949905>,  <33.666550, 34.452076, 48.980438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749756, 34.842133, 48.949905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063748, -0.091392, -0.993772,
		-0.976046, 0.201851, -0.081174,
		0.208013, 0.975143, -0.076336,
		33.812160, 35.134674, 48.927006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346943, 34.613022, 48.409874>,  <33.666550, 34.452076, 48.980438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346943, 34.613022, 48.409874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594494, 34.922470, 48.464268>,  <33.743027, 35.108139, 48.496902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594494, 34.922470, 48.464268>,  <33.346943, 34.613022, 48.409874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594494, 34.922470, 48.464268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160876, 0.044611, -0.985966,
		-0.768833, 0.632073, -0.096849,
		0.618881, 0.773624, 0.135984,
		33.780159, 35.154556, 48.505062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165699, 35.192562, 47.984116>,  <33.346943, 34.613022, 48.409874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165699, 35.192562, 47.984116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544247, 35.281582, 48.077797>,  <33.771378, 35.334995, 48.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544247, 35.281582, 48.077797>,  <33.165699, 35.192562, 47.984116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544247, 35.281582, 48.077797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156302, 0.319040, -0.934764,
		-0.282754, 0.921240, 0.267145,
		0.946372, 0.222553, 0.234202,
		33.828159, 35.348347, 48.148056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281147, 35.912701, 47.731815>,  <33.165699, 35.192562, 47.984116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281147, 35.912701, 47.731815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638493, 35.734478, 47.755085>,  <33.852901, 35.627544, 47.769047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638493, 35.734478, 47.755085>,  <33.281147, 35.912701, 47.731815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638493, 35.734478, 47.755085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205355, 0.289693, -0.934830,
		0.399665, 0.847089, 0.350298,
		0.893363, -0.445554, 0.058174,
		33.906502, 35.600811, 47.772537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815434, 36.450497, 47.523628>,  <33.281147, 35.912701, 47.731815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815434, 36.450497, 47.523628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978043, 36.091965, 47.452816>,  <34.075607, 35.876846, 47.410328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978043, 36.091965, 47.452816>,  <33.815434, 36.450497, 47.523628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978043, 36.091965, 47.452816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188463, 0.271867, -0.943700,
		0.893992, 0.350271, 0.279444,
		0.406522, -0.896325, -0.177033,
		34.099998, 35.823067, 47.399708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392643, 36.629627, 46.991486>,  <33.815434, 36.450497, 47.523628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392643, 36.629627, 46.991486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296772, 36.241287, 46.990200>,  <34.239250, 36.008286, 46.989429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296772, 36.241287, 46.990200>,  <34.392643, 36.629627, 46.991486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296772, 36.241287, 46.990200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046479, 0.014779, -0.998810,
		0.969740, -0.239239, -0.048666,
		-0.239673, -0.970848, -0.003212,
		34.224869, 35.950031, 46.989235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718613, 36.401791, 46.355610>,  <34.392643, 36.629627, 46.991486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718613, 36.401791, 46.355610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437943, 36.133854, 46.452732>,  <34.269539, 35.973091, 46.511005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437943, 36.133854, 46.452732>,  <34.718613, 36.401791, 46.355610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437943, 36.133854, 46.452732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278794, -0.055477, -0.958747,
		0.655682, -0.740425, -0.147821,
		-0.701680, -0.669845, 0.242802,
		34.227440, 35.932899, 46.525574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749302, 36.005711, 45.807423>,  <34.718613, 36.401791, 46.355610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749302, 36.005711, 45.807423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390415, 35.969681, 45.980343>,  <34.175083, 35.948063, 46.084095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390415, 35.969681, 45.980343>,  <34.749302, 36.005711, 45.807423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390415, 35.969681, 45.980343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438657, 0.069155, -0.895990,
		0.050791, -0.993533, -0.101550,
		-0.897218, -0.090054, 0.432308,
		34.121250, 35.942657, 46.110035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367558, 35.515339, 45.460976>,  <34.749302, 36.005711, 45.807423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367558, 35.515339, 45.460976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101810, 35.766273, 45.623489>,  <33.942364, 35.916836, 45.720997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101810, 35.766273, 45.623489>,  <34.367558, 35.515339, 45.460976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101810, 35.766273, 45.623489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524343, -0.003835, -0.851498,
		-0.532621, -0.778736, 0.331490,
		-0.664364, 0.627340, 0.406282,
		33.902500, 35.954475, 45.745373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845581, 35.307312, 45.080807>,  <34.367558, 35.515339, 45.460976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845581, 35.307312, 45.080807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680531, 35.620007, 45.267838>,  <33.581501, 35.807625, 45.380054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680531, 35.620007, 45.267838>,  <33.845581, 35.307312, 45.080807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680531, 35.620007, 45.267838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596938, 0.155666, -0.787041,
		-0.688044, -0.603869, 0.402416,
		-0.412627, 0.781736, 0.467577,
		33.556744, 35.854527, 45.408112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111866, 35.182613, 45.125351>,  <33.845581, 35.307312, 45.080807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111866, 35.182613, 45.125351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183529, 35.575825, 45.141163>,  <33.226528, 35.811752, 45.150650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183529, 35.575825, 45.141163>,  <33.111866, 35.182613, 45.125351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183529, 35.575825, 45.141163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544378, 0.132520, -0.828306,
		-0.819484, 0.126883, 0.558880,
		0.179161, 0.983025, 0.039526,
		33.237278, 35.870731, 45.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558704, 35.539646, 44.880669>,  <33.111866, 35.182613, 45.125351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558704, 35.539646, 44.880669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820469, 35.841732, 44.865707>,  <32.977528, 36.022984, 44.856731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820469, 35.841732, 44.865707>,  <32.558704, 35.539646, 44.880669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820469, 35.841732, 44.865707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485335, 0.381589, -0.786664,
		-0.579827, 0.532954, 0.616248,
		0.654409, 0.755215, -0.037405,
		33.016792, 36.068298, 44.854485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170021, 36.245750, 44.817005>,  <32.558704, 35.539646, 44.880669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170021, 36.245750, 44.817005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541069, 36.323029, 44.689133>,  <32.763699, 36.369396, 44.612411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541069, 36.323029, 44.689133>,  <32.170021, 36.245750, 44.817005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541069, 36.323029, 44.689133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373498, 0.489041, -0.788250,
		0.004051, 0.850597, 0.525802,
		0.927622, 0.193193, -0.319678,
		32.819355, 36.380985, 44.593231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128296, 36.908295, 44.595039>,  <32.170021, 36.245750, 44.817005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128296, 36.908295, 44.595039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454765, 36.775658, 44.405769>,  <32.650650, 36.696075, 44.292206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454765, 36.775658, 44.405769>,  <32.128296, 36.908295, 44.595039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454765, 36.775658, 44.405769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282329, 0.485636, -0.827314,
		0.504126, 0.808828, 0.302746,
		0.816178, -0.331596, -0.473177,
		32.699619, 36.676178, 44.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367760, 37.498268, 44.212982>,  <32.128296, 36.908295, 44.595039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367760, 37.498268, 44.212982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513321, 37.171875, 44.033318>,  <32.600658, 36.976040, 43.925518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513321, 37.171875, 44.033318>,  <32.367760, 37.498268, 44.212982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513321, 37.171875, 44.033318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183677, 0.409891, -0.893449,
		0.913146, 0.407631, -0.000715,
		0.363905, -0.815981, -0.449163,
		32.622494, 36.927082, 43.898567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817528, 37.762215, 43.722702>,  <32.367760, 37.498268, 44.212982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817528, 37.762215, 43.722702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718838, 37.389832, 43.615036>,  <32.659626, 37.166401, 43.550438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718838, 37.389832, 43.615036>,  <32.817528, 37.762215, 43.722702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718838, 37.389832, 43.615036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199055, 0.320510, -0.926094,
		0.948423, -0.174908, -0.264388,
		-0.246721, -0.930956, -0.269163,
		32.644821, 37.110546, 43.534286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225178, 37.634636, 43.175777>,  <32.817528, 37.762215, 43.722702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225178, 37.634636, 43.175777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922253, 37.377102, 43.132038>,  <32.740498, 37.222580, 43.105793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922253, 37.377102, 43.132038>,  <33.225178, 37.634636, 43.175777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922253, 37.377102, 43.132038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108471, 0.289132, -0.951124,
		0.643986, -0.708432, -0.288800,
		-0.757308, -0.643837, -0.109352,
		32.695061, 37.183952, 43.099232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373280, 37.300617, 42.510983>,  <33.225178, 37.634636, 43.175777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373280, 37.300617, 42.510983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990093, 37.213882, 42.586113>,  <32.760181, 37.161842, 42.631191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990093, 37.213882, 42.586113>,  <33.373280, 37.300617, 42.510983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990093, 37.213882, 42.586113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216252, 0.115609, -0.969469,
		0.188505, -0.969337, -0.157642,
		-0.957967, -0.216841, 0.187828,
		32.702702, 37.148830, 42.642460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106667, 36.917671, 41.931999>,  <33.373280, 37.300617, 42.510983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106667, 36.917671, 41.931999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759979, 37.038448, 42.090809>,  <32.551968, 37.110916, 42.186092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759979, 37.038448, 42.090809>,  <33.106667, 36.917671, 41.931999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759979, 37.038448, 42.090809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400819, 0.052145, -0.914672,
		-0.296881, -0.951899, 0.075829,
		-0.866721, 0.301943, 0.397019,
		32.499962, 37.129032, 42.209915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554150, 36.466827, 41.704609>,  <33.106667, 36.917671, 41.931999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554150, 36.466827, 41.704609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367779, 36.805847, 41.806259>,  <32.255959, 37.009258, 41.867249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367779, 36.805847, 41.806259>,  <32.554150, 36.466827, 41.704609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367779, 36.805847, 41.806259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331017, 0.099388, -0.938376,
		-0.820575, -0.521330, 0.234246,
		-0.465923, 0.847548, 0.254125,
		32.228001, 37.060112, 41.882496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820936, 36.311886, 41.556225>,  <32.554150, 36.466827, 41.704609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820936, 36.311886, 41.556225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882601, 36.705490, 41.591892>,  <31.919600, 36.941654, 41.613293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882601, 36.705490, 41.591892>,  <31.820936, 36.311886, 41.556225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882601, 36.705490, 41.591892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503255, 0.155865, -0.849965,
		-0.850275, 0.086157, 0.519239,
		0.154162, 0.984013, 0.089169,
		31.928850, 37.000694, 41.618645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277639, 36.572311, 41.205132>,  <31.820936, 36.311886, 41.556225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277639, 36.572311, 41.205132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523609, 36.887302, 41.221855>,  <31.671190, 37.076298, 41.231888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523609, 36.887302, 41.221855>,  <31.277639, 36.572311, 41.205132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523609, 36.887302, 41.221855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231108, 0.230646, -0.945194,
		-0.753961, 0.571561, 0.323822,
		0.614924, 0.787477, 0.041806,
		31.708086, 37.123547, 41.234398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872433, 37.138042, 41.005905>,  <31.277639, 36.572311, 41.205132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872433, 37.138042, 41.005905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260672, 37.193878, 40.927464>,  <31.493614, 37.227379, 40.880398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260672, 37.193878, 40.927464>,  <30.872433, 37.138042, 41.005905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260672, 37.193878, 40.927464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206963, 0.067937, -0.975987,
		-0.122915, 0.987876, 0.094829,
		0.970597, 0.139590, -0.196103,
		31.551851, 37.235756, 40.868633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772989, 37.506199, 40.417526>,  <30.872433, 37.138042, 41.005905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772989, 37.506199, 40.417526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166189, 37.432785, 40.415382>,  <31.402109, 37.388737, 40.414097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166189, 37.432785, 40.415382>,  <30.772989, 37.506199, 40.417526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166189, 37.432785, 40.415382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039155, 0.238069, -0.970459,
		0.179394, 0.953749, 0.241208,
		0.982998, -0.183539, -0.005364,
		31.461088, 37.377724, 40.413773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030626, 38.029163, 40.009727>,  <30.772989, 37.506199, 40.417526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030626, 38.029163, 40.009727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310482, 37.743389, 40.013596>,  <31.478395, 37.571926, 40.015919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310482, 37.743389, 40.013596>,  <31.030626, 38.029163, 40.009727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310482, 37.743389, 40.013596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254424, 0.236459, -0.937740,
		0.667664, 0.658539, 0.347204,
		0.699638, -0.714432, 0.009673,
		31.520374, 37.529060, 40.016499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590210, 38.267941, 39.685810>,  <31.030626, 38.029163, 40.009727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590210, 38.267941, 39.685810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692476, 37.885178, 39.630733>,  <31.753836, 37.655518, 39.597687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692476, 37.885178, 39.630733>,  <31.590210, 38.267941, 39.685810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692476, 37.885178, 39.630733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200732, 0.191866, -0.960674,
		0.945696, 0.217974, 0.241136,
		0.255668, -0.956909, -0.137692,
		31.769176, 37.598106, 39.589424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268517, 38.269672, 39.343502>,  <31.590210, 38.267941, 39.685810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268517, 38.269672, 39.343502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122112, 37.903763, 39.275120>,  <32.034271, 37.684216, 39.234093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122112, 37.903763, 39.275120>,  <32.268517, 38.269672, 39.343502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122112, 37.903763, 39.275120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266227, 0.073098, -0.961135,
		0.891717, -0.397298, 0.216783,
		-0.366010, -0.914774, -0.170954,
		32.012310, 37.629330, 39.223835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808502, 37.853268, 39.017899>,  <32.268517, 38.269672, 39.343502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808502, 37.853268, 39.017899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446903, 37.732143, 38.897163>,  <32.229946, 37.659470, 38.824722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446903, 37.732143, 38.897163>,  <32.808502, 37.853268, 39.017899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446903, 37.732143, 38.897163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352942, -0.130084, -0.926558,
		0.241307, -0.944132, 0.224469,
		-0.903993, -0.302809, -0.301833,
		32.175705, 37.641300, 38.806614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935394, 37.257748, 38.592937>,  <32.808502, 37.853268, 39.017899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935394, 37.257748, 38.592937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577637, 37.407967, 38.495750>,  <32.362984, 37.498096, 38.437439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577637, 37.407967, 38.495750>,  <32.935394, 37.257748, 38.592937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577637, 37.407967, 38.495750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272943, 0.027897, -0.961626,
		-0.354355, -0.926384, -0.127453,
		-0.894391, 0.375545, -0.242964,
		32.309319, 37.520630, 38.422863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515789, 37.351292, 39.068153>,  <32.935394, 37.257748, 38.592937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515789, 37.351292, 39.068153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889252, 37.452129, 38.966381>,  <34.113327, 37.512634, 38.905315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889252, 37.452129, 38.966381>,  <33.515789, 37.351292, 39.068153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889252, 37.452129, 38.966381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356488, -0.585181, 0.728340,
		0.034722, -0.770721, -0.636227,
		0.933654, 0.252097, -0.254434,
		34.169350, 37.527760, 38.890049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138882, 36.948807, 39.162994>,  <33.515789, 37.351292, 39.068153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138882, 36.948807, 39.162994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470539, 37.003643, 38.946209>,  <34.669533, 37.036545, 38.816139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470539, 37.003643, 38.946209>,  <34.138882, 36.948807, 39.162994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470539, 37.003643, 38.946209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519771, -0.545945, 0.657101,
		-0.205796, -0.826529, -0.523926,
		0.829147, 0.137093, -0.541959,
		34.719284, 37.044769, 38.783623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475510, 36.360535, 39.238728>,  <34.138882, 36.948807, 39.162994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475510, 36.360535, 39.238728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756268, 36.616924, 39.114479>,  <34.924725, 36.770760, 39.039928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756268, 36.616924, 39.114479>,  <34.475510, 36.360535, 39.238728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756268, 36.616924, 39.114479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659073, -0.419078, 0.624498,
		0.270112, -0.643058, -0.716600,
		0.701899, 0.640976, -0.310624,
		34.966839, 36.809216, 39.021294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074238, 35.993301, 39.258083>,  <34.475510, 36.360535, 39.238728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074238, 35.993301, 39.258083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215534, 36.366852, 39.235828>,  <35.300312, 36.590981, 39.222477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215534, 36.366852, 39.235828>,  <35.074238, 35.993301, 39.258083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215534, 36.366852, 39.235828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713786, -0.230596, 0.661313,
		0.604755, -0.273315, -0.748044,
		0.353243, 0.933876, -0.055635,
		35.321507, 36.647015, 39.219139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739651, 35.883739, 39.158775>,  <35.074238, 35.993301, 39.258083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739651, 35.883739, 39.158775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671535, 36.230934, 39.345364>,  <35.630665, 36.439251, 39.457317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671535, 36.230934, 39.345364>,  <35.739651, 35.883739, 39.158775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671535, 36.230934, 39.345364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647960, -0.258015, 0.716643,
		0.742395, 0.424293, -0.518484,
		-0.170290, 0.867988, 0.466474,
		35.620449, 36.491329, 39.485306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484787, 36.172401, 39.268162>,  <35.739651, 35.883739, 39.158775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484787, 36.172401, 39.268162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214989, 36.347504, 39.505959>,  <36.053108, 36.452564, 39.648636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214989, 36.347504, 39.505959>,  <36.484787, 36.172401, 39.268162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214989, 36.347504, 39.505959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605199, -0.133341, 0.784828,
		0.422832, 0.889152, -0.174990,
		-0.674498, 0.437754, 0.594495,
		36.012638, 36.478828, 39.684307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892670, 36.393196, 39.758339>,  <36.484787, 36.172401, 39.268162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892670, 36.393196, 39.758339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539505, 36.404621, 39.945805>,  <36.327606, 36.411476, 40.058285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539505, 36.404621, 39.945805>,  <36.892670, 36.393196, 39.758339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539505, 36.404621, 39.945805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432737, -0.337856, 0.835818,
		0.182211, 0.940764, 0.285940,
		-0.882914, 0.028558, 0.468664,
		36.274632, 36.413189, 40.086403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991020, 36.645390, 40.529335>,  <36.892670, 36.393196, 39.758339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991020, 36.645390, 40.529335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635262, 36.462673, 40.536339>,  <36.421806, 36.353043, 40.540543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635262, 36.462673, 40.536339>,  <36.991020, 36.645390, 40.529335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635262, 36.462673, 40.536339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246111, -0.446209, 0.860423,
		-0.385223, 0.769569, 0.509280,
		-0.889400, -0.456794, 0.017509,
		36.368443, 36.325634, 40.541592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785164, 36.649048, 41.251507>,  <36.991020, 36.645390, 40.529335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785164, 36.649048, 41.251507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556320, 36.362694, 41.091404>,  <36.419014, 36.190884, 40.995342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556320, 36.362694, 41.091404>,  <36.785164, 36.649048, 41.251507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556320, 36.362694, 41.091404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112593, -0.551939, 0.826248,
		-0.812412, 0.427639, 0.396373,
		-0.572110, -0.715883, -0.400253,
		36.384686, 36.147930, 40.971329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256718, 36.530689, 41.641140>,  <36.785164, 36.649048, 41.251507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256718, 36.530689, 41.641140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264194, 36.180984, 41.447102>,  <36.268681, 35.971161, 41.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264194, 36.180984, 41.447102>,  <36.256718, 36.530689, 41.641140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264194, 36.180984, 41.447102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081108, -0.482255, 0.872268,
		-0.996530, -0.055649, 0.061896,
		0.018692, -0.874261, -0.485096,
		36.269802, 35.918705, 41.301575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750076, 36.215763, 41.976994>,  <36.256718, 36.530689, 41.641140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750076, 36.215763, 41.976994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963757, 35.927944, 41.799507>,  <36.091965, 35.755253, 41.693016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963757, 35.927944, 41.799507>,  <35.750076, 36.215763, 41.976994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963757, 35.927944, 41.799507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005364, -0.521989, 0.852935,
		-0.845342, -0.458017, -0.274986,
		0.534199, -0.719547, -0.443716,
		36.124016, 35.712082, 41.666393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365524, 35.585045, 42.112122>,  <35.750076, 36.215763, 41.976994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365524, 35.585045, 42.112122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739868, 35.479809, 42.018364>,  <35.964474, 35.416668, 41.962109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739868, 35.479809, 42.018364>,  <35.365524, 35.585045, 42.112122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739868, 35.479809, 42.018364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076887, -0.496719, 0.864499,
		-0.343869, -0.827076, -0.444634,
		0.935864, -0.263088, -0.234398,
		36.020626, 35.400883, 41.948044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427952, 34.959755, 42.405724>,  <35.365524, 35.585045, 42.112122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427952, 34.959755, 42.405724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806370, 35.079689, 42.356564>,  <36.033421, 35.151649, 42.327068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806370, 35.079689, 42.356564>,  <35.427952, 34.959755, 42.405724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806370, 35.079689, 42.356564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249756, -0.433038, 0.866083,
		0.206459, -0.850047, -0.484557,
		0.946043, 0.299832, -0.122900,
		36.090183, 35.169640, 42.319695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876163, 34.319462, 42.427891>,  <35.427952, 34.959755, 42.405724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876163, 34.319462, 42.427891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109509, 34.632610, 42.514423>,  <36.249516, 34.820499, 42.566341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109509, 34.632610, 42.514423>,  <35.876163, 34.319462, 42.427891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109509, 34.632610, 42.514423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261367, -0.433124, 0.862607,
		0.769008, -0.446673, -0.457286,
		0.583365, 0.782871, 0.216330,
		36.284519, 34.867470, 42.579323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318344, 34.009937, 42.821404>,  <35.876163, 34.319462, 42.427891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318344, 34.009937, 42.821404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382114, 34.395809, 42.905293>,  <36.420376, 34.627331, 42.955624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382114, 34.395809, 42.905293>,  <36.318344, 34.009937, 42.821404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382114, 34.395809, 42.905293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150097, -0.233651, 0.960665,
		0.975733, -0.121675, -0.182045,
		0.159424, 0.964677, 0.209718,
		36.429943, 34.685211, 42.968208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895370, 34.037663, 43.166660>,  <36.318344, 34.009937, 42.821404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895370, 34.037663, 43.166660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670250, 34.343704, 43.291801>,  <36.535179, 34.527328, 43.366886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670250, 34.343704, 43.291801>,  <36.895370, 34.037663, 43.166660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670250, 34.343704, 43.291801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171157, -0.262414, 0.949655,
		0.808679, 0.588012, 0.016734,
		-0.562800, 0.765102, 0.312851,
		36.501411, 34.573235, 43.385658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258762, 34.330925, 43.611946>,  <36.895370, 34.037663, 43.166660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258762, 34.330925, 43.611946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886299, 34.454060, 43.690113>,  <36.662823, 34.527939, 43.737015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886299, 34.454060, 43.690113>,  <37.258762, 34.330925, 43.611946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886299, 34.454060, 43.690113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175517, -0.091358, 0.980228,
		0.319600, 0.947044, 0.031038,
		-0.931155, 0.307833, 0.195420,
		36.606953, 34.546410, 43.748737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337868, 34.750057, 44.141705>,  <37.258762, 34.330925, 43.611946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337868, 34.750057, 44.141705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952457, 34.643230, 44.148567>,  <36.721210, 34.579136, 44.152683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952457, 34.643230, 44.148567>,  <37.337868, 34.750057, 44.141705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952457, 34.643230, 44.148567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029180, -0.041113, 0.998728,
		-0.266020, 0.962801, 0.047406,
		-0.963526, -0.267065, 0.017158,
		36.663399, 34.563110, 44.153713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147427, 35.105164, 44.745895>,  <37.337868, 34.750057, 44.141705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147427, 35.105164, 44.745895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869091, 34.829453, 44.665188>,  <36.702091, 34.664024, 44.616764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869091, 34.829453, 44.665188>,  <37.147427, 35.105164, 44.745895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869091, 34.829453, 44.665188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197414, -0.086547, 0.976492,
		-0.690538, 0.719308, -0.075850,
		-0.695834, -0.689279, -0.201766,
		36.660339, 34.622669, 44.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542358, 35.302773, 45.192818>,  <37.147427, 35.105164, 44.745895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542358, 35.302773, 45.192818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449577, 34.927219, 45.091068>,  <36.393909, 34.701889, 45.030018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449577, 34.927219, 45.091068>,  <36.542358, 35.302773, 45.192818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449577, 34.927219, 45.091068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209502, -0.207148, 0.955614,
		-0.949898, 0.274950, -0.148649,
		-0.231953, -0.938878, -0.254372,
		36.379990, 34.645557, 45.014755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879936, 35.140511, 45.409786>,  <36.542358, 35.302773, 45.192818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879936, 35.140511, 45.409786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055641, 34.781223, 45.403366>,  <36.161064, 34.565651, 45.399513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055641, 34.781223, 45.403366>,  <35.879936, 35.140511, 45.409786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055641, 34.781223, 45.403366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398454, -0.210810, 0.892633,
		-0.805161, -0.385703, -0.450498,
		0.439261, -0.898216, -0.016051,
		36.187420, 34.511757, 45.398552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372395, 34.727505, 45.669571>,  <35.879936, 35.140511, 45.409786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372395, 34.727505, 45.669571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735916, 34.567127, 45.715729>,  <35.954029, 34.470901, 45.743423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735916, 34.567127, 45.715729>,  <35.372395, 34.727505, 45.669571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735916, 34.567127, 45.715729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170064, -0.103439, 0.979989,
		-0.380989, -0.910242, -0.162193,
		0.908804, -0.400948, 0.115390,
		36.008556, 34.446842, 45.750347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244869, 34.159359, 46.103889>,  <35.372395, 34.727505, 45.669571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244869, 34.159359, 46.103889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642994, 34.169239, 46.141308>,  <35.881866, 34.175167, 46.163757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642994, 34.169239, 46.141308>,  <35.244869, 34.159359, 46.103889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642994, 34.169239, 46.141308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095923, 0.125745, 0.987414,
		0.012626, -0.991755, 0.127524,
		0.995309, 0.024700, 0.093544,
		35.941586, 34.176647, 46.169373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414322, 33.726616, 46.668056>,  <35.244869, 34.159359, 46.103889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414322, 33.726616, 46.668056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725399, 33.974449, 46.625526>,  <35.912045, 34.123150, 46.600006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725399, 33.974449, 46.625526>,  <35.414322, 33.726616, 46.668056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725399, 33.974449, 46.625526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029788, 0.205270, 0.978252,
		0.627935, -0.757615, 0.178093,
		0.777695, 0.619584, -0.106328,
		35.958706, 34.160324, 46.593628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887871, 33.644493, 47.230000>,  <35.414322, 33.726616, 46.668056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887871, 33.644493, 47.230000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016811, 34.000809, 47.101891>,  <36.094177, 34.214600, 47.025024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016811, 34.000809, 47.101891>,  <35.887871, 33.644493, 47.230000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016811, 34.000809, 47.101891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039446, 0.325401, 0.944753,
		0.945797, -0.317177, 0.069756,
		0.322353, 0.890793, -0.320275,
		36.113518, 34.268047, 47.005810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478817, 33.802700, 47.665604>,  <35.887871, 33.644493, 47.230000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478817, 33.802700, 47.665604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304218, 34.129898, 47.515747>,  <36.199459, 34.326218, 47.425835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304218, 34.129898, 47.515747>,  <36.478817, 33.802700, 47.665604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304218, 34.129898, 47.515747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053302, 0.392156, 0.918353,
		0.898127, 0.420824, -0.127572,
		-0.436493, 0.817998, -0.374637,
		36.173271, 34.375298, 47.403355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828030, 34.364571, 48.022820>,  <36.478817, 33.802700, 47.665604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828030, 34.364571, 48.022820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499706, 34.529125, 47.864307>,  <36.302711, 34.627857, 47.769199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499706, 34.529125, 47.864307>,  <36.828030, 34.364571, 48.022820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499706, 34.529125, 47.864307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077232, 0.607457, 0.790590,
		0.565964, 0.679525, -0.466830,
		-0.820804, 0.411391, -0.396280,
		36.253464, 34.652542, 47.745422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908485, 35.083538, 47.964787>,  <36.828030, 34.364571, 48.022820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908485, 35.083538, 47.964787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523937, 34.983303, 48.010334>,  <36.293209, 34.923161, 48.037663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523937, 34.983303, 48.010334>,  <36.908485, 35.083538, 47.964787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523937, 34.983303, 48.010334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088460, 0.673036, 0.734301,
		-0.260642, 0.695865, -0.669207,
		-0.961374, -0.250588, 0.113865,
		36.235523, 34.908127, 48.044495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493835, 35.649734, 47.838352>,  <36.908485, 35.083538, 47.964787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493835, 35.649734, 47.838352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318508, 35.400143, 48.097126>,  <36.213314, 35.250385, 48.252392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318508, 35.400143, 48.097126>,  <36.493835, 35.649734, 47.838352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318508, 35.400143, 48.097126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015375, 0.714447, 0.699520,
		-0.898690, 0.316558, -0.303560,
		-0.438316, -0.623984, 0.646933,
		36.187012, 35.212948, 48.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176331, 36.062744, 48.309711>,  <36.493835, 35.649734, 47.838352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176331, 36.062744, 48.309711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146919, 35.714142, 48.503651>,  <36.129272, 35.504982, 48.620014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146919, 35.714142, 48.503651>,  <36.176331, 36.062744, 48.309711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146919, 35.714142, 48.503651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120821, 0.490369, 0.863099,
		-0.989948, 0.004879, -0.141351,
		-0.073525, -0.871501, 0.484850,
		36.124863, 35.452690, 48.649105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567253, 36.092781, 48.770748>,  <36.176331, 36.062744, 48.309711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567253, 36.092781, 48.770748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819817, 35.823097, 48.923988>,  <35.971355, 35.661285, 49.015934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819817, 35.823097, 48.923988>,  <35.567253, 36.092781, 48.770748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819817, 35.823097, 48.923988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037007, 0.467275, 0.883337,
		-0.774569, -0.571922, 0.270089,
		0.631405, -0.674211, 0.383101,
		36.009239, 35.620834, 49.038918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273785, 35.884666, 49.381264>,  <35.567253, 36.092781, 48.770748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273785, 35.884666, 49.381264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653721, 35.782112, 49.452892>,  <35.881683, 35.720581, 49.495869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653721, 35.782112, 49.452892>,  <35.273785, 35.884666, 49.381264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653721, 35.782112, 49.452892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078886, 0.357664, 0.930513,
		-0.302614, -0.897967, 0.319499,
		0.949843, -0.256382, 0.179071,
		35.938675, 35.705196, 49.506615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278744, 35.674313, 50.057461>,  <35.273785, 35.884666, 49.381264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278744, 35.674313, 50.057461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666679, 35.734634, 49.980865>,  <35.899441, 35.770828, 49.934910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666679, 35.734634, 49.980865>,  <35.278744, 35.674313, 50.057461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666679, 35.734634, 49.980865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134675, 0.323244, 0.936684,
		0.203152, -0.934223, 0.293186,
		0.969841, 0.150804, -0.191484,
		35.957630, 35.779877, 49.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706158, 35.258228, 50.632557>,  <35.278744, 35.674313, 50.057461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706158, 35.258228, 50.632557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890411, 35.567745, 50.458630>,  <36.000965, 35.753456, 50.354275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890411, 35.567745, 50.458630>,  <35.706158, 35.258228, 50.632557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890411, 35.567745, 50.458630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152403, 0.413657, 0.897586,
		0.874408, -0.479727, 0.072617,
		0.460635, 0.773790, -0.434817,
		36.028603, 35.799881, 50.328186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047119, 35.407364, 51.202068>,  <35.706158, 35.258228, 50.632557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047119, 35.407364, 51.202068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124844, 35.721535, 50.967003>,  <36.171478, 35.910038, 50.825966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124844, 35.721535, 50.967003>,  <36.047119, 35.407364, 51.202068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124844, 35.721535, 50.967003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121072, 0.575295, 0.808936,
		0.973440, -0.228333, 0.016692,
		0.194310, 0.785430, -0.587660,
		36.183136, 35.957165, 50.790707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769005, 35.606163, 51.371017>,  <36.047119, 35.407364, 51.202068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769005, 35.606163, 51.371017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568649, 35.914547, 51.213676>,  <36.448437, 36.099579, 51.119270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568649, 35.914547, 51.213676>,  <36.769005, 35.606163, 51.371017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568649, 35.914547, 51.213676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001116, 0.453903, 0.891050,
		0.865508, 0.446760, -0.226496,
		-0.500893, 0.770959, -0.393356,
		36.418381, 36.145836, 51.095669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132660, 36.270866, 51.500050>,  <36.769005, 35.606163, 51.371017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132660, 36.270866, 51.500050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749317, 36.368465, 51.440685>,  <36.519314, 36.427025, 51.405067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749317, 36.368465, 51.440685>,  <37.132660, 36.270866, 51.500050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749317, 36.368465, 51.440685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046968, 0.647247, 0.760832,
		0.281697, 0.722175, -0.631751,
		-0.958353, 0.243996, -0.148408,
		36.461811, 36.441666, 51.396164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153599, 36.949772, 51.697296>,  <37.132660, 36.270866, 51.500050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153599, 36.949772, 51.697296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754528, 36.928326, 51.680485>,  <36.515087, 36.915459, 51.670399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754528, 36.928326, 51.680485>,  <37.153599, 36.949772, 51.697296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754528, 36.928326, 51.680485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066121, 0.613453, 0.786958,
		-0.016410, 0.787909, -0.615573,
		-0.997677, -0.053616, -0.042030,
		36.455227, 36.912239, 51.667877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947113, 37.609509, 51.870125>,  <37.153599, 36.949772, 51.697296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947113, 37.609509, 51.870125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629822, 37.401291, 51.996506>,  <36.439445, 37.276360, 52.072334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629822, 37.401291, 51.996506>,  <36.947113, 37.609509, 51.870125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629822, 37.401291, 51.996506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064396, 0.444255, 0.893583,
		-0.605512, 0.729160, -0.318874,
		-0.793227, -0.520541, 0.315957,
		36.391853, 37.245129, 52.091293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148045, 37.573376, 52.554539>,  <36.947113, 37.609509, 51.870125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148045, 37.573376, 52.554539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494251, 37.773727, 52.554512>,  <37.701977, 37.893936, 52.554497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494251, 37.773727, 52.554512>,  <37.148045, 37.573376, 52.554539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494251, 37.773727, 52.554512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042713, -0.073939, -0.996348,
		-0.499053, 0.862354, -0.085389,
		0.865518, 0.500877, -0.000066,
		37.753906, 37.923992, 52.554493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059521, 38.252865, 52.276485>,  <37.148045, 37.573376, 52.554539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059521, 38.252865, 52.276485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434788, 38.124390, 52.224823>,  <37.659946, 38.047306, 52.193825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434788, 38.124390, 52.224823>,  <37.059521, 38.252865, 52.276485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434788, 38.124390, 52.224823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171142, -0.106005, -0.979527,
		0.300922, 0.941064, -0.154419,
		0.938167, -0.321189, -0.129156,
		37.716236, 38.028034, 52.186077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198940, 38.558983, 51.656193>,  <37.059521, 38.252865, 52.276485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198940, 38.558983, 51.656193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539333, 38.348919, 51.654217>,  <37.743568, 38.222881, 51.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539333, 38.348919, 51.654217>,  <37.198940, 38.558983, 51.656193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539333, 38.348919, 51.654217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009233, -0.005551, -0.999942,
		0.525107, 0.850983, -0.009573,
		0.850986, -0.525164, -0.004942,
		37.794628, 38.191368, 51.652733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686256, 38.941479, 51.274284>,  <37.198940, 38.558983, 51.656193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686256, 38.941479, 51.274284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813953, 38.562477, 51.281513>,  <37.890572, 38.335075, 51.285851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813953, 38.562477, 51.281513>,  <37.686256, 38.941479, 51.274284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813953, 38.562477, 51.281513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026871, -0.010009, -0.999589,
		0.947293, 0.319595, 0.022265,
		0.319241, -0.947501, 0.018069,
		37.909725, 38.278225, 51.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171959, 38.931564, 50.788532>,  <37.686256, 38.941479, 51.274284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171959, 38.931564, 50.788532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089005, 38.543072, 50.835358>,  <38.039230, 38.309978, 50.863453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089005, 38.543072, 50.835358>,  <38.171959, 38.931564, 50.788532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089005, 38.543072, 50.835358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095055, -0.139108, -0.985705,
		0.973630, -0.193295, 0.121169,
		-0.207388, -0.971229, 0.117067,
		38.026787, 38.251701, 50.870476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653549, 38.559353, 50.335583>,  <38.171959, 38.931564, 50.788532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653549, 38.559353, 50.335583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360287, 38.297009, 50.407505>,  <38.184330, 38.139603, 50.450661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360287, 38.297009, 50.407505>,  <38.653549, 38.559353, 50.335583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360287, 38.297009, 50.407505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060090, -0.200889, -0.977769,
		0.677405, -0.727658, 0.107872,
		-0.733153, -0.655864, 0.179808,
		38.140343, 38.100250, 50.461449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860100, 37.891544, 50.073708>,  <38.653549, 38.559353, 50.335583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860100, 37.891544, 50.073708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460854, 37.881287, 50.096004>,  <38.221306, 37.875130, 50.109383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460854, 37.881287, 50.096004>,  <38.860100, 37.891544, 50.073708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460854, 37.881287, 50.096004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044014, -0.333614, -0.941682,
		0.042748, -0.942361, 0.331856,
		-0.998115, -0.025649, 0.055738,
		38.161419, 37.873592, 50.112724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713959, 37.264709, 49.728832>,  <38.860100, 37.891544, 50.073708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713959, 37.264709, 49.728832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374264, 37.473988, 49.700378>,  <38.170448, 37.599556, 49.683308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374264, 37.473988, 49.700378>,  <38.713959, 37.264709, 49.728832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374264, 37.473988, 49.700378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159113, -0.382041, -0.910345,
		-0.503468, -0.761780, 0.407691,
		-0.849237, 0.523198, -0.071136,
		38.119492, 37.630947, 49.679039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188972, 36.854515, 49.515766>,  <38.713959, 37.264709, 49.728832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188972, 36.854515, 49.515766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054798, 37.216988, 49.412758>,  <37.974293, 37.434471, 49.350952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054798, 37.216988, 49.412758>,  <38.188972, 36.854515, 49.515766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054798, 37.216988, 49.412758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188881, -0.332504, -0.923994,
		-0.922934, -0.261297, 0.282694,
		-0.335434, 0.906182, -0.257525,
		37.954166, 37.488842, 49.335499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592934, 36.677238, 49.172665>,  <38.188972, 36.854515, 49.515766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592934, 36.677238, 49.172665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695671, 37.042633, 49.046448>,  <37.757313, 37.261871, 48.970718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695671, 37.042633, 49.046448>,  <37.592934, 36.677238, 49.172665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695671, 37.042633, 49.046448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330304, -0.223865, -0.916943,
		-0.908257, 0.339735, 0.244231,
		0.256843, 0.913490, -0.315543,
		37.772724, 37.316681, 48.951786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002575, 36.956577, 48.916824>,  <37.592934, 36.677238, 49.172665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002575, 36.956577, 48.916824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307835, 37.156555, 48.753040>,  <37.490990, 37.276543, 48.654770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307835, 37.156555, 48.753040>,  <37.002575, 36.956577, 48.916824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307835, 37.156555, 48.753040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390591, -0.147928, -0.908601,
		-0.514820, 0.853331, 0.082382,
		0.763151, 0.499943, -0.409460,
		37.536781, 37.306538, 48.630203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639965, 37.436222, 48.404758>,  <37.002575, 36.956577, 48.916824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639965, 37.436222, 48.404758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021263, 37.463303, 48.286957>,  <37.250042, 37.479549, 48.216274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021263, 37.463303, 48.286957>,  <36.639965, 37.436222, 48.404758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021263, 37.463303, 48.286957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261134, -0.305903, -0.915550,
		-0.152072, 0.949653, -0.273923,
		0.953249, 0.067699, -0.294506,
		37.307240, 37.483612, 48.198605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615200, 37.808151, 47.774540>,  <36.639965, 37.436222, 48.404758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615200, 37.808151, 47.774540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977749, 37.639160, 47.773533>,  <37.195278, 37.537766, 47.772930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977749, 37.639160, 47.773533>,  <36.615200, 37.808151, 47.774540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977749, 37.639160, 47.773533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047002, -0.094921, -0.994375,
		0.419861, 0.901390, -0.105891,
		0.906371, -0.422476, -0.002513,
		37.249660, 37.512417, 47.772778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167122, 38.244259, 47.392735>,  <36.615200, 37.808151, 47.774540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167122, 38.244259, 47.392735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266167, 37.856716, 47.393757>,  <37.325592, 37.624191, 47.394371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266167, 37.856716, 47.393757>,  <37.167122, 38.244259, 47.392735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266167, 37.856716, 47.393757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072502, -0.021164, -0.997144,
		0.966143, 0.246716, -0.075484,
		0.247609, -0.968857, 0.002560,
		37.340450, 37.566059, 47.394524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736404, 38.177616, 47.001438>,  <37.167122, 38.244259, 47.392735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736404, 38.177616, 47.001438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560635, 37.818314, 47.003811>,  <37.455173, 37.602730, 47.005234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560635, 37.818314, 47.003811>,  <37.736404, 38.177616, 47.001438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560635, 37.818314, 47.003811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077427, -0.044454, -0.996006,
		0.894938, -0.437208, 0.089084,
		-0.439422, -0.898261, 0.005932,
		37.428806, 37.548836, 47.005592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196884, 37.813560, 46.556370>,  <37.736404, 38.177616, 47.001438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196884, 37.813560, 46.556370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902405, 37.544449, 46.585712>,  <37.725716, 37.382980, 46.603317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902405, 37.544449, 46.585712>,  <38.196884, 37.813560, 46.556370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902405, 37.544449, 46.585712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073102, -0.186809, -0.979673,
		0.672807, -0.715870, 0.186710,
		-0.736197, -0.672780, 0.073355,
		37.681545, 37.342613, 46.607719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424900, 37.191578, 46.309273>,  <38.196884, 37.813560, 46.556370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424900, 37.191578, 46.309273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027828, 37.150398, 46.284027>,  <37.789585, 37.125690, 46.268879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027828, 37.150398, 46.284027>,  <38.424900, 37.191578, 46.309273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027828, 37.150398, 46.284027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082964, -0.201710, -0.975925,
		0.087737, -0.974020, 0.208775,
		-0.992683, -0.102946, -0.063111,
		37.730022, 37.119514, 46.265095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373863, 36.535046, 46.091129>,  <38.424900, 37.191578, 46.309273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373863, 36.535046, 46.091129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043579, 36.743580, 46.004963>,  <37.845409, 36.868702, 45.953262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043579, 36.743580, 46.004963>,  <38.373863, 36.535046, 46.091129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043579, 36.743580, 46.004963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100595, -0.239671, -0.965629,
		-0.555049, -0.819001, 0.145456,
		-0.825713, 0.521339, -0.215417,
		37.795864, 36.899982, 45.940338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998890, 36.183613, 45.662170>,  <38.373863, 36.535046, 46.091129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998890, 36.183613, 45.662170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852432, 36.549988, 45.596439>,  <37.764557, 36.769814, 45.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852432, 36.549988, 45.596439>,  <37.998890, 36.183613, 45.662170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852432, 36.549988, 45.596439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085753, -0.209052, -0.974138,
		-0.926600, -0.342580, 0.155086,
		-0.366141, 0.915935, -0.164330,
		37.742592, 36.824768, 45.547142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472832, 36.037155, 45.162983>,  <37.998890, 36.183613, 45.662170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472832, 36.037155, 45.162983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569862, 36.425068, 45.152580>,  <37.628082, 36.657814, 45.146339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569862, 36.425068, 45.152580>,  <37.472832, 36.037155, 45.162983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569862, 36.425068, 45.152580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009825, -0.024347, -0.999655,
		-0.970082, 0.242752, 0.003622,
		0.242580, 0.969783, -0.026004,
		37.642635, 36.716003, 45.144779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046474, 36.329151, 44.716927>,  <37.472832, 36.037155, 45.162983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046474, 36.329151, 44.716927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372162, 36.561253, 44.724388>,  <37.567574, 36.700516, 44.728863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372162, 36.561253, 44.724388>,  <37.046474, 36.329151, 44.716927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372162, 36.561253, 44.724388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122841, -0.140794, -0.982388,
		-0.567412, 0.802171, -0.185916,
		0.814220, 0.580257, 0.018652,
		37.616428, 36.735329, 44.729984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970108, 36.584919, 44.119843>,  <37.046474, 36.329151, 44.716927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970108, 36.584919, 44.119843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347618, 36.695084, 44.192993>,  <37.574123, 36.761181, 44.236885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347618, 36.695084, 44.192993>,  <36.970108, 36.584919, 44.119843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347618, 36.695084, 44.192993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163595, 0.091648, -0.982261,
		-0.287284, 0.956948, 0.041439,
		0.943771, 0.275409, 0.182881,
		37.630749, 36.777706, 44.247856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057995, 37.108673, 43.694553>,  <36.970108, 36.584919, 44.119843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057995, 37.108673, 43.694553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426384, 36.984657, 43.788944>,  <37.647419, 36.910248, 43.845577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426384, 36.984657, 43.788944>,  <37.057995, 37.108673, 43.694553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426384, 36.984657, 43.788944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301153, 0.182164, -0.936014,
		0.247216, 0.933108, 0.261138,
		0.920973, -0.310041, 0.235975,
		37.702675, 36.891644, 43.859737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495071, 37.533504, 43.415043>,  <37.057995, 37.108673, 43.694553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495071, 37.533504, 43.415043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730133, 37.214352, 43.468784>,  <37.871170, 37.022861, 43.501030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730133, 37.214352, 43.468784>,  <37.495071, 37.533504, 43.415043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730133, 37.214352, 43.468784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357491, 0.107076, -0.927758,
		0.725855, 0.593228, 0.348158,
		0.587652, -0.797881, 0.134352,
		37.906429, 36.974987, 43.509090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080303, 37.699974, 43.033398>,  <37.495071, 37.533504, 43.415043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080303, 37.699974, 43.033398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110203, 37.302284, 43.064213>,  <38.128143, 37.063671, 43.082703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110203, 37.302284, 43.064213>,  <38.080303, 37.699974, 43.033398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110203, 37.302284, 43.064213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417858, -0.038917, -0.907678,
		0.905432, 0.100037, 0.412535,
		0.074747, -0.994222, 0.077038,
		38.132626, 37.004017, 43.087322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818501, 37.482258, 42.834389>,  <38.080303, 37.699974, 43.033398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818501, 37.482258, 42.834389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610767, 37.141582, 42.806313>,  <38.486130, 36.937180, 42.789467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610767, 37.141582, 42.806313>,  <38.818501, 37.482258, 42.834389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610767, 37.141582, 42.806313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419161, -0.182293, -0.889423,
		0.744715, -0.491325, 0.451664,
		-0.519331, -0.851686, -0.070188,
		38.454967, 36.886078, 42.785255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293186, 36.908894, 42.743889>,  <38.818501, 37.482258, 42.834389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293186, 36.908894, 42.743889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933853, 36.809372, 42.599064>,  <38.718254, 36.749660, 42.512169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933853, 36.809372, 42.599064>,  <39.293186, 36.908894, 42.743889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933853, 36.809372, 42.599064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413070, -0.197834, -0.888952,
		0.149548, -0.948134, 0.280495,
		-0.898337, -0.248805, -0.362060,
		38.664352, 36.734730, 42.490444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401157, 36.278076, 42.444252>,  <39.293186, 36.908894, 42.743889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401157, 36.278076, 42.444252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075466, 36.418362, 42.259197>,  <38.880051, 36.502533, 42.148163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075466, 36.418362, 42.259197>,  <39.401157, 36.278076, 42.444252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075466, 36.418362, 42.259197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379405, -0.281711, -0.881301,
		-0.439414, -0.893106, 0.096315,
		-0.814228, 0.350713, -0.462637,
		38.831196, 36.523575, 42.120407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454342, 35.833496, 41.929756>,  <39.401157, 36.278076, 42.444252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454342, 35.833496, 41.929756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202972, 36.122643, 41.814831>,  <39.052151, 36.296131, 41.745876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202972, 36.122643, 41.814831>,  <39.454342, 35.833496, 41.929756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202972, 36.122643, 41.814831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371090, -0.046019, -0.927456,
		-0.683646, -0.689456, -0.239328,
		-0.628427, 0.722864, -0.287311,
		39.014442, 36.339500, 41.728638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470329, 35.572159, 41.287251>,  <39.454342, 35.833496, 41.929756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470329, 35.572159, 41.287251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316517, 35.941376, 41.291843>,  <39.224232, 36.162907, 41.294598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316517, 35.941376, 41.291843>,  <39.470329, 35.572159, 41.287251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316517, 35.941376, 41.291843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337203, 0.152033, -0.929075,
		-0.859321, -0.353383, -0.369714,
		-0.384528, 0.923042, 0.011483,
		39.201157, 36.218288, 41.295288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177242, 35.652229, 40.644066>,  <39.470329, 35.572159, 41.287251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177242, 35.652229, 40.644066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252541, 36.008991, 40.808537>,  <39.297718, 36.223049, 40.907219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252541, 36.008991, 40.808537>,  <39.177242, 35.652229, 40.644066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252541, 36.008991, 40.808537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451758, 0.293106, -0.842617,
		-0.872054, 0.344371, -0.347750,
		0.188245, 0.891907, 0.411177,
		39.309013, 36.276562, 40.931889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962025, 36.089184, 40.228764>,  <39.177242, 35.652229, 40.644066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962025, 36.089184, 40.228764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197388, 36.338501, 40.434784>,  <39.338608, 36.488091, 40.558395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197388, 36.338501, 40.434784>,  <38.962025, 36.089184, 40.228764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197388, 36.338501, 40.434784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363401, 0.365178, -0.857079,
		-0.722297, 0.691486, -0.011631,
		0.588411, 0.623292, 0.515053,
		39.373909, 36.525490, 40.589298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800568, 36.836685, 39.964539>,  <38.962025, 36.089184, 40.228764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800568, 36.836685, 39.964539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164162, 36.803894, 40.128014>,  <39.382317, 36.784218, 40.226097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164162, 36.803894, 40.128014>,  <38.800568, 36.836685, 39.964539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164162, 36.803894, 40.128014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386200, 0.534538, -0.751744,
		-0.156829, 0.841159, 0.517549,
		0.908985, -0.081982, 0.408687,
		39.436859, 36.779301, 40.250618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147343, 37.513504, 39.775105>,  <38.800568, 36.836685, 39.964539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147343, 37.513504, 39.775105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448135, 37.274315, 39.886059>,  <39.628613, 37.130802, 39.952633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448135, 37.274315, 39.886059>,  <39.147343, 37.513504, 39.775105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448135, 37.274315, 39.886059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604162, 0.456919, -0.652850,
		0.263646, 0.658520, 0.704870,
		0.751984, -0.597977, 0.277388,
		39.673729, 37.094921, 39.969276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773800, 37.825779, 39.459549>,  <39.147343, 37.513504, 39.775105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773800, 37.825779, 39.459549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916756, 37.462517, 39.546745>,  <40.002529, 37.244560, 39.599064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916756, 37.462517, 39.546745>,  <39.773800, 37.825779, 39.459549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916756, 37.462517, 39.546745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663489, 0.082606, -0.743612,
		0.657311, 0.410393, 0.632076,
		0.357386, -0.908160, 0.217994,
		40.023972, 37.190067, 39.612144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446880, 37.881207, 39.198677>,  <39.773800, 37.825779, 39.459549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446880, 37.881207, 39.198677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437122, 37.495556, 39.304401>,  <40.431267, 37.264164, 39.367836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437122, 37.495556, 39.304401>,  <40.446880, 37.881207, 39.198677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437122, 37.495556, 39.304401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663652, -0.213340, -0.716974,
		0.747643, 0.157920, 0.645051,
		-0.024390, -0.964130, 0.264307,
		40.429806, 37.206318, 39.383694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132561, 37.728855, 39.387817>,  <40.446880, 37.881207, 39.198677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132561, 37.728855, 39.387817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933861, 37.408871, 39.253178>,  <40.814640, 37.216881, 39.172394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933861, 37.408871, 39.253178>,  <41.132561, 37.728855, 39.387817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933861, 37.408871, 39.253178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695021, -0.134382, -0.706319,
		0.519796, -0.584808, 0.622745,
		-0.496747, -0.799963, -0.336602,
		40.784836, 37.168880, 39.152195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626476, 37.344563, 39.095852>,  <41.132561, 37.728855, 39.387817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626476, 37.344563, 39.095852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294388, 37.188522, 38.936573>,  <41.095135, 37.094898, 38.841007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294388, 37.188522, 38.936573>,  <41.626476, 37.344563, 39.095852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294388, 37.188522, 38.936573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523955, -0.302274, -0.796305,
		0.190272, -0.869744, 0.455347,
		-0.830221, -0.390096, -0.398193,
		41.045322, 37.071495, 38.817116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907646, 36.760345, 38.814304>,  <41.626476, 37.344563, 39.095852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907646, 36.760345, 38.814304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542133, 36.792969, 38.655132>,  <41.322826, 36.812542, 38.559628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542133, 36.792969, 38.655132>,  <41.907646, 36.760345, 38.814304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542133, 36.792969, 38.655132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351921, -0.330285, -0.875822,
		-0.202858, -0.940351, 0.273107,
		-0.913783, 0.081555, -0.397930,
		41.267998, 36.817436, 38.535751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758171, 36.087532, 38.481529>,  <41.907646, 36.760345, 38.814304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758171, 36.087532, 38.481529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566322, 36.398335, 38.318447>,  <41.451214, 36.584816, 38.220596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566322, 36.398335, 38.318447>,  <41.758171, 36.087532, 38.481529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566322, 36.398335, 38.318447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440246, -0.188839, -0.877794,
		-0.759044, -0.600498, -0.251504,
		-0.479620, 0.777009, -0.407704,
		41.422436, 36.631435, 38.196136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476578, 35.870903, 37.841690>,  <41.758171, 36.087532, 38.481529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476578, 35.870903, 37.841690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561195, 36.261845, 37.839600>,  <41.611965, 36.496410, 37.838345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561195, 36.261845, 37.839600>,  <41.476578, 35.870903, 37.841690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561195, 36.261845, 37.839600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438974, -0.099790, -0.892941,
		-0.873241, 0.186604, -0.450143,
		0.211547, 0.977354, -0.005227,
		41.624660, 36.555050, 37.838032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323761, 36.270069, 37.219910>,  <41.476578, 35.870903, 37.841690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323761, 36.270069, 37.219910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653954, 36.427223, 37.382008>,  <41.852070, 36.521515, 37.479267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653954, 36.427223, 37.382008>,  <41.323761, 36.270069, 37.219910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653954, 36.427223, 37.382008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455273, -0.039083, -0.889494,
		-0.333630, 0.918757, -0.211132,
		0.825480, 0.392885, 0.405246,
		41.901596, 36.545090, 37.503582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569435, 36.800644, 36.812984>,  <41.323761, 36.270069, 37.219910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569435, 36.800644, 36.812984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879284, 36.659050, 37.022614>,  <42.065193, 36.574093, 37.148392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879284, 36.659050, 37.022614>,  <41.569435, 36.800644, 36.812984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879284, 36.659050, 37.022614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545581, -0.045060, -0.836846,
		0.319845, 0.934165, 0.158223,
		0.774623, -0.353984, 0.524075,
		42.111671, 36.552856, 37.179836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280148, 37.223484, 36.922375>,  <41.569435, 36.800644, 36.812984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280148, 37.223484, 36.922375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332947, 36.826984, 36.923191>,  <42.364624, 36.589085, 36.923683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332947, 36.826984, 36.923191>,  <42.280148, 37.223484, 36.922375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332947, 36.826984, 36.923191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529866, 0.068813, -0.845285,
		0.837747, 0.112657, 0.534312,
		0.131995, -0.991248, 0.002045,
		42.372543, 36.529610, 36.923805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040001, 37.186176, 36.833576>,  <42.280148, 37.223484, 36.922375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040001, 37.186176, 36.833576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791153, 36.923378, 36.663250>,  <42.641846, 36.765697, 36.561054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791153, 36.923378, 36.663250>,  <43.040001, 37.186176, 36.833576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791153, 36.923378, 36.663250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344997, 0.258187, -0.902395,
		0.702815, -0.708300, 0.066041,
		-0.622115, -0.657001, -0.425819,
		42.604519, 36.726276, 36.535503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673512, 36.695942, 36.891590>,  <43.040001, 37.186176, 36.833576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673512, 36.695942, 36.891590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777390, 36.312984, 36.942131>,  <43.839718, 36.083210, 36.972454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777390, 36.312984, 36.942131>,  <43.673512, 36.695942, 36.891590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777390, 36.312984, 36.942131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044622, 0.142594, 0.988775,
		-0.964659, -0.251143, 0.079752,
		0.259696, -0.957389, 0.126348,
		43.855297, 36.025768, 36.980034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233894, 36.291073, 37.337639>,  <43.673512, 36.695942, 36.891590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233894, 36.291073, 37.337639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603355, 36.142056, 37.373604>,  <43.825031, 36.052647, 37.395184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603355, 36.142056, 37.373604>,  <43.233894, 36.291073, 37.337639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603355, 36.142056, 37.373604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041104, 0.136960, 0.989723,
		-0.381027, -0.917853, 0.111190,
		0.923650, -0.372541, 0.089914,
		43.880451, 36.030293, 37.400578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272991, 35.725212, 37.881653>,  <43.233894, 36.291073, 37.337639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272991, 35.725212, 37.881653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647152, 35.857491, 37.831604>,  <43.871651, 35.936859, 37.801575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647152, 35.857491, 37.831604>,  <43.272991, 35.725212, 37.881653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647152, 35.857491, 37.831604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069424, 0.175218, 0.982079,
		0.346698, -0.927327, 0.140941,
		0.935404, 0.330701, -0.125127,
		43.927773, 35.956699, 37.794067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615154, 35.296402, 38.384903>,  <43.272991, 35.725212, 37.881653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615154, 35.296402, 38.384903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840607, 35.615108, 38.297741>,  <43.975876, 35.806332, 38.245441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840607, 35.615108, 38.297741>,  <43.615154, 35.296402, 38.384903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840607, 35.615108, 38.297741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050829, 0.229847, 0.971899,
		0.824463, -0.558865, 0.089049,
		0.563628, 0.796768, -0.217907,
		44.009697, 35.854137, 38.232368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243126, 35.210941, 38.772163>,  <43.615154, 35.296402, 38.384903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243126, 35.210941, 38.772163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202694, 35.602749, 38.702503>,  <44.178436, 35.837833, 38.660706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202694, 35.602749, 38.702503>,  <44.243126, 35.210941, 38.772163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202694, 35.602749, 38.702503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047005, 0.170153, 0.984296,
		0.993768, 0.107675, 0.028844,
		-0.101076, 0.979517, -0.174154,
		44.172371, 35.896603, 38.650257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774139, 35.509510, 39.221416>,  <44.243126, 35.210941, 38.772163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774139, 35.509510, 39.221416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551167, 35.831112, 39.138618>,  <44.417381, 36.024075, 39.088940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551167, 35.831112, 39.138618>,  <44.774139, 35.509510, 39.221416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551167, 35.831112, 39.138618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191497, 0.118082, 0.974364,
		0.807836, 0.582779, 0.088142,
		-0.557431, 0.804006, -0.206992,
		44.383938, 36.072315, 39.076523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951050, 36.044094, 39.633602>,  <44.774139, 35.509510, 39.221416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951050, 36.044094, 39.633602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577339, 36.149361, 39.537384>,  <44.353111, 36.212521, 39.479652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577339, 36.149361, 39.537384>,  <44.951050, 36.044094, 39.633602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577339, 36.149361, 39.537384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177170, 0.242813, 0.953757,
		0.309403, 0.933695, -0.180231,
		-0.934281, 0.263164, -0.240549,
		44.297054, 36.228310, 39.465218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859688, 36.615917, 40.067020>,  <44.951050, 36.044094, 39.633602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859688, 36.615917, 40.067020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494492, 36.495026, 39.957397>,  <44.275375, 36.422489, 39.891624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494492, 36.495026, 39.957397>,  <44.859688, 36.615917, 40.067020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494492, 36.495026, 39.957397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367900, 0.319528, 0.873242,
		-0.176350, 0.898087, -0.402916,
		-0.912990, -0.302229, -0.274057,
		44.220596, 36.404358, 39.875179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341640, 37.166958, 40.231758>,  <44.859688, 36.615917, 40.067020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341640, 37.166958, 40.231758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135502, 36.825748, 40.198856>,  <44.011818, 36.621021, 40.179115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135502, 36.825748, 40.198856>,  <44.341640, 37.166958, 40.231758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135502, 36.825748, 40.198856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377386, 0.139721, 0.915455,
		-0.769414, 0.502818, -0.393924,
		-0.515346, -0.853025, -0.082253,
		43.980900, 36.569839, 40.174179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620079, 37.323204, 40.321056>,  <44.341640, 37.166958, 40.231758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620079, 37.323204, 40.321056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684040, 36.945641, 40.436619>,  <43.722416, 36.719101, 40.505959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684040, 36.945641, 40.436619>,  <43.620079, 37.323204, 40.321056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684040, 36.945641, 40.436619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202090, 0.255176, 0.945540,
		-0.966226, -0.209576, -0.149952,
		0.159898, -0.943908, 0.288910,
		43.732010, 36.662468, 40.523293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227570, 37.208721, 40.929321>,  <43.620079, 37.323204, 40.321056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227570, 37.208721, 40.929321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434151, 36.867161, 40.955036>,  <43.558098, 36.662224, 40.970463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434151, 36.867161, 40.955036>,  <43.227570, 37.208721, 40.929321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434151, 36.867161, 40.955036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112141, 0.141867, 0.983513,
		-0.848943, -0.500727, 0.169024,
		0.516450, -0.853901, 0.064285,
		43.589085, 36.610992, 40.974323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971943, 36.900848, 41.530293>,  <43.227570, 37.208721, 40.929321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971943, 36.900848, 41.530293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317860, 36.708294, 41.473164>,  <43.525410, 36.592762, 41.438885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317860, 36.708294, 41.473164>,  <42.971943, 36.900848, 41.530293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317860, 36.708294, 41.473164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152356, -0.019475, 0.988134,
		-0.478456, -0.876292, 0.056500,
		0.864793, -0.481386, -0.142827,
		43.577297, 36.563877, 41.430317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975975, 36.459236, 42.107506>,  <42.971943, 36.900848, 41.530293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975975, 36.459236, 42.107506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359749, 36.447803, 41.995316>,  <43.590015, 36.440945, 41.928001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359749, 36.447803, 41.995316>,  <42.975975, 36.459236, 42.107506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359749, 36.447803, 41.995316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277326, -0.083254, 0.957162,
		-0.050701, -0.996119, -0.071953,
		0.959437, -0.028574, -0.280471,
		43.647579, 36.439228, 41.911175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201294, 35.872192, 42.317421>,  <42.975975, 36.459236, 42.107506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201294, 35.872192, 42.317421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548779, 36.059734, 42.253521>,  <43.757267, 36.172260, 42.215179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548779, 36.059734, 42.253521>,  <43.201294, 35.872192, 42.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548779, 36.059734, 42.253521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309998, -0.263076, 0.913615,
		0.386323, -0.843189, -0.373880,
		0.868709, 0.468853, -0.159754,
		43.809391, 36.200390, 42.205593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631115, 35.433342, 42.328560>,  <43.201294, 35.872192, 42.317421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631115, 35.433342, 42.328560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861099, 35.752640, 42.400360>,  <43.999088, 35.944218, 42.443439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861099, 35.752640, 42.400360>,  <43.631115, 35.433342, 42.328560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861099, 35.752640, 42.400360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477158, -0.505363, 0.718977,
		0.664634, -0.327734, -0.671455,
		0.574962, 0.798247, 0.179501,
		44.033588, 35.992115, 42.454212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300831, 35.268524, 42.280567>,  <43.631115, 35.433342, 42.328560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300831, 35.268524, 42.280567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328758, 35.594837, 42.510220>,  <44.345516, 35.790623, 42.648010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328758, 35.594837, 42.510220>,  <44.300831, 35.268524, 42.280567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328758, 35.594837, 42.510220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541129, -0.514472, 0.665206,
		0.838037, 0.264237, -0.477361,
		0.069817, 0.815780, 0.574133,
		44.349705, 35.839573, 42.682461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953587, 35.324570, 42.388855>,  <44.300831, 35.268524, 42.280567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953587, 35.324570, 42.388855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803062, 35.530876, 42.696720>,  <44.712749, 35.654659, 42.881439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803062, 35.530876, 42.696720>,  <44.953587, 35.324570, 42.388855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803062, 35.530876, 42.696720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536941, -0.555587, 0.634837,
		0.755039, 0.652158, -0.067862,
		-0.376310, 0.515765, 0.769660,
		44.690170, 35.685604, 42.927620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504158, 35.478901, 42.832165>,  <44.953587, 35.324570, 42.388855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504158, 35.478901, 42.832165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209625, 35.521839, 43.099388>,  <45.032906, 35.547600, 43.259720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209625, 35.521839, 43.099388>,  <45.504158, 35.478901, 42.832165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209625, 35.521839, 43.099388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463033, -0.640000, 0.613189,
		0.493377, 0.760840, 0.421547,
		-0.736328, 0.107343, 0.668055,
		44.988728, 35.554043, 43.299805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854549, 35.462032, 43.429897>,  <45.504158, 35.478901, 42.832165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854549, 35.462032, 43.429897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474297, 35.394539, 43.534073>,  <45.246143, 35.354042, 43.596581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474297, 35.394539, 43.534073>,  <45.854549, 35.462032, 43.429897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474297, 35.394539, 43.534073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308875, -0.595507, 0.741598,
		0.029960, 0.785429, 0.618226,
		-0.950631, -0.168736, 0.260441,
		45.189106, 35.343918, 43.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739597, 35.748089, 44.158714>,  <45.854549, 35.462032, 43.429897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739597, 35.748089, 44.158714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480759, 35.455925, 44.071285>,  <45.325455, 35.280628, 44.018829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480759, 35.455925, 44.071285>,  <45.739597, 35.748089, 44.158714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480759, 35.455925, 44.071285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167639, -0.415979, 0.893789,
		-0.743752, 0.541725, 0.391622,
		-0.647094, -0.730408, -0.218571,
		45.286629, 35.236801, 44.005714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436428, 35.618469, 44.747532>,  <45.739597, 35.748089, 44.158714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436428, 35.618469, 44.747532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350735, 35.282444, 44.548172>,  <45.299320, 35.080830, 44.428555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350735, 35.282444, 44.548172>,  <45.436428, 35.618469, 44.747532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350735, 35.282444, 44.548172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123580, -0.529458, 0.839287,
		-0.968933, 0.118212, 0.217243,
		-0.214234, -0.840060, -0.498401,
		45.286465, 35.030426, 44.398651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955009, 35.287373, 45.151382>,  <45.436428, 35.618469, 44.747532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955009, 35.287373, 45.151382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063141, 34.981518, 44.917374>,  <45.128021, 34.798004, 44.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063141, 34.981518, 44.917374>,  <44.955009, 35.287373, 45.151382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063141, 34.981518, 44.917374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066841, -0.591276, 0.803695,
		-0.960445, -0.256367, -0.108731,
		0.270331, -0.764636, -0.585024,
		45.144241, 34.752129, 44.741867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457466, 34.759007, 45.250664>,  <44.955009, 35.287373, 45.151382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457466, 34.759007, 45.250664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808853, 34.607918, 45.133617>,  <45.019684, 34.517265, 45.063389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808853, 34.607918, 45.133617>,  <44.457466, 34.759007, 45.250664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808853, 34.607918, 45.133617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114352, -0.428414, 0.896317,
		-0.463925, -0.820843, -0.333152,
		0.878463, -0.377727, -0.292617,
		45.072392, 34.494602, 45.045834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392120, 34.103222, 45.290154>,  <44.457466, 34.759007, 45.250664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392120, 34.103222, 45.290154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789562, 34.143719, 45.310139>,  <45.028027, 34.168018, 45.322128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789562, 34.143719, 45.310139>,  <44.392120, 34.103222, 45.290154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789562, 34.143719, 45.310139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008481, -0.508217, 0.861187,
		0.112585, -0.855257, -0.505826,
		0.993606, 0.101247, 0.049965,
		45.087643, 34.174091, 45.325127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724709, 33.403900, 45.470432>,  <44.392120, 34.103222, 45.290154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724709, 33.403900, 45.470432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955505, 33.702953, 45.601967>,  <45.093983, 33.882385, 45.680885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955505, 33.702953, 45.601967>,  <44.724709, 33.403900, 45.470432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955505, 33.702953, 45.601967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215827, -0.527865, 0.821448,
		0.787719, -0.402997, -0.465932,
		0.576991, 0.747631, 0.328832,
		45.128601, 33.927242, 45.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818741, 33.063896, 46.117188>,  <44.724709, 33.403900, 45.470432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818741, 33.063896, 46.117188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060604, 33.380966, 46.086060>,  <45.205723, 33.571209, 46.067383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060604, 33.380966, 46.086060>,  <44.818741, 33.063896, 46.117188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060604, 33.380966, 46.086060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386294, -0.206409, 0.898984,
		0.696541, -0.573637, -0.431012,
		0.604655, 0.792676, -0.077820,
		45.242001, 33.618771, 46.062714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022064, 32.741978, 46.881191>,  <44.818741, 33.063896, 46.117188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022064, 32.741978, 46.881191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345135, 32.850132, 46.671600>,  <45.538979, 32.915024, 46.545845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345135, 32.850132, 46.671600>,  <45.022064, 32.741978, 46.881191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.345135, 32.850132, 46.671600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537655, -0.702524, 0.466248,
		-0.242040, -0.658295, -0.712786,
		0.807678, 0.270382, -0.523974,
		45.587437, 32.931248, 46.514408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150063, 32.162300, 46.530140>,  <45.022064, 32.741978, 46.881191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150063, 32.162300, 46.530140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477222, 32.390369, 46.560982>,  <45.673519, 32.527210, 46.579487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477222, 32.390369, 46.560982>,  <45.150063, 32.162300, 46.530140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477222, 32.390369, 46.560982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492989, -0.763577, 0.417028,
		0.296656, -0.303073, -0.905617,
		0.817898, 0.570173, 0.077107,
		45.722591, 32.561420, 46.584114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725719, 31.873648, 46.097752>,  <45.150063, 32.162300, 46.530140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725719, 31.873648, 46.097752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865196, 32.085938, 46.406750>,  <45.948883, 32.213310, 46.592148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865196, 32.085938, 46.406750>,  <45.725719, 31.873648, 46.097752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865196, 32.085938, 46.406750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590883, -0.764270, 0.258357,
		0.727510, 0.366367, -0.580090,
		0.348692, 0.530722, 0.772494,
		45.969803, 32.245155, 46.638496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805862, 32.175430, 45.368122>,  <45.725719, 31.873648, 46.097752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805862, 32.175430, 45.368122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450714, 32.299892, 45.232555>,  <45.237625, 32.374569, 45.151215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450714, 32.299892, 45.232555>,  <45.805862, 32.175430, 45.368122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450714, 32.299892, 45.232555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114866, -0.863219, -0.491589,
		-0.445521, -0.397538, 0.802169,
		-0.887872, 0.311155, -0.338918,
		45.184353, 32.393238, 45.130878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909870, 31.519020, 45.243881>,  <45.805862, 32.175430, 45.368122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909870, 31.519020, 45.243881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568386, 31.314499, 45.283386>,  <45.363495, 31.191786, 45.307091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568386, 31.314499, 45.283386>,  <45.909870, 31.519020, 45.243881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568386, 31.314499, 45.283386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060374, -0.091195, -0.994001,
		0.517241, -0.854549, 0.046985,
		-0.853707, -0.511302, 0.098763,
		45.312275, 31.161108, 45.313015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882381, 30.774475, 44.887192>,  <45.909870, 31.519020, 45.243881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882381, 30.774475, 44.887192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545635, 30.990177, 44.895874>,  <45.343590, 31.119598, 44.901085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545635, 30.990177, 44.895874>,  <45.882381, 30.774475, 44.887192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545635, 30.990177, 44.895874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013211, 0.019613, -0.999720,
		-0.539531, -0.841913, -0.009388,
		-0.841862, 0.539256, 0.021704,
		45.293076, 31.151955, 44.902386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786606, 30.749292, 44.206081>,  <45.882381, 30.774475, 44.887192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786606, 30.749292, 44.206081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532215, 31.042496, 44.302605>,  <45.379581, 31.218418, 44.360519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532215, 31.042496, 44.302605>,  <45.786606, 30.749292, 44.206081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532215, 31.042496, 44.302605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045727, 0.276351, -0.959968,
		-0.770350, -0.621554, -0.142236,
		-0.635979, 0.733008, 0.241309,
		45.341423, 31.262398, 44.374996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332085, 30.690527, 43.675617>,  <45.786606, 30.749292, 44.206081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332085, 30.690527, 43.675617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289124, 31.062033, 43.817528>,  <45.263348, 31.284935, 43.902672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289124, 31.062033, 43.817528>,  <45.332085, 30.690527, 43.675617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289124, 31.062033, 43.817528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198277, 0.329660, -0.923044,
		-0.974244, -0.169482, 0.148745,
		-0.107404, 0.928763, 0.354773,
		45.256901, 31.340662, 43.923962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851238, 30.924622, 43.244930>,  <45.332085, 30.690527, 43.675617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851238, 30.924622, 43.244930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998249, 31.252741, 43.420216>,  <45.086456, 31.449612, 43.525387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998249, 31.252741, 43.420216>,  <44.851238, 30.924622, 43.244930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998249, 31.252741, 43.420216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113695, 0.507292, -0.854242,
		-0.923037, 0.264135, 0.279708,
		0.367528, 0.820298, 0.438218,
		45.108509, 31.498831, 43.551682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471096, 31.445902, 42.992462>,  <44.851238, 30.924622, 43.244930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471096, 31.445902, 42.992462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796505, 31.640753, 43.119511>,  <44.991753, 31.757664, 43.195740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796505, 31.640753, 43.119511>,  <44.471096, 31.445902, 42.992462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796505, 31.640753, 43.119511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015823, 0.564525, -0.825265,
		-0.581313, 0.666348, 0.466963,
		0.813526, 0.487126, 0.317622,
		45.040562, 31.786890, 43.214798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323021, 32.182537, 43.086258>,  <44.471096, 31.445902, 42.992462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323021, 32.182537, 43.086258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716030, 32.159069, 43.015598>,  <44.951836, 32.144989, 42.973202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716030, 32.159069, 43.015598>,  <44.323021, 32.182537, 43.086258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716030, 32.159069, 43.015598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090056, 0.680728, -0.726979,
		0.162897, 0.730183, 0.663549,
		0.982524, -0.058666, -0.176646,
		45.010788, 32.141468, 42.962605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565331, 32.839409, 43.013870>,  <44.323021, 32.182537, 43.086258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565331, 32.839409, 43.013870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834034, 32.602745, 42.835579>,  <44.995258, 32.460747, 42.728603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834034, 32.602745, 42.835579>,  <44.565331, 32.839409, 43.013870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834034, 32.602745, 42.835579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026597, 0.582060, -0.812711,
		0.740289, 0.557804, 0.375269,
		0.671762, -0.591660, -0.445728,
		45.035564, 32.425247, 42.701859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080715, 33.266510, 42.679871>,  <44.565331, 32.839409, 43.013870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080715, 33.266510, 42.679871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137882, 32.914452, 42.498798>,  <45.172184, 32.703217, 42.390156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137882, 32.914452, 42.498798>,  <45.080715, 33.266510, 42.679871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137882, 32.914452, 42.498798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058948, 0.464129, -0.883804,
		0.987977, 0.099630, 0.118217,
		0.142921, -0.880147, -0.452676,
		45.180759, 32.650406, 42.362995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629681, 33.457512, 42.212704>,  <45.080715, 33.266510, 42.679871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629681, 33.457512, 42.212704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459850, 33.124210, 42.071045>,  <45.357952, 32.924229, 41.986050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459850, 33.124210, 42.071045>,  <45.629681, 33.457512, 42.212704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459850, 33.124210, 42.071045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108365, 0.341569, -0.933589,
		0.898884, -0.434755, -0.054726,
		-0.424575, -0.833258, -0.354143,
		45.332478, 32.874233, 41.964802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049473, 33.300583, 41.667557>,  <45.629681, 33.457512, 42.212704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049473, 33.300583, 41.667557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703869, 33.112167, 41.596447>,  <45.496506, 32.999119, 41.553780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703869, 33.112167, 41.596447>,  <46.049473, 33.300583, 41.667557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703869, 33.112167, 41.596447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045736, 0.278206, -0.959432,
		0.501385, -0.837093, -0.218831,
		-0.864015, -0.471037, -0.177774,
		45.444664, 32.970856, 41.543114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245693, 32.957939, 41.060535>,  <46.049473, 33.300583, 41.667557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245693, 32.957939, 41.060535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846710, 32.946293, 41.086552>,  <45.607319, 32.939304, 41.102161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846710, 32.946293, 41.086552>,  <46.245693, 32.957939, 41.060535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846710, 32.946293, 41.086552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069811, 0.216288, -0.973831,
		0.014287, -0.975895, -0.217770,
		-0.997458, -0.029116, 0.065038,
		45.547474, 32.937557, 41.106064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079430, 32.509029, 40.595238>,  <46.245693, 32.957939, 41.060535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079430, 32.509029, 40.595238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769653, 32.759758, 40.629501>,  <45.583786, 32.910194, 40.650059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769653, 32.759758, 40.629501>,  <46.079430, 32.509029, 40.595238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769653, 32.759758, 40.629501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055055, 0.201662, -0.977907,
		-0.630248, -0.752613, -0.190685,
		-0.774439, 0.626822, 0.085661,
		45.537323, 32.947803, 40.655201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729351, 32.445694, 39.954327>,  <46.079430, 32.509029, 40.595238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729351, 32.445694, 39.954327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570389, 32.780464, 40.104858>,  <45.475010, 32.981327, 40.195175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570389, 32.780464, 40.104858>,  <45.729351, 32.445694, 39.954327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570389, 32.780464, 40.104858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111804, 0.451207, -0.885388,
		-0.910805, -0.309787, -0.272885,
		-0.397409, 0.836926, 0.376326,
		45.451164, 33.031544, 40.217758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333206, 32.658703, 39.457417>,  <45.729351, 32.445694, 39.954327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333206, 32.658703, 39.457417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392429, 32.979034, 39.689537>,  <45.427963, 33.171234, 39.828808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392429, 32.979034, 39.689537>,  <45.333206, 32.658703, 39.457417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392429, 32.979034, 39.689537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156232, 0.560458, -0.813313,
		-0.976560, 0.211081, -0.042134,
		0.148061, 0.800832, 0.580298,
		45.436848, 33.219284, 39.863625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820549, 33.261787, 39.292950>,  <45.333206, 32.658703, 39.457417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820549, 33.261787, 39.292950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126324, 33.444019, 39.475414>,  <45.309788, 33.553360, 39.584892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126324, 33.444019, 39.475414>,  <44.820549, 33.261787, 39.292950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126324, 33.444019, 39.475414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164336, 0.546485, -0.821187,
		-0.623403, 0.702708, 0.342884,
		0.764436, 0.455583, 0.456161,
		45.355656, 33.580692, 39.612263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743282, 33.952831, 39.109528>,  <44.820549, 33.261787, 39.292950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743282, 33.952831, 39.109528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130714, 33.938221, 39.207924>,  <45.363174, 33.929455, 39.266960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130714, 33.938221, 39.207924>,  <44.743282, 33.952831, 39.109528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130714, 33.938221, 39.207924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234086, 0.467838, -0.852251,
		-0.083955, 0.883059, 0.461690,
		0.968584, -0.036525, 0.245989,
		45.421291, 33.927265, 39.281719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061390, 34.669193, 39.104317>,  <44.743282, 33.952831, 39.109528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061390, 34.669193, 39.104317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390003, 34.446213, 39.056442>,  <45.587173, 34.312424, 39.027718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390003, 34.446213, 39.056442>,  <45.061390, 34.669193, 39.104317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390003, 34.446213, 39.056442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258105, 0.550791, -0.793733,
		0.508390, 0.621189, 0.596376,
		0.821536, -0.557453, -0.119685,
		45.636463, 34.278976, 39.020538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695480, 35.067440, 38.972160>,  <45.061390, 34.669193, 39.104317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695480, 35.067440, 38.972160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774788, 34.706493, 38.819096>,  <45.822372, 34.489925, 38.727257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774788, 34.706493, 38.819096>,  <45.695480, 35.067440, 38.972160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774788, 34.706493, 38.819096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199821, 0.419428, -0.885523,
		0.959563, 0.099110, 0.263471,
		0.198272, -0.902362, -0.382663,
		45.834270, 34.435783, 38.704296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174854, 35.184006, 38.576000>,  <45.695480, 35.067440, 38.972160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174854, 35.184006, 38.576000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080669, 34.828003, 38.419823>,  <46.024158, 34.614403, 38.326115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080669, 34.828003, 38.419823>,  <46.174854, 35.184006, 38.576000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080669, 34.828003, 38.419823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039682, 0.410211, -0.911127,
		0.971073, -0.199043, -0.131907,
		-0.235463, -0.890005, -0.390446,
		46.010029, 34.561001, 38.302689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504284, 35.149086, 37.948624>,  <46.174854, 35.184006, 38.576000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504284, 35.149086, 37.948624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235806, 34.857689, 37.893795>,  <46.074718, 34.682850, 37.860897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235806, 34.857689, 37.893795>,  <46.504284, 35.149086, 37.948624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235806, 34.857689, 37.893795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175452, 0.335786, -0.925454,
		0.720213, -0.597115, -0.353194,
		-0.671200, -0.728493, -0.137073,
		46.034447, 34.639141, 37.852673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734505, 34.657883, 37.338078>,  <46.504284, 35.149086, 37.948624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734505, 34.657883, 37.338078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337414, 34.643646, 37.384064>,  <46.099159, 34.635105, 37.411655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337414, 34.643646, 37.384064>,  <46.734505, 34.657883, 37.338078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337414, 34.643646, 37.384064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120073, 0.357226, -0.926268,
		-0.008097, -0.933340, -0.358903,
		-0.992732, -0.035594, 0.114961,
		46.039593, 34.632969, 37.418552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452877, 34.507748, 36.695526>,  <46.734505, 34.657883, 37.338078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452877, 34.507748, 36.695526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117554, 34.619263, 36.882938>,  <45.916359, 34.686172, 36.995384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117554, 34.619263, 36.882938>,  <46.452877, 34.507748, 36.695526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117554, 34.619263, 36.882938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403558, 0.260520, -0.877081,
		-0.366584, -0.924340, -0.105886,
		-0.838306, 0.278792, 0.468527,
		45.866062, 34.702900, 37.023495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950592, 34.178967, 36.275085>,  <46.452877, 34.507748, 36.695526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950592, 34.178967, 36.275085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815865, 34.494438, 36.480820>,  <45.735027, 34.683720, 36.604259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815865, 34.494438, 36.480820>,  <45.950592, 34.178967, 36.275085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815865, 34.494438, 36.480820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440646, 0.350706, -0.826339,
		-0.832095, -0.504968, 0.229402,
		-0.336822, 0.788677, 0.514333,
		45.714817, 34.731041, 36.635120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650711, 34.382427, 35.856392>,  <45.950592, 34.178967, 36.275085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650711, 34.382427, 35.856392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887829, 34.387344, 35.534286>,  <47.030098, 34.390293, 35.341022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887829, 34.387344, 35.534286>,  <46.650711, 34.382427, 35.856392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887829, 34.387344, 35.534286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448561, 0.835473, -0.317454,
		0.668873, 0.549393, 0.500775,
		0.592791, 0.012292, -0.805262,
		47.065666, 34.391033, 35.292709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015995, 35.012791, 35.756317>,  <46.650711, 34.382427, 35.856392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015995, 35.012791, 35.756317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972431, 34.837543, 35.399399>,  <46.946293, 34.732395, 35.185249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972431, 34.837543, 35.399399>,  <47.015995, 35.012791, 35.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.972431, 34.837543, 35.399399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484649, 0.807123, -0.337146,
		0.867903, 0.395733, -0.300233,
		-0.108905, -0.438118, -0.892296,
		46.939758, 34.706108, 35.131710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.322117, 35.311310, 35.120003>,  <47.015995, 35.012791, 35.756317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.322117, 35.311310, 35.120003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981266, 35.132614, 35.010971>,  <46.776756, 35.025394, 34.945553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981266, 35.132614, 35.010971>,  <47.322117, 35.311310, 35.120003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981266, 35.132614, 35.010971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364213, 0.880264, -0.304114,
		0.375805, -0.159866, -0.912805,
		-0.852127, -0.446743, -0.272582,
		46.725628, 34.998592, 34.929195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.064861, 35.480789, 35.203278>,  <47.322117, 35.311310, 35.120003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.064861, 35.480789, 35.203278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882301, 35.162521, 35.043976>,  <47.772766, 34.971561, 34.948395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882301, 35.162521, 35.043976>,  <48.064861, 35.480789, 35.203278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.882301, 35.162521, 35.043976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854234, 0.266591, 0.446333,
		-0.248963, 0.543909, -0.801362,
		-0.456400, -0.795671, -0.398255,
		47.745380, 34.923820, 34.924500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.882095, 42.346943, 45.158890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602993, 42.061108, 45.138844>,  <36.435532, 41.889606, 45.126816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602993, 42.061108, 45.138844>,  <36.882095, 42.346943, 45.158890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602993, 42.061108, 45.138844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147538, -0.074896, -0.986216,
		0.700981, -0.695529, 0.157687,
		-0.697752, -0.714584, -0.050116,
		36.393669, 41.846733, 45.123810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157104, 41.756832, 44.694832>,  <36.882095, 42.346943, 45.158890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157104, 41.756832, 44.694832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758080, 41.732853, 44.709145>,  <36.518665, 41.718464, 44.717731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758080, 41.732853, 44.709145>,  <37.157104, 41.756832, 44.694832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758080, 41.732853, 44.709145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017670, -0.279088, -0.960103,
		0.067546, -0.958392, 0.277347,
		-0.997559, -0.059951, 0.035786,
		36.458813, 41.714867, 44.719879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973373, 41.078178, 44.569859>,  <37.157104, 41.756832, 44.694832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973373, 41.078178, 44.569859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673412, 41.325909, 44.476830>,  <36.493435, 41.474545, 44.421013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673412, 41.325909, 44.476830>,  <36.973373, 41.078178, 44.569859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673412, 41.325909, 44.476830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019588, -0.330611, -0.943564,
		-0.661260, -0.712136, 0.235794,
		-0.749902, 0.619322, -0.232569,
		36.448441, 41.511703, 44.407059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507187, 40.713520, 44.182621>,  <36.973373, 41.078178, 44.569859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507187, 40.713520, 44.182621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425728, 41.094944, 44.093845>,  <36.376854, 41.323799, 44.040581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425728, 41.094944, 44.093845>,  <36.507187, 40.713520, 44.182621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425728, 41.094944, 44.093845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069016, -0.240111, -0.968289,
		-0.976609, -0.181868, 0.114708,
		-0.203643, 0.953557, -0.221943,
		36.364635, 41.381012, 44.027264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738979, 40.752262, 43.768097>,  <36.507187, 40.713520, 44.182621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738979, 40.752262, 43.768097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970608, 41.071266, 43.700386>,  <36.109585, 41.262669, 43.659760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970608, 41.071266, 43.700386>,  <35.738979, 40.752262, 43.768097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970608, 41.071266, 43.700386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019960, -0.221431, -0.974972,
		-0.815035, 0.561196, -0.144142,
		0.579067, 0.797513, -0.169272,
		36.144329, 41.310520, 43.649605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471886, 41.060764, 43.135662>,  <35.738979, 40.752262, 43.768097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471886, 41.060764, 43.135662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830181, 41.233410, 43.178314>,  <36.045158, 41.336998, 43.203903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830181, 41.233410, 43.178314>,  <35.471886, 41.060764, 43.135662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830181, 41.233410, 43.178314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225912, -0.235311, -0.945300,
		-0.382914, 0.870826, -0.308283,
		0.895735, 0.431614, 0.106626,
		36.098900, 41.362896, 43.210300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575500, 41.273067, 42.497402>,  <35.471886, 41.060764, 43.135662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575500, 41.273067, 42.497402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950191, 41.299644, 42.634876>,  <36.175007, 41.315590, 42.717361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950191, 41.299644, 42.634876>,  <35.575500, 41.273067, 42.497402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950191, 41.299644, 42.634876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348980, -0.253985, -0.902056,
		0.027358, 0.964923, -0.261103,
		0.936731, 0.066442, 0.343688,
		36.231209, 41.319576, 42.737984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962631, 41.762375, 42.117435>,  <35.575500, 41.273067, 42.497402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962631, 41.762375, 42.117435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225601, 41.504181, 42.272945>,  <36.383381, 41.349266, 42.366253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225601, 41.504181, 42.272945>,  <35.962631, 41.762375, 42.117435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225601, 41.504181, 42.272945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345634, -0.200151, -0.916775,
		0.669579, 0.737081, 0.091518,
		0.657420, -0.645485, 0.388777,
		36.422829, 41.310535, 42.389580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537418, 41.892506, 41.701138>,  <35.962631, 41.762375, 42.117435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537418, 41.892506, 41.701138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632835, 41.547276, 41.879219>,  <36.690086, 41.340137, 41.986069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632835, 41.547276, 41.879219>,  <36.537418, 41.892506, 41.701138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632835, 41.547276, 41.879219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533401, -0.266648, -0.802734,
		0.811529, 0.428959, 0.396756,
		0.238546, -0.863072, 0.445199,
		36.704399, 41.288353, 42.012779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292603, 41.748615, 41.602066>,  <36.537418, 41.892506, 41.701138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292603, 41.748615, 41.602066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148617, 41.385086, 41.686417>,  <37.062225, 41.166969, 41.737026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148617, 41.385086, 41.686417>,  <37.292603, 41.748615, 41.602066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148617, 41.385086, 41.686417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547179, -0.388727, -0.741273,
		0.755660, -0.151440, 0.637215,
		-0.359961, -0.908822, 0.210881,
		37.040627, 41.112438, 41.749680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845051, 41.370884, 41.567436>,  <37.292603, 41.748615, 41.602066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845051, 41.370884, 41.567436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540215, 41.120518, 41.501167>,  <37.357315, 40.970299, 41.461407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540215, 41.120518, 41.501167>,  <37.845051, 41.370884, 41.567436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540215, 41.120518, 41.501167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413892, -0.274171, -0.868058,
		0.497911, -0.730107, 0.468005,
		-0.762088, -0.625919, -0.165673,
		37.311588, 40.932743, 41.451466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080864, 40.791183, 41.478260>,  <37.845051, 41.370884, 41.567436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080864, 40.791183, 41.478260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725529, 40.746315, 41.300152>,  <37.512325, 40.719395, 41.193287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725529, 40.746315, 41.300152>,  <38.080864, 40.791183, 41.478260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725529, 40.746315, 41.300152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443276, -0.462502, -0.767853,
		-0.119812, -0.879495, 0.460580,
		-0.888342, -0.112166, -0.445272,
		37.459026, 40.712666, 41.166569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110428, 40.165115, 41.400833>,  <38.080864, 40.791183, 41.478260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110428, 40.165115, 41.400833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819229, 40.287689, 41.155521>,  <37.644508, 40.361233, 41.008335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819229, 40.287689, 41.155521>,  <38.110428, 40.165115, 41.400833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819229, 40.287689, 41.155521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377531, -0.567509, -0.731713,
		-0.572296, -0.764207, 0.297433,
		-0.727975, 0.306466, -0.613295,
		37.600830, 40.379620, 40.971535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838650, 39.546741, 41.017151>,  <38.110428, 40.165115, 41.400833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838650, 39.546741, 41.017151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732090, 39.862362, 40.795727>,  <37.668152, 40.051735, 40.662872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732090, 39.862362, 40.795727>,  <37.838650, 39.546741, 41.017151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732090, 39.862362, 40.795727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196293, -0.517868, -0.832636,
		-0.943662, -0.330477, -0.016922,
		-0.266404, 0.789049, -0.553563,
		37.652168, 40.099075, 40.629658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493881, 39.177441, 40.543446>,  <37.838650, 39.546741, 41.017151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493881, 39.177441, 40.543446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585640, 39.529945, 40.378151>,  <37.640697, 39.741447, 40.278976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585640, 39.529945, 40.378151>,  <37.493881, 39.177441, 40.543446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585640, 39.529945, 40.378151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257612, -0.464386, -0.847338,
		-0.938622, 0.087926, -0.333552,
		0.229400, 0.881257, -0.413233,
		37.654461, 39.794323, 40.254181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028008, 39.271622, 40.020523>,  <37.493881, 39.177441, 40.543446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028008, 39.271622, 40.020523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342499, 39.508389, 39.949551>,  <37.531193, 39.650448, 39.906967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342499, 39.508389, 39.949551>,  <37.028008, 39.271622, 40.020523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342499, 39.508389, 39.949551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178087, -0.492005, -0.852183,
		-0.591718, 0.638411, -0.492241,
		0.786228, 0.591913, -0.177436,
		37.578369, 39.685963, 39.896320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948120, 39.351727, 39.346737>,  <37.028008, 39.271622, 40.020523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948120, 39.351727, 39.346737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322308, 39.478828, 39.408619>,  <37.546818, 39.555092, 39.445747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322308, 39.478828, 39.408619>,  <36.948120, 39.351727, 39.346737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322308, 39.478828, 39.408619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265650, -0.343491, -0.900802,
		-0.233097, 0.883767, -0.405736,
		0.935466, 0.317758, 0.154706,
		37.602947, 39.574158, 39.455032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133739, 39.725010, 38.731190>,  <36.948120, 39.351727, 39.346737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133739, 39.725010, 38.731190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468025, 39.596622, 38.909428>,  <37.668598, 39.519588, 39.016369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468025, 39.596622, 38.909428>,  <37.133739, 39.725010, 38.731190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468025, 39.596622, 38.909428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402033, -0.195146, -0.894588,
		0.374094, 0.926766, -0.034045,
		0.835717, -0.320972, 0.445594,
		37.718739, 39.500332, 39.043106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576721, 40.085178, 38.336021>,  <37.133739, 39.725010, 38.731190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576721, 40.085178, 38.336021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774960, 39.791042, 38.520916>,  <37.893902, 39.614563, 38.631855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774960, 39.791042, 38.520916>,  <37.576721, 40.085178, 38.336021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774960, 39.791042, 38.520916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499915, -0.193705, -0.844135,
		0.710262, 0.649429, 0.271607,
		0.495594, -0.735337, 0.462240,
		37.923637, 39.570442, 38.659588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362671, 40.198383, 38.186470>,  <37.576721, 40.085178, 38.336021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362671, 40.198383, 38.186470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313847, 39.815903, 38.292892>,  <38.284550, 39.586414, 38.356747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313847, 39.815903, 38.292892>,  <38.362671, 40.198383, 38.186470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313847, 39.815903, 38.292892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424754, -0.292598, -0.856721,
		0.897042, 0.008433, 0.441865,
		-0.122064, -0.956199, 0.266054,
		38.277225, 39.529041, 38.372707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002045, 39.900539, 37.946697>,  <38.362671, 40.198383, 38.186470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002045, 39.900539, 37.946697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786186, 39.570122, 38.011723>,  <38.656670, 39.371872, 38.050735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786186, 39.570122, 38.011723>,  <39.002045, 39.900539, 37.946697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786186, 39.570122, 38.011723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294830, -0.366291, -0.882557,
		0.788578, -0.428342, 0.441212,
		-0.539648, -0.826047, 0.162560,
		38.624290, 39.322308, 38.060490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449566, 39.323570, 37.868797>,  <39.002045, 39.900539, 37.946697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449566, 39.323570, 37.868797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077583, 39.184631, 37.820568>,  <38.854393, 39.101269, 37.791630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077583, 39.184631, 37.820568>,  <39.449566, 39.323570, 37.868797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077583, 39.184631, 37.820568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282808, -0.466179, -0.838270,
		0.234962, -0.813651, 0.531756,
		-0.929953, -0.347347, -0.120572,
		38.798599, 39.080429, 37.784397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056301, 39.901203, 37.965839>,  <39.449566, 39.323570, 37.868797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056301, 39.901203, 37.965839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378571, 39.664860, 37.982674>,  <40.571934, 39.523052, 37.992775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378571, 39.664860, 37.982674>,  <40.056301, 39.901203, 37.965839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378571, 39.664860, 37.982674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185726, 0.319439, 0.929228,
		-0.562490, -0.740839, 0.367102,
		0.805675, -0.590862, 0.042088,
		40.620274, 39.487602, 37.995300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955685, 39.646461, 38.610210>,  <40.056301, 39.901203, 37.965839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955685, 39.646461, 38.610210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.329830, 39.527576, 38.533520>,  <40.554317, 39.456245, 38.487507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.329830, 39.527576, 38.533520>,  <39.955685, 39.646461, 38.610210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329830, 39.527576, 38.533520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270160, 0.250527, 0.929650,
		-0.228271, -0.921358, 0.314629,
		0.935364, -0.297212, -0.191726,
		40.610439, 39.438412, 38.476002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067795, 39.160225, 39.153633>,  <39.955685, 39.646461, 38.610210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067795, 39.160225, 39.153633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430992, 39.253113, 39.014130>,  <40.648911, 39.308846, 38.930428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430992, 39.253113, 39.014130>,  <40.067795, 39.160225, 39.153633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430992, 39.253113, 39.014130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304323, 0.206619, 0.929891,
		0.288002, -0.950463, 0.116936,
		0.907988, 0.232224, -0.348754,
		40.703388, 39.322781, 38.909504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639538, 38.705429, 39.508137>,  <40.067795, 39.160225, 39.153633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639538, 38.705429, 39.508137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.781933, 39.061390, 39.394054>,  <40.867371, 39.274967, 39.325603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.781933, 39.061390, 39.394054>,  <40.639538, 38.705429, 39.508137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781933, 39.061390, 39.394054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239617, 0.208070, 0.948309,
		0.903250, -0.405922, -0.139167,
		0.355983, 0.889907, -0.285205,
		40.888729, 39.328362, 39.308495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178326, 38.900478, 40.014481>,  <40.639538, 38.705429, 39.508137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178326, 38.900478, 40.014481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.103745, 39.253674, 39.842167>,  <41.058994, 39.465591, 39.738777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.103745, 39.253674, 39.842167>,  <41.178326, 38.900478, 40.014481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103745, 39.253674, 39.842167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057022, 0.447460, 0.892484,
		0.980807, 0.141845, -0.133781,
		-0.186456, 0.882983, -0.430784,
		41.047810, 39.518570, 39.712933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759895, 39.301834, 40.164459>,  <41.178326, 38.900478, 40.014481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759895, 39.301834, 40.164459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.445267, 39.538738, 40.094563>,  <41.256489, 39.680882, 40.052624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.445267, 39.538738, 40.094563>,  <41.759895, 39.301834, 40.164459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445267, 39.538738, 40.094563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024458, 0.312636, 0.949558,
		0.617018, 0.742619, -0.260395,
		-0.786569, 0.592263, -0.174739,
		41.209297, 39.716415, 40.042141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946140, 39.925026, 40.556145>,  <41.759895, 39.301834, 40.164459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946140, 39.925026, 40.556145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.554806, 39.959141, 40.480698>,  <41.320004, 39.979610, 40.435429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.554806, 39.959141, 40.480698>,  <41.946140, 39.925026, 40.556145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554806, 39.959141, 40.480698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155807, 0.296547, 0.942223,
		0.136294, 0.951202, -0.276836,
		-0.978340, 0.085286, -0.188621,
		41.261303, 39.984726, 40.424110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787773, 40.520771, 40.821705>,  <41.946140, 39.925026, 40.556145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787773, 40.520771, 40.821705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.426559, 40.350327, 40.799965>,  <41.209831, 40.248058, 40.786919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.426559, 40.350327, 40.799965>,  <41.787773, 40.520771, 40.821705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426559, 40.350327, 40.799965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255827, 0.431832, 0.864913,
		-0.345081, 0.794951, -0.498971,
		-0.903035, -0.426115, -0.054353,
		41.155647, 40.222492, 40.783657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297176, 41.008957, 40.997318>,  <41.787773, 40.520771, 40.821705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297176, 41.008957, 40.997318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.131130, 40.651474, 41.065395>,  <41.031502, 40.436985, 41.106239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.131130, 40.651474, 41.065395>,  <41.297176, 41.008957, 40.997318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131130, 40.651474, 41.065395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249325, 0.291662, 0.923456,
		-0.874937, 0.340909, -0.343898,
		-0.415116, -0.893708, 0.170188,
		41.006596, 40.383362, 41.116451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677528, 41.188015, 41.447659>,  <41.297176, 41.008957, 40.997318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677528, 41.188015, 41.447659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718605, 40.794388, 41.505718>,  <40.743252, 40.558212, 41.540554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718605, 40.794388, 41.505718>,  <40.677528, 41.188015, 41.447659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718605, 40.794388, 41.505718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311667, 0.106742, 0.944177,
		-0.944626, -0.142195, -0.295740,
		0.102690, -0.984066, 0.145149,
		40.749413, 40.499168, 41.549263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062119, 41.034813, 41.920631>,  <40.677528, 41.188015, 41.447659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062119, 41.034813, 41.920631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311291, 40.725075, 41.965084>,  <40.460793, 40.539230, 41.991756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311291, 40.725075, 41.965084>,  <40.062119, 41.034813, 41.920631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311291, 40.725075, 41.965084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290509, -0.097087, 0.951934,
		-0.726336, -0.625272, -0.285433,
		0.622930, -0.774344, 0.111129,
		40.498169, 40.492771, 41.998425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672256, 40.505875, 42.213490>,  <40.062119, 41.034813, 41.920631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672256, 40.505875, 42.213490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052299, 40.410572, 42.294029>,  <40.280323, 40.353390, 42.342354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052299, 40.410572, 42.294029>,  <39.672256, 40.505875, 42.213490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052299, 40.410572, 42.294029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235298, -0.123627, 0.964029,
		-0.204794, -0.963302, -0.173519,
		0.950102, -0.238256, 0.201345,
		40.337330, 40.339096, 42.354431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704746, 39.874554, 42.663334>,  <39.672256, 40.505875, 42.213490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704746, 39.874554, 42.663334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.023926, 40.109303, 42.718262>,  <40.215435, 40.250153, 42.751221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.023926, 40.109303, 42.718262>,  <39.704746, 39.874554, 42.663334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023926, 40.109303, 42.718262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220722, 0.072519, 0.972637,
		0.560852, -0.806428, 0.187402,
		0.797952, 0.586869, 0.137324,
		40.263309, 40.285362, 42.759460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208382, 39.552925, 43.200230>,  <39.704746, 39.874554, 42.663334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208382, 39.552925, 43.200230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243393, 39.950527, 43.226467>,  <40.264400, 40.189087, 43.242210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243393, 39.950527, 43.226467>,  <40.208382, 39.552925, 43.200230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243393, 39.950527, 43.226467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022887, -0.067836, 0.997434,
		0.995899, -0.085798, -0.028687,
		0.087524, 0.994000, 0.065594,
		40.269650, 40.248726, 43.246147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592007, 39.586929, 43.778980>,  <40.208382, 39.552925, 43.200230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592007, 39.586929, 43.778980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449268, 39.956890, 43.726505>,  <40.363625, 40.178867, 43.695019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449268, 39.956890, 43.726505>,  <40.592007, 39.586929, 43.778980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449268, 39.956890, 43.726505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206007, 0.059062, 0.976766,
		0.911165, 0.375583, 0.169461,
		-0.356848, 0.924905, -0.131188,
		40.342213, 40.234360, 43.687149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672417, 39.869766, 44.503971>,  <40.592007, 39.586929, 43.778980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672417, 39.869766, 44.503971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422928, 40.107582, 44.300995>,  <40.273235, 40.250271, 44.179211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422928, 40.107582, 44.300995>,  <40.672417, 39.869766, 44.503971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422928, 40.107582, 44.300995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447426, 0.260752, 0.855464,
		0.640924, 0.760612, 0.103376,
		-0.623721, 0.594540, -0.507439,
		40.235813, 40.285946, 44.148762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587353, 40.549278, 44.897526>,  <40.672417, 39.869766, 44.503971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587353, 40.549278, 44.897526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265533, 40.528858, 44.660847>,  <40.072441, 40.516605, 44.518841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265533, 40.528858, 44.660847>,  <40.587353, 40.549278, 44.897526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265533, 40.528858, 44.660847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582457, 0.262395, 0.769346,
		0.115980, 0.963609, -0.240845,
		-0.804545, -0.051053, -0.591693,
		40.024170, 40.513542, 44.483337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302109, 41.217575, 44.909374>,  <40.587353, 40.549278, 44.897526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302109, 41.217575, 44.909374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029228, 40.942959, 44.808765>,  <39.865501, 40.778187, 44.748402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029228, 40.942959, 44.808765>,  <40.302109, 41.217575, 44.909374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029228, 40.942959, 44.808765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607947, 0.341505, 0.716781,
		-0.406206, 0.641898, -0.650356,
		-0.682200, -0.686543, -0.251518,
		39.824570, 40.736996, 44.733311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.656296, 41.604214, 45.084389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521725, 41.231598, 45.029186>,  <39.440983, 41.008026, 44.996063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521725, 41.231598, 45.029186>,  <39.656296, 41.604214, 45.084389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521725, 41.231598, 45.029186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586429, 0.092571, 0.804693,
		-0.736830, 0.351654, -0.577426,
		-0.336427, -0.931542, -0.138010,
		39.420795, 40.952137, 44.987782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896542, 41.646538, 44.961330>,  <39.656296, 41.604214, 45.084389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896542, 41.646538, 44.961330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.987141, 41.274994, 45.078575>,  <39.041500, 41.052067, 45.148922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.987141, 41.274994, 45.078575>,  <38.896542, 41.646538, 44.961330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987141, 41.274994, 45.078575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713428, 0.046667, 0.699173,
		-0.663114, -0.367473, -0.652106,
		0.226496, -0.928863, 0.293111,
		39.055088, 40.996334, 45.166508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286621, 41.255539, 44.995041>,  <38.896542, 41.646538, 44.961330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286621, 41.255539, 44.995041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556545, 41.121689, 45.258144>,  <38.718502, 41.041378, 45.416008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556545, 41.121689, 45.258144>,  <38.286621, 41.255539, 44.995041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556545, 41.121689, 45.258144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651628, 0.148203, 0.743920,
		-0.346420, -0.930623, -0.118044,
		0.674815, -0.334630, 0.657760,
		38.758991, 41.021301, 45.455471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857399, 40.763699, 45.402046>,  <38.286621, 41.255539, 44.995041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857399, 40.763699, 45.402046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194466, 40.833614, 45.605755>,  <38.396706, 40.875565, 45.727982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194466, 40.833614, 45.605755>,  <37.857399, 40.763699, 45.402046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194466, 40.833614, 45.605755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510256, -0.042730, 0.858961,
		0.171898, -0.983678, 0.053180,
		0.842668, 0.174789, 0.509272,
		38.447266, 40.886051, 45.758537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763668, 40.381084, 45.984459>,  <37.857399, 40.763699, 45.402046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763668, 40.381084, 45.984459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066910, 40.613171, 46.103542>,  <38.248856, 40.752422, 46.174992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066910, 40.613171, 46.103542>,  <37.763668, 40.381084, 45.984459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066910, 40.613171, 46.103542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284788, -0.116122, 0.951531,
		0.586663, -0.806142, 0.077206,
		0.758104, 0.580216, 0.297705,
		38.294342, 40.787235, 46.192852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060177, 40.034912, 46.491573>,  <37.763668, 40.381084, 45.984459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060177, 40.034912, 46.491573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154587, 40.419315, 46.549206>,  <38.211235, 40.649956, 46.583786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154587, 40.419315, 46.549206>,  <38.060177, 40.034912, 46.491573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154587, 40.419315, 46.549206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338417, -0.057696, 0.939226,
		0.910914, -0.270442, 0.311603,
		0.236028, 0.961006, 0.144078,
		38.225395, 40.707619, 46.592430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044998, 40.135647, 47.197495>,  <38.060177, 40.034912, 46.491573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044998, 40.135647, 47.197495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064583, 40.523552, 47.101868>,  <38.076332, 40.756294, 47.044491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064583, 40.523552, 47.101868>,  <38.044998, 40.135647, 47.197495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064583, 40.523552, 47.101868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233926, 0.243834, 0.941182,
		0.971021, 0.009845, 0.238792,
		0.048959, 0.969767, -0.239071,
		38.079269, 40.814484, 47.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595024, 40.530094, 47.671955>,  <38.044998, 40.135647, 47.197495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595024, 40.530094, 47.671955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336494, 40.796497, 47.522984>,  <38.181377, 40.956337, 47.433601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336494, 40.796497, 47.522984>,  <38.595024, 40.530094, 47.671955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336494, 40.796497, 47.522984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195658, 0.327114, 0.924508,
		0.737556, 0.670397, -0.081111,
		-0.646320, 0.666006, -0.372433,
		38.142597, 40.996300, 47.411255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738560, 41.271336, 47.821213>,  <38.595024, 40.530094, 47.671955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738560, 41.271336, 47.821213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347775, 41.253567, 47.737713>,  <38.113304, 41.242905, 47.687614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347775, 41.253567, 47.737713>,  <38.738560, 41.271336, 47.821213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347775, 41.253567, 47.737713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205732, 0.456176, 0.865781,
		0.056770, 0.888780, -0.454804,
		-0.976960, -0.044418, -0.208748,
		38.054688, 41.240242, 47.675087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400620, 41.897480, 47.990105>,  <38.738560, 41.271336, 47.821213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400620, 41.897480, 47.990105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140839, 41.594646, 48.018494>,  <37.984970, 41.412945, 48.035526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140839, 41.594646, 48.018494>,  <38.400620, 41.897480, 47.990105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140839, 41.594646, 48.018494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096292, 0.174461, 0.979944,
		-0.754284, 0.629590, -0.186205,
		-0.649449, -0.757087, 0.070968,
		37.946003, 41.367519, 48.039783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896862, 42.129501, 48.514687>,  <38.400620, 41.897480, 47.990105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896862, 42.129501, 48.514687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867279, 41.731033, 48.496040>,  <37.849529, 41.491951, 48.484852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867279, 41.731033, 48.496040>,  <37.896862, 42.129501, 48.514687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867279, 41.731033, 48.496040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061548, -0.042093, 0.997216,
		-0.995360, 0.076625, -0.058199,
		-0.073962, -0.996171, -0.046613,
		37.845089, 41.432182, 48.482056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537174, 41.952587, 49.080387>,  <37.896862, 42.129501, 48.514687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537174, 41.952587, 49.080387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670837, 41.584042, 49.000969>,  <37.751034, 41.362915, 48.953316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670837, 41.584042, 49.000969>,  <37.537174, 41.952587, 49.080387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670837, 41.584042, 49.000969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041006, -0.224669, 0.973572,
		-0.941625, -0.317184, -0.112857,
		0.334157, -0.921367, -0.198547,
		37.771084, 41.307632, 48.941406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126038, 41.425766, 49.323105>,  <37.537174, 41.952587, 49.080387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126038, 41.425766, 49.323105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476086, 41.236927, 49.280613>,  <37.686115, 41.123623, 49.255116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476086, 41.236927, 49.280613>,  <37.126038, 41.425766, 49.323105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476086, 41.236927, 49.280613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002209, -0.215635, 0.976471,
		-0.483893, -0.854769, -0.187665,
		0.875125, -0.472093, -0.106233,
		37.738625, 41.095299, 49.248745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066532, 40.753063, 49.673271>,  <37.126038, 41.425766, 49.323105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066532, 40.753063, 49.673271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461010, 40.819283, 49.674553>,  <37.697697, 40.859013, 49.675320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461010, 40.819283, 49.674553>,  <37.066532, 40.753063, 49.673271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461010, 40.819283, 49.674553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049506, -0.313260, 0.948376,
		0.158007, -0.935126, -0.317132,
		0.986196, 0.165550, 0.003203,
		37.756870, 40.868946, 49.675514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326214, 40.305416, 50.187454>,  <37.066532, 40.753063, 49.673271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326214, 40.305416, 50.187454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640720, 40.544430, 50.124538>,  <37.829426, 40.687840, 50.086788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640720, 40.544430, 50.124538>,  <37.326214, 40.305416, 50.187454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640720, 40.544430, 50.124538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309406, -0.160402, 0.937304,
		0.534842, -0.785636, -0.310999,
		0.786265, 0.597534, -0.157291,
		37.876598, 40.723690, 50.077351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869274, 39.965900, 50.341007>,  <37.326214, 40.305416, 50.187454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869274, 39.965900, 50.341007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922680, 40.360516, 50.378765>,  <37.954723, 40.597286, 50.401421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922680, 40.360516, 50.378765>,  <37.869274, 39.965900, 50.341007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922680, 40.360516, 50.378765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326908, -0.133759, 0.935543,
		0.935577, -0.094054, -0.340367,
		0.133519, 0.986541, 0.094395,
		37.962734, 40.656479, 50.407085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410984, 39.995487, 50.815472>,  <37.869274, 39.965900, 50.341007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410984, 39.995487, 50.815472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.224743, 40.349480, 50.817436>,  <38.112999, 40.561874, 50.818615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.224743, 40.349480, 50.817436>,  <38.410984, 39.995487, 50.815472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224743, 40.349480, 50.817436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081176, 0.037185, 0.996006,
		0.881265, 0.464138, -0.089153,
		-0.465599, 0.884982, 0.004907,
		38.085064, 40.614975, 50.818909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660103, 40.246918, 51.366798>,  <38.410984, 39.995487, 50.815472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660103, 40.246918, 51.366798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348621, 40.482929, 51.281494>,  <38.161732, 40.624538, 51.230312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348621, 40.482929, 51.281494>,  <38.660103, 40.246918, 51.366798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348621, 40.482929, 51.281494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035504, 0.297935, 0.953926,
		0.626386, 0.750397, -0.211055,
		-0.778704, 0.590033, -0.213264,
		38.115009, 40.659939, 51.217514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781307, 40.870918, 51.803600>,  <38.660103, 40.246918, 51.366798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781307, 40.870918, 51.803600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400085, 40.859074, 51.683060>,  <38.171352, 40.851967, 51.610737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400085, 40.859074, 51.683060>,  <38.781307, 40.870918, 51.803600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400085, 40.859074, 51.683060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294537, 0.321541, 0.899922,
		0.070248, 0.946433, -0.315167,
		-0.953054, -0.029611, -0.301348,
		38.114170, 40.850189, 51.592655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462566, 41.339439, 52.252502>,  <38.781307, 40.870918, 51.803600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462566, 41.339439, 52.252502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151272, 41.126980, 52.118504>,  <37.964497, 40.999504, 52.038105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151272, 41.126980, 52.118504>,  <38.462566, 41.339439, 52.252502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151272, 41.126980, 52.118504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466312, 0.131500, 0.874792,
		-0.420594, 0.837011, -0.350020,
		-0.778238, -0.531150, -0.335001,
		37.917801, 40.967636, 52.018002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890568, 41.788891, 52.369629>,  <38.462566, 41.339439, 52.252502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890568, 41.788891, 52.369629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755657, 41.413193, 52.344162>,  <37.674709, 41.187775, 52.328880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755657, 41.413193, 52.344162>,  <37.890568, 41.788891, 52.369629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755657, 41.413193, 52.344162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409942, 0.085650, 0.908082,
		-0.847461, 0.332379, -0.413925,
		-0.337280, -0.939249, -0.063671,
		37.654472, 41.131416, 52.325062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282330, 41.720970, 52.646244>,  <37.890568, 41.788891, 52.369629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282330, 41.720970, 52.646244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407986, 41.344894, 52.698936>,  <37.483379, 41.119247, 52.730553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407986, 41.344894, 52.698936>,  <37.282330, 41.720970, 52.646244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407986, 41.344894, 52.698936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420753, -0.013498, 0.907075,
		-0.851048, -0.340375, -0.399829,
		0.314142, -0.940193, 0.131727,
		37.502228, 41.062836, 52.738453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752544, 41.244064, 52.930378>,  <37.282330, 41.720970, 52.646244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752544, 41.244064, 52.930378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113914, 41.105072, 53.030846>,  <37.330734, 41.021675, 53.091125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113914, 41.105072, 53.030846>,  <36.752544, 41.244064, 52.930378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113914, 41.105072, 53.030846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369219, -0.332713, 0.867744,
		-0.217958, -0.876675, -0.428877,
		0.903422, -0.347482, 0.251167,
		37.384941, 41.000828, 53.106194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123363, 41.147038, 53.164478>,  <36.752544, 41.244064, 52.930378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123363, 41.147038, 53.164478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870480, 40.840042, 53.206963>,  <35.718750, 40.655846, 53.232452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870480, 40.840042, 53.206963>,  <36.123363, 41.147038, 53.164478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870480, 40.840042, 53.206963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325176, 0.138407, -0.935470,
		0.703261, -0.625946, -0.337070,
		-0.632207, -0.767487, 0.106206,
		35.680817, 40.609795, 53.238823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323151, 40.637760, 52.688374>,  <36.123363, 41.147038, 53.164478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323151, 40.637760, 52.688374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936142, 40.596039, 52.780476>,  <35.703938, 40.571007, 52.835739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936142, 40.596039, 52.780476>,  <36.323151, 40.637760, 52.688374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936142, 40.596039, 52.780476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227746, -0.035543, -0.973072,
		0.109682, -0.993910, 0.010633,
		-0.967523, -0.104307, 0.230257,
		35.645885, 40.564747, 52.849552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028591, 40.015686, 52.455246>,  <36.323151, 40.637760, 52.688374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028591, 40.015686, 52.455246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727905, 40.278919, 52.472435>,  <35.547493, 40.436859, 52.482750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727905, 40.278919, 52.472435>,  <36.028591, 40.015686, 52.455246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727905, 40.278919, 52.472435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219017, -0.187655, -0.957506,
		-0.622056, -0.729185, 0.285195,
		-0.751716, 0.658084, 0.042972,
		35.502392, 40.476345, 52.485325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548729, 39.803944, 51.906902>,  <36.028591, 40.015686, 52.455246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548729, 39.803944, 51.906902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408382, 40.161800, 52.017536>,  <35.324173, 40.376514, 52.083916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408382, 40.161800, 52.017536>,  <35.548729, 39.803944, 51.906902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408382, 40.161800, 52.017536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304274, 0.170410, -0.937218,
		-0.885611, -0.412999, 0.212425,
		-0.350871, 0.894646, 0.276582,
		35.303120, 40.430195, 52.100510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930195, 39.826729, 51.602718>,  <35.548729, 39.803944, 51.906902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930195, 39.826729, 51.602718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055569, 40.203873, 51.647945>,  <35.130795, 40.430157, 51.675079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055569, 40.203873, 51.647945>,  <34.930195, 39.826729, 51.602718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055569, 40.203873, 51.647945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203074, 0.182859, -0.961937,
		-0.927642, 0.278544, 0.248784,
		0.313435, 0.942855, 0.113063,
		35.149601, 40.486729, 51.681866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440670, 40.174881, 51.228386>,  <34.930195, 39.826729, 51.602718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440670, 40.174881, 51.228386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709282, 40.467827, 51.273441>,  <34.870449, 40.643593, 51.300476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709282, 40.467827, 51.273441>,  <34.440670, 40.174881, 51.228386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709282, 40.467827, 51.273441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114263, 0.047845, -0.992298,
		-0.732111, 0.679232, -0.051553,
		0.671534, 0.732363, 0.112639,
		34.910744, 40.687534, 51.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143276, 40.808632, 50.940300>,  <34.440670, 40.174881, 51.228386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143276, 40.808632, 50.940300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543255, 40.808571, 50.944611>,  <34.783241, 40.808537, 50.947197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543255, 40.808571, 50.944611>,  <34.143276, 40.808632, 50.940300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543255, 40.808571, 50.944611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010781, 0.025638, -0.999613,
		-0.000126, 0.999671, 0.025638,
		0.999942, -0.000151, 0.010781,
		34.843239, 40.808525, 50.947845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228798, 41.265026, 50.404785>,  <34.143276, 40.808632, 50.940300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228798, 41.265026, 50.404785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582554, 41.081749, 50.440353>,  <34.794807, 40.971783, 50.461697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582554, 41.081749, 50.440353>,  <34.228798, 41.265026, 50.404785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582554, 41.081749, 50.440353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128738, 0.056340, -0.990077,
		0.448637, 0.887065, 0.108814,
		0.884393, -0.458193, 0.088923,
		34.847874, 40.944290, 50.467030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652733, 41.700993, 49.946388>,  <34.228798, 41.265026, 50.404785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652733, 41.700993, 49.946388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839687, 41.348583, 49.975666>,  <34.951859, 41.137138, 49.993233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839687, 41.348583, 49.975666>,  <34.652733, 41.700993, 49.946388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839687, 41.348583, 49.975666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196833, 0.022990, -0.980167,
		0.861864, 0.472520, 0.184159,
		0.467383, -0.881020, 0.073193,
		34.979900, 41.084278, 49.997623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294758, 41.802685, 49.714687>,  <34.652733, 41.700993, 49.946388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294758, 41.802685, 49.714687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283779, 41.402897, 49.707775>,  <35.277191, 41.163025, 49.703629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283779, 41.402897, 49.707775>,  <35.294758, 41.802685, 49.714687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283779, 41.402897, 49.707775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533302, -0.000020, -0.845925,
		0.845480, -0.032433, 0.533022,
		-0.027447, -0.999474, -0.017280,
		35.275543, 41.103054, 49.702591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858776, 41.615456, 49.365028>,  <35.294758, 41.802685, 49.714687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858776, 41.615456, 49.365028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595608, 41.314674, 49.348530>,  <35.437706, 41.134205, 49.338631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595608, 41.314674, 49.348530>,  <35.858776, 41.615456, 49.365028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595608, 41.314674, 49.348530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365533, -0.270976, -0.890482,
		0.658425, -0.600946, 0.453146,
		-0.657923, -0.751955, -0.041248,
		35.398232, 41.089088, 49.336155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243996, 40.951843, 49.085236>,  <35.858776, 41.615456, 49.365028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243996, 40.951843, 49.085236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860905, 40.845390, 49.041534>,  <35.631050, 40.781517, 49.015312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860905, 40.845390, 49.041534>,  <36.243996, 40.951843, 49.085236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860905, 40.845390, 49.041534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187658, -0.290063, -0.938428,
		0.218059, -0.919258, 0.327743,
		-0.957723, -0.266137, -0.109256,
		35.573589, 40.765549, 49.008759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262688, 40.284889, 48.718578>,  <36.243996, 40.951843, 49.085236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262688, 40.284889, 48.718578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923054, 40.485321, 48.651672>,  <35.719273, 40.605579, 48.611530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923054, 40.485321, 48.651672>,  <36.262688, 40.284889, 48.718578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923054, 40.485321, 48.651672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151034, -0.073139, -0.985819,
		-0.506211, -0.862303, -0.013580,
		-0.849081, 0.501083, -0.167261,
		35.668331, 40.635647, 48.601494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107536, 40.012646, 48.153343>,  <36.262688, 40.284889, 48.718578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107536, 40.012646, 48.153343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873856, 40.337238, 48.159161>,  <35.733646, 40.531994, 48.162651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873856, 40.337238, 48.159161>,  <36.107536, 40.012646, 48.153343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873856, 40.337238, 48.159161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055288, 0.057670, -0.996804,
		-0.809724, -0.581529, -0.078556,
		-0.584201, 0.811479, 0.014545,
		35.698597, 40.580681, 48.163525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679295, 39.940292, 47.574165>,  <36.107536, 40.012646, 48.153343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679295, 39.940292, 47.574165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659981, 40.333065, 47.647354>,  <35.648392, 40.568729, 47.691269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659981, 40.333065, 47.647354>,  <35.679295, 39.940292, 47.574165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659981, 40.333065, 47.647354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111904, 0.176716, -0.977880,
		-0.992545, -0.067691, 0.101350,
		-0.048283, 0.981932, 0.182973,
		35.645496, 40.627644, 47.702248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378380, 40.126099, 47.064117>,  <35.679295, 39.940292, 47.574165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378380, 40.126099, 47.064117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502113, 40.479076, 47.205879>,  <35.576355, 40.690865, 47.290936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502113, 40.479076, 47.205879>,  <35.378380, 40.126099, 47.064117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502113, 40.479076, 47.205879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082304, 0.396128, -0.914499,
		-0.947386, 0.253716, 0.195164,
		0.309333, 0.882446, 0.354404,
		35.594913, 40.743809, 47.312199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962677, 40.664017, 46.762260>,  <35.378380, 40.126099, 47.064117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962677, 40.664017, 46.762260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286682, 40.871544, 46.871593>,  <35.481083, 40.996059, 46.937191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286682, 40.871544, 46.871593>,  <34.962677, 40.664017, 46.762260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286682, 40.871544, 46.871593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102461, 0.584145, -0.805156,
		-0.577396, 0.624179, 0.526322,
		0.810009, 0.518822, 0.273329,
		35.529686, 41.027191, 46.953590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980324, 41.418530, 46.564621>,  <34.962677, 40.664017, 46.762260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980324, 41.418530, 46.564621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366619, 41.318672, 46.592983>,  <35.598396, 41.258759, 46.610001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366619, 41.318672, 46.592983>,  <34.980324, 41.418530, 46.564621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366619, 41.318672, 46.592983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193238, 0.509346, -0.838586,
		0.173235, 0.823555, 0.540136,
		0.965738, -0.249647, 0.070905,
		35.656342, 41.243778, 46.614254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353611, 42.092419, 46.513000>,  <34.980324, 41.418530, 46.564621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353611, 42.092419, 46.513000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616543, 41.808918, 46.410568>,  <35.774303, 41.638817, 46.349110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616543, 41.808918, 46.410568>,  <35.353611, 42.092419, 46.513000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616543, 41.808918, 46.410568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172247, 0.472121, -0.864542,
		0.733651, 0.524183, 0.432422,
		0.657334, -0.708755, -0.256083,
		35.813744, 41.596291, 46.333744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648876, 42.436062, 46.076660>,  <35.353611, 42.092419, 46.513000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648876, 42.436062, 46.076660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803852, 42.076801, 45.993507>,  <35.896839, 41.861244, 45.943615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803852, 42.076801, 45.993507>,  <35.648876, 42.436062, 46.076660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803852, 42.076801, 45.993507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192785, 0.299443, -0.934434,
		0.901510, 0.321965, 0.289167,
		0.387444, -0.898149, -0.207880,
		35.920086, 41.807358, 45.931145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308266, 42.511810, 45.736023>,  <35.648876, 42.436062, 46.076660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308266, 42.511810, 45.736023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204594, 42.135078, 45.650436>,  <36.142391, 41.909039, 45.599087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204594, 42.135078, 45.650436>,  <36.308266, 42.511810, 45.736023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204594, 42.135078, 45.650436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299588, 0.132207, -0.944864,
		0.918189, -0.308992, 0.247895,
		-0.259182, -0.941831, -0.213962,
		36.126839, 41.852528, 45.586246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.107483, 33.954723, 44.539085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.771629, 34.102962, 44.697918>,  <45.570118, 34.191906, 44.793217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.771629, 34.102962, 44.697918>,  <46.107483, 33.954723, 44.539085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771629, 34.102962, 44.697918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232246, 0.415907, -0.879251,
		-0.491001, -0.830467, -0.263138,
		-0.839631, 0.370601, 0.397084,
		45.519741, 34.214142, 44.817043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642544, 33.888248, 43.954891>,  <46.107483, 33.954723, 44.539085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642544, 33.888248, 43.954891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464169, 34.134109, 44.215149>,  <45.357143, 34.281628, 44.371304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464169, 34.134109, 44.215149>,  <45.642544, 33.888248, 43.954891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464169, 34.134109, 44.215149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541173, 0.393856, -0.742974,
		-0.712932, -0.683433, 0.156998,
		-0.445938, 0.614652, 0.650647,
		45.330387, 34.318504, 44.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963966, 33.997322, 43.692490>,  <45.642544, 33.888248, 43.954891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963966, 33.997322, 43.692490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.033058, 34.314255, 43.926544>,  <45.074512, 34.504414, 44.066978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.033058, 34.314255, 43.926544>,  <44.963966, 33.997322, 43.692490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033058, 34.314255, 43.926544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590369, 0.558807, -0.582408,
		-0.788436, -0.244849, 0.564286,
		0.172725, 0.792328, 0.585135,
		45.084877, 34.551952, 44.102085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286057, 34.465450, 43.690903>,  <44.963966, 33.997322, 43.692490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286057, 34.465450, 43.690903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592281, 34.689381, 43.817722>,  <44.776016, 34.823738, 43.893814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592281, 34.689381, 43.817722>,  <44.286057, 34.465450, 43.690903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592281, 34.689381, 43.817722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386308, 0.794057, -0.469297,
		-0.514474, 0.236798, 0.824162,
		0.765561, 0.559821, 0.317045,
		44.821949, 34.857327, 43.912834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955849, 35.032200, 43.835201>,  <44.286057, 34.465450, 43.690903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955849, 35.032200, 43.835201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.338696, 35.130436, 43.773746>,  <44.568405, 35.189377, 43.736874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.338696, 35.130436, 43.773746>,  <43.955849, 35.032200, 43.835201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338696, 35.130436, 43.773746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289596, 0.824645, -0.485896,
		0.007365, 0.509554, 0.860407,
		0.957121, 0.245592, -0.153638,
		44.625832, 35.204113, 43.727654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053951, 35.754803, 44.099323>,  <43.955849, 35.032200, 43.835201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053951, 35.754803, 44.099323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335453, 35.670395, 43.827972>,  <44.504353, 35.619751, 43.665161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335453, 35.670395, 43.827972>,  <44.053951, 35.754803, 44.099323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335453, 35.670395, 43.827972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182299, 0.869260, -0.459515,
		0.686658, 0.447053, 0.573275,
		0.703753, -0.211022, -0.678382,
		44.546577, 35.607090, 43.624458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222233, 36.438152, 43.883171>,  <44.053951, 35.754803, 44.099323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222233, 36.438152, 43.883171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371799, 36.211697, 43.589321>,  <44.461540, 36.075825, 43.413010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371799, 36.211697, 43.589321>,  <44.222233, 36.438152, 43.883171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371799, 36.211697, 43.589321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363350, 0.639348, -0.677651,
		0.853324, 0.520313, 0.033359,
		0.373918, -0.566135, -0.734626,
		44.483974, 36.041855, 43.368935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329529, 36.978264, 43.394112>,  <44.222233, 36.438152, 43.883171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329529, 36.978264, 43.394112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339283, 36.628300, 43.200642>,  <44.345135, 36.418324, 43.084560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339283, 36.628300, 43.200642>,  <44.329529, 36.978264, 43.394112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339283, 36.628300, 43.200642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325477, 0.450513, -0.831326,
		0.945236, 0.177698, -0.273776,
		0.024385, -0.874906, -0.483678,
		44.346600, 36.365829, 43.055538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727348, 37.064259, 42.779663>,  <44.329529, 36.978264, 43.394112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727348, 37.064259, 42.779663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506485, 36.741695, 42.694973>,  <44.373966, 36.548157, 42.644157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506485, 36.741695, 42.694973>,  <44.727348, 37.064259, 42.779663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506485, 36.741695, 42.694973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189264, 0.368551, -0.910137,
		0.811972, -0.462470, -0.356122,
		-0.552160, -0.806407, -0.211724,
		44.340836, 36.499775, 42.631454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856472, 36.962978, 42.086418>,  <44.727348, 37.064259, 42.779663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856472, 36.962978, 42.086418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539898, 36.720997, 42.121418>,  <44.349953, 36.575806, 42.142418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539898, 36.720997, 42.121418>,  <44.856472, 36.962978, 42.086418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539898, 36.720997, 42.121418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159022, 0.065552, -0.985097,
		0.590207, -0.793554, -0.148081,
		-0.791435, -0.604959, 0.087503,
		44.302467, 36.539509, 42.147671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924618, 36.451763, 41.645378>,  <44.856472, 36.962978, 42.086418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924618, 36.451763, 41.645378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529030, 36.439125, 41.703255>,  <44.291676, 36.431541, 41.737980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.529030, 36.439125, 41.703255>,  <44.924618, 36.451763, 41.645378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529030, 36.439125, 41.703255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140808, -0.102277, -0.984740,
		0.045913, -0.994254, 0.096700,
		-0.988972, -0.031596, 0.144695,
		44.232338, 36.429646, 41.746662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718838, 35.943985, 41.315868>,  <44.924618, 36.451763, 41.645378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718838, 35.943985, 41.315868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375404, 36.147919, 41.337444>,  <44.169346, 36.270279, 41.350388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375404, 36.147919, 41.337444>,  <44.718838, 35.943985, 41.315868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375404, 36.147919, 41.337444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218833, -0.269306, -0.937862,
		-0.463625, -0.817036, 0.342790,
		-0.858583, 0.509830, 0.053937,
		44.117828, 36.300869, 41.353626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181103, 35.478371, 41.039906>,  <44.718838, 35.943985, 41.315868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181103, 35.478371, 41.039906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985153, 35.824982, 41.001640>,  <43.867584, 36.032948, 40.978683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985153, 35.824982, 41.001640>,  <44.181103, 35.478371, 41.039906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985153, 35.824982, 41.001640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096109, -0.162737, -0.981978,
		-0.866480, -0.471851, 0.163001,
		-0.489874, 0.866529, -0.095659,
		43.838192, 36.084942, 40.972942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696697, 35.350937, 40.627754>,  <44.181103, 35.478371, 41.039906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696697, 35.350937, 40.627754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751068, 35.745197, 40.587738>,  <43.783691, 35.981754, 40.563728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751068, 35.745197, 40.587738>,  <43.696697, 35.350937, 40.627754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751068, 35.745197, 40.587738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157567, -0.121201, -0.980042,
		-0.978108, 0.117453, -0.171781,
		0.135929, 0.985655, -0.100041,
		43.791847, 36.040894, 40.557724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229523, 35.481094, 40.059719>,  <43.696697, 35.350937, 40.627754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229523, 35.481094, 40.059719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456455, 35.808826, 40.092800>,  <43.592613, 36.005466, 40.112648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456455, 35.808826, 40.092800>,  <43.229523, 35.481094, 40.059719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456455, 35.808826, 40.092800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165253, -0.014886, -0.986139,
		-0.806741, 0.573131, -0.143842,
		0.567328, 0.819329, 0.082702,
		43.626652, 36.054626, 40.117611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077877, 35.820454, 39.388313>,  <43.229523, 35.481094, 40.059719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077877, 35.820454, 39.388313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.401371, 36.003395, 39.536247>,  <43.595467, 36.113159, 39.625008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.401371, 36.003395, 39.536247>,  <43.077877, 35.820454, 39.388313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401371, 36.003395, 39.536247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297726, 0.223953, -0.928011,
		-0.507253, 0.860624, 0.044953,
		0.808736, 0.457352, 0.369831,
		43.643993, 36.140602, 39.647198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099922, 36.403576, 39.040348>,  <43.077877, 35.820454, 39.388313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099922, 36.403576, 39.040348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475464, 36.368301, 39.173485>,  <43.700787, 36.347137, 39.253368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475464, 36.368301, 39.173485>,  <43.099922, 36.403576, 39.040348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475464, 36.368301, 39.173485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333299, -0.009916, -0.942769,
		0.086438, 0.996055, 0.020082,
		0.938851, -0.088184, 0.332841,
		43.757118, 36.341846, 39.273338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534069, 36.930244, 38.655422>,  <43.099922, 36.403576, 39.040348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534069, 36.930244, 38.655422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817734, 36.683056, 38.791180>,  <43.987934, 36.534740, 38.872635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817734, 36.683056, 38.791180>,  <43.534069, 36.930244, 38.655422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817734, 36.683056, 38.791180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354858, -0.103113, -0.929217,
		0.609229, 0.779407, 0.146169,
		0.709165, -0.617975, 0.339398,
		44.030483, 36.497662, 38.892998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164261, 37.156380, 38.342422>,  <43.534069, 36.930244, 38.655422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164261, 37.156380, 38.342422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182323, 36.769424, 38.442116>,  <44.193161, 36.537251, 38.501930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182323, 36.769424, 38.442116>,  <44.164261, 37.156380, 38.342422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182323, 36.769424, 38.442116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290244, -0.226018, -0.929879,
		0.955887, 0.114324, 0.270574,
		0.045153, -0.967391, 0.249230,
		44.195869, 36.479206, 38.516884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766449, 36.965664, 38.001808>,  <44.164261, 37.156380, 38.342422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766449, 36.965664, 38.001808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555397, 36.632286, 38.067493>,  <44.428764, 36.432259, 38.106903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555397, 36.632286, 38.067493>,  <44.766449, 36.965664, 38.001808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555397, 36.632286, 38.067493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135747, -0.273551, -0.952230,
		0.838555, -0.480138, 0.257473,
		-0.527634, -0.833449, 0.164210,
		44.397106, 36.382252, 38.116756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079109, 36.466602, 37.692070>,  <44.766449, 36.965664, 38.001808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079109, 36.466602, 37.692070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703274, 36.329823, 37.698170>,  <44.477772, 36.247753, 37.701828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703274, 36.329823, 37.698170>,  <45.079109, 36.466602, 37.692070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703274, 36.329823, 37.698170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043712, -0.164047, -0.985484,
		0.339492, -0.925287, 0.169085,
		-0.939593, -0.341955, 0.015247,
		44.421394, 36.227238, 37.702744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270729, 35.725174, 37.505566>,  <45.079109, 36.466602, 37.692070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270729, 35.725174, 37.505566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352589, 35.422699, 37.256954>,  <45.401703, 35.241215, 37.107788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352589, 35.422699, 37.256954>,  <45.270729, 35.725174, 37.505566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352589, 35.422699, 37.256954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223035, -0.582238, 0.781828,
		-0.953087, -0.298621, 0.049504,
		0.204647, -0.756191, -0.621526,
		45.413982, 35.195843, 37.070496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903542, 35.140293, 37.733536>,  <45.270729, 35.725174, 37.505566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903542, 35.140293, 37.733536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193405, 34.990623, 37.502068>,  <45.367325, 34.900822, 37.363186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193405, 34.990623, 37.502068>,  <44.903542, 35.140293, 37.733536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193405, 34.990623, 37.502068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246376, -0.643554, 0.724664,
		-0.643554, -0.667708, -0.374173,
		-0.724664, 0.374173, 0.578669,
		45.410805, 34.878372, 37.328468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777630, 34.482590, 37.621521>,  <44.903542, 35.140293, 37.733536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777630, 34.482590, 37.621521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170544, 34.536015, 37.568951>,  <45.406292, 34.568069, 37.537411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170544, 34.536015, 37.568951>,  <44.777630, 34.482590, 37.621521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170544, 34.536015, 37.568951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186091, -0.777328, 0.600941,
		-0.021896, -0.614754, -0.788415,
		0.982288, 0.133559, -0.131421,
		45.465229, 34.576080, 37.529526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082161, 33.812214, 37.628101>,  <44.777630, 34.482590, 37.621521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082161, 33.812214, 37.628101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381569, 34.064091, 37.711250>,  <45.561214, 34.215218, 37.761139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381569, 34.064091, 37.711250>,  <45.082161, 33.812214, 37.628101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381569, 34.064091, 37.711250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223120, -0.534367, 0.815273,
		0.624450, -0.563865, -0.540480,
		0.748518, 0.629689, 0.207875,
		45.606125, 34.252998, 37.773613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614845, 33.422749, 37.920673>,  <45.082161, 33.812214, 37.628101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614845, 33.422749, 37.920673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768169, 33.775063, 38.031879>,  <45.860165, 33.986450, 38.098602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768169, 33.775063, 38.031879>,  <45.614845, 33.422749, 37.920673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768169, 33.775063, 38.031879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098436, -0.338248, 0.935894,
		0.918360, -0.331369, -0.216355,
		0.383308, 0.880785, 0.278015,
		45.883163, 34.039299, 38.115284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189785, 33.303825, 38.286186>,  <45.614845, 33.422749, 37.920673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189785, 33.303825, 38.286186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062225, 33.663975, 38.404594>,  <45.985687, 33.880066, 38.475639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062225, 33.663975, 38.404594>,  <46.189785, 33.303825, 38.286186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062225, 33.663975, 38.404594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128987, -0.350653, 0.927580,
		0.938970, 0.257624, 0.227960,
		-0.318902, 0.900373, 0.296023,
		45.966557, 33.934086, 38.493401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551720, 33.392258, 38.982368>,  <46.189785, 33.303825, 38.286186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551720, 33.392258, 38.982368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280098, 33.685852, 38.987408>,  <46.117126, 33.862007, 38.990433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280098, 33.685852, 38.987408>,  <46.551720, 33.392258, 38.982368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280098, 33.685852, 38.987408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220797, -0.220583, 0.950048,
		0.700099, 0.642349, 0.311848,
		-0.679051, 0.733983, 0.012601,
		46.076382, 33.906048, 38.991188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717491, 33.821667, 39.546703>,  <46.551720, 33.392258, 38.982368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717491, 33.821667, 39.546703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325127, 33.850655, 39.474518>,  <46.089710, 33.868046, 39.431206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325127, 33.850655, 39.474518>,  <46.717491, 33.821667, 39.546703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325127, 33.850655, 39.474518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193892, -0.435882, 0.878870,
		-0.014972, 0.897081, 0.441611,
		-0.980909, 0.072467, -0.180463,
		46.030853, 33.872395, 39.420380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364735, 34.194153, 40.110722>,  <46.717491, 33.821667, 39.546703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364735, 34.194153, 40.110722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.066120, 33.986401, 39.944378>,  <45.886951, 33.861752, 39.844574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.066120, 33.986401, 39.944378>,  <46.364735, 34.194153, 40.110722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066120, 33.986401, 39.944378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321513, -0.265600, 0.908893,
		-0.582510, 0.812221, 0.031292,
		-0.746533, -0.519378, -0.415854,
		45.842159, 33.830585, 39.819622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797676, 34.239803, 40.590370>,  <46.364735, 34.194153, 40.110722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797676, 34.239803, 40.590370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666573, 33.933750, 40.368690>,  <45.587910, 33.750118, 40.235683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666573, 33.933750, 40.368690>,  <45.797676, 34.239803, 40.590370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666573, 33.933750, 40.368690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419792, -0.407568, 0.810964,
		-0.846373, 0.498451, -0.187613,
		-0.327761, -0.765137, -0.554201,
		45.568245, 33.704208, 40.202431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027416, 34.203499, 40.680950>,  <45.797676, 34.239803, 40.590370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027416, 34.203499, 40.680950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176212, 33.851139, 40.563889>,  <45.265488, 33.639725, 40.493652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176212, 33.851139, 40.563889>,  <45.027416, 34.203499, 40.680950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176212, 33.851139, 40.563889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302574, -0.413130, 0.858937,
		-0.877539, -0.230965, -0.420215,
		0.371987, -0.880897, -0.292653,
		45.287807, 33.586868, 40.476093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468010, 33.717678, 40.884323>,  <45.027416, 34.203499, 40.680950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468010, 33.717678, 40.884323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.794262, 33.500229, 40.805107>,  <44.990013, 33.369759, 40.757580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.794262, 33.500229, 40.805107>,  <44.468010, 33.717678, 40.884323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794262, 33.500229, 40.805107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066807, -0.428485, 0.901076,
		-0.574705, -0.721713, -0.385803,
		0.815629, -0.543627, -0.198037,
		45.038952, 33.337143, 40.745697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243465, 33.007557, 41.144382>,  <44.468010, 33.717678, 40.884323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243465, 33.007557, 41.144382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641270, 32.975960, 41.116913>,  <44.879951, 32.957001, 41.100430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641270, 32.975960, 41.116913>,  <44.243465, 33.007557, 41.144382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641270, 32.975960, 41.116913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020495, -0.496433, 0.867833,
		-0.102648, -0.864473, -0.492087,
		0.994507, -0.078996, -0.068676,
		44.939621, 32.952259, 41.096310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425045, 32.280617, 41.286404>,  <44.243465, 33.007557, 41.144382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425045, 32.280617, 41.286404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.752769, 32.498482, 41.358047>,  <44.949402, 32.629200, 41.401035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.752769, 32.498482, 41.358047>,  <44.425045, 32.280617, 41.286404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752769, 32.498482, 41.358047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185654, -0.547578, 0.815899,
		0.542463, -0.635221, -0.549753,
		0.819309, 0.544658, 0.179109,
		44.998562, 32.661880, 41.411781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937592, 31.773499, 41.416607>,  <44.425045, 32.280617, 41.286404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937592, 31.773499, 41.416607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.033176, 32.120079, 41.591953>,  <45.090527, 32.328026, 41.697159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.033176, 32.120079, 41.591953>,  <44.937592, 31.773499, 41.416607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033176, 32.120079, 41.591953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212918, -0.487210, 0.846931,
		0.947399, -0.109047, -0.300906,
		0.238960, 0.866450, 0.438364,
		45.104866, 32.380013, 41.723461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471756, 31.494219, 41.824093>,  <44.937592, 31.773499, 41.416607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471756, 31.494219, 41.824093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372177, 31.849281, 41.979061>,  <45.312431, 32.062317, 42.072041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372177, 31.849281, 41.979061>,  <45.471756, 31.494219, 41.824093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372177, 31.849281, 41.979061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172640, -0.352938, 0.919582,
		0.953006, 0.295811, -0.065382,
		-0.248947, 0.887654, 0.387421,
		45.297493, 32.115578, 42.095287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000469, 31.644690, 42.303391>,  <45.471756, 31.494219, 41.824093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000469, 31.644690, 42.303391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710251, 31.897671, 42.411900>,  <45.536121, 32.049458, 42.477005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710251, 31.897671, 42.411900>,  <46.000469, 31.644690, 42.303391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710251, 31.897671, 42.411900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172866, -0.214050, 0.961405,
		0.666107, 0.744438, 0.045974,
		-0.725547, 0.632452, 0.271269,
		45.492588, 32.087406, 42.493279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288517, 32.055527, 42.779198>,  <46.000469, 31.644690, 42.303391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288517, 32.055527, 42.779198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.897968, 32.098141, 42.854404>,  <45.663639, 32.123711, 42.899529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.897968, 32.098141, 42.854404>,  <46.288517, 32.055527, 42.779198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897968, 32.098141, 42.854404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162887, -0.208924, 0.964271,
		0.142013, 0.972111, 0.186634,
		-0.976371, 0.106539, 0.188015,
		45.605057, 32.130104, 42.910809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194527, 32.307953, 43.432003>,  <46.288517, 32.055527, 42.779198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194527, 32.307953, 43.432003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834141, 32.143444, 43.376694>,  <45.617908, 32.044739, 43.343506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834141, 32.143444, 43.376694>,  <46.194527, 32.307953, 43.432003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834141, 32.143444, 43.376694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009254, -0.336825, 0.941522,
		-0.433798, 0.846996, 0.307272,
		-0.900962, -0.411274, -0.138276,
		45.563850, 32.020061, 43.335213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691895, 32.599926, 43.982304>,  <46.194527, 32.307953, 43.432003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691895, 32.599926, 43.982304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495701, 32.271862, 43.864483>,  <45.377983, 32.075024, 43.793789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495701, 32.271862, 43.864483>,  <45.691895, 32.599926, 43.982304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495701, 32.271862, 43.864483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307419, -0.153430, 0.939123,
		-0.815424, 0.551179, -0.176877,
		-0.490487, -0.820159, -0.294553,
		45.348557, 32.025814, 43.776115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175911, 32.563496, 44.390011>,  <45.691895, 32.599926, 43.982304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175911, 32.563496, 44.390011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215755, 32.188778, 44.255852>,  <45.239662, 31.963947, 44.175358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215755, 32.188778, 44.255852>,  <45.175911, 32.563496, 44.390011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215755, 32.188778, 44.255852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253972, -0.349849, 0.901723,
		-0.962068, -0.004642, -0.272769,
		0.099614, -0.936795, -0.335399,
		45.245640, 31.907740, 44.155231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.663841, 40.233109, 42.493706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264839, 40.261044, 42.489662>,  <41.025436, 40.277805, 42.487236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264839, 40.261044, 42.489662>,  <41.663841, 40.233109, 42.493706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264839, 40.261044, 42.489662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002818, -0.182612, -0.983181,
		-0.070504, -0.980702, 0.182354,
		-0.997507, 0.069832, -0.010111,
		40.965588, 40.281994, 42.486629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318363, 39.538673, 42.259575>,  <41.663841, 40.233109, 42.493706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318363, 39.538673, 42.259575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083961, 39.850525, 42.171234>,  <40.943321, 40.037636, 42.118229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083961, 39.850525, 42.171234>,  <41.318363, 39.538673, 42.259575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083961, 39.850525, 42.171234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081031, -0.214804, -0.973290,
		-0.806245, -0.588250, 0.062702,
		-0.586006, 0.779629, -0.220851,
		40.908161, 40.084415, 42.104980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858723, 39.241043, 41.811184>,  <41.318363, 39.538673, 42.259575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858723, 39.241043, 41.811184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830124, 39.630478, 41.724449>,  <40.812965, 39.864140, 41.672409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830124, 39.630478, 41.724449>,  <40.858723, 39.241043, 41.811184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830124, 39.630478, 41.724449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003357, -0.217155, -0.976131,
		-0.997435, -0.070516, 0.012257,
		-0.071494, 0.973587, -0.216835,
		40.808674, 39.922554, 41.659397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411903, 39.257015, 41.250500>,  <40.858723, 39.241043, 41.811184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411903, 39.257015, 41.250500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561619, 39.623703, 41.194607>,  <40.651447, 39.843716, 41.161072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561619, 39.623703, 41.194607>,  <40.411903, 39.257015, 41.250500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561619, 39.623703, 41.194607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071615, -0.178806, -0.981274,
		-0.924542, 0.357275, -0.132576,
		0.374291, 0.916724, -0.139728,
		40.673904, 39.898720, 41.152687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960941, 39.712246, 40.861305>,  <40.411903, 39.257015, 41.250500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960941, 39.712246, 40.861305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337025, 39.839909, 40.813728>,  <40.562675, 39.916504, 40.785183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337025, 39.839909, 40.813728>,  <39.960941, 39.712246, 40.861305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337025, 39.839909, 40.813728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066671, -0.169992, -0.983188,
		-0.334006, 0.932332, -0.138550,
		0.940210, 0.319154, -0.118937,
		40.619087, 39.935654, 40.778046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972946, 39.972256, 40.208103>,  <39.960941, 39.712246, 40.861305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972946, 39.972256, 40.208103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370113, 39.994843, 40.249916>,  <40.608414, 40.008392, 40.275005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370113, 39.994843, 40.249916>,  <39.972946, 39.972256, 40.208103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370113, 39.994843, 40.249916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104970, -0.004784, -0.994464,
		-0.055652, 0.998393, -0.010677,
		0.992917, 0.056465, 0.104535,
		40.667988, 40.011784, 40.281277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303253, 40.527733, 39.718521>,  <39.972946, 39.972256, 40.208103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303253, 40.527733, 39.718521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602921, 40.285011, 39.824764>,  <40.782719, 40.139381, 39.888512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602921, 40.285011, 39.824764>,  <40.303253, 40.527733, 39.718521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602921, 40.285011, 39.824764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195016, -0.181158, -0.963924,
		0.633026, 0.773936, -0.017382,
		0.749164, -0.606799, 0.265608,
		40.827671, 40.102970, 39.904446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750877, 40.648567, 39.215034>,  <40.303253, 40.527733, 39.718521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750877, 40.648567, 39.215034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879398, 40.306896, 39.378567>,  <40.956512, 40.101894, 39.476685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879398, 40.306896, 39.378567>,  <40.750877, 40.648567, 39.215034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879398, 40.306896, 39.378567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294794, -0.320046, -0.900370,
		0.899921, 0.409815, 0.148974,
		0.321307, -0.854179, 0.408828,
		40.975792, 40.050644, 39.501217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356724, 40.442814, 38.832600>,  <40.750877, 40.648567, 39.215034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356724, 40.442814, 38.832600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197151, 40.110546, 38.987953>,  <41.101406, 39.911186, 39.081165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197151, 40.110546, 38.987953>,  <41.356724, 40.442814, 38.832600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197151, 40.110546, 38.987953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147690, -0.476224, -0.866832,
		0.905007, -0.288449, 0.312664,
		-0.398935, -0.830667, 0.388385,
		41.077469, 39.861347, 39.104469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773060, 39.898540, 38.592941>,  <41.356724, 40.442814, 38.832600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773060, 39.898540, 38.592941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422813, 39.733765, 38.693817>,  <41.212666, 39.634899, 38.754345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422813, 39.733765, 38.693817>,  <41.773060, 39.898540, 38.592941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422813, 39.733765, 38.693817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035108, -0.575035, -0.817375,
		0.481726, -0.706855, 0.517973,
		-0.875618, -0.411936, 0.252193,
		41.160130, 39.610184, 38.769474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884464, 39.337826, 38.111313>,  <41.773060, 39.898540, 38.592941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884464, 39.337826, 38.111313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506977, 39.333763, 38.243546>,  <41.280483, 39.331326, 38.322887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506977, 39.333763, 38.243546>,  <41.884464, 39.337826, 38.111313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506977, 39.333763, 38.243546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265969, -0.570822, -0.776803,
		0.196597, -0.821011, 0.535995,
		-0.943721, -0.010159, 0.330586,
		41.223862, 39.330715, 38.342720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604176, 38.659561, 38.221157>,  <41.884464, 39.337826, 38.111313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604176, 38.659561, 38.221157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294079, 38.900799, 38.146023>,  <41.108021, 39.045544, 38.100945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294079, 38.900799, 38.146023>,  <41.604176, 38.659561, 38.221157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294079, 38.900799, 38.146023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224707, -0.541213, -0.810306,
		-0.590353, -0.585970, 0.555088,
		-0.775236, 0.603099, -0.187835,
		41.061508, 39.081726, 38.089672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960068, 38.271664, 38.186340>,  <41.604176, 38.659561, 38.221157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960068, 38.271664, 38.186340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913631, 38.608154, 37.975113>,  <40.885769, 38.810047, 37.848377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913631, 38.608154, 37.975113>,  <40.960068, 38.271664, 38.186340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913631, 38.608154, 37.975113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075153, -0.537581, -0.839856,
		-0.990391, -0.057817, 0.125631,
		-0.116095, 0.841228, -0.528070,
		40.878803, 38.860523, 37.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325493, 38.178707, 37.928207>,  <40.960068, 38.271664, 38.186340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325493, 38.178707, 37.928207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596432, 38.381897, 37.715359>,  <40.758995, 38.503811, 37.587650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596432, 38.381897, 37.715359>,  <40.325493, 38.178707, 37.928207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596432, 38.381897, 37.715359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081668, -0.770778, -0.631848,
		-0.731112, 0.384526, -0.563573,
		0.677352, 0.507977, -0.532122,
		40.799637, 38.534290, 37.555721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653095, 37.560108, 37.615974>,  <40.325493, 38.178707, 37.928207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653095, 37.560108, 37.615974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877945, 37.272469, 37.779392>,  <41.012856, 37.099884, 37.877441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877945, 37.272469, 37.779392>,  <40.653095, 37.560108, 37.615974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877945, 37.272469, 37.779392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574174, 0.016215, 0.818573,
		-0.595262, -0.694715, -0.403775,
		0.562127, -0.719102, 0.408539,
		41.046585, 37.056740, 37.901955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219543, 37.145382, 37.877769>,  <40.653095, 37.560108, 37.615974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219543, 37.145382, 37.877769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541775, 37.043316, 38.091660>,  <40.735115, 36.982079, 38.219994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541775, 37.043316, 38.091660>,  <40.219543, 37.145382, 37.877769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541775, 37.043316, 38.091660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577811, -0.138725, 0.804295,
		-0.131031, -0.956899, -0.259180,
		0.805584, -0.255145, 0.534730,
		40.783447, 36.966766, 38.252079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981918, 36.637867, 38.280521>,  <40.219543, 37.145382, 37.877769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981918, 36.637867, 38.280521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331795, 36.738071, 38.446491>,  <40.541721, 36.798195, 38.546074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331795, 36.738071, 38.446491>,  <39.981918, 36.637867, 38.280521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331795, 36.738071, 38.446491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310612, -0.367454, 0.876640,
		0.372071, -0.895669, -0.243597,
		0.874690, 0.250508, 0.414925,
		40.594200, 36.813225, 38.570969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195621, 36.098011, 38.606846>,  <39.981918, 36.637867, 38.280521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195621, 36.098011, 38.606846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353844, 36.422543, 38.779022>,  <40.448776, 36.617264, 38.882328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353844, 36.422543, 38.779022>,  <40.195621, 36.098011, 38.606846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353844, 36.422543, 38.779022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527956, -0.182626, 0.829404,
		0.751530, -0.555329, 0.356108,
		0.395557, 0.811331, 0.430438,
		40.472511, 36.665943, 38.908154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036503, 35.988518, 39.278267>,  <40.195621, 36.098011, 38.606846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036503, 35.988518, 39.278267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191761, 36.353527, 39.329868>,  <40.284916, 36.572533, 39.360828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191761, 36.353527, 39.329868>,  <40.036503, 35.988518, 39.278267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191761, 36.353527, 39.329868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256669, -0.027402, 0.966111,
		0.885135, -0.408103, 0.223581,
		0.388146, 0.912525, 0.129001,
		40.308205, 36.627285, 39.368568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529884, 35.958118, 39.716518>,  <40.036503, 35.988518, 39.278267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529884, 35.958118, 39.716518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387157, 36.331707, 39.708817>,  <40.301521, 36.555862, 39.704197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387157, 36.331707, 39.708817>,  <40.529884, 35.958118, 39.716518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387157, 36.331707, 39.708817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057714, -0.001467, 0.998332,
		0.932390, 0.357333, 0.054427,
		-0.356817, 0.933976, -0.019256,
		40.280113, 36.611900, 39.703041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734116, 36.361797, 40.307510>,  <40.529884, 35.958118, 39.716518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734116, 36.361797, 40.307510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402611, 36.559055, 40.201714>,  <40.203709, 36.677410, 40.138237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402611, 36.559055, 40.201714>,  <40.734116, 36.361797, 40.307510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402611, 36.559055, 40.201714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395035, -0.180803, 0.900698,
		0.396356, 0.850950, 0.344654,
		-0.828764, 0.493148, -0.264492,
		40.153980, 36.707001, 40.122368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586918, 36.762585, 40.859913>,  <40.734116, 36.361797, 40.307510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586918, 36.762585, 40.859913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238941, 36.760792, 40.662659>,  <40.030155, 36.759716, 40.544308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238941, 36.760792, 40.662659>,  <40.586918, 36.762585, 40.859913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238941, 36.760792, 40.662659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489085, -0.120360, 0.863892,
		-0.063228, 0.992720, 0.102512,
		-0.869941, -0.004485, -0.493135,
		39.977959, 36.759445, 40.514717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197884, 37.310200, 41.188217>,  <40.586918, 36.762585, 40.859913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197884, 37.310200, 41.188217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938972, 37.069233, 41.001400>,  <39.783627, 36.924652, 40.889309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938972, 37.069233, 41.001400>,  <40.197884, 37.310200, 41.188217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938972, 37.069233, 41.001400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537375, -0.073924, 0.840097,
		-0.540612, 0.794754, -0.275872,
		-0.647277, -0.602413, -0.467045,
		39.744789, 36.888508, 40.861286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523136, 37.523514, 41.420399>,  <40.197884, 37.310200, 41.188217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523136, 37.523514, 41.420399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462589, 37.149406, 41.292423>,  <39.426262, 36.924942, 41.215637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462589, 37.149406, 41.292423>,  <39.523136, 37.523514, 41.420399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462589, 37.149406, 41.292423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605724, -0.168015, 0.777734,
		-0.781145, 0.311511, -0.541085,
		-0.151363, -0.935271, -0.319934,
		39.417179, 36.868824, 41.196442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833199, 37.419041, 41.358700>,  <39.523136, 37.523514, 41.420399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833199, 37.419041, 41.358700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968945, 37.042778, 41.358009>,  <39.050392, 36.817020, 41.357594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968945, 37.042778, 41.358009>,  <38.833199, 37.419041, 41.358700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968945, 37.042778, 41.358009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709264, -0.257091, 0.656391,
		-0.617880, -0.221533, -0.754419,
		0.339366, -0.940652, -0.001726,
		39.070755, 36.760582, 41.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246689, 37.281788, 41.418087>,  <38.833199, 37.419041, 41.358700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246689, 37.281788, 41.418087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473473, 36.961548, 41.495644>,  <38.609543, 36.769405, 41.542179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473473, 36.961548, 41.495644>,  <38.246689, 37.281788, 41.418087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473473, 36.961548, 41.495644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548577, -0.191372, 0.813904,
		-0.614507, -0.567816, -0.547692,
		0.566961, -0.800601, 0.193891,
		38.643562, 36.721367, 41.553810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709900, 36.858559, 41.576817>,  <38.246689, 37.281788, 41.418087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709900, 36.858559, 41.576817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058361, 36.732494, 41.727425>,  <38.267437, 36.656857, 41.817791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058361, 36.732494, 41.727425>,  <37.709900, 36.858559, 41.576817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058361, 36.732494, 41.727425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403670, -0.023124, 0.914612,
		-0.279546, -0.948756, -0.147367,
		0.871151, -0.315164, 0.376520,
		38.319706, 36.637943, 41.840382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522923, 36.205189, 41.998249>,  <37.709900, 36.858559, 41.576817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522923, 36.205189, 41.998249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865555, 36.354645, 42.140606>,  <38.071136, 36.444317, 42.226021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865555, 36.354645, 42.140606>,  <37.522923, 36.205189, 41.998249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865555, 36.354645, 42.140606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398197, 0.039995, 0.916428,
		0.328181, -0.926711, 0.183042,
		0.856584, 0.373641, 0.355888,
		38.122532, 36.466736, 42.247372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265965, 35.537304, 42.299965>,  <37.522923, 36.205189, 41.998249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265965, 35.537304, 42.299965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893291, 35.392124, 42.293865>,  <36.669689, 35.305016, 42.290207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893291, 35.392124, 42.293865>,  <37.265965, 35.537304, 42.299965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893291, 35.392124, 42.293865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041387, 0.147743, -0.988159,
		0.360910, -0.920019, -0.152671,
		-0.931682, -0.362955, -0.015245,
		36.613789, 35.283237, 42.289291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299950, 35.209713, 41.728271>,  <37.265965, 35.537304, 42.299965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299950, 35.209713, 41.728271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908890, 35.266472, 41.790314>,  <36.674252, 35.300526, 41.827538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908890, 35.266472, 41.790314>,  <37.299950, 35.209713, 41.728271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908890, 35.266472, 41.790314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136253, 0.134150, -0.981549,
		-0.160086, -0.980749, -0.111819,
		-0.977654, 0.141897, 0.155106,
		36.615593, 35.309040, 41.836845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950798, 34.900681, 41.083675>,  <37.299950, 35.209713, 41.728271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950798, 34.900681, 41.083675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685452, 35.144653, 41.257076>,  <36.526245, 35.291039, 41.361118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685452, 35.144653, 41.257076>,  <36.950798, 34.900681, 41.083675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685452, 35.144653, 41.257076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356857, 0.251344, -0.899711,
		-0.657722, -0.751538, 0.050926,
		-0.663366, 0.609932, 0.433506,
		36.486443, 35.327633, 41.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216293, 34.765923, 40.684509>,  <36.950798, 34.900681, 41.083675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216293, 34.765923, 40.684509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237289, 35.122719, 40.864109>,  <36.249886, 35.336796, 40.971870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237289, 35.122719, 40.864109>,  <36.216293, 34.765923, 40.684509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237289, 35.122719, 40.864109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401292, 0.430563, -0.808443,
		-0.914445, -0.137748, 0.380547,
		0.052488, 0.891987, 0.449004,
		36.253036, 35.390316, 40.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696880, 35.124107, 40.428398>,  <36.216293, 34.765923, 40.684509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696880, 35.124107, 40.428398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881836, 35.438213, 40.593109>,  <35.992809, 35.626678, 40.691936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881836, 35.438213, 40.593109>,  <35.696880, 35.124107, 40.428398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881836, 35.438213, 40.593109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428779, 0.604517, -0.671347,
		-0.776110, 0.133862, 0.616226,
		0.462387, 0.785264, 0.411774,
		36.020554, 35.673794, 40.716640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187080, 35.696335, 40.414211>,  <35.696880, 35.124107, 40.428398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187080, 35.696335, 40.414211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548958, 35.865868, 40.431614>,  <35.766087, 35.967587, 40.442055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548958, 35.865868, 40.431614>,  <35.187080, 35.696335, 40.414211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548958, 35.865868, 40.431614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262388, 0.634702, -0.726846,
		-0.335677, 0.646158, 0.685420,
		0.904695, 0.423832, 0.043511,
		35.820366, 35.993015, 40.444668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077614, 36.471008, 40.614655>,  <35.187080, 35.696335, 40.414211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077614, 36.471008, 40.614655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429081, 36.428135, 40.428558>,  <35.639961, 36.402412, 40.316898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429081, 36.428135, 40.428558>,  <35.077614, 36.471008, 40.614655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429081, 36.428135, 40.428558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267484, 0.696656, -0.665674,
		0.395462, 0.709353, 0.583461,
		0.878670, -0.107182, -0.465242,
		35.692680, 36.395981, 40.288986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345501, 37.199085, 40.471802>,  <35.077614, 36.471008, 40.614655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345501, 37.199085, 40.471802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538441, 36.959820, 40.215820>,  <35.654205, 36.816261, 40.062233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538441, 36.959820, 40.215820>,  <35.345501, 37.199085, 40.471802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538441, 36.959820, 40.215820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261662, 0.598813, -0.756939,
		0.835986, 0.532558, 0.132319,
		0.482348, -0.598168, -0.639950,
		35.683144, 36.780369, 40.023834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741615, 37.681931, 40.036812>,  <35.345501, 37.199085, 40.471802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741615, 37.681931, 40.036812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637646, 37.337078, 39.862839>,  <35.575264, 37.130165, 39.758453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637646, 37.337078, 39.862839>,  <35.741615, 37.681931, 40.036812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637646, 37.337078, 39.862839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353374, 0.504095, -0.788045,
		0.898648, -0.051133, -0.435680,
		-0.259919, -0.862133, -0.434935,
		35.559669, 37.078438, 39.732357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672394, 37.899300, 39.244541>,  <35.741615, 37.681931, 40.036812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672394, 37.899300, 39.244541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576218, 37.511185, 39.233772>,  <35.518513, 37.278316, 39.227310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576218, 37.511185, 39.233772>,  <35.672394, 37.899300, 39.244541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576218, 37.511185, 39.233772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569025, 0.163369, -0.805929,
		0.786384, -0.178455, -0.591400,
		-0.240439, -0.970291, -0.026925,
		35.504086, 37.220097, 39.225697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894783, 37.598766, 38.624531>,  <35.672394, 37.899300, 39.244541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894783, 37.598766, 38.624531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599632, 37.356731, 38.744133>,  <35.422543, 37.211510, 38.815895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599632, 37.356731, 38.744133>,  <35.894783, 37.598766, 38.624531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599632, 37.356731, 38.744133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388506, 0.018523, -0.921260,
		0.551904, -0.795944, -0.248748,
		-0.737879, -0.605087, 0.299006,
		35.378269, 37.175205, 38.833836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737591, 37.189346, 37.996620>,  <35.894783, 37.598766, 38.624531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737591, 37.189346, 37.996620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422241, 37.119461, 38.232563>,  <35.233032, 37.077530, 38.374130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422241, 37.119461, 38.232563>,  <35.737591, 37.189346, 37.996620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422241, 37.119461, 38.232563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576909, -0.122981, -0.807497,
		0.213624, -0.976908, -0.003839,
		-0.788378, -0.174716, 0.589859,
		35.185726, 37.067047, 38.409519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.172127, 33.789658, 45.822392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.821644, 33.980438, 45.794739>,  <36.611355, 34.094906, 45.778149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.821644, 33.980438, 45.794739>,  <37.172127, 33.789658, 45.822392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821644, 33.980438, 45.794739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085492, -0.294998, -0.951666,
		-0.474290, -0.827946, 0.299255,
		-0.876208, 0.476949, -0.069132,
		36.558781, 34.123524, 45.773998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778336, 33.357670, 45.362465>,  <37.172127, 33.789658, 45.822392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778336, 33.357670, 45.362465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591816, 33.711502, 45.366230>,  <36.479904, 33.923801, 45.368488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591816, 33.711502, 45.366230>,  <36.778336, 33.357670, 45.362465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591816, 33.711502, 45.366230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020907, 0.021657, -0.999547,
		-0.884381, -0.465889, -0.028593,
		-0.466297, 0.884578, 0.009413,
		36.451927, 33.976875, 45.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357117, 33.329472, 44.711628>,  <36.778336, 33.357670, 45.362465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357117, 33.329472, 44.711628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.386475, 33.714073, 44.817554>,  <36.404091, 33.944832, 44.881111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.386475, 33.714073, 44.817554>,  <36.357117, 33.329472, 44.711628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386475, 33.714073, 44.817554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129248, 0.272463, -0.953446,
		-0.988892, 0.035753, 0.144270,
		0.073397, 0.961501, 0.264816,
		36.408493, 34.002525, 44.896999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787594, 33.697544, 44.416164>,  <36.357117, 33.329472, 44.711628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787594, 33.697544, 44.416164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047901, 33.995586, 44.474564>,  <36.204086, 34.174412, 44.509602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047901, 33.995586, 44.474564>,  <35.787594, 33.697544, 44.416164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047901, 33.995586, 44.474564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324975, 0.447113, -0.833355,
		-0.686216, 0.494877, 0.533109,
		0.650768, 0.745109, 0.145994,
		36.243130, 34.219120, 44.518360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411392, 34.399925, 44.306728>,  <35.787594, 33.697544, 44.416164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411392, 34.399925, 44.306728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803238, 34.472343, 44.271908>,  <36.038345, 34.515797, 44.251015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803238, 34.472343, 44.271908>,  <35.411392, 34.399925, 44.306728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803238, 34.472343, 44.271908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163758, 0.468665, -0.868065,
		-0.116363, 0.864624, 0.488758,
		0.979614, 0.181049, -0.087054,
		36.097122, 34.526657, 44.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468712, 35.129833, 44.070129>,  <35.411392, 34.399925, 44.306728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468712, 35.129833, 44.070129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819771, 34.953087, 43.995834>,  <36.030407, 34.847038, 43.951256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819771, 34.953087, 43.995834>,  <35.468712, 35.129833, 44.070129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819771, 34.953087, 43.995834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074249, 0.508166, -0.858052,
		0.473529, 0.739273, 0.478797,
		0.877643, -0.441863, -0.185741,
		36.083065, 34.820526, 43.940113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868698, 35.649254, 43.699409>,  <35.468712, 35.129833, 44.070129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868698, 35.649254, 43.699409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078209, 35.323177, 43.600517>,  <36.203915, 35.127533, 43.541180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078209, 35.323177, 43.600517>,  <35.868698, 35.649254, 43.699409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078209, 35.323177, 43.600517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059474, 0.324515, -0.944009,
		0.849777, 0.479745, 0.218456,
		0.523776, -0.815190, -0.247233,
		36.235340, 35.078621, 43.526348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497993, 35.909569, 43.419964>,  <35.868698, 35.649254, 43.699409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497993, 35.909569, 43.419964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446285, 35.535675, 43.287560>,  <36.415260, 35.311340, 43.208118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446285, 35.535675, 43.287560>,  <36.497993, 35.909569, 43.419964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446285, 35.535675, 43.287560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141060, 0.313079, -0.939193,
		0.981524, -0.168106, 0.091380,
		-0.129275, -0.934731, -0.331008,
		36.407501, 35.255257, 43.188255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074146, 35.831463, 42.943012>,  <36.497993, 35.909569, 43.419964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074146, 35.831463, 42.943012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.808537, 35.558208, 42.821426>,  <36.649170, 35.394257, 42.748474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.808537, 35.558208, 42.821426>,  <37.074146, 35.831463, 42.943012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808537, 35.558208, 42.821426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204489, 0.225106, -0.952634,
		0.719205, -0.694729, -0.009782,
		-0.664024, -0.683139, -0.303962,
		36.609329, 35.353268, 42.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800903, 35.771282, 42.750610>,  <37.074146, 35.831463, 42.943012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800903, 35.771282, 42.750610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000881, 36.117668, 42.745449>,  <38.120869, 36.325500, 42.742352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000881, 36.117668, 42.745449>,  <37.800903, 35.771282, 42.750610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000881, 36.117668, 42.745449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222326, 0.142722, 0.964470,
		0.837036, -0.479311, 0.263878,
		0.499942, 0.865963, -0.012900,
		38.150864, 36.377457, 42.741577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203655, 35.717594, 43.269360>,  <37.800903, 35.771282, 42.750610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203655, 35.717594, 43.269360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.178593, 36.110943, 43.201180>,  <38.163555, 36.346951, 43.160271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.178593, 36.110943, 43.201180>,  <38.203655, 35.717594, 43.269360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178593, 36.110943, 43.201180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182500, 0.156617, 0.970652,
		0.981208, 0.091920, 0.169653,
		-0.062652, 0.983373, -0.170449,
		38.159798, 36.405956, 43.150043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678440, 35.969364, 43.730606>,  <38.203655, 35.717594, 43.269360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678440, 35.969364, 43.730606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427746, 36.272518, 43.658142>,  <38.277328, 36.454411, 43.614662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427746, 36.272518, 43.658142>,  <38.678440, 35.969364, 43.730606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427746, 36.272518, 43.658142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104995, 0.148237, 0.983362,
		0.772128, 0.635327, -0.013331,
		-0.626733, 0.757882, -0.181164,
		38.239727, 36.499882, 43.603794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805313, 36.425491, 44.249626>,  <38.678440, 35.969364, 43.730606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805313, 36.425491, 44.249626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488102, 36.631878, 44.120087>,  <38.297775, 36.755711, 44.042362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488102, 36.631878, 44.120087>,  <38.805313, 36.425491, 44.249626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488102, 36.631878, 44.120087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174730, 0.316614, 0.932322,
		0.583584, 0.795947, -0.160929,
		-0.793032, 0.515969, -0.323846,
		38.250191, 36.786667, 44.022934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844723, 37.053158, 44.515366>,  <38.805313, 36.425491, 44.249626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844723, 37.053158, 44.515366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452274, 37.023010, 44.444118>,  <38.216805, 37.004921, 44.401371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452274, 37.023010, 44.444118>,  <38.844723, 37.053158, 44.515366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452274, 37.023010, 44.444118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186450, 0.123692, 0.974647,
		-0.051430, 0.989454, -0.135409,
		-0.981117, -0.075373, -0.178122,
		38.157940, 37.000397, 44.390682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480080, 37.655807, 44.765892>,  <38.844723, 37.053158, 44.515366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480080, 37.655807, 44.765892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196320, 37.374111, 44.754547>,  <38.026066, 37.205093, 44.747742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196320, 37.374111, 44.754547>,  <38.480080, 37.655807, 44.765892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196320, 37.374111, 44.754547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238410, 0.201900, 0.949946,
		-0.663261, 0.680651, -0.311125,
		-0.709398, -0.704237, -0.028361,
		37.983501, 37.162842, 44.746040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796684, 37.976559, 45.080036>,  <38.480080, 37.655807, 44.765892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796684, 37.976559, 45.080036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771477, 37.577850, 45.099907>,  <37.756351, 37.338623, 45.111832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771477, 37.577850, 45.099907>,  <37.796684, 37.976559, 45.080036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771477, 37.577850, 45.099907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550473, 0.076239, 0.831365,
		-0.832471, 0.025044, -0.553502,
		-0.063019, -0.996775, 0.049681,
		37.752571, 37.278816, 45.114811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177982, 37.976032, 45.405033>,  <37.796684, 37.976559, 45.080036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177982, 37.976032, 45.405033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344055, 37.614738, 45.448456>,  <37.443699, 37.397961, 45.474510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.344055, 37.614738, 45.448456>,  <37.177982, 37.976032, 45.405033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344055, 37.614738, 45.448456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255449, -0.001223, 0.966822,
		-0.873137, -0.429138, -0.231239,
		0.415183, -0.903238, 0.108555,
		37.468609, 37.343765, 45.481022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700935, 37.589722, 45.710186>,  <37.177982, 37.976032, 45.405033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700935, 37.589722, 45.710186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024101, 37.362396, 45.772533>,  <37.217999, 37.226002, 45.809944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024101, 37.362396, 45.772533>,  <36.700935, 37.589722, 45.710186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024101, 37.362396, 45.772533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208315, -0.027996, 0.977661,
		-0.551258, -0.822333, -0.141007,
		0.807911, -0.568317, 0.155871,
		37.266476, 37.191902, 45.819294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486786, 37.046528, 45.997311>,  <36.700935, 37.589722, 45.710186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486786, 37.046528, 45.997311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877647, 37.055126, 46.081882>,  <37.112164, 37.060284, 46.132626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877647, 37.055126, 46.081882>,  <36.486786, 37.046528, 45.997311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877647, 37.055126, 46.081882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210740, -0.030617, 0.977063,
		0.027475, -0.999300, -0.025388,
		0.977156, 0.021494, 0.211433,
		37.170795, 37.061573, 46.145313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589394, 36.589748, 46.640587>,  <36.486786, 37.046528, 45.997311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589394, 36.589748, 46.640587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902130, 36.839108, 46.636826>,  <37.089775, 36.988724, 46.634567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902130, 36.839108, 46.636826>,  <36.589394, 36.589748, 46.640587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902130, 36.839108, 46.636826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016821, 0.036176, 0.999204,
		0.623245, -0.781065, 0.038770,
		0.781845, 0.623401, -0.009408,
		37.136684, 37.026127, 46.634003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101292, 36.303604, 47.195568>,  <36.589394, 36.589748, 46.640587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101292, 36.303604, 47.195568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198093, 36.684265, 47.119896>,  <37.256172, 36.912663, 47.074493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198093, 36.684265, 47.119896>,  <37.101292, 36.303604, 47.195568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198093, 36.684265, 47.119896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239077, 0.130480, 0.962194,
		0.940360, -0.278080, -0.195942,
		0.242001, 0.951654, -0.189181,
		37.270695, 36.969761, 47.063141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817265, 36.391884, 47.289425>,  <37.101292, 36.303604, 47.195568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817265, 36.391884, 47.289425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641850, 36.748539, 47.334446>,  <37.536602, 36.962532, 47.361458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641850, 36.748539, 47.334446>,  <37.817265, 36.391884, 47.289425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641850, 36.748539, 47.334446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533882, 0.157720, 0.830719,
		0.722948, 0.424392, -0.545195,
		-0.438539, 0.891636, 0.112552,
		37.510288, 37.016029, 47.368210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285248, 36.757584, 47.839184>,  <37.817265, 36.391884, 47.289425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285248, 36.757584, 47.839184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964882, 36.994846, 47.806431>,  <37.772663, 37.137203, 47.786777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964882, 36.994846, 47.806431>,  <38.285248, 36.757584, 47.839184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964882, 36.994846, 47.806431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205786, 0.401088, 0.892626,
		0.562305, 0.698067, -0.443300,
		-0.800915, 0.593153, -0.081882,
		37.724606, 37.172791, 47.781868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.491787, 39.679855, 46.479481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645435, 39.343937, 46.632950>,  <33.737625, 39.142387, 46.725029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645435, 39.343937, 46.632950>,  <33.491787, 39.679855, 46.479481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645435, 39.343937, 46.632950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508365, -0.154512, -0.847166,
		0.770725, 0.520457, 0.367570,
		0.384120, -0.839792, 0.383668,
		33.760670, 39.091999, 46.748051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168285, 39.747971, 46.339024>,  <33.491787, 39.679855, 46.479481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168285, 39.747971, 46.339024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131741, 39.358810, 46.423992>,  <34.109814, 39.125317, 46.474972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131741, 39.358810, 46.423992>,  <34.168285, 39.747971, 46.339024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131741, 39.358810, 46.423992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568869, -0.226074, -0.790745,
		0.817337, 0.048594, 0.574106,
		-0.091365, -0.972897, 0.212422,
		34.104332, 39.066940, 46.487720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763802, 39.486393, 46.182419>,  <34.168285, 39.747971, 46.339024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763802, 39.486393, 46.182419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530270, 39.161690, 46.187843>,  <34.390148, 38.966866, 46.191097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530270, 39.161690, 46.187843>,  <34.763802, 39.486393, 46.182419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530270, 39.161690, 46.187843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415224, -0.312910, -0.854211,
		0.697658, -0.493086, 0.519750,
		-0.583834, -0.811760, 0.013563,
		34.355118, 38.918163, 46.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126995, 38.945812, 46.090721>,  <34.763802, 39.486393, 46.182419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126995, 38.945812, 46.090721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767811, 38.839390, 45.950500>,  <34.552299, 38.775536, 45.866367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767811, 38.839390, 45.950500>,  <35.126995, 38.945812, 46.090721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767811, 38.839390, 45.950500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430663, -0.367315, -0.824384,
		0.090572, -0.891231, 0.444414,
		-0.897957, -0.266059, -0.350551,
		34.498425, 38.759571, 45.845333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251354, 38.306038, 45.790909>,  <35.126995, 38.945812, 46.090721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251354, 38.306038, 45.790909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911854, 38.426277, 45.616890>,  <34.708153, 38.498421, 45.512478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911854, 38.426277, 45.616890>,  <35.251354, 38.306038, 45.790909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911854, 38.426277, 45.616890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320646, -0.361642, -0.875443,
		-0.420492, -0.882526, 0.210556,
		-0.848748, 0.300602, -0.435046,
		34.657230, 38.516457, 45.486378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139565, 37.914799, 45.222256>,  <35.251354, 38.306038, 45.790909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139565, 37.914799, 45.222256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883667, 38.216293, 45.162113>,  <34.730129, 38.397190, 45.126026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883667, 38.216293, 45.162113>,  <35.139565, 37.914799, 45.222256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883667, 38.216293, 45.162113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082923, -0.126801, -0.988456,
		-0.764099, -0.644831, 0.018618,
		-0.639748, 0.753734, -0.150360,
		34.691742, 38.442413, 45.117004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724674, 37.686405, 44.627831>,  <35.139565, 37.914799, 45.222256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724674, 37.686405, 44.627831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668373, 38.081615, 44.653141>,  <34.634594, 38.318741, 44.668327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668373, 38.081615, 44.653141>,  <34.724674, 37.686405, 44.627831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668373, 38.081615, 44.653141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077225, 0.052758, -0.995617,
		-0.987029, -0.145017, 0.068874,
		-0.140748, 0.988022, 0.063272,
		34.626148, 38.378021, 44.672123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477837, 37.870991, 44.038143>,  <34.724674, 37.686405, 44.627831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477837, 37.870991, 44.038143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543827, 38.248528, 44.152649>,  <34.583420, 38.475048, 44.221352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543827, 38.248528, 44.152649>,  <34.477837, 37.870991, 44.038143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543827, 38.248528, 44.152649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130573, 0.266786, -0.954870,
		-0.977616, 0.194910, -0.079227,
		0.164977, 0.943841, 0.286265,
		34.593319, 38.531681, 44.238529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015343, 38.368534, 43.703533>,  <34.477837, 37.870991, 44.038143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015343, 38.368534, 43.703533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321960, 38.606487, 43.800301>,  <34.505932, 38.749260, 43.858360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321960, 38.606487, 43.800301>,  <34.015343, 38.368534, 43.703533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321960, 38.606487, 43.800301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090241, 0.273188, -0.957719,
		-0.635823, 0.755962, 0.155727,
		0.766542, 0.594886, 0.241918,
		34.551922, 38.784954, 43.872875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980854, 39.034840, 43.385117>,  <34.015343, 38.368534, 43.703533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980854, 39.034840, 43.385117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369816, 38.996418, 43.470158>,  <34.603191, 38.973366, 43.521183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369816, 38.996418, 43.470158>,  <33.980854, 39.034840, 43.385117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369816, 38.996418, 43.470158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230258, 0.248534, -0.940857,
		0.037537, 0.963848, 0.263794,
		0.972405, -0.096057, 0.212605,
		34.661537, 38.967602, 43.533939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139362, 39.647373, 43.159557>,  <33.980854, 39.034840, 43.385117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139362, 39.647373, 43.159557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471024, 39.424732, 43.180344>,  <34.670021, 39.291149, 43.192814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471024, 39.424732, 43.180344>,  <34.139362, 39.647373, 43.159557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471024, 39.424732, 43.180344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152414, 0.135649, -0.978963,
		0.537845, 0.819630, 0.197308,
		0.829152, -0.556603, 0.051965,
		34.719769, 39.257751, 43.195934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717747, 40.052776, 42.946136>,  <34.139362, 39.647373, 43.159557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717747, 40.052776, 42.946136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.826351, 39.673374, 42.880867>,  <34.891514, 39.445732, 42.841705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.826351, 39.673374, 42.880867>,  <34.717747, 40.052776, 42.946136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826351, 39.673374, 42.880867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083064, 0.145813, -0.985819,
		0.958844, 0.281216, -0.039197,
		0.271512, -0.948502, -0.163171,
		34.907806, 39.388824, 42.831917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189499, 40.207787, 42.416828>,  <34.717747, 40.052776, 42.946136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189499, 40.207787, 42.416828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124660, 39.813198, 42.426579>,  <35.085758, 39.576443, 42.432430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124660, 39.813198, 42.426579>,  <35.189499, 40.207787, 42.416828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124660, 39.813198, 42.426579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130120, -0.003119, -0.991494,
		0.978159, -0.163886, -0.127854,
		-0.162093, -0.986475, 0.024376,
		35.076035, 39.517254, 42.433891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697201, 39.974342, 41.903522>,  <35.189499, 40.207787, 42.416828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697201, 39.974342, 41.903522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398682, 39.716358, 41.969322>,  <35.219570, 39.561565, 42.008804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398682, 39.716358, 41.969322>,  <35.697201, 39.974342, 41.903522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398682, 39.716358, 41.969322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119256, -0.113583, -0.986345,
		0.654841, -0.755725, 0.007851,
		-0.746298, -0.644963, 0.164503,
		35.174793, 39.522869, 42.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494514, 40.022335, 42.062122>,  <35.697201, 39.974342, 41.903522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494514, 40.022335, 42.062122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685371, 40.361877, 41.971096>,  <36.799885, 40.565601, 41.916481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685371, 40.361877, 41.971096>,  <36.494514, 40.022335, 42.062122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685371, 40.361877, 41.971096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189647, 0.352293, 0.916474,
		0.858122, -0.394128, 0.329075,
		0.477139, 0.848854, -0.227566,
		36.828514, 40.616535, 41.902828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857475, 40.150612, 42.655727>,  <36.494514, 40.022335, 42.062122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857475, 40.150612, 42.655727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.860363, 40.500088, 42.461155>,  <36.862095, 40.709774, 42.344414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.860363, 40.500088, 42.461155>,  <36.857475, 40.150612, 42.655727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860363, 40.500088, 42.461155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074478, 0.485560, 0.871025,
		0.997197, 0.029941, 0.068575,
		0.007218, 0.873691, -0.486429,
		36.862530, 40.762196, 42.315228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271629, 40.637676, 43.001518>,  <36.857475, 40.150612, 42.655727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271629, 40.637676, 43.001518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028988, 40.883610, 42.799919>,  <36.883404, 41.031170, 42.678959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028988, 40.883610, 42.799919>,  <37.271629, 40.637676, 43.001518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028988, 40.883610, 42.799919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181206, 0.510336, 0.840667,
		0.774078, 0.601278, -0.198160,
		-0.606604, 0.614834, -0.503995,
		36.847008, 41.068062, 42.648720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367695, 41.242001, 43.297031>,  <37.271629, 40.637676, 43.001518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367695, 41.242001, 43.297031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021450, 41.286289, 43.101704>,  <36.813702, 41.312862, 42.984509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021450, 41.286289, 43.101704>,  <37.367695, 41.242001, 43.297031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021450, 41.286289, 43.101704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370904, 0.513359, 0.773882,
		0.336363, 0.851002, -0.403305,
		-0.865615, 0.110718, -0.488315,
		36.761765, 41.319504, 42.955208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223713, 41.983513, 43.336338>,  <37.367695, 41.242001, 43.297031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223713, 41.983513, 43.336338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.877220, 41.795078, 43.269745>,  <36.669323, 41.682018, 43.229790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.877220, 41.795078, 43.269745>,  <37.223713, 41.983513, 43.336338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877220, 41.795078, 43.269745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353829, 0.343133, 0.870095,
		-0.352769, 0.812609, -0.463919,
		-0.866233, -0.471090, -0.166478,
		36.617352, 41.653751, 43.219803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753387, 42.477989, 43.553104>,  <37.223713, 41.983513, 43.336338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753387, 42.477989, 43.553104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.570694, 42.122242, 43.561337>,  <36.461079, 41.908794, 43.566277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.570694, 42.122242, 43.561337>,  <36.753387, 42.477989, 43.553104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570694, 42.122242, 43.561337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388355, 0.220140, 0.894829,
		-0.800361, 0.400706, -0.445935,
		-0.456731, -0.889367, 0.020576,
		36.433674, 41.855431, 43.567509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035206, 42.578213, 43.779060>,  <36.753387, 42.477989, 43.553104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035206, 42.578213, 43.779060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138771, 42.200119, 43.858551>,  <36.200909, 41.973263, 43.906246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138771, 42.200119, 43.858551>,  <36.035206, 42.578213, 43.779060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138771, 42.200119, 43.858551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174410, 0.156610, 0.972139,
		-0.950024, -0.286357, -0.124311,
		0.258911, -0.945237, 0.198727,
		36.216446, 41.916550, 43.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464161, 42.341507, 44.178169>,  <36.035206, 42.578213, 43.779060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464161, 42.341507, 44.178169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760345, 42.080959, 44.244419>,  <35.938057, 41.924629, 44.284168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760345, 42.080959, 44.244419>,  <35.464161, 42.341507, 44.178169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760345, 42.080959, 44.244419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175062, 0.051007, 0.983235,
		-0.648898, -0.757044, -0.076261,
		0.740463, -0.651369, 0.165628,
		35.982483, 41.885548, 44.294109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187275, 41.776886, 44.530342>,  <35.464161, 42.341507, 44.178169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187275, 41.776886, 44.530342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579041, 41.775101, 44.611076>,  <35.814098, 41.774029, 44.659515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579041, 41.775101, 44.611076>,  <35.187275, 41.776886, 44.530342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579041, 41.775101, 44.611076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193780, -0.301168, 0.933674,
		0.056620, -0.953561, -0.295832,
		0.979410, -0.004462, 0.201833,
		35.872864, 41.773762, 44.671627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307838, 41.183521, 44.827351>,  <35.187275, 41.776886, 44.530342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307838, 41.183521, 44.827351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635235, 41.382248, 44.942760>,  <35.831673, 41.501484, 45.012005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635235, 41.382248, 44.942760>,  <35.307838, 41.183521, 44.827351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635235, 41.382248, 44.942760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126604, -0.333883, 0.934074,
		0.560393, -0.801061, -0.210383,
		0.818493, 0.496813, 0.288523,
		35.880783, 41.531292, 45.029316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787636, 40.668976, 45.197083>,  <35.307838, 41.183521, 44.827351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787636, 40.668976, 45.197083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893536, 41.034672, 45.319767>,  <35.957077, 41.254089, 45.393379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893536, 41.034672, 45.319767>,  <35.787636, 40.668976, 45.197083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893536, 41.034672, 45.319767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067020, -0.299852, 0.951629,
		0.961984, -0.272503, -0.018115,
		0.264754, 0.914238, 0.306716,
		35.972961, 41.308945, 45.411781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188557, 40.533382, 45.711624>,  <35.787636, 40.668976, 45.197083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188557, 40.533382, 45.711624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127106, 40.922779, 45.779415>,  <36.090237, 41.156418, 45.820087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127106, 40.922779, 45.779415>,  <36.188557, 40.533382, 45.711624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127106, 40.922779, 45.779415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062693, -0.180766, 0.981526,
		0.986138, 0.140164, 0.088801,
		-0.153627, 0.973487, 0.169473,
		36.081017, 41.214825, 45.830257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744461, 40.729801, 46.180473>,  <36.188557, 40.533382, 45.711624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744461, 40.729801, 46.180473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456959, 41.003723, 46.228535>,  <36.284458, 41.168076, 46.257374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456959, 41.003723, 46.228535>,  <36.744461, 40.729801, 46.180473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456959, 41.003723, 46.228535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010951, -0.183952, 0.982874,
		0.695178, 0.705129, 0.139715,
		-0.718754, 0.684803, 0.120158,
		36.241333, 41.209164, 46.264584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931297, 41.144447, 46.814255>,  <36.744461, 40.729801, 46.180473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931297, 41.144447, 46.814255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535145, 41.160782, 46.761387>,  <36.297451, 41.170582, 46.729668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535145, 41.160782, 46.761387>,  <36.931297, 41.144447, 46.814255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535145, 41.160782, 46.761387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133258, -0.025178, 0.990761,
		0.037135, 0.998848, 0.030378,
		-0.990385, 0.040840, -0.132170,
		36.238029, 41.173035, 46.721737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374928, 41.779472, 46.771797>,  <36.931297, 41.144447, 46.814255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374928, 41.779472, 46.771797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.634186, 41.570896, 46.993790>,  <37.789742, 41.445751, 47.126984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.634186, 41.570896, 46.993790>,  <37.374928, 41.779472, 46.771797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634186, 41.570896, 46.993790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565694, -0.158195, -0.809299,
		0.509799, 0.838493, 0.192443,
		0.648148, -0.521443, 0.554978,
		37.828629, 41.414463, 47.160282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111481, 42.088093, 46.711411>,  <37.374928, 41.779472, 46.771797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111481, 42.088093, 46.711411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.093559, 41.698696, 46.801121>,  <38.082806, 41.465057, 46.854946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.093559, 41.698696, 46.801121>,  <38.111481, 42.088093, 46.711411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093559, 41.698696, 46.801121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468551, -0.218750, -0.855926,
		0.882300, 0.066736, 0.465933,
		-0.044802, -0.973496, 0.224273,
		38.080120, 41.406647, 46.868404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726418, 41.945724, 46.718418>,  <38.111481, 42.088093, 46.711411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726418, 41.945724, 46.718418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545105, 41.595379, 46.652214>,  <38.436317, 41.385170, 46.612492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545105, 41.595379, 46.652214>,  <38.726418, 41.945724, 46.718418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545105, 41.595379, 46.652214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708475, -0.241334, -0.663190,
		0.540923, -0.417872, 0.729922,
		-0.453283, -0.875866, -0.165509,
		38.409119, 41.332619, 46.602562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263191, 41.544712, 46.639359>,  <38.726418, 41.945724, 46.718418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263191, 41.544712, 46.639359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.960579, 41.325436, 46.496727>,  <38.779011, 41.193871, 46.411148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.960579, 41.325436, 46.496727>,  <39.263191, 41.544712, 46.639359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960579, 41.325436, 46.496727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537177, -0.209965, -0.816918,
		0.372957, -0.809570, 0.453320,
		-0.756534, -0.548189, -0.356575,
		38.733620, 41.160980, 46.389755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596573, 40.963940, 46.361282>,  <39.263191, 41.544712, 46.639359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596573, 40.963940, 46.361282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.233551, 40.933334, 46.196121>,  <39.015739, 40.914970, 46.097023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.233551, 40.933334, 46.196121>,  <39.596573, 40.963940, 46.361282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233551, 40.933334, 46.196121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409574, -0.378346, -0.830123,
		-0.092709, -0.922497, 0.374706,
		-0.907554, -0.076510, -0.412907,
		38.961285, 40.910381, 46.072250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546047, 40.280449, 46.083595>,  <39.596573, 40.963940, 46.361282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546047, 40.280449, 46.083595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280373, 40.494267, 45.874554>,  <39.120968, 40.622559, 45.749126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280373, 40.494267, 45.874554>,  <39.546047, 40.280449, 46.083595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280373, 40.494267, 45.874554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297848, -0.451975, -0.840836,
		-0.685671, -0.714128, 0.140981,
		-0.664185, 0.534546, -0.522608,
		39.081116, 40.654629, 45.717770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345856, 39.803383, 45.610363>,  <39.546047, 40.280449, 46.083595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345856, 39.803383, 45.610363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.260258, 40.166912, 45.467113>,  <39.208900, 40.385029, 45.381165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.260258, 40.166912, 45.467113>,  <39.345856, 39.803383, 45.610363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260258, 40.166912, 45.467113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278400, -0.294674, -0.914144,
		-0.936323, -0.295323, -0.189958,
		-0.213992, 0.908819, -0.358128,
		39.196060, 40.439556, 45.359676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973534, 39.766457, 44.962391>,  <39.345856, 39.803383, 45.610363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973534, 39.766457, 44.962391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136940, 40.131550, 44.960255>,  <39.234985, 40.350605, 44.958973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136940, 40.131550, 44.960255>,  <38.973534, 39.766457, 44.962391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136940, 40.131550, 44.960255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294611, -0.137395, -0.945689,
		-0.863896, 0.384759, -0.325031,
		0.408520, 0.912734, -0.005341,
		39.259495, 40.405369, 44.958652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852093, 40.012337, 44.330116>,  <38.973534, 39.766457, 44.962391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852093, 40.012337, 44.330116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151440, 40.246552, 44.454750>,  <39.331047, 40.387081, 44.529530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151440, 40.246552, 44.454750>,  <38.852093, 40.012337, 44.330116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151440, 40.246552, 44.454750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403817, -0.029546, -0.914362,
		-0.526187, 0.810107, -0.258561,
		0.748371, 0.585537, 0.311588,
		39.375950, 40.422211, 44.548225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938023, 40.407127, 43.791451>,  <38.852093, 40.012337, 44.330116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938023, 40.407127, 43.791451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278309, 40.442036, 43.998783>,  <39.482479, 40.462978, 44.123184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278309, 40.442036, 43.998783>,  <38.938023, 40.407127, 43.791451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278309, 40.442036, 43.998783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517946, 0.028840, -0.854927,
		-0.089556, 0.995767, -0.020665,
		0.850713, 0.087267, 0.518336,
		39.533524, 40.468216, 44.154285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417679, 41.010998, 43.496346>,  <38.938023, 40.407127, 43.791451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417679, 41.010998, 43.496346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667641, 40.779739, 43.706200>,  <39.817619, 40.640984, 43.832111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667641, 40.779739, 43.706200>,  <39.417679, 41.010998, 43.496346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667641, 40.779739, 43.706200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691819, 0.098675, -0.715297,
		0.361775, 0.809947, 0.461633,
		0.624904, -0.578143, 0.524638,
		39.855110, 40.606297, 43.863590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082848, 41.450081, 43.470222>,  <39.417679, 41.010998, 43.496346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082848, 41.450081, 43.470222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110497, 41.054043, 43.519119>,  <40.127087, 40.816422, 43.548458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110497, 41.054043, 43.519119>,  <40.082848, 41.450081, 43.470222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110497, 41.054043, 43.519119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578202, -0.060098, -0.813677,
		0.812961, 0.126922, 0.568318,
		0.069119, -0.990090, 0.122244,
		40.131233, 40.757015, 43.555794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690861, 41.462799, 43.169529>,  <40.082848, 41.450081, 43.470222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690861, 41.462799, 43.169529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599442, 41.075054, 43.205544>,  <40.544590, 40.842407, 43.227150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599442, 41.075054, 43.205544>,  <40.690861, 41.462799, 43.169529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599442, 41.075054, 43.205544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347092, -0.167538, -0.922745,
		0.909557, -0.179640, 0.374748,
		-0.228546, -0.969361, 0.090033,
		40.530876, 40.784245, 43.232555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267826, 41.047997, 43.011566>,  <40.690861, 41.462799, 43.169529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267826, 41.047997, 43.011566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.963619, 40.797081, 42.944496>,  <40.781094, 40.646530, 42.904255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.963619, 40.797081, 42.944496>,  <41.267826, 41.047997, 43.011566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963619, 40.797081, 42.944496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377391, -0.216890, -0.900297,
		0.528378, -0.747975, 0.401683,
		-0.760521, -0.627289, -0.167679,
		40.735462, 40.608894, 42.894192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.268274, 34.049335, 28.591623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.420950, 33.763863, 28.826561>,  <27.512554, 33.592579, 28.967524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.420950, 33.763863, 28.826561>,  <27.268274, 34.049335, 28.591623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420950, 33.763863, 28.826561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253207, 0.530405, 0.809047,
		-0.888933, -0.457521, 0.021739,
		0.381687, -0.713684, 0.587342,
		27.535456, 33.549759, 29.002764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699755, 33.862320, 29.101751>,  <27.268274, 34.049335, 28.591623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699755, 33.862320, 29.101751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031761, 33.725620, 29.278059>,  <27.230965, 33.643600, 29.383844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031761, 33.725620, 29.278059>,  <26.699755, 33.862320, 29.101751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031761, 33.725620, 29.278059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168036, 0.600332, 0.781899,
		-0.531820, -0.723056, 0.440860,
		0.830018, -0.341749, 0.440768,
		27.280767, 33.623096, 29.410290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479477, 33.451496, 29.767790>,  <26.699755, 33.862320, 29.101751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479477, 33.451496, 29.767790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842104, 33.619625, 29.752506>,  <27.059681, 33.720505, 29.743336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842104, 33.619625, 29.752506>,  <26.479477, 33.451496, 29.767790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842104, 33.619625, 29.752506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238074, 0.584031, 0.776034,
		0.348502, -0.694431, 0.629533,
		0.906569, 0.420324, -0.038210,
		27.114075, 33.745724, 29.741043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749819, 33.613052, 30.458731>,  <26.479477, 33.451496, 29.767790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749819, 33.613052, 30.458731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006176, 33.825657, 30.237190>,  <27.159990, 33.953220, 30.104267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006176, 33.825657, 30.237190>,  <26.749819, 33.613052, 30.458731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006176, 33.825657, 30.237190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118130, 0.644621, 0.755320,
		0.758486, -0.549506, 0.350346,
		0.640894, 0.531514, -0.553850,
		27.198444, 33.985111, 30.071035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124859, 33.889206, 30.938675>,  <26.749819, 33.613052, 30.458731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124859, 33.889206, 30.938675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246332, 34.113449, 30.630520>,  <27.319216, 34.247993, 30.445627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246332, 34.113449, 30.630520>,  <27.124859, 33.889206, 30.938675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246332, 34.113449, 30.630520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170091, 0.763684, 0.622780,
		0.937468, -0.320163, 0.136563,
		0.303682, 0.560608, -0.770387,
		27.337437, 34.281631, 30.399405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715645, 34.157944, 31.225571>,  <27.124859, 33.889206, 30.938675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715645, 34.157944, 31.225571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566410, 34.379993, 30.928211>,  <27.476870, 34.513226, 30.749796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566410, 34.379993, 30.928211>,  <27.715645, 34.157944, 31.225571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566410, 34.379993, 30.928211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175054, 0.828977, 0.531180,
		0.911133, 0.068041, -0.406457,
		-0.373086, 0.555128, -0.743398,
		27.454485, 34.546532, 30.705193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219086, 34.691547, 31.195374>,  <27.715645, 34.157944, 31.225571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219086, 34.691547, 31.195374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864365, 34.786892, 31.036999>,  <27.651531, 34.844097, 30.941975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864365, 34.786892, 31.036999>,  <28.219086, 34.691547, 31.195374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864365, 34.786892, 31.036999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015206, 0.871315, 0.490488,
		0.461898, 0.428945, -0.776309,
		-0.886803, 0.238360, -0.395936,
		27.598324, 34.858398, 30.918219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375166, 35.342865, 31.160971>,  <28.219086, 34.691547, 31.195374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375166, 35.342865, 31.160971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975859, 35.340012, 31.137613>,  <27.736275, 35.338299, 31.123598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975859, 35.340012, 31.137613>,  <28.375166, 35.342865, 31.160971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975859, 35.340012, 31.137613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034300, 0.876980, 0.479301,
		0.047794, 0.480474, -0.875706,
		-0.998268, -0.007129, -0.058394,
		27.676378, 35.337872, 31.120094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152622, 36.031101, 31.022713>,  <28.375166, 35.342865, 31.160971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152622, 36.031101, 31.022713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818556, 35.860683, 31.161842>,  <27.618116, 35.758434, 31.245321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818556, 35.860683, 31.161842>,  <28.152622, 36.031101, 31.022713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818556, 35.860683, 31.161842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128095, 0.765698, 0.630316,
		-0.534871, 0.481865, -0.694060,
		-0.835167, -0.426044, 0.347825,
		27.568007, 35.732872, 31.266190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604504, 36.538071, 30.962471>,  <28.152622, 36.031101, 31.022713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604504, 36.538071, 30.962471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480333, 36.279438, 31.241201>,  <27.405830, 36.124256, 31.408440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480333, 36.279438, 31.241201>,  <27.604504, 36.538071, 30.962471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480333, 36.279438, 31.241201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072539, 0.747014, 0.660839,
		-0.947825, 0.154596, -0.278796,
		-0.310428, -0.646584, 0.696824,
		27.387205, 36.085464, 31.450249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116098, 36.918732, 31.355679>,  <27.604504, 36.538071, 30.962471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116098, 36.918732, 31.355679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241674, 36.615406, 31.584204>,  <27.317020, 36.433411, 31.721319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241674, 36.615406, 31.584204>,  <27.116098, 36.918732, 31.355679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241674, 36.615406, 31.584204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066578, 0.617838, 0.783482,
		-0.947105, -0.207930, 0.244452,
		0.313941, -0.758315, 0.571314,
		27.335857, 36.387913, 31.755598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794109, 37.056244, 31.910797>,  <27.116098, 36.918732, 31.355679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794109, 37.056244, 31.910797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067696, 36.790195, 32.030663>,  <27.231848, 36.630566, 32.102581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067696, 36.790195, 32.030663>,  <26.794109, 37.056244, 31.910797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067696, 36.790195, 32.030663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122884, 0.509948, 0.851383,
		-0.719090, -0.545492, 0.430520,
		0.683965, -0.665125, 0.299666,
		27.272884, 36.590656, 32.120564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635412, 36.827015, 32.659725>,  <26.794109, 37.056244, 31.910797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635412, 36.827015, 32.659725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.021774, 36.744331, 32.597374>,  <27.253592, 36.694721, 32.559963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.021774, 36.744331, 32.597374>,  <26.635412, 36.827015, 32.659725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021774, 36.744331, 32.597374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243393, 0.519799, 0.818882,
		-0.088247, -0.828902, 0.552389,
		0.965905, -0.206712, -0.155878,
		27.311546, 36.682320, 32.550610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885838, 36.454460, 33.311562>,  <26.635412, 36.827015, 32.659725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885838, 36.454460, 33.311562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201077, 36.623264, 33.132313>,  <27.390221, 36.724545, 33.024765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201077, 36.623264, 33.132313>,  <26.885838, 36.454460, 33.311562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201077, 36.623264, 33.132313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270576, 0.416398, 0.867987,
		0.552893, -0.805309, 0.213978,
		0.788097, 0.422007, -0.448121,
		27.437506, 36.749866, 32.997875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445475, 36.272530, 33.654900>,  <26.885838, 36.454460, 33.311562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445475, 36.272530, 33.654900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602453, 36.578369, 33.450397>,  <27.696640, 36.761871, 33.327698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602453, 36.578369, 33.450397>,  <27.445475, 36.272530, 33.654900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602453, 36.578369, 33.450397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505989, 0.284707, 0.814197,
		0.768088, -0.578218, -0.275144,
		0.392448, 0.764595, -0.511252,
		27.720188, 36.807747, 33.297020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190830, 36.369553, 33.781662>,  <27.445475, 36.272530, 33.654900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190830, 36.369553, 33.781662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041811, 36.724861, 33.674198>,  <27.952400, 36.938046, 33.609718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041811, 36.724861, 33.674198>,  <28.190830, 36.369553, 33.781662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041811, 36.724861, 33.674198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335733, 0.398898, 0.853325,
		0.865154, 0.227707, -0.446831,
		-0.372548, 0.888273, -0.268660,
		27.930046, 36.991344, 33.593601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593105, 36.762951, 34.152374>,  <28.190830, 36.369553, 33.781662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593105, 36.762951, 34.152374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326223, 37.036880, 34.035168>,  <28.166094, 37.201237, 33.964844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326223, 37.036880, 34.035168>,  <28.593105, 36.762951, 34.152374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326223, 37.036880, 34.035168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228184, 0.562373, 0.794776,
		0.709063, 0.463417, -0.531483,
		-0.667205, 0.684822, -0.293013,
		28.126062, 37.242329, 33.947266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991104, 37.430103, 34.212093>,  <28.593105, 36.762951, 34.152374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991104, 37.430103, 34.212093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.596710, 37.487259, 34.246536>,  <28.360073, 37.521553, 34.267200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.596710, 37.487259, 34.246536>,  <28.991104, 37.430103, 34.212093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596710, 37.487259, 34.246536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149176, 0.524103, 0.838488,
		0.074679, 0.839583, -0.538073,
		-0.985987, 0.142885, 0.086106,
		28.300915, 37.530125, 34.272369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856686, 38.128929, 34.536007>,  <28.991104, 37.430103, 34.212093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856686, 38.128929, 34.536007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486784, 37.980934, 34.571651>,  <28.264843, 37.892136, 34.593037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486784, 37.980934, 34.571651>,  <28.856686, 38.128929, 34.536007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486784, 37.980934, 34.571651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181093, 0.633749, 0.752043,
		-0.334720, 0.679317, -0.653063,
		-0.924753, -0.369989, 0.089109,
		28.209358, 37.869938, 34.598385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467102, 38.174267, 35.000809>,  <28.856686, 38.128929, 34.536007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467102, 38.174267, 35.000809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814066, 38.180893, 35.199738>,  <30.022243, 38.184868, 35.319096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814066, 38.180893, 35.199738>,  <29.467102, 38.174267, 35.000809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814066, 38.180893, 35.199738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447873, -0.461484, -0.765795,
		0.216822, 0.886994, -0.407713,
		0.867409, 0.016563, 0.497320,
		30.074289, 38.185863, 35.348934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016569, 38.487789, 34.621918>,  <29.467102, 38.174267, 35.000809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016569, 38.487789, 34.621918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202579, 38.246990, 34.881561>,  <30.314186, 38.102509, 35.037350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202579, 38.246990, 34.881561>,  <30.016569, 38.487789, 34.621918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202579, 38.246990, 34.881561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517084, -0.410449, -0.751103,
		0.718592, 0.684928, 0.120415,
		0.465027, -0.602001, 0.649111,
		30.342087, 38.066391, 35.076294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736031, 38.446686, 34.453388>,  <30.016569, 38.487789, 34.621918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736031, 38.446686, 34.453388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715637, 38.127239, 34.693256>,  <30.703402, 37.935570, 34.837177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715637, 38.127239, 34.693256>,  <30.736031, 38.446686, 34.453388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715637, 38.127239, 34.693256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484015, -0.544981, -0.684635,
		0.873573, 0.255345, 0.414330,
		-0.050984, -0.798620, 0.599671,
		30.700342, 37.887653, 34.873158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425533, 38.170731, 34.532665>,  <30.736031, 38.446686, 34.453388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425533, 38.170731, 34.532665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177118, 37.869457, 34.619408>,  <31.028070, 37.688694, 34.671452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177118, 37.869457, 34.619408>,  <31.425533, 38.170731, 34.532665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177118, 37.869457, 34.619408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590860, -0.631685, -0.501854,
		0.514975, -0.183537, 0.837326,
		-0.621035, -0.753185, 0.216857,
		30.990808, 37.643501, 34.684464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942616, 37.639099, 34.556259>,  <31.425533, 38.170731, 34.532665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942616, 37.639099, 34.556259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.561710, 37.526104, 34.509960>,  <31.333168, 37.458305, 34.482182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.561710, 37.526104, 34.509960>,  <31.942616, 37.639099, 34.556259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561710, 37.526104, 34.509960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282471, -0.671514, -0.685040,
		0.115794, -0.685031, 0.719252,
		-0.952261, -0.282492, -0.115744,
		31.276031, 37.441357, 34.475235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873854, 36.852840, 34.625542>,  <31.942616, 37.639099, 34.556259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873854, 36.852840, 34.625542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.567965, 36.978100, 34.400280>,  <31.384432, 37.053253, 34.265121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.567965, 36.978100, 34.400280>,  <31.873854, 36.852840, 34.625542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567965, 36.978100, 34.400280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190347, -0.725185, -0.661721,
		-0.615603, -0.613227, 0.494960,
		-0.764723, 0.313143, -0.563152,
		31.338549, 37.072044, 34.231335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935814, 36.429802, 34.050976>,  <31.873854, 36.852840, 34.625542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935814, 36.429802, 34.050976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.645620, 36.648010, 33.883129>,  <31.471504, 36.778934, 33.782421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.645620, 36.648010, 33.883129>,  <31.935814, 36.429802, 34.050976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645620, 36.648010, 33.883129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092531, -0.526844, -0.844910,
		-0.681989, -0.651797, 0.331740,
		-0.725486, 0.545523, -0.419614,
		31.427975, 36.811668, 33.757244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470612, 35.995514, 33.803276>,  <31.935814, 36.429802, 34.050976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470612, 35.995514, 33.803276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.399179, 36.336426, 33.606613>,  <31.356321, 36.540974, 33.488617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.399179, 36.336426, 33.606613>,  <31.470612, 35.995514, 33.803276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399179, 36.336426, 33.606613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012527, -0.501617, -0.864999,
		-0.983846, -0.148311, 0.100255,
		-0.178579, 0.852282, -0.491656,
		31.345606, 36.592110, 33.459118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985653, 35.849407, 33.338867>,  <31.470612, 35.995514, 33.803276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985653, 35.849407, 33.338867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.182789, 36.168129, 33.199028>,  <31.301071, 36.359360, 33.115124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.182789, 36.168129, 33.199028>,  <30.985653, 35.849407, 33.338867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182789, 36.168129, 33.199028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048822, -0.426469, -0.903183,
		-0.868750, 0.428056, -0.249082,
		0.492839, 0.796801, -0.349597,
		31.330641, 36.407169, 33.094151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717875, 35.920235, 32.683533>,  <30.985653, 35.849407, 33.338867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717875, 35.920235, 32.683533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.055269, 36.135094, 32.683968>,  <31.257706, 36.264008, 32.684227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.055269, 36.135094, 32.683968>,  <30.717875, 35.920235, 32.683533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055269, 36.135094, 32.683968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186588, -0.291107, -0.938319,
		-0.503698, 0.791663, -0.345770,
		0.843489, 0.537146, 0.001085,
		31.308315, 36.296238, 32.684292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788322, 36.103558, 31.942160>,  <30.717875, 35.920235, 32.683533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788322, 36.103558, 31.942160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.138157, 36.182434, 32.119343>,  <31.348059, 36.229759, 32.225651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.138157, 36.182434, 32.119343>,  <30.788322, 36.103558, 31.942160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138157, 36.182434, 32.119343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481570, -0.246917, -0.840905,
		-0.056449, 0.948760, -0.310914,
		0.874588, 0.197195, 0.442956,
		31.400534, 36.241592, 32.252232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164213, 36.638447, 31.497252>,  <30.788322, 36.103558, 31.942160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164213, 36.638447, 31.497252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423216, 36.421749, 31.711632>,  <31.578617, 36.291729, 31.840260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423216, 36.421749, 31.711632>,  <31.164213, 36.638447, 31.497252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423216, 36.421749, 31.711632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509237, -0.215614, -0.833180,
		0.566932, 0.812416, 0.136267,
		0.647508, -0.541748, 0.535950,
		31.617468, 36.259224, 31.872417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733330, 36.744446, 31.189568>,  <31.164213, 36.638447, 31.497252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733330, 36.744446, 31.189568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774441, 36.394711, 31.379293>,  <31.799107, 36.184872, 31.493130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774441, 36.394711, 31.379293>,  <31.733330, 36.744446, 31.189568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774441, 36.394711, 31.379293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408719, -0.397606, -0.821497,
		0.906855, 0.278292, 0.316493,
		0.102777, -0.874336, 0.474315,
		31.805273, 36.132408, 31.521587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155197, 36.518047, 30.800966>,  <31.733330, 36.744446, 31.189568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155197, 36.518047, 30.800966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.050667, 36.183609, 30.993898>,  <31.987947, 35.982944, 31.109657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.050667, 36.183609, 30.993898>,  <32.155197, 36.518047, 30.800966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050667, 36.183609, 30.993898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049055, -0.510555, -0.858444,
		0.964002, -0.200676, 0.174438,
		-0.261330, -0.836100, 0.482332,
		31.972267, 35.932777, 31.138597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592552, 35.943043, 30.570581>,  <32.155197, 36.518047, 30.800966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592552, 35.943043, 30.570581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.291016, 35.741978, 30.739836>,  <32.110092, 35.621338, 30.841389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.291016, 35.741978, 30.739836>,  <32.592552, 35.943043, 30.570581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291016, 35.741978, 30.739836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107329, -0.729551, -0.675453,
		0.648226, -0.463772, 0.603919,
		-0.753845, -0.502664, 0.423138,
		32.064861, 35.591179, 30.866777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722904, 35.153015, 30.470959>,  <32.592552, 35.943043, 30.570581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722904, 35.153015, 30.470959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330685, 35.202187, 30.532171>,  <32.095352, 35.231689, 30.568899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330685, 35.202187, 30.532171>,  <32.722904, 35.153015, 30.470959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330685, 35.202187, 30.532171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195035, -0.698161, -0.688863,
		0.022158, -0.705308, 0.708555,
		-0.980546, 0.122929, 0.153029,
		32.036522, 35.239067, 30.578079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520302, 34.553963, 30.691988>,  <32.722904, 35.153015, 30.470959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520302, 34.553963, 30.691988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.169853, 34.706509, 30.574020>,  <31.959585, 34.798035, 30.503241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.169853, 34.706509, 30.574020>,  <32.520302, 34.553963, 30.691988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169853, 34.706509, 30.574020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105581, -0.748676, -0.654474,
		-0.470390, -0.542260, 0.696195,
		-0.876120, 0.381363, -0.294918,
		31.907017, 34.820919, 30.485544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109917, 33.960197, 30.562109>,  <32.520302, 34.553963, 30.691988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109917, 33.960197, 30.562109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888048, 34.240208, 30.382196>,  <31.754927, 34.408215, 30.274250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.888048, 34.240208, 30.382196>,  <32.109917, 33.960197, 30.562109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888048, 34.240208, 30.382196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421135, -0.702393, -0.573837,
		-0.717621, -0.128876, 0.684405,
		-0.554676, 0.700025, -0.449778,
		31.721645, 34.450214, 30.247263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342577, 33.600864, 30.492006>,  <32.109917, 33.960197, 30.562109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342577, 33.600864, 30.492006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.406364, 33.908394, 30.244305>,  <31.444637, 34.092911, 30.095684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.406364, 33.908394, 30.244305>,  <31.342577, 33.600864, 30.492006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406364, 33.908394, 30.244305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336675, -0.547318, -0.766220,
		-0.928019, 0.330675, 0.171565,
		0.159469, 0.768828, -0.619252,
		31.454205, 34.139042, 30.058529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771461, 33.581276, 29.989237>,  <31.342577, 33.600864, 30.492006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771461, 33.581276, 29.989237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.054743, 33.811569, 29.825785>,  <31.224712, 33.949745, 29.727713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.054743, 33.811569, 29.825785>,  <30.771461, 33.581276, 29.989237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054743, 33.811569, 29.825785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175360, -0.417207, -0.891733,
		-0.683884, 0.703185, -0.194506,
		0.708203, 0.575733, -0.408632,
		31.267204, 33.984291, 29.703196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545176, 33.775711, 29.363218>,  <30.771461, 33.581276, 29.989237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545176, 33.775711, 29.363218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940273, 33.828419, 29.329758>,  <31.177332, 33.860043, 29.309681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940273, 33.828419, 29.329758>,  <30.545176, 33.775711, 29.363218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940273, 33.828419, 29.329758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007954, -0.492769, -0.870124,
		-0.155875, 0.860126, -0.485681,
		0.987745, 0.131768, -0.083652,
		31.236597, 33.867950, 29.304663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578272, 34.050060, 28.690615>,  <30.545176, 33.775711, 29.363218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578272, 34.050060, 28.690615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.936018, 33.913029, 28.805679>,  <31.150665, 33.830811, 28.874718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.936018, 33.913029, 28.805679>,  <30.578272, 34.050060, 28.690615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936018, 33.913029, 28.805679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117656, -0.440271, -0.890123,
		0.431587, 0.829940, -0.353456,
		0.894365, -0.342579, 0.287662,
		31.204329, 33.810253, 28.891977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031479, 34.054401, 28.151487>,  <30.578272, 34.050060, 28.690615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031479, 34.054401, 28.151487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234148, 33.787815, 28.370249>,  <31.355749, 33.627861, 28.501505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234148, 33.787815, 28.370249>,  <31.031479, 34.054401, 28.151487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234148, 33.787815, 28.370249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193237, -0.530427, -0.825413,
		0.840204, 0.523895, -0.139966,
		0.506672, -0.666469, 0.546903,
		31.386150, 33.587875, 28.534319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.551510, 37.464184, 47.933464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.156395, 37.448925, 47.993893>,  <37.919327, 37.439770, 48.030151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.156395, 37.448925, 47.993893>,  <38.551510, 37.464184, 47.933464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156395, 37.448925, 47.993893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128632, 0.347563, 0.928791,
		-0.087935, 0.936880, -0.338412,
		-0.987786, -0.038143, 0.151076,
		37.860058, 37.437481, 48.039215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376186, 38.145641, 48.091629>,  <38.551510, 37.464184, 47.933464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376186, 38.145641, 48.091629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134506, 37.882355, 48.271271>,  <37.989498, 37.724384, 48.379055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134506, 37.882355, 48.271271>,  <38.376186, 38.145641, 48.091629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134506, 37.882355, 48.271271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247481, 0.380733, 0.890952,
		-0.757429, 0.649456, -0.067141,
		-0.604197, -0.658217, 0.449106,
		37.953247, 37.684891, 48.406002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992752, 38.533871, 48.567101>,  <38.376186, 38.145641, 48.091629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992752, 38.533871, 48.567101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932213, 38.154213, 48.677532>,  <37.895889, 37.926418, 48.743793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932213, 38.154213, 48.677532>,  <37.992752, 38.533871, 48.567101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932213, 38.154213, 48.677532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165494, 0.251026, 0.953729,
		-0.974528, 0.190036, 0.119084,
		-0.151350, -0.949143, 0.276081,
		37.886806, 37.869469, 48.760357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626179, 38.692478, 49.122898>,  <37.992752, 38.533871, 48.567101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626179, 38.692478, 49.122898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714306, 38.306602, 49.180641>,  <37.767181, 38.075077, 49.215286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714306, 38.306602, 49.180641>,  <37.626179, 38.692478, 49.122898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714306, 38.306602, 49.180641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017810, 0.151950, 0.988228,
		-0.975266, -0.215151, 0.050658,
		0.220316, -0.964687, 0.144360,
		37.780399, 38.017197, 49.223949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065037, 38.373325, 49.536449>,  <37.626179, 38.692478, 49.122898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065037, 38.373325, 49.536449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.405575, 38.172981, 49.598869>,  <37.609898, 38.052776, 49.636322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.405575, 38.172981, 49.598869>,  <37.065037, 38.373325, 49.536449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405575, 38.172981, 49.598869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130690, 0.085602, 0.987721,
		-0.508064, -0.861287, 0.007420,
		0.851346, -0.500856, 0.156053,
		37.660980, 38.022724, 49.645687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871910, 37.969257, 50.223228>,  <37.065037, 38.373325, 49.536449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871910, 37.969257, 50.223228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264904, 37.911125, 50.176590>,  <37.500702, 37.876247, 50.148605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264904, 37.911125, 50.176590>,  <36.871910, 37.969257, 50.223228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264904, 37.911125, 50.176590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117814, -0.000233, 0.993036,
		-0.144343, -0.989384, 0.016893,
		0.982489, -0.145328, -0.116597,
		37.559650, 37.867527, 50.141609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100571, 37.338161, 50.578182>,  <36.871910, 37.969257, 50.223228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100571, 37.338161, 50.578182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.436310, 37.554867, 50.560352>,  <37.637753, 37.684891, 50.549652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.436310, 37.554867, 50.560352>,  <37.100571, 37.338161, 50.578182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436310, 37.554867, 50.560352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043313, 0.015090, 0.998947,
		0.541870, -0.840392, -0.010800,
		0.839345, 0.541768, -0.044577,
		37.688114, 37.717396, 50.546978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724346, 36.998840, 50.850971>,  <37.100571, 37.338161, 50.578182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724346, 36.998840, 50.850971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811253, 37.388218, 50.879807>,  <37.863396, 37.621845, 50.897110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811253, 37.388218, 50.879807>,  <37.724346, 36.998840, 50.850971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811253, 37.388218, 50.879807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134562, -0.103019, 0.985536,
		0.966792, -0.204425, -0.153371,
		0.217268, 0.973446, 0.072090,
		37.876434, 37.680252, 50.901432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144398, 36.983524, 51.376179>,  <37.724346, 36.998840, 50.850971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144398, 36.983524, 51.376179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.045998, 37.370056, 51.346020>,  <37.986958, 37.601974, 51.327927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.045998, 37.370056, 51.346020>,  <38.144398, 36.983524, 51.376179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045998, 37.370056, 51.346020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195795, 0.125724, 0.972552,
		0.949289, 0.224484, -0.220132,
		-0.245998, 0.966334, -0.075396,
		37.972198, 37.659958, 51.323402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715763, 37.340446, 51.644169>,  <38.144398, 36.983524, 51.376179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715763, 37.340446, 51.644169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409657, 37.597588, 51.657410>,  <38.225990, 37.751873, 51.665352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409657, 37.597588, 51.657410>,  <38.715763, 37.340446, 51.644169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409657, 37.597588, 51.657410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227982, 0.222590, 0.947881,
		0.601984, 0.732932, -0.316901,
		-0.765271, 0.642857, 0.033100,
		38.180077, 37.790443, 51.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984962, 37.815693, 52.109509>,  <38.715763, 37.340446, 51.644169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984962, 37.815693, 52.109509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593609, 37.898193, 52.115620>,  <38.358799, 37.947693, 52.119286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593609, 37.898193, 52.115620>,  <38.984962, 37.815693, 52.109509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593609, 37.898193, 52.115620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073270, 0.276617, 0.958183,
		0.193399, 0.938587, -0.285748,
		-0.978381, 0.206248, 0.015273,
		38.300095, 37.960068, 52.120201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867817, 38.538166, 52.503078>,  <38.984962, 37.815693, 52.109509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867817, 38.538166, 52.503078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526360, 38.330322, 52.517521>,  <38.321484, 38.205616, 52.526188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526360, 38.330322, 52.517521>,  <38.867817, 38.538166, 52.503078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526360, 38.330322, 52.517521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024528, 0.109347, 0.993701,
		-0.520282, 0.847380, -0.106088,
		-0.853642, -0.519607, 0.036106,
		38.270267, 38.174438, 52.528351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358528, 38.965462, 52.610992>,  <38.867817, 38.538166, 52.503078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358528, 38.965462, 52.610992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300613, 38.603401, 52.770866>,  <38.265865, 38.386166, 52.866791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300613, 38.603401, 52.770866>,  <38.358528, 38.965462, 52.610992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300613, 38.603401, 52.770866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169842, 0.375208, 0.911248,
		-0.974777, 0.199817, 0.099408,
		-0.144784, -0.905147, 0.399682,
		38.257179, 38.331856, 52.890770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847267, 39.092079, 53.127510>,  <38.358528, 38.965462, 52.610992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847267, 39.092079, 53.127510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013897, 38.752510, 53.257618>,  <38.113876, 38.548771, 53.335682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013897, 38.752510, 53.257618>,  <37.847267, 39.092079, 53.127510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013897, 38.752510, 53.257618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036071, 0.372945, 0.927152,
		-0.908385, -0.374496, 0.185981,
		0.416576, -0.848920, 0.325269,
		38.138870, 38.497833, 53.355198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514156, 39.663296, 52.815155>,  <37.847267, 39.092079, 53.127510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514156, 39.663296, 52.815155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853691, 39.853798, 52.906940>,  <38.057411, 39.968102, 52.962013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853691, 39.853798, 52.906940>,  <37.514156, 39.663296, 52.815155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853691, 39.853798, 52.906940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498799, -0.865322, -0.049164,
		0.175145, 0.156188, -0.972075,
		0.848837, 0.476259, 0.229463,
		38.108341, 39.996677, 52.975780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139244, 40.013992, 52.252335>,  <37.514156, 39.663296, 52.815155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139244, 40.013992, 52.252335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224155, 40.404552, 52.236431>,  <37.275101, 40.638889, 52.226887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224155, 40.404552, 52.236431>,  <37.139244, 40.013992, 52.252335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224155, 40.404552, 52.236431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394549, -0.122862, -0.910624,
		-0.894019, 0.177616, -0.411319,
		0.212276, 0.976400, -0.039763,
		37.287838, 40.697472, 52.224503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896839, 40.288342, 51.600006>,  <37.139244, 40.013992, 52.252335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896839, 40.288342, 51.600006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211903, 40.506702, 51.714264>,  <37.400940, 40.637718, 51.782818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211903, 40.506702, 51.714264>,  <36.896839, 40.288342, 51.600006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211903, 40.506702, 51.714264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403185, -0.106133, -0.908943,
		-0.465874, 0.831102, -0.303695,
		0.787657, 0.545898, 0.285643,
		37.448200, 40.670471, 51.799957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844452, 40.838989, 51.259895>,  <36.896839, 40.288342, 51.600006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844452, 40.838989, 51.259895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231216, 40.840755, 51.361923>,  <37.463276, 40.841816, 51.423141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231216, 40.840755, 51.361923>,  <36.844452, 40.838989, 51.259895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231216, 40.840755, 51.361923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253643, 0.090465, -0.963058,
		-0.027323, 0.995890, 0.086353,
		0.966912, 0.004411, 0.255072,
		37.521290, 40.842079, 51.438446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078209, 41.455936, 50.970726>,  <36.844452, 40.838989, 51.259895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078209, 41.455936, 50.970726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400272, 41.233742, 51.053825>,  <37.593510, 41.100426, 51.103683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400272, 41.233742, 51.053825>,  <37.078209, 41.455936, 50.970726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400272, 41.233742, 51.053825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266182, 0.025442, -0.963587,
		0.529975, 0.831136, 0.168345,
		0.805154, -0.555488, 0.207750,
		37.641819, 41.067097, 51.116150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673206, 41.814777, 50.820118>,  <37.078209, 41.455936, 50.970726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673206, 41.814777, 50.820118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806412, 41.437725, 50.829453>,  <37.886337, 41.211494, 50.835052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806412, 41.437725, 50.829453>,  <37.673206, 41.814777, 50.820118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806412, 41.437725, 50.829453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350676, 0.100836, -0.931053,
		0.875287, 0.318240, 0.364138,
		0.333017, -0.942632, 0.023339,
		37.906315, 41.154934, 50.836452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364178, 41.873642, 50.544579>,  <37.673206, 41.814777, 50.820118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364178, 41.873642, 50.544579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238373, 41.498840, 50.483780>,  <38.162891, 41.273960, 50.447300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238373, 41.498840, 50.483780>,  <38.364178, 41.873642, 50.544579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238373, 41.498840, 50.483780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169318, 0.102181, -0.980250,
		0.934031, -0.334036, 0.126515,
		-0.314512, -0.937005, -0.151999,
		38.144020, 41.217739, 50.438179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894146, 41.533188, 50.163700>,  <38.364178, 41.873642, 50.544579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894146, 41.533188, 50.163700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575005, 41.298355, 50.108894>,  <38.383522, 41.157455, 50.076012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575005, 41.298355, 50.108894>,  <38.894146, 41.533188, 50.163700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575005, 41.298355, 50.108894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156051, 0.018405, -0.987577,
		0.582308, -0.809321, 0.076930,
		-0.797851, -0.587079, -0.137013,
		38.335648, 41.122231, 50.067791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009930, 41.206844, 49.556946>,  <38.894146, 41.533188, 50.163700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009930, 41.206844, 49.556946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619160, 41.131187, 49.596619>,  <38.384697, 41.085793, 49.620422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619160, 41.131187, 49.596619>,  <39.009930, 41.206844, 49.556946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619160, 41.131187, 49.596619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087019, -0.071583, -0.993631,
		0.195040, -0.979337, 0.053472,
		-0.976927, -0.189144, 0.099183,
		38.326080, 41.074444, 49.626373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982971, 40.631256, 49.131210>,  <39.009930, 41.206844, 49.556946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982971, 40.631256, 49.131210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608669, 40.766907, 49.169903>,  <38.384087, 40.848297, 49.193119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608669, 40.766907, 49.169903>,  <38.982971, 40.631256, 49.131210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608669, 40.766907, 49.169903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172606, -0.201248, -0.964213,
		-0.307521, -0.918964, 0.246854,
		-0.935756, 0.339124, 0.096730,
		38.327942, 40.868645, 49.198921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430733, 40.213188, 48.809269>,  <38.982971, 40.631256, 49.131210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430733, 40.213188, 48.809269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229343, 40.556564, 48.848438>,  <38.108509, 40.762589, 48.871941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229343, 40.556564, 48.848438>,  <38.430733, 40.213188, 48.809269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229343, 40.556564, 48.848438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385070, -0.121491, -0.914856,
		-0.773454, -0.498315, 0.391728,
		-0.503478, 0.858441, 0.097919,
		38.078300, 40.814098, 48.877815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712929, 40.143761, 48.486504>,  <38.430733, 40.213188, 48.809269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712929, 40.143761, 48.486504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761253, 40.540829, 48.487946>,  <37.790249, 40.779068, 48.488811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761253, 40.540829, 48.487946>,  <37.712929, 40.143761, 48.486504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761253, 40.540829, 48.487946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408838, 0.053062, -0.911063,
		-0.904576, 0.108590, 0.412251,
		0.120807, 0.992669, 0.003603,
		37.797497, 40.838631, 48.489025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061188, 40.474083, 48.241634>,  <37.712929, 40.143761, 48.486504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061188, 40.474083, 48.241634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354298, 40.737156, 48.171783>,  <37.530163, 40.895000, 48.129871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354298, 40.737156, 48.171783>,  <37.061188, 40.474083, 48.241634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354298, 40.737156, 48.171783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168497, -0.073269, -0.982975,
		-0.659276, 0.749727, 0.057127,
		0.732778, 0.657678, -0.174631,
		37.574131, 40.934460, 48.119392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785263, 40.945141, 47.724968>,  <37.061188, 40.474083, 48.241634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785263, 40.945141, 47.724968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177963, 41.020550, 47.714973>,  <37.413582, 41.065796, 47.708977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177963, 41.020550, 47.714973>,  <36.785263, 40.945141, 47.724968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177963, 41.020550, 47.714973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018956, -0.033728, -0.999251,
		-0.189222, 0.981490, -0.029539,
		0.981751, 0.188520, -0.024987,
		37.472488, 41.077106, 47.707478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699585, 41.586479, 47.400047>,  <36.785263, 40.945141, 47.724968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699585, 41.586479, 47.400047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357632, 41.434937, 47.258263>,  <36.152462, 41.344009, 47.173191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357632, 41.434937, 47.258263>,  <36.699585, 41.586479, 47.400047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357632, 41.434937, 47.258263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263756, -0.270981, 0.925744,
		-0.446780, 0.884893, 0.131730,
		-0.854881, -0.378859, -0.354464,
		36.101166, 41.321278, 47.151924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205784, 41.767349, 47.865799>,  <36.699585, 41.586479, 47.400047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205784, 41.767349, 47.865799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009541, 41.474537, 47.676720>,  <35.891796, 41.298851, 47.563274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009541, 41.474537, 47.676720>,  <36.205784, 41.767349, 47.865799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009541, 41.474537, 47.676720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382022, -0.306868, 0.871717,
		-0.783178, 0.608248, -0.129100,
		-0.490604, -0.732029, -0.472696,
		35.862358, 41.254929, 47.534912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462341, 41.897762, 47.948696>,  <36.205784, 41.767349, 47.865799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462341, 41.897762, 47.948696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500149, 41.508030, 47.866970>,  <35.522835, 41.274189, 47.817936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500149, 41.508030, 47.866970>,  <35.462341, 41.897762, 47.948696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500149, 41.508030, 47.866970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333375, -0.224362, 0.915709,
		-0.938044, -0.018442, -0.346025,
		0.094523, -0.974331, -0.204313,
		35.528507, 41.215729, 47.805676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018097, 41.639587, 48.379475>,  <35.462341, 41.897762, 47.948696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018097, 41.639587, 48.379475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190529, 41.293812, 48.276005>,  <35.293987, 41.086346, 48.213924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190529, 41.293812, 48.276005>,  <35.018097, 41.639587, 48.379475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190529, 41.293812, 48.276005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320045, -0.414526, 0.851904,
		-0.843647, -0.284452, -0.455353,
		0.431081, -0.864439, -0.258676,
		35.319855, 41.034481, 48.198402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481915, 41.196762, 48.411495>,  <35.018097, 41.639587, 48.379475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481915, 41.196762, 48.411495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831738, 41.010460, 48.465488>,  <35.041630, 40.898678, 48.497883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831738, 41.010460, 48.465488>,  <34.481915, 41.196762, 48.411495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831738, 41.010460, 48.465488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295344, -0.290826, 0.910051,
		-0.384607, -0.835757, -0.391902,
		0.874557, -0.465758, 0.134982,
		35.094105, 40.870731, 48.505981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322941, 40.588299, 48.818626>,  <34.481915, 41.196762, 48.411495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322941, 40.588299, 48.818626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713158, 40.655727, 48.875053>,  <34.947289, 40.696186, 48.908909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713158, 40.655727, 48.875053>,  <34.322941, 40.588299, 48.818626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713158, 40.655727, 48.875053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146768, 0.021789, 0.988931,
		0.163636, -0.985448, 0.045997,
		0.975542, 0.168576, 0.141067,
		35.005821, 40.706299, 48.917374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605000, 40.054745, 49.259933>,  <34.322941, 40.588299, 48.818626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605000, 40.054745, 49.259933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850067, 40.368073, 49.301968>,  <34.997108, 40.556068, 49.327187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850067, 40.368073, 49.301968>,  <34.605000, 40.054745, 49.259933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850067, 40.368073, 49.301968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132486, -0.029285, 0.990752,
		0.779154, -0.620927, 0.085837,
		0.612671, 0.783321, 0.105081,
		35.033867, 40.603069, 49.333492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711838, 39.379189, 49.318962>,  <34.605000, 40.054745, 49.259933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711838, 39.379189, 49.318962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334164, 39.269222, 49.391556>,  <34.107559, 39.203243, 49.435112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334164, 39.269222, 49.391556>,  <34.711838, 39.379189, 49.318962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334164, 39.269222, 49.391556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252724, 0.251152, -0.934373,
		0.211287, -0.928088, -0.306610,
		-0.944187, -0.274909, 0.181485,
		34.050907, 39.186749, 49.445999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582455, 38.864494, 48.834461>,  <34.711838, 39.379189, 49.318962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582455, 38.864494, 48.834461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220806, 38.990509, 48.949924>,  <34.003819, 39.066116, 49.019203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220806, 38.990509, 48.949924>,  <34.582455, 38.864494, 48.834461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220806, 38.990509, 48.949924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328864, -0.081760, -0.940831,
		-0.272795, -0.945552, 0.177524,
		-0.904119, 0.315035, 0.288655,
		33.949570, 39.085018, 49.036522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117878, 38.346916, 48.752182>,  <34.582455, 38.864494, 48.834461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117878, 38.346916, 48.752182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889839, 38.675175, 48.767822>,  <33.753014, 38.872128, 48.777206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889839, 38.675175, 48.767822>,  <34.117878, 38.346916, 48.752182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889839, 38.675175, 48.767822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385835, -0.225417, -0.894605,
		-0.725339, -0.525100, 0.445144,
		-0.570100, 0.820644, 0.039098,
		33.718807, 38.921368, 48.779552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474350, 38.153702, 48.454189>,  <34.117878, 38.346916, 48.752182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474350, 38.153702, 48.454189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504566, 38.552536, 48.450077>,  <33.522697, 38.791836, 48.447609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504566, 38.552536, 48.450077>,  <33.474350, 38.153702, 48.454189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504566, 38.552536, 48.450077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171178, 0.002812, -0.985236,
		-0.982340, 0.076188, 0.170892,
		0.075544, 0.997090, -0.010279,
		33.527229, 38.851662, 48.446995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938881, 38.400513, 48.038544>,  <33.474350, 38.153702, 48.454189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938881, 38.400513, 48.038544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219460, 38.685600, 48.039536>,  <33.387806, 38.856651, 48.040131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219460, 38.685600, 48.039536>,  <32.938881, 38.400513, 48.038544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219460, 38.685600, 48.039536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055020, 0.057623, -0.996821,
		-0.710594, 0.699082, 0.079633,
		0.701448, 0.712716, 0.002483,
		33.429893, 38.899414, 48.040279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733116, 38.806812, 47.507526>,  <32.938881, 38.400513, 48.038544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733116, 38.806812, 47.507526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118519, 38.890907, 47.573818>,  <33.349758, 38.941364, 47.613594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118519, 38.890907, 47.573818>,  <32.733116, 38.806812, 47.507526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118519, 38.890907, 47.573818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182023, -0.060541, -0.981429,
		-0.196295, 0.975775, -0.096598,
		0.963502, 0.210233, 0.165729,
		33.407570, 38.953976, 47.623535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946285, 39.371578, 46.930035>,  <32.733116, 38.806812, 47.507526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946285, 39.371578, 46.930035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287479, 39.219452, 47.073017>,  <33.492195, 39.128178, 47.158806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287479, 39.219452, 47.073017>,  <32.946285, 39.371578, 46.930035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287479, 39.219452, 47.073017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348636, -0.094491, -0.932483,
		0.388413, 0.920017, 0.051992,
		0.852988, -0.380315, 0.357453,
		33.543377, 39.105358, 47.180252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.204063, 36.813293, 52.348854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573402, 36.948505, 52.276005>,  <35.795006, 37.029633, 52.232296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573402, 36.948505, 52.276005>,  <35.204063, 36.813293, 52.348854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573402, 36.948505, 52.276005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075327, -0.305635, -0.949165,
		-0.376512, 0.890124, -0.256743,
		0.923344, 0.338032, -0.182126,
		35.850407, 37.049915, 52.221367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298172, 36.488232, 51.723095>,  <35.204063, 36.813293, 52.348854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298172, 36.488232, 51.723095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660599, 36.657063, 51.735039>,  <35.878056, 36.758362, 51.742207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660599, 36.657063, 51.735039>,  <35.298172, 36.488232, 51.723095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660599, 36.657063, 51.735039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229221, -0.430297, -0.873099,
		-0.355663, 0.797934, -0.486627,
		0.906069, 0.422074, 0.029862,
		35.932419, 36.783684, 51.743996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300209, 37.062675, 51.109566>,  <35.298172, 36.488232, 51.723095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300209, 37.062675, 51.109566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650257, 36.889877, 51.196785>,  <35.860287, 36.786198, 51.249115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650257, 36.889877, 51.196785>,  <35.300209, 37.062675, 51.109566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650257, 36.889877, 51.196785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044078, -0.377557, -0.924937,
		0.481892, 0.819043, -0.311367,
		0.875121, -0.431995, 0.218043,
		35.912792, 36.760281, 51.262199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841984, 37.170284, 50.532444>,  <35.300209, 37.062675, 51.109566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841984, 37.170284, 50.532444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978550, 36.847214, 50.724735>,  <36.060490, 36.653374, 50.840111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978550, 36.847214, 50.724735>,  <35.841984, 37.170284, 50.532444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978550, 36.847214, 50.724735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272952, -0.404219, -0.872986,
		0.899407, 0.429265, 0.082450,
		0.341415, -0.807675, 0.480726,
		36.080975, 36.604912, 50.868954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399204, 37.033226, 50.065716>,  <35.841984, 37.170284, 50.532444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399204, 37.033226, 50.065716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330315, 36.705475, 50.284424>,  <36.288982, 36.508823, 50.415649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330315, 36.705475, 50.284424>,  <36.399204, 37.033226, 50.065716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330315, 36.705475, 50.284424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096002, -0.566384, -0.818531,
		0.980369, -0.088477, 0.176205,
		-0.172221, -0.819378, 0.546772,
		36.278648, 36.459660, 50.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901318, 36.615883, 49.818245>,  <36.399204, 37.033226, 50.065716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901318, 36.615883, 49.818245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637131, 36.376434, 49.999546>,  <36.478619, 36.232765, 50.108326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637131, 36.376434, 49.999546>,  <36.901318, 36.615883, 49.818245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637131, 36.376434, 49.999546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068860, -0.649391, -0.757331,
		0.747689, -0.468983, 0.470124,
		-0.660469, -0.598621, 0.453248,
		36.438992, 36.196850, 50.135521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281509, 35.949928, 49.917183>,  <36.901318, 36.615883, 49.818245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281509, 35.949928, 49.917183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.885254, 35.900986, 49.892986>,  <36.647499, 35.871620, 49.878468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.885254, 35.900986, 49.892986>,  <37.281509, 35.949928, 49.917183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885254, 35.900986, 49.892986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115733, -0.518020, -0.847503,
		0.072365, -0.846572, 0.527332,
		-0.990641, -0.122359, -0.060490,
		36.588062, 35.864277, 49.874840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164501, 35.279202, 49.612549>,  <37.281509, 35.949928, 49.917183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164501, 35.279202, 49.612549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.788624, 35.414288, 49.590942>,  <36.563095, 35.495338, 49.577980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.788624, 35.414288, 49.590942>,  <37.164501, 35.279202, 49.612549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788624, 35.414288, 49.590942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108523, -0.444209, -0.889326,
		-0.324331, -0.829836, 0.454072,
		-0.939698, 0.337713, -0.054015,
		36.506714, 35.515602, 49.574738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765865, 34.654362, 49.465141>,  <37.164501, 35.279202, 49.612549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765865, 34.654362, 49.465141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.520569, 34.947899, 49.348236>,  <36.373390, 35.124020, 49.278091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.520569, 34.947899, 49.348236>,  <36.765865, 34.654362, 49.465141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520569, 34.947899, 49.348236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330727, -0.574549, -0.748674,
		-0.717326, -0.362456, 0.595037,
		-0.613239, 0.733838, -0.292265,
		36.336597, 35.168049, 49.260555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061089, 34.411228, 49.430599>,  <36.765865, 34.654362, 49.465141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061089, 34.411228, 49.430599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072590, 34.734711, 49.195595>,  <36.079491, 34.928799, 49.054592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072590, 34.734711, 49.195595>,  <36.061089, 34.411228, 49.430599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072590, 34.734711, 49.195595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193717, -0.572101, -0.796978,
		-0.980636, 0.136727, 0.140210,
		0.028754, 0.808706, -0.587510,
		36.081215, 34.977322, 49.019341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477310, 34.426765, 49.102402>,  <36.061089, 34.411228, 49.430599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477310, 34.426765, 49.102402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684498, 34.675407, 48.867348>,  <35.808811, 34.824593, 48.726315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684498, 34.675407, 48.867348>,  <35.477310, 34.426765, 49.102402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684498, 34.675407, 48.867348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355851, -0.468121, -0.808846,
		-0.777866, 0.628069, -0.021275,
		0.517971, 0.621604, -0.587635,
		35.839890, 34.861889, 48.691055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030304, 34.730129, 48.602104>,  <35.477310, 34.426765, 49.102402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030304, 34.730129, 48.602104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.401546, 34.704933, 48.455326>,  <35.624290, 34.689816, 48.367260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.401546, 34.704933, 48.455326>,  <35.030304, 34.730129, 48.602104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401546, 34.704933, 48.455326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349592, -0.486477, -0.800703,
		-0.128078, 0.871420, -0.473522,
		0.928106, -0.062987, -0.366949,
		35.679977, 34.686035, 48.345242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033699, 34.981892, 47.930416>,  <35.030304, 34.730129, 48.602104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033699, 34.981892, 47.930416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.701591, 35.194832, 47.864388>,  <34.502327, 35.322598, 47.824772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.701591, 35.194832, 47.864388>,  <35.033699, 34.981892, 47.930416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701591, 35.194832, 47.864388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170051, 0.040088, 0.984620,
		0.530781, 0.845574, 0.057243,
		-0.830273, 0.532352, -0.165068,
		34.452511, 35.354538, 47.814865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026108, 35.565628, 48.442089>,  <35.033699, 34.981892, 47.930416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026108, 35.565628, 48.442089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638783, 35.519913, 48.353264>,  <34.406387, 35.492485, 48.299969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638783, 35.519913, 48.353264>,  <35.026108, 35.565628, 48.442089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638783, 35.519913, 48.353264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230062, 0.062168, 0.971188,
		-0.097191, 0.991500, -0.086491,
		-0.968311, -0.114289, -0.222064,
		34.348289, 35.485626, 48.286644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645515, 36.060993, 48.729229>,  <35.026108, 35.565628, 48.442089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645515, 36.060993, 48.729229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.372196, 35.780037, 48.649479>,  <34.208206, 35.611462, 48.601627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.372196, 35.780037, 48.649479>,  <34.645515, 36.060993, 48.729229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372196, 35.780037, 48.649479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460170, 0.202274, 0.864481,
		-0.566879, 0.682441, -0.461434,
		-0.683294, -0.702395, -0.199374,
		34.167210, 35.569317, 48.589668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075020, 36.364632, 48.927322>,  <34.645515, 36.060993, 48.729229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075020, 36.364632, 48.927322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.966595, 35.979881, 48.912777>,  <33.901539, 35.749031, 48.904049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.966595, 35.979881, 48.912777>,  <34.075020, 36.364632, 48.927322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966595, 35.979881, 48.912777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587807, 0.135499, 0.797573,
		-0.762238, 0.237567, -0.602126,
		-0.271065, -0.961874, -0.036361,
		33.885277, 35.691319, 48.901867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350075, 36.299313, 48.904236>,  <34.075020, 36.364632, 48.927322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350075, 36.299313, 48.904236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.494789, 35.972500, 49.083820>,  <33.581619, 35.776413, 49.191570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.494789, 35.972500, 49.083820>,  <33.350075, 36.299313, 48.904236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494789, 35.972500, 49.083820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584036, 0.176728, 0.792256,
		-0.726645, -0.548835, -0.413240,
		0.361786, -0.817036, 0.448958,
		33.603325, 35.727390, 49.218506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745491, 35.923916, 49.270039>,  <33.350075, 36.299313, 48.904236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745491, 35.923916, 49.270039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084583, 35.803364, 49.444637>,  <33.288036, 35.731033, 49.549397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084583, 35.803364, 49.444637>,  <32.745491, 35.923916, 49.270039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084583, 35.803364, 49.444637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442241, 0.052791, 0.895341,
		-0.292884, -0.952040, -0.088532,
		0.847728, -0.301384, 0.436493,
		33.338902, 35.712948, 49.575584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663181, 35.338924, 49.752270>,  <32.745491, 35.923916, 49.270039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663181, 35.338924, 49.752270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.009869, 35.485443, 49.887695>,  <33.217880, 35.573353, 49.968948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.009869, 35.485443, 49.887695>,  <32.663181, 35.338924, 49.752270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009869, 35.485443, 49.887695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358344, -0.014888, 0.933471,
		0.346970, -0.930378, 0.118357,
		0.866719, 0.366299, 0.338562,
		33.269886, 35.595333, 49.989265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766655, 34.959538, 50.427299>,  <32.663181, 35.338924, 49.752270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766655, 34.959538, 50.427299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051723, 35.238895, 50.453655>,  <33.222763, 35.406509, 50.469471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051723, 35.238895, 50.453655>,  <32.766655, 34.959538, 50.427299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051723, 35.238895, 50.453655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205962, 0.118525, 0.971356,
		0.670585, -0.705826, 0.228313,
		0.712668, 0.698400, 0.065892,
		33.265526, 35.448414, 50.473423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216866, 34.768063, 50.887825>,  <32.766655, 34.959538, 50.427299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216866, 34.768063, 50.887825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295589, 35.160057, 50.875908>,  <33.342823, 35.395256, 50.868759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295589, 35.160057, 50.875908>,  <33.216866, 34.768063, 50.887825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295589, 35.160057, 50.875908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106212, 0.051515, 0.993008,
		0.974671, -0.192274, 0.114225,
		0.196814, 0.979988, -0.029788,
		33.354633, 35.454052, 50.866970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640999, 34.876110, 51.396030>,  <33.216866, 34.768063, 50.887825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640999, 34.876110, 51.396030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.497009, 35.242779, 51.326599>,  <33.410618, 35.462780, 51.284939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.497009, 35.242779, 51.326599>,  <33.640999, 34.876110, 51.396030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497009, 35.242779, 51.326599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035603, 0.172418, 0.984380,
		0.932284, 0.360527, -0.029428,
		-0.359969, 0.916675, -0.173578,
		33.389019, 35.517780, 51.274525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022465, 35.270485, 51.846497>,  <33.640999, 34.876110, 51.396030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022465, 35.270485, 51.846497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722057, 35.513042, 51.741993>,  <33.541813, 35.658577, 51.679291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722057, 35.513042, 51.741993>,  <34.022465, 35.270485, 51.846497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722057, 35.513042, 51.741993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076109, 0.472550, 0.878011,
		0.655881, 0.639518, -0.401045,
		-0.751018, 0.606394, -0.261263,
		33.496754, 35.694962, 51.663612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252350, 35.952240, 51.811405>,  <34.022465, 35.270485, 51.846497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252350, 35.952240, 51.811405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856503, 35.978188, 51.862713>,  <33.618996, 35.993755, 51.893497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856503, 35.978188, 51.862713>,  <34.252350, 35.952240, 51.811405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856503, 35.978188, 51.862713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143686, 0.470399, 0.870678,
		-0.003861, 0.880067, -0.474834,
		-0.989616, 0.064865, 0.128269,
		33.559616, 35.997646, 51.901192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105461, 36.653347, 51.858841>,  <34.252350, 35.952240, 51.811405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105461, 36.653347, 51.858841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.799801, 36.467854, 52.038185>,  <33.616405, 36.356556, 52.145790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.799801, 36.467854, 52.038185>,  <34.105461, 36.653347, 51.858841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799801, 36.467854, 52.038185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027680, 0.718018, 0.695474,
		-0.644445, 0.519036, -0.561509,
		-0.764150, -0.463737, 0.448356,
		33.570557, 36.328732, 52.172691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520996, 37.296154, 51.700466>,  <34.105461, 36.653347, 51.858841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520996, 37.296154, 51.700466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378468, 37.512463, 52.005257>,  <34.292950, 37.642246, 52.188129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378468, 37.512463, 52.005257>,  <34.520996, 37.296154, 51.700466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378468, 37.512463, 52.005257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603913, 0.488984, -0.629432,
		-0.712971, -0.684445, 0.152343,
		-0.356318, 0.540768, 0.761976,
		34.271572, 37.674694, 52.233849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699230, 37.304531, 51.750107>,  <34.520996, 37.296154, 51.700466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699230, 37.304531, 51.750107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.902798, 37.626877, 51.871151>,  <34.024940, 37.820286, 51.943779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.902798, 37.626877, 51.871151>,  <33.699230, 37.304531, 51.750107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902798, 37.626877, 51.871151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357267, 0.517576, -0.777480,
		-0.783172, 0.287562, 0.551316,
		0.508922, 0.805868, 0.302615,
		34.055473, 37.868637, 51.961937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315666, 37.829548, 51.576565>,  <33.699230, 37.304531, 51.750107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315666, 37.829548, 51.576565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.658718, 38.030075, 51.622444>,  <33.864548, 38.150391, 51.649971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.658718, 38.030075, 51.622444>,  <33.315666, 37.829548, 51.576565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658718, 38.030075, 51.622444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217570, 0.555771, -0.802360,
		-0.465983, 0.663171, 0.585716,
		0.857626, 0.501320, 0.114694,
		33.916004, 38.180470, 51.656853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139820, 38.543633, 51.560844>,  <33.315666, 37.829548, 51.576565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139820, 38.543633, 51.560844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.530746, 38.534397, 51.476643>,  <33.765305, 38.528854, 51.426121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.530746, 38.534397, 51.476643>,  <33.139820, 38.543633, 51.560844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530746, 38.534397, 51.476643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173908, 0.479676, -0.860039,
		0.120833, 0.877142, 0.464781,
		0.977321, -0.023092, -0.210502,
		33.823944, 38.527470, 51.413490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214005, 39.063026, 51.226002>,  <33.139820, 38.543633, 51.560844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214005, 39.063026, 51.226002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.563576, 38.893780, 51.130318>,  <33.773319, 38.792233, 51.072906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.563576, 38.893780, 51.130318>,  <33.214005, 39.063026, 51.226002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563576, 38.893780, 51.130318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065342, 0.385406, -0.920431,
		0.481646, 0.820019, 0.309169,
		0.873926, -0.423120, -0.239211,
		33.825752, 38.766842, 51.058556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674400, 39.590031, 51.067429>,  <33.214005, 39.063026, 51.226002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674400, 39.590031, 51.067429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807255, 39.252892, 50.898056>,  <33.886967, 39.050610, 50.796432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807255, 39.252892, 50.898056>,  <33.674400, 39.590031, 51.067429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807255, 39.252892, 50.898056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001237, 0.449304, -0.893378,
		0.943231, 0.296197, 0.150272,
		0.332134, -0.842848, -0.423432,
		33.906895, 39.000038, 50.771027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190636, 39.753529, 50.607075>,  <33.674400, 39.590031, 51.067429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190636, 39.753529, 50.607075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.089802, 39.397724, 50.454639>,  <34.029301, 39.184242, 50.363178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.089802, 39.397724, 50.454639>,  <34.190636, 39.753529, 50.607075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089802, 39.397724, 50.454639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038850, 0.402792, -0.914467,
		0.966926, -0.215714, -0.136094,
		-0.252080, -0.889509, -0.381089,
		34.014179, 39.130871, 50.340313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579247, 39.638718, 50.039799>,  <34.190636, 39.753529, 50.607075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579247, 39.638718, 50.039799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251919, 39.412994, 49.996140>,  <34.055523, 39.277561, 49.969944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251919, 39.412994, 49.996140>,  <34.579247, 39.638718, 50.039799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251919, 39.412994, 49.996140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110750, 0.341150, -0.933462,
		0.563995, -0.751780, -0.341666,
		-0.818318, -0.564308, -0.109147,
		34.006424, 39.243702, 49.963394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229408, 39.825794, 49.704880>,  <34.579247, 39.638718, 50.039799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229408, 39.825794, 49.704880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.210602, 40.224987, 49.687813>,  <35.199318, 40.464504, 49.677574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.210602, 40.224987, 49.687813>,  <35.229408, 39.825794, 49.704880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210602, 40.224987, 49.687813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008006, 0.043086, 0.999039,
		0.998862, 0.046625, -0.010015,
		-0.047012, 0.997983, -0.042664,
		35.196499, 40.524384, 49.675014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700653, 39.972137, 50.151669>,  <35.229408, 39.825794, 49.704880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700653, 39.972137, 50.151669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482529, 40.306175, 50.122707>,  <35.351654, 40.506599, 50.105331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482529, 40.306175, 50.122707>,  <35.700653, 39.972137, 50.151669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482529, 40.306175, 50.122707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161098, 0.189181, 0.968637,
		0.822605, 0.516549, -0.237696,
		-0.545316, 0.835098, -0.072406,
		35.318935, 40.556705, 50.100986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933762, 40.364437, 50.621700>,  <35.700653, 39.972137, 50.151669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933762, 40.364437, 50.621700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.617020, 40.601151, 50.561348>,  <35.426975, 40.743179, 50.525135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.617020, 40.601151, 50.561348>,  <35.933762, 40.364437, 50.621700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617020, 40.601151, 50.561348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000810, 0.248081, 0.968739,
		0.610713, 0.766975, -0.196923,
		-0.791851, 0.591781, -0.150885,
		35.379463, 40.778687, 50.516083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123135, 40.923515, 50.981163>,  <35.933762, 40.364437, 50.621700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123135, 40.923515, 50.981163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725990, 40.882599, 50.956612>,  <35.487705, 40.858047, 50.941879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725990, 40.882599, 50.956612>,  <36.123135, 40.923515, 50.981163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725990, 40.882599, 50.956612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083872, 0.232655, 0.968936,
		-0.084834, 0.967165, -0.239573,
		-0.992859, -0.102292, -0.061381,
		35.428131, 40.851910, 50.938198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880424, 41.538570, 51.338882>,  <36.123135, 40.923515, 50.981163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880424, 41.538570, 51.338882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.581070, 41.273403, 51.347542>,  <35.401459, 41.114304, 51.352737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.581070, 41.273403, 51.347542>,  <35.880424, 41.538570, 51.338882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581070, 41.273403, 51.347542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027163, 0.001979, 0.999629,
		-0.662711, 0.748693, 0.016526,
		-0.748383, -0.662914, 0.021648,
		35.356556, 41.074528, 51.354034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399639, 41.736183, 51.874500>,  <35.880424, 41.538570, 51.338882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399639, 41.736183, 51.874500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323563, 41.348484, 51.812027>,  <35.277916, 41.115864, 51.774544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323563, 41.348484, 51.812027>,  <35.399639, 41.736183, 51.874500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323563, 41.348484, 51.812027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100745, -0.138980, 0.985157,
		-0.976564, 0.203105, -0.071213,
		-0.190193, -0.969244, -0.156185,
		35.266506, 41.057713, 51.765171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789307, 41.577034, 52.254238>,  <35.399639, 41.736183, 51.874500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789307, 41.577034, 52.254238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.986130, 41.232323, 52.204887>,  <35.104225, 41.025497, 52.175278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.986130, 41.232323, 52.204887>,  <34.789307, 41.577034, 52.254238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986130, 41.232323, 52.204887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034472, -0.160893, 0.986370,
		-0.869879, -0.481098, -0.108876,
		0.492058, -0.861776, -0.123373,
		35.133747, 40.973789, 52.167877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559349, 41.337830, 52.876564>,  <34.789307, 41.577034, 52.254238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559349, 41.337830, 52.876564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.817116, 41.066944, 52.734512>,  <34.971775, 40.904415, 52.649281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.817116, 41.066944, 52.734512>,  <34.559349, 41.337830, 52.876564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817116, 41.066944, 52.734512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212891, -0.287165, 0.933924,
		-0.734442, -0.677439, -0.040882,
		0.644416, -0.677210, -0.355127,
		35.010441, 40.863781, 52.627975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408726, 40.671005, 53.185425>,  <34.559349, 41.337830, 52.876564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408726, 40.671005, 53.185425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791386, 40.650208, 53.070805>,  <35.020981, 40.637730, 53.002033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791386, 40.650208, 53.070805>,  <34.408726, 40.671005, 53.185425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791386, 40.650208, 53.070805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252142, -0.344510, 0.904288,
		-0.145741, -0.937341, -0.316466,
		0.956652, -0.051997, -0.286552,
		35.078381, 40.634609, 52.984840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.505634, 38.744308, 37.551052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892040, 38.827065, 37.613033>,  <38.123886, 38.876717, 37.650223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892040, 38.827065, 37.613033>,  <37.505634, 38.744308, 37.551052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892040, 38.827065, 37.613033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217750, 0.328356, 0.919112,
		0.139271, -0.921619, 0.362246,
		0.966017, 0.206884, 0.154952,
		38.181847, 38.889130, 37.659519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734165, 38.358574, 38.197594>,  <37.505634, 38.744308, 37.551052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734165, 38.358574, 38.197594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005714, 38.650467, 38.165054>,  <38.168644, 38.825603, 38.145531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005714, 38.650467, 38.165054>,  <37.734165, 38.358574, 38.197594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005714, 38.650467, 38.165054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132791, 0.230976, 0.963855,
		0.722148, -0.643533, 0.253705,
		0.678873, 0.729736, -0.081344,
		38.209377, 38.869389, 38.140652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266239, 38.315025, 38.794014>,  <37.734165, 38.358574, 38.197594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266239, 38.315025, 38.794014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244427, 38.693150, 38.665382>,  <38.231339, 38.920025, 38.588203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244427, 38.693150, 38.665382>,  <38.266239, 38.315025, 38.794014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244427, 38.693150, 38.665382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300984, 0.291513, 0.907981,
		0.952069, 0.146303, 0.268627,
		-0.054532, 0.945312, -0.321575,
		38.228065, 38.976742, 38.568909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697983, 38.697956, 39.260433>,  <38.266239, 38.315025, 38.794014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697983, 38.697956, 39.260433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442898, 38.955814, 39.091789>,  <38.289848, 39.110531, 38.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442898, 38.955814, 39.091789>,  <38.697983, 38.697956, 39.260433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442898, 38.955814, 39.091789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245695, 0.348525, 0.904524,
		0.730040, 0.680413, -0.063872,
		-0.637711, 0.644646, -0.421612,
		38.251583, 39.149208, 38.965305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775856, 39.187370, 39.696762>,  <38.697983, 38.697956, 39.260433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775856, 39.187370, 39.696762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453148, 39.288616, 39.483196>,  <38.259525, 39.349365, 39.355057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453148, 39.288616, 39.483196>,  <38.775856, 39.187370, 39.696762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453148, 39.288616, 39.483196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278403, 0.634175, 0.721328,
		0.521171, 0.730585, -0.441164,
		-0.806767, 0.253114, -0.533911,
		38.211117, 39.364552, 39.323025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891422, 39.890114, 39.681320>,  <38.775856, 39.187370, 39.696762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891422, 39.890114, 39.681320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515480, 39.767231, 39.621605>,  <38.289913, 39.693501, 39.585773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515480, 39.767231, 39.621605>,  <38.891422, 39.890114, 39.681320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515480, 39.767231, 39.621605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321518, 0.648205, 0.690258,
		-0.115279, 0.696746, -0.707994,
		-0.939860, -0.307205, -0.149292,
		38.233521, 39.675068, 39.576817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503548, 40.514809, 39.506676>,  <38.891422, 39.890114, 39.681320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503548, 40.514809, 39.506676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247921, 40.243999, 39.652676>,  <38.094543, 40.081512, 39.740276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247921, 40.243999, 39.652676>,  <38.503548, 40.514809, 39.506676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247921, 40.243999, 39.652676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452547, 0.714692, 0.533307,
		-0.621924, 0.175642, -0.763125,
		-0.639071, -0.677027, 0.364998,
		38.056198, 40.040890, 39.762177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886356, 40.926105, 39.669983>,  <38.503548, 40.514809, 39.506676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886356, 40.926105, 39.669983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825634, 40.588017, 39.874947>,  <37.789200, 40.385162, 39.997925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825634, 40.588017, 39.874947>,  <37.886356, 40.926105, 39.669983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825634, 40.588017, 39.874947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397530, 0.526845, 0.751269,
		-0.904945, -0.089653, -0.415976,
		-0.151801, -0.845220, 0.512405,
		37.780094, 40.334450, 40.028667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111313, 40.979942, 39.859531>,  <37.886356, 40.926105, 39.669983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111313, 40.979942, 39.859531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278221, 40.695362, 40.085705>,  <37.378368, 40.524612, 40.221409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278221, 40.695362, 40.085705>,  <37.111313, 40.979942, 39.859531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278221, 40.695362, 40.085705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547533, 0.299769, 0.781246,
		-0.725320, -0.635589, -0.264458,
		0.417275, -0.711453, 0.565434,
		37.403404, 40.481926, 40.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612984, 40.588875, 40.137569>,  <37.111313, 40.979942, 39.859531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612984, 40.588875, 40.137569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913445, 40.511765, 40.390110>,  <37.093723, 40.465500, 40.541634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913445, 40.511765, 40.390110>,  <36.612984, 40.588875, 40.137569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913445, 40.511765, 40.390110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569808, 0.293543, 0.767562,
		-0.333295, -0.936307, 0.110652,
		0.751155, -0.192774, 0.631351,
		37.138790, 40.453934, 40.579514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281895, 40.384785, 40.763020>,  <36.612984, 40.588875, 40.137569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281895, 40.384785, 40.763020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650791, 40.480663, 40.884361>,  <36.872128, 40.538189, 40.957169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650791, 40.480663, 40.884361>,  <36.281895, 40.384785, 40.763020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650791, 40.480663, 40.884361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354229, 0.209444, 0.911403,
		0.154921, -0.947987, 0.278064,
		0.922237, 0.239694, 0.303357,
		36.927464, 40.552570, 40.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347099, 40.026108, 41.321114>,  <36.281895, 40.384785, 40.763020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347099, 40.026108, 41.321114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624126, 40.312618, 41.355282>,  <36.790344, 40.484524, 41.375782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624126, 40.312618, 41.355282>,  <36.347099, 40.026108, 41.321114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624126, 40.312618, 41.355282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402698, 0.285662, 0.869616,
		0.598485, -0.636666, 0.486284,
		0.692568, 0.716278, 0.085420,
		36.831898, 40.527500, 41.380909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815449, 39.519936, 41.378105>,  <36.347099, 40.026108, 41.321114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815449, 39.519936, 41.378105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430561, 39.470062, 41.474922>,  <35.199627, 39.440136, 41.533012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430561, 39.470062, 41.474922>,  <35.815449, 39.519936, 41.378105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430561, 39.470062, 41.474922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222590, -0.151687, -0.963039,
		0.156792, -0.980533, 0.118202,
		-0.962221, -0.124686, 0.242040,
		35.141895, 39.432655, 41.547535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569366, 39.070629, 40.944206>,  <35.815449, 39.519936, 41.378105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569366, 39.070629, 40.944206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219025, 39.219418, 41.067181>,  <35.008820, 39.308689, 41.140965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219025, 39.219418, 41.067181>,  <35.569366, 39.070629, 40.944206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219025, 39.219418, 41.067181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322960, 0.021569, -0.946167,
		-0.358580, -0.927993, 0.101241,
		-0.875852, 0.371973, 0.307439,
		34.956268, 39.331009, 41.159412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075478, 38.737000, 40.527576>,  <35.569366, 39.070629, 40.944206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075478, 38.737000, 40.527576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909748, 39.070671, 40.673172>,  <34.810310, 39.270874, 40.760529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909748, 39.070671, 40.673172>,  <35.075478, 38.737000, 40.527576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909748, 39.070671, 40.673172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543677, 0.093888, -0.834027,
		-0.729899, -0.543449, 0.414622,
		-0.414323, 0.834175, 0.363989,
		34.785450, 39.320923, 40.782368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325916, 38.652317, 40.474670>,  <35.075478, 38.737000, 40.527576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325916, 38.652317, 40.474670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387253, 39.047585, 40.473270>,  <34.424057, 39.284744, 40.472431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387253, 39.047585, 40.473270>,  <34.325916, 38.652317, 40.474670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387253, 39.047585, 40.473270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560890, 0.084124, -0.823605,
		-0.813565, 0.128256, 0.567153,
		0.153343, 0.988167, -0.003498,
		34.433254, 39.344036, 40.472221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693554, 38.930187, 40.255100>,  <34.325916, 38.652317, 40.474670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693554, 38.930187, 40.255100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937714, 39.243534, 40.208191>,  <34.084209, 39.431541, 40.180046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937714, 39.243534, 40.208191>,  <33.693554, 38.930187, 40.255100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937714, 39.243534, 40.208191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557751, 0.319948, -0.765863,
		-0.562427, 0.532894, 0.632218,
		0.610401, 0.783363, -0.117276,
		34.120834, 39.478542, 40.173008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210594, 39.444275, 39.857216>,  <33.693554, 38.930187, 40.255100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210594, 39.444275, 39.857216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576923, 39.600353, 39.819233>,  <33.796722, 39.694000, 39.796444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576923, 39.600353, 39.819233>,  <33.210594, 39.444275, 39.857216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576923, 39.600353, 39.819233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271861, 0.428371, -0.861737,
		-0.295564, 0.815015, 0.498390,
		0.915824, 0.390191, -0.094960,
		33.851669, 39.717411, 39.790745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171875, 40.149048, 39.900143>,  <33.210594, 39.444275, 39.857216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171875, 40.149048, 39.900143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497654, 40.058559, 39.686413>,  <33.693119, 40.004269, 39.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497654, 40.058559, 39.686413>,  <33.171875, 40.149048, 39.900143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497654, 40.058559, 39.686413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389226, 0.469959, -0.792238,
		0.430331, 0.853208, 0.294705,
		0.814444, -0.226217, -0.534328,
		33.741985, 39.990696, 39.526115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187332, 40.692478, 39.465645>,  <33.171875, 40.149048, 39.900143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187332, 40.692478, 39.465645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424496, 40.419052, 39.295376>,  <33.566792, 40.254997, 39.193214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424496, 40.419052, 39.295376>,  <33.187332, 40.692478, 39.465645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424496, 40.419052, 39.295376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398399, 0.210380, -0.892759,
		0.699814, 0.698910, -0.147596,
		0.592907, -0.683568, -0.425672,
		33.602367, 40.213982, 39.167675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447781, 40.979519, 38.940125>,  <33.187332, 40.692478, 39.465645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447781, 40.979519, 38.940125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457817, 40.592140, 38.840935>,  <33.463840, 40.359715, 38.781422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457817, 40.592140, 38.840935>,  <33.447781, 40.979519, 38.940125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457817, 40.592140, 38.840935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388142, 0.219153, -0.895164,
		0.921258, 0.118709, -0.370394,
		0.025091, -0.968442, -0.247973,
		33.465343, 40.301609, 38.766544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376823, 41.041229, 38.225323>,  <33.447781, 40.979519, 38.940125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376823, 41.041229, 38.225323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332977, 40.648510, 38.287354>,  <33.306671, 40.412876, 38.324574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332977, 40.648510, 38.287354>,  <33.376823, 41.041229, 38.225323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332977, 40.648510, 38.287354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492311, -0.081909, -0.866557,
		0.863490, -0.171333, -0.474374,
		-0.109614, -0.981802, 0.155077,
		33.300095, 40.353970, 38.333878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694195, 40.624023, 37.610119>,  <33.376823, 41.041229, 38.225323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694195, 40.624023, 37.610119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403172, 40.421257, 37.795029>,  <33.228558, 40.299599, 37.905975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403172, 40.421257, 37.795029>,  <33.694195, 40.624023, 37.610119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403172, 40.421257, 37.795029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516487, -0.038799, -0.855416,
		0.451559, -0.861122, -0.233586,
		-0.727555, -0.506915, 0.462278,
		33.184906, 40.269184, 37.933712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701130, 39.994453, 37.351871>,  <33.694195, 40.624023, 37.610119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701130, 39.994453, 37.351871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335976, 40.042412, 37.507954>,  <33.116882, 40.071186, 37.601601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335976, 40.042412, 37.507954>,  <33.701130, 39.994453, 37.351871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335976, 40.042412, 37.507954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407949, -0.302043, -0.861596,
		0.014556, -0.945725, 0.324643,
		-0.912889, 0.119896, 0.390204,
		33.062107, 40.078381, 37.625015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366108, 39.399841, 37.254288>,  <33.701130, 39.994453, 37.351871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366108, 39.399841, 37.254288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085003, 39.681160, 37.297188>,  <32.916340, 39.849953, 37.322926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085003, 39.681160, 37.297188>,  <33.366108, 39.399841, 37.254288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085003, 39.681160, 37.297188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416431, -0.284433, -0.863529,
		-0.576813, -0.651515, 0.492763,
		-0.702760, 0.703297, 0.107247,
		32.874176, 39.892151, 37.329361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852989, 38.953354, 36.946167>,  <33.366108, 39.399841, 37.254288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852989, 38.953354, 36.946167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671551, 39.301735, 37.021736>,  <32.562687, 39.510765, 37.067078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671551, 39.301735, 37.021736>,  <32.852989, 38.953354, 36.946167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671551, 39.301735, 37.021736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651994, -0.179782, -0.736602,
		-0.607579, -0.457299, 0.649404,
		-0.453598, 0.870951, 0.188925,
		32.535473, 39.563019, 37.078415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162731, 38.769432, 37.089619>,  <32.852989, 38.953354, 36.946167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162731, 38.769432, 37.089619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163368, 39.157696, 36.993435>,  <32.163750, 39.390652, 36.935722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163368, 39.157696, 36.993435>,  <32.162731, 38.769432, 37.089619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163368, 39.157696, 36.993435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829020, -0.133188, -0.543126,
		-0.559216, 0.200216, 0.804482,
		0.001596, 0.970656, -0.240464,
		32.163845, 39.448895, 36.921295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953140, 38.229565, 37.476215>,  <32.162731, 38.769432, 37.089619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953140, 38.229565, 37.476215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846447, 37.844055, 37.475880>,  <31.782431, 37.612751, 37.475677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846447, 37.844055, 37.475880>,  <31.953140, 38.229565, 37.476215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846447, 37.844055, 37.475880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026437, 0.006445, 0.999630,
		-0.963407, 0.266658, -0.027198,
		-0.266735, -0.963770, -0.000841,
		31.766426, 37.554924, 37.475628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392981, 38.167198, 37.878422>,  <31.953140, 38.229565, 37.476215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392981, 38.167198, 37.878422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614248, 37.834026, 37.884468>,  <31.747009, 37.634121, 37.888096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614248, 37.834026, 37.884468>,  <31.392981, 38.167198, 37.878422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614248, 37.834026, 37.884468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024538, 0.034428, 0.999106,
		-0.832708, -0.552304, 0.039483,
		0.553169, -0.832932, 0.015116,
		31.780199, 37.584148, 37.889004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030939, 37.464081, 38.043095>,  <31.392981, 38.167198, 37.878422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030939, 37.464081, 38.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415869, 37.445221, 38.150208>,  <31.646826, 37.433903, 38.214474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415869, 37.445221, 38.150208>,  <31.030939, 37.464081, 38.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415869, 37.445221, 38.150208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271897, -0.173375, 0.946580,
		0.001796, -0.983727, -0.179663,
		0.962325, -0.047150, 0.267784,
		31.704567, 37.431076, 38.230541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250591, 36.855869, 38.421280>,  <31.030939, 37.464081, 38.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250591, 36.855869, 38.421280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512808, 37.130474, 38.547119>,  <31.670137, 37.295235, 38.622623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512808, 37.130474, 38.547119>,  <31.250591, 36.855869, 38.421280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512808, 37.130474, 38.547119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289324, -0.156486, 0.944353,
		0.697537, -0.710083, 0.096040,
		0.655541, 0.686508, 0.314599,
		31.709471, 37.336426, 38.641499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370956, 36.540058, 39.030762>,  <31.250591, 36.855869, 38.421280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370956, 36.540058, 39.030762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578386, 36.878971, 39.076710>,  <31.702845, 37.082317, 39.104279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578386, 36.878971, 39.076710>,  <31.370956, 36.540058, 39.030762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578386, 36.878971, 39.076710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037804, -0.156933, 0.986885,
		0.854195, -0.507432, -0.113412,
		0.518576, 0.847281, 0.114868,
		31.733959, 37.133156, 39.111172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036709, 36.336147, 39.433685>,  <31.370956, 36.540058, 39.030762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036709, 36.336147, 39.433685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953972, 36.725010, 39.477730>,  <31.904329, 36.958328, 39.504158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953972, 36.725010, 39.477730>,  <32.036709, 36.336147, 39.433685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953972, 36.725010, 39.477730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020460, -0.108224, 0.993916,
		0.978161, 0.207835, 0.002494,
		-0.206840, 0.972159, 0.110113,
		31.891920, 37.016659, 39.510765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487087, 36.612118, 39.908142>,  <32.036709, 36.336147, 39.433685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487087, 36.612118, 39.908142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199787, 36.889153, 39.934776>,  <32.027409, 37.055374, 39.950756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199787, 36.889153, 39.934776>,  <32.487087, 36.612118, 39.908142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199787, 36.889153, 39.934776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050908, -0.043136, 0.997771,
		0.693919, 0.720040, -0.004276,
		-0.718251, 0.692590, 0.066589,
		31.984312, 37.096931, 39.954754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703068, 37.226654, 40.180702>,  <32.487087, 36.612118, 39.908142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703068, 37.226654, 40.180702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318752, 37.263107, 40.285458>,  <32.088165, 37.284981, 40.348309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318752, 37.263107, 40.285458>,  <32.703068, 37.226654, 40.180702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318752, 37.263107, 40.285458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268824, 0.074566, 0.960299,
		0.067987, 0.993043, -0.096141,
		-0.960787, 0.091133, 0.261884,
		32.030518, 37.290447, 40.364021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688133, 37.815350, 40.556950>,  <32.703068, 37.226654, 40.180702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688133, 37.815350, 40.556950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349892, 37.623421, 40.650524>,  <32.146946, 37.508263, 40.706669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349892, 37.623421, 40.650524>,  <32.688133, 37.815350, 40.556950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349892, 37.623421, 40.650524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206654, 0.109822, 0.972231,
		-0.492191, 0.870464, 0.006292,
		-0.845601, -0.479824, 0.233938,
		32.096210, 37.479473, 40.720707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608234, 38.031578, 41.211929>,  <32.688133, 37.815350, 40.556950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608234, 38.031578, 41.211929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312080, 37.763996, 41.238281>,  <32.134388, 37.603447, 41.254093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312080, 37.763996, 41.238281>,  <32.608234, 38.031578, 41.211929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312080, 37.763996, 41.238281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277543, -0.214968, 0.936354,
		-0.612213, 0.711543, 0.344821,
		-0.740382, -0.668951, 0.065878,
		32.089966, 37.563313, 41.258045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101364, 38.304779, 41.691563>,  <32.608234, 38.031578, 41.211929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101364, 38.304779, 41.691563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055984, 37.908089, 41.667542>,  <32.028755, 37.670074, 41.653130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055984, 37.908089, 41.667542>,  <32.101364, 38.304779, 41.691563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055984, 37.908089, 41.667542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088368, -0.070277, 0.993606,
		-0.989606, 0.107421, 0.095610,
		-0.113453, -0.991727, -0.060054,
		32.021950, 37.610569, 41.649525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663435, 38.167130, 42.193565>,  <32.101364, 38.304779, 41.691563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663435, 38.167130, 42.193565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848354, 37.824650, 42.101299>,  <31.959307, 37.619164, 42.045940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848354, 37.824650, 42.101299>,  <31.663435, 38.167130, 42.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848354, 37.824650, 42.101299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192707, -0.156904, 0.968630,
		-0.865531, -0.492247, 0.092459,
		0.462298, -0.856197, -0.230665,
		31.987043, 37.567791, 42.032101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487154, 37.709862, 42.817600>,  <31.663435, 38.167130, 42.193565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487154, 37.709862, 42.817600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772324, 37.523563, 42.607906>,  <31.943426, 37.411785, 42.482090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772324, 37.523563, 42.607906>,  <31.487154, 37.709862, 42.817600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772324, 37.523563, 42.607906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261686, -0.516870, 0.815086,
		-0.650585, -0.718278, -0.246608,
		0.712923, -0.465749, -0.524232,
		31.986200, 37.383839, 42.450638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476450, 37.043289, 43.001743>,  <31.487154, 37.709862, 42.817600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476450, 37.043289, 43.001743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849615, 37.088089, 42.864849>,  <32.073513, 37.114967, 42.782711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849615, 37.088089, 42.864849>,  <31.476450, 37.043289, 43.001743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849615, 37.088089, 42.864849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345795, -0.543843, 0.764631,
		-0.100486, -0.831680, -0.546088,
		0.932914, 0.112000, -0.342239,
		32.129490, 37.121689, 42.762177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687885, 36.345360, 43.043201>,  <31.476450, 37.043289, 43.001743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687885, 36.345360, 43.043201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006699, 36.586884, 43.038124>,  <32.197987, 36.731796, 43.035076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006699, 36.586884, 43.038124>,  <31.687885, 36.345360, 43.043201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006699, 36.586884, 43.038124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358862, -0.456587, 0.814092,
		0.485757, -0.653412, -0.580597,
		0.797031, 0.603805, -0.012695,
		32.245808, 36.768024, 43.034317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403633, 35.891045, 43.146572>,  <31.687885, 36.345360, 43.043201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403633, 35.891045, 43.146572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460762, 36.263355, 43.281189>,  <32.495041, 36.486740, 43.361961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460762, 36.263355, 43.281189>,  <32.403633, 35.891045, 43.146572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460762, 36.263355, 43.281189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411093, -0.365100, 0.835287,
		0.900336, 0.019052, -0.434779,
		0.142824, 0.930774, 0.336544,
		32.503609, 36.542587, 43.382153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131851, 36.012974, 43.210197>,  <32.403633, 35.891045, 43.146572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131851, 36.012974, 43.210197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948776, 36.284431, 43.439964>,  <32.838932, 36.447308, 43.577824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948776, 36.284431, 43.439964>,  <33.131851, 36.012974, 43.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948776, 36.284431, 43.439964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488953, -0.347474, 0.800117,
		0.742593, 0.647069, -0.172791,
		-0.457690, 0.678648, 0.574418,
		32.811470, 36.488026, 43.612289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700958, 36.109474, 43.727432>,  <33.131851, 36.012974, 43.210197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700958, 36.109474, 43.727432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385544, 36.301487, 43.881203>,  <33.196297, 36.416695, 43.973465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385544, 36.301487, 43.881203>,  <33.700958, 36.109474, 43.727432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385544, 36.301487, 43.881203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385891, -0.100509, 0.917053,
		0.478853, 0.871474, -0.105985,
		-0.788535, 0.480033, 0.384422,
		33.148983, 36.445496, 43.996529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939178, 36.715290, 44.076027>,  <33.700958, 36.109474, 43.727432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939178, 36.715290, 44.076027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587914, 36.619450, 44.241642>,  <33.377155, 36.561943, 44.341011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587914, 36.619450, 44.241642>,  <33.939178, 36.715290, 44.076027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587914, 36.619450, 44.241642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450334, -0.122131, 0.884468,
		-0.161355, 0.963158, 0.215152,
		-0.878159, -0.239603, 0.414036,
		33.324467, 36.547569, 44.365852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881195, 37.032825, 44.781754>,  <33.939178, 36.715290, 44.076027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881195, 37.032825, 44.781754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614925, 36.734577, 44.793995>,  <33.455166, 36.555630, 44.801342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614925, 36.734577, 44.793995>,  <33.881195, 37.032825, 44.781754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614925, 36.734577, 44.793995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272542, -0.204732, 0.940109,
		-0.694695, 0.634146, 0.339497,
		-0.665673, -0.745616, 0.030605,
		33.415222, 36.510891, 44.803177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452824, 37.137550, 45.437569>,  <33.881195, 37.032825, 44.781754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452824, 37.137550, 45.437569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402733, 36.758629, 45.319626>,  <33.372677, 36.531277, 45.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402733, 36.758629, 45.319626>,  <33.452824, 37.137550, 45.437569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402733, 36.758629, 45.319626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362441, -0.320339, 0.875226,
		-0.923555, 0.002733, 0.383455,
		-0.125228, -0.947299, -0.294860,
		33.365166, 36.474438, 45.231167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094975, 36.916828, 45.954449>,  <33.452824, 37.137550, 45.437569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094975, 36.916828, 45.954449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246315, 36.579479, 45.801834>,  <33.337120, 36.377068, 45.710266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246315, 36.579479, 45.801834>,  <33.094975, 36.916828, 45.954449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246315, 36.579479, 45.801834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268750, -0.294343, 0.917135,
		-0.885791, -0.449535, 0.115293,
		0.378348, -0.843375, -0.381539,
		33.359821, 36.326466, 45.687374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921333, 36.349121, 46.445301>,  <33.094975, 36.916828, 45.954449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921333, 36.349121, 46.445301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225849, 36.222076, 46.219181>,  <33.408558, 36.145847, 46.083511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225849, 36.222076, 46.219181>,  <32.921333, 36.349121, 46.445301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225849, 36.222076, 46.219181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355577, -0.524545, 0.773574,
		-0.542226, -0.789919, -0.286391,
		0.761286, -0.317618, -0.565299,
		33.454235, 36.126793, 46.049591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890678, 35.590580, 46.458332>,  <32.921333, 36.349121, 46.445301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890678, 35.590580, 46.458332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251675, 35.729538, 46.356483>,  <33.468273, 35.812912, 46.295376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251675, 35.729538, 46.356483>,  <32.890678, 35.590580, 46.458332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251675, 35.729538, 46.356483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421267, -0.588824, 0.689798,
		0.089706, -0.729797, -0.677753,
		0.902489, 0.347393, -0.254618,
		33.522423, 35.833755, 46.280098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319508, 35.040424, 46.681255>,  <32.890678, 35.590580, 46.458332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319508, 35.040424, 46.681255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599934, 35.320030, 46.624855>,  <33.768188, 35.487793, 46.591015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599934, 35.320030, 46.624855>,  <33.319508, 35.040424, 46.681255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599934, 35.320030, 46.624855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456979, -0.288612, 0.841352,
		0.547426, -0.654277, -0.521772,
		0.701067, 0.699017, -0.140997,
		33.810253, 35.529736, 46.582558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994122, 34.678703, 46.790150>,  <33.319508, 35.040424, 46.681255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994122, 34.678703, 46.790150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062080, 35.063950, 46.873619>,  <34.102856, 35.295097, 46.923698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062080, 35.063950, 46.873619>,  <33.994122, 34.678703, 46.790150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062080, 35.063950, 46.873619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381317, -0.259504, 0.887274,
		0.908698, -0.071178, -0.411342,
		0.169899, 0.963115, 0.208669,
		34.113049, 35.352882, 46.936218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656063, 34.663635, 47.267666>,  <33.994122, 34.678703, 46.790150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656063, 34.663635, 47.267666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500050, 35.027561, 47.324394>,  <34.406441, 35.245918, 47.358433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500050, 35.027561, 47.324394>,  <34.656063, 34.663635, 47.267666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500050, 35.027561, 47.324394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201130, -0.066123, 0.977330,
		0.898566, 0.409715, -0.157201,
		-0.390032, 0.909814, 0.141822,
		34.383041, 35.300507, 47.366940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212444, 35.032177, 47.136887>,  <34.656063, 34.663635, 47.267666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212444, 35.032177, 47.136887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541370, 34.987072, 47.359985>,  <35.738728, 34.960011, 47.493843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541370, 34.987072, 47.359985>,  <35.212444, 35.032177, 47.136887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541370, 34.987072, 47.359985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536594, -0.172529, -0.826015,
		0.189368, 0.978529, -0.081368,
		0.822318, -0.112759, 0.557744,
		35.788067, 34.953243, 47.527309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697811, 35.519650, 46.906136>,  <35.212444, 35.032177, 47.136887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697811, 35.519650, 46.906136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839520, 35.179977, 47.062794>,  <35.924545, 34.976173, 47.156788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839520, 35.179977, 47.062794>,  <35.697811, 35.519650, 46.906136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839520, 35.179977, 47.062794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388634, -0.247235, -0.887603,
		0.850561, 0.466662, 0.242430,
		0.354274, -0.849177, 0.391649,
		35.945801, 34.925224, 47.180290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435375, 35.475475, 46.681187>,  <35.697811, 35.519650, 46.906136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435375, 35.475475, 46.681187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317104, 35.102528, 46.764381>,  <36.246140, 34.878757, 46.814297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317104, 35.102528, 46.764381>,  <36.435375, 35.475475, 46.681187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317104, 35.102528, 46.764381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309147, -0.299397, -0.902657,
		0.903881, -0.202599, 0.376765,
		-0.295680, -0.932371, 0.207986,
		36.228401, 34.822815, 46.826778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925247, 35.021545, 46.381538>,  <36.435375, 35.475475, 46.681187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925247, 35.021545, 46.381538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647449, 34.744289, 46.458729>,  <36.480770, 34.577934, 46.505043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647449, 34.744289, 46.458729>,  <36.925247, 35.021545, 46.381538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647449, 34.744289, 46.458729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056294, -0.319730, -0.945835,
		0.717295, -0.646011, 0.261070,
		-0.694492, -0.693139, 0.192974,
		36.439102, 34.536346, 46.516621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229485, 34.334332, 46.283024>,  <36.925247, 35.021545, 46.381538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229485, 34.334332, 46.283024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832260, 34.333656, 46.235992>,  <36.593925, 34.333252, 46.207775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832260, 34.333656, 46.235992>,  <37.229485, 34.334332, 46.283024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832260, 34.333656, 46.235992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111887, -0.321087, -0.940417,
		-0.036162, -0.947048, 0.319049,
		-0.993062, -0.001690, -0.117574,
		36.534340, 34.333149, 46.200722>
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
